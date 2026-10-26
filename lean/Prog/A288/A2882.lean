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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A288200: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A288200, there is no canonical definition to state claims against.
-/

/-! ## A288200.P6428382212538043628

`A007088(A288202(n))`
-/

namespace A288200.P6428382212538043628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288202 n).toNat

end

end A288200.P6428382212538043628

/-! ## A288200.P1039201228769212360

`A185544(2*A288202(n))`
-/

namespace A288200.P1039201228769212360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288202 n).toNat

end

end A288200.P1039201228769212360

/-! ## A288200.P15645783574150546423

`A288329(A099145(n+1))`
-/

namespace A288200.P15645783574150546423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288329 (A099145 (n + 1)).toNat

end

end A288200.P15645783574150546423

/-!
# A288201: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A288201, there is no canonical definition to state claims against.
-/

/-! ## A288201.P9882586395892054854

`A286202(n)+A092665(A336574(n))`
-/

namespace A288201.P9882586395892054854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286202 n + A092665 (A336574 n).toNat

end

end A288201.P9882586395892054854

/-! ## A288201.P14599658956354326314

`A286413(n)+A092665(A336574(n))`
-/

namespace A288201.P14599658956354326314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286413 n + A092665 (A336574 n).toNat

end

end A288201.P14599658956354326314

/-! ## A288201.P14248603399402575948

`A288330(n)-A007814(A026590(n))`
-/

namespace A288201.P14248603399402575948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288330 n - A007814 (A026590 n).toNat

end

end A288201.P14248603399402575948

/-! ## A288201.P4835421875262374614

`or(A008441(A005165(n)), A286202(n))`
-/

namespace A288201.P4835421875262374614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008441 (A005165 n).toNat) (A286202 n)

end

end A288201.P4835421875262374614

/-!
# A288202: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A288202, there is no canonical definition to state claims against.
-/

/-! ## A288202.P3492555836432471808

`A288331(A004890(n+1))`
-/

namespace A288202.P3492555836432471808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288331 (A004890 (n + 1)).toNat

end

end A288202.P3492555836432471808

/-! ## A288202.P3645308908245450405

`A288331(A004901(n+1))`
-/

namespace A288202.P3645308908245450405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288331 (A004901 (n + 1)).toNat

end

end A288202.P3645308908245450405

/-! ## A288202.P15611844551927840622

`A288331(A004912(n+1))`
-/

namespace A288202.P15611844551927840622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288331 (A004912 (n + 1)).toNat

end

end A288202.P15611844551927840622

/-!
# A288203: Fixed point of the mapping 00->0010, 1->010, starting with 00.

The programs for A288203, the canonical program `A288203.P3805704853841922969` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288203 has offset 1).

The definition of A288203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288203.P9825030714968375871

`char[A049039(2*(n+1))]`
-/

namespace A288203.P9825030714968375871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049039 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288203.P9825030714968375871

namespace A288203

/-- `char[A049039(2*(n+1))]` -/
def P9825030714968375871.Spec : Prop :=
  ∀ n, (P9825030714968375871.a n : ℤ) = A288203 (n + 1)

end A288203

/-! ## A288203.P7116546439969999761

`∑[A000217(comp[2^n])]%2`
-/

namespace A288203.P7116546439969999761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A288203.P7116546439969999761

namespace A288203

/-- `∑[A000217(comp[2^n])]%2` -/
def P7116546439969999761.Spec : Prop :=
  ∀ n, P7116546439969999761.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P12535710042678770162

`∑[A003188(comp[2^n])]%2`
-/

namespace A288203.P12535710042678770162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A288203.P12535710042678770162

namespace A288203

/-- `∑[A003188(comp[2^n])]%2` -/
def P12535710042678770162.Spec : Prop :=
  ∀ n, P12535710042678770162.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P2389384596783886817

`char[A286809(2*(n+1))-2]`
-/

namespace A288203.P2389384596783886817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286809 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288203.P2389384596783886817

namespace A288203

/-- `char[A286809(2*(n+1))-2]` -/
def P2389384596783886817.Spec : Prop :=
  ∀ n, (P2389384596783886817.a n : ℤ) = A288203 (n + 1)

end A288203

/-! ## A288203.P3805704853841922969

`(∑[∑[A138591(n+1)]]+1)%2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288203

/-- `(∑[∑[A138591(n+1)]]+1)%2` -/
def P3805704853841922969.Spec : Prop :=
  ∀ n, P3805704853841922969.a n = A288203 (n + 1)

theorem P3805704853841922969.correct : P3805704853841922969.Spec := by
  intro n
  simp only [A288203, Nat.add_sub_cancel]

end A288203

/-! ## A288203.P7059717379385008589

`A353492(A177712(n+2))`
-/

namespace A288203.P7059717379385008589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353492 (A177712 (n + 2)).toNat

end

end A288203.P7059717379385008589

namespace A288203

/-- `A353492(A177712(n+2))` -/
def P7059717379385008589.Spec : Prop :=
  ∀ n, P7059717379385008589.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P12537166723385901174

`A121262(A057716(n)+3)`
-/

namespace A288203.P12537166723385901174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A057716 n + 3).toNat

end

end A288203.P12537166723385901174

namespace A288203

/-- `A121262(A057716(n)+3)` -/
def P12537166723385901174.Spec : Prop :=
  ∀ n, P12537166723385901174.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P10042245316501520041

`char[A065190(A138591(n+2))+n]`
-/

namespace A288203.P10042245316501520041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A138591 (n + 2)).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288203.P10042245316501520041

namespace A288203

/-- `char[A065190(A138591(n+2))+n]` -/
def P10042245316501520041.Spec : Prop :=
  ∀ n, (P10042245316501520041.a n : ℤ) = A288203 (n + 1)

end A288203

/-! ## A288203.P4065938942763957902

`char[∑[A000005(2*A006530(n+1))]]`
-/

namespace A288203.P4065938942763957902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A006530 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288203.P4065938942763957902

namespace A288203

/-- `char[∑[A000005(2*A006530(n+1))]]` -/
def P4065938942763957902.Spec : Prop :=
  ∀ n, (P4065938942763957902.a n : ℤ) = A288203 (n + 1)

end A288203

/-! ## A288203.P288461324412282942

`A010060(a(n-1)+A062289(n+1)%4)` with `a(0)=0`
-/

namespace A288203.P288461324412282942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010060 (a (n - 1) + Int.tmod (A062289 (n + 1)) 4).toNat

end

end A288203.P288461324412282942

namespace A288203

/-- `A010060(a(n-1)+A062289(n+1)%4)` -/
def P288461324412282942.Spec : Prop :=
  ∀ n, P288461324412282942.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P4649128675330793916

`A011765(lt[0, A346965(n+2)])`
-/

namespace A288203.P4649128675330793916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A288203.P4649128675330793916

namespace A288203

/-- `A011765(lt[0, A346965(n+2)])` -/
def P4649128675330793916.Spec : Prop :=
  ∀ n, P4649128675330793916.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P13170713390296453314

`Δ[A002265(comp[A100587(n+2)])]`
-/

namespace A288203.P13170713390296453314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288203.P13170713390296453314

namespace A288203

/-- `Δ[A002265(comp[A100587(n+2)])]` -/
def P13170713390296453314.Spec : Prop :=
  ∀ n, P13170713390296453314.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P8194012074575884755

`A064680(comp[A000079(n)]+1)%2`
-/

namespace A288203.P8194012074575884755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064680 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)) 2

end

end A288203.P8194012074575884755

namespace A288203

/-- `A064680(comp[A000079(n)]+1)%2` -/
def P8194012074575884755.Spec : Prop :=
  ∀ n, P8194012074575884755.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P13497404092348130513

`A064680(comp[A000225(n)]+1)%2`
-/

namespace A288203.P13497404092348130513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064680 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)) 2

end

end A288203.P13497404092348130513

namespace A288203

/-- `A064680(comp[A000225(n)]+1)%2` -/
def P13497404092348130513.Spec : Prop :=
  ∀ n, P13497404092348130513.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P5497514961699003429

`A048967(A103185(A102370(A103185(A062289(n+2)))))`
-/

namespace A288203.P5497514961699003429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A103185 (A102370 (A103185 (A062289 (n + 2)).toNat).toNat).toNat).toNat

end

end A288203.P5497514961699003429

namespace A288203

/-- `A048967(A103185(A102370(A103185(A062289(n+2)))))` -/
def P5497514961699003429.Spec : Prop :=
  ∀ n, P5497514961699003429.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P15775410072958031281

`A169675(A398389(n+1))`
-/

namespace A288203.P15775410072958031281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169675 (A398389 (n + 1)).toNat

end

end A288203.P15775410072958031281

namespace A288203

/-- `A169675(A398389(n+1))` -/
def P15775410072958031281.Spec : Prop :=
  ∀ n, P15775410072958031281.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P13057861473256644244

`A169675(A177712(n+1)+2)`
-/

namespace A288203.P13057861473256644244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169675 (A177712 (n + 1) + 2).toNat

end

end A288203.P13057861473256644244

namespace A288203

/-- `A169675(A177712(n+1)+2)` -/
def P13057861473256644244.Spec : Prop :=
  ∀ n, P13057861473256644244.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P11681842729242830587

`A144603(A136724(n+2))`
-/

namespace A288203.P11681842729242830587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144603 (A136724 (n + 2)).toNat

end

end A288203.P11681842729242830587

namespace A288203

/-- `A144603(A136724(n+2))` -/
def P11681842729242830587.Spec : Prop :=
  ∀ n, P11681842729242830587.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P6158843704424675970

`A177704(comp[A113010(n)]+2)-1`
-/

namespace A288203.P6158843704424675970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113010 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A288203.P6158843704424675970

namespace A288203

/-- `A177704(comp[A113010(n)]+2)-1` -/
def P6158843704424675970.Spec : Prop :=
  ∀ n, P6158843704424675970.a n = A288203 (n + 1)

end A288203

/-! ## A288203.P6976184215722803025

`A290825(eq[1, A290825(n)]+2)`
-/

namespace A288203.P6976184215722803025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A288203.P6976184215722803025

namespace A288203

/-- `A290825(eq[1, A290825(n)]+2)` -/
def P6976184215722803025.Spec : Prop :=
  ∀ n, P6976184215722803025.a n = A288203 (n + 1)

end A288203

/-!
# A288204: Positions of 0 in A288203; complement of A288205.

The programs for A288204, the canonical program `A288204.P8029722356957521664` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288204 has offset 1).

The definition of A288204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288204.P8029722356957521664

`comp[4*n+1-floor(log2(4*n+2))]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288204

/-- `comp[4*n+1-floor(log2(4*n+2))]` -/
def P8029722356957521664.Spec : Prop :=
  ∀ n, (P8029722356957521664.a n : ℤ) = A288204 (n + 1)

theorem P8029722356957521664.correct : P8029722356957521664.Spec := by
  intro n
  simp only [A288204, Nat.add_sub_cancel]

end A288204

/-! ## A288204.P1135440678546596961

`∑[char[∑[A043529(n)+1]]+1]`
-/

namespace A288204.P1135440678546596961
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288204.P1135440678546596961

namespace A288204

