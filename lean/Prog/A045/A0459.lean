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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A045900: Hypothetical numbers of terms in general expressions for coefficients of Lovelock Lagrangians.

The programs for A045900, there is no canonical definition to state claims against.
-/

/-! ## A045900.P15707801352240779060

`floor(A004432(4^n+1)/16)`
-/

namespace A045900.P15707801352240779060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004432 (4 ^ n + 1) : ℚ) / 16⌋

end

end A045900.P15707801352240779060

/-! ## A045900.P10385165899052638615

`A055930(A149347(n))+1`
-/

namespace A045900.P10385165899052638615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A149347 n).toNat + 1

end

end A045900.P10385165899052638615

/-! ## A045900.P7559079698195680086

`A211515(A138178(n)+1)`
-/

namespace A045900.P7559079698195680086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A138178 n + 1).toNat

end

end A045900.P7559079698195680086

/-!
# A045901: Group the natural numbers into blocks: B_1 = 1, B_2 = 2,3,4, B_3 = 5,6,7,8,9, ..., each block ending in a square. Permute each block B_k by beginning with the central term, followed by the transposed symmetric pairs from B_k.

The programs for A045901, the canonical program `A045901.P13923899749826472928` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045901 has offset 1).

The definition of A045901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045901.P13923899749826472928

`A020703(A170950(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A045901

/-- `A020703(A170950(n+1))` -/
def P13923899749826472928.Spec : Prop :=
  ∀ n, P13923899749826472928.a n = A045901 (n + 1)

theorem P13923899749826472928.correct : P13923899749826472928.Spec := by
  intro n
  simp only [A045901, Nat.add_sub_cancel]

end A045901

/-! ## A045901.P571390184176703692

`A078358(n+1)-A071045(A053186(n))`
-/

namespace A045901.P571390184176703692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1) - A071045 (A053186 n).toNat

end

end A045901.P571390184176703692

namespace A045901

/-- `A078358(n+1)-A071045(A053186(n))` -/
def P571390184176703692.Spec : Prop :=
  ∀ n, P571390184176703692.a n = A045901 (n + 1)

end A045901

/-! ## A045901.P16471154467556979748

`A051890(A003059(n+1))-A170950(n+1)`
-/

namespace A045901.P16471154467556979748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (A003059 (n + 1)).toNat - A170950 (n + 1)

end

end A045901.P16471154467556979748

namespace A045901

/-- `A051890(A003059(n+1))-A170950(n+1)` -/
def P16471154467556979748.Spec : Prop :=
  ∀ n, P16471154467556979748.a n = A045901 (n + 1)

end A045901

/-! ## A045901.P11287494471980802691

`A214870(A064790(n+1))`
-/

namespace A045901.P11287494471980802691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214870 (A064790 (n + 1)).toNat

end

end A045901.P11287494471980802691

namespace A045901

/-- `A214870(A064790(n+1))` -/
def P11287494471980802691.Spec : Prop :=
  ∀ n, P11287494471980802691.a n = A045901 (n + 1)

end A045901

/-! ## A045901.P3887008833927141911

`A214870(A064788(n+1)-A196199(n))`
-/

namespace A045901.P3887008833927141911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214870 (A064788 (n + 1) - A196199 n).toNat

end

end A045901.P3887008833927141911

namespace A045901

/-- `A214870(A064788(n+1)-A196199(n))` -/
def P3887008833927141911.Spec : Prop :=
  ∀ n, P3887008833927141911.a n = A045901 (n + 1)

end A045901

/-! ## A045901.P1748825553083651806

`A214870(A064788(A060734(A064788(n+1))))`
-/

namespace A045901.P1748825553083651806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214870 (A064788 (A060734 (A064788 (n + 1)).toNat).toNat).toNat

end

end A045901.P1748825553083651806

namespace A045901

/-- `A214870(A064788(A060734(A064788(n+1))))` -/
def P1748825553083651806.Spec : Prop :=
  ∀ n, P1748825553083651806.a n = A045901 (n + 1)

end A045901

/-!
# A045902: Catafusenes (see reference for precise definition).

The programs for A045902, the canonical program `A045902.P1362283279913711618` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045902 has offset 0).

The definition of A045902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045902.P1362283279913711618

`Δ[Δ[A045445(A028310(n))]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A045902

/-- `Δ[Δ[A045445(A028310(n))]]` -/
def P1362283279913711618.Spec : Prop :=
  ∀ n, P1362283279913711618.a n = A045902 n

theorem P1362283279913711618.correct : P1362283279913711618.Spec := by
  intro n
  simp only [A045902]

end A045902

/-! ## A045902.P12024261047676363386

`Δ[A045890(n)-A045868(n)]`
-/

namespace A045902.P12024261047676363386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045890 n - A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045902.P12024261047676363386

namespace A045902

/-- `Δ[A045890(n)-A045868(n)]` -/
def P12024261047676363386.Spec : Prop :=
  ∀ n, P12024261047676363386.a n = A045902 n

end A045902

/-! ## A045902.P16694709889828576163

`Δ[Δ[A045445(A065033(2*n))]]`
-/

namespace A045902.P16694709889828576163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045902.P16694709889828576163

namespace A045902

/-- `Δ[Δ[A045445(A065033(2*n))]]` -/
def P16694709889828576163.Spec : Prop :=
  ∀ n, P16694709889828576163.a n = A045902 n

end A045902

/-! ## A045902.P16985671038041177563

`Δ[Δ[A045445(A123108(2*n))]]`
-/

namespace A045902.P16985671038041177563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045902.P16985671038041177563

namespace A045902

/-- `Δ[Δ[A045445(A123108(2*n))]]` -/
def P16985671038041177563.Spec : Prop :=
  ∀ n, P16985671038041177563.a n = A045902 n

end A045902

/-! ## A045902.P4743044650313320067

`∑{#}[n, A045868(#)*A045868(n-#)]`
-/

namespace A045902.P4743044650313320067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A045868 k * A045868 (n - k)

end

end A045902.P4743044650313320067

namespace A045902

/-- `∑{#}[n, A045868(#)*A045868(n-#)]` -/
def P4743044650313320067.Spec : Prop :=
  ∀ n, P4743044650313320067.a n = A045902 n

end A045902

/-! ## A045902.P17820722947370047602

`Δ[Δ[A045445(n^A178334(n))]]`
-/

namespace A045902.P17820722947370047602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045902.P17820722947370047602

namespace A045902

/-- `Δ[Δ[A045445(n^A178334(n))]]` -/
def P17820722947370047602.Spec : Prop :=
  ∀ n, P17820722947370047602.a n = A045902 n

end A045902

/-!
# A045903: Number of nonisomorphic systems of catafusenes in an example in Cyvin et al. (1994) with two appendages to the core indexed by the total number of hexagons in the appendages.

The programs for A045903, there is no canonical definition to state claims against.
-/

/-! ## A045903.P2514313935209905354

`A121178(abs(2-3*n)+n)`
-/

namespace A045903.P2514313935209905354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (|2 - (3 * n : ℤ)| + (n : ℤ)).toNat

end

end A045903.P2514313935209905354

/-! ## A045903.P17915825436613992673

`A121178(A111284(n+1))*A297036(3*n+4)`
-/

namespace A045903.P17915825436613992673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (A111284 (n + 1)).toNat * A297036 (3 * n + 4)

end

end A045903.P17915825436613992673

/-!
# A045904: Nonisomorphic catacondensed monoheptafusenes (see reference for precise definition).

The programs for A045904, there is no canonical definition to state claims against.
-/

/-! ## A045904.P3387952108714015833

`A121178(record[or(2, lcm(2, n)+n%2)])`
-/

namespace A045904.P3387952108714015833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.lcm 2 n + n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A045904.P3387952108714015833

/-! ## A045904.P450001237651891450

`A121178(A113127(n)+1)`
-/

namespace A045904.P450001237651891450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (A113127 n + 1).toNat

end

end A045904.P450001237651891450

/-! ## A045904.P15610015643932445149

`A121178(or(3, A113127(n)))`
-/

namespace A045904.P15610015643932445149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (Int.lor 3 (A113127 n)).toNat

end

end A045904.P15610015643932445149

/-! ## A045904.P13169336522650153747

`A121178(or(3, A130824(n)))`
-/

namespace A045904.P13169336522650153747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (Int.lor 3 (A130824 n)).toNat

end

end A045904.P13169336522650153747

/-! ## A045904.P4581344963706922886

`A121178(A111284(n+1)+1)`
-/

namespace A045904.P4581344963706922886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (A111284 (n + 1) + 1).toNat

end

end A045904.P4581344963706922886

/-!
# A045905: Catafusenes (see reference for precise definition).

The programs for A045905, there is no canonical definition to state claims against.
-/

/-! ## A045905.P12015551479116475640

`A121178(4*round(acot(n)+n))`
-/

namespace A045905.P12015551479116475640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (4 * SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A045905.P12015551479116475640

/-! ## A045905.P11130884165433750456

`A121178(4*round(sqrt(n²+1)))`
-/

namespace A045905.P11130884165433750456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (4 * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A045905.P11130884165433750456

/-! ## A045905.P15556055080355644424

`A121178(A008574(n))-A000007(n)`
-/

namespace A045905.P15556055080355644424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (A008574 n).toNat - A000007 n

end

end A045905.P15556055080355644424

/-! ## A045905.P16893000990810950448

`A057427(n)*A121178(A008574(n))`
-/

namespace A045905.P16893000990810950448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A121178 (A008574 n).toNat

end

end A045905.P16893000990810950448

/-! ## A045905.P17610558776721084142

`A121178(A008574(n))*A286745(n)`
-/

namespace A045905.P17610558776721084142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (A008574 n).toNat * A286745 n

end

end A045905.P17610558776721084142

/-!
# A045906: Numbers of nonisomorphic systems of catafusenes (see Cyvin et al. (1994) for precise definition).

The programs for A045906, there is no canonical definition to state claims against.
-/

/-! ## A045906.P7943187663426562827

`A038392(n+1)+A045903(n)+A045904(n)+A045905(n)`
-/

namespace A045906.P7943187663426562827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) + A045903 n + A045904 n + A045905 n

end

end A045906.P7943187663426562827

/-! ## A045906.P15397202912992175229

`A002330(n^n)-∑[n²-∑[∑{d}[n, #]]]`
-/

namespace A045906.P15397202912992175229
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n ^ n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045906.P15397202912992175229

/-!
# A045907: Catafusenes (see reference for precise definition).

The programs for A045907, there is no canonical definition to state claims against.
-/

/-! ## A045907.P23759379811395595

`A000267(A082679(n))-A007318(2*n)`
-/

namespace A045907.P23759379811395595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A082679 n).toNat - A007318 (2 * n)

end

end A045907.P23759379811395595

/-!
# A045908: Number of catafusenes with C_{2v}(b) symmetry (see reference for precise definition).

The programs for A045908, there is no canonical definition to state claims against.
-/

/-! ## A045908.P4811438464774389857

`Δ[A030529(n+2)]`
-/

namespace A045908.P4811438464774389857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045908.P4811438464774389857

/-! ## A045908.P13215811413909598563

`A045868(n)-Δ[A044045(n)]`
-/

namespace A045908.P13215811413909598563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - (f1 (n + 1) - f1 n)

end

end A045908.P13215811413909598563

/-! ## A045908.P12084676135860313518

`A044045(n)+A024311(n+1)`
-/

namespace A045908.P12084676135860313518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n + A024311 (n + 1)

end

end A045908.P12084676135860313518

/-! ## A045908.P14937068380343108357

`Δ[A002212(n)-A038392(n+1)]`
-/

namespace A045908.P14937068380343108357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A038392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045908.P14937068380343108357

/-! ## A045908.P16744962878407529932

`A030529(n+3)-A030529(n+2)`
-/

namespace A045908.P16744962878407529932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030529 (n + 3) - A030529 (n + 2)

end

end A045908.P16744962878407529932

/-! ## A045908.P8069864211552996002

`Δ[A025238(n+1)%A038392(n+1)]`
-/

namespace A045908.P8069864211552996002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025238 (n + 1)) (A038392 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045908.P8069864211552996002

/-! ## A045908.P17245571083401297197

`A045868(n)-(A044046(n)+A002212(n))`
-/

namespace A045908.P17245571083401297197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - (A044046 n + A002212 n)

end

end A045908.P17245571083401297197

/-! ## A045908.P8115214327262423817

`Δ[Δ[A181768(n)]-A044045(n)]`
-/

namespace A045908.P8115214327262423817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A044045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045908.P8115214327262423817

/-! ## A045908.P3865936280547597309

`Δ[A030520(n+2)]-A045890(n)`
-/

namespace A045908.P3865936280547597309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045890 n

end

end A045908.P3865936280547597309

/-!
# A045909: Number of unsymmetrical catafusenes with n hexagons (see reference for precise definition).

The programs for A045909, there is no canonical definition to state claims against.
-/

/-! ## A045909.P17649136400236141165

`A054041(A299162(n))-2`
-/

namespace A045909.P17649136400236141165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 (A299162 n).toNat - 2

end

end A045909.P17649136400236141165

/-! ## A045909.P13678114886412548564

`A186768(n)+A082996(A001834(n))`
-/

namespace A045909.P13678114886412548564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186768 n + A082996 (A001834 n).toNat

end

end A045909.P13678114886412548564

/-!
# A045910: Numbers with digits nondecreasing and their reciprocals sum to 1/(positive integer).

The programs for A045910, there is no canonical definition to state claims against.
-/

/-! ## A045910.P15721855261660605430

`∩[A037264(n+1), A179239(n)]`
-/

namespace A045910.P15721855261660605430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045910.P15721855261660605430

/-! ## A045910.P16874389007139418132

`∩[A009994(n+1), A037264(n+1)]`
-/

namespace A045910.P16874389007139418132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045910.P16874389007139418132

/-! ## A045910.P836867616994336612

`∩[A009994(n+1), A214958(n+1)]`
-/

namespace A045910.P836867616994336612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045910.P836867616994336612

/-! ## A045910.P13826439459717564249

`∩[A037264(n+1), A249443(n+1)]`
-/

namespace A045910.P13826439459717564249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045910.P13826439459717564249

/-! ## A045910.P2750968140136286103

`∩[A037264(n+1), A381509(n+1)]`
-/

namespace A045910.P2750968140136286103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045910.P2750968140136286103

/-!
# A045911: Neither a cube nor the sum of a nonnegative cube and a prime.

The programs for A045911, there is no canonical definition to state claims against.
-/

/-! ## A045911.P14523971829434668859

`filter[A211167(n+1), A005171(#)]`
-/

namespace A045911.P14523971829434668859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A045911.P14523971829434668859

/-! ## A045911.P2211242089610613861

`filter[A211167(n+1), A066247(#)]`
-/

namespace A045911.P2211242089610613861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A045911.P2211242089610613861

/-! ## A045911.P635485617024794629

`filter[A211167(n+1), A292438(#)]`
-/

namespace A045911.P635485617024794629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A045911.P635485617024794629

/-! ## A045911.P14434847190221290202

`filter[A211167(n+1), A323162(#)]`
-/

namespace A045911.P14434847190221290202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A045911.P14434847190221290202

/-! ## A045911.P16130337731622030887

`∩[A002808(n+1), A211167(n+1)]`
-/

namespace A045911.P16130337731622030887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P16130337731622030887

/-! ## A045911.P15717398269693862153

`∩[A018252(n+1), A211167(n+1)]`
-/

namespace A045911.P15717398269693862153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P15717398269693862153

/-! ## A045911.P8691646606052693256

`∩[A141468(n+1), A211167(n+1)]`
-/

namespace A045911.P8691646606052693256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P8691646606052693256

/-! ## A045911.P5496874400545664878

`∩[A005381(n+1), A211167(n+1)]`
-/

namespace A045911.P5496874400545664878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P5496874400545664878

/-! ## A045911.P1896731010502706878

`∩[A164276(n+1), A211167(n+1)]`
-/

namespace A045911.P1896731010502706878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P1896731010502706878

/-! ## A045911.P10687636697775605789

`∩[A056653(n+1), A211167(n+1)]`
-/

namespace A045911.P10687636697775605789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P10687636697775605789

/-! ## A045911.P2069925552798005804

`∩[A062973(n+1), A211167(n+1)]`
-/

namespace A045911.P2069925552798005804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P2069925552798005804

/-! ## A045911.P7838387606037789269

`∩[A176423(n+1), A211167(n+1)]`
-/

namespace A045911.P7838387606037789269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P7838387606037789269

/-! ## A045911.P4849370426387690367

`∩[A211167(n+1), A387319(n+1)]`
-/

namespace A045911.P4849370426387690367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045911.P4849370426387690367

/-!
# A045912: Triangle of coefficients of characteristic polynomial of negative Pascal matrix with (i,j)-th entry -C(i+j-2,i-1).

The programs for A045912, there is no canonical definition to state claims against.
-/

/-! ## A045912.P8147007293223256652

`A185036(A283674(n))+A176482(n)`
-/

namespace A045912.P8147007293223256652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (A283674 n).toNat + A176482 n

end

end A045912.P8147007293223256652

/-!
# A045913: Kaprekar numbers: numbers k such that k = q + r and k^2 = q*10^m + r, for some m >= 1, q >= 0 and 0 <= r < 10^m. Here q and r must both have the same number of digits.

The programs for A045913, there is no canonical definition to state claims against.
-/

/-! ## A045913.P10450946849163149865

`filter[A006886(n+1), A008284(#)]`
-/

namespace A045913.P10450946849163149865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008284 (f1 j).toNat = 1) n)

end

end A045913.P10450946849163149865

/-! ## A045913.P6632868812056390317

`filter[A006886(n+1), A054142(#)]`
-/

namespace A045913.P6632868812056390317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054142 (f1 j).toNat = 1) n)

end

end A045913.P6632868812056390317

/-! ## A045913.P4141522488609887092

`filter[A053816(n+1), A007318(#)]`
-/

namespace A045913.P4141522488609887092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A007318 (f1 j).toNat = 1) n)

end

end A045913.P4141522488609887092

/-!
# A045914: Triangular numbers with all digits the same.

The programs for A045914, there is no canonical definition to state claims against.
-/

/-! ## A045914.P4883180097209790958

`A343811(comp[5*n])`
-/

namespace A045914.P4883180097209790958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343811 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A045914.P4883180097209790958

/-! ## A045914.P7276431811510588467

`C(∑[A147347(n+1)], 2)`
-/

namespace A045914.P7276431811510588467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A045914.P7276431811510588467

/-!
# A045917: From Goldbach problem: number of decompositions of 2n into unordered sums of two primes.

The programs for A045917, the canonical program `A045917.P11130213963118040287` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045917 has offset 1).

The definition of A045917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045917.P7500848584741873103

`ceil(A035026(n+1)/2)`
-/

namespace A045917.P7500848584741873103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035026 (n + 1) : ℚ) / 2⌉

end

end A045917.P7500848584741873103

namespace A045917

/-- `ceil(A035026(n+1)/2)` -/
def P7500848584741873103.Spec : Prop :=
  ∀ n, P7500848584741873103.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P10694313570424150560

`(A035026(n+1)+A010051(n+1))/2`
-/

namespace A045917.P10694313570424150560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035026 (n + 1) + A010051 (n + 1) : ℚ) / 2

end

end A045917.P10694313570424150560

namespace A045917

/-- `(A035026(n+1)+A010051(n+1))/2` -/
def P10694313570424150560.Spec : Prop :=
  ∀ n, P10694313570424150560.a n = (A045917 (n + 1) : ℚ)

theorem P10694313570424150560.correct : P10694313570424150560.Spec := by
  intro n
  simp only [A045917, Nat.add_sub_cancel, A045917.P10694313570424150560.a, A045917.P11130213963118040287.f1, A045917.P11130213963118040287.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A035026, A035026.P6817091043811235421.a, A061357, A061357.P8691350643323572907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045917

/-! ## A045917.P7995343363362531083

`A224708(2*(n+1))-A224708(2*(n+1)+1)+A010051(n+1)`
-/

namespace A045917.P7995343363362531083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (2 * (n + 1)) - A224708 (2 * (n + 1) + 1) + A010051 (n + 1)

end

end A045917.P7995343363362531083

namespace A045917

/-- `A224708(2*(n+1))-A224708(2*(n+1)+1)+A010051(n+1)` -/
def P7995343363362531083.Spec : Prop :=
  ∀ n, P7995343363362531083.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P11130213963118040287

`∑{#}[n-1, floor(2/A001222((#+2)*(2*(n+1)-(#+2))))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045917

/-- `∑{#}[n-1, floor(2/A001222((#+2)*(2*(n+1)-(#+2))))]` -/
def P11130213963118040287.Spec : Prop :=
  ∀ n, P11130213963118040287.a n = A045917 (n + 1)

theorem P11130213963118040287.correct : P11130213963118040287.Spec := by
  intro n
  simp only [A045917, Nat.add_sub_cancel]

end A045917

/-! ## A045917.P8647303506341172654

`A001221(A362641(n+1))`
-/

namespace A045917.P8647303506341172654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A362641 (n + 1)).toNat

end

end A045917.P8647303506341172654

namespace A045917

/-- `A001221(A362641(n+1))` -/
def P8647303506341172654.Spec : Prop :=
  ∀ n, P8647303506341172654.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P4783592112289870102

`A068307(2*(n+2))`
-/

namespace A045917.P4783592112289870102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * (n + 2))

end

end A045917.P4783592112289870102

namespace A045917

/-- `A068307(2*(n+2))` -/
def P4783592112289870102.Spec : Prop :=
  ∀ n, P4783592112289870102.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P16479088918288553697

`A002375(char[1]+1+n)`
-/

namespace A045917.P16479088918288553697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A045917.P16479088918288553697

namespace A045917

/-- `A002375(char[1]+1+n)` -/
def P16479088918288553697.Spec : Prop :=
  ∀ n, P16479088918288553697.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P14315796892080270359

`1-A227065(n+1)+n`
-/

namespace A045917.P14315796892080270359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A227065 (n + 1) + (n : ℤ)

end

end A045917.P14315796892080270359

namespace A045917

/-- `1-A227065(n+1)+n` -/
def P14315796892080270359.Spec : Prop :=
  ∀ n, P14315796892080270359.a n = A045917 (n + 1)

theorem P14315796892080270359.correct : P14315796892080270359.Spec := by
  intro n
  simp only [A045917, Nat.add_sub_cancel, A045917.P14315796892080270359.a, A045917.P11130213963118040287.f1, A045917.P11130213963118040287.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A227065, A227065.P1126766439769977197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045917

/-! ## A045917.P318836485490678861

`A280008(n)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A045917.P318836485490678861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A280008 n + a (n - 1)

end

end A045917.P318836485490678861

namespace A045917

/-- `A280008(n)+a(n-1)` -/
def P318836485490678861.Spec : Prop :=
  ∀ n, P318836485490678861.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P606706700027007238

`A226237(n+1)/(2*(n+1))`
-/

namespace A045917.P606706700027007238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226237 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A045917.P606706700027007238

namespace A045917

/-- `A226237(n+1)/(2*(n+1))` -/
def P606706700027007238.Spec : Prop :=
  ∀ n, P606706700027007238.a n = (A045917 (n + 1) : ℚ)

end A045917

/-! ## A045917.P1751615472784613322

`char[1]+round(A002372(n+1)/2)`
-/

namespace A045917.P1751615472784613322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A002372 (n + 1) : ℚ) / 2)

end

end A045917.P1751615472784613322

namespace A045917

/-- `char[1]+round(A002372(n+1)/2)` -/
def P1751615472784613322.Spec : Prop :=
  ∀ n, P1751615472784613322.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P13384057627371437824

`char[1]+ceil(A002372(2*n+1-n)/2)`
-/

namespace A045917.P13384057627371437824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(A002372 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℚ) / 2⌉

end

end A045917.P13384057627371437824

namespace A045917

/-- `char[1]+ceil(A002372(2*n+1-n)/2)` -/
def P13384057627371437824.Spec : Prop :=
  ∀ n, P13384057627371437824.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P17269562908539379365

`A110654(A035026(n+1))`
-/

namespace A045917.P17269562908539379365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A035026 (n + 1)).toNat

end

end A045917.P17269562908539379365

namespace A045917

/-- `A110654(A035026(n+1))` -/
def P17269562908539379365.Spec : Prop :=
  ∀ n, P17269562908539379365.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P15302013958134935967

`A004526(A035026(n+1)+1)`
-/

namespace A045917.P15302013958134935967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035026 (n + 1) + 1).toNat

end

end A045917.P15302013958134935967

namespace A045917

/-- `A004526(A035026(n+1)+1)` -/
def P15302013958134935967.Spec : Prop :=
  ∀ n, P15302013958134935967.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P15410004346790386827

`A063524(n)+A002375(n+1)`
-/

namespace A045917.P15410004346790386827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A002375 (n + 1)

end

end A045917.P15410004346790386827

namespace A045917

/-- `A063524(n)+A002375(n+1)` -/
def P15410004346790386827.Spec : Prop :=
  ∀ n, P15410004346790386827.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P5219092254184074919

`A002375(n+1)-A159075(n)`
-/

namespace A045917.P5219092254184074919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A159075 n

end

end A045917.P5219092254184074919

namespace A045917

/-- `A002375(n+1)-A159075(n)` -/
def P5219092254184074919.Spec : Prop :=
  ∀ n, P5219092254184074919.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P2048148993202631087

`A226237(n+1)%A157142(n)`
-/

namespace A045917.P2048148993202631087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226237 (n + 1)) (A157142 n)

end

end A045917.P2048148993202631087

namespace A045917

/-- `A226237(n+1)%A157142(n)` -/
def P2048148993202631087.Spec : Prop :=
  ∀ n, P2048148993202631087.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P15511047273637497984

`A008619(A035026(n+1)+1)-1`
-/

namespace A045917.P15511047273637497984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A035026 (n + 1) + 1).toNat - 1

end

end A045917.P15511047273637497984

namespace A045917

/-- `A008619(A035026(n+1)+1)-1` -/
def P15511047273637497984.Spec : Prop :=
  ∀ n, P15511047273637497984.a n = A045917 (n + 1)

end A045917

/-! ## A045917.P14412869283092032319

`A061357(n+1)+A010051(n+1)`
-/

namespace A045917.P14412869283092032319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) + A010051 (n + 1)

end

end A045917.P14412869283092032319

namespace A045917

/-- `A061357(n+1)+A010051(n+1)` -/
def P14412869283092032319.Spec : Prop :=
  ∀ n, P14412869283092032319.a n = A045917 (n + 1)

theorem P14412869283092032319.correct : P14412869283092032319.Spec := by
  intro n
  simp only [A045917, Nat.add_sub_cancel, A045917.P14412869283092032319.a, A045917.P11130213963118040287.f1, A045917.P11130213963118040287.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A061357, A061357.P8691350643323572907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045917

/-! ## A045917.P15097710570441648690

`A035026(n+1)-A061357(n+1)`
-/

namespace A045917.P15097710570441648690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) - A061357 (n + 1)

end

end A045917.P15097710570441648690

namespace A045917

/-- `A035026(n+1)-A061357(n+1)` -/
def P15097710570441648690.Spec : Prop :=
  ∀ n, P15097710570441648690.a n = A045917 (n + 1)

theorem P15097710570441648690.correct : P15097710570441648690.Spec := by
  intro n
  simp only [A045917, Nat.add_sub_cancel, A045917.P15097710570441648690.a, A045917.P11130213963118040287.f1, A045917.P11130213963118040287.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A035026, A035026.P6817091043811235421.a, A061357, A061357.P8691350643323572907.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045917

/-!
# A045918: Describe n. Also called the "Say What You See" or "Look and Say" sequence LS(n).

The programs for A045918, there is no canonical definition to state claims against.
-/

/-! ## A045918.P2955131550362835891

`A097601(n)+A047842(n)`
-/

namespace A045918.P2955131550362835891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n + A047842 n

end

end A045918.P2955131550362835891

/-! ## A045918.P4090538642485748217

`A047842(n)-A057428(n)*A097601(n)`
-/

namespace A045918.P4090538642485748217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n - A057428 n * A097601 n

end

end A045918.P4090538642485748217

/-! ## A045918.P9535523890429043965

`A097601(n)+A244112(n)-A097601(A004186(n))`
-/

namespace A045918.P9535523890429043965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n + (A244112 n - A097601 (A004186 n).toNat)

end

end A045918.P9535523890429043965

/-! ## A045918.P13356247542379658616

`A097601(n)+A244112(n)-A097601(A108782(n)+n)`
-/

namespace A045918.P13356247542379658616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n + (A244112 n - A097601 (A108782 n + (n : ℤ)).toNat)

end

end A045918.P13356247542379658616

/-! ## A045918.P10435457164279207903

`A097601(n)+A244112(n)-A097601(9*A283001(n)+n)`
-/

namespace A045918.P10435457164279207903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n + (A244112 n - A097601 (9 * A283001 n + (n : ℤ)).toNat)

end

end A045918.P10435457164279207903

/-! ## A045918.P776158547188016982

`A244112(n)-A108782(A087019(n))`
-/

namespace A045918.P776158547188016982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A108782 (A087019 n).toNat

end

end A045918.P776158547188016982

/-! ## A045918.P7490337406643469154

`A193581(A056143(n))+A047842(n)`
-/

namespace A045918.P7490337406643469154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A056143 n).toNat + A047842 n

end

end A045918.P7490337406643469154

/-! ## A045918.P5333110662319011036

`A193581(A181352(n))+A047842(n)`
-/

namespace A045918.P5333110662319011036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A181352 n).toNat + A047842 n

end

end A045918.P5333110662319011036

/-! ## A045918.P8412111398351395957

`A244112(n)-A108782(A056143(n))`
-/

namespace A045918.P8412111398351395957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A108782 (A056143 n).toNat

end

end A045918.P8412111398351395957

/-! ## A045918.P3437086537927491976

`A244112(n)-A108782(A181352(n))`
-/

namespace A045918.P3437086537927491976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A108782 (A181352 n).toNat

end

end A045918.P3437086537927491976

/-!
# A045919: Partial sum of Goldbach numbers A045917.

The programs for A045919, the canonical program `A045919.P1655037688969852453` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045919 has offset 1).

The definition of A045919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045919.P1655037688969852453

`∑[A045917(1+n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A045919

/-- `∑[A045917(1+n)]` -/
def P1655037688969852453.Spec : Prop :=
  ∀ n, P1655037688969852453.a n = A045919 (n + 1)

theorem P1655037688969852453.correct : P1655037688969852453.Spec := by
  intro n
  simp only [A045919, Nat.add_sub_cancel]

end A045919

/-! ## A045919.P15591411260514999233

`∑[A068307(2*(n+2))]`
-/

namespace A045919.P15591411260514999233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P15591411260514999233

namespace A045919

/-- `∑[A068307(2*(n+2))]` -/
def P15591411260514999233.Spec : Prop :=
  ∀ n, P15591411260514999233.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P3926584405730740097

`∑[ceil(A035026(n+1)/2)]`
-/

namespace A045919.P3926584405730740097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035026 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P3926584405730740097

namespace A045919

/-- `∑[ceil(A035026(n+1)/2)]` -/
def P3926584405730740097.Spec : Prop :=
  ∀ n, P3926584405730740097.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P18378932121656914818

`∑[A002375(char[1]+1+n)]`
-/

namespace A045919.P18378932121656914818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P18378932121656914818

namespace A045919

/-- `∑[A002375(char[1]+1+n)]` -/
def P18378932121656914818.Spec : Prop :=
  ∀ n, P18378932121656914818.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P612150330275922212

`∑[1-A227065(n+1)+n]`
-/

namespace A045919.P612150330275922212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A227065 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P612150330275922212

namespace A045919

/-- `∑[1-A227065(n+1)+n]` -/
def P612150330275922212.Spec : Prop :=
  ∀ n, P612150330275922212.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P5605217347275410956

`∑[A110654(A035026(n+1))]`
-/

namespace A045919.P5605217347275410956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A035026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P5605217347275410956

namespace A045919

/-- `∑[A110654(A035026(n+1))]` -/
def P5605217347275410956.Spec : Prop :=
  ∀ n, P5605217347275410956.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P11384898629505795237

`A057427(n)+A045922(n+1)`
-/

namespace A045919.P11384898629505795237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A045922 (n + 1)

end

end A045919.P11384898629505795237

namespace A045919

/-- `A057427(n)+A045922(n+1)` -/
def P11384898629505795237.Spec : Prop :=
  ∀ n, P11384898629505795237.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P3111869772901844306

`A045922(n+1)-A057428(n)`
-/

namespace A045919.P3111869772901844306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045922 (n + 1) - A057428 n

end

end A045919.P3111869772901844306

namespace A045919

/-- `A045922(n+1)-A057428(n)` -/
def P3111869772901844306.Spec : Prop :=
  ∀ n, P3111869772901844306.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P3237232837447717580

`A045922(n+1)+1-A000007(n)`
-/

namespace A045919.P3237232837447717580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045922 (n + 1) + (1 - A000007 n)

end

end A045919.P3237232837447717580

namespace A045919

/-- `A045922(n+1)+1-A000007(n)` -/
def P3237232837447717580.Spec : Prop :=
  ∀ n, P3237232837447717580.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P1168841115286513616

`∑[A061357(n+1)+A010051(n+1)]`
-/

namespace A045919.P1168841115286513616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P1168841115286513616

namespace A045919

/-- `∑[A061357(n+1)+A010051(n+1)]` -/
def P1168841115286513616.Spec : Prop :=
  ∀ n, P1168841115286513616.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P17766019933675664627

`A045922(n+1)+A002375(n+2)/A045917(n+2)`
-/

namespace A045919.P17766019933675664627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045922 (n + 1) : ℚ) + (A002375 (n + 2) : ℚ) / (A045917 (n + 2) : ℚ)

end

end A045919.P17766019933675664627

namespace A045919

/-- `A045922(n+1)+A002375(n+2)/A045917(n+2)` -/
def P17766019933675664627.Spec : Prop :=
  ∀ n, P17766019933675664627.a n = (A045919 (n + 1) : ℚ)

end A045919

/-! ## A045919.P2549914591120685516

`A045922(n+2)+1-A045917(n+2)`
-/

namespace A045919.P2549914591120685516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045922 (n + 2) + (1 - A045917 (n + 2))

end

end A045919.P2549914591120685516

namespace A045919

/-- `A045922(n+2)+1-A045917(n+2)` -/
def P2549914591120685516.Spec : Prop :=
  ∀ n, P2549914591120685516.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P9833087470033496893

`∑[A061358(2*(n+1))]`
-/

namespace A045919.P9833087470033496893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P9833087470033496893

namespace A045919

/-- `∑[A061358(2*(n+1))]` -/
def P9833087470033496893.Spec : Prop :=
  ∀ n, P9833087470033496893.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P16253016436687606648

`∑[A083338(2*(n+1))]`
-/

namespace A045919.P16253016436687606648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P16253016436687606648

namespace A045919

/-- `∑[A083338(2*(n+1))]` -/
def P16253016436687606648.Spec : Prop :=
  ∀ n, P16253016436687606648.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P10120875110179427468

`∑[A004526(A073610(2*(n+1))+1)]`
-/

namespace A045919.P10120875110179427468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073610 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P10120875110179427468

namespace A045919

/-- `∑[A004526(A073610(2*(n+1))+1)]` -/
def P10120875110179427468.Spec : Prop :=
  ∀ n, P10120875110179427468.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P4959142305112349501

`∑[A061358(A004277(n+1))%A004277(n)]`
-/

namespace A045919.P4959142305112349501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061358 (A004277 (n + 1)).toNat) (A004277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045919.P4959142305112349501

namespace A045919

/-- `∑[A061358(A004277(n+1))%A004277(n)]` -/
def P4959142305112349501.Spec : Prop :=
  ∀ n, P4959142305112349501.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P6655429032005489379

`A045922(n+1)+A000007(A000007(n)*A063886(n))`
-/

namespace A045919.P6655429032005489379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045922 (n + 1) + A000007 (A000007 n * A063886 n).toNat

end

end A045919.P6655429032005489379

namespace A045919

/-- `A045922(n+1)+A000007(A000007(n)*A063886(n))` -/
def P6655429032005489379.Spec : Prop :=
  ∀ n, P6655429032005489379.a n = A045919 (n + 1)

end A045919

/-! ## A045919.P14666971632733692934

`A045922(n+1)+A000007(A000007(n)/A063886(n))`
-/

namespace A045919.P14666971632733692934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045922 (n + 1) + A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A063886 n : ℚ))).toNat

end

end A045919.P14666971632733692934

namespace A045919

/-- `A045922(n+1)+A000007(A000007(n)/A063886(n))` -/
def P14666971632733692934.Spec : Prop :=
  ∀ n, P14666971632733692934.a n = A045919 (n + 1)

end A045919

/-!
# A045920: Numbers m such that the factorizations of m..m+1 have the same number of primes (including multiplicities).

The programs for A045920, the canonical program `A045920.P4151423795650373720` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045920 has offset 1).

The definition of A045920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045920.P7996745792808912660

`A278291(n+1)-1`
-/

namespace A045920.P7996745792808912660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1) - 1

end

end A045920.P7996745792808912660

namespace A045920

/-- `A278291(n+1)-1` -/
def P7996745792808912660.Spec : Prop :=
  ∀ n, P7996745792808912660.a n = A045920 (n + 1)

theorem P7996745792808912660.correct : P7996745792808912660.Spec := by
  intro n
  simp only [A045920, Nat.add_sub_cancel, A045920.P7996745792808912660.a, A045920.P4151423795650373720.a, A115167, A115167.P14839111821241790743.f1, A115167.P14839111821241790743.f2, A115167.P14839111821241790743.a, A278291, A278291.P6818731943962716287.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045920

/-! ## A045920.P4151423795650373720

`floor(A115167(n+1)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A045920

/-- `floor(A115167(n+1)/2)` -/
def P4151423795650373720.Spec : Prop :=
  ∀ n, P4151423795650373720.a n = A045920 (n + 1)

theorem P4151423795650373720.correct : P4151423795650373720.Spec := by
  intro n
  simp only [A045920, Nat.add_sub_cancel]

end A045920

/-! ## A045920.P8237812039276470054

`A115167(n+1)%A278291(n+1)`
-/

namespace A045920.P8237812039276470054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115167 (n + 1)) (A278291 (n + 1))

end

end A045920.P8237812039276470054

namespace A045920

/-- `A115167(n+1)%A278291(n+1)` -/
def P8237812039276470054.Spec : Prop :=
  ∀ n, P8237812039276470054.a n = A045920 (n + 1)

end A045920

/-! ## A045920.P11126745795553959812

`A273943(A115167(n+1)-1)`
-/

namespace A045920.P11126745795553959812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A115167 (n + 1) - 1).toNat

end

end A045920.P11126745795553959812

namespace A045920

/-- `A273943(A115167(n+1)-1)` -/
def P11126745795553959812.Spec : Prop :=
  ∀ n, P11126745795553959812.a n = A045920 (n + 1)

end A045920

/-! ## A045920.P17315022576913102612

`eq[A001222(n+1), A001222(n+2)]+1`
-/

namespace A045920.P17315022576913102612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045920.P17315022576913102612

namespace A045920

/-- `eq[A001222(n+1), A001222(n+2)]+1` -/
def P17315022576913102612.Spec : Prop :=
  ∀ n, (P17315022576913102612.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P14004415009241785457

`eq[0, Δ[∑{e}[2*n, #]]]`
-/

namespace A045920.P14004415009241785457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045920.P14004415009241785457

namespace A045920

/-- `eq[0, Δ[∑{e}[2*n, #]]]` -/
def P14004415009241785457.Spec : Prop :=
  ∀ n, (P14004415009241785457.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P17028877339979495992

`eq[1, A068796(n+1)]+1`
-/

namespace A045920.P17028877339979495992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045920.P17028877339979495992

namespace A045920

/-- `eq[1, A068796(n+1)]+1` -/
def P17028877339979495992.Spec : Prop :=
  ∀ n, (P17028877339979495992.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P660628696727017021

`eq[0, Δ[A001222(n+1)]]+1`
-/

namespace A045920.P660628696727017021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045920.P660628696727017021

namespace A045920

/-- `eq[0, Δ[A001222(n+1)]]+1` -/
def P660628696727017021.Spec : Prop :=
  ∀ n, (P660628696727017021.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P406238028347412255

`record[gcd(n+2, Δ[A001222(n+2)])]`
-/

namespace A045920.P406238028347412255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045920.P406238028347412255

namespace A045920

/-- `record[gcd(n+2, Δ[A001222(n+2)])]` -/
def P406238028347412255.Spec : Prop :=
  ∀ n, (P406238028347412255.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P12468883887444054209

`A023443(A278291(n+1))`
-/

namespace A045920.P12468883887444054209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278291 (n + 1)).toNat

end

end A045920.P12468883887444054209

namespace A045920

/-- `A023443(A278291(n+1))` -/
def P12468883887444054209.Spec : Prop :=
  ∀ n, P12468883887444054209.a n = A045920 (n + 1)

end A045920

/-! ## A045920.P1207562617769948517

`lt[0, A077655(A028310(n))]`
-/

namespace A045920.P1207562617769948517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045920.P1207562617769948517

namespace A045920

/-- `lt[0, A077655(A028310(n))]` -/
def P1207562617769948517.Spec : Prop :=
  ∀ n, (P1207562617769948517.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P7275911228649537699

`lt[Δ[A001222(A004277(n))]², 1]`
-/

namespace A045920.P7275911228649537699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A045920.P7275911228649537699

namespace A045920

/-- `lt[Δ[A001222(A004277(n))]², 1]` -/
def P7275911228649537699.Spec : Prop :=
  ∀ n, (P7275911228649537699.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P14098948512732933599

`A020725(eq[1, A076191(n+1)+1])`
-/

namespace A045920.P14098948512732933599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045920.P14098948512732933599

namespace A045920

/-- `A020725(eq[1, A076191(n+1)+1])` -/
def P14098948512732933599.Spec : Prop :=
  ∀ n, P14098948512732933599.a n = A045920 (n + 1)

end A045920

/-! ## A045920.P8104428062249006299

`lt[Δ[A028815(A001222(n+1)+1)]², 1]+1`
-/

namespace A045920.P8104428062249006299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A001222 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A045920.P8104428062249006299

namespace A045920

/-- `lt[Δ[A028815(A001222(n+1)+1)]², 1]+1` -/
def P8104428062249006299.Spec : Prop :=
  ∀ n, (P8104428062249006299.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P15806543175290193041

`eq[A001222(A028310(n)), A086436(n+1)]`
-/

namespace A045920.P15806543175290193041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045920.P15806543175290193041

namespace A045920

/-- `eq[A001222(A028310(n)), A086436(n+1)]` -/
def P15806543175290193041.Spec : Prop :=
  ∀ n, (P15806543175290193041.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P9917050757176881024

`eq[A001222(n+1)+1, A001222(A004277(n))]`
-/

namespace A045920.P9917050757176881024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045920.P9917050757176881024

namespace A045920

/-- `eq[A001222(n+1)+1, A001222(A004277(n))]` -/
def P9917050757176881024.Spec : Prop :=
  ∀ n, (P9917050757176881024.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P17476662978782903245

`eq[A001222(n+1)+1, A001222(A008486(n))]`
-/

namespace A045920.P17476662978782903245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045920.P17476662978782903245

namespace A045920

/-- `eq[A001222(n+1)+1, A001222(A008486(n))]` -/
def P17476662978782903245.Spec : Prop :=
  ∀ n, (P17476662978782903245.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P3245765447396575408

`eq[A001222(n+1)+1, A001222(A008706(n))]`
-/

namespace A045920.P3245765447396575408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045920.P3245765447396575408

namespace A045920

/-- `eq[A001222(n+1)+1, A001222(A008706(n))]` -/
def P3245765447396575408.Spec : Prop :=
  ∀ n, (P3245765447396575408.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P5703008240288936410

`eq[A001222(n+1)+2, A001222(A008458(n))]`
-/

namespace A045920.P5703008240288936410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045920.P5703008240288936410

namespace A045920

/-- `eq[A001222(n+1)+2, A001222(A008458(n))]` -/
def P5703008240288936410.Spec : Prop :=
  ∀ n, (P5703008240288936410.a n : ℤ) = A045920 (n + 1)

end A045920

/-! ## A045920.P2973343866066638239

`eq[A001222(n+1)+2, A001222(A008574(n))]`
-/

namespace A045920.P2973343866066638239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045920.P2973343866066638239

namespace A045920

/-- `eq[A001222(n+1)+2, A001222(A008574(n))]` -/
def P2973343866066638239.Spec : Prop :=
  ∀ n, (P2973343866066638239.a n : ℤ) = A045920 (n + 1)

end A045920

/-!
# A045922: Partial sums of Goldbach numbers A002375.

The programs for A045922, the canonical program `A045922.P15359746195086724923` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045922 has offset 1).

The definition of A045922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045922.P15359746195086724923

`∑[A002375(1+n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045922

/-- `∑[A002375(1+n)]` -/
def P15359746195086724923.Spec : Prop :=
  ∀ n, P15359746195086724923.a n = A045922 (n + 1)

theorem P15359746195086724923.correct : P15359746195086724923.Spec := by
  intro n
  simp only [A045922, Nat.add_sub_cancel]

end A045922

/-! ## A045922.P4663576402334804119

`∑[A190353(2*(n+1))]`
-/

namespace A045922.P4663576402334804119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P4663576402334804119

namespace A045922

/-- `∑[A190353(2*(n+1))]` -/
def P4663576402334804119.Spec : Prop :=
  ∀ n, P4663576402334804119.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P1088962800376971857

`∑[ceil(A002372(n+1)/2)]`
-/

namespace A045922.P1088962800376971857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P1088962800376971857

namespace A045922

/-- `∑[ceil(A002372(n+1)/2)]` -/
def P1088962800376971857.Spec : Prop :=
  ∀ n, P1088962800376971857.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P14031863550128173227

`∑[A045917(1-char[1]+n)]`
-/

namespace A045922.P14031863550128173227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P14031863550128173227

namespace A045922

/-- `∑[A045917(1-char[1]+n)]` -/
def P14031863550128173227.Spec : Prop :=
  ∀ n, P14031863550128173227.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P6113812535320174579

`∑[xor(char[1], A045917(n+1))]`
-/

namespace A045922.P6113812535320174579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) (A045917 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P6113812535320174579

namespace A045922

/-- `∑[xor(char[1], A045917(n+1))]` -/
def P6113812535320174579.Spec : Prop :=
  ∀ n, P6113812535320174579.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P14530532449346888312

`∑[(n+1)%A227065(n+1)]`
-/

namespace A045922.P14530532449346888312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227065 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P14530532449346888312

namespace A045922

/-- `∑[(n+1)%A227065(n+1)]` -/
def P14530532449346888312.Spec : Prop :=
  ∀ n, P14530532449346888312.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P1664467344223123184

`A057428(n)+A045919(n+1)`
-/

namespace A045922.P1664467344223123184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A045919 (n + 1)

end

end A045922.P1664467344223123184

namespace A045922

/-- `A057428(n)+A045919(n+1)` -/
def P1664467344223123184.Spec : Prop :=
  ∀ n, P1664467344223123184.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P9417095419935341284

`A045919(n+1)-A057427(n)`
-/

namespace A045922.P9417095419935341284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045919 (n + 1) - A057427 n

end

end A045922.P9417095419935341284

namespace A045922

/-- `A045919(n+1)-A057427(n)` -/
def P9417095419935341284.Spec : Prop :=
  ∀ n, P9417095419935341284.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P5857015346556481552

`∑[A002372(n+1)-A061357(n+1)]`
-/

namespace A045922.P5857015346556481552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - A061357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P5857015346556481552

namespace A045922

/-- `∑[A002372(n+1)-A061357(n+1)]` -/
def P5857015346556481552.Spec : Prop :=
  ∀ n, P5857015346556481552.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P7122601425680652444

`∑[A045917(n+1)%A045893(n+1)]`
-/

namespace A045922.P7122601425680652444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045917 (n + 1)) (A045893 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P7122601425680652444

namespace A045922

/-- `∑[A045917(n+1)%A045893(n+1)]` -/
def P7122601425680652444.Spec : Prop :=
  ∀ n, P7122601425680652444.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P7957382272504979277

`∑[∑[A280008(n+1)]-A280008(n+1)]`
-/

namespace A045922.P7957382272504979277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A280008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P7957382272504979277

namespace A045922

/-- `∑[∑[A280008(n+1)]-A280008(n+1)]` -/
def P7957382272504979277.Spec : Prop :=
  ∀ n, P7957382272504979277.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P14387361380867482128

`A045919(n+1)-A002375(n+2)/A045917(n+2)`
-/

namespace A045922.P14387361380867482128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045919 (n + 1) : ℚ) - (A002375 (n + 2) : ℚ) / (A045917 (n + 2) : ℚ)

end

end A045922.P14387361380867482128

namespace A045922

/-- `A045919(n+1)-A002375(n+2)/A045917(n+2)` -/
def P14387361380867482128.Spec : Prop :=
  ∀ n, P14387361380867482128.a n = (A045922 (n + 1) : ℚ)

end A045922

/-! ## A045922.P6997133077283832862

`A045919(n+2)-(A002375(n+2)+1)`
-/

namespace A045922.P6997133077283832862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045919 (n + 2) - (A002375 (n + 2) + 1)

end

end A045922.P6997133077283832862

namespace A045922

/-- `A045919(n+2)-(A002375(n+2)+1)` -/
def P6997133077283832862.Spec : Prop :=
  ∀ n, P6997133077283832862.a n = A045922 (n + 1)

end A045922

/-! ## A045922.P4499182890769268711

`∑[A045917(n+1)%A000041(n)]`
-/

namespace A045922.P4499182890769268711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045917 (n + 1)) (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P4499182890769268711

namespace A045922

/-- `∑[A045917(n+1)%A000041(n)]` -/
def P4499182890769268711.Spec : Prop :=
  ∀ n, P4499182890769268711.a n = A045922 (n + 1)

end A045922

/-!
# A045923: Number of irreducible representations of symmetric group S_n for which every matrix has determinant 1.

The programs for A045923, there is no canonical definition to state claims against.
-/

/-! ## A045923.P3305183383788805815

`A000041(n+1)-A272090(n+1)`
-/

namespace A045923.P3305183383788805815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A272090 (n + 1)

end

end A045923.P3305183383788805815

/-! ## A045923.P7315487652204051824

`A000065(n+1)+1-A272090(n+1)`
-/

namespace A045923.P7315487652204051824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A272090 (n + 1))

end

end A045923.P7315487652204051824

/-! ## A045923.P6704267310135032248

`Δ[A000070(n)]-A272090(n+1)`
-/

namespace A045923.P6704267310135032248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272090 (n + 1)

end

end A045923.P6704267310135032248

/-! ## A045923.P6510416808179849372

`record[A035363(n)]-A272090(n+1)`
-/

namespace A045923.P6510416808179849372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272090 (n + 1)

end

end A045923.P6510416808179849372

/-! ## A045923.P7861217030529838871

`record[A035444(n)]-A272090(n+1)`
-/

namespace A045923.P7861217030529838871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272090 (n + 1)

end

end A045923.P7861217030529838871

/-! ## A045923.P14453418795544163241

`record[A114099(n)]-A272090(n+1)`
-/

namespace A045923.P14453418795544163241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272090 (n + 1)

end

end A045923.P14453418795544163241

/-! ## A045923.P9806436132293919198

`record[A027293(n+1)]-A272090(n+1)`
-/

namespace A045923.P9806436132293919198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272090 (n + 1)

end

end A045923.P9806436132293919198

/-! ## A045923.P12450237581501470896

`record[A182703(n+1)]-A272090(n+1)`
-/

namespace A045923.P12450237581501470896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272090 (n + 1)

end

end A045923.P12450237581501470896

/-!
# A045924: Numbers n such that prime(n) == -1 (mod n).

The programs for A045924, there is no canonical definition to state claims against.
-/

/-! ## A045924.P16482666780471246933

`∩[A078931(n+1), A127150(n+1)]`
-/

namespace A045924.P16482666780471246933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045924.P16482666780471246933

/-! ## A045924.P17058388496635592575

`eq[n, gcd(n, A028815(n))]`
-/

namespace A045924.P17058388496635592575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A028815 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045924.P17058388496635592575

/-! ## A045924.P11533449022509685852

`lt[A068901(n+1), 2]+1`
-/

namespace A045924.P11533449022509685852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068901 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A045924.P11533449022509685852

/-! ## A045924.P6476523113191234080

`eq[n, A004648(n+1)]+1`
-/

namespace A045924.P6476523113191234080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045924.P6476523113191234080

/-! ## A045924.P15743905440084287275

`eq[n, A000040(n+1)%(n+1)]+1`
-/

namespace A045924.P15743905440084287275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045924.P15743905440084287275

/-!
# A045925: a(n) = n*Fibonacci(n).

The programs for A045925, the canonical program `A045925.P2609971174242523106` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045925 has offset 0).

The definition of A045925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000045(n)` (program `A045925.P2609971174242523106`, by `A045925.P2609971174242523106.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045925.P13014034371012010321

`ogf((x+x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A045925.P13014034371012010321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -2, -1, 2, 1] n

end

end A045925.P13014034371012010321

namespace A045925

/-- `ogf((x+x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P13014034371012010321.Spec : Prop :=
  ∀ n, P13014034371012010321.a n = A045925 n

end A045925

/-! ## A045925.P2609971174242523106

`n*A000045(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045925

/-- `n*A000045(n)` -/
def P2609971174242523106.Spec : Prop :=
  ∀ n, P2609971174242523106.a n = A045925 n

theorem P2609971174242523106.correct : P2609971174242523106.Spec := by
  intro n
  simp only [A045925]

end A045925

/-! ## A045925.P6763809318405260430

`n*Δ[floor(ϕ*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A045925.P6763809318405260430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A045925.P6763809318405260430

namespace A045925

/-- `n*Δ[floor(ϕ*a(n-1))]` -/
def P6763809318405260430.Spec : Prop :=
  ∀ n, P6763809318405260430.a n = A045925 n

end A045925

/-! ## A045925.P2973697856270922

`n*Δ[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A045925.P2973697856270922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A045925.P2973697856270922

namespace A045925

/-- `n*Δ[a(n-1)+a(n-2)]` -/
def P2973697856270922.Spec : Prop :=
  ∀ n, P2973697856270922.a n = A045925 n

end A045925

/-! ## A045925.P3660992480852385081

`n*∑[a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A045925.P3660992480852385081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045925.P3660992480852385081

namespace A045925

/-- `n*∑[a(n-1)+a(n-2)]` -/
def P3660992480852385081.Spec : Prop :=
  ∀ n, (P3660992480852385081.a n : ℤ) = A045925 n

end A045925

/-! ## A045925.P17815951828478808522

`abs(n*A236191(n))`
-/

namespace A045925.P17815951828478808522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A236191 n|

end

end A045925.P17815951828478808522

namespace A045925

/-- `abs(n*A236191(n))` -/
def P17815951828478808522.Spec : Prop :=
  ∀ n, P17815951828478808522.a n = A045925 n

end A045925

/-! ## A045925.P5233667185655272670

`abs(n*A333378(n))`
-/

namespace A045925.P5233667185655272670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A333378 n|

end

end A045925.P5233667185655272670

namespace A045925

/-- `abs(n*A333378(n))` -/
def P5233667185655272670.Spec : Prop :=
  ∀ n, P5233667185655272670.a n = A045925 n

end A045925

/-! ## A045925.P9559332698177193495

`n*A212804(n+1)`
-/

namespace A045925.P9559332698177193495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212804 (n + 1)

end

end A045925.P9559332698177193495

namespace A045925

/-- `n*A212804(n+1)` -/
def P9559332698177193495.Spec : Prop :=
  ∀ n, P9559332698177193495.a n = A045925 n

end A045925

/-! ## A045925.P4107332915468015578

`n*A324969(n+1)`
-/

namespace A045925.P4107332915468015578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A324969 (n + 1)

end

end A045925.P4107332915468015578

namespace A045925

/-- `n*A324969(n+1)` -/
def P4107332915468015578.Spec : Prop :=
  ∀ n, P4107332915468015578.a n = A045925 n

end A045925

/-! ## A045925.P9306139662054658286

`n*(A001611(n)-1)`
-/

namespace A045925.P9306139662054658286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001611 n - 1)

end

end A045925.P9306139662054658286

namespace A045925

/-- `n*(A001611(n)-1)` -/
def P9306139662054658286.Spec : Prop :=
  ∀ n, P9306139662054658286.a n = A045925 n

theorem P9306139662054658286.correct : P9306139662054658286.Spec := by
  intro n
  simp only [A045925, Nat.add_sub_cancel, A045925.P9306139662054658286.a, A045925.P2609971174242523106.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045925

/-! ## A045925.P976957601819283454

`n*(A157725(n)-2)`
-/

namespace A045925.P976957601819283454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A157725 n - 2)

end

end A045925.P976957601819283454

namespace A045925

/-- `n*(A157725(n)-2)` -/
def P976957601819283454.Spec : Prop :=
  ∀ n, P976957601819283454.a n = A045925 n

theorem P976957601819283454.correct : P976957601819283454.Spec := by
  intro n
  simp only [A045925, Nat.add_sub_cancel, A045925.P976957601819283454.a, A045925.P2609971174242523106.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045925

/-! ## A045925.P17192924115565197545

`n*A053602(2*n)`
-/

namespace A045925.P17192924115565197545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053602 (2 * n)

end

end A045925.P17192924115565197545

namespace A045925

/-- `n*A053602(2*n)` -/
def P17192924115565197545.Spec : Prop :=
  ∀ n, P17192924115565197545.a n = A045925 n

end A045925

/-! ## A045925.P16477213928577748086

`n*A103609(2*n)`
-/

namespace A045925.P16477213928577748086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103609 (2 * n)

end

end A045925.P16477213928577748086

namespace A045925

/-- `n*A103609(2*n)` -/
def P16477213928577748086.Spec : Prop :=
  ∀ n, P16477213928577748086.a n = A045925 n

end A045925

/-! ## A045925.P3422191438997268807

`n*(A157726(n)-3)`
-/

namespace A045925.P3422191438997268807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A157726 n - 3)

end

end A045925.P3422191438997268807

namespace A045925

/-- `n*(A157726(n)-3)` -/
def P3422191438997268807.Spec : Prop :=
  ∀ n, P3422191438997268807.a n = A045925 n

theorem P3422191438997268807.correct : P3422191438997268807.Spec := by
  intro n
  simp only [A045925, Nat.add_sub_cancel, A045925.P3422191438997268807.a, A045925.P2609971174242523106.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045925

/-! ## A045925.P3938549826349032059

`n*A302126(2*n)`
-/

namespace A045925.P3938549826349032059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302126 (2 * n)

end

end A045925.P3938549826349032059

namespace A045925

/-- `n*A302126(2*n)` -/
def P3938549826349032059.Spec : Prop :=
  ∀ n, P3938549826349032059.a n = A045925 n

end A045925

/-! ## A045925.P8430743743893334240

`n/2*A055389(n)`
-/

namespace A045925.P8430743743893334240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A055389 n : ℚ)

end

end A045925.P8430743743893334240

namespace A045925

/-- `n/2*A055389(n)` -/
def P8430743743893334240.Spec : Prop :=
  ∀ n, P8430743743893334240.a n = (A045925 n : ℚ)

end A045925

/-! ## A045925.P11573503282406687716

`n*(A157727(n)-4)`
-/

namespace A045925.P11573503282406687716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A157727 n - 4)

end

end A045925.P11573503282406687716

namespace A045925

/-- `n*(A157727(n)-4)` -/
def P11573503282406687716.Spec : Prop :=
  ∀ n, P11573503282406687716.a n = A045925 n

theorem P11573503282406687716.correct : P11573503282406687716.Spec := by
  intro n
  simp only [A045925, Nat.add_sub_cancel, A045925.P11573503282406687716.a, A045925.P2609971174242523106.a, A000045, A000045.P11838749114346432762.a, A157727, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045925

/-! ## A045925.P195635459561846603

`n/3*A022086(n)`
-/

namespace A045925.P195635459561846603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A022086 n : ℚ)

end

end A045925.P195635459561846603

namespace A045925

/-- `n/3*A022086(n)` -/
def P195635459561846603.Spec : Prop :=
  ∀ n, P195635459561846603.a n = (A045925 n : ℚ)

end A045925

/-! ## A045925.P7940433646646802538

`n/3*A097135(n)`
-/

namespace A045925.P7940433646646802538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A097135 n : ℚ)

end

end A045925.P7940433646646802538

namespace A045925

/-- `n/3*A097135(n)` -/
def P7940433646646802538.Spec : Prop :=
  ∀ n, P7940433646646802538.a n = (A045925 n : ℚ)

end A045925

/-!
# A045926: All digits even and nonzero.

The programs for A045926, there is no canonical definition to state claims against.
-/

/-! ## A045926.P14919670686148690779

`2*A084544(n+1)`
-/

namespace A045926.P14919670686148690779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084544 (n + 1)

end

end A045926.P14919670686148690779

/-! ## A045926.P12828820458309915795

`A084544(A000027(n+1))+A084544(n+1)`
-/

namespace A045926.P12828820458309915795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (A000027 (n + 1)).toNat + A084544 (n + 1)

end

end A045926.P12828820458309915795

/-! ## A045926.P8989483839434277721

`lcm(A084544(n+1)+A084544(n+1), A020903(n+1))`
-/

namespace A045926.P8989483839434277721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084544 (n + 1) + A084544 (n + 1)) (A020903 (n + 1))

end

end A045926.P8989483839434277721

/-! ## A045926.P15437120096665224195

`A014263(A023721(n+1)+1)`
-/

namespace A045926.P15437120096665224195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A023721 (n + 1) + 1).toNat

end

end A045926.P15437120096665224195

/-! ## A045926.P12955150633883289726

`2*∩[A084545(n+1), A007091(n)]`
-/

namespace A045926.P12955150633883289726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P12955150633883289726

/-! ## A045926.P13591084847333571588

`2*∩[A001729(n+1), A007091(n)]`
-/

namespace A045926.P13591084847333571588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P13591084847333571588

/-! ## A045926.P14406852039128714407

`2*∩[A057436(n+1), A007091(n)]`
-/

namespace A045926.P14406852039128714407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P14406852039128714407

/-! ## A045926.P10567371259412101702

`record[A048379(A014261(n+1))]`
-/

namespace A045926.P10567371259412101702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A014261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045926.P10567371259412101702

/-! ## A045926.P9913882059568764482

`2*∩[A214677(n+1), A007091(n)]`
-/

namespace A045926.P9913882059568764482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P9913882059568764482

/-! ## A045926.P8274040574102561469

`∩[A014263(n+1), A330982(n+1)]`
-/

namespace A045926.P8274040574102561469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P8274040574102561469

/-! ## A045926.P5454756656979723654

`2*∩[A214678(n+1), A007091(n)]`
-/

namespace A045926.P5454756656979723654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P5454756656979723654

/-! ## A045926.P3493841006909271296

`2*∩[A261189(n+1), A007091(n)]`
-/

namespace A045926.P3493841006909271296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P3493841006909271296

/-! ## A045926.P14642417834063831089

`2*∩[A261189(n+1), A007092(n)]`
-/

namespace A045926.P14642417834063831089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P14642417834063831089

/-! ## A045926.P4958575187134025049

`∩[A014263(n+1), A037344(n+1)]`
-/

namespace A045926.P4958575187134025049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P4958575187134025049

/-! ## A045926.P6569542749464803329

`∩[A014263(n+1), A387032(n+1)]`
-/

namespace A045926.P6569542749464803329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P6569542749464803329

/-! ## A045926.P8370863977247575180

`2*∩[A039116(n+1), A007091(n)]`
-/

namespace A045926.P8370863977247575180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P8370863977247575180

/-! ## A045926.P16044264819885546148

`2*∩[A039117(n+1), A007091(n)]`
-/

namespace A045926.P16044264819885546148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P16044264819885546148

/-! ## A045926.P13931729584902791150

`2*∩[A039118(n+1), A007091(n)]`
-/

namespace A045926.P13931729584902791150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P13931729584902791150

/-! ## A045926.P5077896024123973065

`2*∩[A039119(n+1), A007091(n)]`
-/

namespace A045926.P5077896024123973065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P5077896024123973065

/-! ## A045926.P16753496209834142741

`2*∩[A052382(n+1), A007091(n)]`
-/

namespace A045926.P16753496209834142741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045926.P16753496209834142741

/-!
# A045927: Digits even, nonzero and nondecreasing.

The programs for A045927, there is no canonical definition to state claims against.
-/

/-! ## A045927.P8947635801911910683

`∩[A009994(n+1), A045926(n+1)]`
-/

namespace A045927.P8947635801911910683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045927.P8947635801911910683

/-! ## A045927.P6315658265914724481

`∩[A045926(n+1), A249443(n+1)]`
-/

namespace A045927.P6315658265914724481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045927.P6315658265914724481

/-! ## A045927.P5108861736407086770

`∩[A045926(n+1), A179239(n)]`
-/

namespace A045927.P5108861736407086770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045927.P5108861736407086770

/-! ## A045927.P7923878907599068992

`∩[A045926(n+1), A381509(n+1)]`
-/

namespace A045927.P7923878907599068992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045927.P7923878907599068992

/-! ## A045927.P18185304929893765338

`A014263(A023747(n+2)+1)`
-/

namespace A045927.P18185304929893765338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A023747 (n + 2) + 1).toNat

end

end A045927.P18185304929893765338

/-! ## A045927.P2875520057976748025

`∩[A014263(n+1), A077557(n)]`
-/

namespace A045927.P2875520057976748025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045927.P2875520057976748025

/-! ## A045927.P717689227726838110

`∩[A045926(n+1), A077557(n)]`
-/

namespace A045927.P717689227726838110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045927.P717689227726838110

/-! ## A045927.P11420255312864742255

`record[A004185(A045926(n+1))]`
-/

namespace A045927.P11420255312864742255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A045926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045927.P11420255312864742255

/-! ## A045927.P10304781012948300022

`record[A004185(A014263(n+2))]`
-/

namespace A045927.P10304781012948300022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A014263 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045927.P10304781012948300022

/-! ## A045927.P13844047742418185149

`2*lt[A193581(n), A330025(n)]`
-/

namespace A045927.P13844047742418185149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045927.P13844047742418185149

/-!
# A045928: The generalized Connell sequence C_{3,2}.

The programs for A045928, the canonical program `A045928.P6418909097058057068` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045928 has offset 1).

The definition of A045928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045928.P15266552807959294292

`∑[ceil(acot(char[n²])²)]`
-/

namespace A045928.P15266552807959294292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045928.P15266552807959294292

namespace A045928

/-- `∑[ceil(acot(char[n²])²)]` -/
def P15266552807959294292.Spec : Prop :=
  ∀ n, P15266552807959294292.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P14970321913100750930

`∑[3-2*char[n²]]`
-/

namespace A045928.P14970321913100750930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045928.P14970321913100750930

namespace A045928

/-- `∑[3-2*char[n²]]` -/
def P14970321913100750930.Spec : Prop :=
  ∀ n, P14970321913100750930.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P1460043666555486651

`a(n-1)+3-(char[(1+n)²]+char[n²])` with `a(0)=1`
-/

namespace A045928.P1460043666555486651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A045928.P1460043666555486651

namespace A045928

/-- `a(n-1)+3-(char[(1+n)²]+char[n²])` -/
def P1460043666555486651.Spec : Prop :=
  ∀ n, P1460043666555486651.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P16737932511631047817

`A122800(n+1)+n`
-/

namespace A045928.P16737932511631047817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122800 (n + 1) + (n : ℤ)

end

end A045928.P16737932511631047817

namespace A045928

/-- `A122800(n+1)+n` -/
def P16737932511631047817.Spec : Prop :=
  ∀ n, P16737932511631047817.a n = A045928 (n + 1)

theorem P16737932511631047817.correct : P16737932511631047817.Spec := by
  intro n
  simp only [A045928, Nat.add_sub_cancel, A045928.P16737932511631047817.a, A045928.P6418909097058057068.a, A028391, A028391.P17198271841435315725.a, A122800, A122800.P16993477240022882628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045928

/-! ## A045928.P9419948263242520906

`∑[3-A000122(n)]-1`
-/

namespace A045928.P9419948263242520906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A045928.P9419948263242520906

namespace A045928

/-- `∑[3-A000122(n)]-1` -/
def P9419948263242520906.Spec : Prop :=
  ∀ n, P9419948263242520906.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P6418909097058057068

`2*A028391(n)+1+n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045928

/-- `2*A028391(n)+1+n` -/
def P6418909097058057068.Spec : Prop :=
  ∀ n, P6418909097058057068.a n = A045928 (n + 1)

theorem P6418909097058057068.correct : P6418909097058057068.Spec := by
  intro n
  simp only [A045928, Nat.add_sub_cancel]

end A045928

/-! ## A045928.P11749549169603142634

`or(1, A123663(n+1))+n`
-/

namespace A045928.P11749549169603142634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A123663 (n + 1)) + (n : ℤ)

end

end A045928.P11749549169603142634

namespace A045928

/-- `or(1, A123663(n+1))+n` -/
def P11749549169603142634.Spec : Prop :=
  ∀ n, P11749549169603142634.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P5644336665169732378

`A171369(n)+a(n-1)` with `a(0)=1`
-/

namespace A045928.P5644336665169732378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171369 n + a (n - 1)

end

end A045928.P5644336665169732378

namespace A045928

/-- `A171369(n)+a(n-1)` -/
def P5644336665169732378.Spec : Prop :=
  ∀ n, P5644336665169732378.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P16014710418045076922

`∑[2-and(3, A212885(n))]+n`
-/

namespace A045928.P16014710418045076922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 3 (A212885 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A045928.P16014710418045076922

namespace A045928

/-- `∑[2-and(3, A212885(n))]+n` -/
def P16014710418045076922.Spec : Prop :=
  ∀ n, P16014710418045076922.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P13605299934754089117

`3*(n+1)-A130819(n+1)`
-/

namespace A045928.P13605299934754089117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A130819 (n + 1)

end

end A045928.P13605299934754089117

namespace A045928

/-- `3*(n+1)-A130819(n+1)` -/
def P13605299934754089117.Spec : Prop :=
  ∀ n, P13605299934754089117.a n = A045928 (n + 1)

theorem P13605299934754089117.correct : P13605299934754089117.Spec := by
  intro n
  simp only [A045928, Nat.add_sub_cancel, A045928.P13605299934754089117.a, A045928.P6418909097058057068.a, A028391, A028391.P17198271841435315725.a, A130819, A130819.P5334675930455341645.a, A001650, A001650.P4146515097473183330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045928

/-! ## A045928.P4271447967139487400

`A005408(A028391(n))+n`
-/

namespace A045928.P4271447967139487400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A028391 n).toNat + (n : ℤ)

end

end A045928.P4271447967139487400

namespace A045928

/-- `A005408(A028391(n))+n` -/
def P4271447967139487400.Spec : Prop :=
  ∀ n, P4271447967139487400.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P11026656506284013163

`A016813(n)-A112594(n)`
-/

namespace A045928.P11026656506284013163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A112594 n

end

end A045928.P11026656506284013163

namespace A045928

/-- `A016813(n)-A112594(n)` -/
def P11026656506284013163.Spec : Prop :=
  ∀ n, P11026656506284013163.a n = A045928 (n + 1)

theorem P11026656506284013163.correct : P11026656506284013163.Spec := by
  intro n
  simp only [A045928, Nat.add_sub_cancel, A045928.P11026656506284013163.a, A045928.P6418909097058057068.a, A016813, A016813.P15626904835145642280.a, A028391, A028391.P17198271841435315725.a, A112594, A112594.P8927385987181911973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045928

/-! ## A045928.P4866483796388708905

`A016789(n)-A001650(n+1)`
-/

namespace A045928.P4866483796388708905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A001650 (n + 1)

end

end A045928.P4866483796388708905

namespace A045928

/-- `A016789(n)-A001650(n+1)` -/
def P4866483796388708905.Spec : Prop :=
  ∀ n, P4866483796388708905.a n = A045928 (n + 1)

theorem P4866483796388708905.correct : P4866483796388708905.Spec := by
  intro n
  simp only [A045928, Nat.add_sub_cancel, A045928.P4866483796388708905.a, A045928.P6418909097058057068.a, A001650, A001650.P4146515097473183330.a, A016789, A016789.P8277564872725303677.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045928

/-! ## A045928.P8664640513585828666

`A016777(n)-2*A000196(n)`
-/

namespace A045928.P8664640513585828666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - 2 * A000196 n

end

end A045928.P8664640513585828666

namespace A045928

/-- `A016777(n)-2*A000196(n)` -/
def P8664640513585828666.Spec : Prop :=
  ∀ n, P8664640513585828666.a n = A045928 (n + 1)

theorem P8664640513585828666.correct : P8664640513585828666.Spec := by
  intro n
  simp only [A045928, Nat.add_sub_cancel, A045928.P8664640513585828666.a, A045928.P6418909097058057068.a, A000196, A000196.P15434771586934192083.a, A016777, A016777.P9931792138852554157.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045928

/-! ## A045928.P17707745812216655670

`A005408(n-A000196(n))+n`
-/

namespace A045928.P17707745812216655670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n : ℤ) - A000196 n).toNat + (n : ℤ)

end

end A045928.P17707745812216655670

namespace A045928

/-- `A005408(n-A000196(n))+n` -/
def P17707745812216655670.Spec : Prop :=
  ∀ n, P17707745812216655670.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P1615322824194577281

`A028391(n)+∑[2-A010052(n)]`
-/

namespace A045928.P1615322824194577281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045928.P1615322824194577281

namespace A045928

/-- `A028391(n)+∑[2-A010052(n)]` -/
def P1615322824194577281.Spec : Prop :=
  ∀ n, P1615322824194577281.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P10926818110040310775

`∑[A169695(n)]+n-A000196(n)`
-/

namespace A045928.P10926818110040310775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A000196 n)

end

end A045928.P10926818110040310775

namespace A045928

/-- `∑[A169695(n)]+n-A000196(n)` -/
def P10926818110040310775.Spec : Prop :=
  ∀ n, P10926818110040310775.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P10389815017607332805

`A008585(n)+2-A001650(n+1)`
-/

namespace A045928.P10389815017607332805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (2 - A001650 (n + 1))

end

end A045928.P10389815017607332805

namespace A045928

/-- `A008585(n)+2-A001650(n+1)` -/
def P10389815017607332805.Spec : Prop :=
  ∀ n, P10389815017607332805.a n = A045928 (n + 1)

theorem P10389815017607332805.correct : P10389815017607332805.Spec := by
  intro n
  simp only [A045928, Nat.add_sub_cancel, A045928.P10389815017607332805.a, A045928.P6418909097058057068.a, A001650, A001650.P4146515097473183330.a, A008585, A008585.P13732812384316341435.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045928

/-! ## A045928.P13444213529565579532

`A123663(n+1)+A118175(n)+n`
-/

namespace A045928.P13444213529565579532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123663 (n + 1) + (A118175 n + (n : ℤ))

end

end A045928.P13444213529565579532

namespace A045928

/-- `A123663(n+1)+A118175(n)+n` -/
def P13444213529565579532.Spec : Prop :=
  ∀ n, P13444213529565579532.a n = A045928 (n + 1)

end A045928

/-! ## A045928.P440651871044900284

`A016777(n-A000196(n))+A000196(n)`
-/

namespace A045928.P440651871044900284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ((n : ℤ) - A000196 n).toNat + A000196 n

end

end A045928.P440651871044900284

namespace A045928

/-- `A016777(n-A000196(n))+A000196(n)` -/
def P440651871044900284.Spec : Prop :=
  ∀ n, P440651871044900284.a n = A045928 (n + 1)

end A045928

/-!
# A045929: Generalized Connell sequence C_{5,3}.

The programs for A045929, the canonical program `A045929.P3688533980739290269` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045929 has offset 1).

The definition of A045929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045929.P3688533980739290269

`5*(n+1)-4*floor((7+sqrt(24*(n+1)-23))/6)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045929

/-- `5*(n+1)-4*floor((7+sqrt(24*(n+1)-23))/6)` -/
def P3688533980739290269.Spec : Prop :=
  ∀ n, P3688533980739290269.a n = A045929 (n + 1)

theorem P3688533980739290269.correct : P3688533980739290269.Spec := by
  intro n
  simp only [A045929, Nat.add_sub_cancel]

end A045929

/-! ## A045929.P17611057290274438215

`∑[5^(1-char[A000326(n)])]`
-/

namespace A045929.P17611057290274438215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045929.P17611057290274438215

namespace A045929

/-- `∑[5^(1-char[A000326(n)])]` -/
def P17611057290274438215.Spec : Prop :=
  ∀ n, P17611057290274438215.a n = (A045929 (n + 1) : ℚ)

end A045929

/-! ## A045929.P209432290813101710

`A000027(A122798(n+1)+n)`
-/

namespace A045929.P209432290813101710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A122798 (n + 1) + (n : ℤ)).toNat

end

end A045929.P209432290813101710

namespace A045929

/-- `A000027(A122798(n+1)+n)` -/
def P209432290813101710.Spec : Prop :=
  ∀ n, P209432290813101710.a n = A045929 (n + 1)

end A045929

/-! ## A045929.P6825694275688970503

`∑[5%A033431(A299041(n+1))]`
-/

namespace A045929.P6825694275688970503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A033431 (A299041 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045929.P6825694275688970503

namespace A045929

/-- `∑[5%A033431(A299041(n+1))]` -/
def P6825694275688970503.Spec : Prop :=
  ∀ n, P6825694275688970503.a n = A045929 (n + 1)

end A045929

/-!
# A045930: The generalized Connell sequence C_{3,5}.

The programs for A045930, the canonical program `A045930.P14124475909701730393` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045930 has offset 1).

The definition of A045930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045930.P14124475909701730393

`3*(n+1)-2*floor((13+sqrt(40*(n+1)-31))/10)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045930

/-- `3*(n+1)-2*floor((13+sqrt(40*(n+1)-31))/10)` -/
def P14124475909701730393.Spec : Prop :=
  ∀ n, P14124475909701730393.a n = A045930 (n + 1)

theorem P14124475909701730393.correct : P14124475909701730393.Spec := by
  intro n
  simp only [A045930, Nat.add_sub_cancel]

end A045930

/-! ## A045930.P2552010819728245188

`A000027(A122799(n+1)+n)`
-/

namespace A045930.P2552010819728245188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A122799 (n + 1) + (n : ℤ)).toNat

end

end A045930.P2552010819728245188

namespace A045930

/-- `A000027(A122799(n+1)+n)` -/
def P2552010819728245188.Spec : Prop :=
  ∀ n, P2552010819728245188.a n = A045930 (n + 1)

end A045930

/-! ## A045930.P15169157205476602611

`A028310(A122799(n+1)+n)`
-/

namespace A045930.P15169157205476602611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A122799 (n + 1) + (n : ℤ)).toNat

end

end A045930.P15169157205476602611

namespace A045930

/-- `A028310(A122799(n+1)+n)` -/
def P15169157205476602611.Spec : Prop :=
  ∀ n, P15169157205476602611.a n = A045930 (n + 1)

end A045930

/-! ## A045930.P11000691207481198078

`∑[A176040(A332015(n))]`
-/

namespace A045930.P11000691207481198078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A332015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045930.P11000691207481198078

namespace A045930

/-- `∑[A176040(A332015(n))]` -/
def P11000691207481198078.Spec : Prop :=
  ∀ n, P11000691207481198078.a n = A045930 (n + 1)

end A045930

/-! ## A045930.P6839554578592511303

`∑[A010684(A332015(n)+1)]`
-/

namespace A045930.P6839554578592511303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A332015 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045930.P6839554578592511303

namespace A045930

/-- `∑[A010684(A332015(n)+1)]` -/
def P6839554578592511303.Spec : Prop :=
  ∀ n, P6839554578592511303.a n = A045930 (n + 1)

end A045930

/-! ## A045930.P17789889178048744288

`∑[A334464(A332015(n)+10)]`
-/

namespace A045930.P17789889178048744288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334464 (A332015 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045930.P17789889178048744288

namespace A045930

/-- `∑[A334464(A332015(n)+10)]` -/
def P17789889178048744288.Spec : Prop :=
  ∀ n, P17789889178048744288.a n = A045930 (n + 1)

end A045930

/-! ## A045930.P6275889868688935006

`∑[A010684((1-A332015(n))²)]`
-/

namespace A045930.P6275889868688935006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 ((1 - A332015 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045930.P6275889868688935006

namespace A045930

/-- `∑[A010684((1-A332015(n))²)]` -/
def P6275889868688935006.Spec : Prop :=
  ∀ n, P6275889868688935006.a n = A045930 (n + 1)

end A045930

/-!
# A045931: Number of partitions of n with equal number of even and odd parts.

The programs for A045931, there is no canonical definition to state claims against.
-/

/-! ## A045931.P12984805318175836933

`A000041(n)-A171967(n)`
-/

namespace A045931.P12984805318175836933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A171967 n

end

end A045931.P12984805318175836933

/-! ## A045931.P1528721240397365212

`A171966(n)-A108949(n)`
-/

namespace A045931.P1528721240397365212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171966 n - A108949 n

end

end A045931.P1528721240397365212

/-! ## A045931.P2685669083375690195

`A130780(n)+A171966(n)-A000041(n)`
-/

namespace A045931.P2685669083375690195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n + A171966 n - A000041 n

end

end A045931.P2685669083375690195

/-! ## A045931.P17700201741171579423

`∑[A002865(n)]-A171967(n)`
-/

namespace A045931.P17700201741171579423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171967 n

end

end A045931.P17700201741171579423

/-! ## A045931.P1880699005840624137

`A018783(n)+A000837(n)-A171967(n)`
-/

namespace A045931.P1880699005840624137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n - A171967 n

end

end A045931.P1880699005840624137

/-! ## A045931.P14932235622836544453

`A047967(n)+A000009(n)-A171967(n)`
-/

namespace A045931.P14932235622836544453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n - A171967 n

end

end A045931.P14932235622836544453

/-! ## A045931.P6000944396339105248

`A108949(n)+A130780(n)-A171967(n)`
-/

namespace A045931.P6000944396339105248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108949 n + (A130780 n - A171967 n)

end

end A045931.P6000944396339105248

/-! ## A045931.P13795909872262653004

`A130780(n)-(A338860(n)+A108949(n))`
-/

namespace A045931.P13795909872262653004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n - (A338860 n + A108949 n)

end

end A045931.P13795909872262653004

/-! ## A045931.P1509985654535712403

`A239835(n)-A239833(n)`
-/

namespace A045931.P1509985654535712403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239835 n - A239833 n

end

end A045931.P1509985654535712403

/-! ## A045931.P11209230545234917773

`A239835(n)-(A239832(n+1)+A239832(n))`
-/

namespace A045931.P11209230545234917773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239835 n - (A239832 (n + 1) + A239832 n)

end

end A045931.P11209230545234917773

/-!
# A045932: Numbers n such that n through n+3 are divisible by the same number of distinct primes.

The programs for A045932, the canonical program `A045932.P17507093528048832173` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045932 has offset 1).

The definition of A045932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3037 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045932.P17507093528048832173

`A006073(eq[1, Δ[A006073(n+1)]]+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045932

/-- `A006073(eq[1, Δ[A006073(n+1)]]+1)` -/
def P17507093528048832173.Spec : Prop :=
  ∀ n, P17507093528048832173.a n = A045932 (n + 1)

theorem P17507093528048832173.correct : P17507093528048832173.Spec := by
  intro n
  simp only [A045932, Nat.add_sub_cancel]

end A045932

/-! ## A045932.P12251178823799145787

`A006073(eq[1, A006073(n+2)-A006073(n+1)]+1)`
-/

namespace A045932.P12251178823799145787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 2) - A006073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045932.P12251178823799145787

namespace A045932

/-- `A006073(eq[1, A006073(n+2)-A006073(n+1)]+1)` -/
def P12251178823799145787.Spec : Prop :=
  ∀ n, P12251178823799145787.a n = A045932 (n + 1)

theorem P12251178823799145787.correct : P12251178823799145787.Spec := by
  intro n
  simp only [A045932, Nat.add_sub_cancel, A045932.P12251178823799145787.f1, A045932.P12251178823799145787.f2, A045932.P12251178823799145787.a, A045932.P17507093528048832173.f1, A045932.P17507093528048832173.f3, A045932.P17507093528048832173.f2, A045932.P17507093528048832173.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A045932

/-! ## A045932.P3185910153037245169

`∩[A006073(n+1), A101932(n+1)]-1`
-/

namespace A045932.P3185910153037245169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A045932.P3185910153037245169

namespace A045932

/-- `∩[A006073(n+1), A101932(n+1)]-1` -/
def P3185910153037245169.Spec : Prop :=
  ∀ n, P3185910153037245169.a n = A045932 (n + 1)

end A045932

/-! ## A045932.P11388116758558134391

`∩[A006049(n+1), A006073(n+1)-1]`
-/

namespace A045932.P11388116758558134391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045932.P11388116758558134391

namespace A045932

/-- `∩[A006049(n+1), A006073(n+1)-1]` -/
def P11388116758558134391.Spec : Prop :=
  ∀ n, (P11388116758558134391.a n : ℤ) = A045932 (n + 1)

end A045932

/-! ## A045932.P18259902796262990036

`∩[A006073(n+1), A063465(n+1)]`
-/

namespace A045932.P18259902796262990036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045932.P18259902796262990036

namespace A045932

/-- `∩[A006073(n+1), A063465(n+1)]` -/
def P18259902796262990036.Spec : Prop :=
  ∀ n, (P18259902796262990036.a n : ℤ) = A045932 (n + 1)

end A045932

/-! ## A045932.P14392555228445634884

`∩[A006073(n+1)-1, A063464(n+1)]`
-/

namespace A045932.P14392555228445634884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045932.P14392555228445634884

namespace A045932

/-- `∩[A006073(n+1)-1, A063464(n+1)]` -/
def P14392555228445634884.Spec : Prop :=
  ∀ n, (P14392555228445634884.a n : ℤ) = A045932 (n + 1)

end A045932

/-! ## A045932.P17123991768843816023

`∩[A006049(n+1), A023443(A006073(n+1))]`
-/

namespace A045932.P17123991768843816023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A006073 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045932.P17123991768843816023

namespace A045932

/-- `∩[A006049(n+1), A023443(A006073(n+1))]` -/
def P17123991768843816023.Spec : Prop :=
  ∀ n, (P17123991768843816023.a n : ℤ) = A045932 (n + 1)

end A045932

/-! ## A045932.P3158744629023232078

`A023443(∩[A006073(n+1), A101932(n+1)])`
-/

namespace A045932.P3158744629023232078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045932.P3158744629023232078

namespace A045932

/-- `A023443(∩[A006073(n+1), A101932(n+1)])` -/
def P3158744629023232078.Spec : Prop :=
  ∀ n, P3158744629023232078.a n = A045932 (n + 1)

end A045932

/-! ## A045932.P10654083771622948021

`A023443(∩[A006073(n+1)+1, A006073(n+1)])`
-/

namespace A045932.P10654083771622948021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045932.P10654083771622948021

namespace A045932

/-- `A023443(∩[A006073(n+1)+1, A006073(n+1)])` -/
def P10654083771622948021.Spec : Prop :=
  ∀ n, P10654083771622948021.a n = A045932 (n + 1)

end A045932

/-! ## A045932.P16025935080929320376

`A289207(∩[A101932(n+1)+1, A101932(n+1)])`
-/

namespace A045932.P16025935080929320376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045932.P16025935080929320376

namespace A045932

/-- `A289207(∩[A101932(n+1)+1, A101932(n+1)])` -/
def P16025935080929320376.Spec : Prop :=
  ∀ n, P16025935080929320376.a n = A045932 (n + 1)

end A045932

/-! ## A045932.P13128527119285756393

`A023443(∩[A101932(n+1)-1, A101932(n+1)])`
-/

namespace A045932.P13128527119285756393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045932.P13128527119285756393

namespace A045932

/-- `A023443(∩[A101932(n+1)-1, A101932(n+1)])` -/
def P13128527119285756393.Spec : Prop :=
  ∀ n, P13128527119285756393.a n = A045932 (n + 1)

end A045932

/-!
# A045933: Numbers n such that n through n+4 are divisible by the same number of distinct primes.

The programs for A045933, the canonical program `A045933.P13873207299260927009` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045933 has offset 1).

The definition of A045933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045933.P6403247220575408404

`A101294(n+1)-2`
-/

namespace A045933.P6403247220575408404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101294 (n + 1) - 2

end

end A045933.P6403247220575408404

namespace A045933

/-- `A101294(n+1)-2` -/
def P6403247220575408404.Spec : Prop :=
  ∀ n, P6403247220575408404.a n = A045933 (n + 1)

theorem P6403247220575408404.correct : P6403247220575408404.Spec := by
  intro n
  simp only [A045933, Nat.add_sub_cancel, A045933.P6403247220575408404.a, A045933.P13873207299260927009.f1, A045933.P13873207299260927009.f2, A045933.P13873207299260927009.a, A045932, A045932.P17507093528048832173.f1, A045932.P17507093528048832173.f3, A045932.P17507093528048832173.f2, A045932.P17507093528048832173.a, A101294, A101294.P5526318434462091228.a, A006073, A006073.P326677615052813534.f1, A006073.P326677615052813534.f3, A006073.P326677615052813534.f2, A006073.P326677615052813534.a, A006049, A006049.P14504587564879316839.f1, A006049.P14504587564879316839.f2, A006049.P14504587564879316839.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045933

/-! ## A045933.P3963842007695762589

`A327767(2*(n+1))+A101294(n+1)`
-/

namespace A045933.P3963842007695762589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (2 * (n + 1)) + A101294 (n + 1)

end

end A045933.P3963842007695762589

namespace A045933

/-- `A327767(2*(n+1))+A101294(n+1)` -/
def P3963842007695762589.Spec : Prop :=
  ∀ n, P3963842007695762589.a n = A045933 (n + 1)

end A045933

/-! ## A045933.P18430048014275969125

`A118824(A007310(n+1))+A101294(n+1)`
-/

namespace A045933.P18430048014275969125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A007310 (n + 1)).toNat + A101294 (n + 1)

end

end A045933.P18430048014275969125

namespace A045933

/-- `A118824(A007310(n+1))+A101294(n+1)` -/
def P18430048014275969125.Spec : Prop :=
  ∀ n, P18430048014275969125.a n = A045933 (n + 1)

end A045933

/-! ## A045933.P1375223548451967331

`A252749(Δ[A007310(n+1)])+A101294(n+1)`
-/

namespace A045933.P1375223548451967331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 (f1 (n + 1) - f1 n).toNat + A101294 (n + 1)

end

end A045933.P1375223548451967331

namespace A045933

/-- `A252749(Δ[A007310(n+1)])+A101294(n+1)` -/
def P1375223548451967331.Spec : Prop :=
  ∀ n, P1375223548451967331.a n = A045933 (n + 1)

end A045933

/-! ## A045933.P15881961053194074671

`∩[A045932(n+1)-1, A045932(n+1)]`
-/

namespace A045933.P15881961053194074671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045933.P15881961053194074671

namespace A045933

/-- `∩[A045932(n+1)-1, A045932(n+1)]` -/
def P15881961053194074671.Spec : Prop :=
  ∀ n, (P15881961053194074671.a n : ℤ) = A045933 (n + 1)

end A045933

/-! ## A045933.P13873207299260927009

`A045932(eq[1, A045932(n+2)-A045932(n+1)]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045933

/-- `A045932(eq[1, A045932(n+2)-A045932(n+1)]+1)` -/
def P13873207299260927009.Spec : Prop :=
  ∀ n, P13873207299260927009.a n = A045933 (n + 1)

theorem P13873207299260927009.correct : P13873207299260927009.Spec := by
  intro n
  simp only [A045933, Nat.add_sub_cancel]

end A045933

/-! ## A045933.P13543554913319136841

`A118824(A002144(n+1))+A101294(n+1)`
-/

namespace A045933.P13543554913319136841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A002144 (n + 1)).toNat + A101294 (n + 1)

end

end A045933.P13543554913319136841

namespace A045933

/-- `A118824(A002144(n+1))+A101294(n+1)` -/
def P13543554913319136841.Spec : Prop :=
  ∀ n, P13543554913319136841.a n = A045933 (n + 1)

end A045933

/-! ## A045933.P12641382822492774935

`∩[A006073(n+1)-2, A006073(n+1)]`
-/

namespace A045933.P12641382822492774935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045933.P12641382822492774935

namespace A045933

/-- `∩[A006073(n+1)-2, A006073(n+1)]` -/
def P12641382822492774935.Spec : Prop :=
  ∀ n, (P12641382822492774935.a n : ℤ) = A045933 (n + 1)

end A045933

/-! ## A045933.P7356444011742920722

`A118824(A217252(n+1))+A101294(n+1)`
-/

namespace A045933.P7356444011742920722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A217252 (n + 1)).toNat + A101294 (n + 1)

end

end A045933.P7356444011742920722

namespace A045933

/-- `A118824(A217252(n+1))+A101294(n+1)` -/
def P7356444011742920722.Spec : Prop :=
  ∀ n, P7356444011742920722.a n = A045933 (n + 1)

end A045933

/-! ## A045933.P6922389547672375241

`A023444(A101294(n+1))`
-/

namespace A045933.P6922389547672375241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A101294 (n + 1)).toNat

end

end A045933.P6922389547672375241

namespace A045933

/-- `A023444(A101294(n+1))` -/
def P6922389547672375241.Spec : Prop :=
  ∀ n, P6922389547672375241.a n = A045933 (n + 1)

end A045933

/-!
# A045934: Numbers n such that n through n+5 have the same number of distinct prime factors.

The programs for A045934, the canonical program `A045934.P16041711807266308001` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045934 has offset 1).

The definition of A045934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045934.P16041711807266308001

`∩[A045933(n+1)-1, A045933(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045934

/-- `∩[A045933(n+1)-1, A045933(n+1)]` -/
def P16041711807266308001.Spec : Prop :=
  ∀ n, (P16041711807266308001.a n : ℤ) = A045934 (n + 1)

theorem P16041711807266308001.correct : P16041711807266308001.Spec := by
  intro n
  simp only [A045934, Nat.add_sub_cancel]

end A045934

/-! ## A045934.P14962319651633295924

`∩[A045932(n+1)-2, A045932(n+1)]`
-/

namespace A045934.P14962319651633295924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045934.P14962319651633295924

namespace A045934

/-- `∩[A045932(n+1)-2, A045932(n+1)]` -/
def P14962319651633295924.Spec : Prop :=
  ∀ n, (P14962319651633295924.a n : ℤ) = A045934 (n + 1)

end A045934

/-! ## A045934.P1081962362525317944

`∩[A045932(n+1), A023444(A045932(n+1))]`
-/

namespace A045934.P1081962362525317944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A045932 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045934.P1081962362525317944

namespace A045934

/-- `∩[A045932(n+1), A023444(A045932(n+1))]` -/
def P1081962362525317944.Spec : Prop :=
  ∀ n, (P1081962362525317944.a n : ℤ) = A045934 (n + 1)

end A045934

/-! ## A045934.P1699261692805075652

`∩[A045933(n+1), A023443(A045933(n+1))]`
-/

namespace A045934.P1699261692805075652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A045933 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045934.P1699261692805075652

namespace A045934

/-- `∩[A045933(n+1), A023443(A045933(n+1))]` -/
def P1699261692805075652.Spec : Prop :=
  ∀ n, (P1699261692805075652.a n : ℤ) = A045934 (n + 1)

end A045934

/-! ## A045934.P4034899179953388425

`∩[A101294(n+1), A023443(A101294(n+1))]-2`
-/

namespace A045934.P4034899179953388425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A101294 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A045934.P4034899179953388425

namespace A045934

/-- `∩[A101294(n+1), A023443(A101294(n+1))]-2` -/
def P4034899179953388425.Spec : Prop :=
  ∀ n, P4034899179953388425.a n = A045934 (n + 1)

end A045934

/-!
# A045935: Numbers n such that n through n+6 are divisible by the same number of distinct primes.

The programs for A045935, the canonical program `A045935.P15068729089152290012` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045935 has offset 1).

The definition of A045935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045935.P1843902544236580116

`∩[A045934(n+1)-1, A045934(n+1)]`
-/

namespace A045935.P1843902544236580116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045935.P1843902544236580116

namespace A045935

/-- `∩[A045934(n+1)-1, A045934(n+1)]` -/
def P1843902544236580116.Spec : Prop :=
  ∀ n, (P1843902544236580116.a n : ℤ) = A045935 (n + 1)

end A045935

/-! ## A045935.P15068729089152290012

`A045934(eq[1, A045934(n+2)-A045934(n+1)]+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045935

/-- `A045934(eq[1, A045934(n+2)-A045934(n+1)]+1)` -/
def P15068729089152290012.Spec : Prop :=
  ∀ n, P15068729089152290012.a n = A045935 (n + 1)

theorem P15068729089152290012.correct : P15068729089152290012.Spec := by
  intro n
  simp only [A045935, Nat.add_sub_cancel]

end A045935

/-! ## A045935.P15512945070147035190

`∩[A045933(n+1)-2, A045933(n+1)]`
-/

namespace A045935.P15512945070147035190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045935.P15512945070147035190

namespace A045935

/-- `∩[A045933(n+1)-2, A045933(n+1)]` -/
def P15512945070147035190.Spec : Prop :=
  ∀ n, (P15512945070147035190.a n : ℤ) = A045935 (n + 1)

end A045935

/-! ## A045935.P1617513130414680966

`A101936(n+1)-3`
-/

namespace A045935.P1617513130414680966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101936 (n + 1) - 3

end

end A045935.P1617513130414680966

namespace A045935

/-- `A101936(n+1)-3` -/
def P1617513130414680966.Spec : Prop :=
  ∀ n, P1617513130414680966.a n = A045935 (n + 1)

theorem P1617513130414680966.correct : P1617513130414680966.Spec := by
  intro n
  simp only [A045935, Nat.add_sub_cancel, A045935.P1617513130414680966.a, A045935.P15068729089152290012.f1, A045935.P15068729089152290012.f2, A045935.P15068729089152290012.a, A045934, A045934.P16041711807266308001.f1, A045934.P16041711807266308001.f2, A045934.P16041711807266308001.a, A101936, A101936.P12055823515065416503.a, A045933, A045933.P13873207299260927009.f1, A045933.P13873207299260927009.f2, A045933.P13873207299260927009.a, A045932, A045932.P17507093528048832173.f1, A045932.P17507093528048832173.f3, A045932.P17507093528048832173.f2, A045932.P17507093528048832173.a, A006073, A006073.P326677615052813534.f1, A006073.P326677615052813534.f3, A006073.P326677615052813534.f2, A006073.P326677615052813534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045935

/-! ## A045935.P9842735427261372458

`A115634(A100368(n+1))+A101936(n+1)`
-/

namespace A045935.P9842735427261372458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 (A100368 (n + 1)).toNat + A101936 (n + 1)

end

end A045935.P9842735427261372458

namespace A045935

/-- `A115634(A100368(n+1))+A101936(n+1)` -/
def P9842735427261372458.Spec : Prop :=
  ∀ n, P9842735427261372458.a n = A045935 (n + 1)

end A045935

/-! ## A045935.P17415531740249989777

`A115634(A317440(n+1))+A101936(n+1)`
-/

namespace A045935.P17415531740249989777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 (A317440 (n + 1)).toNat + A101936 (n + 1)

end

end A045935.P17415531740249989777

namespace A045935

/-- `A115634(A317440(n+1))+A101936(n+1)` -/
def P17415531740249989777.Spec : Prop :=
  ∀ n, P17415531740249989777.a n = A045935 (n + 1)

end A045935

/-! ## A045935.P4820674788504000396

`record[A101936(A263274(n))-3]`
-/

namespace A045935.P4820674788504000396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101936 (A263274 n).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045935.P4820674788504000396

namespace A045935

/-- `record[A101936(A263274(n))-3]` -/
def P4820674788504000396.Spec : Prop :=
  ∀ n, P4820674788504000396.a n = A045935 (n + 1)

end A045935

/-! ## A045935.P13358181371940571542

`A115634(A239050(n+1))+A101936(n+1)`
-/

namespace A045935.P13358181371940571542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 (A239050 (n + 1)).toNat + A101936 (n + 1)

end

end A045935.P13358181371940571542

namespace A045935

/-- `A115634(A239050(n+1))+A101936(n+1)` -/
def P13358181371940571542.Spec : Prop :=
  ∀ n, P13358181371940571542.a n = A045935 (n + 1)

end A045935

/-! ## A045935.P15788760423829686213

`A115634(2*(n+1)²)+A101936(n+1)`
-/

namespace A045935.P15788760423829686213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 (2 * (n + 1) ^ 2) + A101936 (n + 1)

end

end A045935.P15788760423829686213

namespace A045935

/-- `A115634(2*(n+1)²)+A101936(n+1)` -/
def P15788760423829686213.Spec : Prop :=
  ∀ n, P15788760423829686213.a n = A045935 (n + 1)

end A045935

/-!
# A045936: Numbers n such that n through n+7 are divisible by the same number of distinct primes.

The programs for A045936, the canonical program `A045936.P1176020740706065092` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045936 has offset 1).

The definition of A045936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045936.P8648448575301539664

`∩[A045935(n+1)-1, A045935(n+1)]`
-/

namespace A045936.P8648448575301539664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045936.P8648448575301539664

namespace A045936

/-- `∩[A045935(n+1)-1, A045935(n+1)]` -/
def P8648448575301539664.Spec : Prop :=
  ∀ n, (P8648448575301539664.a n : ℤ) = A045936 (n + 1)

end A045936

/-! ## A045936.P1176020740706065092

`A045935(eq[1, A045935(n+2)-A045935(n+1)]+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A045936

/-- `A045935(eq[1, A045935(n+2)-A045935(n+1)]+1)` -/
def P1176020740706065092.Spec : Prop :=
  ∀ n, P1176020740706065092.a n = A045936 (n + 1)

theorem P1176020740706065092.correct : P1176020740706065092.Spec := by
  intro n
  simp only [A045936, Nat.add_sub_cancel]

end A045936

/-! ## A045936.P7285179454136141640

`A045935(eq[1, A045935(n+2)%A045935(n+1)]+1)`
-/

namespace A045936.P7285179454136141640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045935 (n + 2)) (A045935 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045936.P7285179454136141640

namespace A045936

/-- `A045935(eq[1, A045935(n+2)%A045935(n+1)]+1)` -/
def P7285179454136141640.Spec : Prop :=
  ∀ n, P7285179454136141640.a n = A045936 (n + 1)

end A045936

/-! ## A045936.P728711661909187911

`∩[A045934(n+1)-2, A045934(n+1)]`
-/

namespace A045936.P728711661909187911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045936.P728711661909187911

namespace A045936

/-- `∩[A045934(n+1)-2, A045934(n+1)]` -/
def P728711661909187911.Spec : Prop :=
  ∀ n, (P728711661909187911.a n : ℤ) = A045936 (n + 1)

end A045936

/-!
# A045937: Numbers n such that n through n+8 are divisible by the same number of distinct primes.

The programs for A045937, the canonical program `A045937.P4646948696810510853` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045937 has offset 1).

The definition of A045937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045937.P15398937468876219866

`∩[A045936(n+1)-1, A045936(n+1)]`
-/

namespace A045937.P15398937468876219866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045936 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045937.P15398937468876219866

namespace A045937

/-- `∩[A045936(n+1)-1, A045936(n+1)]` -/
def P15398937468876219866.Spec : Prop :=
  ∀ n, (P15398937468876219866.a n : ℤ) = A045937 (n + 1)

end A045937

/-! ## A045937.P4646948696810510853

`A045936(eq[1, A045936(n+2)-A045936(n+1)]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045937

/-- `A045936(eq[1, A045936(n+2)-A045936(n+1)]+1)` -/
def P4646948696810510853.Spec : Prop :=
  ∀ n, P4646948696810510853.a n = A045937 (n + 1)

theorem P4646948696810510853.correct : P4646948696810510853.Spec := by
  intro n
  simp only [A045937, Nat.add_sub_cancel]

end A045937

/-! ## A045937.P2726479539787183454

`∩[A045935(n+1)-2, A045935(n+1)]`
-/

namespace A045937.P2726479539787183454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045937.P2726479539787183454

namespace A045937

/-- `∩[A045935(n+1)-2, A045935(n+1)]` -/
def P2726479539787183454.Spec : Prop :=
  ∀ n, (P2726479539787183454.a n : ℤ) = A045937 (n + 1)

end A045937

/-! ## A045937.P1315495244306964426

`∩[A045934(n+2)-3, A045934(n+2)]`
-/

namespace A045937.P1315495244306964426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 2) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045937.P1315495244306964426

namespace A045937

/-- `∩[A045934(n+2)-3, A045934(n+2)]` -/
def P1315495244306964426.Spec : Prop :=
  ∀ n, (P1315495244306964426.a n : ℤ) = A045937 (n + 1)

end A045937

/-!
# A045938: Numbers n such that n through n+9 are divisible by the same number of distinct primes.

The programs for A045938, the canonical program `A045938.P13595266060799870594` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045938 has offset 1).

The definition of A045938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045938.P13595266060799870594

`A045937(eq[1, Δ[A045937(n+1)]]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045938

/-- `A045937(eq[1, Δ[A045937(n+1)]]+1)` -/
def P13595266060799870594.Spec : Prop :=
  ∀ n, P13595266060799870594.a n = A045938 (n + 1)

theorem P13595266060799870594.correct : P13595266060799870594.Spec := by
  intro n
  simp only [A045938, Nat.add_sub_cancel]

end A045938

/-! ## A045938.P15280460894730007676

`A045937(eq[1, A045937(n+2)-A045937(n+1)]+1)`
-/

namespace A045938.P15280460894730007676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045937 (n + 2) - A045937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045938.P15280460894730007676

namespace A045938

/-- `A045937(eq[1, A045937(n+2)-A045937(n+1)]+1)` -/
def P15280460894730007676.Spec : Prop :=
  ∀ n, P15280460894730007676.a n = A045938 (n + 1)

theorem P15280460894730007676.correct : P15280460894730007676.Spec := by
  intro n
  simp only [A045938, Nat.add_sub_cancel, A045938.P15280460894730007676.f1, A045938.P15280460894730007676.f2, A045938.P15280460894730007676.a, A045938.P13595266060799870594.f1, A045938.P13595266060799870594.f3, A045938.P13595266060799870594.f2, A045938.P13595266060799870594.a, A045937, A045937.P4646948696810510853.f1, A045937.P4646948696810510853.f2, A045937.P4646948696810510853.a, A045936, A045936.P1176020740706065092.f1, A045936.P1176020740706065092.f2, A045936.P1176020740706065092.a, A045935, A045935.P15068729089152290012.f1, A045935.P15068729089152290012.f2, A045935.P15068729089152290012.a, A045934, A045934.P16041711807266308001.f1, A045934.P16041711807266308001.f2, A045934.P16041711807266308001.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045938

/-! ## A045938.P11861780731918632180

`∩[A045936(n+1)-2, A045936(n+1)]`
-/

namespace A045938.P11861780731918632180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045936 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045938.P11861780731918632180

namespace A045938

/-- `∩[A045936(n+1)-2, A045936(n+1)]` -/
def P11861780731918632180.Spec : Prop :=
  ∀ n, (P11861780731918632180.a n : ℤ) = A045938 (n + 1)

end A045938

/-!
# A045939: Numbers m such that the factorizations of m..m+2 have the same number of primes (including multiplicities).

The programs for A045939, there is no canonical definition to state claims against.
-/

/-! ## A045939.P16291722989906603496

`A278311(n+1)-1`
-/

namespace A045939.P16291722989906603496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1) - 1

end

end A045939.P16291722989906603496

/-! ## A045939.P8207689332689038429

`A321804(gcd(n+1, n²))+A278311(n+1)`
-/

namespace A045939.P8207689332689038429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.gcd (n + 1) (n ^ 2)) + A278311 (n + 1)

end

end A045939.P8207689332689038429

/-! ## A045939.P14361848940067946386

`abs(A278311(n+1)+A008683(A007918(n)))`
-/

namespace A045939.P14361848940067946386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A278311 (n + 1) + A008683 (A007918 n).toNat|

end

end A045939.P14361848940067946386

/-! ## A045939.P9172556013337977227

`A321804(A000005(2*n+5))+A278311(n+1)`
-/

namespace A045939.P9172556013337977227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000005 (2 * n + 5)).toNat + A278311 (n + 1)

end

end A045939.P9172556013337977227

/-! ## A045939.P16496548676570188174

`∩[A045920(n+1)-1, A045920(n+1)]`
-/

namespace A045939.P16496548676570188174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045939.P16496548676570188174

/-! ## A045939.P7668263498911245227

`∩[A213063(n+1), A278291(n+1)]-1`
-/

namespace A045939.P7668263498911245227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A045939.P7668263498911245227

/-! ## A045939.P1621271695242285576

`A045920(eq[1, A045920(n+2)-A045920(n+1)]+1)`
-/

namespace A045939.P1621271695242285576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 2) - A045920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045939.P1621271695242285576

/-! ## A045939.P10166378465278616932

`∩[A278291(n+1), A280382(n+1)]-1`
-/

namespace A045939.P10166378465278616932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A045939.P10166378465278616932

/-! ## A045939.P17570461674475964664

`lt[1, A077655(n+1)]+1`
-/

namespace A045939.P17570461674475964664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045939.P17570461674475964664

/-! ## A045939.P17481871085790259835

`record[A273943(A328359(n+2))-1]`
-/

namespace A045939.P17481871085790259835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A328359 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045939.P17481871085790259835

/-! ## A045939.P3541960247558688962

`A023443(A278311(n+1))`
-/

namespace A045939.P3541960247558688962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278311 (n + 1)).toNat

end

end A045939.P3541960247558688962

/-! ## A045939.P7073808406422652054

`lt[1, A077655(A028310(n))]`
-/

namespace A045939.P7073808406422652054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045939.P7073808406422652054

/-! ## A045939.P6945674132499462204

`A023444(A278311(n+1)+1)`
-/

namespace A045939.P6945674132499462204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A278311 (n + 1) + 1).toNat

end

end A045939.P6945674132499462204

/-! ## A045939.P9685868223768255057

`A289207(A278311(n+1)+1)`
-/

namespace A045939.P9685868223768255057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A278311 (n + 1) + 1).toNat

end

end A045939.P9685868223768255057

/-! ## A045939.P1317946895367849989

`A023446(A278311(n+1)+3)`
-/

namespace A045939.P1317946895367849989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A278311 (n + 1) + 3).toNat

end

end A045939.P1317946895367849989

/-! ## A045939.P8549915600732306594

`eq[n*A076191(n+1), A076191(A028310(n))]`
-/

namespace A045939.P8549915600732306594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045939.P8549915600732306594

/-!
# A045940: Numbers m such that the factorizations of m..m+3 have the same number of primes (including multiplicities).

The programs for A045940, there is no canonical definition to state claims against.
-/

/-! ## A045940.P689890600662411589

`∩[A045939(n+1)-1, A045939(n+1)]`
-/

namespace A045940.P689890600662411589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045940.P689890600662411589

/-! ## A045940.P17769641847039945596

`A045939(eq[1, A045939(n+2)-A045939(n+1)]+1)`
-/

namespace A045940.P17769641847039945596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 2) - A045939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045940.P17769641847039945596

/-! ## A045940.P328367531593105151

`∩[A045939(n+1), A023443(A045939(n+1))]`
-/

namespace A045940.P328367531593105151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A045939 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045940.P328367531593105151

/-! ## A045940.P2217739647298843799

`∩[A045939(n+1), A289207(A278311(n+1))]`
-/

namespace A045940.P2217739647298843799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A278311 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045940.P2217739647298843799

/-! ## A045940.P17548089979083931842

`∩[A289207(A045939(n+1)+1), A045939(n+1)]`
-/

namespace A045940.P17548089979083931842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A045939 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045940.P17548089979083931842

/-!
# A045941: Numbers m such that the factorizations of m..m+4 have the same number of primes (including multiplicities).

The programs for A045941, there is no canonical definition to state claims against.
-/

/-! ## A045941.P196720833909396456

`∩[A045940(n+1)-1, A045940(n+1)]`
-/

namespace A045941.P196720833909396456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045941.P196720833909396456

/-! ## A045941.P2023839185119168701

`A045940(eq[1, A045940(n+2)-A045940(n+1)]+1)`
-/

namespace A045941.P2023839185119168701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 2) - A045940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045941.P2023839185119168701

/-! ## A045941.P2606811853216999628

`∩[A045939(n+1)-2, A045939(n+1)]`
-/

namespace A045941.P2606811853216999628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045941.P2606811853216999628

/-! ## A045941.P14059170773461148593

`A005451(A268588(n+1))`
-/

namespace A045941.P14059170773461148593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A268588 (n + 1)).toNat

end

end A045941.P14059170773461148593

/-! ## A045941.P7426442267006482968

`A268588(A032555(n+1))`
-/

namespace A045941.P7426442267006482968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268588 (A032555 (n + 1)).toNat

end

end A045941.P7426442267006482968

/-!
# A045942: Numbers m such that the factorizations of m..m+5 have the same number of primes (including multiplicities).

The programs for A045942, there is no canonical definition to state claims against.
-/

/-! ## A045942.P15798735051155590403

`∩[A045941(n+1)-1, A045941(n+1)]`
-/

namespace A045942.P15798735051155590403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045942.P15798735051155590403

/-! ## A045942.P2862528579231913356

`A045941(eq[1, A045941(n+2)-A045941(n+1)]+1)`
-/

namespace A045942.P2862528579231913356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 2) - A045941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045942.P2862528579231913356

/-! ## A045942.P14906318047254073531

`∩[A045940(n+1)-2, A045940(n+1)]`
-/

namespace A045942.P14906318047254073531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045942.P14906318047254073531

/-! ## A045942.P5070764661705699006

`A375239(n+1)%A114065(A180230(n))`
-/

namespace A045942.P5070764661705699006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375239 (n + 1)) (A114065 (A180230 n).toNat)

end

end A045942.P5070764661705699006

/-! ## A045942.P16025400678760718604

`A375239(n+1)+A000007(A002496(n+1))`
-/

namespace A045942.P16025400678760718604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375239 (n + 1) + A000007 (A002496 (n + 1)).toNat

end

end A045942.P16025400678760718604

/-!
# A045943: Triangular matchstick numbers: a(n) = 3*n*(n+1)/2.

The programs for A045943, the canonical program `A045943.P17051650107671239344` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045943 has offset 0).

The definition of A045943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+1)/2` (program `A045943.P12567678411559241451`, by `A045943.P12567678411559241451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045943.P8115428644867310829

`3*C(n+1, 2)`
-/

namespace A045943.P8115428644867310829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 1) 2

end

end A045943.P8115428644867310829

namespace A045943

/-- `3*C(n+1, 2)` -/
def P8115428644867310829.Spec : Prop :=
  ∀ n, (P8115428644867310829.a n : ℤ) = A045943 n

end A045943

/-! ## A045943.P522984570839608852

`ogf(3x/(1-3x+3x^2-x^3))`
-/

namespace A045943.P522984570839608852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -3, 3, -1] n

end

end A045943.P522984570839608852

namespace A045943

/-- `ogf(3x/(1-3x+3x^2-x^3))` -/
def P522984570839608852.Spec : Prop :=
  ∀ n, P522984570839608852.a n = A045943 n

end A045943

/-! ## A045943.P12567678411559241451

`3*n*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045943.P12567678411559241451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n * (n + 1) : ℚ) / 2

end

end A045943.P12567678411559241451

namespace A045943

/-- `3*n*(n+1)/2` -/
def P12567678411559241451.Spec : Prop :=
  ∀ n, P12567678411559241451.a n = (A045943 n : ℚ)

theorem P12567678411559241451.correct : P12567678411559241451.Spec := by
  intro n
  induction n with
  | zero => simp [A045943, A045943.P12567678411559241451.a, A045943.P17051650107671239344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A045943, Nat.add_sub_cancel, A045943.P12567678411559241451.a, A045943.P17051650107671239344.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A045943

/-! ## A045943.P17051650107671239344

`a(n-1)+3*n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045943

/-- `a(n-1)+3*n` -/
def P17051650107671239344.Spec : Prop :=
  ∀ n, (P17051650107671239344.a n : ℤ) = A045943 n

theorem P17051650107671239344.correct : P17051650107671239344.Spec := by
  intro n
  simp only [A045943]

end A045943

/-! ## A045943.P13120382009050303222

`A005448(n+1)-1`
-/

namespace A045943.P13120382009050303222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) - 1

end

end A045943.P13120382009050303222

namespace A045943

/-- `A005448(n+1)-1` -/
def P13120382009050303222.Spec : Prop :=
  ∀ n, P13120382009050303222.a n = A045943 n

end A045943

/-! ## A045943.P15279966605128550298

`n+A000290(n)+A000217(n)`
-/

namespace A045943.P15279966605128550298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000290 n + A000217 n

end

end A045943.P15279966605128550298

namespace A045943

/-- `n+A000290(n)+A000217(n)` -/
def P15279966605128550298.Spec : Prop :=
  ∀ n, P15279966605128550298.a n = A045943 n

end A045943

/-! ## A045943.P8934970948148135203

`Δ[Δ[C(C(n, 2), 2)]]`
-/

namespace A045943.P8934970948148135203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045943.P8934970948148135203

namespace A045943

/-- `Δ[Δ[C(C(n, 2), 2)]]` -/
def P8934970948148135203.Spec : Prop :=
  ∀ n, P8934970948148135203.a n = A045943 n

end A045943

/-! ## A045943.P9368320145302013137

`lcm(3, ∑[n]+1)-3`
-/

namespace A045943.P9368320145302013137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) - 3

end

end A045943.P9368320145302013137

namespace A045943

/-- `lcm(3, ∑[n]+1)-3` -/
def P9368320145302013137.Spec : Prop :=
  ∀ n, P9368320145302013137.a n = A045943 n

end A045943

/-! ## A045943.P4556493825157805660

`∑[a(n-1)+3]` with `a(0)=0`
-/

namespace A045943.P4556493825157805660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045943.P4556493825157805660

namespace A045943

/-- `∑[a(n-1)+3]` -/
def P4556493825157805660.Spec : Prop :=
  ∀ n, (P4556493825157805660.a n : ℤ) = A045943 n

end A045943

/-! ## A045943.P12569646912997908996

`xor(1, Δ[n^3])/2`
-/

namespace A045943.P12569646912997908996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A045943.P12569646912997908996

namespace A045943

/-- `xor(1, Δ[n^3])/2` -/
def P12569646912997908996.Spec : Prop :=
  ∀ n, P12569646912997908996.a n = (A045943 n : ℚ)

end A045943

/-! ## A045943.P18294426569172348258

`3*(n²-C(n, 2))`
-/

namespace A045943.P18294426569172348258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))

end

end A045943.P18294426569172348258

namespace A045943

/-- `3*(n²-C(n, 2))` -/
def P18294426569172348258.Spec : Prop :=
  ∀ n, P18294426569172348258.a n = A045943 n

end A045943

/-! ## A045943.P13370056284868026606

`∑[n]/(2-cosh(log(3)))`
-/

namespace A045943.P13370056284868026606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (2 - Real.cosh (Real.log (3 : ℝ)))

end

end A045943.P13370056284868026606

namespace A045943

/-- `∑[n]/(2-cosh(log(3)))` -/
def P13370056284868026606.Spec : Prop :=
  ∀ n, P13370056284868026606.a n = (A045943 n : ℝ)

end A045943

/-! ## A045943.P2757308239014158669

`∑[n]/(sinh(log(3))-1)`
-/

namespace A045943.P2757308239014158669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (Real.sinh (Real.log (3 : ℝ)) - 1)

end

end A045943.P2757308239014158669

namespace A045943

/-- `∑[n]/(sinh(log(3))-1)` -/
def P2757308239014158669.Spec : Prop :=
  ∀ n, P2757308239014158669.a n = (A045943 n : ℝ)

end A045943

/-! ## A045943.P18230798171858973890

`∑[n]/tanh(log(2)/2)`
-/

namespace A045943.P18230798171858973890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tanh (Real.log (2 : ℝ) / 2)

end

end A045943.P18230798171858973890

namespace A045943

/-- `∑[n]/tanh(log(2)/2)` -/
def P18230798171858973890.Spec : Prop :=
  ∀ n, P18230798171858973890.a n = (A045943 n : ℝ)

end A045943

/-! ## A045943.P1827595404754401859

`∑[floor(3/acot(n))]-1`
-/

namespace A045943.P1827595404754401859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A045943.P1827595404754401859

namespace A045943

/-- `∑[floor(3/acot(n))]-1` -/
def P1827595404754401859.Spec : Prop :=
  ∀ n, P1827595404754401859.a n = A045943 n

end A045943

/-! ## A045943.P9830550261290091501

`∑[n]+lcm(n, n+1)`
-/

namespace A045943.P9830550261290091501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (n + 1)

end

end A045943.P9830550261290091501

namespace A045943

/-- `∑[n]+lcm(n, n+1)` -/
def P9830550261290091501.Spec : Prop :=
  ∀ n, (P9830550261290091501.a n : ℤ) = A045943 n

end A045943

/-! ## A045943.P1804616098594357520

`∑[n]/acos(cos(1/3))`
-/

namespace A045943.P1804616098594357520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.arccos (Real.cos ((1 : ℚ) / 3 : ℝ))

end

end A045943.P1804616098594357520

namespace A045943

/-- `∑[n]/acos(cos(1/3))` -/
def P1804616098594357520.Spec : Prop :=
  ∀ n, P1804616098594357520.a n = (A045943 n : ℝ)

end A045943

/-! ## A045943.P11232038722671210752

`∑[n]/asin(sin(1/3))`
-/

namespace A045943.P11232038722671210752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.arcsin (Real.sin ((1 : ℚ) / 3 : ℝ))

end

end A045943.P11232038722671210752

namespace A045943

/-- `∑[n]/asin(sin(1/3))` -/
def P11232038722671210752.Spec : Prop :=
  ∀ n, P11232038722671210752.a n = (A045943 n : ℝ)

end A045943

/-! ## A045943.P4849344978635961454

`∑[n]/atan(tan(1/3))`
-/

namespace A045943.P4849344978635961454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.arctan (Real.tan ((1 : ℚ) / 3 : ℝ))

end

end A045943.P4849344978635961454

namespace A045943

/-- `∑[n]/atan(tan(1/3))` -/
def P4849344978635961454.Spec : Prop :=
  ∀ n, P4849344978635961454.a n = (A045943 n : ℝ)

end A045943

/-! ## A045943.P10246607015517225330

`∑[n]/acot(cot(1/3))`
-/

namespace A045943.P10246607015517225330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (Real.cot ((1 : ℚ) / 3 : ℝ))

end

end A045943.P10246607015517225330

namespace A045943

/-- `∑[n]/acot(cot(1/3))` -/
def P10246607015517225330.Spec : Prop :=
  ∀ n, P10246607015517225330.a n = (A045943 n : ℝ)

end A045943

/-!
# A045944: Rhombic matchstick numbers: a(n) = n*(3*n+2).

The programs for A045944, the canonical program `A045944.P1947840734344051753` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045944 has offset 0).

The definition of A045944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+2)` (program `A045944.P1947840734344051753`, by `A045944.P1947840734344051753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045944.P1947840734344051753

`n*(3*n+2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045944

/-- `n*(3*n+2)` -/
def P1947840734344051753.Spec : Prop :=
  ∀ n, (P1947840734344051753.a n : ℤ) = A045944 n

theorem P1947840734344051753.correct : P1947840734344051753.Spec := by
  intro n
  simp only [A045944]

end A045944

/-! ## A045944.P5116860127564355971

`ogf((5x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A045944.P5116860127564355971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 1] [1, -3, 3, -1] n

end

end A045944.P5116860127564355971

namespace A045944

/-- `ogf((5x+x^2)/(1-3x+3x^2-x^3))` -/
def P5116860127564355971.Spec : Prop :=
  ∀ n, P5116860127564355971.a n = A045944 n

end A045944

/-! ## A045944.P2762075309185756025

`A056109(n)-1`
-/

namespace A045944.P2762075309185756025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - 1

end

end A045944.P2762075309185756025

namespace A045944

/-- `A056109(n)-1` -/
def P2762075309185756025.Spec : Prop :=
  ∀ n, P2762075309185756025.a n = A045944 n

theorem P2762075309185756025.correct : P2762075309185756025.Spec := by
  intro n
  simp only [A045944, Nat.add_sub_cancel, A045944.P2762075309185756025.a, A045944.P1947840734344051753.a, A056109, A056109.P1021656474208167212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045944

/-! ## A045944.P8719360167689585407

`A005563(n)+A001105(n)`
-/

namespace A045944.P8719360167689585407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + A001105 n

end

end A045944.P8719360167689585407

namespace A045944

/-- `A005563(n)+A001105(n)` -/
def P8719360167689585407.Spec : Prop :=
  ∀ n, P8719360167689585407.a n = A045944 n

theorem P8719360167689585407.correct : P8719360167689585407.Spec := by
  intro n
  simp only [A045944, Nat.add_sub_cancel, A045944.P8719360167689585407.a, A045944.P1947840734344051753.a, A001105, A001105.P6098599260439307493.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045944

/-! ## A045944.P16819652874827633767

`A002378(n)+A014105(n)`
-/

namespace A045944.P16819652874827633767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + A014105 n

end

end A045944.P16819652874827633767

namespace A045944

/-- `A002378(n)+A014105(n)` -/
def P16819652874827633767.Spec : Prop :=
  ∀ n, P16819652874827633767.a n = A045944 n

theorem P16819652874827633767.correct : P16819652874827633767.Spec := by
  intro n
  simp only [A045944, Nat.add_sub_cancel, A045944.P16819652874827633767.a, A045944.P1947840734344051753.a, A002378, A002378.P6342434596694243671.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045944

/-! ## A045944.P6966247008450704434

`A003154(n+1)-A000567(n+1)`
-/

namespace A045944.P6966247008450704434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - A000567 (n + 1)

end

end A045944.P6966247008450704434

namespace A045944

/-- `A003154(n+1)-A000567(n+1)` -/
def P6966247008450704434.Spec : Prop :=
  ∀ n, P6966247008450704434.a n = A045944 n

theorem P6966247008450704434.correct : P6966247008450704434.Spec := by
  intro n
  simp only [A045944, Nat.add_sub_cancel, A045944.P6966247008450704434.a, A045944.P1947840734344051753.a, A000567, A000567.P17850767079432249295.a, A003154, A003154.P12292724974289202885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045944

/-! ## A045944.P16683084587001602014

`A000567(n+2)-A022144(n+1)`
-/

namespace A045944.P16683084587001602014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 2) - A022144 (n + 1)

end

end A045944.P16683084587001602014

namespace A045944

/-- `A000567(n+2)-A022144(n+1)` -/
def P16683084587001602014.Spec : Prop :=
  ∀ n, P16683084587001602014.a n = A045944 n

end A045944

/-! ## A045944.P14671474481499116980

`A001082(2*n+1)`
-/

namespace A045944.P14671474481499116980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (2 * n + 1)

end

end A045944.P14671474481499116980

namespace A045944

/-- `A001082(2*n+1)` -/
def P14671474481499116980.Spec : Prop :=
  ∀ n, P14671474481499116980.a n = A045944 n

end A045944

/-! ## A045944.P4641236175546676690

`A174709(6*n+4)`
-/

namespace A045944.P4641236175546676690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (6 * n + 4)

end

end A045944.P4641236175546676690

namespace A045944

/-- `A174709(6*n+4)` -/
def P4641236175546676690.Spec : Prop :=
  ∀ n, P4641236175546676690.a n = A045944 n

end A045944

/-! ## A045944.P8511402152010781861

`xor(1, Δ[n^3])-n`
-/

namespace A045944.P8511402152010781861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n : ℤ)

end

end A045944.P8511402152010781861

namespace A045944

/-- `xor(1, Δ[n^3])-n` -/
def P8511402152010781861.Spec : Prop :=
  ∀ n, P8511402152010781861.a n = A045944 n

end A045944

/-! ## A045944.P3154138264585394892

`Δ[C(n, 2)*Δ[n²]]`
-/

namespace A045944.P3154138264585394892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045944.P3154138264585394892

namespace A045944

/-- `Δ[C(n, 2)*Δ[n²]]` -/
def P3154138264585394892.Spec : Prop :=
  ∀ n, P3154138264585394892.a n = A045944 n

theorem P3154138264585394892.correct : P3154138264585394892.Spec := by
  intro n
  simp only [A045944, Nat.add_sub_cancel, A045944.P3154138264585394892.f2, A045944.P3154138264585394892.f1, A045944.P3154138264585394892.a, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045944

/-! ## A045944.P7175699264172645109

`∑[a(n-1)+6]` with `a(0)=0, a(1)=5`
-/

namespace A045944.P7175699264172645109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045944.P7175699264172645109

namespace A045944

/-- `∑[a(n-1)+6]` -/
def P7175699264172645109.Spec : Prop :=
  ∀ n, (P7175699264172645109.a n : ℤ) = A045944 n

end A045944

/-! ## A045944.P7284702015072557149

`∑[ogf((5x+x^2)/(1-2x+x^2))]`
-/

namespace A045944.P7284702015072557149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045944.P7284702015072557149

namespace A045944

/-- `∑[ogf((5x+x^2)/(1-2x+x^2))]` -/
def P7284702015072557149.Spec : Prop :=
  ∀ n, P7284702015072557149.a n = A045944 n

end A045944

/-! ## A045944.P11084246220856735406

`∑[lcm(2, 3*2*n)]-n`
-/

namespace A045944.P11084246220856735406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A045944.P11084246220856735406

namespace A045944

/-- `∑[lcm(2, 3*2*n)]-n` -/
def P11084246220856735406.Spec : Prop :=
  ∀ n, P11084246220856735406.a n = A045944 n

end A045944

/-! ## A045944.P8837469636891367735

`Δ[n^3-C(n+1, 2)]`
-/

namespace A045944.P8837469636891367735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045944.P8837469636891367735

namespace A045944

/-- `Δ[n^3-C(n+1, 2)]` -/
def P8837469636891367735.Spec : Prop :=
  ∀ n, P8837469636891367735.a n = A045944 n

theorem P8837469636891367735.correct : P8837469636891367735.Spec := by
  intro n
  simp only [A045944, Nat.add_sub_cancel, A045944.P8837469636891367735.f1, A045944.P8837469636891367735.a, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045944

/-! ## A045944.P3787087108588804713

`or(1, Δ[n^3])-(n+1)`
-/

namespace A045944.P3787087108588804713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n + 1 : ℤ)

end

end A045944.P3787087108588804713

namespace A045944

/-- `or(1, Δ[n^3])-(n+1)` -/
def P3787087108588804713.Spec : Prop :=
  ∀ n, P3787087108588804713.a n = A045944 n

end A045944

/-! ## A045944.P10273000587161111490

`lcm(n, Δ[n^3]-(n+1))`
-/

namespace A045944.P10273000587161111490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ))

end

end A045944.P10273000587161111490

namespace A045944

/-- `lcm(n, Δ[n^3]-(n+1))` -/
def P10273000587161111490.Spec : Prop :=
  ∀ n, (P10273000587161111490.a n : ℤ) = A045944 n

end A045944

/-! ## A045944.P5394995502524895635

`record[xor(1, n)²]-(n+1)²`
-/

namespace A045944.P5394995502524895635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A045944.P5394995502524895635

namespace A045944

/-- `record[xor(1, n)²]-(n+1)²` -/
def P5394995502524895635.Spec : Prop :=
  ∀ n, P5394995502524895635.a n = A045944 n

end A045944

/-! ## A045944.P5062134855614244302

`Δ[Δ[C(n, 2)²]]-(n+1)`
-/

namespace A045944.P5062134855614244302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A045944.P5062134855614244302

namespace A045944

/-- `Δ[Δ[C(n, 2)²]]-(n+1)` -/
def P5062134855614244302.Spec : Prop :=
  ∀ n, P5062134855614244302.a n = A045944 n

theorem P5062134855614244302.correct : P5062134855614244302.Spec := by
  intro n
  simp only [A045944, Nat.add_sub_cancel, A045944.P5062134855614244302.f2, A045944.P5062134855614244302.f1, A045944.P5062134855614244302.a, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045944

/-! ## A045944.P6739338977201855578

`6*n-(1-a(n-1))` with `a(0)=0`
-/

namespace A045944.P6739338977201855578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (6 * n : ℤ) - (1 - a (n - 1))

end

end A045944.P6739338977201855578

namespace A045944

/-- `6*n-(1-a(n-1))` -/
def P6739338977201855578.Spec : Prop :=
  ∀ n, P6739338977201855578.a n = A045944 n

theorem P6739338977201855578.correct : P6739338977201855578.Spec := by
  intro n
  induction n with
  | zero => simp [A045944, A045944.P6739338977201855578.a, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A045944, Nat.add_sub_cancel, A045944.P6739338977201855578.a, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A045944

/-!
# A045945: Hexagonal matchstick numbers: a(n) = 3*n*(3*n+1).

The programs for A045945, the canonical program `A045945.P14001929662270589613` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045945 has offset 0).

The definition of A045945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(3*n+1)` (program `A045945.P14001929662270589613`, by `A045945.P14001929662270589613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045945.P14001929662270589613

`3*n*(3*n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045945

/-- `3*n*(3*n+1)` -/
def P14001929662270589613.Spec : Prop :=
  ∀ n, (P14001929662270589613.a n : ℤ) = A045945 n

theorem P14001929662270589613.correct : P14001929662270589613.Spec := by
  intro n
  simp only [A045945]

end A045945

/-! ## A045945.P10153993746820965715

`ogf((12x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A045945.P10153993746820965715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 6] [1, -3, 3, -1] n

end

end A045945.P10153993746820965715

namespace A045945

/-- `ogf((12x+6x^2)/(1-3x+3x^2-x^3))` -/
def P10153993746820965715.Spec : Prop :=
  ∀ n, P10153993746820965715.a n = A045945 n

end A045945

/-! ## A045945.P6409835696153670701

`n*Δ[C(3*n, 2)]`
-/

namespace A045945.P6409835696153670701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A045945.P6409835696153670701

namespace A045945

/-- `n*Δ[C(3*n, 2)]` -/
def P6409835696153670701.Spec : Prop :=
  ∀ n, P6409835696153670701.a n = A045945 n

theorem P6409835696153670701.correct : P6409835696153670701.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P6409835696153670701.f1, A045945.P6409835696153670701.a, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P17465401748623811223

`2*C(3*n+1, 2)`
-/

namespace A045945.P17465401748623811223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (3 * n + 1) 2

end

end A045945.P17465401748623811223

namespace A045945

/-- `2*C(3*n+1, 2)` -/
def P17465401748623811223.Spec : Prop :=
  ∀ n, (P17465401748623811223.a n : ℤ) = A045945 n

theorem P17465401748623811223.correct : P17465401748623811223.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P17465401748623811223.a, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P6757210903198856421

`∑[a(n-1)+18]` with `a(0)=0, a(1)=12`
-/

namespace A045945.P6757210903198856421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045945.P6757210903198856421

namespace A045945

/-- `∑[a(n-1)+18]` -/
def P6757210903198856421.Spec : Prop :=
  ∀ n, (P6757210903198856421.a n : ℤ) = A045945 n

end A045945

/-! ## A045945.P9329953843542960549

`Δ[3*lcm(n-1, n²)]`
-/

namespace A045945.P9329953843542960549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A045945.P9329953843542960549

namespace A045945

/-- `Δ[3*lcm(n-1, n²)]` -/
def P9329953843542960549.Spec : Prop :=
  ∀ n, P9329953843542960549.a n = A045945 n

end A045945

/-! ## A045945.P16674491830613628676

`∑[ogf((12x+6x^2)/(1-2x+x^2))]`
-/

namespace A045945.P16674491830613628676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045945.P16674491830613628676

namespace A045945

/-- `∑[ogf((12x+6x^2)/(1-2x+x^2))]` -/
def P16674491830613628676.Spec : Prop :=
  ∀ n, P16674491830613628676.a n = A045945 n

end A045945

/-! ## A045945.P7175610847781508545

`6-∑[a(n-1)-18]` with `a(0)=6`
-/

namespace A045945.P7175610847781508545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045945.P7175610847781508545

namespace A045945

/-- `6-∑[a(n-1)-18]` -/
def P7175610847781508545.Spec : Prop :=
  ∀ n, P7175610847781508545.a n = A045945 n

end A045945

/-! ## A045945.P4767885042204188665

`record[n^((n+1)%3)-n]`
-/

namespace A045945.P4767885042204188665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ ((n + 1) % 3) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045945.P4767885042204188665

namespace A045945

/-- `record[n^((n+1)%3)-n]` -/
def P4767885042204188665.Spec : Prop :=
  ∀ n, P4767885042204188665.a n = A045945 n

end A045945

/-! ## A045945.P17359337528693249944

`A082040(n)-1`
-/

namespace A045945.P17359337528693249944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n - 1

end

end A045945.P17359337528693249944

namespace A045945

/-- `A082040(n)-1` -/
def P17359337528693249944.Spec : Prop :=
  ∀ n, P17359337528693249944.a n = A045945 n

theorem P17359337528693249944.correct : P17359337528693249944.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P17359337528693249944.a, A045945.P14001929662270589613.a, A082040, A082040.P13987900187150890134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P1494137238147897151

`A045946(n)/2`
-/

namespace A045945.P1494137238147897151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045946 n : ℚ) / 2

end

end A045945.P1494137238147897151

namespace A045945

/-- `A045946(n)/2` -/
def P1494137238147897151.Spec : Prop :=
  ∀ n, P1494137238147897151.a n = (A045945 n : ℚ)

theorem P1494137238147897151.correct : P1494137238147897151.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P1494137238147897151.a, A045945.P14001929662270589613.a, A045946, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P9741876169393343090

`A147296(n)+n`
-/

namespace A045945.P9741876169393343090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n + (n : ℤ)

end

end A045945.P9741876169393343090

namespace A045945

/-- `A147296(n)+n` -/
def P9741876169393343090.Spec : Prop :=
  ∀ n, P9741876169393343090.a n = A045945 n

theorem P9741876169393343090.correct : P9741876169393343090.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P9741876169393343090.a, A045945.P14001929662270589613.a, A147296, A147296.P3605709138452781436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P6116391106427329778

`floor(A081272(n)/2)`
-/

namespace A045945.P6116391106427329778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081272 n : ℚ) / 2⌋

end

end A045945.P6116391106427329778

namespace A045945

/-- `floor(A081272(n)/2)` -/
def P6116391106427329778.Spec : Prop :=
  ∀ n, P6116391106427329778.a n = A045945 n

end A045945

/-! ## A045945.P10340804517937787016

`∑[A019557(n)]-1`
-/

namespace A045945.P10340804517937787016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A045945.P10340804517937787016

namespace A045945

/-- `∑[A019557(n)]-1` -/
def P10340804517937787016.Spec : Prop :=
  ∀ n, P10340804517937787016.a n = A045945 n

end A045945

/-! ## A045945.P5508106454073400453

`A139276(n)+n²`
-/

namespace A045945.P5508106454073400453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n + (n ^ 2 : ℤ)

end

end A045945.P5508106454073400453

namespace A045945

/-- `A139276(n)+n²` -/
def P5508106454073400453.Spec : Prop :=
  ∀ n, P5508106454073400453.a n = A045945 n

theorem P5508106454073400453.correct : P5508106454073400453.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P5508106454073400453.a, A045945.P14001929662270589613.a, A139276, A139276.P12504943694030977300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P12970044948775025442

`(A016922(n)-1)/4`
-/

namespace A045945.P12970044948775025442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016922 n - 1 : ℚ) / 4

end

end A045945.P12970044948775025442

namespace A045945

/-- `(A016922(n)-1)/4` -/
def P12970044948775025442.Spec : Prop :=
  ∀ n, P12970044948775025442.a n = (A045945 n : ℚ)

theorem P12970044948775025442.correct : P12970044948775025442.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P12970044948775025442.a, A045945.P14001929662270589613.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P17556562264368108671

`A016766(n)+3*n`
-/

namespace A045945.P17556562264368108671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + (3 * n : ℤ)

end

end A045945.P17556562264368108671

namespace A045945

/-- `A016766(n)+3*n` -/
def P17556562264368108671.Spec : Prop :=
  ∀ n, P17556562264368108671.a n = A045945 n

theorem P17556562264368108671.correct : P17556562264368108671.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P17556562264368108671.a, A045945.P14001929662270589613.a, A016766, A016766.P3834823630241441293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P1109509184452120416

`A013656(n)+5*n`
-/

namespace A045945.P1109509184452120416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n + (5 * n : ℤ)

end

end A045945.P1109509184452120416

namespace A045945

/-- `A013656(n)+5*n` -/
def P1109509184452120416.Spec : Prop :=
  ∀ n, P1109509184452120416.a n = A045945 n

theorem P1109509184452120416.correct : P1109509184452120416.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P1109509184452120416.a, A045945.P14001929662270589613.a, A013656, A013656.P11559324039876728310.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P9946522841157913136

`A152743(n)+6*n`
-/

namespace A045945.P9946522841157913136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n + (6 * n : ℤ)

end

end A045945.P9946522841157913136

namespace A045945

/-- `A152743(n)+6*n` -/
def P9946522841157913136.Spec : Prop :=
  ∀ n, P9946522841157913136.a n = A045945 n

theorem P9946522841157913136.correct : P9946522841157913136.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P9946522841157913136.a, A045945.P14001929662270589613.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-! ## A045945.P14395237463031361932

`A033585(n)+A002378(n)`
-/

namespace A045945.P14395237463031361932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + A002378 n

end

end A045945.P14395237463031361932

namespace A045945

/-- `A033585(n)+A002378(n)` -/
def P14395237463031361932.Spec : Prop :=
  ∀ n, P14395237463031361932.a n = A045945 n

theorem P14395237463031361932.correct : P14395237463031361932.Spec := by
  intro n
  simp only [A045945, Nat.add_sub_cancel, A045945.P14395237463031361932.a, A045945.P14001929662270589613.a, A002378, A002378.P6342434596694243671.a, A033585, A033585.P9867637388797284521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045945

/-!
# A045946: Star of David matchstick numbers: a(n) = 6*n*(3*n+1).

The programs for A045946, the canonical program `A045946.P9467780037797056746` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045946 has offset 0).

The definition of A045946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n*(3*n+1)` (program `A045946.P9467780037797056746`, by `A045946.P9467780037797056746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045946.P14560741148004030733

`18*n²+6*n`
-/

namespace A045946.P14560741148004030733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n ^ 2 + 6 * n

end

end A045946.P14560741148004030733

namespace A045946

/-- `18*n²+6*n` -/
def P14560741148004030733.Spec : Prop :=
  ∀ n, (P14560741148004030733.a n : ℤ) = A045946 n

theorem P14560741148004030733.correct : P14560741148004030733.Spec := by
  intro n
  simp only [A045946, Nat.add_sub_cancel, A045946.P14560741148004030733.a, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A045946

/-! ## A045946.P9467780037797056746

`6*n*(3*n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045946

/-- `6*n*(3*n+1)` -/
def P9467780037797056746.Spec : Prop :=
  ∀ n, (P9467780037797056746.a n : ℤ) = A045946 n

theorem P9467780037797056746.correct : P9467780037797056746.Spec := by
  intro n
  simp only [A045946]

end A045946

/-! ## A045946.P3820444834183210772

`ogf((24x+12x^2)/(1-3x+3x^2-x^3))`
-/

namespace A045946.P3820444834183210772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24, 12] [1, -3, 3, -1] n

end

end A045946.P3820444834183210772

namespace A045946

/-- `ogf((24x+12x^2)/(1-3x+3x^2-x^3))` -/
def P3820444834183210772.Spec : Prop :=
  ∀ n, P3820444834183210772.a n = A045946 n

end A045946

/-! ## A045946.P6354989657748551895

`Δ[12*n*C(n, 2)]`
-/

namespace A045946.P6354989657748551895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A045946.P6354989657748551895

namespace A045946

/-- `Δ[12*n*C(n, 2)]` -/
def P6354989657748551895.Spec : Prop :=
  ∀ n, P6354989657748551895.a n = A045946 n

theorem P6354989657748551895.correct : P6354989657748551895.Spec := by
  intro n
  simp only [A045946, Nat.add_sub_cancel, A045946.P6354989657748551895.f1, A045946.P6354989657748551895.a, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045946

/-! ## A045946.P18054026599424763972

`C(3*n+1, 2)*4`
-/

namespace A045946.P18054026599424763972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 1) 2 * 4

end

end A045946.P18054026599424763972

namespace A045946

/-- `C(3*n+1, 2)*4` -/
def P18054026599424763972.Spec : Prop :=
  ∀ n, (P18054026599424763972.a n : ℤ) = A045946 n

theorem P18054026599424763972.correct : P18054026599424763972.Spec := by
  intro n
  simp only [A045946, Nat.add_sub_cancel, A045946.P18054026599424763972.a, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045946

/-! ## A045946.P478311548333787525

`∑[a(n-1)+36]` with `a(0)=0, a(1)=24`
-/

namespace A045946.P478311548333787525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 24] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045946.P478311548333787525

namespace A045946

/-- `∑[a(n-1)+36]` -/
def P478311548333787525.Spec : Prop :=
  ∀ n, (P478311548333787525.a n : ℤ) = A045946 n

end A045946

/-! ## A045946.P399495956168340539

`Δ[2*n*3*lcm(n, n-1)]`
-/

namespace A045946.P399495956168340539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (3 * Int.lcm (n : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A045946.P399495956168340539

namespace A045946

/-- `Δ[2*n*3*lcm(n, n-1)]` -/
def P399495956168340539.Spec : Prop :=
  ∀ n, P399495956168340539.a n = A045946 n

end A045946

/-! ## A045946.P12009035813578640043

`floor(A016922(n)/2)`
-/

namespace A045946.P12009035813578640043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016922 n : ℚ) / 2⌋

end

end A045946.P12009035813578640043

namespace A045946

/-- `floor(A016922(n)/2)` -/
def P12009035813578640043.Spec : Prop :=
  ∀ n, P12009035813578640043.a n = A045946 n

end A045946

/-! ## A045946.P16913426843455562805

`floor(A016921(n)²/2)`
-/

namespace A045946.P16913426843455562805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016921 n ^ 2 : ℚ) / 2⌋

end

end A045946.P16913426843455562805

namespace A045946

/-- `floor(A016921(n)²/2)` -/
def P16913426843455562805.Spec : Prop :=
  ∀ n, P16913426843455562805.a n = A045946 n

end A045946

/-! ## A045946.P9646112422090848448

`(sqrt(A016924(n))-1)/2`
-/

namespace A045946.P9646112422090848448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A016924 n : ℝ) - 1) / 2

end

end A045946.P9646112422090848448

namespace A045946

/-- `(sqrt(A016924(n))-1)/2` -/
def P9646112422090848448.Spec : Prop :=
  ∀ n, P9646112422090848448.a n = (A045946 n : ℝ)

end A045946

/-! ## A045946.P8448936370471025605

`Δ[(n-1)*A033581(n)]`
-/

namespace A045946.P8448936370471025605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045946.P8448936370471025605

namespace A045946

/-- `Δ[(n-1)*A033581(n)]` -/
def P8448936370471025605.Spec : Prop :=
  ∀ n, P8448936370471025605.a n = A045946 n

theorem P8448936370471025605.correct : P8448936370471025605.Spec := by
  intro n
  simp only [A045946, Nat.add_sub_cancel, A045946.P8448936370471025605.f1, A045946.P8448936370471025605.a, A045946.P9467780037797056746.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045946

/-! ## A045946.P15864916478367918870

`A016922(n)%A081272(n)`
-/

namespace A045946.P15864916478367918870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016922 n) (A081272 n)

end

end A045946.P15864916478367918870

namespace A045946

/-- `A016922(n)%A081272(n)` -/
def P15864916478367918870.Spec : Prop :=
  ∀ n, P15864916478367918870.a n = A045946 n

end A045946

/-! ## A045946.P6900964543375706662

`A016926(n)%A081272(n)`
-/

namespace A045946.P6900964543375706662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016926 n) (A081272 n)

end

end A045946.P6900964543375706662

namespace A045946

/-- `A016926(n)%A081272(n)` -/
def P6900964543375706662.Spec : Prop :=
  ∀ n, P6900964543375706662.a n = A045946 n

end A045946

/-! ## A045946.P4801679496854036718

`A304506(n)%A144449(n)`
-/

namespace A045946.P4801679496854036718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304506 n) (A144449 n)

end

end A045946.P4801679496854036718

namespace A045946

/-- `A304506(n)%A144449(n)` -/
def P4801679496854036718.Spec : Prop :=
  ∀ n, P4801679496854036718.a n = A045946 n

end A045946

/-! ## A045946.P14113617624522450558

`lcm(A008588(n), A016933(n))`
-/

namespace A045946.P14113617624522450558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008588 n) (A016933 n)

end

end A045946.P14113617624522450558

namespace A045946

/-- `lcm(A008588(n), A016933(n))` -/
def P14113617624522450558.Spec : Prop :=
  ∀ n, (P14113617624522450558.a n : ℤ) = A045946 n

end A045946

/-! ## A045946.P8487551549694976988

`lcm(A008458(n), A033580(n))`
-/

namespace A045946.P8487551549694976988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008458 n) (A033580 n)

end

end A045946.P8487551549694976988

namespace A045946

/-- `lcm(A008458(n), A033580(n))` -/
def P8487551549694976988.Spec : Prop :=
  ∀ n, (P8487551549694976988.a n : ℤ) = A045946 n

end A045946

/-! ## A045946.P2721023068950985415

`lcm(A165988(n), A166138(n))`
-/

namespace A045946.P2721023068950985415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165988 n) (A166138 n)

end

end A045946.P2721023068950985415

namespace A045946

/-- `lcm(A165988(n), A166138(n))` -/
def P2721023068950985415.Spec : Prop :=
  ∀ n, (P2721023068950985415.a n : ℤ) = A045946 n

end A045946

/-! ## A045946.P2986524505383782528

`A046092(3*n)`
-/

namespace A045946.P2986524505383782528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (3 * n)

end

end A045946.P2986524505383782528

namespace A045946

/-- `A046092(3*n)` -/
def P2986524505383782528.Spec : Prop :=
  ∀ n, P2986524505383782528.a n = A045946 n

theorem P2986524505383782528.correct : P2986524505383782528.Spec := by
  intro n
  simp only [A045946, Nat.add_sub_cancel, A045946.P2986524505383782528.a, A045946.P9467780037797056746.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045946

/-! ## A045946.P11954480815179834735

`sqrt(A060300(3*n))`
-/

namespace A045946.P11954480815179834735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A060300 (3 * n) : ℝ)

end

end A045946.P11954480815179834735

namespace A045946

/-- `sqrt(A060300(3*n))` -/
def P11954480815179834735.Spec : Prop :=
  ∀ n, P11954480815179834735.a n = (A045946 n : ℝ)

end A045946

/-! ## A045946.P3596140234967948079

`A328180(3*(n+1))`
-/

namespace A045946.P3596140234967948079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328180 (3 * (n + 1))

end

end A045946.P3596140234967948079

namespace A045946

/-- `A328180(3*(n+1))` -/
def P3596140234967948079.Spec : Prop :=
  ∀ n, P3596140234967948079.a n = A045946 n

end A045946

/-!
# A045947: Triangles in open triangular matchstick arrangement (triangle minus one side) of side n.

The programs for A045947, the canonical program `A045947.P3460978655251114226` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045947 has offset 0).

The definition of A045947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045947.P4821365548566866113

`ogf((2x^2+x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A045947.P4821365548566866113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 1] [1, -3, 2, 2, -3, 1] n

end

end A045947.P4821365548566866113

namespace A045947

/-- `ogf((2x^2+x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P4821365548566866113.Spec : Prop :=
  ∀ n, P4821365548566866113.a n = A045947 n

end A045947

/-! ## A045947.P3460978655251114226

`floor((4*n^3+2*n²-4*n)/16)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045947

/-- `floor((4*n^3+2*n²-4*n)/16)` -/
def P3460978655251114226.Spec : Prop :=
  ∀ n, P3460978655251114226.a n = A045947 n

theorem P3460978655251114226.correct : P3460978655251114226.Spec := by
  intro n
  simp only [A045947]

end A045947

/-! ## A045947.P6927845933661356531

`∑[∑[∑[gcd(2, n)]-3]+1]`
-/

namespace A045947.P6927845933661356531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045947.P6927845933661356531

namespace A045947

/-- `∑[∑[∑[gcd(2, n)]-3]+1]` -/
def P6927845933661356531.Spec : Prop :=
  ∀ n, P6927845933661356531.a n = A045947 n

end A045947

/-! ## A045947.P8198049722707887178

`∑[floor((n/2)²)+C(n, 2)]`
-/

namespace A045947.P8198049722707887178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ + (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045947.P8198049722707887178

namespace A045947

/-- `∑[floor((n/2)²)+C(n, 2)]` -/
def P8198049722707887178.Spec : Prop :=
  ∀ n, P8198049722707887178.a n = A045947 n

end A045947

/-! ## A045947.P13171853861895449740

`∑[∑[a(n-2)+3]]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A045947.P13171853861895449740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045947.P13171853861895449740

namespace A045947

/-- `∑[∑[a(n-2)+3]]` -/
def P13171853861895449740.Spec : Prop :=
  ∀ n, (P13171853861895449740.a n : ℤ) = A045947 n

end A045947

/-! ## A045947.P13005302238611721197

`∑[∑[∑[a(n-2)!]]]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A045947.P13005302238611721197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f3 =>
  Nat.factorial (f3 (n - 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045947.P13005302238611721197

namespace A045947

/-- `∑[∑[∑[a(n-2)!]]]` -/
def P13005302238611721197.Spec : Prop :=
  ∀ n, (P13005302238611721197.a n : ℤ) = A045947 n

end A045947

/-! ## A045947.P17860635736013023997

`n*C(n, 2)-a(n-1)` with `a(0)=0`
-/

namespace A045947.P17860635736013023997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * Nat.choose n 2 : ℤ) - a (n - 1)

end

end A045947.P17860635736013023997

namespace A045947

/-- `n*C(n, 2)-a(n-1)` -/
def P17860635736013023997.Spec : Prop :=
  ∀ n, P17860635736013023997.a n = A045947 n

end A045947

/-! ## A045947.P18364046904602643647

`∑[1-∑[a(n-2)-3]]` with `a(0)=1, a(1)=0`
-/

namespace A045947.P18364046904602643647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045947.P18364046904602643647

namespace A045947

/-- `∑[1-∑[a(n-2)-3]]` -/
def P18364046904602643647.Spec : Prop :=
  ∀ n, P18364046904602643647.a n = A045947 n

end A045947

/-! ## A045947.P11118160426814355938

`n²*(n-1)/2-a(n-1)` with `a(0)=0`
-/

namespace A045947.P11118160426814355938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n ^ 2 : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 - a (n - 1)

end

end A045947.P11118160426814355938

namespace A045947

/-- `n²*(n-1)/2-a(n-1)` -/
def P11118160426814355938.Spec : Prop :=
  ∀ n, P11118160426814355938.a n = (A045947 n : ℚ)

end A045947

/-! ## A045947.P18312257795616400201

`A002717(n)-∑[n]`
-/

namespace A045947.P18312257795616400201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A045947.P18312257795616400201

namespace A045947

/-- `A002717(n)-∑[n]` -/
def P18312257795616400201.Spec : Prop :=
  ∀ n, P18312257795616400201.a n = A045947 n

end A045947

/-! ## A045947.P11133651505631939365

`∑[A006578(n)-n]`
-/

namespace A045947.P11133651505631939365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045947.P11133651505631939365

namespace A045947

/-- `∑[A006578(n)-n]` -/
def P11133651505631939365.Spec : Prop :=
  ∀ n, P11133651505631939365.a n = A045947 n

end A045947

/-! ## A045947.P3254236348776124626

`∑[A267529(n)-2]+1`
-/

namespace A045947.P3254236348776124626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A045947.P3254236348776124626

namespace A045947

/-- `∑[A267529(n)-2]+1` -/
def P3254236348776124626.Spec : Prop :=
  ∀ n, P3254236348776124626.a n = A045947 n

end A045947

/-! ## A045947.P5321442143593304232

`(A011934(n)-∑[n])/2`
-/

namespace A045947.P5321442143593304232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011934 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A045947.P5321442143593304232

namespace A045947

/-- `(A011934(n)-∑[n])/2` -/
def P5321442143593304232.Spec : Prop :=
  ∀ n, P5321442143593304232.a n = (A045947 n : ℚ)

end A045947

/-! ## A045947.P12087256219445154756

`n*∑[n]-A019298(n)`
-/

namespace A045947.P12087256219445154756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A019298 n

end

end A045947.P12087256219445154756

namespace A045947

/-- `n*∑[n]-A019298(n)` -/
def P12087256219445154756.Spec : Prop :=
  ∀ n, P12087256219445154756.a n = A045947 n

end A045947

/-! ## A045947.P8164311218081907518

`A248851(n)-n*(n+2)`
-/

namespace A045947.P8164311218081907518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 n - (n * (n + 2) : ℤ)

end

end A045947.P8164311218081907518

namespace A045947

/-- `A248851(n)-n*(n+2)` -/
def P8164311218081907518.Spec : Prop :=
  ∀ n, P8164311218081907518.a n = A045947 n

end A045947

/-! ## A045947.P6622658339414385481

`∑[n²-A002620(n+1)]`
-/

namespace A045947.P6622658339414385481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045947.P6622658339414385481

namespace A045947

/-- `∑[n²-A002620(n+1)]` -/
def P6622658339414385481.Spec : Prop :=
  ∀ n, P6622658339414385481.a n = A045947 n

end A045947

/-! ## A045947.P6428349982724731936

`∑[n²]-A173196(n+1)`
-/

namespace A045947.P6428349982724731936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A173196 (n + 1)

end

end A045947.P6428349982724731936

namespace A045947

/-- `∑[n²]-A173196(n+1)` -/
def P6428349982724731936.Spec : Prop :=
  ∀ n, P6428349982724731936.a n = A045947 n

end A045947

/-! ## A045947.P10256108249942272250

`∑[A077043(n+1)]-(n+1)²`
-/

namespace A045947.P10256108249942272250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A045947.P10256108249942272250

namespace A045947

/-- `∑[A077043(n+1)]-(n+1)²` -/
def P10256108249942272250.Spec : Prop :=
  ∀ n, P10256108249942272250.a n = A045947 n

end A045947

/-! ## A045947.P4316337410368749155

`A274248(n+1)-∑[(n+1)²]`
-/

namespace A045947.P4316337410368749155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274248 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A045947.P4316337410368749155

namespace A045947

/-- `A274248(n+1)-∑[(n+1)²]` -/
def P4316337410368749155.Spec : Prop :=
  ∀ n, P4316337410368749155.a n = A045947 n

end A045947

/-!
# A045948: a(n) = A003418(n)/A034386(n).

The programs for A045948, the canonical program `A045948.P12134323424524739817` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045948 has offset 1).

The definition of A045948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045948.P12134323424524739817

`A003418(n+1)/A034386(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A045948

/-- `A003418(n+1)/A034386(n+1)` -/
def P12134323424524739817.Spec : Prop :=
  ∀ n, P12134323424524739817.a n = (A045948 (n + 1) : ℚ)

end A045948

/-! ## A045948.P739968510654599909

`lcm((n+1)/∏{p}[n+1, #], a(n-1))` with `a(0)=1`
-/

namespace A045948.P739968510654599909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (a (n - 1) : ℤ)

end

end A045948.P739968510654599909

namespace A045948

/-- `lcm((n+1)/∏{p}[n+1, #], a(n-1))` -/
def P739968510654599909.Spec : Prop :=
  ∀ n, (P739968510654599909.a n : ℤ) = A045948 (n + 1)

end A045948

/-! ## A045948.P18104346538767441786

`∏[∏{p}[∏{p}[n+1, (n+1)/#]%(n+1), #]]`
-/

namespace A045948.P18104346538767441786
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f3 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P18104346538767441786

namespace A045948

/-- `∏[∏{p}[∏{p}[n+1, (n+1)/#]%(n+1), #]]` -/
def P18104346538767441786.Spec : Prop :=
  ∀ n, (P18104346538767441786.a n : ℤ) = A045948 (n + 1)

end A045948

/-! ## A045948.P10533523215817559775

`∏[gcd(n+1, ceil((n+1)*∏{p}[n+1, #/(n+3)]))]`
-/

namespace A045948.P10533523215817559775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) / (n + 3 : ℚ))⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P10533523215817559775

namespace A045948

/-- `∏[gcd(n+1, ceil((n+1)*∏{p}[n+1, #/(n+3)]))]` -/
def P10533523215817559775.Spec : Prop :=
  ∀ n, (P10533523215817559775.a n : ℤ) = A045948 (n + 1)

end A045948

/-! ## A045948.P11204161917168910313

`lcm(a(n-1), A003557(n+1))` with `a(0)=1`
-/

namespace A045948.P11204161917168910313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A003557 (n + 1))

end

end A045948.P11204161917168910313

namespace A045948

/-- `lcm(a(n-1), A003557(n+1))` -/
def P11204161917168910313.Spec : Prop :=
  ∀ n, (P11204161917168910313.a n : ℤ) = A045948 (n + 1)

end A045948

/-! ## A045948.P17905357513852554484

`round(sqrt(A182936(n+1)²+1))*a(n-1)` with `a(0)=1`
-/

namespace A045948.P17905357513852554484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (A182936 (n + 1) ^ 2 + 1 : ℝ)) * a (n - 1)

end

end A045948.P17905357513852554484

namespace A045948

/-- `round(sqrt(A182936(n+1)²+1))*a(n-1)` -/
def P17905357513852554484.Spec : Prop :=
  ∀ n, P17905357513852554484.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P8240563942296454060

`∏[A014963(A048671(n+1))]`
-/

namespace A045948.P8240563942296454060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P8240563942296454060

namespace A045948

/-- `∏[A014963(A048671(n+1))]` -/
def P8240563942296454060.Spec : Prop :=
  ∀ n, P8240563942296454060.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P5349618621835454538

`∏[A014963(A144907(n+1))]`
-/

namespace A045948.P5349618621835454538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A144907 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P5349618621835454538

namespace A045948

/-- `∏[A014963(A144907(n+1))]` -/
def P5349618621835454538.Spec : Prop :=
  ∀ n, P5349618621835454538.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P847574817152225648

`∏[A014963(A285328(n+1))]`
-/

namespace A045948.P847574817152225648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A285328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P847574817152225648

namespace A045948

/-- `∏[A014963(A285328(n+1))]` -/
def P847574817152225648.Spec : Prop :=
  ∀ n, P847574817152225648.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P4839515909614784910

`∏[A014963(A334085(n+1))]`
-/

namespace A045948.P4839515909614784910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A334085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P4839515909614784910

namespace A045948

/-- `∏[A014963(A334085(n+1))]` -/
def P4839515909614784910.Spec : Prop :=
  ∀ n, P4839515909614784910.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P14406098265913729468

`∏[A014963(A354090(n+1))]`
-/

namespace A045948.P14406098265913729468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A354090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P14406098265913729468

namespace A045948

/-- `∏[A014963(A354090(n+1))]` -/
def P14406098265913729468.Spec : Prop :=
  ∀ n, P14406098265913729468.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P4293616326460827833

`∏[A006530(n*A268340(n+1)+1)]`
-/

namespace A045948.P4293616326460827833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) * A268340 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P4293616326460827833

namespace A045948

/-- `∏[A006530(n*A268340(n+1)+1)]` -/
def P4293616326460827833.Spec : Prop :=
  ∀ n, P4293616326460827833.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P1785499903863241799

`∏[A014963(n*A268340(n+1)+1)]`
-/

namespace A045948.P1785499903863241799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n : ℤ) * A268340 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P1785499903863241799

namespace A045948

/-- `∏[A014963(n*A268340(n+1)+1)]` -/
def P1785499903863241799.Spec : Prop :=
  ∀ n, P1785499903863241799.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P11833364131185780918

`∏[A014963((n+1)/A014963(n+1))]`
-/

namespace A045948.P11833364131185780918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P11833364131185780918

namespace A045948

/-- `∏[A014963((n+1)/A014963(n+1))]` -/
def P11833364131185780918.Spec : Prop :=
  ∀ n, P11833364131185780918.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P1884823782247055921

`∏[gcd(A000010(n+1), A014963(n+1))]`
-/

namespace A045948.P1884823782247055921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A014963 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P1884823782247055921

namespace A045948

/-- `∏[gcd(A000010(n+1), A014963(n+1))]` -/
def P1884823782247055921.Spec : Prop :=
  ∀ n, (P1884823782247055921.a n : ℤ) = A045948 (n + 1)

end A045948

/-! ## A045948.P16981684555529042085

`∏[A014963(n%(2-A000203(n+1))+1)]`
-/

namespace A045948.P16981684555529042085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (n : ℤ) (2 - A000203 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P16981684555529042085

namespace A045948

/-- `∏[A014963(n%(2-A000203(n+1))+1)]` -/
def P16981684555529042085.Spec : Prop :=
  ∀ n, P16981684555529042085.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P15753808554752414379

`∏[A014963(n+1)-n*A010051(n+1)]`
-/

namespace A045948.P15753808554752414379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - (n : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P15753808554752414379

namespace A045948

/-- `∏[A014963(n+1)-n*A010051(n+1)]` -/
def P15753808554752414379.Spec : Prop :=
  ∀ n, P15753808554752414379.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P11849111634992823974

`∏[A089026(A007947(n+1)/A089026(n+1))]`
-/

namespace A045948.P11849111634992823974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) / (A089026 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P11849111634992823974

namespace A045948

/-- `∏[A089026(A007947(n+1)/A089026(n+1))]` -/
def P11849111634992823974.Spec : Prop :=
  ∀ n, P11849111634992823974.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P1121661881209278357

`∏[A014963(A005730(n+1))]`
-/

namespace A045948.P1121661881209278357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P1121661881209278357

namespace A045948

/-- `∏[A014963(A005730(n+1))]` -/
def P1121661881209278357.Spec : Prop :=
  ∀ n, P1121661881209278357.a n = A045948 (n + 1)

end A045948

/-! ## A045948.P5151915390862714364

`∏[A014963(A175069(n+1))]`
-/

namespace A045948.P5151915390862714364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045948.P5151915390862714364

namespace A045948

/-- `∏[A014963(A175069(n+1))]` -/
def P5151915390862714364.Spec : Prop :=
  ∀ n, P5151915390862714364.a n = A045948 (n + 1)

end A045948

/-!
# A045949: Number of equilateral triangles formed out of matches that can be found in a hexagonal chunk of side length n in hexagonal array of matchsticks.

The programs for A045949, the canonical program `A045949.P9250638501342617580` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045949 has offset 0).

The definition of A045949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045949.P6702125238185876479

`ogf((6x+20x^2+14x^3+2x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A045949.P6702125238185876479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 20, 14, 2] [1, -3, 2, 2, -3, 1] n

end

end A045949.P6702125238185876479

namespace A045949

/-- `ogf((6x+20x^2+14x^3+2x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P6702125238185876479.Spec : Prop :=
  ∀ n, P6702125238185876479.a n = A045949 n

end A045949

/-! ## A045949.P9250638501342617580

`floor(n*(14*n²+9*n+2)/4)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045949

/-- `floor(n*(14*n²+9*n+2)/4)` -/
def P9250638501342617580.Spec : Prop :=
  ∀ n, P9250638501342617580.a n = A045949 n

theorem P9250638501342617580.correct : P9250638501342617580.Spec := by
  intro n
  simp only [A045949]

end A045949

/-! ## A045949.P3436429057718646722

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=6, a(2)=38, a(3)=116, a(4)=262`
-/

namespace A045949.P3436429057718646722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 38, 116, 262] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A045949.P3436429057718646722

namespace A045949

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P3436429057718646722.Spec : Prop :=
  ∀ n, P3436429057718646722.a n = A045949 n

end A045949

/-! ## A045949.P3874684000820855676

`A033581(n)+A307253(n)`
-/

namespace A045949.P3874684000820855676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A307253 n

end

end A045949.P3874684000820855676

namespace A045949

/-- `A033581(n)+A307253(n)` -/
def P3874684000820855676.Spec : Prop :=
  ∀ n, P3874684000820855676.a n = A045949 n

theorem P3874684000820855676.correct : P3874684000820855676.Spec := by
  intro n
  simp only [A045949, Nat.add_sub_cancel, A045949.P3874684000820855676.a, A045949.P9250638501342617580.a, A033581, A033581.P13583599227635646969.a, A307253, A307253.P1314890788948728855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045949

/-! ## A045949.P8516699901532182725

`A307253(n)+6*n²`
-/

namespace A045949.P8516699901532182725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307253 n + (6 * n ^ 2 : ℤ)

end

end A045949.P8516699901532182725

namespace A045949

/-- `A307253(n)+6*n²` -/
def P8516699901532182725.Spec : Prop :=
  ∀ n, P8516699901532182725.a n = A045949 n

theorem P8516699901532182725.correct : P8516699901532182725.Spec := by
  intro n
  simp only [A045949, Nat.add_sub_cancel, A045949.P8516699901532182725.a, A045949.P9250638501342617580.a, A307253, A307253.P1314890788948728855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045949

/-! ## A045949.P2423951909817817689

`A007202(n)-Δ[n^3]`
-/

namespace A045949.P2423951909817817689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A045949.P2423951909817817689

namespace A045949

/-- `A007202(n)-Δ[n^3]` -/
def P2423951909817817689.Spec : Prop :=
  ∀ n, P2423951909817817689.a n = A045949 n

end A045949

/-! ## A045949.P15460094515789052893

`Δ[-n^3]+∑[A007899(n)]`
-/

namespace A045949.P15460094515789052893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 3 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A045949.P15460094515789052893

namespace A045949

/-- `Δ[-n^3]+∑[A007899(n)]` -/
def P15460094515789052893.Spec : Prop :=
  ∀ n, P15460094515789052893.a n = A045949 n

end A045949

/-! ## A045949.P6108063545972584434

`A115519(n)+A011934(n)`
-/

namespace A045949.P6108063545972584434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n + A011934 n

end

end A045949.P6108063545972584434

namespace A045949

/-- `A115519(n)+A011934(n)` -/
def P6108063545972584434.Spec : Prop :=
  ∀ n, P6108063545972584434.a n = A045949 n

end A045949

/-! ## A045949.P12229693126237463075

`A395241(n)-A212684(n)`
-/

namespace A045949.P12229693126237463075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n - A212684 n

end

end A045949.P12229693126237463075

namespace A045949

/-- `A395241(n)-A212684(n)` -/
def P12229693126237463075.Spec : Prop :=
  ∀ n, P12229693126237463075.a n = A045949 n

end A045949

/-! ## A045949.P7872268618328752588

`∑[A007899(n)]-A003215(n)`
-/

namespace A045949.P7872268618328752588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003215 n

end

end A045949.P7872268618328752588

namespace A045949

/-- `∑[A007899(n)]-A003215(n)` -/
def P7872268618328752588.Spec : Prop :=
  ∀ n, P7872268618328752588.a n = A045949 n

end A045949

/-! ## A045949.P13796476830852750731

`∑[A007899(n)-A008458(n)]`
-/

namespace A045949.P13796476830852750731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045949.P13796476830852750731

namespace A045949

/-- `∑[A007899(n)-A008458(n)]` -/
def P13796476830852750731.Spec : Prop :=
  ∀ n, P13796476830852750731.a n = A045949 n

end A045949

/-! ## A045949.P8430922075580285548

`∑[A007899(n)]-Δ[A000578(n)]`
-/

namespace A045949.P8430922075580285548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A045949.P8430922075580285548

namespace A045949

/-- `∑[A007899(n)]-Δ[A000578(n)]` -/
def P8430922075580285548.Spec : Prop :=
  ∀ n, P8430922075580285548.a n = A045949 n

end A045949

/-! ## A045949.P13145769102829349812

`A033428(n)+A307253(n)+A033428(n)`
-/

namespace A045949.P13145769102829349812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + (A307253 n + A033428 n)

end

end A045949.P13145769102829349812

namespace A045949

/-- `A033428(n)+A307253(n)+A033428(n)` -/
def P13145769102829349812.Spec : Prop :=
  ∀ n, P13145769102829349812.a n = A045949 n

theorem P13145769102829349812.correct : P13145769102829349812.Spec := by
  intro n
  simp only [A045949, Nat.add_sub_cancel, A045949.P13145769102829349812.a, A045949.P9250638501342617580.a, A033428, A033428.P10473664201403486648.a, A307253, A307253.P1314890788948728855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045949

/-! ## A045949.P7033389687311828980

`A153976(n)+A007202(n)-A005898(n+1)`
-/

namespace A045949.P7033389687311828980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153976 n + A007202 n - A005898 (n + 1)

end

end A045949.P7033389687311828980

namespace A045949

/-- `A153976(n)+A007202(n)-A005898(n+1)` -/
def P7033389687311828980.Spec : Prop :=
  ∀ n, P7033389687311828980.a n = A045949 n

end A045949

/-! ## A045949.P15668362808492537622

`A269064(2*n+1)-A005448(n+1)`
-/

namespace A045949.P15668362808492537622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269064 (2 * n + 1) - A005448 (n + 1)

end

end A045949.P15668362808492537622

namespace A045949

/-- `A269064(2*n+1)-A005448(n+1)` -/
def P15668362808492537622.Spec : Prop :=
  ∀ n, P15668362808492537622.a n = A045949 n

end A045949

/-! ## A045949.P8123923296570436841

`A212683(2*n+1)-A212683(n+1)`
-/

namespace A045949.P8123923296570436841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212683 (2 * n + 1) - A212683 (n + 1)

end

end A045949.P8123923296570436841

namespace A045949

/-- `A212683(2*n+1)-A212683(n+1)` -/
def P8123923296570436841.Spec : Prop :=
  ∀ n, P8123923296570436841.a n = A045949 n

end A045949

/-! ## A045949.P3216550747576209478

`A269064(2*n+1)-(A033436(2*n+1)+1)`
-/

namespace A045949.P3216550747576209478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269064 (2 * n + 1) - (A033436 (2 * n + 1) + 1)

end

end A045949.P3216550747576209478

namespace A045949

/-- `A269064(2*n+1)-(A033436(2*n+1)+1)` -/
def P3216550747576209478.Spec : Prop :=
  ∀ n, P3216550747576209478.a n = A045949 n

end A045949

/-!
# A045950: Number of upward triangles in a Star of David matchstick arrangement of size n.

The programs for A045950, the canonical program `A045950.P7300917371701113432` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045950 has offset 0).

The definition of A045950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045950.P1088405305222917383

`ogf((10x+19x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A045950.P1088405305222917383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 19, 1] [1, -4, 6, -4, 1] n

end

end A045950.P1088405305222917383

namespace A045950

/-- `ogf((10x+19x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P1088405305222917383.Spec : Prop :=
  ∀ n, P1088405305222917383.a n = A045950 n

end A045950

/-! ## A045950.P15533775684255780904

`n*(n*(10*n+9)+1)/2`
-/

namespace A045950.P15533775684255780904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n * (10 * n + 9) + 1) : ℚ) / 2

end

end A045950.P15533775684255780904

namespace A045950

/-- `n*(n*(10*n+9)+1)/2` -/
def P15533775684255780904.Spec : Prop :=
  ∀ n, P15533775684255780904.a n = (A045950 n : ℚ)

theorem P15533775684255780904.correct : P15533775684255780904.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A045950, Nat.add_sub_cancel, A045950.P15533775684255780904.a, A045950.P7300917371701113432.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A045950, Nat.add_sub_cancel, A045950.P15533775684255780904.a, A045950.P7300917371701113432.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A045950

/-! ## A045950.P7300917371701113432

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=59, a(3)=177`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045950

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7300917371701113432.Spec : Prop :=
  ∀ n, P7300917371701113432.a n = A045950 n

theorem P7300917371701113432.correct : P7300917371701113432.Spec := by
  intro n
  simp only [A045950]

end A045950

/-! ## A045950.P17998329151110065299

`(n+1)*5*n²-C(n, 2)`
-/

namespace A045950.P17998329151110065299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (5 * n ^ 2) : ℤ) - (Nat.choose n 2 : ℤ)

end

end A045950.P17998329151110065299

namespace A045950

/-- `(n+1)*5*n²-C(n, 2)` -/
def P17998329151110065299.Spec : Prop :=
  ∀ n, P17998329151110065299.a n = A045950 n

end A045950

/-! ## A045950.P15153761076319483685

`∑[A153780(n)-n]+n`
-/

namespace A045950.P15153761076319483685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A045950.P15153761076319483685

namespace A045950

/-- `∑[A153780(n)-n]+n` -/
def P15153761076319483685.Spec : Prop :=
  ∀ n, P15153761076319483685.a n = A045950 n

end A045950

/-! ## A045950.P16272969461377483057

`∑[n]+n*A135705(n)`
-/

namespace A045950.P16272969461377483057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * A135705 n

end

end A045950.P16272969461377483057

namespace A045950

/-- `∑[n]+n*A135705(n)` -/
def P16272969461377483057.Spec : Prop :=
  ∀ n, P16272969461377483057.a n = A045950 n

end A045950

/-! ## A045950.P17029115953858574085

`n*A062786(n+1)-∑[n]`
-/

namespace A045950.P17029115953858574085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062786 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A045950.P17029115953858574085

namespace A045950

/-- `n*A062786(n+1)-∑[n]` -/
def P17029115953858574085.Spec : Prop :=
  ∀ n, P17029115953858574085.a n = A045950 n

end A045950

/-! ## A045950.P15525263905824708516

`abs((1-10*n)*A000217(n)-n)`
-/

namespace A045950.P15525263905824708516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (10 * n : ℤ)) * A000217 n - (n : ℤ)|

end

end A045950.P15525263905824708516

namespace A045950

/-- `abs((1-10*n)*A000217(n)-n)` -/
def P15525263905824708516.Spec : Prop :=
  ∀ n, P15525263905824708516.a n = A045950 n

end A045950

/-! ## A045950.P2152254525806947222

`A220443(n)+A007588(n)`
-/

namespace A045950.P2152254525806947222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A007588 n

end

end A045950.P2152254525806947222

namespace A045950

/-- `A220443(n)+A007588(n)` -/
def P2152254525806947222.Spec : Prop :=
  ∀ n, P2152254525806947222.a n = A045950 n

end A045950

/-! ## A045950.P170745803530117975

`A244725(n)+A022267(n)`
-/

namespace A045950.P170745803530117975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + A022267 n

end

end A045950.P170745803530117975

namespace A045950

/-- `A244725(n)+A022267(n)` -/
def P170745803530117975.Spec : Prop :=
  ∀ n, P170745803530117975.a n = A045950 n

end A045950

/-! ## A045950.P14349498050168267136

`A258582(n)+A050409(n)`
-/

namespace A045950.P14349498050168267136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 n + A050409 n

end

end A045950.P14349498050168267136

namespace A045950

/-- `A258582(n)+A050409(n)` -/
def P14349498050168267136.Spec : Prop :=
  ∀ n, P14349498050168267136.a n = A045950 n

end A045950

/-! ## A045950.P17999209337598570872

`A275709(n)+A115519(n)`
-/

namespace A045950.P17999209337598570872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n + A115519 n

end

end A045950.P17999209337598570872

namespace A045950

/-- `A275709(n)+A115519(n)` -/
def P17999209337598570872.Spec : Prop :=
  ∀ n, P17999209337598570872.a n = A045950 n

end A045950

/-! ## A045950.P4005842055457752592

`A256646(n)+A152619(n)`
-/

namespace A045950.P4005842055457752592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256646 n + A152619 n

end

end A045950.P4005842055457752592

namespace A045950

/-- `A256646(n)+A152619(n)` -/
def P4005842055457752592.Spec : Prop :=
  ∀ n, P4005842055457752592.a n = A045950 n

end A045950

/-! ## A045950.P10133244482695371316

`A395241(n)+A059270(n)`
-/

namespace A045950.P10133244482695371316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n + A059270 n

end

end A045950.P10133244482695371316

namespace A045950

/-- `A395241(n)+A059270(n)` -/
def P10133244482695371316.Spec : Prop :=
  ∀ n, P10133244482695371316.a n = A045950 n

end A045950

/-! ## A045950.P7509208410985036791

`A316224(n)-A115519(n)`
-/

namespace A045950.P7509208410985036791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n - A115519 n

end

end A045950.P7509208410985036791

namespace A045950

/-- `A316224(n)-A115519(n)` -/
def P7509208410985036791.Spec : Prop :=
  ∀ n, P7509208410985036791.a n = A045950 n

end A045950

/-! ## A045950.P14988647433824944486

`A016755(n)-A024215(n+1)`
-/

namespace A045950.P14988647433824944486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A024215 (n + 1)

end

end A045950.P14988647433824944486

namespace A045950

/-- `A016755(n)-A024215(n+1)` -/
def P14988647433824944486.Spec : Prop :=
  ∀ n, P14988647433824944486.a n = A045950 n

end A045950

/-! ## A045950.P10173195792045045607

`A027849(n)-A060544(n+1)`
-/

namespace A045950.P10173195792045045607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n - A060544 (n + 1)

end

end A045950.P10173195792045045607

namespace A045950

/-- `A027849(n)-A060544(n+1)` -/
def P10173195792045045607.Spec : Prop :=
  ∀ n, P10173195792045045607.a n = A045950 n

end A045950

/-! ## A045950.P4243346114175748543

`A064096(n)-A034856(n+1)`
-/

namespace A045950.P4243346114175748543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064096 n - A034856 (n + 1)

end

end A045950.P4243346114175748543

namespace A045950

/-- `A064096(n)-A034856(n+1)` -/
def P4243346114175748543.Spec : Prop :=
  ∀ n, P4243346114175748543.a n = A045950 n

end A045950

/-! ## A045950.P3990485722644162672

`A193218(n+1)-A081438(n)`
-/

namespace A045950.P3990485722644162672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193218 (n + 1) - A081438 n

end

end A045950.P3990485722644162672

namespace A045950

/-- `A193218(n+1)-A081438(n)` -/
def P3990485722644162672.Spec : Prop :=
  ∀ n, P3990485722644162672.a n = A045950 n

end A045950

/-! ## A045950.P13775778292807005471

`A371532(n)-A100179(n+1)`
-/

namespace A045950.P13775778292807005471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371532 n - A100179 (n + 1)

end

end A045950.P13775778292807005471

namespace A045950

/-- `A371532(n)-A100179(n+1)` -/
def P13775778292807005471.Spec : Prop :=
  ∀ n, P13775778292807005471.a n = A045950 n

end A045950

/-!
# A045952: a(n) = 2^(2*n-1)*binomial(2*n,n) + 2^(4*n-1).

The programs for A045952, the canonical program `A045952.P15750461818427116641` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045952 has offset 0).

The definition of A045952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045952.P16915208596179775104

`∑{#}[n, 2^(2*n)*C(2*n, #)]`
-/

namespace A045952.P16915208596179775104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ (2 * n) * Nat.choose (2 * n) k

end

end A045952.P16915208596179775104

namespace A045952

/-- `∑{#}[n, 2^(2*n)*C(2*n, #)]` -/
def P16915208596179775104.Spec : Prop :=
  ∀ n, (P16915208596179775104.a n : ℤ) = A045952 n

end A045952

/-! ## A045952.P15750461818427116641

`2^(2*n-1)*C(2*n, n)+2^(4*n-1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045952

/-- `2^(2*n-1)*C(2*n, n)+2^(4*n-1)` -/
def P15750461818427116641.Spec : Prop :=
  ∀ n, P15750461818427116641.a n = (A045952 n : ℚ)

end A045952

/-! ## A045952.P14282986457602177964

`8/n*((2*n-1)*a(n-1)+2^(4*n-5))` with `a(0)=1`
-/

namespace A045952.P14282986457602177964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 / (n : ℚ) * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1) + (2 : ℚ) ^ ((4 * n : ℤ) - 5 : ℤ))

end

end A045952.P14282986457602177964

namespace A045952

/-- `8/n*((2*n-1)*a(n-1)+2^(4*n-5))` -/
def P14282986457602177964.Spec : Prop :=
  ∀ n, P14282986457602177964.a n = (A045952 n : ℚ)

end A045952

/-! ## A045952.P18040627623958436925

`4^n*A032443(n)`
-/

namespace A045952.P18040627623958436925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A032443 n

end

end A045952.P18040627623958436925

namespace A045952

/-- `4^n*A032443(n)` -/
def P18040627623958436925.Spec : Prop :=
  ∀ n, P18040627623958436925.a n = A045952 n

end A045952

/-! ## A045952.P1045080546996273948

`(A226881(2*n)+1)*4^n`
-/

namespace A045952.P1045080546996273948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226881 (2 * n) + 1) * (4 ^ n : ℤ)

end

end A045952.P1045080546996273948

namespace A045952

/-- `(A226881(2*n)+1)*4^n` -/
def P1045080546996273948.Spec : Prop :=
  ∀ n, P1045080546996273948.a n = A045952 n

end A045952

/-! ## A045952.P4483373874148246083

`4^n*ceil(A081672(2*n)/2)`
-/

namespace A045952.P4483373874148246083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * ⌈(A081672 (2 * n) : ℚ) / 2⌉

end

end A045952.P4483373874148246083

namespace A045952

/-- `4^n*ceil(A081672(2*n)/2)` -/
def P4483373874148246083.Spec : Prop :=
  ∀ n, P4483373874148246083.a n = A045952 n

end A045952

/-! ## A045952.P18389490895738563517

`(A261681(2*n)+1)/2*4^n`
-/

namespace A045952.P18389490895738563517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261681 (2 * n) + 1 : ℚ) / 2 * (4 ^ n : ℚ)

end

end A045952.P18389490895738563517

namespace A045952

/-- `(A261681(2*n)+1)/2*4^n` -/
def P18389490895738563517.Spec : Prop :=
  ∀ n, P18389490895738563517.a n = (A045952 n : ℚ)

end A045952

/-! ## A045952.P1047702260876953794

`(record[A126869(n)]+4^n)/2*4^n`
-/

namespace A045952.P1047702260876953794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (4 ^ n : ℤ) : ℚ) / 2 * (4 ^ n : ℚ)

end

end A045952.P1047702260876953794

namespace A045952

/-- `(record[A126869(n)]+4^n)/2*4^n` -/
def P1047702260876953794.Spec : Prop :=
  ∀ n, P1047702260876953794.a n = (A045952 n : ℚ)

end A045952

/-! ## A045952.P4576253336202811398

`(A098430(n)+A001025(n))/2`
-/

namespace A045952.P4576253336202811398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098430 n + A001025 n : ℚ) / 2

end

end A045952.P4576253336202811398

namespace A045952

/-- `(A098430(n)+A001025(n))/2` -/
def P4576253336202811398.Spec : Prop :=
  ∀ n, P4576253336202811398.a n = (A045952 n : ℚ)

end A045952

/-! ## A045952.P6114497780353766032

`A000302(n)*A027306(2*n)`
-/

namespace A045952.P6114497780353766032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A027306 (2 * n)

end

end A045952.P6114497780353766032

namespace A045952

/-- `A000302(n)*A027306(2*n)` -/
def P6114497780353766032.Spec : Prop :=
  ∀ n, P6114497780353766032.a n = A045952 n

end A045952

/-!
# A045953: Numbers m such that m^2 can be obtained from m by inserting an internal block of (contiguous) digits.

The programs for A045953, there is no canonical definition to state claims against.
-/

/-! ## A045953.P6025838508638935714

`∩[A046838(n+1), A046851(n+1)]`
-/

namespace A045953.P6025838508638935714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045953.P6025838508638935714

/-! ## A045953.P9889798862415724772

`∩[A046838(n+1), A086457(n+1)]`
-/

namespace A045953.P9889798862415724772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045953.P9889798862415724772

/-! ## A045953.P13974606982684283941

`∩[A046838(n+1), A089951(n+1)]`
-/

namespace A045953.P13974606982684283941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045953.P13974606982684283941

/-! ## A045953.P6035136969753775208

`A046851(lt[A000009(n), A130108(n+1)])`
-/

namespace A045953.P6035136969753775208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A045953.P6035136969753775208

/-! ## A045953.P4826213784904624782

`A046851(lt[A261762(3*n+4), A245197(3*n+1)])`
-/

namespace A045953.P4826213784904624782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261762 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245197 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A045953.P4826213784904624782

/-!
# A045954: Even-Lucky-Numbers: generated by a sieve process like that for Lucky numbers but starting with even numbers.

The programs for A045954, there is no canonical definition to state claims against.
-/

/-! ## A045954.P6435005140800309030

`A111039(n+1)+1`
-/

namespace A045954.P6435005140800309030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111039 (n + 1) + 1

end

end A045954.P6435005140800309030

/-! ## A045954.P13245075936298698527

`2*A045989(1+n)`
-/

namespace A045954.P13245075936298698527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045989 (1 + n)

end

end A045954.P13245075936298698527

/-! ## A045954.P3809492562766331471

`2^(log2(A045989(n+1))+1)`
-/

namespace A045954.P3809492562766331471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (A045989 (n + 1) : ℝ) + 1)

end

end A045954.P3809492562766331471

/-! ## A045954.P15995183828052924602

`A000959(n+1)-A118125(n+1)`
-/

namespace A045954.P15995183828052924602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - A118125 (n + 1)

end

end A045954.P15995183828052924602

/-! ## A045954.P10505305702315093093

`sqrt(A032598(n+1))-A118125(n+1)`
-/

namespace A045954.P10505305702315093093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (n + 1) : ℝ) - (A118125 (n + 1) : ℝ)

end

end A045954.P10505305702315093093

/-! ## A045954.P4306877565681340542

`A139269(n+1)/2-A118125(n+1)`
-/

namespace A045954.P4306877565681340542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139269 (n + 1) : ℚ) / 2 - (A118125 (n + 1) : ℚ)

end

end A045954.P4306877565681340542

/-! ## A045954.P358161870081841377

`A045989(A000027(n+1))+A045989(n+1)`
-/

namespace A045954.P358161870081841377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045989 (A000027 (n + 1)).toNat + A045989 (n + 1)

end

end A045954.P358161870081841377

/-! ## A045954.P14665590300928278118

`A045989(n+1)+or(A000007(n), A045989(n+1))`
-/

namespace A045954.P14665590300928278118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045989 (n + 1) + Int.lor (A000007 n) (A045989 (n + 1))

end

end A045954.P14665590300928278118

/-! ## A045954.P16637592174655070002

`A032602(n+1)-(A118125(n+1)+A000040(n+1))`
-/

namespace A045954.P16637592174655070002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - (A118125 (n + 1) + A000040 (n + 1))

end

end A045954.P16637592174655070002

/-! ## A045954.P12998420595121983837

`A032601(n+1)/A000040(n+1)-A118125(n+1)`
-/

namespace A045954.P12998420595121983837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A118125 (n + 1) : ℚ)

end

end A045954.P12998420595121983837

/-! ## A045954.P14738897713431945901

`A032599(n+1)/A032598(n+1)-A118125(n+1)`
-/

namespace A045954.P14738897713431945901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032599 (n + 1) : ℚ) / (A032598 (n + 1) : ℚ) - (A118125 (n + 1) : ℚ)

end

end A045954.P14738897713431945901

/-! ## A045954.P3803074175295007987

`A032603(n+1)%A001750(n+1)-A118125(n+1)`
-/

namespace A045954.P3803074175295007987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032603 (n + 1)) (A001750 (n + 1)) - A118125 (n + 1)

end

end A045954.P3803074175295007987

/-! ## A045954.P4943017733879478055

`A032598(n+1)%A139269(n+1)-A118125(n+1)`
-/

namespace A045954.P4943017733879478055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032598 (n + 1)) (A139269 (n + 1)) - A118125 (n + 1)

end

end A045954.P4943017733879478055

/-! ## A045954.P10159058447499511182

`A237122(n+1)%A139269(n+1)-A118125(n+1)`
-/

namespace A045954.P10159058447499511182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237122 (n + 1)) (A139269 (n + 1)) - A118125 (n + 1)

end

end A045954.P10159058447499511182

/-! ## A045954.P15556958600964105650

`∪[A031879(n+1), A043772(n+1)]-A118125(n+1)`
-/

namespace A045954.P15556958600964105650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A118125 (n + 1)

end

end A045954.P15556958600964105650

/-! ## A045954.P3149979988863839551

`A003309(n+1)-(A256486(n+1)+A118125(n+1))`
-/

namespace A045954.P3149979988863839551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - (A256486 (n + 1) + A118125 (n + 1))

end

end A045954.P3149979988863839551

/-! ## A045954.P3425110750947378971

`A004277(A045989(n+1))`
-/

namespace A045954.P3425110750947378971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045989 (n + 1)).toNat

end

end A045954.P3425110750947378971

/-! ## A045954.P14895728061191777629

`A005408(A045989(n+1)-1)+1`
-/

namespace A045954.P14895728061191777629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A045989 (n + 1) - 1).toNat + 1

end

end A045954.P14895728061191777629

/-! ## A045954.P12789650726209812865

`A005843(A045989(n+1)%A006687(n+1))`
-/

namespace A045954.P12789650726209812865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A045989 (n + 1)) (A006687 (n + 1))).toNat

end

end A045954.P12789650726209812865

/-! ## A045954.P3132521877365671538

`A142720(A217581(n+1))+A005408(A045989(n+1))`
-/

namespace A045954.P3132521877365671538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142720 (A217581 (n + 1)).toNat + A005408 (A045989 (n + 1)).toNat

end

end A045954.P3132521877365671538

/-!
# A045955: Twin Even-Lucky-Numbers: lower terms.

The programs for A045955, there is no canonical definition to state claims against.
-/

/-! ## A045955.P7578600788158546102

`A045957(n+1)-1`
-/

namespace A045955.P7578600788158546102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1) - 1

end

end A045955.P7578600788158546102

/-! ## A045955.P17952284726622715075

`A045956(n+1)-2`
-/

namespace A045955.P17952284726622715075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045956 (n + 1) - 2

end

end A045955.P17952284726622715075

/-! ## A045955.P4820975723005305945

`A099837(A105154(n))+A045957(n+1)`
-/

namespace A045955.P4820975723005305945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A105154 n).toNat + A045957 (n + 1)

end

end A045955.P4820975723005305945

/-! ## A045955.P6381181570343787024

`A000027(xor(1, A045957(n+1)))`
-/

namespace A045955.P6381181570343787024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (A045957 (n + 1))).toNat

end

end A045955.P6381181570343787024

/-! ## A045955.P1929472793642578774

`xor(A000034(2*n), A045957(n+1))`
-/

namespace A045955.P1929472793642578774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A045957 (n + 1))

end

end A045955.P1929472793642578774

/-! ## A045955.P16186636159248341258

`∩[A045954(n+1)-2, A045954(n+1)]`
-/

namespace A045955.P16186636159248341258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045955.P16186636159248341258

/-! ## A045955.P12144205287005304687

`A046666(A045956(n+1))`
-/

namespace A045955.P12144205287005304687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A045956 (n + 1)).toNat

end

end A045955.P12144205287005304687

/-! ## A045955.P9258744548825601056

`A004442(A045957(n+1))`
-/

namespace A045955.P9258744548825601056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A045957 (n + 1)).toNat

end

end A045955.P9258744548825601056

/-! ## A045955.P12423007617590334454

`A023444(A045956(n+1))`
-/

namespace A045955.P12423007617590334454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A045956 (n + 1)).toNat

end

end A045955.P12423007617590334454

/-! ## A045955.P13466775501757480507

`xor(A007318(C(n, 2)), A045957(n+1))`
-/

namespace A045955.P13466775501757480507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.choose n 2)) (A045957 (n + 1))

end

end A045955.P13466775501757480507

/-! ## A045955.P5102410540318488823

`xor(A007318(∑[n]), A045957(n+1))`
-/

namespace A045955.P5102410540318488823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A045957 (n + 1))

end

end A045955.P5102410540318488823

/-!
# A045956: Twin even-lucky-numbers: upper terms.

The programs for A045956, there is no canonical definition to state claims against.
-/

/-! ## A045956.P508600205816419843

`A045957(n+1)+1`
-/

namespace A045956.P508600205816419843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1) + 1

end

end A045956.P508600205816419843

/-! ## A045956.P13848765872555442313

`A045955(n+1)+2`
-/

namespace A045956.P13848765872555442313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045955 (n + 1) + 2

end

end A045956.P13848765872555442313

/-! ## A045956.P7169914174346713153

`∩[A045954(n+1)+2, A045954(n+1)]`
-/

namespace A045956.P7169914174346713153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045956.P7169914174346713153

/-! ## A045956.P11086575171091069362

`A009056(A045955(n+1))`
-/

namespace A045956.P11086575171091069362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A045955 (n + 1)).toNat

end

end A045956.P11086575171091069362

/-! ## A045956.P3616606339302518136

`A014681(A045957(n+1))`
-/

namespace A045956.P3616606339302518136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A045957 (n + 1)).toNat

end

end A045956.P3616606339302518136

/-! ## A045956.P5591328352606039357

`2*A008619(A045955(-xor(n, -1)))`
-/

namespace A045956.P5591328352606039357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 (A045955 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A045956.P5591328352606039357

/-!
# A045957: Twin even-lucky-numbers: middle terms.

The programs for A045957, there is no canonical definition to state claims against.
-/

/-! ## A045957.P14850735199375815643

`A045955(n+1)+1`
-/

namespace A045957.P14850735199375815643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045955 (n + 1) + 1

end

end A045957.P14850735199375815643

/-! ## A045957.P15732480419857081509

`A045956(n+1)-1`
-/

namespace A045957.P15732480419857081509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045956 (n + 1) - 1

end

end A045957.P15732480419857081509

/-! ## A045957.P14851719193093216395

`or(1, A045955(-xor(n, -1)))`
-/

namespace A045957.P14851719193093216395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045955 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A045957.P14851719193093216395

/-! ## A045957.P2472437578706394364

`or(1, A045955(ϕ²-(ϕ-n)))`
-/

namespace A045957.P2472437578706394364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045955 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A045957.P2472437578706394364

/-! ## A045957.P14676042573912560939

`A076479(A138139(n+1))+A045956(n+1)`
-/

namespace A045957.P14676042573912560939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A138139 (n + 1)).toNat + A045956 (n + 1)

end

end A045957.P14676042573912560939

/-! ## A045957.P900401439182316563

`xor(1, A045955(A008619(2*n)))`
-/

namespace A045957.P900401439182316563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A045955 (A008619 (2 * n)).toNat)

end

end A045957.P900401439182316563

/-! ## A045957.P10092581748909688980

`A004442(A045955(n+1))`
-/

namespace A045957.P10092581748909688980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A045955 (n + 1)).toNat

end

end A045957.P10092581748909688980

/-! ## A045957.P11108259735139987804

`A014681(A045956(n+1))`
-/

namespace A045957.P11108259735139987804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A045956 (n + 1)).toNat

end

end A045957.P11108259735139987804

/-! ## A045957.P8110686560387546853

`A023444(A045956(n+1)+1)`
-/

namespace A045957.P8110686560387546853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A045956 (n + 1) + 1).toNat

end

end A045957.P8110686560387546853

/-!
# A045958: Numbers k in A045954 such that k+1 is prime.

The programs for A045958, there is no canonical definition to state claims against.
-/

/-! ## A045958.P7600924177592728615

`p?[A045954(n+1)+1]-1`
-/

namespace A045958.P7600924177592728615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A045958.P7600924177592728615

/-! ## A045958.P8859973103296101505

`∩[A045954(n+1), A055670(n+1)-2]`
-/

namespace A045958.P8859973103296101505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045958.P8859973103296101505

/-! ## A045958.P13831799304739255266

`∩[A006093(n+1), A045954(n+1)]`
-/

namespace A045958.P13831799304739255266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045958.P13831799304739255266

/-! ## A045958.P15740083687217206606

`∩[A045954(n+1), A068499(n+1)]`
-/

namespace A045958.P15740083687217206606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045958.P15740083687217206606

/-! ## A045958.P5267724137721523677

`∩[A008864(n+1)-2, A045954(n+1)]`
-/

namespace A045958.P5267724137721523677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045958.P5267724137721523677

/-! ## A045958.P14215741464377631353

`∩[A045954(n+1), A299763(n+1)-2]`
-/

namespace A045958.P14215741464377631353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045958.P14215741464377631353

/-! ## A045958.P2499953064752961125

`∩[2*A005097(n+1), A045954(n+1)]`
-/

namespace A045958.P2499953064752961125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045958.P2499953064752961125

/-! ## A045958.P4915591550090124783

`∩[2*A102781(n+1), A045954(n+1)]`
-/

namespace A045958.P4915591550090124783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045958.P4915591550090124783

/-! ## A045958.P7801572858229593560

`A003958(p?[A045954(n+1)+1])`
-/

namespace A045958.P7801572858229593560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045958.P7801572858229593560

/-! ## A045958.P11484906468215810756

`∩[A045954(n+1), A173919(n+1)]`
-/

namespace A045958.P11484906468215810756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045958.P11484906468215810756

/-! ## A045958.P2771352577359584687

`A326186(p?[A045954(n+1)+1])`
-/

namespace A045958.P2771352577359584687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045958.P2771352577359584687

/-! ## A045958.P14351308840444685641

`record[2*A195508(A045989(n+1))]`
-/

namespace A045958.P14351308840444685641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195508 (A045989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045958.P14351308840444685641

/-! ## A045958.P1005741954509662011

`A000010(record[A108077(A045954(n+1))])`
-/

namespace A045958.P1005741954509662011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045958.P1005741954509662011

/-! ## A045958.P5869811217117185738

`A000010(record[A166333(A045954(n+1))])`
-/

namespace A045958.P5869811217117185738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045958.P5869811217117185738

/-! ## A045958.P5067541247105280517

`record[A056737(A045954(n+1)+1)]`
-/

namespace A045958.P5067541247105280517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A045954 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045958.P5067541247105280517

/-! ## A045958.P6227097586135626749

`A002322(p?[A045954(n+1)+1])`
-/

namespace A045958.P6227097586135626749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045958.P6227097586135626749

/-! ## A045958.P7206771864157557922

`A004442(p?[A045954(n+1)+1])`
-/

namespace A045958.P7206771864157557922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045958.P7206771864157557922

/-! ## A045958.P13437562282764000807

`A065190(p?[A045954(n+1)+1])`
-/

namespace A045958.P13437562282764000807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045958.P13437562282764000807

/-! ## A045958.P12093130221579794212

`A002322(p?[A004442(A045954(n+1))])`
-/

namespace A045958.P12093130221579794212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045958.P12093130221579794212

/-! ## A045958.P10887052676409203581

`A003958(p?[A004442(A045954(n+1))])`
-/

namespace A045958.P10887052676409203581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045958.P10887052676409203581

/-!
# A045959: Numbers k in A045954 such that k-1 is prime.

The programs for A045959, there is no canonical definition to state claims against.
-/

/-! ## A045959.P15649155385530898494

`p?[A045954(n+1)-1]+1`
-/

namespace A045959.P15649155385530898494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A045959.P15649155385530898494

/-! ## A045959.P3034672758717732889

`p?[2*A045989(n+1)-1]+1`
-/

namespace A045959.P3034672758717732889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045989 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A045959.P3034672758717732889

/-! ## A045959.P7386492895562615676

`∩[A045954(n+1), A055670(n+1)]`
-/

namespace A045959.P7386492895562615676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045959.P7386492895562615676

/-! ## A045959.P17941523396703893264

`∩[A008864(n+1), A045954(n+1)]`
-/

namespace A045959.P17941523396703893264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045959.P17941523396703893264

/-! ## A045959.P10936192204206867504

`∩[A045954(n+1), A299763(n+1)]`
-/

namespace A045959.P10936192204206867504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045959.P10936192204206867504

/-! ## A045959.P1427491025861056699

`∩[A006093(n+1)+2, A045954(n+1)]`
-/

namespace A045959.P1427491025861056699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045959.P1427491025861056699

/-! ## A045959.P814419426651303295

`∩[A045954(n+1), A068499(n+1)+2]`
-/

namespace A045959.P814419426651303295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045959.P814419426651303295

/-! ## A045959.P14316737013857383604

`∩[2*A006254(n+1), A045954(n+1)]`
-/

namespace A045959.P14316737013857383604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045959.P14316737013857383604

/-! ## A045959.P17474307342526395070

`∩[2*A111333(n+2), A045954(n+2)]`
-/

namespace A045959.P17474307342526395070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111333 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045959.P17474307342526395070

/-! ## A045959.P15355664647019621939

`A003959(p?[A045954(n+1)-1])`
-/

namespace A045959.P15355664647019621939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P15355664647019621939

/-! ## A045959.P7222219546055286447

`∩[A045954(n+1), A173919(n+1)+2]`
-/

namespace A045959.P7222219546055286447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045959.P7222219546055286447

/-! ## A045959.P16508161212807262641

`A115607(p?[A045954(n+1)-1])`
-/

namespace A045959.P16508161212807262641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P16508161212807262641

/-! ## A045959.P11307046488766764904

`A000593(p?[A045954(n+1)-1])`
-/

namespace A045959.P11307046488766764904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P11307046488766764904

/-! ## A045959.P17781532025802275052

`A001615(p?[A045954(n+1)-1])`
-/

namespace A045959.P17781532025802275052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P17781532025802275052

/-! ## A045959.P3316364817148989393

`A034448(p?[A045954(n+1)-1])`
-/

namespace A045959.P3316364817148989393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P3316364817148989393

/-! ## A045959.P12912875005796400954

`A036288(p?[A045954(n+1)-1])`
-/

namespace A045959.P12912875005796400954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P12912875005796400954

/-! ## A045959.P13160247558453762264

`A055672(p?[A045954(n+1)-1])`
-/

namespace A045959.P13160247558453762264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P13160247558453762264

/-! ## A045959.P3607584655777973297

`A133265(p?[A045954(n+1)-1])`
-/

namespace A045959.P3607584655777973297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P3607584655777973297

/-! ## A045959.P9157077481882678009

`p?[A143051(A045954(n+2))]+1`
-/

namespace A045959.P9157077481882678009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A045954 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A045959.P9157077481882678009

/-! ## A045959.P8038816547219522392

`A000593(p?[A014681(A045954(n+1))])`
-/

namespace A045959.P8038816547219522392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045959.P8038816547219522392

/-!
# A045960: Palindromic even lucky numbers.

The programs for A045960, there is no canonical definition to state claims against.
-/

/-! ## A045960.P7772456780800366616

`∩[A002113(n+1), A045954(n+1)]`
-/

namespace A045960.P7772456780800366616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045960.P7772456780800366616

/-! ## A045960.P18032803066377632635

`∩[A029951(n+1), A045954(n+1)]`
-/

namespace A045960.P18032803066377632635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045960.P18032803066377632635

/-! ## A045960.P3361278765562086331

`∩[A045954(n+1), A083158(n+1)]`
-/

namespace A045960.P3361278765562086331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045960.P3361278765562086331

/-! ## A045960.P14554495227671941249

`∩[A045954(n+1), ∑[A086862(n+1)]]`
-/

namespace A045960.P14554495227671941249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045960.P14554495227671941249

/-! ## A045960.P6670335738945032625

`∩[2*A045989(n+1), A002113(n+1)]`
-/

namespace A045960.P6670335738945032625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045960.P6670335738945032625

/-! ## A045960.P12168896128900404044

`∩[2*A045989(n+1), A029951(n+1)]`
-/

namespace A045960.P12168896128900404044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045960.P12168896128900404044

/-!
# A045961: Twin A045954's (middle terms) that are primes.

The programs for A045961, there is no canonical definition to state claims against.
-/

/-! ## A045961.P2662973359469379167

`p?[A045957(n+1)]`
-/

namespace A045961.P2662973359469379167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045961.P2662973359469379167

/-! ## A045961.P9223854603232909496

`p?[A045955(n+1)+1]`
-/

namespace A045961.P9223854603232909496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045955 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045961.P9223854603232909496

/-! ## A045961.P6135270985920284355

`p?[A045956(n+1)-1]`
-/

namespace A045961.P6135270985920284355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045956 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045961.P6135270985920284355

/-! ## A045961.P3885035104472935020

`∩[A003629(n+1), A045957(n+1)]`
-/

namespace A045961.P3885035104472935020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P3885035104472935020

/-! ## A045961.P1995152429504021166

`∩[A042999(n+1), A045957(n+1)]`
-/

namespace A045961.P1995152429504021166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P1995152429504021166

/-! ## A045961.P9826201789064892688

`∩[A045957(n+1), A175865(n+1)]`
-/

namespace A045961.P9826201789064892688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P9826201789064892688

/-! ## A045961.P14170107595306989977

`∩[A045957(n+1), A059265(n+1)]`
-/

namespace A045961.P14170107595306989977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P14170107595306989977

/-! ## A045961.P15290900747142436055

`∩[A045957(n+1), A059263(n+1)]`
-/

namespace A045961.P15290900747142436055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P15290900747142436055

/-! ## A045961.P8535486368321614731

`∩[A045957(n+1), A059314(n+1)]`
-/

namespace A045961.P8535486368321614731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P8535486368321614731

/-! ## A045961.P15177103487168992963

`∩[A045957(n+1), A059311(n+1)]`
-/

namespace A045961.P15177103487168992963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P15177103487168992963

/-! ## A045961.P6443182634649128573

`∩[A040100(n+1), A045957(n+1)]`
-/

namespace A045961.P6443182634649128573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P6443182634649128573

/-! ## A045961.P7155832438655254152

`∩[A045957(n+1), A380468(n+1)]`
-/

namespace A045961.P7155832438655254152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P7155832438655254152

/-! ## A045961.P16467922829824702222

`∩[A040993(n+1), A045957(n+1)]`
-/

namespace A045961.P16467922829824702222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P16467922829824702222

/-! ## A045961.P11884304993149980666

`∩[A045316(n+1), A045957(n+1)]`
-/

namespace A045961.P11884304993149980666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P11884304993149980666

/-! ## A045961.P4957589059625923466

`∩[A045957(n+1), A212375(n+1)]`
-/

namespace A045961.P4957589059625923466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P4957589059625923466

/-! ## A045961.P5571040832253962915

`∩[A045957(n+1), A059309(n+1)]`
-/

namespace A045961.P5571040832253962915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P5571040832253962915

/-! ## A045961.P2842571072820579698

`∩[A045957(n+1), A059336(n+1)]`
-/

namespace A045961.P2842571072820579698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P2842571072820579698

/-! ## A045961.P1135806412572839490

`∩[A014662(n+1), A045957(n+1)]`
-/

namespace A045961.P1135806412572839490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P1135806412572839490

/-! ## A045961.P17392556177789155471

`∩[A045957(n+1), A091317(n+1)]`
-/

namespace A045961.P17392556177789155471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P17392556177789155471

/-! ## A045961.P14028576858271590434

`∩[A045957(n+1), A059315(n+1)]`
-/

namespace A045961.P14028576858271590434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045961.P14028576858271590434

/-!
# A045962: Numbers k in A045954 such that 2*k+1 is prime.

The programs for A045962, there is no canonical definition to state claims against.
-/

/-! ## A045962.P10026222223253987681

`∩[A005097(n+1), A045954(n+1)]`
-/

namespace A045962.P10026222223253987681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045962.P10026222223253987681

/-! ## A045962.P13404978474829945409

`∩[A045954(n+1), A102781(n+1)]`
-/

namespace A045962.P13404978474829945409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045962.P13404978474829945409

/-! ## A045962.P10692004906238396388

`∩[A006254(n+1)-1, A045954(n+1)]`
-/

namespace A045962.P10692004906238396388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045962.P10692004906238396388

/-! ## A045962.P10607014001897525906

`∩[A045954(n+1), A111333(n+1)-1]`
-/

namespace A045962.P10607014001897525906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045962.P10607014001897525906

/-! ## A045962.P14744526436929141369

`filter[A045954(n+1), A101264(#)]`
-/

namespace A045962.P14744526436929141369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A045962.P14744526436929141369

/-! ## A045962.P17366200730479988213

`∩[A045954(n+1), A079111(n+1)]`
-/

namespace A045962.P17366200730479988213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045962.P17366200730479988213

/-! ## A045962.P8601345126388199735

`record[A195508(A045954(n+1))]`
-/

namespace A045962.P8601345126388199735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045962.P8601345126388199735

/-! ## A045962.P10360949316053115401

`record[A195508(2*A045989(n+1))]`
-/

namespace A045962.P10360949316053115401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (2 * A045989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045962.P10360949316053115401

/-! ## A045962.P17448765204823313940

`A249122(p?[A005408(A045954(n+1))])`
-/

namespace A045962.P17448765204823313940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045962.P17448765204823313940

/-! ## A045962.P4758751720606997035

`∩[A045954(n+1), A104636(n+1)]`
-/

namespace A045962.P4758751720606997035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045962.P4758751720606997035

/-! ## A045962.P782094364709021727

`A004524(p?[A005408(A045954(n+1))])`
-/

namespace A045962.P782094364709021727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045962.P782094364709021727

/-! ## A045962.P10970602544008081252

`A049982(p?[A005408(A045954(n+1))])`
-/

namespace A045962.P10970602544008081252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045962.P10970602544008081252

/-! ## A045962.P16199145438483953852

`A163575(p?[A005408(A045954(n+1))])`
-/

namespace A045962.P16199145438483953852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045962.P16199145438483953852

/-! ## A045962.P16418999337100523803

`A004524(p?[A267872(A045954(n+1))])`
-/

namespace A045962.P16418999337100523803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045962.P16418999337100523803

/-!
# A045963: Numbers k in A045954 such that 2*k-1 is prime.

The programs for A045963, there is no canonical definition to state claims against.
-/

/-! ## A045963.P3620268000095037881

`∩[A006254(n+1), A045954(n+1)]`
-/

namespace A045963.P3620268000095037881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045963.P3620268000095037881

/-! ## A045963.P8334682244390638386

`∩[A045954(n+1), A111333(n+1)]`
-/

namespace A045963.P8334682244390638386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045963.P8334682244390638386

/-! ## A045963.P2401184903258895027

`∩[A005097(n+1)+1, A045954(n+1)]`
-/

namespace A045963.P2401184903258895027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045963.P2401184903258895027

/-! ## A045963.P9499915528499927600

`∩[A045954(n+1), A102781(n+1)+1]`
-/

namespace A045963.P9499915528499927600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045963.P9499915528499927600

/-! ## A045963.P937320676657479725

`A110654(record[A090368(A045954(n+1))])`
-/

namespace A045963.P937320676657479725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045963.P937320676657479725

/-! ## A045963.P6559959081367267564

`A000224(p?[A004273(A045954(n+1))])`
-/

namespace A045963.P6559959081367267564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P6559959081367267564

/-! ## A045963.P2879798802267031464

`A000463(p?[A004273(A045954(n+1))])`
-/

namespace A045963.P2879798802267031464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P2879798802267031464

/-! ## A045963.P14989055047873533706

`A003602(p?[A004273(A045954(n+1))])`
-/

namespace A045963.P14989055047873533706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P14989055047873533706

/-! ## A045963.P15977764471918380269

`A008619(p?[A004273(A045954(n+1))])`
-/

namespace A045963.P15977764471918380269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P15977764471918380269

/-! ## A045963.P1792798727454724172

`A057020(p?[A004273(A045954(n+1))])`
-/

namespace A045963.P1792798727454724172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P1792798727454724172

/-! ## A045963.P5024672885117363506

`A008619(p?[A053438(A045954(n+1))])`
-/

namespace A045963.P5024672885117363506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P5024672885117363506

/-! ## A045963.P16893723872461587716

`A082500(p?[A004273(A045954(n+1))])`
-/

namespace A045963.P16893723872461587716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P16893723872461587716

/-! ## A045963.P2421398825738908447

`A110654(p?[A004273(A045954(n+1))])`
-/

namespace A045963.P2421398825738908447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P2421398825738908447

/-! ## A045963.P1268717301175567853

`A159481(p?[A004273(A045954(n+1))])`
-/

namespace A045963.P1268717301175567853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045963.P1268717301175567853

/-!
# A045964: Partial sums of A045954.

The programs for A045964, there is no canonical definition to state claims against.
-/

/-! ## A045964.P14534879114311379435

`∑[A045954(1+n)]`
-/

namespace A045964.P14534879114311379435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P14534879114311379435

/-! ## A045964.P6693869482794131989

`∑[A111039(n+1)+1]`
-/

namespace A045964.P6693869482794131989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111039 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P6693869482794131989

/-! ## A045964.P11790595438289149197

`∑[2*A045989(n+1)]`
-/

namespace A045964.P11790595438289149197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P11790595438289149197

/-! ## A045964.P1169457761977527519

`A045954(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A045964.P1169457761977527519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A045954 (n + 1) + a (n - 1)

end

end A045964.P1169457761977527519

/-! ## A045964.P2869684869374807458

`∑[record[A045954(A344180(n))]]`
-/

namespace A045964.P2869684869374807458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P2869684869374807458

/-! ## A045964.P12082118920310489255

`∑[A000959(n+1)-A118125(n+1)]`
-/

namespace A045964.P12082118920310489255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - A118125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P12082118920310489255

/-! ## A045964.P13389645400658025546

`∑[sqrt(A032598(n+1))-A118125(n+1)]`
-/

namespace A045964.P13389645400658025546
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (n + 1) : ℝ) - (A118125 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P13389645400658025546

/-! ## A045964.P13915603372124161533

`∑[A032603(n+1)%A001750(n+1)-A118125(n+1)]`
-/

namespace A045964.P13915603372124161533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032603 (n + 1)) (A001750 (n + 1)) - A118125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P13915603372124161533

/-! ## A045964.P15672882607960529191

`∑[A032598(n+1)%A139269(n+1)-A118125(n+1)]`
-/

namespace A045964.P15672882607960529191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032598 (n + 1)) (A139269 (n + 1)) - A118125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P15672882607960529191

/-! ## A045964.P2189406968910225506

`∑[A237122(n+1)%A139269(n+1)-A118125(n+1)]`
-/

namespace A045964.P2189406968910225506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237122 (n + 1)) (A139269 (n + 1)) - A118125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P2189406968910225506

/-! ## A045964.P8464771268328233954

`∑[record[A045954(A133310(n))]]`
-/

namespace A045964.P8464771268328233954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P8464771268328233954

/-! ## A045964.P5198075811887115439

`∑[A003309(n+1)-A256486(n+1)-A118125(n+1)]`
-/

namespace A045964.P5198075811887115439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - A256486 (n + 1) - A118125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P5198075811887115439

/-! ## A045964.P11546397724399263689

`∑[A005843(A045989(n+1))]`
-/

namespace A045964.P11546397724399263689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P11546397724399263689

/-! ## A045964.P3831864711439765950

`∑[record[A045954(A134478(n))]]`
-/

namespace A045964.P3831864711439765950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045964.P3831864711439765950

/-!
# A045965: a(1)=2; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^e_i.

The programs for A045965, the canonical program `A045965.P3274931299755745232` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045965 has offset 1).

The definition of A045965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045965.P17188723187010190062

`floor(A003961(n+1)+acot(n))`
-/

namespace A045965.P17188723187010190062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003961 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A045965.P17188723187010190062

namespace A045965

/-- `floor(A003961(n+1)+acot(n))` -/
def P17188723187010190062.Spec : Prop :=
  ∀ n, P17188723187010190062.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P3274931299755745232

`A003961(n%a(n-1)+1)` with `a(0)=2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045965

/-- `A003961(n%a(n-1)+1)` -/
def P3274931299755745232.Spec : Prop :=
  ∀ n, P3274931299755745232.a n = A045965 (n + 1)

theorem P3274931299755745232.correct : P3274931299755745232.Spec := by
  intro n
  simp only [A045965, Nat.add_sub_cancel]

end A045965

/-! ## A045965.P7325061873320791843

`A003961(floor(n/a(n-1))+n+1)` with `a(0)=2`
-/

namespace A045965.P7325061873320791843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003961 (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ + (n + 1 : ℤ)).toNat

end

end A045965.P7325061873320791843

namespace A045965

/-- `A003961(floor(n/a(n-1))+n+1)` -/
def P7325061873320791843.Spec : Prop :=
  ∀ n, P7325061873320791843.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P16793708534505697828

`A243501(n+1)-char[xor(n, floor(n/2))+1]`
-/

namespace A045965.P16793708534505697828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045965.P16793708534505697828

namespace A045965

/-- `A243501(n+1)-char[xor(n, floor(n/2))+1]` -/
def P16793708534505697828.Spec : Prop :=
  ∀ n, P16793708534505697828.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P17521888995288469852

`A253885(n)+A054977(n)`
-/

namespace A045965.P17521888995288469852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + A054977 n

end

end A045965.P17521888995288469852

namespace A045965

/-- `A253885(n)+A054977(n)` -/
def P17521888995288469852.Spec : Prop :=
  ∀ n, P17521888995288469852.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P7577252775559214765

`A003961(n+1)+A000007(n)`
-/

namespace A045965.P7577252775559214765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + A000007 n

end

end A045965.P7577252775559214765

namespace A045965

/-- `A003961(n+1)+A000007(n)` -/
def P7577252775559214765.Spec : Prop :=
  ∀ n, P7577252775559214765.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P9153542187917723314

`A000007(n)+A253885(n)+1`
-/

namespace A045965.P9153542187917723314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A253885 n + 1)

end

end A045965.P9153542187917723314

namespace A045965

/-- `A000007(n)+A253885(n)+1` -/
def P9153542187917723314.Spec : Prop :=
  ∀ n, P9153542187917723314.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P11121837495971474686

`A243501(n+1)+A057428(n)`
-/

namespace A045965.P11121837495971474686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) + A057428 n

end

end A045965.P11121837495971474686

namespace A045965

/-- `A243501(n+1)+A057428(n)` -/
def P11121837495971474686.Spec : Prop :=
  ∀ n, P11121837495971474686.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P2327115575022696252

`A243501(n+1)-A057427(n)`
-/

namespace A045965.P2327115575022696252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - A057427 n

end

end A045965.P2327115575022696252

namespace A045965

/-- `A243501(n+1)-A057427(n)` -/
def P2327115575022696252.Spec : Prop :=
  ∀ n, P2327115575022696252.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P11506085977665435298

`A003961(n+1)*A054977(n)`
-/

namespace A045965.P11506085977665435298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A054977 n

end

end A045965.P11506085977665435298

namespace A045965

/-- `A003961(n+1)*A054977(n)` -/
def P11506085977665435298.Spec : Prop :=
  ∀ n, P11506085977665435298.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P2892231617741157792

`A253885(n)+3-A040000(n)`
-/

namespace A045965.P2892231617741157792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + (3 - A040000 n)

end

end A045965.P2892231617741157792

namespace A045965

/-- `A253885(n)+3-A040000(n)` -/
def P2892231617741157792.Spec : Prop :=
  ∀ n, P2892231617741157792.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P727171290298757456

`A063524(n+1)+A003961(n+1)`
-/

namespace A045965.P727171290298757456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A003961 (n + 1)

end

end A045965.P727171290298757456

namespace A045965

/-- `A063524(n+1)+A003961(n+1)` -/
def P727171290298757456.Spec : Prop :=
  ∀ n, P727171290298757456.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P4273591423858725379

`A336853(n+1)+A028310(n)+1`
-/

namespace A045965.P4273591423858725379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + (A028310 n + 1)

end

end A045965.P4273591423858725379

namespace A045965

/-- `A336853(n+1)+A028310(n)+1` -/
def P4273591423858725379.Spec : Prop :=
  ∀ n, P4273591423858725379.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P4473919601410416788

`A003961(n+1)+1-A057427(n)`
-/

namespace A045965.P4473919601410416788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (1 - A057427 n)

end

end A045965.P4473919601410416788

namespace A045965

/-- `A003961(n+1)+1-A057427(n)` -/
def P4473919601410416788.Spec : Prop :=
  ∀ n, P4473919601410416788.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P17834665978922511054

`A252748(n+1)+A051755(n+2)`
-/

namespace A045965.P17834665978922511054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) + A051755 (n + 2)

end

end A045965.P17834665978922511054

namespace A045965

/-- `A252748(n+1)+A051755(n+2)` -/
def P17834665978922511054.Spec : Prop :=
  ∀ n, P17834665978922511054.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P4816518641724855402

`A036987(2*n)+A003961(n+1)`
-/

namespace A045965.P4816518641724855402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A003961 (n + 1)

end

end A045965.P4816518641724855402

namespace A045965

/-- `A036987(2*n)+A003961(n+1)` -/
def P4816518641724855402.Spec : Prop :=
  ∀ n, P4816518641724855402.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P15153362004014781667

`A045969(n+1)/A045966(n+1)`
-/

namespace A045965.P15153362004014781667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045969 (n + 1) : ℚ) / (A045966 (n + 1) : ℚ)

end

end A045965.P15153362004014781667

namespace A045965

/-- `A045969(n+1)/A045966(n+1)` -/
def P15153362004014781667.Spec : Prop :=
  ∀ n, P15153362004014781667.a n = (A045965 (n + 1) : ℚ)

end A045965

/-! ## A045965.P7574914042141778876

`A045973(n+1)/A045968(n+1)`
-/

namespace A045965.P7574914042141778876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045973 (n + 1) : ℚ) / (A045968 (n + 1) : ℚ)

end

end A045965.P7574914042141778876

namespace A045965

/-- `A045973(n+1)/A045968(n+1)` -/
def P7574914042141778876.Spec : Prop :=
  ∀ n, P7574914042141778876.a n = (A045965 (n + 1) : ℚ)

end A045965

/-! ## A045965.P8699150831952010483

`2*A048673(n+1)-A057427(n)`
-/

namespace A045965.P8699150831952010483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - A057427 n

end

end A045965.P8699150831952010483

namespace A045965

/-- `2*A048673(n+1)-A057427(n)` -/
def P8699150831952010483.Spec : Prop :=
  ∀ n, P8699150831952010483.a n = A045965 (n + 1)

end A045965

/-! ## A045965.P5523366244511157959

`floor(A003961(n+1)+1/A002326(n))`
-/

namespace A045965.P5523366244511157959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003961 (n + 1) : ℚ) + 1 / (A002326 n : ℚ)⌋

end

end A045965.P5523366244511157959

namespace A045965

/-- `floor(A003961(n+1)+1/A002326(n))` -/
def P5523366244511157959.Spec : Prop :=
  ∀ n, P5523366244511157959.a n = A045965 (n + 1)

end A045965

/-!
# A045966: a(1)=3; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+2}^e_i.

The programs for A045966, the canonical program `A045966.P9749052557920947952` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045966 has offset 1).

The definition of A045966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045966.P9749052557920947952

`A249827(n+1)/5+abs(1-n)+1-n`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045966

/-- `A249827(n+1)/5+abs(1-n)+1-n` -/
def P9749052557920947952.Spec : Prop :=
  ∀ n, P9749052557920947952.a n = (A045966 (n + 1) : ℚ)

end A045966

/-! ## A045966.P14531198864673538185

`A357852(n+1)+A000038(n)`
-/

namespace A045966.P14531198864673538185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (n + 1) + A000038 n

end

end A045966.P14531198864673538185

namespace A045966

/-- `A357852(n+1)+A000038(n)` -/
def P14531198864673538185.Spec : Prop :=
  ∀ n, P14531198864673538185.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P8959805446031016657

`A045969(n+1)/A045965(n+1)`
-/

namespace A045966.P8959805446031016657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045969 (n + 1) : ℚ) / (A045965 (n + 1) : ℚ)

end

end A045966.P8959805446031016657

namespace A045966

/-- `A045969(n+1)/A045965(n+1)` -/
def P8959805446031016657.Spec : Prop :=
  ∀ n, P8959805446031016657.a n = (A045966 (n + 1) : ℚ)

end A045966

/-! ## A045966.P189060590018771111

`A045968(n+1)*A045969(n+1)/A045973(n+1)`
-/

namespace A045966.P189060590018771111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045968 (n + 1) * A045969 (n + 1) : ℚ) / (A045973 (n + 1) : ℚ)

end

end A045966.P189060590018771111

namespace A045966

/-- `A045968(n+1)*A045969(n+1)/A045973(n+1)` -/
def P189060590018771111.Spec : Prop :=
  ∀ n, P189060590018771111.a n = (A045966 (n + 1) : ℚ)

end A045966

/-! ## A045966.P8893107269454495071

`A003961(A045965(n+1))`
-/

namespace A045966.P8893107269454495071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A045965 (n + 1)).toNat

end

end A045966.P8893107269454495071

namespace A045966

/-- `A003961(A045965(n+1))` -/
def P8893107269454495071.Spec : Prop :=
  ∀ n, P8893107269454495071.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P154557618213624314

`A045965(and(-1, A045965(n+1)))`
-/

namespace A045966.P154557618213624314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (Int.land (-1) (A045965 (n + 1))).toNat

end

end A045966.P154557618213624314

namespace A045966

/-- `A045965(and(-1, A045965(n+1)))` -/
def P154557618213624314.Spec : Prop :=
  ∀ n, P154557618213624314.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P5378965912704146055

`A045965(A045965(2*n+1-n))`
-/

namespace A045966.P5378965912704146055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A045965 (2 * n + 1 - n)).toNat

end

end A045966.P5378965912704146055

namespace A045966

/-- `A045965(A045965(2*n+1-n))` -/
def P5378965912704146055.Spec : Prop :=
  ∀ n, P5378965912704146055.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P16566563466967565716

`A003961(floor(A003961(n+1)+acot(n)))`
-/

namespace A045966.P16566563466967565716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 ⌊(A003961 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A045966.P16566563466967565716

namespace A045966

/-- `A003961(floor(A003961(n+1)+acot(n)))` -/
def P16566563466967565716.Spec : Prop :=
  ∀ n, P16566563466967565716.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P14436503300997906286

`A003961(A205006(A003961(n+1)))`
-/

namespace A045966.P14436503300997906286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A205006 (A003961 (n + 1)).toNat).toNat

end

end A045966.P14436503300997906286

namespace A045966

/-- `A003961(A205006(A003961(n+1)))` -/
def P14436503300997906286.Spec : Prop :=
  ∀ n, P14436503300997906286.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P16820176204702589682

`A003961(A003961(n+1)+A000007(n))`
-/

namespace A045966.P16820176204702589682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 1) + A000007 n).toNat

end

end A045966.P16820176204702589682

namespace A045966

/-- `A003961(A003961(n+1)+A000007(n))` -/
def P16820176204702589682.Spec : Prop :=
  ∀ n, P16820176204702589682.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P8690908284608132852

`A003961(A003961(n+1))+A000038(n)`
-/

namespace A045966.P8690908284608132852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 1)).toNat + A000038 n

end

end A045966.P8690908284608132852

namespace A045966

/-- `A003961(A003961(n+1))+A000038(n)` -/
def P8690908284608132852.Spec : Prop :=
  ∀ n, P8690908284608132852.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P1945424574249797735

`A253885(A253885(n)+A000007(n))+1`
-/

namespace A045966.P1945424574249797735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A253885 n + A000007 n).toNat + 1

end

end A045966.P1945424574249797735

namespace A045966

/-- `A253885(A253885(n)+A000007(n))+1` -/
def P1945424574249797735.Spec : Prop :=
  ∀ n, P1945424574249797735.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P5501825619384341155

`A003961(A003961(n+1)*A054977(n))`
-/

namespace A045966.P5501825619384341155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 1) * A054977 n).toNat

end

end A045966.P5501825619384341155

namespace A045966

/-- `A003961(A003961(n+1)*A054977(n))` -/
def P5501825619384341155.Spec : Prop :=
  ∀ n, P5501825619384341155.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P1411174542145261319

`A003961(lcm(A003961(n+1), A054977(n)))`
-/

namespace A045966.P1411174542145261319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.lcm (A003961 (n + 1)) (A054977 n))

end

end A045966.P1411174542145261319

namespace A045966

/-- `A003961(lcm(A003961(n+1), A054977(n)))` -/
def P1411174542145261319.Spec : Prop :=
  ∀ n, P1411174542145261319.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P797039257220487272

`A003961(A063524(n+1)+A003961(n+1))`
-/

namespace A045966.P797039257220487272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A063524 (n + 1) + A003961 (n + 1)).toNat

end

end A045966.P797039257220487272

namespace A045966

/-- `A003961(A063524(n+1)+A003961(n+1))` -/
def P797039257220487272.Spec : Prop :=
  ∀ n, P797039257220487272.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P4781612040018855607

`A003961(A003961(n+1)+A054977(n)-1)`
-/

namespace A045966.P4781612040018855607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 1) + (A054977 n - 1)).toNat

end

end A045966.P4781612040018855607

namespace A045966

/-- `A003961(A003961(n+1)+A054977(n)-1)` -/
def P4781612040018855607.Spec : Prop :=
  ∀ n, P4781612040018855607.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P14730747236191493528

`A003961(A003961(n+1)+1-A057427(n))`
-/

namespace A045966.P14730747236191493528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 1) + (1 - A057427 n)).toNat

end

end A045966.P14730747236191493528

namespace A045966

/-- `A003961(A003961(n+1)+1-A057427(n))` -/
def P14730747236191493528.Spec : Prop :=
  ∀ n, P14730747236191493528.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P16095928646316790484

`A003961(A003961(n+1))+1-A158388(n)`
-/

namespace A045966.P16095928646316790484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 1)).toNat + (1 - A158388 n)

end

end A045966.P16095928646316790484

namespace A045966

/-- `A003961(A003961(n+1))+1-A158388(n)` -/
def P16095928646316790484.Spec : Prop :=
  ∀ n, P16095928646316790484.a n = A045966 (n + 1)

end A045966

/-! ## A045966.P15779220746549740046

`A243501(A243501(n+1)+A057428(n))-1`
-/

namespace A045966.P15779220746549740046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (A243501 (n + 1) + A057428 n).toNat - 1

end

end A045966.P15779220746549740046

namespace A045966

/-- `A243501(A243501(n+1)+A057428(n))-1` -/
def P15779220746549740046.Spec : Prop :=
  ∀ n, P15779220746549740046.a n = A045966 (n + 1)

end A045966

/-!
# A045967: a(1)=4; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^{e_i+1}.

The programs for A045967, the canonical program `A045967.P12783764641236707767` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045967 has offset 1).

The definition of A045967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045967.P12783764641236707767

`A045965(∏{p}[n+1, #])*A045965(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045967

/-- `A045965(∏{p}[n+1, #])*A045965(n+1)` -/
def P12783764641236707767.Spec : Prop :=
  ∀ n, P12783764641236707767.a n = A045967 (n + 1)

theorem P12783764641236707767.correct : P12783764641236707767.Spec := by
  intro n
  simp only [A045967, Nat.add_sub_cancel]

end A045967

/-! ## A045967.P12386574572100693011

`A045965(A007947(n+1))*A045965(n+1)`
-/

namespace A045967.P12386574572100693011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A007947 (n + 1)).toNat * A045965 (n + 1)

end

end A045967.P12386574572100693011

namespace A045967

/-- `A045965(A007947(n+1))*A045965(n+1)` -/
def P12386574572100693011.Spec : Prop :=
  ∀ n, P12386574572100693011.a n = A045967 (n + 1)

end A045967

/-! ## A045967.P13347599382597658153

`A045965(n+1)*A045965(A076618(n+1)-1)`
-/

namespace A045967.P13347599382597658153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) * A045965 (A076618 (n + 1) - 1).toNat

end

end A045967.P13347599382597658153

namespace A045967

/-- `A045965(n+1)*A045965(A076618(n+1)-1)` -/
def P13347599382597658153.Spec : Prop :=
  ∀ n, P13347599382597658153.a n = A045967 (n + 1)

end A045967

/-! ## A045967.P9645138987873670254

`A045965((n+1)/A003557(n+1))*A045965(n+1)`
-/

namespace A045967.P9645138987873670254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat * A045965 (n + 1)

end

end A045967.P9645138987873670254

namespace A045967

/-- `A045965((n+1)/A003557(n+1))*A045965(n+1)` -/
def P9645138987873670254.Spec : Prop :=
  ∀ n, P9645138987873670254.a n = A045967 (n + 1)

end A045967

/-! ## A045967.P13083087029037504366

`A045965(A015052(A015052(n+1)))*A045965(n+1)`
-/

namespace A045967.P13083087029037504366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A015052 (A015052 (n + 1)).toNat).toNat * A045965 (n + 1)

end

end A045967.P13083087029037504366

namespace A045967

/-- `A045965(A015052(A015052(n+1)))*A045965(n+1)` -/
def P13083087029037504366.Spec : Prop :=
  ∀ n, P13083087029037504366.a n = A045967 (n + 1)

end A045967

/-! ## A045967.P31154852321206192

`A045965(A066990(n+1))*A045965(A350390(n+1))`
-/

namespace A045967.P31154852321206192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A066990 (n + 1)).toNat * A045965 (A350390 (n + 1)).toNat

end

end A045967.P31154852321206192

namespace A045967

/-- `A045965(A066990(n+1))*A045965(A350390(n+1))` -/
def P31154852321206192.Spec : Prop :=
  ∀ n, P31154852321206192.a n = A045967 (n + 1)

end A045967

/-! ## A045967.P12298982949032090716

`A064549(A045965(n+1))`
-/

namespace A045967.P12298982949032090716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A045965 (n + 1)).toNat

end

end A045967.P12298982949032090716

namespace A045967

/-- `A064549(A045965(n+1))` -/
def P12298982949032090716.Spec : Prop :=
  ∀ n, P12298982949032090716.a n = A045967 (n + 1)

end A045967

/-! ## A045967.P15928332646725919227

`A064549(A003961(n+1)+A000007(n))`
-/

namespace A045967.P15928332646725919227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A003961 (n + 1) + A000007 n).toNat

end

end A045967.P15928332646725919227

namespace A045967

/-- `A064549(A003961(n+1)+A000007(n))` -/
def P15928332646725919227.Spec : Prop :=
  ∀ n, P15928332646725919227.a n = A045967 (n + 1)

end A045967

/-! ## A045967.P11625627778033622006

`A064549(A003961(n+1)*A054977(n))`
-/

namespace A045967.P11625627778033622006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A003961 (n + 1) * A054977 n).toNat

end

end A045967.P11625627778033622006

namespace A045967

/-- `A064549(A003961(n+1)*A054977(n))` -/
def P11625627778033622006.Spec : Prop :=
  ∀ n, P11625627778033622006.a n = A045967 (n + 1)

end A045967

/-! ## A045967.P9679670639444690187

`A064549(A003961(n+1)+A054977(n)-1)`
-/

namespace A045967.P9679670639444690187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A003961 (n + 1) + (A054977 n - 1)).toNat

end

end A045967.P9679670639444690187

namespace A045967

/-- `A064549(A003961(n+1)+A054977(n)-1)` -/
def P9679670639444690187.Spec : Prop :=
  ∀ n, P9679670639444690187.a n = A045967 (n + 1)

end A045967

/-!
# A045968: a(1)=5; for n >= 2, if n = Product p_i^e_i, then a(n) = Product p_{i+3}^e_i.

The programs for A045968, there is no canonical definition to state claims against.
-/

/-! ## A045968.P7332524717317207862

`A045973(n+1)/A045965(n+1)`
-/

namespace A045968.P7332524717317207862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045973 (n + 1) : ℚ) / (A045965 (n + 1) : ℚ)

end

end A045968.P7332524717317207862

/-! ## A045968.P6933988235429204058

`A045973(n+1)/(A243501(n+1)-A057427(n))`
-/

namespace A045968.P6933988235429204058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045973 (n + 1) : ℚ) / (A243501 (n + 1) - A057427 n : ℚ)

end

end A045968.P6933988235429204058

/-! ## A045968.P6005127307531169577

`A045973(n+1)/(A253885(n)+3-A040000(n))`
-/

namespace A045968.P6005127307531169577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045973 (n + 1) : ℚ) / (A253885 n + (3 - A040000 n) : ℚ)

end

end A045968.P6005127307531169577

/-! ## A045968.P6769033950752254757

`A045973(n+1)/A297166(A051755(n+2))`
-/

namespace A045968.P6769033950752254757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045973 (n + 1) : ℚ) / (A297166 (A051755 (n + 2)).toNat : ℚ)

end

end A045968.P6769033950752254757

/-! ## A045968.P16688574328700010211

`A045966(A045965(n+1))`
-/

namespace A045968.P16688574328700010211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A045965 (n + 1)).toNat

end

end A045968.P16688574328700010211

/-! ## A045968.P5253465202756644389

`A045966(A003961(n+1)+A000007(n))`
-/

namespace A045968.P5253465202756644389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A003961 (n + 1) + A000007 n).toNat

end

end A045968.P5253465202756644389

/-! ## A045968.P11425281538573826189

`A045966(A003961(n+1))+A000038(n)`
-/

namespace A045968.P11425281538573826189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A003961 (n + 1)).toNat + A000038 n

end

end A045968.P11425281538573826189

/-! ## A045968.P4386572488880536682

`A045966(A003961(n+1)*A054977(n))`
-/

namespace A045968.P4386572488880536682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A003961 (n + 1) * A054977 n).toNat

end

end A045968.P4386572488880536682

/-! ## A045968.P12762936069402094085

`A045966(lcm(A003961(n+1), A054977(n)))`
-/

namespace A045968.P12762936069402094085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (Int.lcm (A003961 (n + 1)) (A054977 n))

end

end A045968.P12762936069402094085

/-! ## A045968.P4788619251432123021

`A045966(A003961(n+1)+A054977(n)-1)`
-/

namespace A045968.P4788619251432123021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A003961 (n + 1) + (A054977 n - 1)).toNat

end

end A045968.P4788619251432123021

/-! ## A045968.P3738062072297358601

`A045966(A045969(n+1)/A045966(n+1))`
-/

namespace A045968.P3738062072297358601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (SequenceMachineLib.roundAway ((A045969 (n + 1) : ℚ) / (A045966 (n + 1) : ℚ))).toNat

end

end A045968.P3738062072297358601

/-! ## A045968.P9147504531658172249

`A045973(n+1)/A254667(A003961(n+1))`
-/

namespace A045968.P9147504531658172249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045973 (n + 1) : ℚ) / (A254667 (A003961 (n + 1)).toNat : ℚ)

end

end A045968.P9147504531658172249

/-! ## A045968.P11978379182684879468

`A242378(A133263(n+4)+A057427(n))`
-/

namespace A045968.P11978379182684879468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 (A133263 (n + 4) + A057427 n).toNat

end

end A045968.P11978379182684879468

/-!
# A045969: a(1)=6; if n = Product p_i^e_i, n>1, then a(n) = Product p_{i+1}^e_i * Product p_{i+2}^e_i.

The programs for A045969, the canonical program `A045969.P4344229329838993575` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045969 has offset 1).

The definition of A045969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045969.P4344229329838993575

`A045965(n+1)*A045966(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045969

/-- `A045965(n+1)*A045966(n+1)` -/
def P4344229329838993575.Spec : Prop :=
  ∀ n, P4344229329838993575.a n = A045969 (n + 1)

theorem P4344229329838993575.correct : P4344229329838993575.Spec := by
  intro n
  simp only [A045969, Nat.add_sub_cancel]

end A045969

/-! ## A045969.P6410583622877564292

`(A249827(n+1)/5+abs(1-n)+1-n)*A045965(n+1)`
-/

namespace A045969.P6410583622877564292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A249827 (n + 1) : ℚ) / 5 + (|1 - (n : ℤ)| + 1 - (n : ℤ) : ℚ)) * (A045965 (n + 1) : ℚ)

end

end A045969.P6410583622877564292

namespace A045969

/-- `(A249827(n+1)/5+abs(1-n)+1-n)*A045965(n+1)` -/
def P6410583622877564292.Spec : Prop :=
  ∀ n, P6410583622877564292.a n = (A045969 (n + 1) : ℚ)

end A045969

/-! ## A045969.P9313346797471905778

`(A003961(n+1)+A000007(n))*A045966(n+1)`
-/

namespace A045969.P9313346797471905778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) + A000007 n) * A045966 (n + 1)

end

end A045969.P9313346797471905778

namespace A045969

/-- `(A003961(n+1)+A000007(n))*A045966(n+1)` -/
def P9313346797471905778.Spec : Prop :=
  ∀ n, P9313346797471905778.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P10017606030225847752

`A003961(n+1)*A045966(n+1)*A054977(n)`
-/

namespace A045969.P10017606030225847752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A045966 (n + 1) * A054977 n

end

end A045969.P10017606030225847752

namespace A045969

/-- `A003961(n+1)*A045966(n+1)*A054977(n)` -/
def P10017606030225847752.Spec : Prop :=
  ∀ n, P10017606030225847752.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P13196128331737539684

`(A253885(n)+3-A040000(n))*A045966(n+1)`
-/

namespace A045969.P13196128331737539684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253885 n + (3 - A040000 n)) * A045966 (n + 1)

end

end A045969.P13196128331737539684

namespace A045969

/-- `(A253885(n)+3-A040000(n))*A045966(n+1)` -/
def P13196128331737539684.Spec : Prop :=
  ∀ n, P13196128331737539684.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P4832114017030056829

`A045966(n+1)/A045968(n+1)*A045973(n+1)`
-/

namespace A045969.P4832114017030056829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045966 (n + 1) : ℚ) / (A045968 (n + 1) : ℚ) * (A045973 (n + 1) : ℚ)

end

end A045969.P4832114017030056829

namespace A045969

/-- `A045966(n+1)/A045968(n+1)*A045973(n+1)` -/
def P4832114017030056829.Spec : Prop :=
  ∀ n, P4832114017030056829.a n = (A045969 (n + 1) : ℚ)

end A045969

/-! ## A045969.P5127113186259613120

`A045966(n+1)*A205006(A003961(n+1))`
-/

namespace A045969.P5127113186259613120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1) * A205006 (A003961 (n + 1)).toNat

end

end A045969.P5127113186259613120

namespace A045969

/-- `A045966(n+1)*A205006(A003961(n+1))` -/
def P5127113186259613120.Spec : Prop :=
  ∀ n, P5127113186259613120.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P15166565602698984371

`A191002(A045965(n+1))`
-/

namespace A045969.P15166565602698984371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191002 (A045965 (n + 1)).toNat

end

end A045969.P15166565602698984371

namespace A045969

/-- `A191002(A045965(n+1))` -/
def P15166565602698984371.Spec : Prop :=
  ∀ n, P15166565602698984371.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P10462636807944800173

`A191002(A253885(n)+A054977(n))`
-/

namespace A045969.P10462636807944800173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191002 (A253885 n + A054977 n).toNat

end

end A045969.P10462636807944800173

namespace A045969

/-- `A191002(A253885(n)+A054977(n))` -/
def P10462636807944800173.Spec : Prop :=
  ∀ n, P10462636807944800173.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P9722373510301520955

`A191002(A003961(n+1)+A000007(n))`
-/

namespace A045969.P9722373510301520955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191002 (A003961 (n + 1) + A000007 n).toNat

end

end A045969.P9722373510301520955

namespace A045969

/-- `A191002(A003961(n+1)+A000007(n))` -/
def P9722373510301520955.Spec : Prop :=
  ∀ n, P9722373510301520955.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P17252556822952191243

`A191002(A243501(n+1)-A057427(n))`
-/

namespace A045969.P17252556822952191243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191002 (A243501 (n + 1) - A057427 n).toNat

end

end A045969.P17252556822952191243

namespace A045969

/-- `A191002(A243501(n+1)-A057427(n))` -/
def P17252556822952191243.Spec : Prop :=
  ∀ n, P17252556822952191243.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P14655072865005596821

`A191002(A000007(n)+sqrt(A379481(n+1)))`
-/

namespace A045969.P14655072865005596821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191002 (SequenceMachineLib.roundAway ((A000007 n : ℝ) + Real.sqrt (A379481 (n + 1) : ℝ))).toNat

end

end A045969.P14655072865005596821

namespace A045969

/-- `A191002(A000007(n)+sqrt(A379481(n+1)))` -/
def P14655072865005596821.Spec : Prop :=
  ∀ n, P14655072865005596821.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P12876948157720484313

`A191002(sqrt(A379481(n+1))*A054977(n))`
-/

namespace A045969.P12876948157720484313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191002 (SequenceMachineLib.roundAway (Real.sqrt (A379481 (n + 1) : ℝ) * (A054977 n : ℝ))).toNat

end

end A045969.P12876948157720484313

namespace A045969

/-- `A191002(sqrt(A379481(n+1))*A054977(n))` -/
def P12876948157720484313.Spec : Prop :=
  ∀ n, P12876948157720484313.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P10409803763381851210

`A045965(n+1)*A045965(A045965(-xor(n, -1)))`
-/

namespace A045969.P10409803763381851210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) * A045965 (A045965 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A045969.P10409803763381851210

namespace A045969

/-- `A045965(n+1)*A045965(A045965(-xor(n, -1)))` -/
def P10409803763381851210.Spec : Prop :=
  ∀ n, P10409803763381851210.a n = A045969 (n + 1)

end A045969

/-! ## A045969.P4567513675412608391

`A045965(n+1)*A045965(A045965(Δ[n²]-n))`
-/

namespace A045969.P4567513675412608391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) * A045965 (A045965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A045969.P4567513675412608391

namespace A045969

/-- `A045965(n+1)*A045965(A045965(Δ[n²]-n))` -/
def P4567513675412608391.Spec : Prop :=
  ∀ n, P4567513675412608391.a n = A045969 (n + 1)

end A045969

/-!
# A045970: a(1)=7; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+4}^e_i.

The programs for A045970, there is no canonical definition to state claims against.
-/

/-! ## A045970.P12197878640578338706

`A045968(A045965(n+1))`
-/

namespace A045970.P12197878640578338706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A045965 (n + 1)).toNat

end

end A045970.P12197878640578338706

/-! ## A045970.P15995445755754825622

`A045968(A003961(n+1)+A000007(n))`
-/

namespace A045970.P15995445755754825622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A003961 (n + 1) + A000007 n).toNat

end

end A045970.P15995445755754825622

/-! ## A045970.P11555725664337534702

`A045968(A243501(1+n)+A057428(n))`
-/

namespace A045970.P11555725664337534702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A243501 (1 + n) + A057428 n).toNat

end

end A045970.P11555725664337534702

/-! ## A045970.P14012074452088537324

`A045968(A252748(n+1)+A051755(n+2))`
-/

namespace A045970.P14012074452088537324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A252748 (n + 1) + A051755 (n + 2)).toNat

end

end A045970.P14012074452088537324

/-! ## A045970.P12827668753601022053

`A045968(A045969(n+1)/A045966(n+1))`
-/

namespace A045970.P12827668753601022053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (SequenceMachineLib.roundAway ((A045969 (n + 1) : ℚ) / (A045966 (n + 1) : ℚ))).toNat

end

end A045970.P12827668753601022053

/-! ## A045970.P2283667909134498648

`A045973(A045965(n+1))/A045966(n+1)`
-/

namespace A045970.P2283667909134498648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045973 (A045965 (n + 1)).toNat : ℚ) / (A045966 (n + 1) : ℚ)

end

end A045970.P2283667909134498648

/-! ## A045970.P1531615188866864559

`A045968(A045973(n+1)/A045968(n+1))`
-/

namespace A045970.P1531615188866864559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (SequenceMachineLib.roundAway ((A045973 (n + 1) : ℚ) / (A045968 (n + 1) : ℚ))).toNat

end

end A045970.P1531615188866864559

/-! ## A045970.P2906202474705172888

`or(A014963(9*n+3), A045968(A003961(n+1)))`
-/

namespace A045970.P2906202474705172888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (9 * n + 3)) (A045968 (A003961 (n + 1)).toNat)

end

end A045970.P2906202474705172888

/-! ## A045970.P2699845850252671123

`A045966(A045966(n+1))`
-/

namespace A045970.P2699845850252671123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A045966 (n + 1)).toNat

end

end A045970.P2699845850252671123

/-! ## A045970.P17780489135129596433

`A357852(A357852(n+1)+A000038(n))`
-/

namespace A045970.P17780489135129596433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (A357852 (n + 1) + A000038 n).toNat

end

end A045970.P17780489135129596433

/-!
# A045971: a(1)=8; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^{e_i+2}.

The programs for A045971, the canonical program `A045971.P2138342967968067509` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045971 has offset 1).

The definition of A045971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045971.P1281618303804051660

`A045967(n+1)²/A045965(n+1)`
-/

namespace A045971.P1281618303804051660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045967 (n + 1) ^ 2 : ℚ) / (A045965 (n + 1) : ℚ)

end

end A045971.P1281618303804051660

namespace A045971

/-- `A045967(n+1)²/A045965(n+1)` -/
def P1281618303804051660.Spec : Prop :=
  ∀ n, P1281618303804051660.a n = (A045971 (n + 1) : ℚ)

end A045971

/-! ## A045971.P2138342967968067509

`A045965(A007947(n+1))*A045967(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A045971

/-- `A045965(A007947(n+1))*A045967(n+1)` -/
def P2138342967968067509.Spec : Prop :=
  ∀ n, P2138342967968067509.a n = A045971 (n + 1)

theorem P2138342967968067509.correct : P2138342967968067509.Spec := by
  intro n
  simp only [A045971, Nat.add_sub_cancel]

end A045971

/-! ## A045971.P2772785832586316669

`A045965(A007947(n+1))²*A045965(n+1)`
-/

namespace A045971.P2772785832586316669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A007947 (n + 1)).toNat ^ 2 * A045965 (n + 1)

end

end A045971.P2772785832586316669

namespace A045971

/-- `A045965(A007947(n+1))²*A045965(n+1)` -/
def P2772785832586316669.Spec : Prop :=
  ∀ n, P2772785832586316669.a n = A045971 (n + 1)

end A045971

/-! ## A045971.P12990117248413589095

`A045967(n+1)²/(A003961(n+1)+A000007(n))`
-/

namespace A045971.P12990117248413589095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045967 (n + 1) ^ 2 : ℚ) / (A003961 (n + 1) + A000007 n : ℚ)

end

end A045971.P12990117248413589095

namespace A045971

/-- `A045967(n+1)²/(A003961(n+1)+A000007(n))` -/
def P12990117248413589095.Spec : Prop :=
  ∀ n, P12990117248413589095.a n = (A045971 (n + 1) : ℚ)

end A045971

/-! ## A045971.P3480418044754376362

`A045966(n+1)/A045969(n+1)*A045967(n+1)²`
-/

namespace A045971.P3480418044754376362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045966 (n + 1) : ℚ) / (A045969 (n + 1) : ℚ) * (A045967 (n + 1) ^ 2 : ℚ)

end

end A045971.P3480418044754376362

namespace A045971

/-- `A045966(n+1)/A045969(n+1)*A045967(n+1)²` -/
def P3480418044754376362.Spec : Prop :=
  ∀ n, P3480418044754376362.a n = (A045971 (n + 1) : ℚ)

end A045971

/-! ## A045971.P16712162182903366800

`A045967(n+1)²*A045968(n+1)/A045973(n+1)`
-/

namespace A045971.P16712162182903366800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045967 (n + 1) ^ 2 * A045968 (n + 1) : ℚ) / (A045973 (n + 1) : ℚ)

end

end A045971.P16712162182903366800

namespace A045971

/-- `A045967(n+1)²*A045968(n+1)/A045973(n+1)` -/
def P16712162182903366800.Spec : Prop :=
  ∀ n, P16712162182903366800.a n = (A045971 (n + 1) : ℚ)

end A045971

/-! ## A045971.P13756255654976799288

`A045965(A066990(n+1))*A045967(A350390(n+1))`
-/

namespace A045971.P13756255654976799288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A066990 (n + 1)).toNat * A045967 (A350390 (n + 1)).toNat

end

end A045971.P13756255654976799288

namespace A045971

/-- `A045965(A066990(n+1))*A045967(A350390(n+1))` -/
def P13756255654976799288.Spec : Prop :=
  ∀ n, P13756255654976799288.a n = A045971 (n + 1)

end A045971

/-! ## A045971.P8473764876029901447

`A361264(A045965(n+1))`
-/

namespace A045971.P8473764876029901447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (A045965 (n + 1)).toNat

end

end A045971.P8473764876029901447

namespace A045971

/-- `A361264(A045965(n+1))` -/
def P8473764876029901447.Spec : Prop :=
  ∀ n, P8473764876029901447.a n = A045971 (n + 1)

end A045971

/-! ## A045971.P17875338161473529897

`A361264(A003961(n+1)*A054977(n))`
-/

namespace A045971.P17875338161473529897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (A003961 (n + 1) * A054977 n).toNat

end

end A045971.P17875338161473529897

namespace A045971

/-- `A361264(A003961(n+1)*A054977(n))` -/
def P17875338161473529897.Spec : Prop :=
  ∀ n, P17875338161473529897.a n = A045971 (n + 1)

end A045971

/-! ## A045971.P9715751165719029321

`A361264(A045969(n+1)/A045966(n+1))`
-/

namespace A045971.P9715751165719029321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (SequenceMachineLib.roundAway ((A045969 (n + 1) : ℚ) / (A045966 (n + 1) : ℚ))).toNat

end

end A045971.P9715751165719029321

namespace A045971

/-- `A361264(A045969(n+1)/A045966(n+1))` -/
def P9715751165719029321.Spec : Prop :=
  ∀ n, P9715751165719029321.a n = A045971 (n + 1)

end A045971

/-! ## A045971.P11313463455216633171

`A066990(A045965(n+1))*A045967(A350390(n+1))`
-/

namespace A045971.P11313463455216633171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A045965 (n + 1)).toNat * A045967 (A350390 (n + 1)).toNat

end

end A045971.P11313463455216633171

namespace A045971

/-- `A066990(A045965(n+1))*A045967(A350390(n+1))` -/
def P11313463455216633171.Spec : Prop :=
  ∀ n, P11313463455216633171.a n = A045971 (n + 1)

end A045971

/-! ## A045971.P3033701342619090515

`ceil(2/(n+1))*A045967(A064549(n+1))`
-/

namespace A045971.P3033701342619090515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ)⌉ * A045967 (A064549 (n + 1)).toNat

end

end A045971.P3033701342619090515

namespace A045971

/-- `ceil(2/(n+1))*A045967(A064549(n+1))` -/
def P3033701342619090515.Spec : Prop :=
  ∀ n, P3033701342619090515.a n = A045971 (n + 1)

end A045971

/-! ## A045971.P2167021783990061287

`A045967(A064549(n+1))*A054977(n)`
-/

namespace A045971.P2167021783990061287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (A064549 (n + 1)).toNat * A054977 n

end

end A045971.P2167021783990061287

namespace A045971

/-- `A045967(A064549(n+1))*A054977(n)` -/
def P2167021783990061287.Spec : Prop :=
  ∀ n, P2167021783990061287.a n = A045971 (n + 1)

end A045971

/-! ## A045971.P9915954309500356079

`A045967(A064549(n+1))+A000038(n)²`
-/

namespace A045971.P9915954309500356079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (A064549 (n + 1)).toNat + A000038 n ^ 2

end

end A045971.P9915954309500356079

namespace A045971

/-- `A045967(A064549(n+1))+A000038(n)²` -/
def P9915954309500356079.Spec : Prop :=
  ∀ n, P9915954309500356079.a n = A045971 (n + 1)

end A045971

/-!
# A045972: a(1)=9; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+2}^{e_i+1}.

The programs for A045972, the canonical program `A045972.P3601848265481509117` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045972 has offset 1).

The definition of A045972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045972.P3601848265481509117

`A045966(A007947(n+1))*A045966(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045972

/-- `A045966(A007947(n+1))*A045966(n+1)` -/
def P3601848265481509117.Spec : Prop :=
  ∀ n, P3601848265481509117.a n = A045972 (n + 1)

theorem P3601848265481509117.correct : P3601848265481509117.Spec := by
  intro n
  simp only [A045972, Nat.add_sub_cancel]

end A045972

/-! ## A045972.P5540020279385244633

`A045967(A045965(n+1))`
-/

namespace A045972.P5540020279385244633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (A045965 (n + 1)).toNat

end

end A045972.P5540020279385244633

namespace A045972

/-- `A045967(A045965(n+1))` -/
def P5540020279385244633.Spec : Prop :=
  ∀ n, P5540020279385244633.a n = A045972 (n + 1)

end A045972

/-! ## A045972.P14213201977408291936

`A045967(A003961(n+1)+A000007(n))`
-/

namespace A045972.P14213201977408291936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (A003961 (n + 1) + A000007 n).toNat

end

end A045972.P14213201977408291936

namespace A045972

/-- `A045967(A003961(n+1)+A000007(n))` -/
def P14213201977408291936.Spec : Prop :=
  ∀ n, P14213201977408291936.a n = A045972 (n + 1)

end A045972

/-! ## A045972.P17653955431214863740

`A045967(A045969(n+1)/A045966(n+1))`
-/

namespace A045972.P17653955431214863740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (SequenceMachineLib.roundAway ((A045969 (n + 1) : ℚ) / (A045966 (n + 1) : ℚ))).toNat

end

end A045972.P17653955431214863740

namespace A045972

/-- `A045967(A045969(n+1)/A045966(n+1))` -/
def P17653955431214863740.Spec : Prop :=
  ∀ n, P17653955431214863740.a n = A045972 (n + 1)

end A045972

/-! ## A045972.P11846219356927841760

`A045967(A045973(n+1)/A045968(n+1))`
-/

namespace A045972.P11846219356927841760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (SequenceMachineLib.roundAway ((A045973 (n + 1) : ℚ) / (A045968 (n + 1) : ℚ))).toNat

end

end A045972.P11846219356927841760

namespace A045972

/-- `A045967(A045973(n+1)/A045968(n+1))` -/
def P11846219356927841760.Spec : Prop :=
  ∀ n, P11846219356927841760.a n = A045972 (n + 1)

end A045972

/-! ## A045972.P836602539845855247

`A045967(gcd(2*A283980(n+1), A045967(n+1)))`
-/

namespace A045972.P836602539845855247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (Int.gcd (2 * A283980 (n + 1)) (A045967 (n + 1)))

end

end A045972.P836602539845855247

namespace A045972

/-- `A045967(gcd(2*A283980(n+1), A045967(n+1)))` -/
def P836602539845855247.Spec : Prop :=
  ∀ n, P836602539845855247.a n = A045972 (n + 1)

end A045972

/-! ## A045972.P456272617425317369

`A045966(n+1)*A328915(A045967(n+1)/A328915(n+1))`
-/

namespace A045972.P456272617425317369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1) * A328915 (SequenceMachineLib.roundAway ((A045967 (n + 1) : ℚ) / (A328915 (n + 1) : ℚ))).toNat

end

end A045972.P456272617425317369

namespace A045972

/-- `A045966(n+1)*A328915(A045967(n+1)/A328915(n+1))` -/
def P456272617425317369.Spec : Prop :=
  ∀ n, P456272617425317369.a n = A045972 (n + 1)

end A045972

/-! ## A045972.P9565732667374458018

`A064549(A045966(n+1))`
-/

namespace A045972.P9565732667374458018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A045966 (n + 1)).toNat

end

end A045972.P9565732667374458018

namespace A045972

/-- `A064549(A045966(n+1))` -/
def P9565732667374458018.Spec : Prop :=
  ∀ n, P9565732667374458018.a n = A045972 (n + 1)

end A045972

/-!
# A045973: a(1)=10; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^e_i * Product p_{i+3}^e_i.

The programs for A045973, there is no canonical definition to state claims against.
-/

/-! ## A045973.P7811574391762452315

`A045965(n+1)*A045968(n+1)`
-/

namespace A045973.P7811574391762452315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) * A045968 (n + 1)

end

end A045973.P7811574391762452315

/-! ## A045973.P17425050073090551333

`(A003961(n+1)+A000007(n))*A045968(n+1)`
-/

namespace A045973.P17425050073090551333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) + A000007 n) * A045968 (n + 1)

end

end A045973.P17425050073090551333

/-! ## A045973.P1427894100020549386

`(A243501(n+1)+A057428(n))*A045968(n+1)`
-/

namespace A045973.P1427894100020549386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) + A057428 n) * A045968 (n + 1)

end

end A045973.P1427894100020549386

/-! ## A045973.P17705041426304543587

`(A252748(n+1)+A051755(n+2))*A045968(n+1)`
-/

namespace A045973.P17705041426304543587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252748 (n + 1) + A051755 (n + 2)) * A045968 (n + 1)

end

end A045973.P17705041426304543587

/-! ## A045973.P9874234220371423808

`A045968(n+1)/A045966(n+1)*A045969(n+1)`
-/

namespace A045973.P9874234220371423808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045968 (n + 1) : ℚ) / (A045966 (n + 1) : ℚ) * (A045969 (n + 1) : ℚ)

end

end A045973.P9874234220371423808

/-! ## A045973.P336436042614625363

`A045968(n+1)*A297166(A051755(n+2))`
-/

namespace A045973.P336436042614625363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (n + 1) * A297166 (A051755 (n + 2)).toNat

end

end A045973.P336436042614625363

/-! ## A045973.P3164325449136094552

`A045968(n+1)*A205006(A003961(n+1))`
-/

namespace A045973.P3164325449136094552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (n + 1) * A205006 (A003961 (n + 1)).toNat

end

end A045973.P3164325449136094552

/-! ## A045973.P2952793161435058401

`A045968(n+1)*A290099(A045966(n+1))`
-/

namespace A045973.P2952793161435058401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (n + 1) * A290099 (A045966 (n + 1)).toNat

end

end A045973.P2952793161435058401

/-! ## A045973.P14942363727844234387

`A003961(A045966(n+1))*A045965(n+1)`
-/

namespace A045973.P14942363727844234387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A045966 (n + 1)).toNat * A045965 (n + 1)

end

end A045973.P14942363727844234387

/-! ## A045973.P5776513889394228927

`A003961(A045966(n+1))*A205006(A003961(n+1))`
-/

namespace A045973.P5776513889394228927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A045966 (n + 1)).toNat * A205006 (A003961 (n + 1)).toNat

end

end A045973.P5776513889394228927

/-!
# A045974: If m = p_i^e_i, n=Product p_j^f_j, set G_m(n) = Product p_{j+i}^{f_j*e_i}; extend G_m to all m by multiplicativity; sequence gives a(n)=G_n(n).

The programs for A045974, there is no canonical definition to state claims against.
-/

/-! ## A045974.P4839000202299740975

`A003961(A297473(n+1))`
-/

namespace A045974.P4839000202299740975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A297473 (n + 1)).toNat

end

end A045974.P4839000202299740975

/-! ## A045974.P554230587810894943

`∑{d}[A297473(n+1), A003972(#)]`
-/

namespace A045974.P554230587810894943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A045974.P554230587810894943

/-! ## A045974.P5862184718713623647

`A003961(A297845(∑[A008574(n)]))`
-/

namespace A045974.P5862184718713623647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A297845 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A045974.P5862184718713623647

/-! ## A045974.P12740818549101533776

`A045965(A297473(n+1))-A000007(n)`
-/

namespace A045974.P12740818549101533776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A297473 (n + 1)).toNat - A000007 n

end

end A045974.P12740818549101533776

/-! ## A045974.P10095253265834952867

`A045965(A297473(n+1))/A014963(2*A000040(n+1))`
-/

namespace A045974.P10095253265834952867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045965 (A297473 (n + 1)).toNat : ℚ) / (A014963 (2 * A000040 (n + 1)).toNat : ℚ)

end

end A045974.P10095253265834952867

/-!
# A045975: Take the first odd integer and multiple of 1, the next 2 even integers and multiples of 2, the next 3 odd integers and multiples of 3, the next 4 even integers and multiples of 4, ...

The programs for A045975, the canonical program `A045975.P10197366877055002796` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045975 has offset 1).

The definition of A045975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045975.P16075997600939028294

`∑[A066043(A002024(n+1))]-A003056(n)`
-/

namespace A045975.P16075997600939028294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066043 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 n

end

end A045975.P16075997600939028294

namespace A045975

/-- `∑[A066043(A002024(n+1))]-A003056(n)` -/
def P16075997600939028294.Spec : Prop :=
  ∀ n, P16075997600939028294.a n = A045975 (n + 1)

end A045975

/-! ## A045975.P10197366877055002796

`∑[A109043(A002024(n+1))-A010054(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A045975

/-- `∑[A109043(A002024(n+1))-A010054(n)]` -/
def P10197366877055002796.Spec : Prop :=
  ∀ n, P10197366877055002796.a n = A045975 (n + 1)

theorem P10197366877055002796.correct : P10197366877055002796.Spec := by
  intro n
  simp only [A045975, Nat.add_sub_cancel]

end A045975

/-! ## A045975.P9360546312127150946

`∑[A109043(A003056(n)+1)-A010054(n)]`
-/

namespace A045975.P9360546312127150946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A003056 n + 1).toNat - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045975.P9360546312127150946

namespace A045975

/-- `∑[A109043(A003056(n)+1)-A010054(n)]` -/
def P9360546312127150946.Spec : Prop :=
  ∀ n, P9360546312127150946.a n = A045975 (n + 1)

end A045975

/-! ## A045975.P6932184926087904136

`∑[A109043(A000194(2*n+1))]-A000194(2*n+1)`
-/

namespace A045975.P6932184926087904136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A000194 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000194 (2 * n + 1)

end

end A045975.P6932184926087904136

namespace A045975

/-- `∑[A109043(A000194(2*n+1))]-A000194(2*n+1)` -/
def P6932184926087904136.Spec : Prop :=
  ∀ n, P6932184926087904136.a n = A045975 (n + 1)

end A045975

/-! ## A045975.P373315732313829275

`A137214(A082733(n+1))+A000093(n)`
-/

namespace A045975.P373315732313829275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137214 (A082733 (n + 1)).toNat + A000093 n

end

end A045975.P373315732313829275

namespace A045975

/-- `A137214(A082733(n+1))+A000093(n)` -/
def P373315732313829275.Spec : Prop :=
  ∀ n, P373315732313829275.a n = A045975 (n + 1)

end A045975

/-!
# A045976: A product related to n-th roots of 1.

The programs for A045976, there is no canonical definition to state claims against.
-/

/-! ## A045976.P14118591300025462267

`A128097(A116383(n))²`
-/

namespace A045976.P14118591300025462267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128097 (A116383 n).toNat ^ 2

end

end A045976.P14118591300025462267

/-! ## A045976.P4822237613650442979

`A371839(C(A194600(n+1), 2))²`
-/

namespace A045976.P4822237613650442979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371839 (Nat.choose (A194600 (n + 1)).toNat 2) ^ 2

end

end A045976.P4822237613650442979

/-!
# A045977: Smallest number with same number of divisors as n!.

The programs for A045977, there is no canonical definition to state claims against.
-/

/-! ## A045977.P1221845829401647158

`A028310(n)*A274795(A028310(n))`
-/

namespace A045977.P1221845829401647158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A274795 (A028310 n).toNat

end

end A045977.P1221845829401647158

/-! ## A045977.P1178420464696618274

`A123108(2*n)*A274795(A123108(2*n))`
-/

namespace A045977.P1178420464696618274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A274795 (A123108 (2 * n)).toNat

end

end A045977.P1178420464696618274

/-! ## A045977.P15213217576881510186

`A007318(A000124(n))*A274795(A000038(n)+n)`
-/

namespace A045977.P15213217576881510186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A274795 (A000038 n + (n : ℤ)).toNat

end

end A045977.P15213217576881510186

/-! ## A045977.P5387800165102068694

`A005179(A027423(n))`
-/

namespace A045977.P5387800165102068694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A027423 n).toNat

end

end A045977.P5387800165102068694

/-! ## A045977.P12184536258853775856

`A005179(A153823(n)+1)`
-/

namespace A045977.P12184536258853775856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A153823 n + 1).toNat

end

end A045977.P12184536258853775856

/-!
# A045978: Palindromic primes that are "near miss circular primes" (all cyclic shifts except one are primes).

The programs for A045978, there is no canonical definition to state claims against.
-/

/-! ## A045978.P15907197747008967250

`∩[A002113(n+1), A270083(n+1)]`
-/

namespace A045978.P15907197747008967250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045978.P15907197747008967250

/-! ## A045978.P6908556851972638237

`∩[A002385(n+1), A270083(n+1)]`
-/

namespace A045978.P6908556851972638237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045978.P6908556851972638237

/-! ## A045978.P12232610413727019890

`∩[A029950(n+1), A270083(n+1)]`
-/

namespace A045978.P12232610413727019890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045978.P12232610413727019890

/-! ## A045978.P8457659963405108919

`∩[A056525(n+1), A270083(n+1)]`
-/

namespace A045978.P8457659963405108919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045978.P8457659963405108919

/-! ## A045978.P11497581312393913422

`∩[A062687(n+1), A270083(n+1)]`
-/

namespace A045978.P11497581312393913422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045978.P11497581312393913422

/-!
# A045979: Numbers m such that the Bernoulli number B_{2m} has denominator 6.

The programs for A045979, the canonical program `A045979.P6130204729807151919` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045979 has offset 1).

The definition of A045979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045979.P17780265562979779200

`eq[2, A277087(n)]`
-/

namespace A045979.P17780265562979779200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045979.P17780265562979779200

namespace A045979

/-- `eq[2, A277087(n)]` -/
def P17780265562979779200.Spec : Prop :=
  ∀ n, (P17780265562979779200.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P14120657973372477939

`eq[6, A002445(n)]`
-/

namespace A045979.P14120657973372477939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045979.P14120657973372477939

namespace A045979

/-- `eq[6, A002445(n)]` -/
def P14120657973372477939.Spec : Prop :=
  ∀ n, (P14120657973372477939.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P4825144259996042027

`eq[8, A396683(n)]`
-/

namespace A045979.P4825144259996042027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045979.P4825144259996042027

namespace A045979

/-- `eq[8, A396683(n)]` -/
def P4825144259996042027.Spec : Prop :=
  ∀ n, (P4825144259996042027.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P4053155977367384114

`eq[24, A006863(n)]`
-/

namespace A045979.P4053155977367384114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045979.P4053155977367384114

namespace A045979

/-- `eq[24, A006863(n)]` -/
def P4053155977367384114.Spec : Prop :=
  ∀ n, (P4053155977367384114.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P14025268056535578761

`eq[3, p?[A166333(n)]]`
-/

namespace A045979.P14025268056535578761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045979.P14025268056535578761

namespace A045979

/-- `eq[3, p?[A166333(n)]]` -/
def P14025268056535578761.Spec : Prop :=
  ∀ n, (P14025268056535578761.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P17461338313958639692

`A051222(n+1)/2`
-/

namespace A045979.P17461338313958639692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051222 (n + 1) : ℚ) / 2

end

end A045979.P17461338313958639692

namespace A045979

/-- `A051222(n+1)/2` -/
def P17461338313958639692.Spec : Prop :=
  ∀ n, P17461338313958639692.a n = (A045979 (n + 1) : ℚ)

theorem P17461338313958639692.correct : P17461338313958639692.Spec := by
  intro n
  simp only [A045979, Nat.add_sub_cancel, A045979.P17461338313958639692.a, A045979.P6130204729807151919.f1, A045979.P6130204729807151919.f2, A045979.P6130204729807151919.a, A051222, A051222.P2891263857057906711.a, A086668, A086668.P4494545918892902591.f1, A086668.P4494545918892902591.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045979

/-! ## A045979.P3596284807764931989

`eq[5, A166306(n+1)]`
-/

namespace A045979.P3596284807764931989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045979.P3596284807764931989

namespace A045979

/-- `eq[5, A166306(n+1)]` -/
def P3596284807764931989.Spec : Prop :=
  ∀ n, (P3596284807764931989.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P16239705247863764716

`eq[3, A166333(2*n)]`
-/

namespace A045979.P16239705247863764716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045979.P16239705247863764716

namespace A045979

/-- `eq[3, A166333(2*n)]` -/
def P16239705247863764716.Spec : Prop :=
  ∀ n, (P16239705247863764716.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P13468006683461503541

`eq[6, A106458(2*n)]`
-/

namespace A045979.P13468006683461503541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045979.P13468006683461503541

namespace A045979

/-- `eq[6, A106458(2*n)]` -/
def P13468006683461503541.Spec : Prop :=
  ∀ n, (P13468006683461503541.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P15931805464515158060

`record[A397480(2*n+1)]`
-/

namespace A045979.P15931805464515158060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397480 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045979.P15931805464515158060

namespace A045979

/-- `record[A397480(2*n+1)]` -/
def P15931805464515158060.Spec : Prop :=
  ∀ n, P15931805464515158060.a n = A045979 (n + 1)

end A045979

/-! ## A045979.P6130204729807151919

`eq[1, A086668(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045979

/-- `eq[1, A086668(n+1)]+1` -/
def P6130204729807151919.Spec : Prop :=
  ∀ n, (P6130204729807151919.a n : ℤ) = A045979 (n + 1)

theorem P6130204729807151919.correct : P6130204729807151919.Spec := by
  intro n
  simp only [A045979, Nat.add_sub_cancel]

end A045979

/-! ## A045979.P11559904806980104556

`eq[1, A202318(n+1)]+1`
-/

namespace A045979.P11559904806980104556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045979.P11559904806980104556

namespace A045979

/-- `eq[1, A202318(n+1)]+1` -/
def P11559904806980104556.Spec : Prop :=
  ∀ n, (P11559904806980104556.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P8158450420181677425

`eq[2, A046886(n+1)]+1`
-/

namespace A045979.P8158450420181677425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045979.P8158450420181677425

namespace A045979

/-- `eq[2, A046886(n+1)]+1` -/
def P8158450420181677425.Spec : Prop :=
  ∀ n, (P8158450420181677425.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P17496271931297572933

`filter[2*n+1, A086668(#)]`
-/

namespace A045979.P17496271931297572933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086668 (f1 j) = 1) n)

end

end A045979.P17496271931297572933

namespace A045979

/-- `filter[2*n+1, A086668(#)]` -/
def P17496271931297572933.Spec : Prop :=
  ∀ n, (P17496271931297572933.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P12000878698323822274

`filter[2*n+1, A165949(#)]`
-/

namespace A045979.P12000878698323822274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165949 (f1 j) = 1) n)

end

end A045979.P12000878698323822274

namespace A045979

/-- `filter[2*n+1, A165949(#)]` -/
def P12000878698323822274.Spec : Prop :=
  ∀ n, (P12000878698323822274.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P5703718955178790425

`filter[2*n+1, A202318(#)]`
-/

namespace A045979.P5703718955178790425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202318 (f1 j) = 1) n)

end

end A045979.P5703718955178790425

namespace A045979

/-- `filter[2*n+1, A202318(#)]` -/
def P5703718955178790425.Spec : Prop :=
  ∀ n, (P5703718955178790425.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P848313567372733823

`eq[1, A355452(2*(n+1))]+1`
-/

namespace A045979.P848313567372733823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355452 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045979.P848313567372733823

namespace A045979

/-- `eq[1, A355452(2*(n+1))]+1` -/
def P848313567372733823.Spec : Prop :=
  ∀ n, (P848313567372733823.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P6994673426008273147

`eq[2, A322313(2*(n+1))]+1`
-/

namespace A045979.P6994673426008273147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322313 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045979.P6994673426008273147

namespace A045979

/-- `eq[2, A322313(2*(n+1))]+1` -/
def P6994673426008273147.Spec : Prop :=
  ∀ n, (P6994673426008273147.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P13064539605866177970

`eq[2, A322315(2*(n+1))]+1`
-/

namespace A045979.P13064539605866177970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045979.P13064539605866177970

namespace A045979

/-- `eq[2, A322315(2*(n+1))]+1` -/
def P13064539605866177970.Spec : Prop :=
  ∀ n, (P13064539605866177970.a n : ℤ) = A045979 (n + 1)

end A045979

/-! ## A045979.P17499711865763362754

`lt[n, 2*A346468(2*n+1)]`
-/

namespace A045979.P17499711865763362754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346468 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045979.P17499711865763362754

namespace A045979

/-- `lt[n, 2*A346468(2*n+1)]` -/
def P17499711865763362754.Spec : Prop :=
  ∀ n, (P17499711865763362754.a n : ℤ) = A045979 (n + 1)

end A045979

/-!
# A045980: Numbers of the form x^3 + y^3 or x^3 - y^3.

The programs for A045980, there is no canonical definition to state claims against.
-/

/-! ## A045980.P14854980594875363783

`∪[A020894(n+1), n*n²]`
-/

namespace A045980.P14854980594875363783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A045980.P14854980594875363783

/-! ## A045980.P14986205101644039984

`∪[A000578(n), A020894(n+1)]`
-/

namespace A045980.P14986205101644039984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P14986205101644039984

/-! ## A045980.P1410534456134687854

`∪[A307585(n+1), A033431(n)]`
-/

namespace A045980.P1410534456134687854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P1410534456134687854

/-! ## A045980.P8812139403365636086

`∪[A307585(n+1), A213389(n)]`
-/

namespace A045980.P8812139403365636086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P8812139403365636086

/-! ## A045980.P14518308310804452580

`∪[A004999(n+1), A020894(n+1)]`
-/

namespace A045980.P14518308310804452580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P14518308310804452580

/-! ## A045980.P9709734701478415819

`∪[A004999(n+1), A038593(n+1)]`
-/

namespace A045980.P9709734701478415819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P9709734701478415819

/-! ## A045980.P7791626269372941455

`∪[A114090(n+1), A020894(n+1)]`
-/

namespace A045980.P7791626269372941455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P7791626269372941455

/-! ## A045980.P2085774050099939985

`∪[A003325(n+1), A152043(n+1)]`
-/

namespace A045980.P2085774050099939985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P2085774050099939985

/-! ## A045980.P8548104028068430514

`∪[A004999(n+1), A152043(n+1)]`
-/

namespace A045980.P8548104028068430514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P8548104028068430514

/-! ## A045980.P1454235984392354006

`∪[A152043(n+1), A020894(n+1)]`
-/

namespace A045980.P1454235984392354006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P1454235984392354006

/-! ## A045980.P10189200815298074764

`∪[A004999(n+1), A181123(n+1)]`
-/

namespace A045980.P10189200815298074764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P10189200815298074764

/-! ## A045980.P8135298071129728972

`∪[A004999(n+1), A307585(n+1)]`
-/

namespace A045980.P8135298071129728972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P8135298071129728972

/-! ## A045980.P3402704529546836132

`∪[A307585(n+1), A020894(n+1)]`
-/

namespace A045980.P3402704529546836132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045980.P3402704529546836132

/-!
# A045983: Numbers k such that n or more consecutive integers starting at k have the same number of distinct prime divisors.

The programs for A045983, there is no canonical definition to state claims against.
-/

/-! ## A045983.P183628974804938469

`A064708(n+1)%(A076197(n+1)-A234743(n))`
-/

namespace A045983.P183628974804938469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064708 (n + 1)) (A076197 (n + 1) - A234743 n)

end

end A045983.P183628974804938469

/-!
# A045984: a(n) = smallest number m such that factorizations of n consecutive integers starting at m have same number of primes (counted with multiplicity).

The programs for A045984, there is no canonical definition to state claims against.
-/

/-! ## A045984.P17487805828139221519

`and(-(val(n+1, 4)+1), A077657(n))`
-/

namespace A045984.P17487805828139221519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(SequenceMachineLib.valuation (n + 1) 4 + 1 : ℤ)) (A077657 n)

end

end A045984.P17487805828139221519

/-! ## A045984.P13228819923378572757

`A077657(char[A001576(n)]+n)`
-/

namespace A045984.P13228819923378572757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077657 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A045984.P13228819923378572757

/-! ## A045984.P1206082938305141867

`A077657(char[A256873(n)]+n)`
-/

namespace A045984.P1206082938305141867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077657 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A045984.P1206082938305141867

/-! ## A045984.P10205615440911255014

`A077657(n)-char[A001576(n)]`
-/

namespace A045984.P10205615440911255014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077657 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045984.P10205615440911255014

/-! ## A045984.P15034991672991953012

`A077657(n)-char[A095124(n)]`
-/

namespace A045984.P15034991672991953012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095124 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077657 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045984.P15034991672991953012

/-!
# A045985: a(n) = least k such that sum of first k primes is n times a prime.

The programs for A045985, there is no canonical definition to state claims against.
-/

/-! ## A045985.P4235140050598502551

`A007908(a(n-1))` with `a(0)=1, a(1)=3, a(2)=10, a(3)=5, a(4)=3`
-/

namespace A045985.P4235140050598502551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 5, 3] fun n a =>
  A007908 (a (n - 1)).toNat

end

end A045985.P4235140050598502551

/-! ## A045985.P13881017022933546076

`A204217(A380015(n)+A226254(n))`
-/

namespace A045985.P13881017022933546076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (A380015 n + A226254 n).toNat

end

end A045985.P13881017022933546076

/-!
# A045986: Describe the n-th triangular number A000217(n).

The programs for A045986, there is no canonical definition to state claims against.
-/

/-! ## A045986.P1181691166416406260

`A045918(∑[n])`
-/

namespace A045986.P1181691166416406260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045986.P1181691166416406260

/-! ## A045986.P3882536399438207501

`and(-1, A045918(C(n+1, 2)))`
-/

namespace A045986.P3882536399438207501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A045918 (Nat.choose (n + 1) 2))

end

end A045986.P3882536399438207501

/-! ## A045986.P4088639347755182448

`and(-1, A045918((n²+n)/2))`
-/

namespace A045986.P4088639347755182448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A045918 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A045986.P4088639347755182448

/-! ## A045986.P154767821298673591

`abs(A045918(C(Δ[n²]-n, 2))-1)+1`
-/

namespace A045986.P154767821298673591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045918 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat 2) - 1| + 1

end

end A045986.P154767821298673591

/-! ## A045986.P7028616537317381312

`lcm((-1)^∑{e}[n+1, #], A045918(n*(n+1)/2))`
-/

namespace A045986.P7028616537317381312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A045918 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A045986.P7028616537317381312

/-! ## A045986.P15853284095744465414

`or(char[1], A045918(A000217(n)))`
-/

namespace A045986.P15853284095744465414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A045918 (A000217 n).toNat)

end

end A045986.P15853284095744465414

/-! ## A045986.P18247602125830901671

`abs(A033999(n)*A045918(C(n+1, 2)))`
-/

namespace A045986.P18247602125830901671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A045918 (Nat.choose (n + 1) 2)|

end

end A045986.P18247602125830901671

/-! ## A045986.P15239615504598563615

`A045918(C(n+1, 2))+A000007(n+1)`
-/

namespace A045986.P15239615504598563615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (Nat.choose (n + 1) 2) + A000007 (n + 1)

end

end A045986.P15239615504598563615

/-! ## A045986.P15803497191925977237

`A000034(2*n)*A045918(C(n+1, 2))`
-/

namespace A045986.P15803497191925977237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A045918 (Nat.choose (n + 1) 2)

end

end A045986.P15803497191925977237

/-! ## A045986.P160107071419206747

`A045918(C(n+1, 2))+A008683(4*(n+1))`
-/

namespace A045986.P160107071419206747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (Nat.choose (n + 1) 2) + A008683 (4 * (n + 1))

end

end A045986.P160107071419206747

/-! ## A045986.P8851205764849714330

`A000045(-or(n, -2))*A045918(C(n+1, 2))`
-/

namespace A045986.P8851205764849714330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (-Int.lor (n : ℤ) (-2)).toNat * A045918 (Nat.choose (n + 1) 2)

end

end A045986.P8851205764849714330

/-! ## A045986.P11299151023477331544

`A045918(C(n+1, 2))-A000040(n+2)%2+1`
-/

namespace A045986.P11299151023477331544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (Nat.choose (n + 1) 2) - Int.tmod (A000040 (n + 2)) 2 + 1

end

end A045986.P11299151023477331544

/-!
# A045987: Describe 2^n.

The programs for A045987, there is no canonical definition to state claims against.
-/

/-! ## A045987.P1250368010939856722

`A045918(2^n)`
-/

namespace A045987.P1250368010939856722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (2 ^ n)

end

end A045987.P1250368010939856722

/-! ## A045987.P16332634908710317857

`record[A045918(A001316(n))]`
-/

namespace A045987.P16332634908710317857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045987.P16332634908710317857

/-! ## A045987.P14300543405901806451

`record[A045918(A029930(n))]`
-/

namespace A045987.P14300543405901806451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045987.P14300543405901806451

/-! ## A045987.P14940882090297450995

`record[A045918(A034008(n))]`
-/

namespace A045987.P14940882090297450995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045987.P14940882090297450995

/-! ## A045987.P16081805725899290069

`record[A045918(A055248(n))]`
-/

namespace A045987.P16081805725899290069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045987.P16081805725899290069

/-!
# A045988: Describe the n-th Fibonacci number A000045(n).

The programs for A045988, there is no canonical definition to state claims against.
-/

/-! ## A045988.P8649970665716775194

`A045918(round(ϕ^n/sqrt(5)))`
-/

namespace A045988.P8649970665716775194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A045988.P8649970665716775194

/-! ## A045988.P17844364661015579415

`and(-1, A045918(A000045(n)))`
-/

namespace A045988.P17844364661015579415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A045918 (A000045 n).toNat)

end

end A045988.P17844364661015579415

/-! ## A045988.P12224686972091724180

`and(-1, A045918(abs(A236191(n))))`
-/

namespace A045988.P12224686972091724180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A045918 |A236191 n|.toNat)

end

end A045988.P12224686972091724180

/-! ## A045988.P13044442644245814705

`and(-1, A045918(A212804(n+1)))`
-/

namespace A045988.P13044442644245814705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A045918 (A212804 (n + 1)).toNat)

end

end A045988.P13044442644245814705

/-!
# A045989: a(n) = A045954(n)/2.

The programs for A045989, there is no canonical definition to state claims against.
-/

/-! ## A045989.P5758230734179031457

`A045954(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045989.P5758230734179031457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045954 (n + 1) : ℚ) / 2

end

end A045989.P5758230734179031457

/-! ## A045989.P8000110663796684621

`ceil(A111039(n+1)/2)`
-/

namespace A045989.P8000110663796684621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111039 (n + 1) : ℚ) / 2⌉

end

end A045989.P8000110663796684621

/-! ## A045989.P2257706772788446623

`record[A045954(A344180(n))/2]`
-/

namespace A045989.P2257706772788446623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045954 (A344180 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045989.P2257706772788446623

/-! ## A045989.P5455437074008347282

`(A000959(n+1)-A118125(n+1))/2`
-/

namespace A045989.P5455437074008347282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) - A118125 (n + 1) : ℚ) / 2

end

end A045989.P5455437074008347282

/-! ## A045989.P9676143610282687752

`record[A045954(A133310(n))/2]`
-/

namespace A045989.P9676143610282687752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045954 (A133310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045989.P9676143610282687752

/-! ## A045989.P8822832850647652899

`A302032(A045954(n+1))`
-/

namespace A045989.P8822832850647652899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A045954 (n + 1)).toNat

end

end A045989.P8822832850647652899

/-! ## A045989.P301265333046762755

`A249122(A045954(n+1)+1)`
-/

namespace A045989.P301265333046762755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A045954 (n + 1) + 1).toNat

end

end A045989.P301265333046762755

/-! ## A045989.P2056279847955948263

`A001281(A045954(n+1))`
-/

namespace A045989.P2056279847955948263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A045954 (n + 1)).toNat

end

end A045989.P2056279847955948263

/-! ## A045989.P12351869080312766054

`A000463(A111039(n+1))`
-/

namespace A045989.P12351869080312766054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A111039 (n + 1)).toNat

end

end A045989.P12351869080312766054

/-! ## A045989.P11559004089200276137

`A004524(A045954(n+1)+1)`
-/

namespace A045989.P11559004089200276137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A045954 (n + 1) + 1).toNat

end

end A045989.P11559004089200276137

/-! ## A045989.P12082538101940823011

`A000463(A045954(n+1)-1)`
-/

namespace A045989.P12082538101940823011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A045954 (n + 1) - 1).toNat

end

end A045989.P12082538101940823011

/-! ## A045989.P15322618153787978135

`A001057(A045954(n+1)-1)`
-/

namespace A045989.P15322618153787978135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A045954 (n + 1) - 1).toNat

end

end A045989.P15322618153787978135

/-! ## A045989.P18000244630756063607

`A003602(A045954(n+1)-1)`
-/

namespace A045989.P18000244630756063607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A045954 (n + 1) - 1).toNat

end

end A045989.P18000244630756063607

/-! ## A045989.P16498624029444623076

`A008619(A045954(n+1)-1)`
-/

namespace A045989.P16498624029444623076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A045954 (n + 1) - 1).toNat

end

end A045989.P16498624029444623076

/-! ## A045989.P818284518338635242

`A082500(A045954(n+1)-1)`
-/

namespace A045989.P818284518338635242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A045954 (n + 1) - 1).toNat

end

end A045989.P818284518338635242

/-! ## A045989.P9607303552275332105

`A159481(A045954(n+1)-1)`
-/

namespace A045989.P9607303552275332105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A045954 (n + 1) - 1).toNat

end

end A045989.P9607303552275332105

/-! ## A045989.P10079500436961116296

`A008615(3*A045954(n+1))`
-/

namespace A045989.P10079500436961116296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A045954 (n + 1)).toNat

end

end A045989.P10079500436961116296

/-! ## A045989.P6952713122074045602

`record[A045954(A134478(n))/2]`
-/

namespace A045989.P6952713122074045602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045954 (A134478 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045989.P6952713122074045602

/-!
# A045990: a(n) = A034997(n)/2.

The programs for A045990, there is no canonical definition to state claims against.
-/

/-! ## A045990.P3978295887734393825

`A034997(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045990.P3978295887734393825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034997 (n + 1) : ℚ) / 2

end

end A045990.P3978295887734393825

/-! ## A045990.P7964398067928235696

`floor(A034997(A005496(n))/2)`
-/

namespace A045990.P7964398067928235696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034997 (A005496 n).toNat : ℚ) / 2⌋

end

end A045990.P7964398067928235696

/-!
# A045991: a(n) = n^3 - n^2.

The programs for A045991, the canonical program `A045991.P16915764248010155243` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045991 has offset 0).

The definition of A045991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²` (program `A045991.P16915764248010155243`, by `A045991.P16915764248010155243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045991.P13664782774858728519

`n²*(n-1)`
-/

namespace A045991.P13664782774858728519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((n : ℤ) - 1)

end

end A045991.P13664782774858728519

namespace A045991

/-- `n²*(n-1)` -/
def P13664782774858728519.Spec : Prop :=
  ∀ n, P13664782774858728519.a n = A045991 n

theorem P13664782774858728519.correct : P13664782774858728519.Spec := by
  intro n
  simp only [A045991, Nat.add_sub_cancel, A045991.P13664782774858728519.a, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A045991

/-! ## A045991.P16915764248010155243

`n^3-n²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045991

/-- `n^3-n²` -/
def P16915764248010155243.Spec : Prop :=
  ∀ n, P16915764248010155243.a n = A045991 n

theorem P16915764248010155243.correct : P16915764248010155243.Spec := by
  intro n
  simp only [A045991]

end A045991

/-! ## A045991.P15118808889482411688

`ogf((4x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A045991.P15118808889482411688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4, 2] [1, -4, 6, -4, 1] n

end

end A045991.P15118808889482411688

namespace A045991

/-- `ogf((4x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P15118808889482411688.Spec : Prop :=
  ∀ n, P15118808889482411688.a n = A045991 n

end A045991

/-! ## A045991.P7582888892690674865

`lcm(1-n, n²)`
-/

namespace A045991.P7582888892690674865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (n ^ 2 : ℤ)

end

end A045991.P7582888892690674865

namespace A045991

/-- `lcm(1-n, n²)` -/
def P7582888892690674865.Spec : Prop :=
  ∀ n, (P7582888892690674865.a n : ℤ) = A045991 n

end A045991

/-! ## A045991.P4621291038676123548

`floor(n/acot(n²-n))`
-/

namespace A045991.P4621291038676123548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((n ^ 2 : ℤ) - (n : ℤ) : ℝ)⌋

end

end A045991.P4621291038676123548

namespace A045991

/-- `floor(n/acot(n²-n))` -/
def P4621291038676123548.Spec : Prop :=
  ∀ n, P4621291038676123548.a n = A045991 n

end A045991

/-! ## A045991.P13331582877032211342

`2*C(n², 2)/(n+1)`
-/

namespace A045991.P13331582877032211342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n ^ 2) 2 : ℚ) / (n + 1 : ℚ)

end

end A045991.P13331582877032211342

namespace A045991

/-- `2*C(n², 2)/(n+1)` -/
def P13331582877032211342.Spec : Prop :=
  ∀ n, P13331582877032211342.a n = (A045991 n : ℚ)

theorem P13331582877032211342.correct : P13331582877032211342.Spec := by
  intro n
  simp only [A045991, Nat.add_sub_cancel, A045991.P13331582877032211342.a, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045991

/-! ## A045991.P17849991654857520499

`and(2*n*C(n, 2), -2)`
-/

namespace A045991.P17849991654857520499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n * Nat.choose n 2 : ℤ) (-2)

end

end A045991.P17849991654857520499

namespace A045991

/-- `and(2*n*C(n, 2), -2)` -/
def P17849991654857520499.Spec : Prop :=
  ∀ n, P17849991654857520499.a n = A045991 n

end A045991

/-! ## A045991.P11140334908899361515

`and(n*n*(n-1), -2)`
-/

namespace A045991.P11140334908899361515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 1))) (-2)

end

end A045991.P11140334908899361515

namespace A045991

/-- `and(n*n*(n-1), -2)` -/
def P11140334908899361515.Spec : Prop :=
  ∀ n, P11140334908899361515.a n = A045991 n

end A045991

/-! ## A045991.P5284966683015436047

`sqrt((2*n)²*C(n, 2)²)`
-/

namespace A045991.P5284966683015436047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * n) ^ 2 * Nat.choose n 2 ^ 2 : ℝ)

end

end A045991.P5284966683015436047

namespace A045991

/-- `sqrt((2*n)²*C(n, 2)²)` -/
def P5284966683015436047.Spec : Prop :=
  ∀ n, P5284966683015436047.a n = (A045991 n : ℝ)

end A045991

/-! ## A045991.P3720389218075127642

`-(2*n*Δ[-C(n, 3)])`
-/

namespace A045991.P3720389218075127642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * (f1 (n + 1) - f1 n))

end

end A045991.P3720389218075127642

namespace A045991

/-- `-(2*n*Δ[-C(n, 3)])` -/
def P3720389218075127642.Spec : Prop :=
  ∀ n, P3720389218075127642.a n = A045991 n

theorem P3720389218075127642.correct : P3720389218075127642.Spec := by
  intro n
  simp only [A045991, Nat.add_sub_cancel, A045991.P3720389218075127642.f1, A045991.P3720389218075127642.a, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045991

/-! ## A045991.P4807408670718860197

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A045991.P4807408670718860197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045991.P4807408670718860197

namespace A045991

/-- `∑[∑[a(n-1)+6]]` -/
def P4807408670718860197.Spec : Prop :=
  ∀ n, (P4807408670718860197.a n : ℤ) = A045991 n

end A045991

/-! ## A045991.P6161692598836790962

`n*(C(2*n, 2)-n)/2`
-/

namespace A045991.P6161692598836790962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((Nat.choose (2 * n) 2 : ℤ) - (n : ℤ)) : ℚ) / 2

end

end A045991.P6161692598836790962

namespace A045991

/-- `n*(C(2*n, 2)-n)/2` -/
def P6161692598836790962.Spec : Prop :=
  ∀ n, P6161692598836790962.a n = (A045991 n : ℚ)

theorem P6161692598836790962.correct : P6161692598836790962.Spec := by
  intro n
  simp only [A045991, Nat.add_sub_cancel, A045991.P6161692598836790962.a, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045991

/-! ## A045991.P1825934635394107258

`∑[3*C(2*n, 3)]/(n+1)`
-/

namespace A045991.P1825934635394107258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (2 * n) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A045991.P1825934635394107258

namespace A045991

/-- `∑[3*C(2*n, 3)]/(n+1)` -/
def P1825934635394107258.Spec : Prop :=
  ∀ n, P1825934635394107258.a n = (A045991 n : ℚ)

end A045991

/-! ## A045991.P7435327135035776211

`abs((C(n+1, 2)-n)*2*n)`
-/

namespace A045991.P7435327135035776211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.choose (n + 1) 2 : ℤ) - (n : ℤ)) * (2 * n : ℤ)|

end

end A045991.P7435327135035776211

namespace A045991

/-- `abs((C(n+1, 2)-n)*2*n)` -/
def P7435327135035776211.Spec : Prop :=
  ∀ n, P7435327135035776211.a n = A045991 n

end A045991

/-! ## A045991.P15104081866275509331

`-((n-C(n+1, 2))*2*n)`
-/

namespace A045991.P15104081866275509331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - (Nat.choose (n + 1) 2 : ℤ)) * (2 * n : ℤ))

end

end A045991.P15104081866275509331

namespace A045991

/-- `-((n-C(n+1, 2))*2*n)` -/
def P15104081866275509331.Spec : Prop :=
  ∀ n, P15104081866275509331.a n = A045991 n

theorem P15104081866275509331.correct : P15104081866275509331.Spec := by
  intro n
  simp only [A045991, Nat.add_sub_cancel, A045991.P15104081866275509331.a, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045991

/-! ## A045991.P3218221101463301781

`abs((n-1)*n^gcd(2, 2*n))`
-/

namespace A045991.P3218221101463301781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * (n ^ Nat.gcd 2 (2 * n) : ℤ)|

end

end A045991.P3218221101463301781

namespace A045991

/-- `abs((n-1)*n^gcd(2, 2*n))` -/
def P3218221101463301781.Spec : Prop :=
  ∀ n, P3218221101463301781.a n = A045991 n

end A045991

/-! ## A045991.P3607126856812732436

`sqrt((n-1)*lcm(n-1, n^4))`
-/

namespace A045991.P3607126856812732436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n : ℤ) - 1) * (Int.lcm ((n : ℤ) - 1) (n ^ 4 : ℤ) : ℤ) : ℝ)

end

end A045991.P3607126856812732436

namespace A045991

/-- `sqrt((n-1)*lcm(n-1, n^4))` -/
def P3607126856812732436.Spec : Prop :=
  ∀ n, P3607126856812732436.a n = (A045991 n : ℝ)

end A045991

/-! ## A045991.P11080815146354281023

`-(2*n*xor(-1, ∑[n-1]))`
-/

namespace A045991.P11080815146354281023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A045991.P11080815146354281023

namespace A045991

/-- `-(2*n*xor(-1, ∑[n-1]))` -/
def P11080815146354281023.Spec : Prop :=
  ∀ n, P11080815146354281023.a n = A045991 n

end A045991

/-! ## A045991.P11183613784821516137

`lcm(2, 2*n*n*(n-1))/2`
-/

namespace A045991.P11183613784821516137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((2 * n : ℤ) * ((n : ℤ) * ((n : ℤ) - 1))) : ℚ) / 2

end

end A045991.P11183613784821516137

namespace A045991

/-- `lcm(2, 2*n*n*(n-1))/2` -/
def P11183613784821516137.Spec : Prop :=
  ∀ n, P11183613784821516137.a n = (A045991 n : ℚ)

end A045991

/-! ## A045991.P6405679559141080866

`gcd(2*n*C(n, 2), and(1, 2*n))`
-/

namespace A045991.P6405679559141080866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n * Nat.choose n 2) (Nat.land 1 (2 * n))

end

end A045991.P6405679559141080866

namespace A045991

/-- `gcd(2*n*C(n, 2), and(1, 2*n))` -/
def P6405679559141080866.Spec : Prop :=
  ∀ n, (P6405679559141080866.a n : ℤ) = A045991 n

end A045991

/-!
# A045992: a(n) = binomial(2n,n) - n; number of (weakly) increasing or decreasing maps from 1,...,n to 1,...,n.

The programs for A045992, the canonical program `A045992.P603582236385676472` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045992 has offset 0).

The definition of A045992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)-n` (program `A045992.P603582236385676472`, by `A045992.P603582236385676472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045992.P603582236385676472

`C(2*n, n)-n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045992

/-- `C(2*n, n)-n` -/
def P603582236385676472.Spec : Prop :=
  ∀ n, P603582236385676472.a n = A045992 n

theorem P603582236385676472.correct : P603582236385676472.Spec := by
  intro n
  simp only [A045992]

end A045992

/-! ## A045992.P7669548314084413323

`∑{#}[n, C(n, #)²]-n`
-/

namespace A045992.P7669548314084413323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℤ) - (n : ℤ)

end

end A045992.P7669548314084413323

namespace A045992

/-- `∑{#}[n, C(n, #)²]-n` -/
def P7669548314084413323.Spec : Prop :=
  ∀ n, P7669548314084413323.a n = A045992 n

end A045992

/-! ## A045992.P10767807995142630062

`record[(4-4/n)*a(n-2)]-n` with `a(0)=1, a(1)=0`
-/

namespace A045992.P10767807995142630062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (4 - 4 / (n : ℚ)) * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ)

end

end A045992.P10767807995142630062

namespace A045992

/-- `record[(4-4/n)*a(n-2)]-n` -/
def P10767807995142630062.Spec : Prop :=
  ∀ n, P10767807995142630062.a n = (A045992 n : ℚ)

end A045992

/-! ## A045992.P16453371067999721103

`record[a(n-1)/(floor(n/2)/n-1)]-n` with `a(0)=1`
-/

namespace A045992.P16453371067999721103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ)

end

end A045992.P16453371067999721103

namespace A045992

/-- `record[a(n-1)/(floor(n/2)/n-1)]-n` -/
def P16453371067999721103.Spec : Prop :=
  ∀ n, P16453371067999721103.a n = (A045992 n : ℚ)

end A045992

/-! ## A045992.P7523091151954210182

`A000984(n)-n`
-/

namespace A045992.P7523091151954210182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (n : ℤ)

end

end A045992.P7523091151954210182

namespace A045992

/-- `A000984(n)-n` -/
def P7523091151954210182.Spec : Prop :=
  ∀ n, P7523091151954210182.a n = A045992 n

end A045992

/-! ## A045992.P677703678650827436

`record[A081668(n)]-n`
-/

namespace A045992.P677703678650827436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A045992.P677703678650827436

namespace A045992

/-- `record[A081668(n)]-n` -/
def P677703678650827436.Spec : Prop :=
  ∀ n, P677703678650827436.a n = A045992 n

end A045992

/-! ## A045992.P13434967118386395055

`record[A089849(n)]-n`
-/

namespace A045992.P13434967118386395055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A045992.P13434967118386395055

namespace A045992

/-- `record[A089849(n)]-n` -/
def P13434967118386395055.Spec : Prop :=
  ∀ n, P13434967118386395055.a n = A045992 n

end A045992

/-! ## A045992.P13923734176932571577

`record[A126869(n)]-n`
-/

namespace A045992.P13923734176932571577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A045992.P13923734176932571577

namespace A045992

/-- `record[A126869(n)]-n` -/
def P13923734176932571577.Spec : Prop :=
  ∀ n, P13923734176932571577.a n = A045992 n

end A045992

/-! ## A045992.P1858907169742346190

`record[A126930(n)]-n`
-/

namespace A045992.P1858907169742346190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A045992.P1858907169742346190

namespace A045992

/-- `record[A126930(n)]-n` -/
def P1858907169742346190.Spec : Prop :=
  ∀ n, P1858907169742346190.a n = A045992 n

end A045992

/-! ## A045992.P3155360391117648464

`record[A241543(n)]-n`
-/

namespace A045992.P3155360391117648464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A045992.P3155360391117648464

namespace A045992

/-- `record[A241543(n)]-n` -/
def P3155360391117648464.Spec : Prop :=
  ∀ n, P3155360391117648464.a n = A045992 n

end A045992

/-! ## A045992.P1720269920666739452

`A359176(n+1)+1`
-/

namespace A045992.P1720269920666739452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359176 (n + 1) + 1

end

end A045992.P1720269920666739452

namespace A045992

/-- `A359176(n+1)+1` -/
def P1720269920666739452.Spec : Prop :=
  ∀ n, P1720269920666739452.a n = A045992 n

end A045992

/-! ## A045992.P10903903045193841134

`A001405(2*n)-n`
-/

namespace A045992.P10903903045193841134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - (n : ℤ)

end

end A045992.P10903903045193841134

namespace A045992

/-- `A001405(2*n)-n` -/
def P10903903045193841134.Spec : Prop :=
  ∀ n, P10903903045193841134.a n = A045992 n

end A045992

/-! ## A045992.P13217460549980976739

`A063886(2*n)-n`
-/

namespace A045992.P13217460549980976739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - (n : ℤ)

end

end A045992.P13217460549980976739

namespace A045992

/-- `A063886(2*n)-n` -/
def P13217460549980976739.Spec : Prop :=
  ∀ n, P13217460549980976739.a n = A045992 n

end A045992

/-! ## A045992.P10808539209628246902

`A081668(2*n)-n`
-/

namespace A045992.P10808539209628246902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - (n : ℤ)

end

end A045992.P10808539209628246902

namespace A045992

/-- `A081668(2*n)-n` -/
def P10808539209628246902.Spec : Prop :=
  ∀ n, P10808539209628246902.a n = A045992 n

end A045992

/-! ## A045992.P1767351264870288111

`A089849(2*n)-n`
-/

namespace A045992.P1767351264870288111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (2 * n) - (n : ℤ)

end

end A045992.P1767351264870288111

namespace A045992

/-- `A089849(2*n)-n` -/
def P1767351264870288111.Spec : Prop :=
  ∀ n, P1767351264870288111.a n = A045992 n

end A045992

/-! ## A045992.P16439846697577044140

`A126869(2*n)-n`
-/

namespace A045992.P16439846697577044140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - (n : ℤ)

end

end A045992.P16439846697577044140

namespace A045992

/-- `A126869(2*n)-n` -/
def P16439846697577044140.Spec : Prop :=
  ∀ n, P16439846697577044140.a n = A045992 n

end A045992

/-! ## A045992.P1217534589221237428

`A126930(2*n)-n`
-/

namespace A045992.P1217534589221237428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - (n : ℤ)

end

end A045992.P1217534589221237428

namespace A045992

/-- `A126930(2*n)-n` -/
def P1217534589221237428.Spec : Prop :=
  ∀ n, P1217534589221237428.a n = A045992 n

end A045992

/-! ## A045992.P77521527890019305

`A128014(2*n)-n`
-/

namespace A045992.P77521527890019305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * n) - (n : ℤ)

end

end A045992.P77521527890019305

namespace A045992

/-- `A128014(2*n)-n` -/
def P77521527890019305.Spec : Prop :=
  ∀ n, P77521527890019305.a n = A045992 n

end A045992

/-! ## A045992.P6641497606225598340

`A129383(2*n)-n`
-/

namespace A045992.P6641497606225598340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (2 * n) - (n : ℤ)

end

end A045992.P6641497606225598340

namespace A045992

/-- `A129383(2*n)-n` -/
def P6641497606225598340.Spec : Prop :=
  ∀ n, P6641497606225598340.a n = A045992 n

end A045992

/-! ## A045992.P1029628126628044499

`A134758(n)-2*n`
-/

namespace A045992.P1029628126628044499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134758 n - (2 * n : ℤ)

end

end A045992.P1029628126628044499

namespace A045992

/-- `A134758(n)-2*n` -/
def P1029628126628044499.Spec : Prop :=
  ∀ n, P1029628126628044499.a n = A045992 n

theorem P1029628126628044499.correct : P1029628126628044499.Spec := by
  intro n
  simp only [A045992, Nat.add_sub_cancel, A045992.P1029628126628044499.a, A045992.P603582236385676472.a, A134758, A134758.P3097203731672110701.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045992

/-!
# A045993: Expansion of (1-x)/(1 - 10*x + 18*x^2 - 8*x^3).

The programs for A045993, the canonical program `A045993.P5914701307138334760` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045993 has offset 0).

The definition of A045993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-10x+18x^2-8x^3))` (program `A045993.P5914701307138334760`, by `A045993.P5914701307138334760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045993.P5914701307138334760

`ogf((1-x)/(1-10x+18x^2-8x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045993

/-- `ogf((1-x)/(1-10x+18x^2-8x^3))` -/
def P5914701307138334760.Spec : Prop :=
  ∀ n, P5914701307138334760.a n = A045993 n

theorem P5914701307138334760.correct : P5914701307138334760.Spec := by
  intro n
  simp only [A045993]

end A045993

/-! ## A045993.P11552666244766404615

`10*a(n-1)-18*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=9, a(2)=72`
-/

namespace A045993.P11552666244766404615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 72] fun n a =>
  10 * a (n - 1) - 18 * a (n - 2) + 8 * a (n - 3)

end

end A045993.P11552666244766404615

namespace A045993

/-- `10*a(n-1)-18*a(n-2)+8*a(n-3)` -/
def P11552666244766404615.Spec : Prop :=
  ∀ n, P11552666244766404615.a n = A045993 n

end A045993

/-!
# A045994: a(0)=1, a(n) = M(n) + Sum_{k=1..n-1} M(k)*a(n-k-1), where M(n) are the Motzkin numbers (A001006).

The programs for A045994, there is no canonical definition to state claims against.
-/

/-! ## A045994.P4307018899239867372

`A191385(Δ[n²])`
-/

namespace A045994.P4307018899239867372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045994.P4307018899239867372

/-! ## A045994.P5934814491942366468

`-xor(A191385(2*n+1)-1, -1)`
-/

namespace A045994.P5934814491942366468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A191385 (2 * n + 1) - 1) (-1)

end

end A045994.P5934814491942366468

/-! ## A045994.P2905749674945915679

`lcm(A106400(n), A191385(2*n+1))`
-/

namespace A045994.P2905749674945915679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A191385 (2 * n + 1))

end

end A045994.P2905749674945915679

/-! ## A045994.P5319082143875715233

`or(A000007(n), A191385(2*n+1))`
-/

namespace A045994.P5319082143875715233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A191385 (2 * n + 1))

end

end A045994.P5319082143875715233

/-! ## A045994.P12141817210806493077

`A191385(2*n+1)+A000007(n+1)`
-/

namespace A045994.P12141817210806493077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191385 (2 * n + 1) + A000007 (n + 1)

end

end A045994.P12141817210806493077

/-! ## A045994.P6772639369059539615

`A191385(2*n+1)+A042970(2*n+1)`
-/

namespace A045994.P6772639369059539615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191385 (2 * n + 1) + A042970 (2 * n + 1)

end

end A045994.P6772639369059539615

/-! ## A045994.P12905190903553158959

`A191385(A005408(n))/or(1, A000007(n))`
-/

namespace A045994.P12905190903553158959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191385 (A005408 n).toNat : ℚ) / (Int.lor 1 (A000007 n) : ℚ)

end

end A045994.P12905190903553158959

/-! ## A045994.P13198309997474990205

`A191385(A005408(n+1))-Δ[A191385(2*n+1)]`
-/

namespace A045994.P13198309997474990205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191385 (A005408 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A045994.P13198309997474990205

/-! ## A045994.P8344815169775198496

`A191317(2*n+1)-A000931(4*(n+1))`
-/

namespace A045994.P8344815169775198496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191317 (2 * n + 1) - A000931 (4 * (n + 1))

end

end A045994.P8344815169775198496

/-! ## A045994.P4205051576288953077

`A054576(A133773(n+1))*A191385(A005408(n))`
-/

namespace A045994.P4205051576288953077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A133773 (n + 1)).toNat * A191385 (A005408 n).toNat

end

end A045994.P4205051576288953077

/-! ## A045994.P16898924600807930509

`A054576(A133773(n+2))*A191385(2*n+1)`
-/

namespace A045994.P16898924600807930509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A133773 (n + 2)).toNat * A191385 (2 * n + 1)

end

end A045994.P16898924600807930509

/-! ## A045994.P11620403228186080721

`A191385(A005408(n))%A208836(n+1)`
-/

namespace A045994.P11620403228186080721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191385 (A005408 n).toNat) (A208836 (n + 1))

end

end A045994.P11620403228186080721

/-!
# A045995: Rows of Fibonacci-Pascal triangle.

The programs for A045995, the canonical program `A045995.P12330677687110023371` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045995 has offset 0).

The definition of A045995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045995.P12330677687110023371

`A000045(C(row(n), col(n)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045995

/-- `A000045(C(row(n), col(n)))` -/
def P12330677687110023371.Spec : Prop :=
  ∀ n, P12330677687110023371.a n = A045995 n

theorem P12330677687110023371.correct : P12330677687110023371.Spec := by
  intro n
  simp only [A045995]

end A045995

/-! ## A045995.P15852759993188231343

`A000071(C(row(n), col(n)))+1`
-/

namespace A045995.P15852759993188231343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)) + 1

end

end A045995.P15852759993188231343

namespace A045995

/-- `A000071(C(row(n), col(n)))+1` -/
def P15852759993188231343.Spec : Prop :=
  ∀ n, P15852759993188231343.a n = A045995 n

end A045995

/-! ## A045995.P5235445128918656768

`A212804(C(row(n), col(n))+1)`
-/

namespace A045995.P5235445128918656768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) + 1)

end

end A045995.P5235445128918656768

namespace A045995

/-- `A212804(C(row(n), col(n))+1)` -/
def P5235445128918656768.Spec : Prop :=
  ∀ n, P5235445128918656768.a n = A045995 n

end A045995

/-! ## A045995.P1237112857413713783

`A103609(2*C(row(n), col(n)))`
-/

namespace A045995.P1237112857413713783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))

end

end A045995.P1237112857413713783

namespace A045995

/-- `A103609(2*C(row(n), col(n)))` -/
def P1237112857413713783.Spec : Prop :=
  ∀ n, P1237112857413713783.a n = A045995 n

end A045995

/-! ## A045995.P12383962154868527139

`A000045(A007318(n))`
-/

namespace A045995.P12383962154868527139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A007318 n).toNat

end

end A045995.P12383962154868527139

namespace A045995

/-- `A000045(A007318(n))` -/
def P12383962154868527139.Spec : Prop :=
  ∀ n, P12383962154868527139.a n = A045995 n

end A045995

/-! ## A045995.P9562863969195201993

`A053602(A028326(n))`
-/

namespace A045995.P9562863969195201993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A028326 n).toNat

end

end A045995.P9562863969195201993

namespace A045995

/-- `A053602(A028326(n))` -/
def P9562863969195201993.Spec : Prop :=
  ∀ n, P9562863969195201993.a n = A045995 n

end A045995

/-! ## A045995.P3999100958177669953

`A000045(A132749(n))`
-/

namespace A045995.P3999100958177669953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A132749 n).toNat

end

end A045995.P3999100958177669953

namespace A045995

/-- `A000045(A132749(n))` -/
def P3999100958177669953.Spec : Prop :=
  ∀ n, P3999100958177669953.a n = A045995 n

end A045995

/-! ## A045995.P8350881410936976011

`A059974(A074589(n))`
-/

namespace A045995.P8350881410936976011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059974 (A074589 n).toNat

end

end A045995.P8350881410936976011

namespace A045995

/-- `A059974(A074589(n))` -/
def P8350881410936976011.Spec : Prop :=
  ∀ n, P8350881410936976011.a n = A045995 n

end A045995

/-! ## A045995.P17410323496911544505

`A053602(A124927(n))`
-/

namespace A045995.P17410323496911544505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A124927 n).toNat

end

end A045995.P17410323496911544505

namespace A045995

/-- `A053602(A124927(n))` -/
def P17410323496911544505.Spec : Prop :=
  ∀ n, P17410323496911544505.a n = A045995 n

end A045995

/-! ## A045995.P9412135537697955247

`A053602(A129994(n))`
-/

namespace A045995.P9412135537697955247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A129994 n).toNat

end

end A045995.P9412135537697955247

namespace A045995

/-- `A053602(A129994(n))` -/
def P9412135537697955247.Spec : Prop :=
  ∀ n, P9412135537697955247.a n = A045995 n

end A045995

/-!
# A045996: Number of triangles in an n X n grid (or geoplane).

The programs for A045996, there is no canonical definition to state claims against.
-/

/-! ## A045996.P11575790079076271641

`C((n+1)², 3)-A000938(n+1)`
-/

namespace A045996.P11575790079076271641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 3 : ℤ) - A000938 (n + 1)

end

end A045996.P11575790079076271641

/-! ## A045996.P8740589098772497268

`A178208(n+1)-A000938(n+1)`
-/

namespace A045996.P8740589098772497268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - A000938 (n + 1)

end

end A045996.P8740589098772497268

/-! ## A045996.P4432309990393986401

`A217482(2*(n+1))-A000938(n+1)`
-/

namespace A045996.P4432309990393986401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217482 (2 * (n + 1)) - A000938 (n + 1)

end

end A045996.P4432309990393986401

/-! ## A045996.P10295106208684035510

`4*A337899(n+1)-A000938(n+1)`
-/

namespace A045996.P10295106208684035510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A337899 (n + 1) - A000938 (n + 1)

end

end A045996.P10295106208684035510

/-! ## A045996.P17216892954198005559

`A077435(n+1)+A190020(n+1)+A190019(n+1)`
-/

namespace A045996.P17216892954198005559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077435 (n + 1) + (A190020 (n + 1) + A190019 (n + 1))

end

end A045996.P17216892954198005559

/-! ## A045996.P7620585464245150629

`A178208(n+1)-4*A320540(A028310(n))`
-/

namespace A045996.P7620585464245150629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - 4 * A320540 (A028310 n).toNat

end

end A045996.P7620585464245150629

/-! ## A045996.P661075357332524426

`A178208(n+1)-4*A320540(A137734(n²))`
-/

namespace A045996.P661075357332524426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - 4 * A320540 (A137734 (n ^ 2)).toNat

end

end A045996.P661075357332524426

/-! ## A045996.P16051399389278875587

`A178208(n+1)-4*A320540(A065033(2*n))`
-/

namespace A045996.P16051399389278875587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - 4 * A320540 (A065033 (2 * n)).toNat

end

end A045996.P16051399389278875587

/-! ## A045996.P15453589669232223351

`A007290((n+1)²)/2-A000938(n+1)`
-/

namespace A045996.P15453589669232223351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007290 ((n + 1) ^ 2) : ℚ) / 2 - (A000938 (n + 1) : ℚ)

end

end A045996.P15453589669232223351

/-!
# A045997: Number of iterations required to reach stationary value when applying repeatedly applying d, the number of divisors function, to n!.

The programs for A045997, there is no canonical definition to state claims against.
-/

/-! ## A045997.P3492192333269194729

`A053025(A028310(n))-1`
-/

namespace A045997.P3492192333269194729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053025 (A028310 n).toNat - 1

end

end A045997.P3492192333269194729

/-! ## A045997.P10893275752700349050

`A053025(A004275(n+1)-n)-1`
-/

namespace A045997.P10893275752700349050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053025 (A004275 (n + 1) - (n : ℤ)).toNat - 1

end

end A045997.P10893275752700349050

/-! ## A045997.P523303577741365793

`A053025(A065033(2*n))-1`
-/

namespace A045997.P523303577741365793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053025 (A065033 (2 * n)).toNat - 1

end

end A045997.P523303577741365793

/-! ## A045997.P14507777387640119846

`A053025(A123108(2*n))-1`
-/

namespace A045997.P14507777387640119846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053025 (A123108 (2 * n)).toNat - 1

end

end A045997.P14507777387640119846

/-! ## A045997.P4535223352084714779

`A053025(A233583(n+1))-1`
-/

namespace A045997.P4535223352084714779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053025 (A233583 (n + 1)).toNat - 1

end

end A045997.P4535223352084714779

/-!
# A045998: Binary Gleichniszahlen-Reihe (BGR) sequence: describe previous term (cf. A005150), reduce number of digits seen mod 2 (then for the purposes of this data-base, discard leading zeros).

The programs for A045998, there is no canonical definition to state claims against.
-/

/-! ## A045998.P4177430951709987431

`A007088(A048522(n))`
-/

namespace A045998.P4177430951709987431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048522 n).toNat

end

end A045998.P4177430951709987431

/-! ## A045998.P2747797130644090132

`A185544(2*A048522(n))`
-/

namespace A045998.P2747797130644090132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A048522 n).toNat

end

end A045998.P2747797130644090132

/-! ## A045998.P2673326457873346852

`A185544(lcm(2, A048522(n)))`
-/

namespace A045998.P2673326457873346852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A048522 n))

end

end A045998.P2673326457873346852

/-!
# A045999: Length of n-th term of binary Gleichniszahlen-Reihe (BGR) sequence A045998.

The programs for A045999, there is no canonical definition to state claims against.
-/

/-! ## A045999.P11383304151828394955

`A020639(A307740(n+1))+2*A004524(A081599(n))`
-/

namespace A045999.P11383304151828394955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A307740 (n + 1)).toNat + 2 * A004524 (A081599 n).toNat

end

end A045999.P11383304151828394955

/-! ## A045999.P12101162459530604489

`A312658(n)-A097449(A130824(n))`
-/

namespace A045999.P12101162459530604489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312658 n - A097449 (A130824 n).toNat

end

end A045999.P12101162459530604489

/-! ## A045999.P10564962100958685382

`A020639(A228315(n+1))+2*A004524(A081599(n))`
-/

namespace A045999.P10564962100958685382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228315 (n + 1)).toNat + 2 * A004524 (A081599 n).toNat

end

end A045999.P10564962100958685382