/-- `∑[char[∑[A043529(n)+1]]+1]` -/
def P1135440678546596961.Spec : Prop :=
  ∀ n, (P1135440678546596961.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P16468905039312352715

`A002264(comp[3*A000225(n)])+1+n`
-/

namespace A288204.P16468905039312352715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1 + (n : ℤ)

end

end A288204.P16468905039312352715

namespace A288204

/-- `A002264(comp[3*A000225(n)])+1+n` -/
def P16468905039312352715.Spec : Prop :=
  ∀ n, P16468905039312352715.a n = A288204 (n + 1)

end A288204

/-! ## A288204.P11573598210749394837

`lt[A288203(n+1), 1]+1`
-/

namespace A288204.P11573598210749394837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288204.P11573598210749394837

namespace A288204

/-- `lt[A288203(n+1), 1]+1` -/
def P11573598210749394837.Spec : Prop :=
  ∀ n, (P11573598210749394837.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P8567845296336381601

`lt[and(3, lt[1, A292601(n)]), 3]`
-/

namespace A288204.P8567845296336381601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A288204.P8567845296336381601

namespace A288204

/-- `lt[and(3, lt[1, A292601(n)]), 3]` -/
def P8567845296336381601.Spec : Prop :=
  ∀ n, (P8567845296336381601.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P16370238784842974892

`lt[A009531(lt[2, A006530(n+1)]), 2]`
-/

namespace A288204.P16370238784842974892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A288204.P16370238784842974892

namespace A288204

/-- `lt[A009531(lt[2, A006530(n+1)]), 2]` -/
def P16370238784842974892.Spec : Prop :=
  ∀ n, (P16370238784842974892.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P14796428012001330455

`lt[n, A082052(comp[A000225(n)-2]+1)]`
-/

namespace A288204.P14796428012001330455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288204.P14796428012001330455

namespace A288204

/-- `lt[n, A082052(comp[A000225(n)-2]+1)]` -/
def P14796428012001330455.Spec : Prop :=
  ∀ n, (P14796428012001330455.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P4806948863380331466

`record[A083058(n+1)+A000217(n)%2]`
-/

namespace A288204.P4806948863380331466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083058 (n + 1) + Int.tmod (A000217 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288204.P4806948863380331466

namespace A288204

/-- `record[A083058(n+1)+A000217(n)%2]` -/
def P4806948863380331466.Spec : Prop :=
  ∀ n, P4806948863380331466.a n = A288204 (n + 1)

end A288204

/-! ## A288204.P8754707283791822507

`lt[2, A028233(lt[n, A153152(n)])]`
-/

namespace A288204.P8754707283791822507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288204.P8754707283791822507

namespace A288204

/-- `lt[2, A028233(lt[n, A153152(n)])]` -/
def P8754707283791822507.Spec : Prop :=
  ∀ n, (P8754707283791822507.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P10858842090770133733

`lt[2, A034684(lt[n, A153152(n)])]`
-/

namespace A288204.P10858842090770133733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288204.P10858842090770133733

namespace A288204

/-- `lt[2, A034684(lt[n, A153152(n)])]` -/
def P10858842090770133733.Spec : Prop :=
  ∀ n, (P10858842090770133733.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P14484992498515300896

`lt[n, A082052(lt[1, A006257(n)]+2)]`
-/

namespace A288204.P14484992498515300896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288204.P14484992498515300896

namespace A288204

/-- `lt[n, A082052(lt[1, A006257(n)]+2)]` -/
def P14484992498515300896.Spec : Prop :=
  ∀ n, (P14484992498515300896.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P6567327130302908693

`lt[A135481(lt[2, A293664(n)]), 2]`
-/

namespace A288204.P6567327130302908693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A288204.P6567327130302908693

namespace A288204

/-- `lt[A135481(lt[2, A293664(n)]), 2]` -/
def P6567327130302908693.Spec : Prop :=
  ∀ n, (P6567327130302908693.a n : ℤ) = A288204 (n + 1)

end A288204

/-! ## A288204.P7159739946820491623

`lt[2, Δ[A343476(n+1)]]`
-/

namespace A288204.P7159739946820491623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288204.P7159739946820491623

namespace A288204

/-- `lt[2, Δ[A343476(n+1)]]` -/
def P7159739946820491623.Spec : Prop :=
  ∀ n, (P7159739946820491623.a n : ℤ) = A288204 (n + 1)

end A288204

/-!
# A288205: Positions of 1 in A288203; complement of A288204.

The programs for A288205, the canonical program `A288205.P4532469448324624174` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288205 has offset 1).

The definition of A288205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288205.P13911025606256191351

`∑[4-char[2^n-1]]`
-/

namespace A288205.P13911025606256191351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288205.P13911025606256191351

namespace A288205

/-- `∑[4-char[2^n-1]]` -/
def P13911025606256191351.Spec : Prop :=
  ∀ n, P13911025606256191351.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P8658200755465558338

`a(n-1)+4-char[2^n-1]` with `a(0)=3`
-/

namespace A288205.P8658200755465558338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 4 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288205.P8658200755465558338

namespace A288205

/-- `a(n-1)+4-char[2^n-1]` -/
def P8658200755465558338.Spec : Prop :=
  ∀ n, P8658200755465558338.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P4532469448324624174

`∑[A267442(n)+2]+n`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A288205

/-- `∑[A267442(n)+2]+n` -/
def P4532469448324624174.Spec : Prop :=
  ∀ n, P4532469448324624174.a n = A288205 (n + 1)

theorem P4532469448324624174.correct : P4532469448324624174.Spec := by
  intro n
  simp only [A288205, Nat.add_sub_cancel]

end A288205

/-! ## A288205.P4805525085303141004

`A286809(n+1)+2*n`
-/

namespace A288205.P4805525085303141004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286809 (n + 1) + (2 * n : ℤ)

end

end A288205.P4805525085303141004

namespace A288205

/-- `A286809(n+1)+2*n` -/
def P4805525085303141004.Spec : Prop :=
  ∀ n, P4805525085303141004.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P11142508966334112545

`∑[A201219(n+1)+2]+1`
-/

namespace A288205.P11142508966334112545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288205.P11142508966334112545

namespace A288205

/-- `∑[A201219(n+1)+2]+1` -/
def P11142508966334112545.Spec : Prop :=
  ∀ n, P11142508966334112545.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P12847298136907456886

`record[xor(3, n)]-A000523(n+1)`
-/

namespace A288205.P12847298136907456886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A000523 (n + 1)

end

end A288205.P12847298136907456886

namespace A288205

/-- `record[xor(3, n)]-A000523(n+1)` -/
def P12847298136907456886.Spec : Prop :=
  ∀ n, P12847298136907456886.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P10323780477861370032

`4*(n+1)-A113473(n+1)`
-/

namespace A288205.P10323780477861370032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A113473 (n + 1)

end

end A288205.P10323780477861370032

namespace A288205

/-- `4*(n+1)-A113473(n+1)` -/
def P10323780477861370032.Spec : Prop :=
  ∀ n, P10323780477861370032.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P13829071029355599785

`A004767(n)-A000523(n+1)`
-/

namespace A288205.P13829071029355599785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A000523 (n + 1)

end

end A288205.P13829071029355599785

namespace A288205

/-- `A004767(n)-A000523(n+1)` -/
def P13829071029355599785.Spec : Prop :=
  ∀ n, P13829071029355599785.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P14117886642710112045

`A016897(n)-A080804(n+1)`
-/

namespace A288205.P14117886642710112045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A080804 (n + 1)

end

end A288205.P14117886642710112045

namespace A288205

/-- `A016897(n)-A080804(n+1)` -/
def P14117886642710112045.Spec : Prop :=
  ∀ n, P14117886642710112045.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P7165910599419913802

`A049039(n+1)+A005843(n)+2`
-/

namespace A288205.P7165910599419913802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049039 (n + 1) + A005843 n + 2

end

end A288205.P7165910599419913802

namespace A288205

/-- `A049039(n+1)+A005843(n)+2` -/
def P7165910599419913802.Spec : Prop :=
  ∀ n, P7165910599419913802.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P8883462128419973398

`ceil(A004766(n+1)-log2(A004766(n+1)))`
-/

namespace A288205.P8883462128419973398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004766 (n + 1) : ℝ) - Real.logb 2 (A004766 (n + 1) : ℝ)⌉

end

end A288205.P8883462128419973398

namespace A288205

/-- `ceil(A004766(n+1)-log2(A004766(n+1)))` -/
def P8883462128419973398.Spec : Prop :=
  ∀ n, P8883462128419973398.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P5706655429439069417

`4*(n+1)-A070939(n+1)`
-/

namespace A288205.P5706655429439069417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A070939 (n + 1)

end

end A288205.P5706655429439069417

namespace A288205

/-- `4*(n+1)-A070939(n+1)` -/
def P5706655429439069417.Spec : Prop :=
  ∀ n, P5706655429439069417.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P11587652904336372327

`A008574(n+1)-(A000523(n+1)+1)`
-/

namespace A288205.P11587652904336372327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - (A000523 (n + 1) + 1)

end

end A288205.P11587652904336372327

namespace A288205

/-- `A008574(n+1)-(A000523(n+1)+1)` -/
def P11587652904336372327.Spec : Prop :=
  ∀ n, P11587652904336372327.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P14581738163445620341

`A286808(A286809(n+1))-2`
-/

namespace A288205.P14581738163445620341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286808 (A286809 (n + 1)).toNat - 2

end

end A288205.P14581738163445620341

namespace A288205

/-- `A286808(A286809(n+1))-2` -/
def P14581738163445620341.Spec : Prop :=
  ∀ n, P14581738163445620341.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P17824605106134689947

`A049039(2*(n+1))+1`
-/

namespace A288205.P17824605106134689947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049039 (2 * (n + 1)) + 1

end

end A288205.P17824605106134689947

namespace A288205

/-- `A049039(2*(n+1))+1` -/
def P17824605106134689947.Spec : Prop :=
  ∀ n, P17824605106134689947.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P3267882301840196693

`A065259(2*n+1)-A000523(n+1)`
-/

namespace A288205.P3267882301840196693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065259 (2 * n + 1) - A000523 (n + 1)

end

end A288205.P3267882301840196693

namespace A288205

/-- `A065259(2*n+1)-A000523(n+1)` -/
def P3267882301840196693.Spec : Prop :=
  ∀ n, P3267882301840196693.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P2558934188197354159

`A008587(n+1)-∑[A014963(2*(n+1))]`
-/

namespace A288205.P2558934188197354159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288205.P2558934188197354159

namespace A288205

/-- `A008587(n+1)-∑[A014963(2*(n+1))]` -/
def P2558934188197354159.Spec : Prop :=
  ∀ n, P2558934188197354159.a n = A288205 (n + 1)

end A288205

/-! ## A288205.P3600526287510821566

`A008706(n+1)-∑[A014963(2*(n+1))]`
-/

namespace A288205.P3600526287510821566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288205.P3600526287510821566

namespace A288205

/-- `A008706(n+1)-∑[A014963(2*(n+1))]` -/
def P3600526287510821566.Spec : Prop :=
  ∀ n, P3600526287510821566.a n = A288205 (n + 1)

end A288205

/-!
# A288206: a(n) = 3*a(n-1) - a(n-2) - 3*a(n-3) + 2*a(n-4), where a(0) = 2, a(1) = 4, a(2) = 8, a(3) = 18.

The programs for A288206, the canonical program `A288206.P3726265730067203324` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288206 has offset 0).

The definition of A288206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` (program `A288206.P3726265730067203324`, by `A288206.P3726265730067203324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288206.P3726265730067203324

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=18`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288206

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P3726265730067203324.Spec : Prop :=
  ∀ n, P3726265730067203324.a n = A288206 n

theorem P3726265730067203324.correct : P3726265730067203324.Spec := by
  intro n
  simp only [A288206]

end A288206

/-! ## A288206.P3639173365151655100

`ogf((2-2x-2x^2+4x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A288206.P3639173365151655100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2, 4] [1, -3, 1, 3, -2] n

end

end A288206.P3639173365151655100

namespace A288206

/-- `ogf((2-2x-2x^2+4x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P3639173365151655100.Spec : Prop :=
  ∀ n, P3639173365151655100.a n = A288206 n

end A288206

/-! ## A288206.P1214910116647946840

`∑[a(n-2)+2^n]` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A288206.P1214910116647946840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n f1 =>
  f1 (n - 2) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288206.P1214910116647946840

namespace A288206

/-- `∑[a(n-2)+2^n]` -/
def P1214910116647946840.Spec : Prop :=
  ∀ n, (P1214910116647946840.a n : ℤ) = A288206 n

end A288206

/-! ## A288206.P11523918878090957865

`2*(∑[floor(∑[2^n/3])]+1)`
-/

namespace A288206.P11523918878090957865
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288206.P11523918878090957865

namespace A288206

/-- `2*(∑[floor(∑[2^n/3])]+1)` -/
def P11523918878090957865.Spec : Prop :=
  ∀ n, P11523918878090957865.a n = A288206 n

end A288206

/-! ## A288206.P2045522693637534048

`∑[2^n]-(1-a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A288206.P2045522693637534048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (1 - a (n - 2))

end

end A288206.P2045522693637534048

namespace A288206

/-- `∑[2^n]-(1-a(n-2))` -/
def P2045522693637534048.Spec : Prop :=
  ∀ n, P2045522693637534048.a n = A288206 n

end A288206

/-! ## A288206.P15284372474596546173

`∑[2*(a(n-1)+n%2)]` with `a(0)=2, a(1)=2`
-/

namespace A288206.P15284372474596546173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * (f1 (n - 1) + n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288206.P15284372474596546173

namespace A288206

/-- `∑[2*(a(n-1)+n%2)]` -/
def P15284372474596546173.Spec : Prop :=
  ∀ n, (P15284372474596546173.a n : ℤ) = A288206 n

end A288206

/-! ## A288206.P5737054924269294452

`2*a(n-1)-gcd(2, n)+n` with `a(0)=2`
-/

namespace A288206.P5737054924269294452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - (Nat.gcd 2 n : ℤ) + (n : ℤ)

end

end A288206.P5737054924269294452

namespace A288206

/-- `2*a(n-1)-gcd(2, n)+n` -/
def P5737054924269294452.Spec : Prop :=
  ∀ n, P5737054924269294452.a n = A288206 n

end A288206

/-! ## A288206.P3136740553649162133

`2^(n+1)+a(n-2)-2` with `a(0)=2, a(1)=4`
-/

namespace A288206.P3136740553649162133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (2 ^ (n + 1) : ℤ) + (a (n - 2) - 2)

end

end A288206.P3136740553649162133

namespace A288206

/-- `2^(n+1)+a(n-2)-2` -/
def P3136740553649162133.Spec : Prop :=
  ∀ n, P3136740553649162133.a n = A288206 n

end A288206

/-! ## A288206.P14751802038496311834

`a(n-1)+floor(∑[2*a(n-1)]/3)` with `a(0)=2`
-/

namespace A288206.P14751802038496311834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A288206.P14751802038496311834

namespace A288206

/-- `a(n-1)+floor(∑[2*a(n-1)]/3)` -/
def P14751802038496311834.Spec : Prop :=
  ∀ n, P14751802038496311834.a n = A288206 n

end A288206

/-! ## A288206.P7484274464383635614

`a(n-1)+2*(a(n-2)-2+n)` with `a(0)=2, a(1)=4`
-/

namespace A288206.P7484274464383635614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + 2 * (a (n - 2) - 2 + (n : ℤ))

end

end A288206.P7484274464383635614

namespace A288206

/-- `a(n-1)+2*(a(n-2)-2+n)` -/
def P7484274464383635614.Spec : Prop :=
  ∀ n, P7484274464383635614.a n = A288206 n

end A288206

/-! ## A288206.P8618241210239639724

`a(n-1)-2*(2-a(n-2)-n)` with `a(0)=2, a(1)=4`
-/

namespace A288206.P8618241210239639724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - 2 * (2 - a (n - 2) - (n : ℤ))

end

end A288206.P8618241210239639724

namespace A288206

/-- `a(n-1)-2*(2-a(n-2)-n)` -/
def P8618241210239639724.Spec : Prop :=
  ∀ n, P8618241210239639724.a n = A288206 n

end A288206

/-! ## A288206.P12056100995864231161

`A026646(n)+1`
-/

namespace A288206.P12056100995864231161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026646 n + 1

end

end A288206.P12056100995864231161

namespace A288206

/-- `A026646(n)+1` -/
def P12056100995864231161.Spec : Prop :=
  ∀ n, P12056100995864231161.a n = A288206 n

end A288206

/-! ## A288206.P16031494250875430207

`∑[A026644(n)]+1`
-/

namespace A288206.P16031494250875430207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288206.P16031494250875430207

namespace A288206

/-- `∑[A026644(n)]+1` -/
def P16031494250875430207.Spec : Prop :=
  ∀ n, P16031494250875430207.a n = A288206 n

end A288206

/-! ## A288206.P4596647314898317691

`A257198(n+2)+2`
-/

namespace A288206.P4596647314898317691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257198 (n + 2) + 2

end

end A288206.P4596647314898317691

namespace A288206

/-- `A257198(n+2)+2` -/
def P4596647314898317691.Spec : Prop :=
  ∀ n, P4596647314898317691.a n = A288206 n

end A288206

/-! ## A288206.P11701429943998701264

`A000975(n+2)-n`
-/

namespace A288206.P11701429943998701264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 2) - (n : ℤ)

end

end A288206.P11701429943998701264

namespace A288206

/-- `A000975(n+2)-n` -/
def P11701429943998701264.Spec : Prop :=
  ∀ n, P11701429943998701264.a n = A288206 n

end A288206

/-! ## A288206.P2080720735610777641

`∑[∑[A014113(n)]]+2`
-/

namespace A288206.P2080720735610777641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A288206.P2080720735610777641

namespace A288206

/-- `∑[∑[A014113(n)]]+2` -/
def P2080720735610777641.Spec : Prop :=
  ∀ n, P2080720735610777641.a n = A288206 n

end A288206

/-! ## A288206.P17196792612863130728

`∑[A167030(n+2)]+2`
-/

namespace A288206.P17196792612863130728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A288206.P17196792612863130728

namespace A288206

/-- `∑[A167030(n+2)]+2` -/
def P17196792612863130728.Spec : Prop :=
  ∀ n, P17196792612863130728.a n = A288206 n

end A288206

/-! ## A288206.P3876005694708433114

`∑[A283642(n)-1]+2`
-/

namespace A288206.P3876005694708433114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A288206.P3876005694708433114

namespace A288206

/-- `∑[A283642(n)-1]+2` -/
def P3876005694708433114.Spec : Prop :=
  ∀ n, P3876005694708433114.a n = A288206 n

end A288206

/-! ## A288206.P16295911839200309958

`2*A178420(n+1)+2`
-/

namespace A288206.P16295911839200309958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178420 (n + 1) + 2

end

end A288206.P16295911839200309958

namespace A288206

/-- `2*A178420(n+1)+2` -/
def P16295911839200309958.Spec : Prop :=
  ∀ n, P16295911839200309958.a n = A288206 n

end A288206

/-! ## A288206.P3160756408057027791

`A084639(n+1)+1-n`
-/

namespace A288206.P3160756408057027791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 (n + 1) + (1 - (n : ℤ))

end

end A288206.P3160756408057027791

namespace A288206

/-- `A084639(n+1)+1-n` -/
def P3160756408057027791.Spec : Prop :=
  ∀ n, P3160756408057027791.a n = A288206 n

end A288206

/-!
# A288208: Number of permutations of a sequence of length n such that there are no fixed points, and no term is next to a term it was next to originally.

The programs for A288208, there is no canonical definition to state claims against.
-/

/-! ## A288208.P18172666107912949384

`A359998(n+1)-A221170(A364839(3*n))`
-/

namespace A288208.P18172666107912949384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359998 (n + 1) - A221170 (A364839 (3 * n)).toNat

end

end A288208.P18172666107912949384

/-!
# A288210: 

The programs for A288210, there is no canonical definition to state claims against.
-/

/-! ## A288210.P5249722728093503894

`∑[10^n]-A288194(n)%∑[10^n]`
-/

namespace A288210.P5249722728093503894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (A288194 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A288210.P5249722728093503894

/-! ## A288210.P5474993728241415508

`∑[10^n]+A000007(n)-A288194(n)`
-/

namespace A288210.P5474993728241415508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000007 n - A288194 n)

end

end A288210.P5474993728241415508

/-!
# A288213: Fixed point of the mapping 00->0010, 1->011, starting with 00.

The programs for A288213, the canonical program `A288213.P7703768301411406808` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288213 has offset 1).

The definition of A288213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288213.P11387111933647583040

`floor(2*sqrt(∑[n]))%2`
-/

namespace A288213.P11387111933647583040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋ 2

end

end A288213.P11387111933647583040

namespace A288213

/-- `floor(2*sqrt(∑[n]))%2` -/
def P11387111933647583040.Spec : Prop :=
  ∀ n, P11387111933647583040.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P364971407463995064

`and(1, floor(2*sqrt(∑[n])))`
-/

namespace A288213.P364971407463995064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A288213.P364971407463995064

namespace A288213

/-- `and(1, floor(2*sqrt(∑[n])))` -/
def P364971407463995064.Spec : Prop :=
  ∀ n, P364971407463995064.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P14618832257866718494

`(floor((2*n+1)/sqrt(2))%2)²`
-/

namespace A288213.P14618832257866718494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ 2 ^ 2

end

end A288213.P14618832257866718494

namespace A288213

/-- `(floor((2*n+1)/sqrt(2))%2)²` -/
def P14618832257866718494.Spec : Prop :=
  ∀ n, P14618832257866718494.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P15287070973711466697

`sqrt(A001953(n)%2)`
-/

namespace A288213.P15287070973711466697
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A001953 n) 2 : ℝ)

end

end A288213.P15287070973711466697

namespace A288213

/-- `sqrt(A001953(n)%2)` -/
def P15287070973711466697.Spec : Prop :=
  ∀ n, P15287070973711466697.a n = (A288213 (n + 1) : ℝ)

end A288213

/-! ## A288213.P17904840105540704834

`char[A190764(n+1)]`
-/

namespace A288213.P17904840105540704834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288213.P17904840105540704834

namespace A288213

/-- `char[A190764(n+1)]` -/
def P17904840105540704834.Spec : Prop :=
  ∀ n, (P17904840105540704834.a n : ℤ) = A288213 (n + 1)

end A288213

/-! ## A288213.P7703768301411406808

`gcd(2, A001954(n))-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A288213

/-- `gcd(2, A001954(n))-1` -/
def P7703768301411406808.Spec : Prop :=
  ∀ n, P7703768301411406808.a n = A288213 (n + 1)

theorem P7703768301411406808.correct : P7703768301411406808.Spec := by
  intro n
  simp only [A288213, Nat.add_sub_cancel]

end A288213

/-! ## A288213.P9286270269295525272

`A000035(2*n-A001953(n))`
-/

namespace A288213.P9286270269295525272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((2 * n : ℤ) - A001953 n).toNat

end

end A288213.P9286270269295525272

namespace A288213

/-- `A000035(2*n-A001953(n))` -/
def P9286270269295525272.Spec : Prop :=
  ∀ n, P9286270269295525272.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P7259058375750879363

`A000035(n-(A001953(n)-n))`
-/

namespace A288213.P7259058375750879363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - (A001953 n - (n : ℤ))).toNat

end

end A288213.P7259058375750879363

namespace A288213

/-- `A000035(n-(A001953(n)-n))` -/
def P7259058375750879363.Spec : Prop :=
  ∀ n, P7259058375750879363.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P1147048167494483877

`(2*A049473(n)-A001953(n))²`
-/

namespace A288213.P1147048167494483877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A049473 n - A001953 n) ^ 2

end

end A288213.P1147048167494483877

namespace A288213

/-- `(2*A049473(n)-A001953(n))²` -/
def P1147048167494483877.Spec : Prop :=
  ∀ n, P1147048167494483877.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P17655989675674293704

`(2*A003152(n+1)-A184119(n+1))²`
-/

namespace A288213.P17655989675674293704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A003152 (n + 1) - A184119 (n + 1)) ^ 2

end

end A288213.P17655989675674293704

namespace A288213

/-- `(2*A003152(n+1)-A184119(n+1))²` -/
def P17655989675674293704.Spec : Prop :=
  ∀ n, P17655989675674293704.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P15048334246988601016

`A320926(A080652(n+1))`
-/

namespace A288213.P15048334246988601016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320926 (A080652 (n + 1)).toNat

end

end A288213.P15048334246988601016

namespace A288213

/-- `A320926(A080652(n+1))` -/
def P15048334246988601016.Spec : Prop :=
  ∀ n, P15048334246988601016.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P13593272397059786584

`A320926(A136119(n+1)+n+1)`
-/

namespace A288213.P13593272397059786584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320926 (A136119 (n + 1) + (n + 1 : ℤ)).toNat

end

end A288213.P13593272397059786584

namespace A288213

/-- `A320926(A136119(n+1)+n+1)` -/
def P13593272397059786584.Spec : Prop :=
  ∀ n, P13593272397059786584.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P10028205427021305712

`A159684((A159684(n)+1)*A049472(n))`
-/

namespace A288213.P10028205427021305712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 ((A159684 n + 1) * A049472 n).toNat

end

end A288213.P10028205427021305712

namespace A288213

/-- `A159684((A159684(n)+1)*A049472(n))` -/
def P10028205427021305712.Spec : Prop :=
  ∀ n, P10028205427021305712.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P11210033543636865206

`A000035(A001953(n))`
-/

namespace A288213.P11210033543636865206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001953 n).toNat

end

end A288213.P11210033543636865206

namespace A288213

/-- `A000035(A001953(n))` -/
def P11210033543636865206.Spec : Prop :=
  ∀ n, P11210033543636865206.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P2406497381960751797

`A000035(A136119(n+1)-1)`
-/

namespace A288213.P2406497381960751797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A136119 (n + 1) - 1).toNat

end

end A288213.P2406497381960751797

namespace A288213

/-- `A000035(A136119(n+1)-1)` -/
def P2406497381960751797.Spec : Prop :=
  ∀ n, P2406497381960751797.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P16888105397291240345

`A059841(A136119(n+1))`
-/

namespace A288213.P16888105397291240345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A136119 (n + 1)).toNat

end

end A288213.P16888105397291240345

namespace A288213

/-- `A059841(A136119(n+1))` -/
def P16888105397291240345.Spec : Prop :=
  ∀ n, P16888105397291240345.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P4458791028976871609

`A059841(A001954(n)-2*n)`
-/

namespace A288213.P4458791028976871609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A001954 n - (2 * n : ℤ)).toNat

end

end A288213.P4458791028976871609

namespace A288213

/-- `A059841(A001954(n)-2*n)` -/
def P4458791028976871609.Spec : Prop :=
  ∀ n, P4458791028976871609.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P4875776555368737334

`A059841(A001954(n)-n-n)`
-/

namespace A288213.P4875776555368737334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A001954 n - (n : ℤ) - (n : ℤ)).toNat

end

end A288213.P4875776555368737334

namespace A288213

/-- `A059841(A001954(n)-n-n)` -/
def P4875776555368737334.Spec : Prop :=
  ∀ n, P4875776555368737334.a n = A288213 (n + 1)

end A288213

/-! ## A288213.P5770642104687585970

`and(2, A001951(2*n+1))/2`
-/

namespace A288213.P5770642104687585970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A001951 (2 * n + 1)) : ℚ) / 2

end

end A288213.P5770642104687585970

namespace A288213

/-- `and(2, A001951(2*n+1))/2` -/
def P5770642104687585970.Spec : Prop :=
  ∀ n, P5770642104687585970.a n = (A288213 (n + 1) : ℚ)

end A288213

/-!
# A288214: Positions of 0 in A288213; complement of A288215.

The programs for A288214, the canonical program `A288214.P3478425868225490797` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288214 has offset 1).

The definition of A288214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288214.P3478425868225490797

`comp[A288215(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288214

/-- `comp[A288215(n+1)-1]+1` -/
def P3478425868225490797.Spec : Prop :=
  ∀ n, (P3478425868225490797.a n : ℤ) = A288214 (n + 1)

theorem P3478425868225490797.correct : P3478425868225490797.Spec := by
  intro n
  simp only [A288214, Nat.add_sub_cancel]

end A288214

/-! ## A288214.P12564793904175156375

`∪[A189573(2*n+1), A189573(2*(n+1))-1]`
-/

namespace A288214.P12564793904175156375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A288214.P12564793904175156375

namespace A288214

/-- `∪[A189573(2*n+1), A189573(2*(n+1))-1]` -/
def P12564793904175156375.Spec : Prop :=
  ∀ n, (P12564793904175156375.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P1767051031552993004

`eq[1, A001954(n)%2]+1`
-/

namespace A288214.P1767051031552993004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001954 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288214.P1767051031552993004

namespace A288214

/-- `eq[1, A001954(n)%2]+1` -/
def P1767051031552993004.Spec : Prop :=
  ∀ n, (P1767051031552993004.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P9648134249511617655

`record[(n+1)/(A020639(A001953(n)+2)-1)]`
-/

namespace A288214.P9648134249511617655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A001953 n + 2).toNat - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288214.P9648134249511617655

namespace A288214

/-- `record[(n+1)/(A020639(A001953(n)+2)-1)]` -/
def P9648134249511617655.Spec : Prop :=
  ∀ n, P9648134249511617655.a n = (A288214 (n + 1) : ℚ)

end A288214

/-! ## A288214.P7617072237841150895

`record[C(n+1, A288213(n+1)+n)]`
-/

namespace A288214.P7617072237841150895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A288213 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288214.P7617072237841150895

namespace A288214

/-- `record[C(n+1, A288213(n+1)+n)]` -/
def P7617072237841150895.Spec : Prop :=
  ∀ n, (P7617072237841150895.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P2524064729427538136

`lt[A318517(A184119(n+1)), 1]+1`
-/

namespace A288214.P2524064729427538136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (A184119 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288214.P2524064729427538136

namespace A288214

/-- `lt[A318517(A184119(n+1)), 1]+1` -/
def P2524064729427538136.Spec : Prop :=
  ∀ n, (P2524064729427538136.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P2684441012587066352

`eq[A028310(n)-n, A288213(A028310(n))]`
-/

namespace A288214.P2684441012587066352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288213 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288214.P2684441012587066352

namespace A288214

/-- `eq[A028310(n)-n, A288213(A028310(n))]` -/
def P2684441012587066352.Spec : Prop :=
  ∀ n, (P2684441012587066352.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P14368582450686820186

`lt[1, A001511(A001953(n)+2)]+1`
-/

namespace A288214.P14368582450686820186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001953 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288214.P14368582450686820186

namespace A288214

/-- `lt[1, A001511(A001953(n)+2)]+1` -/
def P14368582450686820186.Spec : Prop :=
  ∀ n, (P14368582450686820186.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P16530796529515493512

`record[(n+1)/A001511(A001953(n)+1)]`
-/

namespace A288214.P16530796529515493512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001511 (A001953 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288214.P16530796529515493512

namespace A288214

/-- `record[(n+1)/A001511(A001953(n)+1)]` -/
def P16530796529515493512.Spec : Prop :=
  ∀ n, P16530796529515493512.a n = (A288214 (n + 1) : ℚ)

end A288214

/-! ## A288214.P16930608206423133579

`∩[A049473(2*n+1), A049473(2*n)+1]`
-/

namespace A288214.P16930608206423133579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288214.P16930608206423133579

namespace A288214

/-- `∩[A049473(2*n+1), A049473(2*n)+1]` -/
def P16930608206423133579.Spec : Prop :=
  ∀ n, (P16930608206423133579.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P7339650380999628658

`record[(n+1)/A000034(A049472(2*n+1))]`
-/

namespace A288214.P7339650380999628658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000034 (A049472 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288214.P7339650380999628658

namespace A288214

/-- `record[(n+1)/A000034(A049472(2*n+1))]` -/
def P7339650380999628658.Spec : Prop :=
  ∀ n, P7339650380999628658.a n = (A288214 (n + 1) : ℚ)

end A288214

/-! ## A288214.P4597374955846881788

`lt[A189687(A188376(n+1)), 1]+1`
-/

namespace A288214.P4597374955846881788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189687 (A188376 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288214.P4597374955846881788

namespace A288214

/-- `lt[A189687(A188376(n+1)), 1]+1` -/
def P4597374955846881788.Spec : Prop :=
  ∀ n, (P4597374955846881788.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P13074772583748786782

`lt[A146076(A001954(n)), 1]+1`
-/

namespace A288214.P13074772583748786782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A001954 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288214.P13074772583748786782

namespace A288214

/-- `lt[A146076(A001954(n)), 1]+1` -/
def P13074772583748786782.Spec : Prop :=
  ∀ n, (P13074772583748786782.a n : ℤ) = A288214 (n + 1)

end A288214

/-! ## A288214.P11673618103925766376

`A195119(lt[A285073(2*n+1), A159684(n)])`
-/

namespace A288214.P11673618103925766376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A288214.P11673618103925766376

namespace A288214

/-- `A195119(lt[A285073(2*n+1), A159684(n)])` -/
def P11673618103925766376.Spec : Prop :=
  ∀ n, P11673618103925766376.a n = A288214 (n + 1)

end A288214

/-!
# A288215: Positions of 1 in A288213; complement of A288215.

The programs for A288215, the canonical program `A288215.P5485610025847874001` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288215 has offset 1).

The definition of A288215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288215.P1641438623212794855

`eq[1, floor((2*n+1)/sqrt(2))%2]+1`
-/

namespace A288215.P1641438623212794855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288215.P1641438623212794855

namespace A288215

/-- `eq[1, floor((2*n+1)/sqrt(2))%2]+1` -/
def P1641438623212794855.Spec : Prop :=
  ∀ n, (P1641438623212794855.a n : ℤ) = A288215 (n + 1)

theorem P1641438623212794855.correct : P1641438623212794855.Spec := by
  intro n
  simp only [A288215, Nat.add_sub_cancel, A288215.P1641438623212794855.f1, A288215.P1641438623212794855.f2, A288215.P1641438623212794855.a, A288215.P5485610025847874001.a, A190764, A190764.P1380385312988530608.f1, A190764.P1380385312988530608.f2, A190764.P1380385312988530608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A288215

/-! ## A288215.P5485610025847874001

`A190764(n+1)+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A288215

/-- `A190764(n+1)+1` -/
def P5485610025847874001.Spec : Prop :=
  ∀ n, P5485610025847874001.a n = A288215 (n + 1)

theorem P5485610025847874001.correct : P5485610025847874001.Spec := by
  intro n
  simp only [A288215, Nat.add_sub_cancel]

end A288215

/-! ## A288215.P5617429867500580431

`∪[A081477(2*n+1)+1, A081477(2*(n+1))]`
-/

namespace A288215.P5617429867500580431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A288215.P5617429867500580431

namespace A288215

/-- `∪[A081477(2*n+1)+1, A081477(2*(n+1))]` -/
def P5617429867500580431.Spec : Prop :=
  ∀ n, (P5617429867500580431.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P12594771604077456418

`eq[1, A288213(n+1)]+1`
-/

namespace A288215.P12594771604077456418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288215.P12594771604077456418

namespace A288215

/-- `eq[1, A288213(n+1)]+1` -/
def P12594771604077456418.Spec : Prop :=
  ∀ n, (P12594771604077456418.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P13578293796590042896

`eq[1, A190762(n+1)]+2`
-/

namespace A288215.P13578293796590042896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A288215.P13578293796590042896

namespace A288215

/-- `eq[1, A190762(n+1)]+2` -/
def P13578293796590042896.Spec : Prop :=
  ∀ n, (P13578293796590042896.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P13068529341494071132

`A020725(A190764(n+1))`
-/

namespace A288215.P13068529341494071132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A190764 (n + 1)).toNat

end

end A288215.P13068529341494071132

namespace A288215

/-- `A020725(A190764(n+1))` -/
def P13068529341494071132.Spec : Prop :=
  ∀ n, P13068529341494071132.a n = A288215 (n + 1)

end A288215

/-! ## A288215.P95976892539015215

`eq[1, A288213(A028310(n))]`
-/

namespace A288215.P95976892539015215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288213 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288215.P95976892539015215

namespace A288215

/-- `eq[1, A288213(A028310(n))]` -/
def P95976892539015215.Spec : Prop :=
  ∀ n, (P95976892539015215.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P1731143815604395986

`eq[2, A020639(A001954(n))]+1`
-/

namespace A288215.P1731143815604395986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288215.P1731143815604395986

namespace A288215

/-- `eq[2, A020639(A001954(n))]+1` -/
def P1731143815604395986.Spec : Prop :=
  ∀ n, (P1731143815604395986.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P9478228644548075363

`eq[2, A020639(A136119(n+1))]+1`
-/

namespace A288215.P9478228644548075363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A136119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288215.P9478228644548075363

namespace A288215

/-- `eq[2, A020639(A136119(n+1))]+1` -/
def P9478228644548075363.Spec : Prop :=
  ∀ n, (P9478228644548075363.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P2033177028968024852

`lt[2, A020639(A184119(n+1))]+1`
-/

namespace A288215.P2033177028968024852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A184119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288215.P2033177028968024852

namespace A288215

/-- `lt[2, A020639(A184119(n+1))]+1` -/
def P2033177028968024852.Spec : Prop :=
  ∀ n, (P2033177028968024852.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P16800546961101860495

`lt[1, A020639(A001953(n)+2)-1]+1`
-/

namespace A288215.P16800546961101860495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001953 n + 2).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288215.P16800546961101860495

namespace A288215

/-- `lt[1, A020639(A001953(n)+2)-1]+1` -/
def P16800546961101860495.Spec : Prop :=
  ∀ n, (P16800546961101860495.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P7344188560409565257

`eq[A307482(n+2), A307482(n+1)]+2`
-/

namespace A288215.P7344188560409565257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307482 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A288215.P7344188560409565257

namespace A288215

/-- `eq[A307482(n+2), A307482(n+1)]+2` -/
def P7344188560409565257.Spec : Prop :=
  ∀ n, (P7344188560409565257.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P4019898323257217381

`lt[A318517(n+1), A318517(A184119(n+1))]+1`
-/

namespace A288215.P4019898323257217381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (A184119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A288215.P4019898323257217381

namespace A288215

/-- `lt[A318517(n+1), A318517(A184119(n+1))]+1` -/
def P4019898323257217381.Spec : Prop :=
  ∀ n, (P4019898323257217381.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P11122862808398699523

`lt[1, A325940(A001953(n)+1)]+1`
-/

namespace A288215.P11122862808398699523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (A001953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288215.P11122862808398699523

namespace A288215

/-- `lt[1, A325940(A001953(n)+1)]+1` -/
def P11122862808398699523.Spec : Prop :=
  ∀ n, (P11122862808398699523.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P11528198148583219990

`∩[A049473(2*n+1)+1, A049473(2*n)]`
-/

namespace A288215.P11528198148583219990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288215.P11528198148583219990

namespace A288215

/-- `∩[A049473(2*n+1)+1, A049473(2*n)]` -/
def P11528198148583219990.Spec : Prop :=
  ∀ n, (P11528198148583219990.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P5275900073098483281

`eq[A083035(A001951(n+1)+1), A083035(n+1)]+2`
-/

namespace A288215.P5275900073098483281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A001951 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A288215.P5275900073098483281

namespace A288215

/-- `eq[A083035(A001951(n+1)+1), A083035(n+1)]+2` -/
def P5275900073098483281.Spec : Prop :=
  ∀ n, (P5275900073098483281.a n : ℤ) = A288215 (n + 1)

end A288215

/-! ## A288215.P8704087133168602784

`lt[2, A272565(abs(A184119(n+1)-1)+1)]+1`
-/

namespace A288215.P8704087133168602784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (|A184119 (n + 1) - 1| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288215.P8704087133168602784

namespace A288215

/-- `lt[2, A272565(abs(A184119(n+1)-1)+1)]+1` -/
def P8704087133168602784.Spec : Prop :=
  ∀ n, (P8704087133168602784.a n : ℤ) = A288215 (n + 1)

end A288215

/-!
# A288216: 0-limiting word of the mapping 00->1000, 10->010, starting with 00.

The programs for A288216, there is no canonical definition to state claims against.
-/

/-! ## A288216.P1065961249009310891

`char[A288218(n+1)-1]`
-/

namespace A288216.P1065961249009310891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288218 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288216.P1065961249009310891

/-! ## A288216.P2236311566852123262

`char[comp[A288217(n+1)-1]]`
-/

namespace A288216.P2236311566852123262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288217 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288216.P2236311566852123262

/-! ## A288216.P5618134164946277314

`37%(char[A288217(A028310(n))-1]-2)`
-/

namespace A288216.P5618134164946277314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288217 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 37 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 2)

end

end A288216.P5618134164946277314

/-! ## A288216.P2600498594576647837

`char[A023443(A288218(n+1))]`
-/

namespace A288216.P2600498594576647837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288218 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288216.P2600498594576647837

/-! ## A288216.P12821627433170235455

`char[A023443(comp[A288217(n+1)])]`
-/

namespace A288216.P12821627433170235455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288217 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288216.P12821627433170235455

/-!
# A288217: Positions of 0 in A288216; complement of A288218.

The programs for A288217, there is no canonical definition to state claims against.
-/

/-! ## A288217.P11100077429655255946

`lt[A288216(n+1), 1]+1`
-/

namespace A288217.P11100077429655255946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288217.P11100077429655255946

/-! ## A288217.P13285813339545581547

`a(n-1)+A288216(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288217.P13285813339545581547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288216 (a (n - 1) + 1).toNat + 1)

end

end A288217.P13285813339545581547

/-! ## A288217.P8675526841402070039

`record[n+1-A288216(n+1)*A288218(n+1)]`
-/

namespace A288217.P8675526841402070039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288216 (n + 1) * A288218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288217.P8675526841402070039

/-! ## A288217.P6313023756664976543

`record[n+1-A288216(n+1)*A289072(n+1)]`
-/

namespace A288217.P6313023756664976543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288216 (n + 1) * A289072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288217.P6313023756664976543

/-! ## A288217.P17533836364102801164

`record[n+1-A288216(n+1)*A289073(n+1)]`
-/

namespace A288217.P17533836364102801164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288216 (n + 1) * A289073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288217.P17533836364102801164

/-! ## A288217.P12420962269803266006

`eq[A000038(n), A288216(A000038(n)+n)]`
-/

namespace A288217.P12420962269803266006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288217.P12420962269803266006

/-! ## A288217.P2370332817808339454

`eq[A028310(n)-n, A288216(A028310(n))]`
-/

namespace A288217.P2370332817808339454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288217.P2370332817808339454

/-!
# A288218: Positions of 1 in A288216; complement of A288217.

The programs for A288218, there is no canonical definition to state claims against.
-/

/-! ## A288218.P11951142814360934088

`lt[0, A288216(n+1)]+1`
-/

namespace A288218.P11951142814360934088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288218.P11951142814360934088

/-! ## A288218.P15767235931151217483

`record[(n+3)*A288216(n+3)]`
-/

namespace A288218.P15767235931151217483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A288216 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288218.P15767235931151217483

/-! ## A288218.P15190683653261341943

`eq[1, A288216(A028310(n))]`
-/

namespace A288218.P15190683653261341943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288218.P15190683653261341943

/-! ## A288218.P6007212287553434917

`eq[1, A288216(A000038(n)+n)]`
-/

namespace A288218.P6007212287553434917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288218.P6007212287553434917

/-! ## A288218.P16008788061929974927

`A344180(eq[1, A288216(A344180(n))])`
-/

namespace A288218.P16008788061929974927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288218.P16008788061929974927

/-! ## A288218.P9161382123344468036

`eq[1, A288216(A123108(2*n))]`
-/

namespace A288218.P9161382123344468036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288218.P9161382123344468036

/-! ## A288218.P11835800128358995533

`eq[1, A288216(A233583(n+1))]`
-/

namespace A288218.P11835800128358995533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288218.P11835800128358995533

/-!
# A288219: a(n) = a(n-1) + a(n-2) for n >= 3, where a(0) = 2, a(1) = 4, a(2) = 7.

The programs for A288219, the canonical program `A288219.P15521803199415828258` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288219 has offset 0).

The definition of A288219 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)` (program `A288219.P15521803199415828258`, by `A288219.P15521803199415828258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288219.P15521803199415828258

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288219

/-- `a(n-1)+a(n-2)` -/
def P15521803199415828258.Spec : Prop :=
  ∀ n, (P15521803199415828258.a n : ℤ) = A288219 n

theorem P15521803199415828258.correct : P15521803199415828258.Spec := by
  intro n
  simp only [A288219]

end A288219

/-! ## A288219.P8467636060594796193

`ceil(∑[ϕ^n])+1`
-/

namespace A288219.P8467636060594796193
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + 1

end

end A288219.P8467636060594796193

namespace A288219

/-- `ceil(∑[ϕ^n])+1` -/
def P8467636060594796193.Spec : Prop :=
  ∀ n, P8467636060594796193.a n = A288219 n

end A288219

/-! ## A288219.P405191180627167624

`ogf((2+2x+x^2)/(1-x-x^2))`
-/

namespace A288219.P405191180627167624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1] [1, -1, -1] n

end

end A288219.P405191180627167624

namespace A288219

/-- `ogf((2+2x+x^2)/(1-x-x^2))` -/
def P405191180627167624.Spec : Prop :=
  ∀ n, P405191180627167624.a n = A288219 n

end A288219

/-! ## A288219.P9547649342920032357

`ceil(cos(4)+ϕ^(n+2))`
-/

namespace A288219.P9547649342920032357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (4 : ℝ) + Real.goldenRatio ^ (n + 2)⌉

end

end A288219.P9547649342920032357

namespace A288219

/-- `ceil(cos(4)+ϕ^(n+2))` -/
def P9547649342920032357.Spec : Prop :=
  ∀ n, P9547649342920032357.a n = A288219 n

end A288219

/-! ## A288219.P3703461704175999398

`floor(cos(5)+ϕ^(n+2))`
-/

namespace A288219.P3703461704175999398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (5 : ℝ) + Real.goldenRatio ^ (n + 2)⌋

end

end A288219.P3703461704175999398

namespace A288219

/-- `floor(cos(5)+ϕ^(n+2))` -/
def P3703461704175999398.Spec : Prop :=
  ∀ n, P3703461704175999398.a n = A288219 n

end A288219

/-! ## A288219.P6893427884676019601

`round(tan(3)+ϕ^(n+2))`
-/

namespace A288219.P6893427884676019601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (3 : ℝ) + Real.goldenRatio ^ (n + 2))

end

end A288219.P6893427884676019601

namespace A288219

/-- `round(tan(3)+ϕ^(n+2))` -/
def P6893427884676019601.Spec : Prop :=
  ∀ n, P6893427884676019601.a n = A288219 n

end A288219

/-! ## A288219.P11834767782723974922

`round(ϕ^(n+2)-sin(3))`
-/

namespace A288219.P11834767782723974922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2) - Real.sin (3 : ℝ))

end

end A288219.P11834767782723974922

namespace A288219

/-- `round(ϕ^(n+2)-sin(3))` -/
def P11834767782723974922.Spec : Prop :=
  ∀ n, P11834767782723974922.a n = A288219 n

end A288219

/-! ## A288219.P11477152891201185836

`floor(ϕ^(n+2)-sin(6))`
-/

namespace A288219.P11477152891201185836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n + 2) - Real.sin (6 : ℝ)⌋

end

end A288219.P11477152891201185836

namespace A288219

/-- `floor(ϕ^(n+2)-sin(6))` -/
def P11477152891201185836.Spec : Prop :=
  ∀ n, P11477152891201185836.a n = A288219 n

end A288219

/-! ## A288219.P11079247105662315485

`floor(ϕ^(n+2)-tan(6))`
-/

namespace A288219.P11079247105662315485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n + 2) - Real.tan (6 : ℝ)⌋

end

end A288219.P11079247105662315485

namespace A288219

/-- `floor(ϕ^(n+2)-tan(6))` -/
def P11079247105662315485.Spec : Prop :=
  ∀ n, P11079247105662315485.a n = A288219 n

end A288219

/-! ## A288219.P1001528511993629384

`round(cos(8)+ϕ^(n+2))`
-/

namespace A288219.P1001528511993629384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (8 : ℝ) + Real.goldenRatio ^ (n + 2))

end

end A288219.P1001528511993629384

namespace A288219

/-- `round(cos(8)+ϕ^(n+2))` -/
def P1001528511993629384.Spec : Prop :=
  ∀ n, P1001528511993629384.a n = A288219 n

end A288219

/-! ## A288219.P5835640190667979271

`ceil(ϕ^(n+2)-cot(1))`
-/

namespace A288219.P5835640190667979271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (n + 2) - Real.cot (1 : ℝ)⌉

end

end A288219.P5835640190667979271

namespace A288219

/-- `ceil(ϕ^(n+2)-cot(1))` -/
def P5835640190667979271.Spec : Prop :=
  ∀ n, P5835640190667979271.a n = A288219 n

end A288219

/-! ## A288219.P3802498472112467891

`floor(acot(3)+ϕ^(n+2))`
-/

namespace A288219.P3802498472112467891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (3 : ℝ) + Real.goldenRatio ^ (n + 2)⌋

end

end A288219.P3802498472112467891

namespace A288219

/-- `floor(acot(3)+ϕ^(n+2))` -/
def P3802498472112467891.Spec : Prop :=
  ∀ n, P3802498472112467891.a n = A288219 n

end A288219

/-! ## A288219.P14040896645868463793

`ceil(ϕ^(n+2)-tan(10))`
-/

namespace A288219.P14040896645868463793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (n + 2) - Real.tan (10 : ℝ)⌉

end

end A288219.P14040896645868463793

namespace A288219

/-- `ceil(ϕ^(n+2)-tan(10))` -/
def P14040896645868463793.Spec : Prop :=
  ∀ n, P14040896645868463793.a n = A288219 n

end A288219

/-! ## A288219.P15049706464399077178

`ceil(ϕ^(n+2)-acot(n))`
-/

namespace A288219.P15049706464399077178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (n + 2) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A288219.P15049706464399077178

namespace A288219

/-- `ceil(ϕ^(n+2)-acot(n))` -/
def P15049706464399077178.Spec : Prop :=
  ∀ n, P15049706464399077178.a n = A288219 n

end A288219

/-! ## A288219.P10170089089987963842

`round(ϕ*a(n-1))` with `a(0)=2, a(1)=4, a(2)=7`
-/

namespace A288219.P10170089089987963842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A288219.P10170089089987963842

namespace A288219

/-- `round(ϕ*a(n-1))` -/
def P10170089089987963842.Spec : Prop :=
  ∀ n, P10170089089987963842.a n = A288219 n

end A288219

/-! ## A288219.P2248180688753709860

`round(a(n-1)+ϕ^n)` with `a(0)=2`
-/

namespace A288219.P2248180688753709860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.goldenRatio ^ n)

end

end A288219.P2248180688753709860

namespace A288219

/-- `round(a(n-1)+ϕ^n)` -/
def P2248180688753709860.Spec : Prop :=
  ∀ n, P2248180688753709860.a n = A288219 n

end A288219

/-! ## A288219.P10569639219456571901

`A116470(2*(n+1))`
-/

namespace A288219.P10569639219456571901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (2 * (n + 1))

end

end A288219.P10569639219456571901

namespace A288219

/-- `A116470(2*(n+1))` -/
def P10569639219456571901.Spec : Prop :=
  ∀ n, P10569639219456571901.a n = A288219 n

end A288219

/-! ## A288219.P14578418048892886453

`A259626(2*(n+1))`
-/

namespace A288219.P14578418048892886453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259626 (2 * (n + 1))

end

end A288219.P14578418048892886453

namespace A288219

/-- `A259626(2*(n+1))` -/
def P14578418048892886453.Spec : Prop :=
  ∀ n, P14578418048892886453.a n = A288219 n

end A288219

/-! ## A288219.P12622054537925094728

`A259625(2*n+3)`
-/

namespace A288219.P12622054537925094728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (2 * n + 3)

end

end A288219.P12622054537925094728

namespace A288219

/-- `A259625(2*n+3)` -/
def P12622054537925094728.Spec : Prop :=
  ∀ n, P12622054537925094728.a n = A288219 n

end A288219

/-! ## A288219.P493611767617874143

`A090244(A103517(n))`
-/

namespace A288219.P493611767617874143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A103517 n).toNat

end

end A288219.P493611767617874143

namespace A288219

/-- `A090244(A103517(n))` -/
def P493611767617874143.Spec : Prop :=
  ∀ n, P493611767617874143.a n = A288219 n

end A288219

/-!
# A288220: 1-limiting word of the mapping 00->1000, 10->010, starting with 00.

The programs for A288220, there is no canonical definition to state claims against.
-/

/-! ## A288220.P17713085253441056578

`char[A288222(n+1)-1]`
-/

namespace A288220.P17713085253441056578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288222 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288220.P17713085253441056578

/-! ## A288220.P12706527001640060918

`char[comp[A288221(n+1)-1]]`
-/

namespace A288220.P12706527001640060918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288221 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288220.P12706527001640060918

/-! ## A288220.P6897086854835051618

`1-char[A288221(Δ[n²]-n)-1]`
-/

namespace A288220.P6897086854835051618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288221 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288220.P6897086854835051618

/-! ## A288220.P597166466595394532

`char[abs(A288222(A080513(n))-1)]`
-/

namespace A288220.P597166466595394532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288222 (A080513 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288220.P597166466595394532

/-! ## A288220.P15085408330938673622

`char[A023443(A288222(n+1))]`
-/

namespace A288220.P15085408330938673622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288222 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288220.P15085408330938673622

/-! ## A288220.P3727946710934413069

`char[A023443(comp[A288221(n+1)])]`
-/

namespace A288220.P3727946710934413069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288221 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288220.P3727946710934413069

/-! ## A288220.P14281425526985861354

`char[Δ[A288222(A152271(n))]]`
-/

namespace A288220.P14281425526985861354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288222 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288220.P14281425526985861354

/-!
# A288221: Positions of 0 in A288220; complement of A288222.

The programs for A288221, there is no canonical definition to state claims against.
-/

/-! ## A288221.P13480101508001707722

`comp[A288222(n+1)-1]+1`
-/

namespace A288221.P13480101508001707722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288222 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288221.P13480101508001707722

/-! ## A288221.P17919612141459740946

`eq[0, A288220(n+1)]+1`
-/

namespace A288221.P17919612141459740946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288221.P17919612141459740946

/-! ## A288221.P2039760997358546336

`record[n+1-(A288220(a(n-1)+1)+a(n-1))]` with `a(0)=2`
-/

namespace A288221.P2039760997358546336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 1 : ℤ) - (A288220 (f1 (n - 1) + 1).toNat + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288221.P2039760997358546336

/-! ## A288221.P5645429586004065386

`eq[0, A288220(A028310(n))]`
-/

namespace A288221.P5645429586004065386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288221.P5645429586004065386

/-! ## A288221.P14791687324551456359

`A020725(eq[0, A288220(n+1)])`
-/

namespace A288221.P14791687324551456359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288221.P14791687324551456359

/-! ## A288221.P11231785988173532616

`record[A344180(n)+A288220(A344180(n))]`
-/

namespace A288221.P11231785988173532616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n + A288220 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288221.P11231785988173532616

/-! ## A288221.P13097851607884799433

`eq[0, A288220(A123108(A005843(n)))]`
-/

namespace A288221.P13097851607884799433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A123108 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288221.P13097851607884799433

/-! ## A288221.P4392576099079397399

`record[A288220(A026806(n+1))+A026806(n+1)]`
-/

namespace A288221.P4392576099079397399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A026806 (n + 1)).toNat + A026806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288221.P4392576099079397399

/-! ## A288221.P8281016048257694615

`record[A288220(A003963(n+1))+A003963(n+1)]`
-/

namespace A288221.P8281016048257694615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A003963 (n + 1)).toNat + A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288221.P8281016048257694615

/-! ## A288221.P15102945937832925946

`record[A288220(A118276(n+1))+A118276(n+1)]`
-/

namespace A288221.P15102945937832925946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A118276 (n + 1)).toNat + A118276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288221.P15102945937832925946

/-!
# A288222: Positions of 1 in A288220; complement of A288221.

The programs for A288222, there is no canonical definition to state claims against.
-/

/-! ## A288222.P8049727131963950395

`lt[0, A288220(n+1)]+1`
-/

namespace A288222.P8049727131963950395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288222.P8049727131963950395

/-! ## A288222.P2213097214928737605

`record[(n+1)*A288220(n+2)+1]`
-/

namespace A288222.P2213097214928737605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A288220 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288222.P2213097214928737605

/-! ## A288222.P1614568402661106274

`record[A000027(n+1)*A288220(n+1)]`
-/

namespace A288222.P1614568402661106274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A288220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288222.P1614568402661106274

/-! ## A288222.P272698851974611027

`eq[1, A288220(n+1)]-A321804(C(2, n+2))`
-/

namespace A288222.P272698851974611027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A321804 (Nat.choose 2 (n + 2))

end

end A288222.P272698851974611027

/-! ## A288222.P1790693026538353028

`record[A288220(A344180(n))*A344180(n)]`
-/

namespace A288222.P1790693026538353028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A344180 n).toNat * A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288222.P1790693026538353028

/-! ## A288222.P17482379198862705839

`eq[n, A028310(n)*A288220(A028310(n))]`
-/

namespace A288222.P17482379198862705839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A288220 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288222.P17482379198862705839

/-! ## A288222.P1425235515523424137

`record[A110514(2*n)*A288220(n+1)]`
-/

namespace A288222.P1425235515523424137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (2 * n) * A288220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288222.P1425235515523424137

/-! ## A288222.P279590039563596349

`record[A008619(n)*A288220(A008619(n))]`
-/

namespace A288222.P279590039563596349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A288220 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288222.P279590039563596349

/-! ## A288222.P10125230576071315591

`record[A065033(n)*A288220(A065033(n))]`
-/

namespace A288222.P10125230576071315591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A288220 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288222.P10125230576071315591

/-!
# A288223: 2-limiting word of the mapping 00->1000, 10->010, starting with 00.

The programs for A288223, there is no canonical definition to state claims against.
-/

/-! ## A288223.P11212019447832805893

`char[A288225(n+1)-1]`
-/

namespace A288223.P11212019447832805893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288225 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288223.P11212019447832805893

/-! ## A288223.P8067686547062266709

`char[comp[A288224(n+1)-1]]`
-/

namespace A288223.P8067686547062266709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288224 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288223.P8067686547062266709

/-! ## A288223.P1438170366697589022

`char[A023443(A288225(n+1))]`
-/

namespace A288223.P1438170366697589022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288225 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288223.P1438170366697589022

/-! ## A288223.P10932024791670065001

`A053186(Δ[char[A288225(n+1)]]+1)`
-/

namespace A288223.P10932024791670065001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288223.P10932024791670065001

/-! ## A288223.P334211391712153732

`A123594(Δ[comp[A288224(n+1)+n]]+1)`
-/

namespace A288223.P334211391712153732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288224 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288223.P334211391712153732

/-! ## A288223.P13366772010168328889

`(A339782(Δ[char[A288224(n+1)]]+1)%3)%2`
-/

namespace A288223.P13366772010168328889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288224 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A339782 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) 3) 2

end

end A288223.P13366772010168328889

/-! ## A288223.P9589749447760238378

`(A014486(Δ[comp[A288224(n+1)+n]]+1)%3)%2`
-/

namespace A288223.P9589749447760238378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288224 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A014486 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) 3) 2

end

end A288223.P9589749447760238378

/-!
# A288224: Positions of 0 in A288223; complement of A288225.

The programs for A288224, there is no canonical definition to state claims against.
-/

/-! ## A288224.P11403521738636484065

`lt[A288223(n+1), 1]+1`
-/

namespace A288224.P11403521738636484065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288224.P11403521738636484065

/-! ## A288224.P10935472195423952028

`a(n-1)+A288223(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288224.P10935472195423952028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288223 (a (n - 1) + 1).toNat + 1)

end

end A288224.P10935472195423952028

/-! ## A288224.P4878591662122133633

`record[n+1-A004526((n+1)*A288223(n+1))]`
-/

namespace A288224.P4878591662122133633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004526 ((n + 1 : ℤ) * A288223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288224.P4878591662122133633

/-! ## A288224.P6792534858309004992

`record[n+1-A288217(n+1)*A288223(n+1)]`
-/

namespace A288224.P6792534858309004992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288217 (n + 1) * A288223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288224.P6792534858309004992

/-! ## A288224.P12124224682627684439

`record[n+1-A288218(n+1)*A288223(n+1)]`
-/

namespace A288224.P12124224682627684439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288218 (n + 1) * A288223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288224.P12124224682627684439

/-! ## A288224.P16900335021698523865

`eq[A028310(n)-n, A288223(A028310(n))]`
-/

namespace A288224.P16900335021698523865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288224.P16900335021698523865

/-!
# A288225: Positions of 1 in A288223; complement of A288224.

The programs for A288225, there is no canonical definition to state claims against.
-/

/-! ## A288225.P13078153262002177046

`lt[0, A288223(n+1)]+1`
-/

namespace A288225.P13078153262002177046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288225.P13078153262002177046

/-! ## A288225.P15546477685485290254

`record[(n+2)*A288223(n+2)]`
-/

namespace A288225.P15546477685485290254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288225.P15546477685485290254

/-! ## A288225.P6131546542040306745

`eq[1, A288223(A028310(n))]`
-/

namespace A288225.P6131546542040306745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288225.P6131546542040306745

/-! ## A288225.P6732882551234607053

`A020725(eq[1, A288223(n+1)])`
-/

namespace A288225.P6732882551234607053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288225.P6732882551234607053

/-! ## A288225.P4065393138868417252

`record[Δ[A002620(A288224(n+1))]]`
-/

namespace A288225.P4065393138868417252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A288224 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288225.P4065393138868417252

/-!
# A288226: 0-limiting word of the mapping 00->1000, 10->011, starting with 00.

The programs for A288226, there is no canonical definition to state claims against.
-/

/-! ## A288226.P8877700182638453178

`char[A288228(n+1)-1]`
-/

namespace A288226.P8877700182638453178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288228 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288226.P8877700182638453178

/-! ## A288226.P9706351890805460580

`char[comp[A288227(n+1)-1]]`
-/

namespace A288226.P9706351890805460580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288227 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288226.P9706351890805460580

/-! ## A288226.P8602157334980608380

`char[abs(A288228(Δ[n²]-n)-1)]`
-/

namespace A288226.P8602157334980608380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288228 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288226.P8602157334980608380

/-! ## A288226.P11499299623223271812

`1-char[A288227(Δ[n²]-n)-1]`
-/

namespace A288226.P11499299623223271812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288227 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288226.P11499299623223271812

/-!
# A288227: Positions of 0 in A288226; complement of A288228.

The programs for A288227, there is no canonical definition to state claims against.
-/

/-! ## A288227.P1378888401727821385

`eq[0, A288226(n+1)]+1`
-/

namespace A288227.P1378888401727821385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288227.P1378888401727821385

/-! ## A288227.P14847709221273003949

`lt[n*A288226(A028310(n)), n]`
-/

namespace A288227.P14847709221273003949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288226 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288227.P14847709221273003949

/-! ## A288227.P5317973003568887728

`eq[char[A288228(n+1)], A091225(2*(n+1))]`
-/

namespace A288227.P5317973003568887728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288228 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288227.P5317973003568887728

/-! ## A288227.P16621229558443534762

`eq[A000007(n), A288226(A028310(n))]`
-/

namespace A288227.P16621229558443534762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288227.P16621229558443534762

/-! ## A288227.P3921454514362851543

`eq[A000038(n), A288226(A028310(n))]`
-/

namespace A288227.P3921454514362851543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288227.P3921454514362851543

/-! ## A288227.P14854326990420241875

`eq[A004277(n)-2*n, A288226(A028310(n))]`
-/

namespace A288227.P14854326990420241875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288227.P14854326990420241875

/-!
# A288228: Positions of 1 in A288226; complement of A288227.

The programs for A288228, there is no canonical definition to state claims against.
-/

/-! ## A288228.P54775370980556017

`comp[A288227(n+1)-1]+1`
-/

namespace A288228.P54775370980556017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288227 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288228.P54775370980556017

/-! ## A288228.P18073535004879331516

`lt[0, A288226(n+1)]+1`
-/

namespace A288228.P18073535004879331516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288228.P18073535004879331516

/-! ## A288228.P5012852536420450797

`record[(n+3)*A288226(n+3)]`
-/

namespace A288228.P5012852536420450797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A288226 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288228.P5012852536420450797

/-! ## A288228.P13778920297566963806

`lt[0, A288226(A028310(n))]`
-/

namespace A288228.P13778920297566963806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288228.P13778920297566963806

/-! ## A288228.P5241249539533127770

`A020725(eq[1, A288226(n+1)])`
-/

namespace A288228.P5241249539533127770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288228.P5241249539533127770

/-! ## A288228.P5195643942130560493

`A065475(eq[1, A288226(n+1)])`
-/

namespace A288228.P5195643942130560493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288228.P5195643942130560493

/-! ## A288228.P16297500317983793941

`A114637(eq[1, A288226(n+1)])`
-/

namespace A288228.P16297500317983793941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288228.P16297500317983793941

/-! ## A288228.P10210843716366656354

`eq[1, A288226(A000038(n)+n)]`
-/

namespace A288228.P10210843716366656354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288228.P10210843716366656354

/-! ## A288228.P9847913010581516622

`eq[1, A288226(A004277(n)-n)]`
-/

namespace A288228.P9847913010581516622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288228.P9847913010581516622

/-! ## A288228.P14607927334758600649

`eq[1, A288226(A000007(n)+n)]`
-/

namespace A288228.P14607927334758600649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288228.P14607927334758600649

/-! ## A288228.P13991115237332024513

`eq[char[A288227(n+1)], A288352(3*(n+1))]`
-/

namespace A288228.P13991115237332024513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288352 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288228.P13991115237332024513

/-! ## A288228.P5569815699742648150

`eq[1, A288226(A233583(n+1))]`
-/

namespace A288228.P5569815699742648150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288228.P5569815699742648150

/-!
# A288229: Coefficients of 1/(Sum_{k>=0} [(k+1)*r]*(-x)^k), where r = Pi/2 and [ ] = floor.

The programs for A288229, there is no canonical definition to state claims against.
-/

/-! ## A288229.P8604487179618083905

`abs(A279592(n))`
-/

namespace A288229.P8604487179618083905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279592 n|

end

end A288229.P8604487179618083905

/-! ## A288229.P14179051479472609284

`A033999(n)*A279592(n)`
-/

namespace A288229.P14179051479472609284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A279592 n

end

end A288229.P14179051479472609284

/-! ## A288229.P10274026038602664778

`gcd(A000038(n), A279592(n))`
-/

namespace A288229.P10274026038602664778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A279592 n)

end

end A288229.P10274026038602664778

/-! ## A288229.P9092013760316174473

`lcm(A015526(n), A279592(n))`
-/

namespace A288229.P9092013760316174473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015526 n) (A279592 n)

end

end A288229.P9092013760316174473

/-! ## A288229.P3296867914760884474

`lcm(-A279592(n), A020985(n))`
-/

namespace A288229.P3296867914760884474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A279592 n) (A020985 n)

end

end A288229.P3296867914760884474

/-!
# A288230: Coefficients of 1/(Sum_{k>=0} [(k+1)*r]*(-x)^k), where r = sqrt(5/2) and [ ] = floor.

The programs for A288230, there is no canonical definition to state claims against.
-/

/-! ## A288230.P3563565107890630989

`A289262(n)-A185284(2*n+1)`
-/

namespace A288230.P3563565107890630989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289262 n - A185284 (2 * n + 1)

end

end A288230.P3563565107890630989

/-! ## A288230.P13475205880104992195

`A289262(n)-A178798(A276011(n))`
-/

namespace A288230.P13475205880104992195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289262 n - A178798 (A276011 n).toNat

end

end A288230.P13475205880104992195

/-! ## A288230.P1165216002083661883

`A289262(n)-A185284(A060475(n))²`
-/

namespace A288230.P1165216002083661883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289262 n - A185284 (A060475 n).toNat ^ 2

end

end A288230.P1165216002083661883

/-! ## A288230.P11941162934183892383

`A289262(n)-A185238(A096503(n+1))`
-/

namespace A288230.P11941162934183892383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289262 n - A185238 (A096503 (n + 1)).toNat

end

end A288230.P11941162934183892383

/-! ## A288230.P5963366031088560082

`A289262(n)-A288314(A288252(n+1))`
-/

namespace A288230.P5963366031088560082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289262 n - A288314 (A288252 (n + 1)).toNat

end

end A288230.P5963366031088560082

/-!
# A288231: Coefficients of 1/(Sum_{k>=0} [(k+1)*r]*(-x)^k), where r = 4^(1/3) and [ ] = floor.

The programs for A288231, there is no canonical definition to state claims against.
-/

/-! ## A288231.P2631367775630467181

`A008621(∑[A288230(n+1)])`
-/

namespace A288231.P2631367775630467181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288231.P2631367775630467181

/-! ## A288231.P5415051073214512913

`A008621(∑[A289262(n+1)])`
-/

namespace A288231.P5415051073214512913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288231.P5415051073214512913

/-! ## A288231.P15188170181788466858

`A288230(n)+A011686(A309864(n))`
-/

namespace A288231.P15188170181788466858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288230 n + A011686 (A309864 n).toNat

end

end A288231.P15188170181788466858

/-! ## A288231.P11578486877310441315

`A289262(n)+A011686(A309864(n))`
-/

namespace A288231.P11578486877310441315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289262 n + A011686 (A309864 n).toNat

end

end A288231.P11578486877310441315

/-! ## A288231.P18285530644335659136

`A288230(n)+A185284(A160714(n))`
-/

namespace A288231.P18285530644335659136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288230 n + A185284 (A160714 n).toNat

end

end A288231.P18285530644335659136

/-!
# A288232: Coefficients in the expansion of 1/([r]-[2*r]*x+[3*r]*x^2-...); []=floor, r=3*e/5.

The programs for A288232, there is no canonical definition to state claims against.
-/

/-! ## A288232.P13735757188677961017

`A289261(n*A209438(∑[n]))`
-/

namespace A288232.P13735757188677961017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289261 ((n : ℤ) * A209438 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A288232.P13735757188677961017

/-! ## A288232.P12842406536149658631

`A289261(n/A209438(∑[n]))`
-/

namespace A288232.P12842406536149658631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289261 (SequenceMachineLib.roundAway ((n : ℚ) / (A209438 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A288232.P12842406536149658631

/-! ## A288232.P13143469264697294872

`A289261(n)%A339296(n+5)`
-/

namespace A288232.P13143469264697294872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289261 n) (A339296 (n + 5))

end

end A288232.P13143469264697294872

/-! ## A288232.P4056937524203409307

`and(A289261(n), A383046(n+3))`
-/

namespace A288232.P4056937524203409307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289261 n) (A383046 (n + 3))

end

end A288232.P4056937524203409307

/-! ## A288232.P7535330243297423515

`A289261(n)^(A067156(n+9)+1)`
-/

namespace A288232.P7535330243297423515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289261 n : ℚ) ^ (A067156 (n + 9) + 1 : ℤ)

end

end A288232.P7535330243297423515

/-!
# A288233: Coefficients in the expansion of 1/([r]-[2*r]*x+[3*r]*x^2-...); [ ]=floor, r=sqrt(8/3).

The programs for A288233, there is no canonical definition to state claims against.
-/

/-! ## A288233.P13235160746776214079

`A288232(n)-A185284(2*n+1)`
-/

namespace A288233.P13235160746776214079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288232 n - A185284 (2 * n + 1)

end

end A288233.P13235160746776214079

/-! ## A288233.P6960775511917898356

`A288232(n)-A185238(A060475(n))`
-/

namespace A288233.P6960775511917898356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288232 n - A185238 (A060475 n).toNat

end

end A288233.P6960775511917898356

/-! ## A288233.P8358574655464088460

`A288232(n)-A178798(A276011(n))`
-/

namespace A288233.P8358574655464088460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288232 n - A178798 (A276011 n).toNat

end

end A288233.P8358574655464088460

/-! ## A288233.P11460142337797826749

`A289261(n)-A178798(A276011(n))`
-/

namespace A288233.P11460142337797826749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289261 n - A178798 (A276011 n).toNat

end

end A288233.P11460142337797826749

/-! ## A288233.P14748914175277217837

`A288232(n)-A185284(A165652(n))²`
-/

namespace A288233.P14748914175277217837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288232 n - A185284 (A165652 n).toNat ^ 2

end

end A288233.P14748914175277217837

/-!
# A288234: Coefficients in the expansion of 1/([r]-[2*r]*x+[3*r]*x^2-...); [ ]=floor, r=-1+sqrt(7).

The programs for A288234, there is no canonical definition to state claims against.
-/

/-! ## A288234.P2607997733909392359

`A288235(n)+A044941(A000079(n))`
-/

namespace A288234.P2607997733909392359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288235 n + A044941 (A000079 n).toNat

end

end A288234.P2607997733909392359

/-! ## A288234.P3056507382859338691

`A288237(n)+A044941(A000079(n))`
-/

namespace A288234.P3056507382859338691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288237 n + A044941 (A000079 n).toNat

end

end A288234.P3056507382859338691

/-! ## A288234.P14260113510946955595

`A288235(n)+A220659(A015070(n))`
-/

namespace A288234.P14260113510946955595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288235 n + A220659 (A015070 n).toNat

end

end A288234.P14260113510946955595

/-! ## A288234.P17240743879677434789

`A288235(n)+A044940(A288135(n))`
-/

namespace A288234.P17240743879677434789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288235 n + A044940 (A288135 n).toNat

end

end A288234.P17240743879677434789

/-! ## A288234.P3701097664775552292

`A288237(n)+A044940(A288135(n))`
-/

namespace A288234.P3701097664775552292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288237 n + A044940 (A288135 n).toNat

end

end A288234.P3701097664775552292

/-!
# A288235: Coefficients in the expansion of 1/([r]-[2*r]*x+[3*r]*x^2-...); [ ]=floor, r=sqrt(e).

The programs for A288235, there is no canonical definition to state claims against.
-/

/-! ## A288235.P16456220601821096438

`abs(A279595(n))`
-/

namespace A288235.P16456220601821096438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279595 n|

end

end A288235.P16456220601821096438

/-! ## A288235.P11640523111599291228

`A033999(n)*A279595(n)`
-/

namespace A288235.P11640523111599291228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A279595 n

end

end A288235.P11640523111599291228

/-! ## A288235.P1345238642615784025

`gcd(A000038(n), A279595(n))`
-/

namespace A288235.P1345238642615784025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A279595 n)

end

end A288235.P1345238642615784025

/-! ## A288235.P2625839010588528999

`lcm(A015526(n), A279595(n))`
-/

namespace A288235.P2625839010588528999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015526 n) (A279595 n)

end

end A288235.P2625839010588528999

/-! ## A288235.P17797489387065917031

`A331288(A288237(n))`
-/

namespace A288235.P17797489387065917031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (A288237 n).toNat

end

end A288235.P17797489387065917031

/-!
# A288237: Coefficients in the expansion of 1/([r]-[2*r]*x+[3*r]*x^2-...); [ ]=floor, r=sqrt(11/4).

The programs for A288237, there is no canonical definition to state claims against.
-/

/-! ## A288237.P15604242577738662654

`A288235(n)-A288384(A288325(n))`
-/

namespace A288237.P15604242577738662654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288235 n - A288384 (A288325 n).toNat

end

end A288237.P15604242577738662654

/-!
# A288243: Length of n-th iterate of the mapping 00->1000, 10->011, starting with 00.

The programs for A288243, there is no canonical definition to state claims against.
-/

/-! ## A288243.P1174440166909180587

`∑[A255738(A026676(n))+A001399(n)]`
-/

namespace A288243.P1174440166909180587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (A026676 n).toNat + A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288243.P1174440166909180587

/-! ## A288243.P5965467193223950453

`∑[A001399(n)-A010815(A231331(n))]`
-/

namespace A288243.P5965467193223950453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A010815 (A231331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288243.P5965467193223950453

/-! ## A288243.P17559113545889934468

`∑[∑[A332813(A183314(n+3))]]`
-/

namespace A288243.P17559113545889934468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A183314 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288243.P17559113545889934468

/-! ## A288243.P13159604916874856005

`A000194(A034041(n)+A001769(n))`
-/

namespace A288243.P13159604916874856005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A034041 n + A001769 n).toNat

end

end A288243.P13159604916874856005

/-! ## A288243.P4990308918572579611

`A000194(A001769(n)-(1-A034041(n)))`
-/

namespace A288243.P4990308918572579611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A001769 n - (1 - A034041 n)).toNat

end

end A288243.P4990308918572579611

/-!
# A288249: 2 * largest possible area of a simple n-sided lattice polygon whose vertex coordinates x and y are both independent permutations of the integers 1 ... n, subject to the condition that none of its edges are mutually parallel.

The programs for A288249, there is no canonical definition to state claims against.
-/

/-! ## A288249.P16013063650863240525

`A259285(A060897(n))+A137882(n+1)`
-/

namespace A288249.P16013063650863240525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259285 (A060897 n).toNat + A137882 (n + 1)

end

end A288249.P16013063650863240525

/-!
# A288251: k-th term of n in the 3x+1 problem, k >= 1. Square array A(n, k) read by antidiagonals downwards.

The programs for A288251, there is no canonical definition to state claims against.
-/

/-! ## A288251.P11593206060249836292

`A347270(A038722(comp[∑[n]]))`
-/

namespace A288251.P11593206060249836292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A288251.P11593206060249836292

/-! ## A288251.P10026123142863229156

`A347270(A099375(n)+2+n)`
-/

namespace A288251.P10026123142863229156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A099375 n + 2 + (n : ℤ)).toNat

end

end A288251.P10026123142863229156

/-! ## A288251.P6624243072360667343

`A347270(A212012(n+1)+1+n)`
-/

namespace A288251.P6624243072360667343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A212012 (n + 1) + 1 + (n : ℤ)).toNat

end

end A288251.P6624243072360667343

/-! ## A288251.P12208332840314722020

`A347270(2*A004736(n+1)+n+1)`
-/

namespace A288251.P12208332840314722020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (2 * A004736 (n + 1) + (n + 1 : ℤ)).toNat

end

end A288251.P12208332840314722020

/-! ## A288251.P8450467283680713118

`A006370(A347270(A038722(n+1)))`
-/

namespace A288251.P8450467283680713118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A347270 (A038722 (n + 1)).toNat).toNat

end

end A288251.P8450467283680713118

/-! ## A288251.P9379706962254074926

`A347270(A038722(n+1)+A003057(n+2))`
-/

namespace A288251.P9379706962254074926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A038722 (n + 1) + A003057 (n + 2)).toNat

end

end A288251.P9379706962254074926

/-! ## A288251.P17443424024832448457

`A347270(A038722(n+1)+A003056(n)+2)`
-/

namespace A288251.P17443424024832448457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A038722 (n + 1) + (A003056 n + 2)).toNat

end

end A288251.P17443424024832448457

/-!
# A288253: Number of heptagons that can be formed with perimeter n.

The programs for A288253, there is no canonical definition to state claims against.
-/

/-! ## A288253.P2639586395097308994

`A124278(A155212(n)+15)`
-/

namespace A288253.P2639586395097308994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A155212 n + 15).toNat

end

end A288253.P2639586395097308994

/-! ## A288253.P11601174157073791001

`A124278(A056000(n)+17)`
-/

namespace A288253.P11601174157073791001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A056000 n + 17).toNat

end

end A288253.P11601174157073791001

/-! ## A288253.P12777189763650344245

`A124278(A167499(n+3)+2)`
-/

namespace A288253.P12777189763650344245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A167499 (n + 3) + 2).toNat

end

end A288253.P12777189763650344245

/-! ## A288253.P17715198704005387552

`A124278(A167614(n+3)+4)`
-/

namespace A288253.P17715198704005387552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A167614 (n + 3) + 4).toNat

end

end A288253.P17715198704005387552

/-! ## A288253.P797042018264202549

`A124278(A000124(n+4)+6)`
-/

namespace A288253.P797042018264202549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A000124 (n + 4) + 6).toNat

end

end A288253.P797042018264202549

/-! ## A288253.P1382145088199006256

`A124278(A000096(n+3)+8)`
-/

namespace A288253.P1382145088199006256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A000096 (n + 3) + 8).toNat

end

end A288253.P1382145088199006256

/-! ## A288253.P12867760712691485581

`A124278(A000217(n+4)+7)`
-/

namespace A288253.P12867760712691485581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A000217 (n + 4) + 7).toNat

end

end A288253.P12867760712691485581

/-! ## A288253.P6497915304554048468

`A124278(A027379(n+2)+10)`
-/

namespace A288253.P6497915304554048468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A027379 (n + 2) + 10).toNat

end

end A288253.P6497915304554048468

/-!
# A288254: Number of octagons that can be formed with perimeter n.

The programs for A288254, there is no canonical definition to state claims against.
-/

/-! ## A288254.P14151585608024521705

`A124278(∑[n+5]+18)`
-/

namespace A288254.P14151585608024521705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (∑ j ∈ Finset.range (n + 1), f1 j + 18)

end

end A288254.P14151585608024521705

/-! ## A288254.P1599925509483610876

`A023893(n)-A185284(A007090(n))`
-/

namespace A288254.P1599925509483610876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023893 n - A185284 (A007090 n).toNat

end

end A288254.P1599925509483610876

/-! ## A288254.P16731337976601484274

`∑[A023894(n)]-A025466(A001045(n))`
-/

namespace A288254.P16731337976601484274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025466 (A001045 n).toNat

end

end A288254.P16731337976601484274

/-! ## A288254.P11962613795298823963

`∑[A023894(n)]-A025469(A047031(n))`
-/

namespace A288254.P11962613795298823963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025469 (A047031 n).toNat

end

end A288254.P11962613795298823963

/-! ## A288254.P16617720819268843628

`A121373(A283742(n+1))+A023893(n)`
-/

namespace A288254.P16617720819268843628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A283742 (n + 1)).toNat + A023893 n

end

end A288254.P16617720819268843628

/-!
# A288255: Number of nonagons that can be formed with perimeter n.

The programs for A288255, there is no canonical definition to state claims against.
-/

/-! ## A288255.P12235550220557052240

`A124278(A167487(n+5)+2)`
-/

namespace A288255.P12235550220557052240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A167487 (n + 5) + 2).toNat

end

end A288255.P12235550220557052240

/-! ## A288255.P1820001475810728365

`A124278(A167499(n+5)+4)`
-/

namespace A288255.P1820001475810728365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A167499 (n + 5) + 4).toNat

end

end A288255.P1820001475810728365

/-! ## A288255.P5255625818750764109

`A124278(A000124(n+6)+8)`
-/

namespace A288255.P5255625818750764109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A000124 (n + 6) + 8).toNat

end

end A288255.P5255625818750764109

/-! ## A288255.P17715002809795355301

`A124278(A000096(n+5)+10)`
-/

namespace A288255.P17715002809795355301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A000096 (n + 5) + 10).toNat

end

end A288255.P17715002809795355301

/-! ## A288255.P9429744918669347154

`A124278(A000217(n+6)+9)`
-/

namespace A288255.P9429744918669347154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A000217 (n + 6) + 9).toNat

end

end A288255.P9429744918669347154

/-! ## A288255.P3018846566317721060

`A124278(A166136(n+4)+n+9)`
-/

namespace A288255.P3018846566317721060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A166136 (n + 4) + (n + 9 : ℤ)).toNat

end

end A288255.P3018846566317721060

/-! ## A288255.P5523121542590601913

`A124278(A155212(n+4)+1-A004273(n))`
-/

namespace A288255.P5523121542590601913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A155212 (n + 4) + 1 - A004273 n).toNat

end

end A288255.P5523121542590601913

/-!
# A288256: Number of decagons that can be formed with perimeter n.

The programs for A288256, there is no canonical definition to state claims against.
-/

/-! ## A288256.P17047984044117310377

`A124278(∑[n+7]+31)`
-/

namespace A288256.P17047984044117310377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (∑ j ∈ Finset.range (n + 1), f1 j + 31)

end

end A288256.P17047984044117310377

/-! ## A288256.P5349001718776551236

`A333193(n)-A185284(A056827(n))`
-/

namespace A288256.P5349001718776551236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333193 n - A185284 (A056827 n).toNat

end

end A288256.P5349001718776551236

/-! ## A288256.P1581345177882225834

`A333193(n)-A185284(A146237(n+1))`
-/

namespace A288256.P1581345177882225834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333193 n - A185284 (A146237 (n + 1)).toNat

end

end A288256.P1581345177882225834

/-! ## A288256.P9412783162211806355

`A281744(n*A001316(2^n))-A002265(A326589(n))`
-/

namespace A288256.P9412783162211806355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281744 ((n : ℤ) * A001316 (2 ^ n)).toNat - A002265 (A326589 n).toNat

end

end A288256.P9412783162211806355

/-! ## A288256.P10737202004804174229

`A281744(2*n)^A058276(n)!-A026816(A111581(n))`
-/

namespace A288256.P10737202004804174229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281744 (2 * n) ^ Nat.factorial (A058276 n).toNat - A026816 (A111581 n).toNat

end

end A288256.P10737202004804174229

/-!
# A288257: Fixed point of the mapping 00->0010, 1->100, starting with 00.

The programs for A288257, there is no canonical definition to state claims against.
-/

/-! ## A288257.P12535786241205318025

`char[A288259(n+1)-1]`
-/

namespace A288257.P12535786241205318025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288257.P12535786241205318025

/-! ## A288257.P8199583771716463903

`char[comp[A288258(n+1)-1]]`
-/

namespace A288257.P8199583771716463903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288258 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288257.P8199583771716463903

/-! ## A288257.P12360541891551628051

`A288258(∑[char[A288258(n+1)]]+1)%(n+1)`
-/

namespace A288257.P12360541891551628051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288258 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (n + 1 : ℤ)

end

end A288257.P12360541891551628051

/-! ## A288257.P14469412576855406714

`A078442(Δ[char[A288258(n+1)]]+20)%2`
-/

namespace A288257.P14469412576855406714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288258 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 20).toNat) 2

end

end A288257.P14469412576855406714

/-! ## A288257.P9176415345345917834

`A000002(Δ[comp[A288259(n+1)+n]])-1`
-/

namespace A288257.P9176415345345917834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288259 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A288257.P9176415345345917834

/-!
# A288258: Positions of 0 in A288257; complement of A288259.

The programs for A288258, there is no canonical definition to state claims against.
-/

/-! ## A288258.P12461598539441947176

`comp[A288259(n+1)-1]+1`
-/

namespace A288258.P12461598539441947176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288258.P12461598539441947176

/-! ## A288258.P5430306246330414393

`a(n-1)+A288257(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288258.P5430306246330414393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288257 (a (n - 1) + 1).toNat + 1)

end

end A288258.P5430306246330414393

/-! ## A288258.P4875468680477377169

`record[A292266(n)+A288257(A292266(n))]`
-/

namespace A288258.P4875468680477377169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292266 n + A288257 (A292266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288258.P4875468680477377169

/-! ## A288258.P15694640353558993330

`record[A344593(n+1)+A288257(A344593(n+1))]`
-/

namespace A288258.P15694640353558993330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344593 (n + 1) + A288257 (A344593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288258.P15694640353558993330

/-! ## A288258.P3566167912476145120

`eq[0, A288257(n+1)]+1`
-/

namespace A288258.P3566167912476145120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288258.P3566167912476145120

/-! ## A288258.P6149028830819147384

`record[A289626(n+1)+A288257(A289626(n+1))]`
-/

namespace A288258.P6149028830819147384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (n + 1) + A288257 (A289626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288258.P6149028830819147384

/-! ## A288258.P10510450977024391044

`record[A288257(A119348(n+1))+A119348(n+1)]`
-/

namespace A288258.P10510450977024391044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (A119348 (n + 1)).toNat + A119348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288258.P10510450977024391044

/-! ## A288258.P5115335493992386452

`record[A216455(n+1)-A288257(n+1)]`
-/

namespace A288258.P5115335493992386452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (n + 1) - A288257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288258.P5115335493992386452

/-!
# A288259: Positions of 1 in A288257; complement of A288258.

The programs for A288259, there is no canonical definition to state claims against.
-/

/-! ## A288259.P18299254617313493482

`lt[0, A288257(n+1)]+1`
-/

namespace A288259.P18299254617313493482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288259.P18299254617313493482

/-! ## A288259.P18270260540310374875

`A020725(eq[1, A288257(n+1)])`
-/

namespace A288259.P18270260540310374875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288259.P18270260540310374875

/-! ## A288259.P12094547452640867340

`record[A000720(3*(n+2))*A288257(A000720(3*(n+2)))]`
-/

namespace A288259.P12094547452640867340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 2)) * A288257 (A000720 (3 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288259.P12094547452640867340

/-! ## A288259.P4165243318726645466

`eq[1, A288257(A123108(2*n))]`
-/

namespace A288259.P4165243318726645466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288259.P4165243318726645466

/-! ## A288259.P6060231774673611380

`eq[A006519(2*n+1), A288257(n+1)]+1`
-/

namespace A288259.P6060231774673611380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288259.P6060231774673611380

/-! ## A288259.P8812572836877365638

`eq[A112622(A015919(n+1)), A288257(n+1)]+1`
-/

namespace A288259.P8812572836877365638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112622 (A015919 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288259.P8812572836877365638

/-! ## A288259.P11260287923358473403

`eq[1, A288257(A233583(n+1))]`
-/

namespace A288259.P11260287923358473403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288259.P11260287923358473403

/-!
# A288260: a(n) = 2*a(n-1) + 2*a(n-3) - 3*a(n-4), where a(0) = 2, a(1) = 4, a(2) = 8, a(3) = 16.

The programs for A288260, the canonical program `A288260.P3102795014188426122` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288260 has offset 0).

The definition of A288260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-3)-3*a(n-4)` (program `A288260.P3102795014188426122`, by `A288260.P3102795014188426122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288260.P3102795014188426122

`2*a(n-1)+2*a(n-3)-3*a(n-4)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288260

/-- `2*a(n-1)+2*a(n-3)-3*a(n-4)` -/
def P3102795014188426122.Spec : Prop :=
  ∀ n, P3102795014188426122.a n = A288260 n

theorem P3102795014188426122.correct : P3102795014188426122.Spec := by
  intro n
  simp only [A288260]

end A288260

/-! ## A288260.P9168188903427707345

`ogf((2-4x^3)/(1-2x-2x^3+3x^4))`
-/

namespace A288260.P9168188903427707345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 0, -4] [1, -2, 0, -2, 3] n

end

end A288260.P9168188903427707345

namespace A288260

/-- `ogf((2-4x^3)/(1-2x-2x^3+3x^4))` -/
def P9168188903427707345.Spec : Prop :=
  ∀ n, P9168188903427707345.a n = A288260 n

end A288260

/-! ## A288260.P840345668404753320

`round((A247594(n+1)+A247594(n))/2)`
-/

namespace A288260.P840345668404753320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A247594 (n + 1) + A247594 n : ℚ) / 2)

end

end A288260.P840345668404753320

namespace A288260

/-- `round((A247594(n+1)+A247594(n))/2)` -/
def P840345668404753320.Spec : Prop :=
  ∀ n, P840345668404753320.a n = A288260 n

end A288260

/-! ## A288260.P5210313615580775984

`round(Δ[A266367(n+1)/4])`
-/

namespace A288260.P5210313615580775984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266367 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A288260.P5210313615580775984

namespace A288260

/-- `round(Δ[A266367(n+1)/4])` -/
def P5210313615580775984.Spec : Prop :=
  ∀ n, P5210313615580775984.a n = A288260 n

end A288260

/-! ## A288260.P13912695649677527896

`floor(Δ[A266367(n-log2(1/2))/4])+1`
-/

namespace A288260.P13912695649677527896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266367 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + 1

end

end A288260.P13912695649677527896

namespace A288260

/-- `floor(Δ[A266367(n-log2(1/2))/4])+1` -/
def P13912695649677527896.Spec : Prop :=
  ∀ n, P13912695649677527896.a n = A288260 n

end A288260

/-!
# A288261: Coefficients in expansion of E_6/E_4.

The programs for A288261, there is no canonical definition to state claims against.
-/

/-! ## A288261.P12715889168918224363

`A289141(∑[n])`
-/

namespace A288261.P12715889168918224363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288261.P12715889168918224363

/-! ## A288261.P75801573780067082

`A289141(A000217(n))^A178334(n)`
-/

namespace A288261.P75801573780067082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289141 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A288261.P75801573780067082

/-! ## A288261.P4430876825521447526

`A007318(C(n, 2))*A289141(A000217(n))`
-/

namespace A288261.P4430876825521447526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A289141 (A000217 n).toNat

end

end A288261.P4430876825521447526

/-! ## A288261.P7203317080054070266

`A289141(A000217(n))+A008683(lcm(4, n+1))`
-/

namespace A288261.P7203317080054070266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289141 (A000217 n).toNat + A008683 (Nat.lcm 4 (n + 1))

end

end A288261.P7203317080054070266

/-! ## A288261.P9342378604501032072

`A008683(A014963(n+2))²*A289141(A000217(n))`
-/

namespace A288261.P9342378604501032072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 2)).toNat ^ 2 * A289141 (A000217 n).toNat

end

end A288261.P9342378604501032072

/-!
# A288265: Triangle read by rows: T(n,k) is the number of labeled connected planar graphs on n vertices and k edges.

The programs for A288265, there is no canonical definition to state claims against.
-/

/-! ## A288265.P13008162355623061411

`A123527(A324109(n+1))%A166945(2*n+3)`
-/

namespace A288265.P13008162355623061411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123527 (A324109 (n + 1)).toNat) (A166945 (2 * n + 3))

end

end A288265.P13008162355623061411

/-!
# A288268: Expansion of e.g.f.: exp(Sum_{k>=1} (k-1)*x^k/k).

The programs for A288268, the canonical program `A288268.P12964980729197749223` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288268 has offset 0).

The definition of A288268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288268.P12964980729197749223

`2*(n-1)*a(n-1)-(n²-4*n+3)*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288268

/-- `2*(n-1)*a(n-1)-(n²-4*n+3)*a(n-2)` -/
def P12964980729197749223.Spec : Prop :=
  ∀ n, P12964980729197749223.a n = A288268 n

theorem P12964980729197749223.correct : P12964980729197749223.Spec := by
  intro n
  simp only [A288268]

end A288268

/-! ## A288268.P16209320548772798009

`A052852(abs(1-n))`
-/

namespace A288268.P16209320548772798009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 |1 - (n : ℤ)|.toNat

end

end A288268.P16209320548772798009

namespace A288268

/-- `A052852(abs(1-n))` -/
def P16209320548772798009.Spec : Prop :=
  ∀ n, P16209320548772798009.a n = A288268 n

end A288268

/-! ## A288268.P11933985774851486575

`lcm(1-n, A059110(A152947(n+1)))`
-/

namespace A288268.P11933985774851486575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (A059110 (A152947 (n + 1)).toNat)

end

end A288268.P11933985774851486575

namespace A288268

/-- `lcm(1-n, A059110(A152947(n+1)))` -/
def P11933985774851486575.Spec : Prop :=
  ∀ n, (P11933985774851486575.a n : ℤ) = A288268 n

end A288268

/-! ## A288268.P17363387231154384942

`A000262(n)%A006152(A000038(n)+n)`
-/

namespace A288268.P17363387231154384942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000262 n) (A006152 (A000038 n + (n : ℤ)).toNat)

end

end A288268.P17363387231154384942

namespace A288268

/-- `A000262(n)%A006152(A000038(n)+n)` -/
def P17363387231154384942.Spec : Prop :=
  ∀ n, P17363387231154384942.a n = A288268 n

end A288268

/-! ## A288268.P14459906367406471476

`A000262(n)+A300159(n)-A103194(n)`
-/

namespace A288268.P14459906367406471476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n + (A300159 n - A103194 n)

end

end A288268.P14459906367406471476

namespace A288268

/-- `A000262(n)+A300159(n)-A103194(n)` -/
def P14459906367406471476.Spec : Prop :=
  ∀ n, P14459906367406471476.a n = A288268 n

end A288268

/-! ## A288268.P13237998661181022658

`A059115(n)%A059115(abs(1-n))`
-/

namespace A288268.P13237998661181022658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059115 n) (A059115 |1 - (n : ℤ)|.toNat)

end

end A288268.P13237998661181022658

namespace A288268

/-- `A059115(n)%A059115(abs(1-n))` -/
def P13237998661181022658.Spec : Prop :=
  ∀ n, P13237998661181022658.a n = A288268 n

end A288268

/-!
# A288269: Expansion of e.g.f.: exp(Sum_{k>=1} (k-1)*k*x^k).

The programs for A288269, there is no canonical definition to state claims against.
-/

/-! ## A288269.P3640019205206217101

`A001096(n)!*A294780(n)`
-/

namespace A288269.P3640019205206217101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001096 n).toNat : ℤ) * A294780 n

end

end A288269.P3640019205206217101

/-! ## A288269.P15377610877402276537

`A298671(n)!*A232497(n)`
-/

namespace A288269.P15377610877402276537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A298671 n).toNat : ℤ) * A232497 n

end

end A288269.P15377610877402276537

/-!
# A288270: E.g.f.: exp(Sum_{k>=1} (k-1)^2*x^k).

The programs for A288270, there is no canonical definition to state claims against.
-/

/-! ## A288270.P10884958215499506052

`and(A002047(n), A048493(A354311(n)))`
-/

namespace A288270.P10884958215499506052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002047 n) (A048493 (A354311 n).toNat)

end

end A288270.P10884958215499506052

/-! ## A288270.P16361404019736335350

`lcm(A354319(n), A354364(A354299(n+1)))`
-/

namespace A288270.P16361404019736335350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A354319 n) (A354364 (A354299 (n + 1)).toNat)

end

end A288270.P16361404019736335350

/-!
# A288271: a(n) is the number of rooted maps with n edges and one face on an orientable surface of genus 4.

The programs for A288271, there is no canonical definition to state claims against.
-/

/-! ## A288271.P17466026456569654408

`A269924(∑[n]+8)`
-/

namespace A288271.P17466026456569654408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A288271.P17466026456569654408

/-! ## A288271.P7028563412274301627

`record[root(A269924(n+8), A001497(n))]`
-/

namespace A288271.P7028563412274301627
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269924 (n + 8) : ℝ) ^ (1 / (A001497 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288271.P7028563412274301627

/-! ## A288271.P18403132505947989276

`record[A269924(n+8)/A174150(n)]`
-/

namespace A288271.P18403132505947989276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269924 (n + 8) : ℚ) / (A174150 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288271.P18403132505947989276

/-! ## A288271.P14720423459651174733

`record[A269924(n+8)/A334394(n)]`
-/

namespace A288271.P14720423459651174733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269924 (n + 8) : ℚ) / (A334394 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288271.P14720423459651174733

/-! ## A288271.P2669689856622700083

`record[A269924(n+8)/A158116(n)]`
-/

namespace A288271.P2669689856622700083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269924 (n + 8) : ℚ) / (A158116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288271.P2669689856622700083

/-!
# A288272: a(n) is the number of rooted maps with n edges and 2 faces on an orientable surface of genus 4.

The programs for A288272, there is no canonical definition to state claims against.
-/

/-! ## A288272.P13422812784566607931

`A269924(A000096(n)+10)`
-/

namespace A288272.P13422812784566607931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A000096 n + 10).toNat

end

end A288272.P13422812784566607931

/-! ## A288272.P887431250688697546

`A269924(A166136(n+1))`
-/

namespace A288272.P887431250688697546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A166136 (n + 1)).toNat

end

end A288272.P887431250688697546

/-! ## A288272.P810144076352351491

`A269924(A055998(n)+9)`
-/

namespace A288272.P810144076352351491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A055998 n + 9).toNat

end

end A288272.P810144076352351491

/-! ## A288272.P1965513791470346493

`A269924(A046691(n)+10)`
-/

namespace A288272.P1965513791470346493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A046691 n + 10).toNat

end

end A288272.P1965513791470346493

/-! ## A288272.P12671650015827311251

`A269924(A167614(n+1)+3)`
-/

namespace A288272.P12671650015827311251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A167614 (n + 1) + 3).toNat

end

end A288272.P12671650015827311251

/-!
# A288273: a(n) is the number of rooted maps with n edges and 3 faces on an orientable surface of genus 4.

The programs for A288273, there is no canonical definition to state claims against.
-/

/-! ## A288273.P12554188838137752607

`A269924(A046691(n)+14)`
-/

namespace A288273.P12554188838137752607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A046691 n + 14).toNat

end

end A288273.P12554188838137752607

/-! ## A288273.P2458547597267170717

`A269924(A167614(n+1)+7)`
-/

namespace A288273.P2458547597267170717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A167614 (n + 1) + 7).toNat

end

end A288273.P2458547597267170717

/-! ## A288273.P11817884069398112361

`A269924(A052905(n)+10)`
-/

namespace A288273.P11817884069398112361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A052905 n + 10).toNat

end

end A288273.P11817884069398112361

/-! ## A288273.P753752968685295424

`A269924(A166136(n+2)-1)`
-/

namespace A288273.P753752968685295424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A166136 (n + 2) - 1).toNat

end

end A288273.P753752968685295424

/-!
# A288274: 

The programs for A288274, there is no canonical definition to state claims against.
-/

/-! ## A288274.P12753779009124854888

`A269924(A000217(n+6)-6-A005408(n))`
-/

namespace A288274.P12753779009124854888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269924 (A000217 (n + 6) - 6 - A005408 n).toNat

end

end A288274.P12753779009124854888

/-!
# A288281: a(n) is the number of rooted maps with n edges and one face on an orientable surface of genus 5.

The programs for A288281, there is no canonical definition to state claims against.
-/

/-! ## A288281.P9665981943693786469

`A269925(∑[n])`
-/

namespace A288281.P9665981943693786469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A288281.P9665981943693786469

/-! ## A288281.P4426231247312202210

`record[A269925(A175631(n+1))]`
-/

namespace A288281.P4426231247312202210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 ((A175631 (n + 1)).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288281.P4426231247312202210

/-! ## A288281.P16058662003455991437

`record[root(A269925(n), A001497(n))]`
-/

namespace A288281.P16058662003455991437
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269925 (n + 10) : ℝ) ^ (1 / (A001497 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288281.P16058662003455991437

/-! ## A288281.P8792467606548091973

`record[A269925(n)/A174150(n)]`
-/

namespace A288281.P8792467606548091973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269925 (n + 10) : ℚ) / (A174150 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288281.P8792467606548091973

/-! ## A288281.P3737466271376310764

`record[A269925(n)/A158116(n)]`
-/

namespace A288281.P3737466271376310764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269925 (n + 10) : ℚ) / (A158116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288281.P3737466271376310764

/-!
# A288282: 

The programs for A288282, there is no canonical definition to state claims against.
-/

/-! ## A288282.P14121134250326757268

`A269925(∑[n+1]+1)`
-/

namespace A288282.P14121134250326757268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + 10)

end

end A288282.P14121134250326757268

/-!
# A288283: 

The programs for A288283, there is no canonical definition to state claims against.
-/

/-! ## A288283.P1524744334417419329

`A269925(∑[n+3])`
-/

namespace A288283.P1524744334417419329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A288283.P1524744334417419329

/-!
# A288284: 

The programs for A288284, there is no canonical definition to state claims against.
-/

/-! ## A288284.P5620297891053983045

`A269925(eq[3, A002262(n)])`
-/

namespace A288284.P5620297891053983045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A288284.P5620297891053983045

/-! ## A288284.P15119069217572456265

`A269925(A052905(n+1)+1)`
-/

namespace A288284.P15119069217572456265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 ((A052905 (n + 1) + 1).toNat + 10)

end

end A288284.P15119069217572456265

/-! ## A288284.P805471104832350507

`A269925(A000096(n+3)-n)`
-/

namespace A288284.P805471104832350507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 ((A000096 (n + 3) - (n : ℤ)).toNat + 10)

end

end A288284.P805471104832350507

/-! ## A288284.P6773897565374148966

`A269925(eq[n+2, A209578(n+2)])`
-/

namespace A288284.P6773897565374148966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A288284.P6773897565374148966

/-!
# A288287: 

The programs for A288287, there is no canonical definition to state claims against.
-/

/-! ## A288287.P9261379257042163492

`A269925(eq[6, A002262(n)])`
-/

namespace A288287.P9261379257042163492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A288287.P9261379257042163492

/-! ## A288287.P11586719263271733006

`A269925(eq[4, A092921(n+2)])`
-/

namespace A288287.P11586719263271733006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A288287.P11586719263271733006

/-!
# A288292: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A288292, there is no canonical definition to state claims against.
-/

/-! ## A288292.P11867477000639296773

`A007088(A288294(n))`
-/

namespace A288292.P11867477000639296773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288294 n).toNat

end

end A288292.P11867477000639296773

/-! ## A288292.P15403240028772975531

`A185544(2*A288294(n))`
-/

namespace A288292.P15403240028772975531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288294 n).toNat

end

end A288292.P15403240028772975531

/-!
# A288293: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A288293, there is no canonical definition to state claims against.
-/

/-! ## A288293.P16824918667707788435

`A007088(A288295(n))`
-/

namespace A288293.P16824918667707788435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288295 n).toNat

end

end A288293.P16824918667707788435

/-! ## A288293.P8398289303242161271

`A185544(2*A288295(n))`
-/

namespace A288293.P8398289303242161271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288295 n).toNat

end

end A288293.P8398289303242161271

/-!
# A288294: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A288294, there is no canonical definition to state claims against.
-/

/-! ## A288294.P17210644450876522313

`A284041(A185264(A000124(n))+n)`
-/

namespace A288294.P17210644450876522313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284041 (A185264 (A000124 n).toNat + (n : ℤ)).toNat

end

end A288294.P17210644450876522313

/-! ## A288294.P1296002908388445801

`A284041(A184954(A184954(n))+n)`
-/

namespace A288294.P1296002908388445801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284041 (A184954 (A184954 n).toNat + (n : ℤ)).toNat

end

end A288294.P1296002908388445801

/-!
# A288296: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A288296, there is no canonical definition to state claims against.
-/

/-! ## A288296.P2790531128201132226

`A007088(A288298(n))`
-/

namespace A288296.P2790531128201132226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288298 n).toNat

end

end A288296.P2790531128201132226

/-! ## A288296.P5878824731591217950

`A185544(2*A288298(n))`
-/

namespace A288296.P5878824731591217950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288298 n).toNat

end

end A288296.P5878824731591217950

/-! ## A288296.P2431182912858138432

`A185544(A288298(n)+A288298(n))`
-/

namespace A288296.P2431182912858138432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288298 n + A288298 n).toNat

end

end A288296.P2431182912858138432

/-!
# A288297: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A288297, there is no canonical definition to state claims against.
-/

/-! ## A288297.P17245861183853595361

`A007088(A288299(n))`
-/

namespace A288297.P17245861183853595361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288299 n).toNat

end

end A288297.P17245861183853595361

/-! ## A288297.P7919955063925663030

`A185544(2*A288299(n))`
-/

namespace A288297.P7919955063925663030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288299 n).toNat

end

end A288297.P7919955063925663030

/-! ## A288297.P7412791014424214967

`A185544(A288299(n)+A288299(n))`
-/

namespace A288297.P7412791014424214967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288299 n + A288299 n).toNat

end

end A288297.P7412791014424214967

/-!
# A288298: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A288298, there is no canonical definition to state claims against.
-/

/-! ## A288298.P12926999221850832503

`or(A035182(A008514(n)), A287716(n))`
-/

namespace A288298.P12926999221850832503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035182 (A008514 n).toNat) (A287716 n)

end

end A288298.P12926999221850832503

/-! ## A288298.P11160535684605642176

`or(A060564(A060579(n)), A286405(n))`
-/

namespace A288298.P11160535684605642176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060564 (A060579 n).toNat) (A286405 n)

end

end A288298.P11160535684605642176

/-! ## A288298.P14993022639603934357

`or(A060564(A060579(n)), A286700(n))`
-/

namespace A288298.P14993022639603934357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060564 (A060579 n).toNat) (A286700 n)

end

end A288298.P14993022639603934357

