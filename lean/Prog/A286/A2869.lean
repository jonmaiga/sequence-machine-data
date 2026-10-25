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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A286900: Sum of the numbers from n to nextprime(n).

The programs for A286900, the canonical program `A286900.P7686726523732709747` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286900 has offset 1).

The definition of A286900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286900.P7686726523732709747

`A000217(A151800(n+1))-∑[n]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286900

/-- `A000217(A151800(n+1))-∑[n]` -/
def P7686726523732709747.Spec : Prop :=
  ∀ n, P7686726523732709747.a n = A286900 (n + 1)

theorem P7686726523732709747.correct : P7686726523732709747.Spec := by
  intro n
  simp only [A286900, Nat.add_sub_cancel]

end A286900

/-! ## A286900.P17063666725203418565

`A034953(A000720(n+1)+1)-A000217(n)`
-/

namespace A286900.P17063666725203418565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (A000720 (n + 1) + 1).toNat - A000217 n

end

end A286900.P17063666725203418565

namespace A286900

/-- `A034953(A000720(n+1)+1)-A000217(n)` -/
def P17063666725203418565.Spec : Prop :=
  ∀ n, P17063666725203418565.a n = A286900 (n + 1)

end A286900

/-! ## A286900.P11389122120884452596

`A000217(A007918(n+2))-∑[n]`
-/

namespace A286900.P11389122120884452596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007918 (n + 2)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A286900.P11389122120884452596

namespace A286900

/-- `A000217(A007918(n+2))-∑[n]` -/
def P11389122120884452596.Spec : Prop :=
  ∀ n, P11389122120884452596.a n = A286900 (n + 1)

end A286900

/-! ## A286900.P3016728906559050731

`A000217(A013632(n+1)+n+1)-∑[n]`
-/

namespace A286900.P3016728906559050731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A013632 (n + 1) + (n + 1 : ℤ)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A286900.P3016728906559050731

namespace A286900

/-- `A000217(A013632(n+1)+n+1)-∑[n]` -/
def P3016728906559050731.Spec : Prop :=
  ∀ n, P3016728906559050731.a n = A286900 (n + 1)

end A286900

/-! ## A286900.P16570614932493069026

`A000124(A151800(n+1))-A000124(n)`
-/

namespace A286900.P16570614932493069026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A151800 (n + 1)).toNat - A000124 n

end

end A286900.P16570614932493069026

namespace A286900

/-- `A000124(A151800(n+1))-A000124(n)` -/
def P16570614932493069026.Spec : Prop :=
  ∀ n, P16570614932493069026.a n = A286900 (n + 1)

end A286900

/-! ## A286900.P10386743776292412809

`A000124(A159477(n+2))-A000124(n)`
-/

namespace A286900.P10386743776292412809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A159477 (n + 2)).toNat - A000124 n

end

end A286900.P10386743776292412809

namespace A286900

/-- `A000124(A159477(n+2))-A000124(n)` -/
def P10386743776292412809.Spec : Prop :=
  ∀ n, P10386743776292412809.a n = A286900 (n + 1)

end A286900

/-! ## A286900.P10829760313397942179

`A000217(A159477(n+2))-A000217(n)`
-/

namespace A286900.P10829760313397942179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A159477 (n + 2)).toNat - A000217 n

end

end A286900.P10829760313397942179

namespace A286900

/-- `A000217(A159477(n+2))-A000217(n)` -/
def P10829760313397942179.Spec : Prop :=
  ∀ n, P10829760313397942179.a n = A286900 (n + 1)

end A286900

/-!
# A286901: Sum of the numbers from prevprime(n) to n.

The programs for A286901, the canonical program `A286901.P11134869275173269859` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286901 has offset 3).

The definition of A286901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286901.P11134869275173269859

`A000217(n+3)-A000217(A070320(n+2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286901

/-- `A000217(n+3)-A000217(A070320(n+2))` -/
def P11134869275173269859.Spec : Prop :=
  ∀ n, P11134869275173269859.a n = A286901 (n + 3)

theorem P11134869275173269859.correct : P11134869275173269859.Spec := by
  intro n
  simp only [A286901, Nat.add_sub_cancel]

end A286901

/-! ## A286901.P99638719245248500

`A161680(n+4)-A161680(A007917(n+2))`
-/

namespace A286901.P99638719245248500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 4) - A161680 (A007917 (n + 2)).toNat

end

end A286901.P99638719245248500

namespace A286901

/-- `A161680(n+4)-A161680(A007917(n+2))` -/
def P99638719245248500.Spec : Prop :=
  ∀ n, P99638719245248500.a n = A286901 (n + 3)

end A286901

/-! ## A286901.P3759828249027255857

`A080956(A136548(n+3))-A080956(n+4)`
-/

namespace A286901.P3759828249027255857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (A136548 (n + 3)).toNat - A080956 (n + 4)

end

end A286901.P3759828249027255857

namespace A286901

/-- `A080956(A136548(n+3))-A080956(n+4)` -/
def P3759828249027255857.Spec : Prop :=
  ∀ n, P3759828249027255857.a n = A286901 (n + 3)

end A286901

/-! ## A286901.P14398121490204328303

`A161680(n+4)-A161680(A136548(n+3))`
-/

namespace A286901.P14398121490204328303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 4) - A161680 (A136548 (n + 3)).toNat

end

end A286901.P14398121490204328303

namespace A286901

/-- `A161680(n+4)-A161680(A136548(n+3))` -/
def P14398121490204328303.Spec : Prop :=
  ∀ n, P14398121490204328303.a n = A286901 (n + 3)

end A286901

/-! ## A286901.P6342181795892474244

`A238531(n+4)-A238531(A136548(n+3))`
-/

namespace A286901.P6342181795892474244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (n + 4) - A238531 (A136548 (n + 3)).toNat

end

end A286901.P6342181795892474244

namespace A286901

/-- `A238531(n+4)-A238531(A136548(n+3))` -/
def P6342181795892474244.Spec : Prop :=
  ∀ n, P6342181795892474244.a n = A286901 (n + 3)

end A286901

/-! ## A286901.P17127703901051153389

`A141419(A161758(n+5)+A034856(n+1))`
-/

namespace A286901.P17127703901051153389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (A161758 (n + 5) + A034856 (n + 1)).toNat

end

end A286901.P17127703901051153389

namespace A286901

/-- `A141419(A161758(n+5)+A034856(n+1))` -/
def P17127703901051153389.Spec : Prop :=
  ∀ n, P17127703901051153389.a n = A286901 (n + 3)

end A286901

/-! ## A286901.P1471701151579030650

`A049777(A013635(n+3)+A000096(n))`
-/

namespace A286901.P1471701151579030650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A013635 (n + 3) + A000096 n).toNat

end

end A286901.P1471701151579030650

namespace A286901

/-- `A049777(A013635(n+3)+A000096(n))` -/
def P1471701151579030650.Spec : Prop :=
  ∀ n, P1471701151579030650.a n = A286901 (n + 3)

end A286901

/-!
# A286902: a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(n)=5*a(n-5)+4*a(n-4)+3*a(n-3)+2*a(n-2)+a(n-1).

The programs for A286902, the canonical program `A286902.P15195752400212613195` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286902 has offset 1).

The definition of A286902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-5)+4*a(n-4)+3*a(n-3)+2*a(n-2)+a(n-1)` (program `A286902.P15195752400212613195`, by `A286902.P15195752400212613195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286902.P15195752400212613195

`5*a(n-5)+4*a(n-4)+3*a(n-3)+2*a(n-2)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286902

/-- `5*a(n-5)+4*a(n-4)+3*a(n-3)+2*a(n-2)+a(n-1)` -/
def P15195752400212613195.Spec : Prop :=
  ∀ n, (P15195752400212613195.a n : ℤ) = A286902 (n + 1)

theorem P15195752400212613195.correct : P15195752400212613195.Spec := by
  intro n
  simp only [A286902, Nat.add_sub_cancel]

end A286902

/-!
# A286903: {0->00}-transform of the Sturmian word A080764.

The programs for A286903, the canonical program `A286903.P10980288912855720806` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286903 has offset 1).

The definition of A286903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286903.P10980288912855720806

`char[A286905(n+1)-1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286903

/-- `char[A286905(n+1)-1]` -/
def P10980288912855720806.Spec : Prop :=
  ∀ n, (P10980288912855720806.a n : ℤ) = A286903 (n + 1)

theorem P10980288912855720806.correct : P10980288912855720806.Spec := by
  intro n
  simp only [A286903, Nat.add_sub_cancel]

end A286903

/-! ## A286903.P11677344031341146854

`A286922(a(n-1)+n)` with `a(0)=1`
-/

namespace A286903.P11677344031341146854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286922 (a (n - 1) + (n : ℤ)).toNat

end

end A286903.P11677344031341146854

namespace A286903

/-- `A286922(a(n-1)+n)` -/
def P11677344031341146854.Spec : Prop :=
  ∀ n, P11677344031341146854.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P2218518005199955068

`A286802(n+1)-A286991(n+1)`
-/

namespace A286903.P2218518005199955068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1) - A286991 (n + 1)

end

end A286903.P2218518005199955068

namespace A286903

/-- `A286802(n+1)-A286991(n+1)` -/
def P2218518005199955068.Spec : Prop :=
  ∀ n, P2218518005199955068.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P7618862166863368474

`and(A286908(n+1), A286922(n+1))`
-/

namespace A286903.P7618862166863368474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286908 (n + 1)) (A286922 (n + 1))

end

end A286903.P7618862166863368474

namespace A286903

/-- `and(A286908(n+1), A286922(n+1))` -/
def P7618862166863368474.Spec : Prop :=
  ∀ n, P7618862166863368474.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P466096552679429281

`log2(Δ[A286908(n+1)])`
-/

namespace A286903.P466096552679429281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286908 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A286903.P466096552679429281

namespace A286903

/-- `log2(Δ[A286908(n+1)])` -/
def P466096552679429281.Spec : Prop :=
  ∀ n, P466096552679429281.a n = (A286903 (n + 1) : ℝ)

end A286903

/-! ## A286903.P5704216273684341947

`A159684(A187970(n+1))`
-/

namespace A286903.P5704216273684341947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A187970 (n + 1)).toNat

end

end A286903.P5704216273684341947

namespace A286903

/-- `A159684(A187970(n+1))` -/
def P5704216273684341947.Spec : Prop :=
  ∀ n, P5704216273684341947.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P8775045305028992170

`A159684(A286693(n+1)-(n+1))`
-/

namespace A286903.P8775045305028992170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A286693 (n + 1) - (n + 1 : ℤ)).toNat

end

end A286903.P8775045305028992170

namespace A286903

/-- `A159684(A286693(n+1)-(n+1))` -/
def P8775045305028992170.Spec : Prop :=
  ∀ n, P8775045305028992170.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P18172858854815663041

`A159684(A286991(n+1)-(n+1))`
-/

namespace A286903.P18172858854815663041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A286991 (n + 1) - (n + 1 : ℤ)).toNat

end

end A286903.P18172858854815663041

namespace A286903

/-- `A159684(A286991(n+1)-(n+1))` -/
def P18172858854815663041.Spec : Prop :=
  ∀ n, P18172858854815663041.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P18236063834273245216

`A286726(A286908(n+2)-2)`
-/

namespace A286903.P18236063834273245216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A286908 (n + 2) - 2).toNat

end

end A286903.P18236063834273245216

namespace A286903

/-- `A286726(A286908(n+2)-2)` -/
def P18236063834273245216.Spec : Prop :=
  ∀ n, P18236063834273245216.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P14516145576558760356

`A286907(A286908(n+1)+1)`
-/

namespace A286903.P14516145576558760356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286907 (A286908 (n + 1) + 1).toNat

end

end A286903.P14516145576558760356

namespace A286903

/-- `A286907(A286908(n+1)+1)` -/
def P14516145576558760356.Spec : Prop :=
  ∀ n, P14516145576558760356.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P2922735103890605037

`A286990(A286802(n+1)-2)`
-/

namespace A286903.P2922735103890605037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (A286802 (n + 1) - 2).toNat

end

end A286903.P2922735103890605037

namespace A286903

/-- `A286990(A286802(n+1)-2)` -/
def P2922735103890605037.Spec : Prop :=
  ∀ n, P2922735103890605037.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P14290269151561351301

`A286990(A286802(n+1))`
-/

namespace A286903.P14290269151561351301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (A286802 (n + 1)).toNat

end

end A286903.P14290269151561351301

namespace A286903

/-- `A286990(A286802(n+1))` -/
def P14290269151561351301.Spec : Prop :=
  ∀ n, P14290269151561351301.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P17740400532771450551

`A286801(A286991(n+1))`
-/

namespace A286903.P17740400532771450551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286801 (A286991 (n + 1)).toNat

end

end A286903.P17740400532771450551

namespace A286903

/-- `A286801(A286991(n+1))` -/
def P17740400532771450551.Spec : Prop :=
  ∀ n, P17740400532771450551.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P16561640246484098861

`A159684(A001952(A286693(n+1)-n))`
-/

namespace A286903.P16561640246484098861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A001952 (A286693 (n + 1) - (n : ℤ)).toNat).toNat

end

end A286903.P16561640246484098861

namespace A286903

/-- `A159684(A001952(A286693(n+1)-n))` -/
def P16561640246484098861.Spec : Prop :=
  ∀ n, P16561640246484098861.a n = A286903 (n + 1)

end A286903

/-! ## A286903.P767197371629670008

`A131532(2*A286991(n+1))`
-/

namespace A286903.P767197371629670008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131532 (2 * A286991 (n + 1)).toNat

end

end A286903.P767197371629670008

namespace A286903

/-- `A131532(2*A286991(n+1))` -/
def P767197371629670008.Spec : Prop :=
  ∀ n, P767197371629670008.a n = A286903 (n + 1)

end A286903

/-!
# A286904: Positions of 0 in A286903; complement of A286905.

The programs for A286904, the canonical program `A286904.P1062189813046643830` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286904 has offset 1).

The definition of A286904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286904.P16459276257338164861

`comp[2*floor(n*sqrt(2))-n]`
-/

namespace A286904.P16459276257338164861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286904.P16459276257338164861

namespace A286904

/-- `comp[2*floor(n*sqrt(2))-n]` -/
def P16459276257338164861.Spec : Prop :=
  ∀ n, (P16459276257338164861.a n : ℤ) = A286904 (n + 1)

end A286904

/-! ## A286904.P18146469714595271806

`A080754(∑[char[2*n]])+n`
-/

namespace A286904.P18146469714595271806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A286904.P18146469714595271806

namespace A286904

/-- `A080754(∑[char[2*n]])+n` -/
def P18146469714595271806.Spec : Prop :=
  ∀ n, P18146469714595271806.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P14922688605895072857

`A188375(n+1)+∑[log2(gcd(2, n))]`
-/

namespace A286904.P14922688605895072857
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188375 (n + 1) : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286904.P14922688605895072857

namespace A286904

/-- `A188375(n+1)+∑[log2(gcd(2, n))]` -/
def P14922688605895072857.Spec : Prop :=
  ∀ n, P14922688605895072857.a n = (A286904 (n + 1) : ℝ)

end A286904

/-! ## A286904.P1062189813046643830

`A003151(floor(n/2)+1)+n+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286904

/-- `A003151(floor(n/2)+1)+n+1` -/
def P1062189813046643830.Spec : Prop :=
  ∀ n, P1062189813046643830.a n = A286904 (n + 1)

theorem P1062189813046643830.correct : P1062189813046643830.Spec := by
  intro n
  simp only [A286904, Nat.add_sub_cancel]

end A286904

/-! ## A286904.P7127836245193410797

`A003151(A008619(n))+1+n`
-/

namespace A286904.P7127836245193410797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A008619 n).toNat + 1 + (n : ℤ)

end

end A286904.P7127836245193410797

namespace A286904

/-- `A003151(A008619(n))+1+n` -/
def P7127836245193410797.Spec : Prop :=
  ∀ n, P7127836245193410797.a n = A286904 (n + 1)

theorem P7127836245193410797.correct : P7127836245193410797.Spec := by
  intro n
  simp only [A286904, Nat.add_sub_cancel, A286904.P7127836245193410797.a, A286904.P1062189813046643830.a, A003151, A003151.P5230567170801236160.a, A008619, A008619.P16053834178911111118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286904

/-! ## A286904.P2567588948200729013

`A188375(n+1)+A008619(n)`
-/

namespace A286904.P2567588948200729013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (n + 1) + A008619 n

end

end A286904.P2567588948200729013

namespace A286904

/-- `A188375(n+1)+A008619(n)` -/
def P2567588948200729013.Spec : Prop :=
  ∀ n, P2567588948200729013.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P14682234642626616321

`A188040(A052928(n)+2)+n`
-/

namespace A286904.P14682234642626616321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (A052928 n + 2).toNat + (n : ℤ)

end

end A286904.P14682234642626616321

namespace A286904

/-- `A188040(A052928(n)+2)+n` -/
def P14682234642626616321.Spec : Prop :=
  ∀ n, P14682234642626616321.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P16916883290489152521

`n+1+A003151(A110654(n+1))`
-/

namespace A286904.P16916883290489152521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003151 (A110654 (n + 1)).toNat

end

end A286904.P16916883290489152521

namespace A286904

/-- `n+1+A003151(A110654(n+1))` -/
def P16916883290489152521.Spec : Prop :=
  ∀ n, P16916883290489152521.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P15310186639575280308

`A187968(n+1)+2*A008619(n)`
-/

namespace A286904.P15310186639575280308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) + 2 * A008619 n

end

end A286904.P15310186639575280308

namespace A286904

/-- `A187968(n+1)+2*A008619(n)` -/
def P15310186639575280308.Spec : Prop :=
  ∀ n, P15310186639575280308.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P16633765024135834359

`∪[A187338(n+1), A286923(n+1)]`
-/

namespace A286904.P16633765024135834359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286904.P16633765024135834359

namespace A286904

/-- `∪[A187338(n+1), A286923(n+1)]` -/
def P16633765024135834359.Spec : Prop :=
  ∀ n, (P16633765024135834359.a n : ℤ) = A286904 (n + 1)

end A286904

/-! ## A286904.P6969930712725635931

`A003152(A188375(n+1)-n)+n`
-/

namespace A286904.P6969930712725635931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A188375 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A286904.P6969930712725635931

namespace A286904

/-- `A003152(A188375(n+1)-n)+n` -/
def P6969930712725635931.Spec : Prop :=
  ∀ n, P6969930712725635931.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P3391516570754848028

`A285074(A188375(n+1)-n)+n`
-/

namespace A286904.P3391516570754848028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (A188375 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A286904.P3391516570754848028

namespace A286904

/-- `A285074(A188375(n+1)-n)+n` -/
def P3391516570754848028.Spec : Prop :=
  ∀ n, P3391516570754848028.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P17954627595838388793

`A285077(A188375(n+1)-n)+n`
-/

namespace A286904.P17954627595838388793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (A188375 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A286904.P17954627595838388793

namespace A286904

/-- `A285077(A188375(n+1)-n)+n` -/
def P17954627595838388793.Spec : Prop :=
  ∀ n, P17954627595838388793.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P13415633940328600503

`A001952(A004526(n)+1)+∑[n%2]`
-/

namespace A286904.P13415633940328600503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A004526 n + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A286904.P13415633940328600503

namespace A286904

/-- `A001952(A004526(n)+1)+∑[n%2]` -/
def P13415633940328600503.Spec : Prop :=
  ∀ n, P13415633940328600503.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P8263464937283439331

`A187968(n+1)+Δ[A007494(n)]+n`
-/

namespace A286904.P8263464937283439331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A286904.P8263464937283439331

namespace A286904

/-- `A187968(n+1)+Δ[A007494(n)]+n` -/
def P8263464937283439331.Spec : Prop :=
  ∀ n, P8263464937283439331.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P7671873151987759467

`2*A188375(n+1)-A187968(n+1)`
-/

namespace A286904.P7671873151987759467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188375 (n + 1) - A187968 (n + 1)

end

end A286904.P7671873151987759467

namespace A286904

/-- `2*A188375(n+1)-A187968(n+1)` -/
def P7671873151987759467.Spec : Prop :=
  ∀ n, P7671873151987759467.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P10040474206488092056

`A184922(A008619(n))+A008619(n+1)`
-/

namespace A286904.P10040474206488092056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (A008619 n).toNat + A008619 (n + 1)

end

end A286904.P10040474206488092056

namespace A286904

/-- `A184922(A008619(n))+A008619(n+1)` -/
def P10040474206488092056.Spec : Prop :=
  ∀ n, P10040474206488092056.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P14629396189555428259

`A188375(n+1)+A049472(A188375(n+1)-n)`
-/

namespace A286904.P14629396189555428259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (n + 1) + A049472 (A188375 (n + 1) - (n : ℤ)).toNat

end

end A286904.P14629396189555428259

namespace A286904

/-- `A188375(n+1)+A049472(A188375(n+1)-n)` -/
def P14629396189555428259.Spec : Prop :=
  ∀ n, P14629396189555428259.a n = A286904 (n + 1)

end A286904

/-! ## A286904.P2087856653893556900

`∪[A190330(2*(n+1))-1, A190330(2*(n+1))]`
-/

namespace A286904.P2087856653893556900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190330 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190330 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286904.P2087856653893556900

namespace A286904

/-- `∪[A190330(2*(n+1))-1, A190330(2*(n+1))]` -/
def P2087856653893556900.Spec : Prop :=
  ∀ n, (P2087856653893556900.a n : ℤ) = A286904 (n + 1)

end A286904

/-! ## A286904.P12347908905998985445

`A187968(n+1)+A026251(A187968(n+1)+A001057(n))`
-/

namespace A286904.P12347908905998985445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) + A026251 (A187968 (n + 1) + A001057 n).toNat

end

end A286904.P12347908905998985445

namespace A286904

/-- `A187968(n+1)+A026251(A187968(n+1)+A001057(n))` -/
def P12347908905998985445.Spec : Prop :=
  ∀ n, P12347908905998985445.a n = A286904 (n + 1)

end A286904

/-!
# A286905: Positions of 1 in A286903; complement of A286904.

The programs for A286905, the canonical program `A286905.P4724979801914294857` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286905 has offset 1).

The definition of A286905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286905.P4724979801914294857

`2*floor((n+1)*sqrt(2))-(n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286905

/-- `2*floor((n+1)*sqrt(2))-(n+1)` -/
def P4724979801914294857.Spec : Prop :=
  ∀ n, P4724979801914294857.a n = A286905 (n + 1)

theorem P4724979801914294857.correct : P4724979801914294857.Spec := by
  intro n
  simp only [A286905, Nat.add_sub_cancel]

end A286905

/-! ## A286905.P7496559545484589591

`∑[2*A188037(n+1)+1]`
-/

namespace A286905.P7496559545484589591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188037 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P7496559545484589591

namespace A286905

/-- `∑[2*A188037(n+1)+1]` -/
def P7496559545484589591.Spec : Prop :=
  ∀ n, P7496559545484589591.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P17579906861316160389

`abs(n+1-A286909(n+1))`
-/

namespace A286905.P17579906861316160389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A286909 (n + 1)|

end

end A286905.P17579906861316160389

namespace A286905

/-- `abs(n+1-A286909(n+1))` -/
def P17579906861316160389.Spec : Prop :=
  ∀ n, P17579906861316160389.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P761491046399302992

`abs(2*A001951(n+1)-(n+1))`
-/

namespace A286905.P761491046399302992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A001951 (n + 1) - (n + 1 : ℤ)|

end

end A286905.P761491046399302992

namespace A286905

/-- `abs(2*A001951(n+1)-(n+1))` -/
def P761491046399302992.Spec : Prop :=
  ∀ n, P761491046399302992.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P15557145609831693965

`∑[A000032(Δ[A001951(n)])]`
-/

namespace A286905.P15557145609831693965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P15557145609831693965

namespace A286905

/-- `∑[A000032(Δ[A001951(n)])]` -/
def P15557145609831693965.Spec : Prop :=
  ∀ n, P15557145609831693965.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P13986212099912829849

`∑[A000203(Δ[A001951(n)])]`
-/

namespace A286905.P13986212099912829849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P13986212099912829849

namespace A286905

/-- `∑[A000203(Δ[A001951(n)])]` -/
def P13986212099912829849.Spec : Prop :=
  ∀ n, P13986212099912829849.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P14947682685352805040

`∑[A000217(Δ[A001951(n)])]`
-/

namespace A286905.P14947682685352805040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P14947682685352805040

namespace A286905

/-- `∑[A000217(Δ[A001951(n)])]` -/
def P14947682685352805040.Spec : Prop :=
  ∀ n, P14947682685352805040.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P5365846838625163990

`∑[A003152(Δ[A001951(n)])]`
-/

namespace A286905.P5365846838625163990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P5365846838625163990

namespace A286905

/-- `∑[A003152(Δ[A001951(n)])]` -/
def P5365846838625163990.Spec : Prop :=
  ∀ n, P5365846838625163990.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P18220116706456431016

`∑[A022838(Δ[A001951(n)])]`
-/

namespace A286905.P18220116706456431016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P18220116706456431016

namespace A286905

/-- `∑[A022838(Δ[A001951(n)])]` -/
def P18220116706456431016.Spec : Prop :=
  ∀ n, P18220116706456431016.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P16405764022270109757

`∑[A184800(Δ[A001951(n)])]`
-/

namespace A286905.P16405764022270109757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184800 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P16405764022270109757

namespace A286905

/-- `∑[A184800(Δ[A001951(n)])]` -/
def P16405764022270109757.Spec : Prop :=
  ∀ n, P16405764022270109757.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P5916723213377301948

`∑[A221693(Δ[A001951(n)])]`
-/

namespace A286905.P5916723213377301948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P5916723213377301948

namespace A286905

/-- `∑[A221693(Δ[A001951(n)])]` -/
def P5916723213377301948.Spec : Prop :=
  ∀ n, P5916723213377301948.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P3223495975003162133

`A140868(n+1)%A004767(n)`
-/

namespace A286905.P3223495975003162133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140868 (n + 1)) (A004767 n)

end

end A286905.P3223495975003162133

namespace A286905

/-- `A140868(n+1)%A004767(n)` -/
def P3223495975003162133.Spec : Prop :=
  ∀ n, P3223495975003162133.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P17402750616641982347

`A286690(n+1)%A016897(n)`
-/

namespace A286905.P17402750616641982347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286690 (n + 1)) (A016897 n)

end

end A286905.P17402750616641982347

namespace A286905

/-- `A286690(n+1)%A016897(n)` -/
def P17402750616641982347.Spec : Prop :=
  ∀ n, P17402750616641982347.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P2991041753584488094

`∑[A038500(Δ[A001951(n)]+1)]`
-/

namespace A286905.P2991041753584488094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P2991041753584488094

namespace A286905

/-- `∑[A038500(Δ[A001951(n)]+1)]` -/
def P2991041753584488094.Spec : Prop :=
  ∀ n, P2991041753584488094.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P3368691472167993280

`∑[A003151(Δ[A001951(n)])-1]`
-/

namespace A286905.P3368691472167993280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P3368691472167993280

namespace A286905

/-- `∑[A003151(Δ[A001951(n)])-1]` -/
def P3368691472167993280.Spec : Prop :=
  ∀ n, P3368691472167993280.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P7617626593280358988

`∑[A004277(Δ[A001951(n)])-1]`
-/

namespace A286905.P7617626593280358988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P7617626593280358988

namespace A286905

/-- `∑[A004277(Δ[A001951(n)])-1]` -/
def P7617626593280358988.Spec : Prop :=
  ∀ n, P7617626593280358988.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P17054542560185830595

`∑[A054406(Δ[A001951(n)])-1]`
-/

namespace A286905.P17054542560185830595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P17054542560185830595

namespace A286905

/-- `∑[A054406(Δ[A001951(n)])-1]` -/
def P17054542560185830595.Spec : Prop :=
  ∀ n, P17054542560185830595.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P8771910710897213085

`∑[A184775(Δ[A001951(n)])-1]`
-/

namespace A286905.P8771910710897213085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P8771910710897213085

namespace A286905

/-- `∑[A184775(Δ[A001951(n)])-1]` -/
def P8771910710897213085.Spec : Prop :=
  ∀ n, P8771910710897213085.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P118864712402274339

`∑[A080978(1-Δ[A195119(n)])]`
-/

namespace A286905.P118864712402274339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080978 (1 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P118864712402274339

namespace A286905

/-- `∑[A080978(1-Δ[A195119(n)])]` -/
def P118864712402274339.Spec : Prop :=
  ∀ n, P118864712402274339.a n = A286905 (n + 1)

end A286905

/-! ## A286905.P17623706173936970841

`∑[A260109(1-Δ[A195119(n)])]`
-/

namespace A286905.P17623706173936970841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260109 (1 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P17623706173936970841

namespace A286905

/-- `∑[A260109(1-Δ[A195119(n)])]` -/
def P17623706173936970841.Spec : Prop :=
  ∀ n, P17623706173936970841.a n = A286905 (n + 1)

end A286905

/-!
# A286906: Unitary phi-practical numbers: numbers k such that each m < k is a sum of a subset of {uphi(d) : d | k, gcd(d,k/d)=1}, where uphi is the unitary totient function (A047994).

The programs for A286906, there is no canonical definition to state claims against.
-/

/-! ## A286906.P15608332558653995901

`∩[A078129(n+1), A361922(n+1)]`
-/

namespace A286906.P15608332558653995901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286906.P15608332558653995901

/-! ## A286906.P3559954072320745882

`∩[A361922(n+1), A375402(n+1)]`
-/

namespace A286906.P3559954072320745882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286906.P3559954072320745882

/-! ## A286906.P12318446494620272903

`record[lcm(A084228(n+1), A337260(n+1))]`
-/

namespace A286906.P12318446494620272903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084228 (n + 1)) (A337260 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286906.P12318446494620272903

/-! ## A286906.P15941348643804209536

`record[Δ[A301646(n+2)/2]]`
-/

namespace A286906.P15941348643804209536
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301646 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286906.P15941348643804209536

/-!
# A286907: {0->00,1->01}-transform of the Sturmian word A080764.

The programs for A286907, the canonical program `A286907.P16898303085372787161` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286907 has offset 1).

The definition of A286907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286907.P13981959023368761811

`char[2*floor(n*sqrt(2))-1]`
-/

namespace A286907.P13981959023368761811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286907.P13981959023368761811

namespace A286907

/-- `char[2*floor(n*sqrt(2))-1]` -/
def P13981959023368761811.Spec : Prop :=
  ∀ n, (P13981959023368761811.a n : ℤ) = A286907 (n + 1)

end A286907

/-! ## A286907.P8644868087435509714

`and(n, A286685(n+1))`
-/

namespace A286907.P8644868087435509714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A286685 (n + 1))

end

end A286907.P8644868087435509714

namespace A286907

/-- `and(n, A286685(n+1))` -/
def P8644868087435509714.Spec : Prop :=
  ∀ n, P8644868087435509714.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P10248134698502838836

`and(n, char[A286689(n+1)])`
-/

namespace A286907.P10248134698502838836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A286907.P10248134698502838836

namespace A286907

/-- `and(n, char[A286689(n+1)])` -/
def P10248134698502838836.Spec : Prop :=
  ∀ n, (P10248134698502838836.a n : ℤ) = A286907 (n + 1)

end A286907

/-! ## A286907.P7702402039656719823

`Δ[floor(A008619(n)/sqrt(2))]`
-/

namespace A286907.P7702402039656719823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008619 n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286907.P7702402039656719823

namespace A286907

/-- `Δ[floor(A008619(n)/sqrt(2))]` -/
def P7702402039656719823.Spec : Prop :=
  ∀ n, P7702402039656719823.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P16331984500768578050

`and(n, 1-A286726(n+1))`
-/

namespace A286907.P16331984500768578050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A286726 (n + 1))

end

end A286907.P16331984500768578050

namespace A286907

/-- `and(n, 1-A286726(n+1))` -/
def P16331984500768578050.Spec : Prop :=
  ∀ n, P16331984500768578050.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P16898303085372787161

`n%2*A080764(floor(n/2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286907

/-- `n%2*A080764(floor(n/2))` -/
def P16898303085372787161.Spec : Prop :=
  ∀ n, P16898303085372787161.a n = A286907 (n + 1)

theorem P16898303085372787161.correct : P16898303085372787161.Spec := by
  intro n
  simp only [A286907, Nat.add_sub_cancel]

end A286907

/-! ## A286907.P9519773988116041721

`and(n, 1-char[A286687(n+1)])`
-/

namespace A286907.P9519773988116041721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A286907.P9519773988116041721

namespace A286907

/-- `and(n, 1-char[A286687(n+1)])` -/
def P9519773988116041721.Spec : Prop :=
  ∀ n, P9519773988116041721.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P4941449522252863405

`Δ[A049472(A008619(n))]`
-/

namespace A286907.P4941449522252863405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286907.P4941449522252863405

namespace A286907

/-- `Δ[A049472(A008619(n))]` -/
def P4941449522252863405.Spec : Prop :=
  ∀ n, P4941449522252863405.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P1633048291491870305

`A188295(A133622(n+1))`
-/

namespace A286907.P1633048291491870305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A133622 (n + 1)).toNat

end

end A286907.P1633048291491870305

namespace A286907

/-- `A188295(A133622(n+1))` -/
def P1633048291491870305.Spec : Prop :=
  ∀ n, P1633048291491870305.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P11909448992312372922

`A000035(A286925(n+1)+n)`
-/

namespace A286907.P11909448992312372922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A286925 (n + 1) + (n : ℤ)).toNat

end

end A286907.P11909448992312372922

namespace A286907

/-- `A000035(A286925(n+1)+n)` -/
def P11909448992312372922.Spec : Prop :=
  ∀ n, P11909448992312372922.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P9099859077534680079

`A000035(n*A286685(n+1))`
-/

namespace A286907.P9099859077534680079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) * A286685 (n + 1)).toNat

end

end A286907.P9099859077534680079

namespace A286907

/-- `A000035(n*A286685(n+1))` -/
def P9099859077534680079.Spec : Prop :=
  ∀ n, P9099859077534680079.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P13960916464619432073

`and(n, A286726(A004442(n)+1))`
-/

namespace A286907.P13960916464619432073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A286726 (A004442 n + 1).toNat)

end

end A286907.P13960916464619432073

namespace A286907

/-- `and(n, A286726(A004442(n)+1))` -/
def P13960916464619432073.Spec : Prop :=
  ∀ n, P13960916464619432073.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P14191203465236254136

`A286685(A286688(n+1)+1+n)`
-/

namespace A286907.P14191203465236254136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A286688 (n + 1) + 1 + (n : ℤ)).toNat

end

end A286907.P14191203465236254136

namespace A286907

/-- `A286685(A286688(n+1)+1+n)` -/
def P14191203465236254136.Spec : Prop :=
  ∀ n, P14191203465236254136.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P15353269493331666963

`A135528(n+1)*A286685(n+1)`
-/

namespace A286907.P15353269493331666963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1) * A286685 (n + 1)

end

end A286907.P15353269493331666963

namespace A286907

/-- `A135528(n+1)*A286685(n+1)` -/
def P15353269493331666963.Spec : Prop :=
  ∀ n, P15353269493331666963.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P9636150660721263935

`A215036(n+1)*A286685(n+1)`
-/

namespace A286907.P9636150660721263935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215036 (n + 1) * A286685 (n + 1)

end

end A286907.P9636150660721263935

namespace A286907

/-- `A215036(n+1)*A286685(n+1)` -/
def P9636150660721263935.Spec : Prop :=
  ∀ n, P9636150660721263935.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P9560460591040543304

`(1-A286726(n+1))*A000035(n)`
-/

namespace A286907.P9560460591040543304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A286726 (n + 1)) * A000035 n

end

end A286907.P9560460591040543304

namespace A286907

/-- `(1-A286726(n+1))*A000035(n)` -/
def P9560460591040543304.Spec : Prop :=
  ∀ n, P9560460591040543304.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P6740930984266667851

`(1-A059841(n))*A286685(n+1)`
-/

namespace A286907.P6740930984266667851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A059841 n) * A286685 (n + 1)

end

end A286907.P6740930984266667851

namespace A286907

/-- `(1-A059841(n))*A286685(n+1)` -/
def P6740930984266667851.Spec : Prop :=
  ∀ n, P6740930984266667851.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P16940784794441573431

`(1-A267043(n))*A286685(n+1)`
-/

namespace A286907.P16940784794441573431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A267043 n) * A286685 (n + 1)

end

end A286907.P16940784794441573431

namespace A286907

/-- `(1-A267043(n))*A286685(n+1)` -/
def P16940784794441573431.Spec : Prop :=
  ∀ n, P16940784794441573431.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P8572034724072872496

`A286685(or(n, A286685(n+1))+1)`
-/

namespace A286907.P8572034724072872496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (Int.lor (n : ℤ) (A286685 (n + 1)) + 1).toNat

end

end A286907.P8572034724072872496

namespace A286907

/-- `A286685(or(n, A286685(n+1))+1)` -/
def P8572034724072872496.Spec : Prop :=
  ∀ n, P8572034724072872496.a n = A286907 (n + 1)

end A286907

/-! ## A286907.P12064187763287498300

`∑{d}[n+1, A063524(#-1)*A080764((n+1)/#-1)]`
-/

namespace A286907.P12064187763287498300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A080764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A286907.P12064187763287498300

namespace A286907

/-- `∑{d}[n+1, A063524(#-1)*A080764((n+1)/#-1)]` -/
def P12064187763287498300.Spec : Prop :=
  ∀ n, P12064187763287498300.a n = A286907 (n + 1)

end A286907

/-!
# A286908: Positions of 0 in A286907; complement of A286909.

The programs for A286908, the canonical program `A286908.P7172583901659206460` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286908 has offset 1).

The definition of A286908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286908.P17082136541036825825

`comp[2*floor(n*sqrt(2))]`
-/

namespace A286908.P17082136541036825825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286908.P17082136541036825825

namespace A286908

/-- `comp[2*floor(n*sqrt(2))]` -/
def P17082136541036825825.Spec : Prop :=
  ∀ n, (P17082136541036825825.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P606873986151575485

`∪[2*n+1, A191405(n)]`
-/

namespace A286908.P606873986151575485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191405 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286908.P606873986151575485

namespace A286908

/-- `∪[2*n+1, A191405(n)]` -/
def P606873986151575485.Spec : Prop :=
  ∀ n, (P606873986151575485.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P15452546201941804560

`∑[char[A286905(n+1)]+1]`
-/

namespace A286908.P15452546201941804560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286908.P15452546201941804560

namespace A286908

/-- `∑[char[A286905(n+1)]+1]` -/
def P15452546201941804560.Spec : Prop :=
  ∀ n, (P15452546201941804560.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P7172583901659206460

`a(n-1)+A286903(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286908

/-- `a(n-1)+A286903(n)+1` -/
def P7172583901659206460.Spec : Prop :=
  ∀ n, P7172583901659206460.a n = A286908 (n + 1)

theorem P7172583901659206460.correct : P7172583901659206460.Spec := by
  intro n
  simp only [A286908, Nat.add_sub_cancel]

end A286908

/-! ## A286908.P12292577694547387483

`∪[2*n+1, A286686(n+1)]`
-/

namespace A286908.P12292577694547387483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286908.P12292577694547387483

namespace A286908

/-- `∪[2*n+1, A286686(n+1)]` -/
def P12292577694547387483.Spec : Prop :=
  ∀ n, (P12292577694547387483.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P10918749399341122744

`∪[2*n+1, A286927(n+1)]`
-/

namespace A286908.P10918749399341122744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286908.P10918749399341122744

namespace A286908

/-- `∪[2*n+1, A286927(n+1)]` -/
def P10918749399341122744.Spec : Prop :=
  ∀ n, (P10918749399341122744.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P7151765969722239406

`comp[2*(A188374(n+1)+n)-1]+1`
-/

namespace A286908.P7151765969722239406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A188374 (n + 1) + (n : ℤ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286908.P7151765969722239406

namespace A286908

/-- `comp[2*(A188374(n+1)+n)-1]+1` -/
def P7151765969722239406.Spec : Prop :=
  ∀ n, (P7151765969722239406.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P12735562093453582344

`∪[A286686(n+1), A286909(n+1)+1]`
-/

namespace A286908.P12735562093453582344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286908.P12735562093453582344

namespace A286908

/-- `∪[A286686(n+1), A286909(n+1)+1]` -/
def P12735562093453582344.Spec : Prop :=
  ∀ n, (P12735562093453582344.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P4759961599390950175

`record[xor(n+1, A286685(n+1))]`
-/

namespace A286908.P4759961599390950175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A286685 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286908.P4759961599390950175

namespace A286908

/-- `record[xor(n+1, A286685(n+1))]` -/
def P4759961599390950175.Spec : Prop :=
  ∀ n, P4759961599390950175.a n = A286908 (n + 1)

end A286908

/-! ## A286908.P9526845185120441394

`lt[char[2*floor(n*sqrt(2))], 1]`
-/

namespace A286908.P9526845185120441394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A286908.P9526845185120441394

namespace A286908

/-- `lt[char[2*floor(n*sqrt(2))], 1]` -/
def P9526845185120441394.Spec : Prop :=
  ∀ n, (P9526845185120441394.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P7640217805237052056

`record[n+1-tan(A286907(n+1))]`
-/

namespace A286908.P7640217805237052056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.tan (A286907 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286908.P7640217805237052056

namespace A286908

/-- `record[n+1-tan(A286907(n+1))]` -/
def P7640217805237052056.Spec : Prop :=
  ∀ n, P7640217805237052056.a n = (A286908 (n + 1) : ℝ)

end A286908

/-! ## A286908.P5926480111361754769

`eq[Δ[A286805(n+2)], A040001(n)]`
-/

namespace A286908.P5926480111361754769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286805 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A286908.P5926480111361754769

namespace A286908

/-- `eq[Δ[A286805(n+2)], A040001(n)]` -/
def P5926480111361754769.Spec : Prop :=
  ∀ n, (P5926480111361754769.a n : ℤ) = A286908 (n + 1)

end A286908

/-! ## A286908.P1841909679490838369

`A004396(A286991(n+1))`
-/

namespace A286908.P1841909679490838369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A286991 (n + 1)).toNat

end

end A286908.P1841909679490838369

namespace A286908

/-- `A004396(A286991(n+1))` -/
def P1841909679490838369.Spec : Prop :=
  ∀ n, P1841909679490838369.a n = A286908 (n + 1)

end A286908

/-! ## A286908.P15948075517112039286

`record[A194921(n+1)+A172471(n)]`
-/

namespace A286908.P15948075517112039286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) + A172471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286908.P15948075517112039286

namespace A286908

/-- `record[A194921(n+1)+A172471(n)]` -/
def P15948075517112039286.Spec : Prop :=
  ∀ n, P15948075517112039286.a n = A286908 (n + 1)

end A286908

/-!
# A286909: Positions of 1 in A286907; complement of A286908.

The programs for A286909, the canonical program `A286909.P7521876757351739898` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286909 has offset 1).

The definition of A286909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286909.P261959450300929527

`2*floor(sqrt(2)*(n+1))`
-/

namespace A286909.P261959450300929527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sqrt (2 : ℝ) * (n + 1 : ℝ)⌋

end

end A286909.P261959450300929527

namespace A286909

/-- `2*floor(sqrt(2)*(n+1))` -/
def P261959450300929527.Spec : Prop :=
  ∀ n, P261959450300929527.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P7521876757351739898

`∑[2*Δ[A001951(n)]]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286909

/-- `∑[2*Δ[A001951(n)]]` -/
def P7521876757351739898.Spec : Prop :=
  ∀ n, P7521876757351739898.a n = A286909 (n + 1)

theorem P7521876757351739898.correct : P7521876757351739898.Spec := by
  intro n
  simp only [A286909, Nat.add_sub_cancel]

end A286909

/-! ## A286909.P3546360815391051211

`and(-2, A022842(n+1))`
-/

namespace A286909.P3546360815391051211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A022842 (n + 1))

end

end A286909.P3546360815391051211

namespace A286909

/-- `and(-2, A022842(n+1))` -/
def P3546360815391051211.Spec : Prop :=
  ∀ n, P3546360815391051211.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P11183066199638912756

`A286905(n+1)+1+n`
-/

namespace A286909.P11183066199638912756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 1) + 1 + (n : ℤ)

end

end A286909.P11183066199638912756

namespace A286909

/-- `A286905(n+1)+1+n` -/
def P11183066199638912756.Spec : Prop :=
  ∀ n, P11183066199638912756.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P2542838954564161430

`A189380(n+1)-(n+1)`
-/

namespace A286909.P2542838954564161430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189380 (n + 1) - (n + 1 : ℤ)

end

end A286909.P2542838954564161430

namespace A286909

/-- `A189380(n+1)-(n+1)` -/
def P2542838954564161430.Spec : Prop :=
  ∀ n, P2542838954564161430.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P9242886858069187178

`∑[2*(A188037(n+1)+1)]`
-/

namespace A286909.P9242886858069187178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A188037 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286909.P9242886858069187178

namespace A286909

/-- `∑[2*(A188037(n+1)+1)]` -/
def P9242886858069187178.Spec : Prop :=
  ∀ n, P9242886858069187178.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P9126351776025390201

`∑[2*(A276864(n+1)-2)]`
-/

namespace A286909.P9126351776025390201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A276864 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286909.P9126351776025390201

namespace A286909

/-- `∑[2*(A276864(n+1)-2)]` -/
def P9126351776025390201.Spec : Prop :=
  ∀ n, P9126351776025390201.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P2685629580274269000

`A022804(n+1)-2*(n+1)`
-/

namespace A286909.P2685629580274269000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 (n + 1) - (2 * (n + 1) : ℤ)

end

end A286909.P2685629580274269000

namespace A286909

/-- `A022804(n+1)-2*(n+1)` -/
def P2685629580274269000.Spec : Prop :=
  ∀ n, P2685629580274269000.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P2361085011996936343

`A098021(n+1)-3*(n+1)`
-/

namespace A286909.P2361085011996936343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) - (3 * (n + 1) : ℤ)

end

end A286909.P2361085011996936343

namespace A286909

/-- `A098021(n+1)-3*(n+1)` -/
def P2361085011996936343.Spec : Prop :=
  ∀ n, P2361085011996936343.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P14657384368721687645

`A286927(n+1)-4*(n+1)`
-/

namespace A286909.P14657384368721687645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286927 (n + 1) - (4 * (n + 1) : ℤ)

end

end A286909.P14657384368721687645

namespace A286909

/-- `A286927(n+1)-4*(n+1)` -/
def P14657384368721687645.Spec : Prop :=
  ∀ n, P14657384368721687645.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P3244596919810152980

`5*(n+1)-A286806(n+1)`
-/

namespace A286909.P3244596919810152980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A286806 (n + 1)

end

end A286909.P3244596919810152980

namespace A286909

/-- `5*(n+1)-A286806(n+1)` -/
def P3244596919810152980.Spec : Prop :=
  ∀ n, P3244596919810152980.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P154186294043336819

`a(n-1)+2*A006337(n)` with `a(0)=2`
-/

namespace A286909.P154186294043336819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A006337 n

end

end A286909.P154186294043336819

namespace A286909

/-- `a(n-1)+2*A006337(n)` -/
def P154186294043336819.Spec : Prop :=
  ∀ n, P154186294043336819.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P9158883935654798552

`∑[A003151(Δ[A001951(n)])]`
-/

namespace A286909.P9158883935654798552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286909.P9158883935654798552

namespace A286909

/-- `∑[A003151(Δ[A001951(n)])]` -/
def P9158883935654798552.Spec : Prop :=
  ∀ n, P9158883935654798552.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P1485710624994885403

`∑[A004277(Δ[A001951(n)])]`
-/

namespace A286909.P1485710624994885403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286909.P1485710624994885403

namespace A286909

/-- `∑[A004277(Δ[A001951(n)])]` -/
def P1485710624994885403.Spec : Prop :=
  ∀ n, P1485710624994885403.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P13666949796507577640

`∑[A054406(Δ[A001951(n)])]`
-/

namespace A286909.P13666949796507577640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286909.P13666949796507577640

namespace A286909

/-- `∑[A054406(Δ[A001951(n)])]` -/
def P13666949796507577640.Spec : Prop :=
  ∀ n, P13666949796507577640.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P16095752256084668585

`∑[A184775(Δ[A001951(n)])]`
-/

namespace A286909.P16095752256084668585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286909.P16095752256084668585

namespace A286909

/-- `∑[A184775(Δ[A001951(n)])]` -/
def P16095752256084668585.Spec : Prop :=
  ∀ n, P16095752256084668585.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P18292112563910638402

`A140868(n+1)-A016789(n)`
-/

namespace A286909.P18292112563910638402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1) - A016789 n

end

end A286909.P18292112563910638402

namespace A286909

/-- `A140868(n+1)-A016789(n)` -/
def P18292112563910638402.Spec : Prop :=
  ∀ n, P18292112563910638402.a n = A286909 (n + 1)

end A286909

/-! ## A286909.P3637092847584100222

`A286690(n+1)-A004767(n)`
-/

namespace A286909.P3637092847584100222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286690 (n + 1) - A004767 n

end

end A286909.P3637092847584100222

namespace A286909

/-- `A286690(n+1)-A004767(n)` -/
def P3637092847584100222.Spec : Prop :=
  ∀ n, P3637092847584100222.a n = A286909 (n + 1)

end A286909

/-!
# A286910: Number of independent vertex sets and vertex covers in the n-antiprism graph.

The programs for A286910, the canonical program `A286910.P2859434990267540902` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286910 has offset 0).

The definition of A286910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286910.P2859434990267540902

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286910

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P2859434990267540902.Spec : Prop :=
  ∀ n, (P2859434990267540902.a n : ℤ) = A286910 n

theorem P2859434990267540902.correct : P2859434990267540902.Spec := by
  intro n
  simp only [A286910]

end A286910

/-! ## A286910.P11518095853816529513

`ogf((-3+2x+2x^2)/(-1+x+2x^2+x^3))`
-/

namespace A286910.P11518095853816529513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -2] [1, -1, -2, -1] n

end

end A286910.P11518095853816529513

namespace A286910

/-- `ogf((-3+2x+2x^2)/(-1+x+2x^2+x^3))` -/
def P11518095853816529513.Spec : Prop :=
  ∀ n, P11518095853816529513.a n = A286910 n

end A286910

/-! ## A286910.P2343441396146495431

`a(n-1)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=5`
-/

namespace A286910.P2343441396146495431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 5] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A286910.P2343441396146495431

namespace A286910

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-3)` -/
def P2343441396146495431.Spec : Prop :=
  ∀ n, (P2343441396146495431.a n : ℤ) = A286910 n

theorem P2343441396146495431.correct : P2343441396146495431.Spec := by
  intro n
  simp only [A286910, Nat.add_sub_cancel, A286910.P2343441396146495431.a, A286910.P2859434990267540902.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A286910

/-! ## A286910.P11675635762607256007

`A226509(2*n)-2*n`
-/

namespace A286910.P11675635762607256007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (2 * n) - (2 * n : ℤ)

end

end A286910.P11675635762607256007

namespace A286910

/-- `A226509(2*n)-2*n` -/
def P11675635762607256007.Spec : Prop :=
  ∀ n, P11675635762607256007.a n = A286910 n

end A286910

/-! ## A286910.P14210798533958099308

`A108122(n)+2*A078007(n)`
-/

namespace A286910.P14210798533958099308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108122 n + 2 * A078007 n

end

end A286910.P14210798533958099308

namespace A286910

/-- `A108122(n)+2*A078007(n)` -/
def P14210798533958099308.Spec : Prop :=
  ∀ n, P14210798533958099308.a n = A286910 n

end A286910

/-! ## A286910.P17520202781921689736

`A002478(n)+2*A142474(n+1)`
-/

namespace A286910.P17520202781921689736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n + 2 * A142474 (n + 1)

end

end A286910.P17520202781921689736

namespace A286910

/-- `A002478(n)+2*A142474(n+1)` -/
def P17520202781921689736.Spec : Prop :=
  ∀ n, P17520202781921689736.a n = A286910 n

end A286910

/-! ## A286910.P12240877979708699230

`A000930(2*n)+2*A078012(2*n)`
-/

namespace A286910.P12240877979708699230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n) + 2 * A078012 (2 * n)

end

end A286910.P12240877979708699230

namespace A286910

/-- `A000930(2*n)+2*A078012(2*n)` -/
def P12240877979708699230.Spec : Prop :=
  ∀ n, P12240877979708699230.a n = A286910 n

end A286910

/-! ## A286910.P12893715928656588073

`A199804(2*n)+2*A078012(2*n)`
-/

namespace A286910.P12893715928656588073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (2 * n) + 2 * A078012 (2 * n)

end

end A286910.P12893715928656588073

namespace A286910

/-- `A199804(2*n)+2*A078012(2*n)` -/
def P12893715928656588073.Spec : Prop :=
  ∀ n, P12893715928656588073.a n = A286910 n

end A286910

/-! ## A286910.P1805764807458676751

`A068921(2*n)+Δ[Δ[A107458(2*n)]]`
-/

namespace A286910.P1805764807458676751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (2 * n) + (f1 (n + 1) - f1 n)

end

end A286910.P1805764807458676751

namespace A286910

/-- `A068921(2*n)+Δ[Δ[A107458(2*n)]]` -/
def P1805764807458676751.Spec : Prop :=
  ∀ n, P1805764807458676751.a n = A286910 n

end A286910

/-! ## A286910.P7246116273384288492

`A058278(2*n+1)+A078012(2*n)+A058278(2*n)`
-/

namespace A286910.P7246116273384288492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (2 * n + 1) + (A078012 (2 * n) + A058278 (2 * n))

end

end A286910.P7246116273384288492

namespace A286910

/-- `A058278(2*n+1)+A078012(2*n)+A058278(2*n)` -/
def P7246116273384288492.Spec : Prop :=
  ∀ n, P7246116273384288492.a n = A286910 n

end A286910

/-! ## A286910.P6014744530802801213

`A384367(n)-a(n-1)` with `a(0)=3`
-/

namespace A286910.P6014744530802801213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A384367 n - a (n - 1)

end

end A286910.P6014744530802801213

namespace A286910

/-- `A384367(n)-a(n-1)` -/
def P6014744530802801213.Spec : Prop :=
  ∀ n, P6014744530802801213.a n = A286910 n

end A286910

/-! ## A286910.P9010452227029746280

`Δ[A277252(2*n)+Δ[A306276(2*n)]]`
-/

namespace A286910.P9010452227029746280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286910.P9010452227029746280

namespace A286910

/-- `Δ[A277252(2*n)+Δ[A306276(2*n)]]` -/
def P9010452227029746280.Spec : Prop :=
  ∀ n, P9010452227029746280.a n = A286910 n

end A286910

/-! ## A286910.P13023417312303132057

`A001609(2*n+3)-A001609(2*(n+1))`
-/

namespace A286910.P13023417312303132057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (2 * n + 3) - A001609 (2 * (n + 1))

end

end A286910.P13023417312303132057

namespace A286910

/-- `A001609(2*n+3)-A001609(2*(n+1))` -/
def P13023417312303132057.Spec : Prop :=
  ∀ n, P13023417312303132057.a n = A286910 n

end A286910

/-!
# A286911: Number of edge covers in the ladder graph P_2 x P_n.

The programs for A286911, the canonical program `A286911.P17579255058095122607` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286911 has offset 0).

The definition of A286911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286911.P17579255058095122607

`6*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286911

/-- `6*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P17579255058095122607.Spec : Prop :=
  ∀ n, P17579255058095122607.a n = A286911 n

theorem P17579255058095122607.correct : P17579255058095122607.Spec := by
  intro n
  simp only [A286911]

end A286911

/-! ## A286911.P4754230736194674957

`ogf((-1+5x+2x^2)/(-1+6x+3x^2-2x^3))`
-/

namespace A286911.P4754230736194674957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, -2] [1, -6, -3, 2] n

end

end A286911.P4754230736194674957

namespace A286911

/-- `ogf((-1+5x+2x^2)/(-1+6x+3x^2-2x^3))` -/
def P4754230736194674957.Spec : Prop :=
  ∀ n, P4754230736194674957.a n = A286911 n

end A286911

/-! ## A286911.P15414753465239079073

`A286912(∑[n]+2)`
-/

namespace A286911.P15414753465239079073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286912 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A286911.P15414753465239079073

namespace A286911

/-- `A286912(∑[n]+2)` -/
def P15414753465239079073.Spec : Prop :=
  ∀ n, P15414753465239079073.a n = A286911 n

end A286911

/-!
# A286912: Array read by antidiagonals: T(m,n) is the number of edge covers in the grid graph P_m X P_n.

The programs for A286912, there is no canonical definition to state claims against.
-/

/-! ## A286912.P12294853486418399603

`A157156(n)+A106459(A094941(n))`
-/

namespace A286912.P12294853486418399603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157156 n + A106459 (A094941 n).toNat

end

end A286912.P12294853486418399603

/-! ## A286912.P15189771058933537292

`A163811(A134915(n))+A157156(n)`
-/

namespace A286912.P15189771058933537292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (A134915 n).toNat + A157156 n

end

end A286912.P15189771058933537292

/-! ## A286912.P15428398654611397736

`A001222(A084869(n))*A157156(n)`
-/

namespace A286912.P15428398654611397736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084869 n).toNat * A157156 n

end

end A286912.P15428398654611397736

/-! ## A286912.P15981116953363882020

`A157156(n)*A305426(A041231(n))`
-/

namespace A286912.P15981116953363882020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157156 n * A305426 (A041231 n).toNat

end

end A286912.P15981116953363882020

/-!
# A286913: Number of edge covers in the grid graph P_n X P_n.

The programs for A286913, there is no canonical definition to state claims against.
-/

/-! ## A286913.P2327260211369254257

`A286912(2*(n+1)²-2*(n+1)+1)`
-/

namespace A286913.P2327260211369254257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286912 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A286913.P2327260211369254257

/-!
# A286914: Number of dominating sets in the stacked prism graph C_n X P_n.

The programs for A286914, there is no canonical definition to state claims against.
-/

/-! ## A286914.P14440851808605993175

`A286514(∑[4*n]+1)`
-/

namespace A286914.P14440851808605993175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286514 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A286914.P14440851808605993175

/-! ## A286914.P13950782518568703100

`or(1, A286514(A001844(n)))`
-/

namespace A286914.P13950782518568703100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A286514 (A001844 n).toNat)

end

end A286914.P13950782518568703100

/-! ## A286914.P3506238560130542619

`record[A286514(Δ[A235355(n)])]`
-/

namespace A286914.P3506238560130542619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286514 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286914.P3506238560130542619

/-! ## A286914.P7065618105530986026

`A286514(A001844(n))+A025442(n)`
-/

namespace A286914.P7065618105530986026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286514 (A001844 n).toNat + A025442 n

end

end A286914.P7065618105530986026

/-! ## A286914.P2255877208713666400

`lcm(A286514(A001844(n)), A375389(n+1))`
-/

namespace A286914.P2255877208713666400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286514 (A001844 n).toNat) (A375389 (n + 1))

end

end A286914.P2255877208713666400

/-!
# A286918: Total number of nodes summed over all lattice paths from (0,0) to (n,n) using steps {(k,0), (0,k) | 0

The programs for A286918, there is no canonical definition to state claims against.
-/

/-! ## A286918.P3735597005055262762

`A368773(A329887(n))`
-/

namespace A286918.P3735597005055262762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368773 (A329887 n).toNat

end

end A286918.P3735597005055262762

/-!
# A286920: Triangle read by rows: T(n,m) is the number of pattern classes in the (n,m)-rectangular grid with 9 colors and n>=m, two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A286920, there is no canonical definition to state claims against.
-/

/-! ## A286920.P16817501835392750003

`A317051(A099036(n))`
-/

namespace A286920.P16817501835392750003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317051 (A099036 n).toNat

end

end A286920.P16817501835392750003

/-! ## A286920.P4871649385353646207

`A317051(A228078(n)+1)`
-/

namespace A286920.P4871649385353646207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317051 (A228078 n + 1).toNat

end

end A286920.P4871649385353646207

/-!
# A286922: {0->01}-transform of the Sturmian word A080764.

The programs for A286922, the canonical program `A286922.P13163846795494854594` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286922 has offset 1).

The definition of A286922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286922.P13163846795494854594

`char[A187328(n)-2]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286922

/-- `char[A187328(n)-2]` -/
def P13163846795494854594.Spec : Prop :=
  ∀ n, (P13163846795494854594.a n : ℤ) = A286922 (n + 1)

theorem P13163846795494854594.correct : P13163846795494854594.Spec := by
  intro n
  simp only [A286922, Nat.add_sub_cancel]

end A286922

/-! ## A286922.P10372531405994758978

`char[A286924(n+1)-1]`
-/

namespace A286922.P10372531405994758978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286922.P10372531405994758978

namespace A286922

/-- `char[A286924(n+1)-1]` -/
def P10372531405994758978.Spec : Prop :=
  ∀ n, (P10372531405994758978.a n : ℤ) = A286922 (n + 1)

end A286922

/-! ## A286922.P14727888892879075726

`char[∑[A171588(n+1)]+n]`
-/

namespace A286922.P14727888892879075726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286922.P14727888892879075726

namespace A286922

/-- `char[∑[A171588(n+1)]+n]` -/
def P14727888892879075726.Spec : Prop :=
  ∀ n, (P14727888892879075726.a n : ℤ) = A286922 (n + 1)

end A286922

/-! ## A286922.P7232291586995060579

`A286903((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A286922.P7232291586995060579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A286922.P7232291586995060579

namespace A286922

/-- `A286903((n+1)^a(n-1))` -/
def P7232291586995060579.Spec : Prop :=
  ∀ n, P7232291586995060579.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P14532687457794523666

`A286802(n+1)-A286693(n+1)`
-/

namespace A286922.P14532687457794523666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1) - A286693 (n + 1)

end

end A286922.P14532687457794523666

namespace A286922

/-- `A286802(n+1)-A286693(n+1)` -/
def P14532687457794523666.Spec : Prop :=
  ∀ n, P14532687457794523666.a n = A286922 (n + 1)

theorem P14532687457794523666.correct : P14532687457794523666.Spec := by
  intro n
  simp only [A286922, Nat.add_sub_cancel, A286922.P14532687457794523666.a, A286922.P13163846795494854594.f1, A286922.P13163846795494854594.a, A187328, A187328.P6802149099845131855.a, A286693, A286693.P502539275683704723.f1, A286693.P502539275683704723.a, A286802, A286802.P10299753471683796401.a, A286991, A286991.P960293502275245523.a, A187970, A187970.P445449769979314014.f1, A187970.P445449769979314014.a, A187971, A187971.P5819129724540132840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286922

/-! ## A286922.P5282729656058503526

`A286908(n+2)%2`
-/

namespace A286922.P5282729656058503526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286908 (n + 2)) 2

end

end A286922.P5282729656058503526

namespace A286922

/-- `A286908(n+2)%2` -/
def P5282729656058503526.Spec : Prop :=
  ∀ n, P5282729656058503526.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P18222412125040587514

`(2-Δ[A188265(n+1)])²`
-/

namespace A286922.P18222412125040587514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) ^ 2

end

end A286922.P18222412125040587514

namespace A286922

/-- `(2-Δ[A188265(n+1)])²` -/
def P18222412125040587514.Spec : Prop :=
  ∀ n, P18222412125040587514.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P7675233367017509777

`(2-Δ[A286802(n+1)])²`
-/

namespace A286922.P7675233367017509777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) ^ 2

end

end A286922.P7675233367017509777

namespace A286922

/-- `(2-Δ[A286802(n+1)])²` -/
def P7675233367017509777.Spec : Prop :=
  ∀ n, P7675233367017509777.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P7401443531470571570

`A035145(Δ[A286802(n+1)])`
-/

namespace A286922.P7401443531470571570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035145 (f1 (n + 1) - f1 n).toNat

end

end A286922.P7401443531470571570

namespace A286922

/-- `A035145(Δ[A286802(n+1)])` -/
def P7401443531470571570.Spec : Prop :=
  ∀ n, P7401443531470571570.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P14325884022968417751

`A134323(Δ[A286802(n+1)])²`
-/

namespace A286922.P14325884022968417751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A286922.P14325884022968417751

namespace A286922

/-- `A134323(Δ[A286802(n+1)])²` -/
def P14325884022968417751.Spec : Prop :=
  ∀ n, P14325884022968417751.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P13235249959254727654

`A286903(A286903(n+2)+n+1)`
-/

namespace A286922.P13235249959254727654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286903 (A286903 (n + 2) + (n + 1 : ℤ)).toNat

end

end A286922.P13235249959254727654

namespace A286922

/-- `A286903(A286903(n+2)+n+1)` -/
def P13235249959254727654.Spec : Prop :=
  ∀ n, P13235249959254727654.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P12523579376708758755

`A144611(A187970(n+1))`
-/

namespace A286922.P12523579376708758755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A187970 (n + 1)).toNat

end

end A286922.P12523579376708758755

namespace A286922

/-- `A144611(A187970(n+1))` -/
def P12523579376708758755.Spec : Prop :=
  ∀ n, P12523579376708758755.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P7535379937555147484

`A144611(eq[A144611(n), A187967(n+1)])`
-/

namespace A286922.P7535379937555147484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286922.P7535379937555147484

namespace A286922

/-- `A144611(eq[A144611(n), A187967(n+1)])` -/
def P7535379937555147484.Spec : Prop :=
  ∀ n, P7535379937555147484.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P5815222873168265254

`A286726(A286908(n+1))`
-/

namespace A286922.P5815222873168265254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A286908 (n + 1)).toNat

end

end A286922.P5815222873168265254

namespace A286922

/-- `A286726(A286908(n+1))` -/
def P5815222873168265254.Spec : Prop :=
  ∀ n, P5815222873168265254.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P14221560076040383307

`A080764(A188265(n+1))`
-/

namespace A286922.P14221560076040383307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A188265 (n + 1)).toNat

end

end A286922.P14221560076040383307

namespace A286922

/-- `A080764(A188265(n+1))` -/
def P14221560076040383307.Spec : Prop :=
  ∀ n, P14221560076040383307.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P9674161563151251177

`A188295(A188265(n+1)+2)`
-/

namespace A286922.P9674161563151251177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A188265 (n + 1) + 2).toNat

end

end A286922.P9674161563151251177

namespace A286922

/-- `A188295(A188265(n+1)+2)` -/
def P9674161563151251177.Spec : Prop :=
  ∀ n, P9674161563151251177.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P283431228038226796

`A078979(A286693(n+1))`
-/

namespace A286922.P283431228038226796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078979 (A286693 (n + 1)).toNat

end

end A286922.P283431228038226796

namespace A286922

/-- `A078979(A286693(n+1))` -/
def P283431228038226796.Spec : Prop :=
  ∀ n, P283431228038226796.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P7004252160625954345

`A286801(A286991(n+1)-1)`
-/

namespace A286922.P7004252160625954345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286801 (A286991 (n + 1) - 1).toNat

end

end A286922.P7004252160625954345

namespace A286922

/-- `A286801(A286991(n+1)-1)` -/
def P7004252160625954345.Spec : Prop :=
  ∀ n, P7004252160625954345.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P11838006313863024593

`A057078(A286802(n+1))`
-/

namespace A286922.P11838006313863024593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A286802 (n + 1)).toNat

end

end A286922.P11838006313863024593

namespace A286922

/-- `A057078(A286802(n+1))` -/
def P11838006313863024593.Spec : Prop :=
  ∀ n, P11838006313863024593.a n = A286922 (n + 1)

end A286922

/-! ## A286922.P8226341210898048400

`A204418(A286991(n+1))`
-/

namespace A286922.P8226341210898048400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (A286991 (n + 1)).toNat

end

end A286922.P8226341210898048400

namespace A286922

/-- `A204418(A286991(n+1))` -/
def P8226341210898048400.Spec : Prop :=
  ∀ n, P8226341210898048400.a n = A286922 (n + 1)

end A286922

/-!
# A286923: Positions of 0 in A286922; complement of A286924.

The programs for A286923, the canonical program `A286923.P16043694216111117788` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286923 has offset 1).

The definition of A286923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286923.P16043694216111117788

`floor((3+sqrt(2))*(n+1))-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286923

/-- `floor((3+sqrt(2))*(n+1))-1` -/
def P16043694216111117788.Spec : Prop :=
  ∀ n, P16043694216111117788.a n = A286923 (n + 1)

theorem P16043694216111117788.correct : P16043694216111117788.Spec := by
  intro n
  simp only [A286923, Nat.add_sub_cancel]

end A286923

/-! ## A286923.P5682825923992456752

`xor(-floor((sqrt(2)+3)*(n+1)), -1)`
-/

namespace A286923.P5682825923992456752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌊(Real.sqrt (2 : ℝ) + 3) * (n + 1 : ℝ)⌋) (-1)

end

end A286923.P5682825923992456752

namespace A286923

/-- `xor(-floor((sqrt(2)+3)*(n+1)), -1)` -/
def P5682825923992456752.Spec : Prop :=
  ∀ n, P5682825923992456752.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P12070047879339543366

`or(A001952(n+1)+n, char[1])`
-/

namespace A286923.P12070047879339543366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001952 (n + 1) + (n : ℤ)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286923.P12070047879339543366

namespace A286923

/-- `or(A001952(n+1)+n, char[1])` -/
def P12070047879339543366.Spec : Prop :=
  ∀ n, P12070047879339543366.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P9674321598448781430

`abs(A003151(n+1)+Δ[n²])`
-/

namespace A286923.P9674321598448781430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003151 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A286923.P9674321598448781430

namespace A286923

/-- `abs(A003151(n+1)+Δ[n²])` -/
def P9674321598448781430.Spec : Prop :=
  ∀ n, P9674321598448781430.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P1141228461031657560

`ceil((A140868(n+1)+3*n+1)/2)`
-/

namespace A286923.P1141228461031657560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140868 (n + 1) + (3 * n : ℤ) + 1 : ℚ) / 2⌉

end

end A286923.P1141228461031657560

namespace A286923

/-- `ceil((A140868(n+1)+3*n+1)/2)` -/
def P1141228461031657560.Spec : Prop :=
  ∀ n, P1141228461031657560.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P17086769487483951951

`∑[A276864(n+1)+A057427(n)]`
-/

namespace A286923.P17086769487483951951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286923.P17086769487483951951

namespace A286923

/-- `∑[A276864(n+1)+A057427(n)]` -/
def P17086769487483951951.Spec : Prop :=
  ∀ n, P17086769487483951951.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P9156850974127045093

`(A001952(n+1)+n)%A136798(n+1)`
-/

namespace A286923.P9156850974127045093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (n + 1) + (n : ℤ)) (A136798 (n + 1))

end

end A286923.P9156850974127045093

namespace A286923

/-- `(A001952(n+1)+n)%A136798(n+1)` -/
def P9156850974127045093.Spec : Prop :=
  ∀ n, P9156850974127045093.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P4471442955227998780

`(A001952(n+1)+n)*and(1, A004767(n))`
-/

namespace A286923.P4471442955227998780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001952 (n + 1) + (n : ℤ)) * Int.land 1 (A004767 n)

end

end A286923.P4471442955227998780

namespace A286923

/-- `(A001952(n+1)+n)*and(1, A004767(n))` -/
def P4471442955227998780.Spec : Prop :=
  ∀ n, P4471442955227998780.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P14326152846179547005

`abs(A001952(n+1)+n*(n+1)-A000290(n))`
-/

namespace A286923.P14326152846179547005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001952 (n + 1) + (n * (n + 1) : ℤ) - A000290 n|

end

end A286923.P14326152846179547005

namespace A286923

/-- `abs(A001952(n+1)+n*(n+1)-A000290(n))` -/
def P14326152846179547005.Spec : Prop :=
  ∀ n, P14326152846179547005.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P14481025821268746894

`A286904(Δ[n²])`
-/

namespace A286923.P14481025821268746894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A286923.P14481025821268746894

namespace A286923

/-- `A286904(Δ[n²])` -/
def P14481025821268746894.Spec : Prop :=
  ∀ n, P14481025821268746894.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P15208308587728091841

`abs(2-A188298(2*(n+2))-n)`
-/

namespace A286923.P15208308587728091841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A188298 (2 * (n + 2)) - (n : ℤ)|

end

end A286923.P15208308587728091841

namespace A286923

/-- `abs(2-A188298(2*(n+2))-n)` -/
def P15208308587728091841.Spec : Prop :=
  ∀ n, P15208308587728091841.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P10027208145104703002

`A187328(comp[floor(n*sqrt(2))])`
-/

namespace A286923.P10027208145104703002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286923.P10027208145104703002

namespace A286923

/-- `A187328(comp[floor(n*sqrt(2))])` -/
def P10027208145104703002.Spec : Prop :=
  ∀ n, P10027208145104703002.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P25834837554147018

`A195128(A184922(n+1))`
-/

namespace A286923.P25834837554147018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (A184922 (n + 1)).toNat

end

end A286923.P25834837554147018

namespace A286923

/-- `A195128(A184922(n+1))` -/
def P25834837554147018.Spec : Prop :=
  ∀ n, P25834837554147018.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P10925843425562284860

`A195128(A188375(2*n+1))`
-/

namespace A286923.P10925843425562284860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (A188375 (2 * n + 1)).toNat

end

end A286923.P10925843425562284860

namespace A286923

/-- `A195128(A188375(2*n+1))` -/
def P10925843425562284860.Spec : Prop :=
  ∀ n, P10925843425562284860.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P5112985115395741817

`A195128(A286667(2*n+1))`
-/

namespace A286923.P5112985115395741817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (A286667 (2 * n + 1)).toNat

end

end A286923.P5112985115395741817

namespace A286923

/-- `A195128(A286667(2*n+1))` -/
def P5112985115395741817.Spec : Prop :=
  ∀ n, P5112985115395741817.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P3858425974316397436

`∩[A286904(n+1), A187328(n)]`
-/

namespace A286923.P3858425974316397436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286923.P3858425974316397436

namespace A286923

/-- `∩[A286904(n+1), A187328(n)]` -/
def P3858425974316397436.Spec : Prop :=
  ∀ n, (P3858425974316397436.a n : ℤ) = A286923 (n + 1)

end A286923

/-! ## A286923.P943281912837622186

`A023443(A187338(n+1))`
-/

namespace A286923.P943281912837622186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A187338 (n + 1)).toNat

end

end A286923.P943281912837622186

namespace A286923

/-- `A023443(A187338(n+1))` -/
def P943281912837622186.Spec : Prop :=
  ∀ n, P943281912837622186.a n = A286923 (n + 1)

end A286923

/-! ## A286923.P6469653639227298324

`A286924(A286690(n+1))/2`
-/

namespace A286923.P6469653639227298324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286924 (A286690 (n + 1)).toNat : ℚ) / 2

end

end A286923.P6469653639227298324

namespace A286923

/-- `A286924(A286690(n+1))/2` -/
def P6469653639227298324.Spec : Prop :=
  ∀ n, P6469653639227298324.a n = (A286923 (n + 1) : ℚ)

end A286923

/-!
# A286924: Positions of 1 in A286922; complement of A286923.

The programs for A286924, the canonical program `A286924.P2187579082440823486` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286924 has offset 1).

The definition of A286924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286924.P2187579082440823486

`2*(n+1)-floor((n+2)/sqrt(2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286924

/-- `2*(n+1)-floor((n+2)/sqrt(2))` -/
def P2187579082440823486.Spec : Prop :=
  ∀ n, P2187579082440823486.a n = A286924 (n + 1)

theorem P2187579082440823486.correct : P2187579082440823486.Spec := by
  intro n
  simp only [A286924, Nat.add_sub_cancel]

end A286924

/-! ## A286924.P8172027417057288515

`∑[2-A080764(n)]`
-/

namespace A286924.P8172027417057288515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286924.P8172027417057288515

namespace A286924

/-- `∑[2-A080764(n)]` -/
def P8172027417057288515.Spec : Prop :=
  ∀ n, P8172027417057288515.a n = A286924 (n + 1)

end A286924

/-! ## A286924.P14513600288029695078

`∑[A171588(n+1)+1]`
-/

namespace A286924.P14513600288029695078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286924.P14513600288029695078

namespace A286924

/-- `∑[A171588(n+1)+1]` -/
def P14513600288029695078.Spec : Prop :=
  ∀ n, P14513600288029695078.a n = A286924 (n + 1)

end A286924

/-! ## A286924.P1797391032133340893

`∑[gcd(2, A138494(n+1))]`
-/

namespace A286924.P1797391032133340893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A138494 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286924.P1797391032133340893

namespace A286924

/-- `∑[gcd(2, A138494(n+1))]` -/
def P1797391032133340893.Spec : Prop :=
  ∀ n, (P1797391032133340893.a n : ℤ) = A286924 (n + 1)

end A286924

/-! ## A286924.P15663995790800845636

`∑[A000032(Δ[floor((n+1)/sqrt(2))])]`
-/

namespace A286924.P15663995790800845636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286924.P15663995790800845636

namespace A286924

/-- `∑[A000032(Δ[floor((n+1)/sqrt(2))])]` -/
def P15663995790800845636.Spec : Prop :=
  ∀ n, P15663995790800845636.a n = A286924 (n + 1)

end A286924

/-! ## A286924.P6525312393850186374

`∑[A006337(A049472(n)+1)]`
-/

namespace A286924.P6525312393850186374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A049472 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286924.P6525312393850186374

namespace A286924

/-- `∑[A006337(A049472(n)+1)]` -/
def P6525312393850186374.Spec : Prop :=
  ∀ n, P6525312393850186374.a n = A286924 (n + 1)

end A286924

/-! ## A286924.P17121098941031985540

`∑[A006337(∑[A080764(n+1)])]`
-/

namespace A286924.P17121098941031985540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286924.P17121098941031985540

namespace A286924

/-- `∑[A006337(∑[A080764(n+1)])]` -/
def P17121098941031985540.Spec : Prop :=
  ∀ n, P17121098941031985540.a n = A286924 (n + 1)

end A286924

/-! ## A286924.P4596035226130114362

`∪[A190329(n+1), A190330(n+1)]`
-/

namespace A286924.P4596035226130114362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286924.P4596035226130114362

namespace A286924

/-- `∪[A190329(n+1), A190330(n+1)]` -/
def P4596035226130114362.Spec : Prop :=
  ∀ n, (P4596035226130114362.a n : ℤ) = A286924 (n + 1)

end A286924

/-! ## A286924.P18422192360907856335

`∪[A187338(n+1), A286905(n+1)]`
-/

namespace A286924.P18422192360907856335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286924.P18422192360907856335

namespace A286924

/-- `∪[A187338(n+1), A286905(n+1)]` -/
def P18422192360907856335.Spec : Prop :=
  ∀ n, (P18422192360907856335.a n : ℤ) = A286924 (n + 1)

end A286924

/-! ## A286924.P12092798241243121763

`∪[A190330(n+1), A286905(n+1)]`
-/

namespace A286924.P12092798241243121763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286924.P12092798241243121763

namespace A286924

/-- `∪[A190330(n+1), A286905(n+1)]` -/
def P12092798241243121763.Spec : Prop :=
  ∀ n, (P12092798241243121763.a n : ℤ) = A286924 (n + 1)

end A286924

/-! ## A286924.P3160970421750984660

`∪[A286905(n+2)-1, A286905(n+2)]`
-/

namespace A286924.P3160970421750984660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286924.P3160970421750984660

namespace A286924

/-- `∪[A286905(n+2)-1, A286905(n+2)]` -/
def P3160970421750984660.Spec : Prop :=
  ∀ n, (P3160970421750984660.a n : ℤ) = A286924 (n + 1)

end A286924

/-! ## A286924.P11715650457843347455

`filter[n+1, A286922(#)]`
-/

namespace A286924.P11715650457843347455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286922 (f1 j) = 1) n)

end

end A286924.P11715650457843347455

namespace A286924

/-- `filter[n+1, A286922(#)]` -/
def P11715650457843347455.Spec : Prop :=
  ∀ n, (P11715650457843347455.a n : ℤ) = A286924 (n + 1)

end A286924

/-! ## A286924.P11938158872861121474

`∑[A263844(n+1)!]`
-/

namespace A286924.P11938158872861121474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A263844 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286924.P11938158872861121474

namespace A286924

/-- `∑[A263844(n+1)!]` -/
def P11938158872861121474.Spec : Prop :=
  ∀ n, (P11938158872861121474.a n : ℤ) = A286924 (n + 1)

end A286924

/-! ## A286924.P15206029644886189587

`A128076(A081946(n+2))`
-/

namespace A286924.P15206029644886189587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (A081946 (n + 2)).toNat

end

end A286924.P15206029644886189587

namespace A286924

/-- `A128076(A081946(n+2))` -/
def P15206029644886189587.Spec : Prop :=
  ∀ n, P15206029644886189587.a n = A286924 (n + 1)

end A286924

/-!
# A286925: {0->01,1->00}-transform of the Sturmian word A080764.

The programs for A286925, the canonical program `A286925.P3784326360336605252` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286925 has offset 1).

The definition of A286925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286925.P3921624489480237672

`char[2*comp[floor(n*sqrt(2))]-1]`
-/

namespace A286925.P3921624489480237672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286925.P3921624489480237672

namespace A286925

/-- `char[2*comp[floor(n*sqrt(2))]-1]` -/
def P3921624489480237672.Spec : Prop :=
  ∀ n, (P3921624489480237672.a n : ℤ) = A286925 (n + 1)

end A286925

/-! ## A286925.P3784326360336605252

`A286688(xor(1, n)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286925

/-- `A286688(xor(1, n)+1)` -/
def P3784326360336605252.Spec : Prop :=
  ∀ n, P3784326360336605252.a n = A286925 (n + 1)

theorem P3784326360336605252.correct : P3784326360336605252.Spec := by
  intro n
  simp only [A286925, Nat.add_sub_cancel]

end A286925

/-! ## A286925.P10079527556925494482

`and(n, A286726(n+1))`
-/

namespace A286925.P10079527556925494482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A286726 (n + 1))

end

end A286925.P10079527556925494482

namespace A286925

/-- `and(n, A286726(n+1))` -/
def P10079527556925494482.Spec : Prop :=
  ∀ n, P10079527556925494482.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P10503601251505242793

`and(n, char[A286687(n+1)])`
-/

namespace A286925.P10503601251505242793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A286925.P10503601251505242793

namespace A286925

/-- `and(n, char[A286687(n+1)])` -/
def P10503601251505242793.Spec : Prop :=
  ∀ n, (P10503601251505242793.a n : ℤ) = A286925 (n + 1)

end A286925

/-! ## A286925.P6638468779135316155

`n%(A286685(n+1)-2)`
-/

namespace A286925.P6638468779135316155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A286685 (n + 1) - 2)

end

end A286925.P6638468779135316155

namespace A286925

/-- `n%(A286685(n+1)-2)` -/
def P6638468779135316155.Spec : Prop :=
  ∀ n, P6638468779135316155.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P575306435481896587

`A289035(A019303(n))`
-/

namespace A286925.P575306435481896587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (A019303 n).toNat

end

end A286925.P575306435481896587

namespace A286925

/-- `A289035(A019303(n))` -/
def P575306435481896587.Spec : Prop :=
  ∀ n, P575306435481896587.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P17905738726582880783

`A286688(A028310(n))`
-/

namespace A286925.P17905738726582880783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A028310 n).toNat

end

end A286925.P17905738726582880783

namespace A286925

/-- `A286688(A028310(n))` -/
def P17905738726582880783.Spec : Prop :=
  ∀ n, P17905738726582880783.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P17842663624394026123

`A171588(A152271(n))`
-/

namespace A286925.P17842663624394026123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A152271 n).toNat

end

end A286925.P17842663624394026123

namespace A286925

/-- `A171588(A152271(n))` -/
def P17842663624394026123.Spec : Prop :=
  ∀ n, P17842663624394026123.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P9894877242578437686

`A286685(A093178(n))`
-/

namespace A286925.P9894877242578437686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A093178 n).toNat

end

end A286925.P9894877242578437686

namespace A286925

/-- `A286685(A093178(n))` -/
def P9894877242578437686.Spec : Prop :=
  ∀ n, P9894877242578437686.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P8706217593368787232

`A286726(A133265(n))`
-/

namespace A286925.P8706217593368787232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A133265 n).toNat

end

end A286925.P8706217593368787232

namespace A286925

/-- `A286726(A133265(n))` -/
def P8706217593368787232.Spec : Prop :=
  ∀ n, P8706217593368787232.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P7879732257371556005

`A286688(A004442(n)+1)`
-/

namespace A286925.P7879732257371556005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A004442 n + 1).toNat

end

end A286925.P7879732257371556005

namespace A286925

/-- `A286688(A004442(n)+1)` -/
def P7879732257371556005.Spec : Prop :=
  ∀ n, P7879732257371556005.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P6297926541413260033

`A286688(A014681(n+1))`
-/

namespace A286925.P6297926541413260033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A014681 (n + 1)).toNat

end

end A286925.P6297926541413260033

namespace A286925

/-- `A286688(A014681(n+1))` -/
def P6297926541413260033.Spec : Prop :=
  ∀ n, P6297926541413260033.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P10747081095833107168

`A286726(A093178(n)+1)`
-/

namespace A286925.P10747081095833107168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A093178 n + 1).toNat

end

end A286925.P10747081095833107168

namespace A286925

/-- `A286726(A093178(n)+1)` -/
def P10747081095833107168.Spec : Prop :=
  ∀ n, P10747081095833107168.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P13815487941619609224

`A286688(A103889(n+1))`
-/

namespace A286925.P13815487941619609224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A103889 (n + 1)).toNat

end

end A286925.P13815487941619609224

namespace A286925

/-- `A286688(A103889(n+1))` -/
def P13815487941619609224.Spec : Prop :=
  ∀ n, P13815487941619609224.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P975015367801291160

`A286688(A114112(n+1))`
-/

namespace A286925.P975015367801291160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A114112 (n + 1)).toNat

end

end A286925.P975015367801291160

namespace A286925

/-- `A286688(A114112(n+1))` -/
def P975015367801291160.Spec : Prop :=
  ∀ n, P975015367801291160.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P3607447896682540059

`A286688(A004277(n)-n)`
-/

namespace A286925.P3607447896682540059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A004277 n - (n : ℤ)).toNat

end

end A286925.P3607447896682540059

namespace A286925

/-- `A286688(A004277(n)-n)` -/
def P3607447896682540059.Spec : Prop :=
  ∀ n, P3607447896682540059.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P17142335573921297695

`A286688(gcd(n, A004277(n)))`
-/

namespace A286925.P17142335573921297695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (Int.gcd (n : ℤ) (A004277 n))

end

end A286925.P17142335573921297695

namespace A286925

/-- `A286688(gcd(n, A004277(n)))` -/
def P17142335573921297695.Spec : Prop :=
  ∀ n, P17142335573921297695.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P3067851937549204127

`A000035(n)-A286907(n+1)`
-/

namespace A286925.P3067851937549204127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A286907 (n + 1)

end

end A286925.P3067851937549204127

namespace A286925

/-- `A000035(n)-A286907(n+1)` -/
def P3067851937549204127.Spec : Prop :=
  ∀ n, P3067851937549204127.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P1210851572066931677

`A000035(n*A286726(n+1))`
-/

namespace A286925.P1210851572066931677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) * A286726 (n + 1)).toNat

end

end A286925.P1210851572066931677

namespace A286925

/-- `A000035(n*A286726(n+1))` -/
def P1210851572066931677.Spec : Prop :=
  ∀ n, P1210851572066931677.a n = A286925 (n + 1)

end A286925

/-! ## A286925.P4375723037819024633

`A286726(A286726(n+1)+n+1)`
-/

namespace A286925.P4375723037819024633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A286726 (n + 1) + (n + 1 : ℤ)).toNat

end

end A286925.P4375723037819024633

namespace A286925

/-- `A286726(A286726(n+1)+n+1)` -/
def P4375723037819024633.Spec : Prop :=
  ∀ n, P4375723037819024633.a n = A286925 (n + 1)

end A286925

/-!
# A286926: Positions of 0 in A286925; complement of A286927.

The programs for A286926, the canonical program `A286926.P4754940036988776719` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286926 has offset 1).

The definition of A286926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286926.P5946971291848215464

`comp[2*comp[floor((n+1)*sqrt(2))]]`
-/

namespace A286926.P5946971291848215464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A286926.P5946971291848215464

namespace A286926

/-- `comp[2*comp[floor((n+1)*sqrt(2))]]` -/
def P5946971291848215464.Spec : Prop :=
  ∀ n, (P5946971291848215464.a n : ℤ) = A286926 (n + 1)

end A286926

/-! ## A286926.P17389747724566725685

`comp[A286690(n+1)]+1`
-/

namespace A286926.P17389747724566725685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286926.P17389747724566725685

namespace A286926

/-- `comp[A286690(n+1)]+1` -/
def P17389747724566725685.Spec : Prop :=
  ∀ n, (P17389747724566725685.a n : ℤ) = A286926 (n + 1)

end A286926

/-! ## A286926.P1634792362141025411

`floor(∑[sqrt(A001030(n+1))])`
-/

namespace A286926.P1634792362141025411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001030 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A286926.P1634792362141025411

namespace A286926

/-- `floor(∑[sqrt(A001030(n+1))])` -/
def P1634792362141025411.Spec : Prop :=
  ∀ n, P1634792362141025411.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P6950170651382790330

`∑[2-Δ[A097509(n)]²]`
-/

namespace A286926.P6950170651382790330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286926.P6950170651382790330

namespace A286926

/-- `∑[2-Δ[A097509(n)]²]` -/
def P6950170651382790330.Spec : Prop :=
  ∀ n, P6950170651382790330.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P18235390068817640721

`round(2*A286992(n+1)/3)`
-/

namespace A286926.P18235390068817640721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((A286992 (n + 1) : ℚ) / 3))

end

end A286926.P18235390068817640721

namespace A286926

/-- `round(2*A286992(n+1)/3)` -/
def P18235390068817640721.Spec : Prop :=
  ∀ n, P18235390068817640721.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P10819644672239789901

`comp[A098021(n+1)+n]+1`
-/

namespace A286926.P10819644672239789901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286926.P10819644672239789901

namespace A286926

/-- `comp[A098021(n+1)+n]+1` -/
def P10819644672239789901.Spec : Prop :=
  ∀ n, (P10819644672239789901.a n : ℤ) = A286926 (n + 1)

end A286926

/-! ## A286926.P12968637513772745991

`∪[2*n+1, A286687(n+1)]`
-/

namespace A286926.P12968637513772745991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286926.P12968637513772745991

namespace A286926

/-- `∪[2*n+1, A286687(n+1)]` -/
def P12968637513772745991.Spec : Prop :=
  ∀ n, (P12968637513772745991.a n : ℤ) = A286926 (n + 1)

end A286926

/-! ## A286926.P15860048997921705141

`∪[2*n+1, A286909(n+1)]`
-/

namespace A286926.P15860048997921705141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286926.P15860048997921705141

namespace A286926

/-- `∪[2*n+1, A286909(n+1)]` -/
def P15860048997921705141.Spec : Prop :=
  ∀ n, (P15860048997921705141.a n : ℤ) = A286926 (n + 1)

end A286926

/-! ## A286926.P16424567220065005470

`∪[A286687(n+1), A004281(n)]`
-/

namespace A286926.P16424567220065005470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286926.P16424567220065005470

namespace A286926

/-- `∪[A286687(n+1), A004281(n)]` -/
def P16424567220065005470.Spec : Prop :=
  ∀ n, (P16424567220065005470.a n : ℤ) = A286926 (n + 1)

end A286926

/-! ## A286926.P12907901650014767371

`∪[A286909(n+1), A004281(n)]`
-/

namespace A286926.P12907901650014767371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286926.P12907901650014767371

namespace A286926

/-- `∪[A286909(n+1), A004281(n)]` -/
def P12907901650014767371.Spec : Prop :=
  ∀ n, (P12907901650014767371.a n : ℤ) = A286926 (n + 1)

end A286926

/-! ## A286926.P4754940036988776719

`∑[A144611(n+1)+A144611(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286926

/-- `∑[A144611(n+1)+A144611(n)]` -/
def P4754940036988776719.Spec : Prop :=
  ∀ n, P4754940036988776719.a n = A286926 (n + 1)

theorem P4754940036988776719.correct : P4754940036988776719.Spec := by
  intro n
  simp only [A286926, Nat.add_sub_cancel]

end A286926

/-! ## A286926.P11343662776679462905

`A097508(A097508(n)+1)+n+1`
-/

namespace A286926.P11343662776679462905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A097508 n + 1).toNat + (n + 1 : ℤ)

end

end A286926.P11343662776679462905

namespace A286926

/-- `A097508(A097508(n)+1)+n+1` -/
def P11343662776679462905.Spec : Prop :=
  ∀ n, P11343662776679462905.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P7385176986809359548

`A049472(A195119(A097508(n)))+n+1`
-/

namespace A286926.P7385176986809359548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A195119 (A097508 n).toNat).toNat + (n + 1 : ℤ)

end

end A286926.P7385176986809359548

namespace A286926

/-- `A049472(A195119(A097508(n)))+n+1` -/
def P7385176986809359548.Spec : Prop :=
  ∀ n, P7385176986809359548.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P17440220192956478571

`floor(∑[sqrt(A006337(n+2))])`
-/

namespace A286926.P17440220192956478571
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006337 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A286926.P17440220192956478571

namespace A286926

/-- `floor(∑[sqrt(A006337(n+2))])` -/
def P17440220192956478571.Spec : Prop :=
  ∀ n, P17440220192956478571.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P13314080128004294130

`∑[2-A188038(n+2)]-1`
-/

namespace A286926.P13314080128004294130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A188038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A286926.P13314080128004294130

namespace A286926

/-- `∑[2-A188038(n+2)]-1` -/
def P13314080128004294130.Spec : Prop :=
  ∀ n, P13314080128004294130.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P14346321478450125319

`A074840(n+1)+A074840(n+2)`
-/

namespace A286926.P14346321478450125319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (n + 1) + A074840 (n + 2)

end

end A286926.P14346321478450125319

namespace A286926

/-- `A074840(n+1)+A074840(n+2)` -/
def P14346321478450125319.Spec : Prop :=
  ∀ n, P14346321478450125319.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P16292090523449378932

`A286988(n+1)-A001951(n+2)`
-/

namespace A286926.P16292090523449378932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286988 (n + 1) - A001951 (n + 2)

end

end A286926.P16292090523449378932

namespace A286926

/-- `A286988(n+1)-A001951(n+2)` -/
def P16292090523449378932.Spec : Prop :=
  ∀ n, P16292090523449378932.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P3818171268900942714

`A183138(A183138(n+2)+A183138(n+1)+1)+n+1`
-/

namespace A286926.P3818171268900942714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (A183138 (n + 2) + A183138 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A286926.P3818171268900942714

namespace A286926

/-- `A183138(A183138(n+2)+A183138(n+1)+1)+n+1` -/
def P3818171268900942714.Spec : Prop :=
  ∀ n, P3818171268900942714.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P14645761396010829342

`a(n-1)+A286688(a(n-1))+1` with `a(0)=1`
-/

namespace A286926.P14645761396010829342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A286688 (a (n - 1)).toNat + 1)

end

end A286926.P14645761396010829342

namespace A286926

/-- `a(n-1)+A286688(a(n-1))+1` -/
def P14645761396010829342.Spec : Prop :=
  ∀ n, P14645761396010829342.a n = A286926 (n + 1)

end A286926

/-! ## A286926.P16687825335411307166

`A286689(n+1)-A286925(A286689(n+1))`
-/

namespace A286926.P16687825335411307166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (n + 1) - A286925 (A286689 (n + 1)).toNat

end

end A286926.P16687825335411307166

namespace A286926

/-- `A286689(n+1)-A286925(A286689(n+1))` -/
def P16687825335411307166.Spec : Prop :=
  ∀ n, P16687825335411307166.a n = A286926 (n + 1)

end A286926

/-!
# A286927: Positions of 1 in A286925; complement of A286926.

The programs for A286927, the canonical program `A286927.P17246180618763280689` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286927 has offset 1).

The definition of A286927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286927.P17246180618763280689

`2*A001952(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286927

/-- `2*A001952(n+1)` -/
def P17246180618763280689.Spec : Prop :=
  ∀ n, P17246180618763280689.a n = A286927 (n + 1)

theorem P17246180618763280689.correct : P17246180618763280689.Spec := by
  intro n
  simp only [A286927, Nat.add_sub_cancel]

end A286927

/-! ## A286927.P3511997868341024470

`2*comp[floor(n*sqrt(2))]`
-/

namespace A286927.P3511997868341024470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286927.P3511997868341024470

namespace A286927

/-- `2*comp[floor(n*sqrt(2))]` -/
def P3511997868341024470.Spec : Prop :=
  ∀ n, (P3511997868341024470.a n : ℤ) = A286927 (n + 1)

end A286927

/-! ## A286927.P15971974834637497560

`and(-2, floor((sqrt(8)+4)*(n+1)))`
-/

namespace A286927.P15971974834637497560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ⌊(Real.sqrt (8 : ℝ) + 4) * (n + 1 : ℝ)⌋

end

end A286927.P15971974834637497560

namespace A286927

/-- `and(-2, floor((sqrt(8)+4)*(n+1)))` -/
def P15971974834637497560.Spec : Prop :=
  ∀ n, P15971974834637497560.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P9439262912431373733

`floor((sqrt(8)+3)*(n+1))-floor((n+1)*sqrt(8))%2+n+1`
-/

namespace A286927.P9439262912431373733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (8 : ℝ) + 3) * (n + 1 : ℝ)⌋ - Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋ 2 + (n + 1 : ℤ)

end

end A286927.P9439262912431373733

namespace A286927

/-- `floor((sqrt(8)+3)*(n+1))-floor((n+1)*sqrt(8))%2+n+1` -/
def P9439262912431373733.Spec : Prop :=
  ∀ n, P9439262912431373733.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P3319210385060429443

`A286690(n+1)+1`
-/

namespace A286927.P3319210385060429443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286690 (n + 1) + 1

end

end A286927.P3319210385060429443

namespace A286927

/-- `A286690(n+1)+1` -/
def P3319210385060429443.Spec : Prop :=
  ∀ n, P3319210385060429443.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P17734096966900378170

`∑[2*A276864(n+1)]`
-/

namespace A286927.P17734096966900378170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286927.P17734096966900378170

namespace A286927

/-- `∑[2*A276864(n+1)]` -/
def P17734096966900378170.Spec : Prop :=
  ∀ n, P17734096966900378170.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P3463288207870447700

`2*A184922(n+1)+2`
-/

namespace A286927.P3463288207870447700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184922 (n + 1) + 2

end

end A286927.P3463288207870447700

namespace A286927

/-- `2*A184922(n+1)+2` -/
def P3463288207870447700.Spec : Prop :=
  ∀ n, P3463288207870447700.a n = A286927 (n + 1)

theorem P3463288207870447700.correct : P3463288207870447700.Spec := by
  intro n
  simp only [A286927, Nat.add_sub_cancel, A286927.P3463288207870447700.a, A286927.P17246180618763280689.a, A001952, A001952.P10508951561380553.a, A184922, A184922.P3022455773076834712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286927

/-! ## A286927.P12658327015652332357

`A098021(n+1)+1+n`
-/

namespace A286927.P12658327015652332357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) + 1 + (n : ℤ)

end

end A286927.P12658327015652332357

namespace A286927

/-- `A098021(n+1)+1+n` -/
def P12658327015652332357.Spec : Prop :=
  ∀ n, P12658327015652332357.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P3303957293584478798

`A140868(n+1)+2+n`
-/

namespace A286927.P3303957293584478798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1) + 2 + (n : ℤ)

end

end A286927.P3303957293584478798

namespace A286927

/-- `A140868(n+1)+2+n` -/
def P3303957293584478798.Spec : Prop :=
  ∀ n, P3303957293584478798.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P14522307295384539989

`A022804(n+1)+2*(n+1)`
-/

namespace A286927.P14522307295384539989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 (n + 1) + (2 * (n + 1) : ℤ)

end

end A286927.P14522307295384539989

namespace A286927

/-- `A022804(n+1)+2*(n+1)` -/
def P14522307295384539989.Spec : Prop :=
  ∀ n, P14522307295384539989.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P18023210249027135292

`A189380(n+1)+3*(n+1)`
-/

namespace A286927.P18023210249027135292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189380 (n + 1) + (3 * (n + 1) : ℤ)

end

end A286927.P18023210249027135292

namespace A286927

/-- `A189380(n+1)+3*(n+1)` -/
def P18023210249027135292.Spec : Prop :=
  ∀ n, P18023210249027135292.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P3388996338661609868

`A286909(n+1)+4*(n+1)`
-/

namespace A286927.P3388996338661609868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1) + (4 * (n + 1) : ℤ)

end

end A286927.P3388996338661609868

namespace A286927

/-- `A286909(n+1)+4*(n+1)` -/
def P3388996338661609868.Spec : Prop :=
  ∀ n, P3388996338661609868.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P11200870969895926990

`A286905(n+1)+5*(n+1)`
-/

namespace A286927.P11200870969895926990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 1) + (5 * (n + 1) : ℤ)

end

end A286927.P11200870969895926990

namespace A286927

/-- `A286905(n+1)+5*(n+1)` -/
def P11200870969895926990.Spec : Prop :=
  ∀ n, P11200870969895926990.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P15639122044294859348

`∑[A018252(Δ[A001951(n)]+2)]`
-/

namespace A286927.P15639122044294859348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286927.P15639122044294859348

namespace A286927

/-- `∑[A018252(Δ[A001951(n)]+2)]` -/
def P15639122044294859348.Spec : Prop :=
  ∀ n, P15639122044294859348.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P6180312566137016701

`A187338(n+1)+A003151(n+1)`
-/

namespace A286927.P6180312566137016701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1) + A003151 (n + 1)

end

end A286927.P6180312566137016701

namespace A286927

/-- `A187338(n+1)+A003151(n+1)` -/
def P6180312566137016701.Spec : Prop :=
  ∀ n, P6180312566137016701.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P17159769371939225248

`A188383(n+1)-A001951(n+1)`
-/

namespace A286927.P17159769371939225248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (n + 1) - A001951 (n + 1)

end

end A286927.P17159769371939225248

namespace A286927

/-- `A188383(n+1)-A001951(n+1)` -/
def P17159769371939225248.Spec : Prop :=
  ∀ n, P17159769371939225248.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P15517745049107155659

`A189381(n+1)-A003153(n+1)`
-/

namespace A286927.P15517745049107155659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189381 (n + 1) - A003153 (n + 1)

end

end A286927.P15517745049107155659

namespace A286927

/-- `A189381(n+1)-A003153(n+1)` -/
def P15517745049107155659.Spec : Prop :=
  ∀ n, P15517745049107155659.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P13058454521428817888

`xor(A187393(n+1), A197879(n+1))`
-/

namespace A286927.P13058454521428817888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187393 (n + 1)) (A197879 (n + 1))

end

end A286927.P13058454521428817888

namespace A286927

/-- `xor(A187393(n+1), A197879(n+1))` -/
def P13058454521428817888.Spec : Prop :=
  ∀ n, P13058454521428817888.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P5138043562851432244

`A001952(n+1)+A080754(n+1)+n`
-/

namespace A286927.P5138043562851432244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + (A080754 (n + 1) + (n : ℤ))

end

end A286927.P5138043562851432244

namespace A286927

/-- `A001952(n+1)+A080754(n+1)+n` -/
def P5138043562851432244.Spec : Prop :=
  ∀ n, P5138043562851432244.a n = A286927 (n + 1)

end A286927

/-! ## A286927.P15237652767427553282

`A188039(n+2)+n-1`
-/

namespace A286927.P15237652767427553282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 2) + ((n : ℤ) - 1)

end

end A286927.P15237652767427553282

namespace A286927

/-- `A188039(n+2)+n-1` -/
def P15237652767427553282.Spec : Prop :=
  ∀ n, P15237652767427553282.a n = A286927 (n + 1)

end A286927

/-!
# A286928: Number of solutions to the equation x_1 + ... + x_n =0 satisfying -n<=x_i<=n (1<=i<=n).

The programs for A286928, there is no canonical definition to state claims against.
-/

/-! ## A286928.P5537114785029634725

`A201552((1-n)²+n²)`
-/

namespace A286928.P5537114785029634725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A286928.P5537114785029634725

/-! ## A286928.P5362539321971631126

`A077042(∑[A017185(n)])`
-/

namespace A286928.P5362539321971631126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286928.P5362539321971631126

/-! ## A286928.P5735424237946991967

`A077042(A062708(n+1))`
-/

namespace A286928.P5735424237946991967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A062708 (n + 1)).toNat

end

end A286928.P5735424237946991967

/-! ## A286928.P3778470294271640944

`A077042(A117625(n+1)+n)`
-/

namespace A286928.P3778470294271640944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A117625 (n + 1) + (n : ℤ)).toNat

end

end A286928.P3778470294271640944

/-! ## A286928.P5372722896582638736

`A077042(∑[A016789(A008585(n))])`
-/

namespace A286928.P5372722896582638736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286928.P5372722896582638736

/-!
# A286929: Number of partitions of n such that each part is no more than 3 more than the sum of all smaller parts.

The programs for A286929, there is no canonical definition to state claims against.
-/

/-! ## A286929.P13194299317058752826

`A251629(A118052(n+1))`
-/

namespace A286929.P13194299317058752826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (A118052 (n + 1)).toNat

end

end A286929.P13194299317058752826

/-! ## A286929.P1892298750558424929

`A347520(A240079(n+1))`
-/

namespace A286929.P1892298750558424929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A240079 (n + 1)).toNat

end

end A286929.P1892298750558424929

/-! ## A286929.P15245940287787486980

`A308283(ceil(3*n/2)%A292368(n+1))`
-/

namespace A286929.P15245940287787486980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308283 (Int.tmod ⌈3 * ((n : ℚ) / 2)⌉ (A292368 (n + 1))).toNat

end

end A286929.P15245940287787486980

/-! ## A286929.P15185548032790467762

`A065200(A001935(n)%A241482(3*(n+1)))`
-/

namespace A286929.P15185548032790467762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (Int.tmod (A001935 n) (A241482 (3 * (n + 1)))).toNat

end

end A286929.P15185548032790467762

/-! ## A286929.P12413387124525235962

`A061071(A089976(n))`
-/

namespace A286929.P12413387124525235962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A089976 n).toNat

end

end A286929.P12413387124525235962

/-!
# A286930: Integers whose double is a square and whose triple is a cube.

The programs for A286930, the canonical program `A286930.P7515399768226884057` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286930 has offset 1).

The definition of A286930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286930.P7515399768226884057

`72*n^6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286930

/-- `72*n^6` -/
def P7515399768226884057.Spec : Prop :=
  ∀ n, (P7515399768226884057.a n : ℤ) = A286930 (n + 1)

theorem P7515399768226884057.correct : P7515399768226884057.Spec := by
  intro n
  simp only [A286930, Nat.add_sub_cancel]

end A286930

/-!
# A286931: Number of (not necessarily connected) symmetric (edge- and vertex-transitive) graphs with n nodes.

The programs for A286931, there is no canonical definition to state claims against.
-/

/-! ## A286931.P9069487742678288583

`A180240(n+1)+1`
-/

namespace A286931.P9069487742678288583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180240 (n + 1) + 1

end

end A286931.P9069487742678288583

/-! ## A286931.P9947117901381072668

`∑{d}[n+1, A133181(#)]`
-/

namespace A286931.P9947117901381072668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133181 d

end

end A286931.P9947117901381072668

/-! ## A286931.P10948773142395447754

`A348553(A180240(n+1))`
-/

namespace A286931.P10948773142395447754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A180240 (n + 1)).toNat

end

end A286931.P10948773142395447754

/-! ## A286931.P8320855912409392632

`A133181(n+1)+A087145(n+1)`
-/

namespace A286931.P8320855912409392632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133181 (n + 1) + A087145 (n + 1)

end

end A286931.P8320855912409392632

/-! ## A286931.P801615958558988158

`A286280(ceil(acot(n)+n))+A087145(n+1)`
-/

namespace A286931.P801615958558988158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286280 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat + A087145 (n + 1)

end

end A286931.P801615958558988158

/-!
# A286932: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of continued fraction 1/(1 + k*x/(1 + k*x^2/(1 + k*x^3/(1 + k*x^4/(1 + k*x^5/(1 + ...)))))).

The programs for A286932, there is no canonical definition to state claims against.
-/

/-! ## A286932.P16671712133627034619

`A292131(n)^A180662(n)!`
-/

namespace A286932.P16671712133627034619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 n ^ Nat.factorial (A180662 n).toNat

end

end A286932.P16671712133627034619

/-! ## A286932.P4902806686880879091

`A292131(n)^A221459(n+1)!`
-/

namespace A286932.P4902806686880879091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 n ^ Nat.factorial (A221459 (n + 1)).toNat

end

end A286932.P4902806686880879091

/-! ## A286932.P3429303571825851073

`A292131(n)^A256608(n+1)!`
-/

namespace A286932.P3429303571825851073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 n ^ Nat.factorial (A256608 (n + 1)).toNat

end

end A286932.P3429303571825851073

/-! ## A286932.P11288795842726106748

`A292131(n)^A027750(3*(n+1))!`
-/

namespace A286932.P11288795842726106748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 n ^ Nat.factorial (A027750 (3 * (n + 1))).toNat

end

end A286932.P11288795842726106748

/-! ## A286932.P6849119612305870537

`A292131(n)^A000045(A143632(n))`
-/

namespace A286932.P6849119612305870537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292131 n : ℚ) ^ (A000045 (A143632 n).toNat : ℤ)

end

end A286932.P6849119612305870537

/-!
# A286933: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of continued fraction 1/(1 - k*x/(1 - k*x^2/(1 - k*x^3/(1 - k*x^4/(1 - k*x^5/(1 - ...)))))).

The programs for A286933, there is no canonical definition to state claims against.
-/

/-! ## A286933.P8718950764030031110

`A082858(A102480(n))+A003992(n)`
-/

namespace A286933.P8718950764030031110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A102480 n).toNat + A003992 n

end

end A286933.P8718950764030031110

/-! ## A286933.P12604401523165157611

`A383511(A071944(n))+A071921(n)`
-/

namespace A286933.P12604401523165157611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383511 (A071944 n).toNat + A071921 n

end

end A286933.P12604401523165157611

/-! ## A286933.P9198340438354034286

`A003992(n)+A124762(A351790(n))²`
-/

namespace A286933.P9198340438354034286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n + A124762 (A351790 n).toNat ^ 2

end

end A286933.P9198340438354034286

/-! ## A286933.P15929175050063972870

`A031280(A342576(n+3))*A210391(n)`
-/

namespace A286933.P15929175050063972870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031280 (A342576 (n + 3)).toNat * A210391 n

end

end A286933.P15929175050063972870

/-! ## A286933.P123830244092038033

`A307299(A355423(n))`
-/

namespace A286933.P123830244092038033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307299 (A355423 n).toNat

end

end A286933.P123830244092038033

/-!
# A286934: Number of partitions of n into centered square primes (A027862).

The programs for A286934, there is no canonical definition to state claims against.
-/

/-! ## A286934.P88030939630275531

`∑[A011639(n)]^A059927(n)`
-/

namespace A286934.P88030939630275531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A059927 n : ℤ)

end

end A286934.P88030939630275531

/-! ## A286934.P7889702465067339391

`∑[A011639(n)]^A129274(n)`
-/

namespace A286934.P7889702465067339391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A129274 n : ℤ)

end

end A286934.P7889702465067339391

/-! ## A286934.P18297858292501616604

`∑[A011639(n)]^A219795(n)`
-/

namespace A286934.P18297858292501616604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A219795 n : ℤ)

end

end A286934.P18297858292501616604

/-! ## A286934.P8495805976354044754

`∑[A011639(n)]%A059927(n+1)`
-/

namespace A286934.P8495805976354044754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A059927 (n + 1))

end

end A286934.P8495805976354044754

/-! ## A286934.P5447895979844084439

`∑[A011639(n)]^A270339(n+1)`
-/

namespace A286934.P5447895979844084439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A270339 (n + 1) : ℤ)

end

end A286934.P5447895979844084439

/-!
# A286935: Number of partitions of n into primes which are the difference of two consecutive cubes (A002407).

The programs for A286935, there is no canonical definition to state claims against.
-/

/-! ## A286935.P14972402703573640644

`∑[A016332(n)]^A031285(n)`
-/

namespace A286935.P14972402703573640644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A031285 n : ℤ)

end

end A286935.P14972402703573640644

/-! ## A286935.P5377022709437840465

`ceil(A016332(n)/A103396(n+1))`
-/

namespace A286935.P5377022709437840465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016332 n : ℚ) / (A103396 (n + 1) : ℚ)⌉

end

end A286935.P5377022709437840465

/-! ## A286935.P13843428419717214457

`ceil(A016332(n)/A115811(n+1))`
-/

namespace A286935.P13843428419717214457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016332 n : ℚ) / (A115811 (n + 1) : ℚ)⌉

end

end A286935.P13843428419717214457

/-! ## A286935.P13069037765538660009

`∑[A016332(n)]%A336322(2*n+5)`
-/

namespace A286935.P13069037765538660009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A336322 (2 * n + 5))

end

end A286935.P13069037765538660009

/-! ## A286935.P16235371481903574074

`A188371(A162198(n+2))`
-/

namespace A286935.P16235371481903574074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188371 (A162198 (n + 2)).toNat

end

end A286935.P16235371481903574074

/-!
# A286937: {111->null}-transform of the Sturmian word A080764.

The programs for A286937, the canonical program `A286937.P8216881898967728310` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286937 has offset 1).

The definition of A286937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286937.P8216881898967728310

`1-A286804(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286937

/-- `1-A286804(n+1)` -/
def P8216881898967728310.Spec : Prop :=
  ∀ n, P8216881898967728310.a n = A286937 (n + 1)

theorem P8216881898967728310.correct : P8216881898967728310.Spec := by
  intro n
  simp only [A286937, Nat.add_sub_cancel]

end A286937

/-! ## A286937.P13173849623202519041

`char[A286805(n+1)-1]`
-/

namespace A286937.P13173849623202519041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286805 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286937.P13173849623202519041

namespace A286937

/-- `char[A286805(n+1)-1]` -/
def P13173849623202519041.Spec : Prop :=
  ∀ n, (P13173849623202519041.a n : ℤ) = A286937 (n + 1)

end A286937

/-! ## A286937.P15276285289957590879

`1-char[A286806(n+1)-1]`
-/

namespace A286937.P15276285289957590879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286806 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286937.P15276285289957590879

namespace A286937

/-- `1-char[A286806(n+1)-1]` -/
def P15276285289957590879.Spec : Prop :=
  ∀ n, P15276285289957590879.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P10628232154391882500

`xor(1, A286804(xor(1, xor(1, n+1))))`
-/

namespace A286937.P10628232154391882500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A286804 (Nat.xor 1 (Nat.xor 1 (n + 1))))

end

end A286937.P10628232154391882500

namespace A286937

/-- `xor(1, A286804(xor(1, xor(1, n+1))))` -/
def P10628232154391882500.Spec : Prop :=
  ∀ n, P10628232154391882500.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P17552911029236828878

`and(1, A286804(n+1)+A215495(n))`
-/

namespace A286937.P17552911029236828878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A286804 (n + 1) + A215495 n)

end

end A286937.P17552911029236828878

namespace A286937

/-- `and(1, A286804(n+1)+A215495(n))` -/
def P17552911029236828878.Spec : Prop :=
  ∀ n, P17552911029236828878.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P16032321066418938821

`(A286804(n+1)+A065091(n+1))%2`
-/

namespace A286937.P16032321066418938821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286804 (n + 1) + A065091 (n + 1)) 2

end

end A286937.P16032321066418938821

namespace A286937

/-- `(A286804(n+1)+A065091(n+1))%2` -/
def P16032321066418938821.Spec : Prop :=
  ∀ n, P16032321066418938821.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P15642998807433659174

`A000010(n*A286804(n+1)+1)%2`
-/

namespace A286937.P15642998807433659174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n : ℤ) * A286804 (n + 1) + 1).toNat) 2

end

end A286937.P15642998807433659174

namespace A286937

/-- `A000010(n*A286804(n+1)+1)%2` -/
def P15642998807433659174.Spec : Prop :=
  ∀ n, P15642998807433659174.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P12414517530598493905

`xor(char[A222246(n)], A286804(n+1))`
-/

namespace A286937.P12414517530598493905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A286804 (n + 1))

end

end A286937.P12414517530598493905

namespace A286937

/-- `xor(char[A222246(n)], A286804(n+1))` -/
def P12414517530598493905.Spec : Prop :=
  ∀ n, P12414517530598493905.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P11168425962053449617

`A286804(A286806(n+1)+2*A286804(n+1))`
-/

namespace A286937.P11168425962053449617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286804 (A286806 (n + 1) + 2 * A286804 (n + 1)).toNat

end

end A286937.P11168425962053449617

namespace A286937

/-- `A286804(A286806(n+1)+2*A286804(n+1))` -/
def P11168425962053449617.Spec : Prop :=
  ∀ n, P11168425962053449617.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P3001788475047852032

`A286804(A286804(n+1)+A286806(n+1)+A286804(n+1))`
-/

namespace A286937.P3001788475047852032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286804 (A286804 (n + 1) + (A286806 (n + 1) + A286804 (n + 1))).toNat

end

end A286937.P3001788475047852032

namespace A286937

/-- `A286804(A286804(n+1)+A286806(n+1)+A286804(n+1))` -/
def P3001788475047852032.Spec : Prop :=
  ∀ n, P3001788475047852032.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P13932521895149371400

`A171588(A286804(n+1)+A001952(n+1))`
-/

namespace A286937.P13932521895149371400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A286804 (n + 1) + A001952 (n + 1)).toNat

end

end A286937.P13932521895149371400

namespace A286937

/-- `A171588(A286804(n+1)+A001952(n+1))` -/
def P13932521895149371400.Spec : Prop :=
  ∀ n, P13932521895149371400.a n = A286937 (n + 1)

end A286937

/-! ## A286937.P13839677659810838712

`A286807(A286809(3*n+5)+A286804(n+1))`
-/

namespace A286937.P13839677659810838712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286807 (A286809 (3 * n + 5) + A286804 (n + 1)).toNat

end

end A286937.P13839677659810838712

namespace A286937

/-- `A286807(A286809(3*n+5)+A286804(n+1))` -/
def P13839677659810838712.Spec : Prop :=
  ∀ n, P13839677659810838712.a n = A286937 (n + 1)

end A286937

/-!
# A286938: Length of n-th iterate of the mapping 00->001, 1->10, as in A284932.

The programs for A286938, the canonical program `A286938.P2757245377880544492` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286938 has offset 0).

The definition of A286938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286938.P17790998769191447080

`A164457(n)+A130716(n)`
-/

namespace A286938.P17790998769191447080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 n + A130716 n

end

end A286938.P17790998769191447080

namespace A286938

/-- `A164457(n)+A130716(n)` -/
def P17790998769191447080.Spec : Prop :=
  ∀ n, P17790998769191447080.a n = A286938 n

end A286938

/-! ## A286938.P11330311466286275546

`A164457(n)+char[A024032(n)]`
-/

namespace A286938.P11330311466286275546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286938.P11330311466286275546

namespace A286938

/-- `A164457(n)+char[A024032(n)]` -/
def P11330311466286275546.Spec : Prop :=
  ∀ n, P11330311466286275546.a n = A286938 n

end A286938

/-! ## A286938.P461613613687107111

`A164457(n)+char[A060024(n)]`
-/

namespace A286938.P461613613687107111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060024 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286938.P461613613687107111

namespace A286938

/-- `A164457(n)+char[A060024(n)]` -/
def P461613613687107111.Spec : Prop :=
  ∀ n, P461613613687107111.a n = A286938 n

end A286938

/-! ## A286938.P14570971179857119966

`A164457(n)+A000045(C(2, n))`
-/

namespace A286938.P14570971179857119966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 n + A000045 (Nat.choose 2 n)

end

end A286938.P14570971179857119966

namespace A286938

/-- `A164457(n)+A000045(C(2, n))` -/
def P14570971179857119966.Spec : Prop :=
  ∀ n, P14570971179857119966.a n = A286938 n

end A286938

/-! ## A286938.P6126850246071311102

`A164457(n)+A000081(C(2, n))`
-/

namespace A286938.P6126850246071311102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 n + A000081 (Nat.choose 2 n)

end

end A286938.P6126850246071311102

namespace A286938

/-- `A164457(n)+A000081(C(2, n))` -/
def P6126850246071311102.Spec : Prop :=
  ∀ n, P6126850246071311102.a n = A286938 n

end A286938

/-! ## A286938.P3173546595853309193

`xor(A164457(n), A278105(n+1))`
-/

namespace A286938.P3173546595853309193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A164457 n) (A278105 (n + 1))

end

end A286938.P3173546595853309193

namespace A286938

/-- `xor(A164457(n), A278105(n+1))` -/
def P3173546595853309193.Spec : Prop :=
  ∀ n, P3173546595853309193.a n = A286938 n

end A286938

/-! ## A286938.P2757245377880544492

`2*a(n-1)-a(n-2)+2*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8, a(4)=13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286938

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-3*a(n-4)+a(n-5)` -/
def P2757245377880544492.Spec : Prop :=
  ∀ n, P2757245377880544492.a n = A286938 n

theorem P2757245377880544492.correct : P2757245377880544492.Spec := by
  intro n
  simp only [A286938]

end A286938

/-! ## A286938.P11395440720200109855

`A164457(n)+A023533(n²)`
-/

namespace A286938.P11395440720200109855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 n + A023533 (n ^ 2)

end

end A286938.P11395440720200109855

namespace A286938

/-- `A164457(n)+A023533(n²)` -/
def P11395440720200109855.Spec : Prop :=
  ∀ n, P11395440720200109855.a n = A286938 n

end A286938

/-!
# A286939: Fixed point of the mapping 00->001, 1->000, starting with 00.

The programs for A286939, there is no canonical definition to state claims against.
-/

/-! ## A286939.P13038164879418222400

`char[A285564(n+1)-1]`
-/

namespace A286939.P13038164879418222400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285564 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286939.P13038164879418222400

/-! ## A286939.P10121136104077241043

`char[comp[A285432(n+1)-1]]`
-/

namespace A286939.P10121136104077241043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285432 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286939.P10121136104077241043

/-! ## A286939.P2163621692273469948

`1-char[A285432(2*n+1-n)-1]`
-/

namespace A286939.P2163621692273469948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285432 (2 * n + 1 - n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286939.P2163621692273469948

/-! ## A286939.P16142830361480326776

`1-ceil(sin(char[A285432(n-(1-4/2))-1])²)`
-/

namespace A286939.P16142830361480326776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285432 (SequenceMachineLib.roundAway ((n : ℚ) - (1 - (4 : ℚ) / 2))).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈Real.sin ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) ^ 2⌉

end

end A286939.P16142830361480326776

/-! ## A286939.P2738484686853631629

`char[abs(A285564(A028310(n))-1)]`
-/

namespace A286939.P2738484686853631629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285564 (A028310 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286939.P2738484686853631629

/-!
# A286941: Irregular triangle read by rows: the n-th row corresponds to the totatives of the n-th primorial, A002110(n).

The programs for A286941, there is no canonical definition to state claims against.
-/

/-! ## A286941.P11510595350337717611

`A279864(n+2)/A020639(A279864(n+2))`
-/

namespace A286941.P11510595350337717611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279864 (n + 2) : ℚ) / (A020639 (A279864 (n + 2)).toNat : ℚ)

end

end A286941.P11510595350337717611

/-! ## A286941.P12639353892719609343

`A032742(A279864(n+2))`
-/

namespace A286941.P12639353892719609343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A279864 (n + 2)).toNat

end

end A286941.P12639353892719609343

/-! ## A286941.P3064460317506114352

`A056609(A279864(n+2)-1)`
-/

namespace A286941.P3064460317506114352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056609 (A279864 (n + 2) - 1).toNat

end

end A286941.P3064460317506114352

/-! ## A286941.P6248083204595506230

`A079068(record[A123624(A047227(n+1))])`
-/

namespace A286941.P6248083204595506230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123624 (A047227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A286941.P6248083204595506230

/-!
# A286943: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 233", based on the 5-celled von Neumann neighborhood.

The programs for A286943, there is no canonical definition to state claims against.
-/

/-! ## A286943.P11492676277174630615

`A007088(A286969(n))`
-/

namespace A286943.P11492676277174630615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286969 n).toNat

end

end A286943.P11492676277174630615

/-! ## A286943.P4126842435245202127

`A185544(2*A286969(n))`
-/

namespace A286943.P4126842435245202127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286969 n).toNat

end

end A286943.P4126842435245202127

/-!
# A286944: Number of ways to write n as x^2 + 15*y^2 + z*(3z+1)/2, where x and y are nonnegative integers and z is an integer.

The programs for A286944, there is no canonical definition to state claims against.
-/

/-! ## A286944.P17364917257502577540

`A210760(A006171(n))%A081844(A000720(3*n+4))`
-/

namespace A286944.P17364917257502577540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210760 (A006171 n).toNat) (A081844 (A000720 (3 * n + 4)).toNat)

end

end A286944.P17364917257502577540

/-! ## A286944.P34622352298198133

`A227481(or(13, A128870(n+1)))`
-/

namespace A286944.P34622352298198133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (Int.lor 13 (A128870 (n + 1))).toNat

end

end A286944.P34622352298198133

/-! ## A286944.P15911620265016701032

`A040968(A306220(n+1)+A080546(n))`
-/

namespace A286944.P15911620265016701032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040968 (A306220 (n + 1) + A080546 n).toNat

end

end A286944.P15911620265016701032

/-! ## A286944.P16417876954395828588

`gcd(A104993(A088925(n)), A165196(n+1))`
-/

namespace A286944.P16417876954395828588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104993 (A088925 n).toNat) (A165196 (n + 1))

end

end A286944.P16417876954395828588

/-! ## A286944.P17901199393578781448

`gcd(A000005(A332580(n+1)), A001678(2*(n+2)))`
-/

namespace A286944.P17901199393578781448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A332580 (n + 1)).toNat) (A001678 (2 * (n + 2)))

end

end A286944.P17901199393578781448

/-!
# A286945: Number of maximal matchings in the ladder graph P_2 X P_n.

The programs for A286945, the canonical program `A286945.P10749511650282632213` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286945 has offset 1).

The definition of A286945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286945.P10749511650282632213

`2*a(n-1)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11, a(4)=24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286945

/-- `2*a(n-1)+a(n-4)+a(n-5)` -/
def P10749511650282632213.Spec : Prop :=
  ∀ n, (P10749511650282632213.a n : ℤ) = A286945 (n + 1)

theorem P10749511650282632213.correct : P10749511650282632213.Spec := by
  intro n
  simp only [A286945, Nat.add_sub_cancel]

end A286945

/-! ## A286945.P7925692026490136017

`A288026(∑[n+2])`
-/

namespace A286945.P7925692026490136017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288026 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286945.P7925692026490136017

namespace A286945

/-- `A288026(∑[n+2])` -/
def P7925692026490136017.Spec : Prop :=
  ∀ n, P7925692026490136017.a n = A286945 (n + 1)

end A286945

/-! ## A286945.P9141548017759753611

`record[A288026(A133263(A028242(n)))]`
-/

namespace A286945.P9141548017759753611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288026 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286945.P9141548017759753611

namespace A286945

/-- `record[A288026(A133263(A028242(n)))]` -/
def P9141548017759753611.Spec : Prop :=
  ∀ n, P9141548017759753611.a n = A286945 (n + 1)

end A286945

/-! ## A286945.P1455238708483673983

`record[A288026(A133263(A051162(n)))]`
-/

namespace A286945.P1455238708483673983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288026 (A133263 (A051162 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286945.P1455238708483673983

namespace A286945

/-- `record[A288026(A133263(A051162(n)))]` -/
def P1455238708483673983.Spec : Prop :=
  ∀ n, P1455238708483673983.a n = A286945 (n + 1)

end A286945

/-! ## A286945.P5026233693070927416

`record[A288026(A133263(A032742(n+1)))]`
-/

namespace A286945.P5026233693070927416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288026 (A133263 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286945.P5026233693070927416

namespace A286945

/-- `record[A288026(A133263(A032742(n+1)))]` -/
def P5026233693070927416.Spec : Prop :=
  ∀ n, P5026233693070927416.a n = A286945 (n + 1)

end A286945

/-!
# A286946: a(1) = 1; a(n+1) = Sum_{k=1..n} a(n)/gcd(a(k),a(n)).

The programs for A286946, there is no canonical definition to state claims against.
-/

/-! ## A286946.P1106258051483312525

`A264749(A314439(n!))`
-/

namespace A286946.P1106258051483312525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A314439 (Nat.factorial n)).toNat

end

end A286946.P1106258051483312525

/-! ## A286946.P16490633885965943107

`A048621(A063053(n)+A001586(n))`
-/

namespace A286946.P16490633885965943107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A063053 n + A001586 n).toNat

end

end A286946.P16490633885965943107

/-! ## A286946.P7050376979325977621

`A056272(n)+A033182(A048863(n))`
-/

namespace A286946.P7050376979325977621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 n + A033182 (A048863 n).toNat

end

end A286946.P7050376979325977621

/-!
# A286947: Triangle read by rows in which row(n) = {T(n, k)} is the lexicographically earliest list of n numbers such that adding 1 to some T(n, k) gives a row of numbers each divisible by prime(k).

The programs for A286947, there is no canonical definition to state claims against.
-/

/-! ## A286947.P4617557202307608733

`A002110(∑[char[∑[n]]])-A240673(n+1)`
-/

namespace A286947.P4617557202307608733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j) - A240673 (n + 1)

end

end A286947.P4617557202307608733

/-! ## A286947.P5781383405414638917

`A332462(A140513(n))-A240673(n+1)`
-/

namespace A286947.P5781383405414638917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A140513 n).toNat - A240673 (n + 1)

end

end A286947.P5781383405414638917

/-! ## A286947.P15450153768268911826

`A332462(∏[A035214(n)])-A240673(n+1)`
-/

namespace A286947.P15450153768268911826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - A240673 (n + 1)

end

end A286947.P15450153768268911826

/-! ## A286947.P10279286849128663528

`A034386(A005145(n+1))-A240673(n+1)`
-/

namespace A286947.P10279286849128663528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A005145 (n + 1)).toNat - A240673 (n + 1)

end

end A286947.P10279286849128663528

/-! ## A286947.P10067879596491984270

`A096334(A127739(n+1))-A240673(n+1)`
-/

namespace A286947.P10067879596491984270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A127739 (n + 1)).toNat - A240673 (n + 1)

end

end A286947.P10067879596491984270

/-!
# A286948: a(n) is the number of distinct products p of Fibonacci numbers such that Fibonacci(n) < p <= Fibonacci(n + 1).

The programs for A286948, there is no canonical definition to state claims against.
-/

/-! ## A286948.P7402125687999215506

`A143824(A039946(n))-A065531(n+1)`
-/

namespace A286948.P7402125687999215506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A039946 n).toNat - A065531 (n + 1)

end

end A286948.P7402125687999215506

/-! ## A286948.P215647373995766543

`A372759(n+2)+A372759(A000041(n))`
-/

namespace A286948.P215647373995766543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372759 (n + 2) + A372759 (A000041 n).toNat

end

end A286948.P215647373995766543

/-! ## A286948.P1633829195440835510

`A186515(A052336(n+1))%A052349(n+1)`
-/

namespace A286948.P1633829195440835510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186515 (A052336 (n + 1)).toNat) (A052349 (n + 1))

end

end A286948.P1633829195440835510

/-! ## A286948.P6275437161669394046

`A046155(A262258(n+1))%A156801(n+1)`
-/

namespace A286948.P6275437161669394046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046155 (A262258 (n + 1)).toNat) (A156801 (n + 1))

end

end A286948.P6275437161669394046

/-!
# A286949: Number of perfect disconnected simple graphs on n nodes.

The programs for A286949, there is no canonical definition to state claims against.
-/

/-! ## A286949.P14828805604989246931

`A052431(n+1)-A052433(n+1)`
-/

namespace A286949.P14828805604989246931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A052433 (n + 1)

end

end A286949.P14828805604989246931

/-! ## A286949.P2960901975725100544

`A052431(n+1)-(A287511(n+1)+A005142(n+1))`
-/

namespace A286949.P2960901975725100544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - (A287511 (n + 1) + A005142 (n + 1))

end

end A286949.P2960901975725100544

/-! ## A286949.P4206095608339529923

`A287512(n+1)+A033995(n+1)-A052433(n+1)`
-/

namespace A286949.P4206095608339529923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287512 (n + 1) + A033995 (n + 1) - A052433 (n + 1)

end

end A286949.P4206095608339529923

/-! ## A286949.P4553599591297867630

`A000088(n+1)-A187236(n+1)-A052433(n+1)`
-/

namespace A286949.P4553599591297867630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A187236 (n + 1) - A052433 (n + 1)

end

end A286949.P4553599591297867630

/-! ## A286949.P1460205892919870945

`A052431(n+1)-(A001349(n+1)-A187237(n+1))`
-/

namespace A286949.P1460205892919870945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - (A001349 (n + 1) - A187237 (n + 1))

end

end A286949.P1460205892919870945

/-!
# A286950: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - x^j)/(1 - x^(k*j))^k.

The programs for A286950, there is no canonical definition to state claims against.
-/

/-! ## A286950.P6650300479370295790

`A008683(A257512(A013610(n)²))`
-/

namespace A286950.P6650300479370295790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A257512 (A013610 n ^ 2).toNat).toNat

end

end A286950.P6650300479370295790

/-! ## A286950.P10037037989593350601

`A008683(A004086(n)^A192062(n))`
-/

namespace A286950.P10037037989593350601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A004086 n : ℚ) ^ (A192062 n : ℤ))).toNat

end

end A286950.P10037037989593350601

/-! ## A286950.P2268776015455570250

`A016351(A340556(n)+Δ[A016389(n)])`
-/

namespace A286950.P2268776015455570250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016351 (A340556 n + (f1 (n + 1) - f1 n)).toNat

end

end A286950.P2268776015455570250

/-! ## A286950.P16734753055666439771

`A008683(A324936(n+1))^A004248(n)`
-/

namespace A286950.P16734753055666439771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A324936 (n + 1)).toNat : ℚ) ^ (A004248 n : ℤ)

end

end A286950.P16734753055666439771

/-! ## A286950.P6337282489951764345

`A321765(A347763(n+1))`
-/

namespace A286950.P6337282489951764345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (A347763 (n + 1)).toNat

end

end A286950.P6337282489951764345

/-!
# A286952: Expansion of Product_{j>=1} (1 - x^j)/(1 - x^(3*j))^3.

The programs for A286952, there is no canonical definition to state claims against.
-/

/-! ## A286952.P14961565857711137869

`A286950(∑[n+4]+2)`
-/

namespace A286952.P14961565857711137869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A286952.P14961565857711137869

/-! ## A286952.P7889110843140449165

`or(char[1], A286950(A046691(n+2)))`
-/

namespace A286952.P7889110843140449165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A286950 (A046691 (n + 2)).toNat)

end

end A286952.P7889110843140449165

/-! ## A286952.P15189467242082805741

`A057427(n+1)*A286950(A046691(n+2))`
-/

namespace A286952.P15189467242082805741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A286950 (A046691 (n + 2)).toNat

end

end A286952.P15189467242082805741

/-! ## A286952.P3201887035440450626

`A286950(A046691(n+2))%(A000041(n)+1)`
-/

namespace A286952.P3201887035440450626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286950 (A046691 (n + 2)).toNat) (A000041 n + 1)

end

end A286952.P3201887035440450626

/-! ## A286952.P16050811054704780000

`A286950(A046691(n+2))+char[A046324(n+1)]`
-/

namespace A286952.P16050811054704780000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046324 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286952.P16050811054704780000

/-! ## A286952.P1170645509394283887

`A286950(A046691(n+2))+char[A069276(n+1)]`
-/

namespace A286952.P1170645509394283887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286952.P1170645509394283887

/-! ## A286952.P7560955254913959835

`A286950(A046691(n+2))+char[A053293(n+4)]`
-/

namespace A286952.P7560955254913959835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053293 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286952.P7560955254913959835

/-! ## A286952.P6754211062732792744

`A286950(A046691(n+2))+A000038(2*(n+1))`
-/

namespace A286952.P6754211062732792744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A046691 (n + 2)).toNat + A000038 (2 * (n + 1))

end

end A286952.P6754211062732792744

/-! ## A286952.P7710008343873508762

`A286950(A046691(n+2))+A000007(2*n+3)`
-/

namespace A286952.P7710008343873508762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A046691 (n + 2)).toNat + A000007 (2 * n + 3)

end

end A286952.P7710008343873508762

/-! ## A286952.P11521485625933392305

`(A000027(n+1)-n)²*A286950(A046691(n+2))`
-/

namespace A286952.P11521485625933392305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) ^ 2 * A286950 (A046691 (n + 2)).toNat

end

end A286952.P11521485625933392305

/-! ## A286952.P8575417843314490109

`(A002262(C(n, n²))+1)*A286950(A046691(n+2))`
-/

namespace A286952.P8575417843314490109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 (Nat.choose n (n ^ 2)) + 1) * A286950 (A046691 (n + 2)).toNat

end

end A286952.P8575417843314490109

/-!
# A286953: Expansion of Product_{j>=1} (1 - x^j)/(1 - x^(4*j))^4.

The programs for A286953, there is no canonical definition to state claims against.
-/

/-! ## A286953.P2536909648961864458

`A286950(∑[n+5]+5)`
-/

namespace A286953.P2536909648961864458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A286953.P2536909648961864458

/-!
# A286954: Number of maximal irredundant sets in the n-cycle graph.

The programs for A286954, there is no canonical definition to state claims against.
-/

/-! ## A286954.P6972000214336043164

`A291063(n+2)-1`
-/

namespace A286954.P6972000214336043164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291063 (n + 2) - 1

end

end A286954.P6972000214336043164

/-! ## A286954.P8023767604417362756

`A321804(A000120(n))+A291063(n+2)`
-/

namespace A286954.P8023767604417362756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000120 n).toNat + A291063 (n + 2)

end

end A286954.P8023767604417362756

/-! ## A286954.P13660360259655917122

`A321804(Δ[A004526(n)])+A291063(n+2)`
-/

namespace A286954.P13660360259655917122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (f1 (n + 1) - f1 n).toNat + A291063 (n + 2)

end

end A286954.P13660360259655917122

/-! ## A286954.P5258876133760596632

`A321804(A051764(n+1))+A291063(n+2)`
-/

namespace A286954.P5258876133760596632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A051764 (n + 1)).toNat + A291063 (n + 2)

end

end A286954.P5258876133760596632

/-! ## A286954.P545547303970236116

`A321804(A072911(n+1))+A291063(n+2)`
-/

namespace A286954.P545547303970236116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A072911 (n + 1)).toNat + A291063 (n + 2)

end

end A286954.P545547303970236116

/-! ## A286954.P9678355017214552548

`A321804(A299235(n+1))+A291063(n+2)`
-/

namespace A286954.P9678355017214552548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A299235 (n + 1)).toNat + A291063 (n + 2)

end

end A286954.P9678355017214552548

/-! ## A286954.P14546338244006541101

`A321804(A299236(n+1))+A291063(n+2)`
-/

namespace A286954.P14546338244006541101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A299236 (n + 1)).toNat + A291063 (n + 2)

end

end A286954.P14546338244006541101

/-! ## A286954.P6440879410246369817

`A349920(A020639(n+2))+A291063(n+2)`
-/

namespace A286954.P6440879410246369817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A020639 (n + 2)).toNat + A291063 (n + 2)

end

end A286954.P6440879410246369817

/-! ## A286954.P14437107263025188920

`A328384(A051644(n+1))+A291063(n+2)`
-/

namespace A286954.P14437107263025188920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A051644 (n + 1)).toNat + A291063 (n + 2)

end

end A286954.P14437107263025188920

/-! ## A286954.P14410466698442428367

`A349920(A141559(n+1))+A291063(n+2)`
-/

namespace A286954.P14410466698442428367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A141559 (n + 1)).toNat + A291063 (n + 2)

end

end A286954.P14410466698442428367

/-! ## A286954.P6151029920879161829

`sqrt(A392237(n+1)-1)`
-/

namespace A286954.P6151029920879161829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392237 (n + 1) - 1 : ℝ)

end

end A286954.P6151029920879161829

/-! ## A286954.P17487154615311441221

`A321804(A278541(n))+A291063(n+2)`
-/

namespace A286954.P17487154615311441221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A278541 n).toNat + A291063 (n + 2)

end

end A286954.P17487154615311441221

/-!
# A286955: n-vertex sequences of plane forests with nondecreasing numbers of trees.

The programs for A286955, there is no canonical definition to state claims against.
-/

/-! ## A286955.P853130372015309616

`2*A292613(n)-A258471(n)`
-/

namespace A286955.P853130372015309616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292613 n - A258471 n

end

end A286955.P853130372015309616

/-! ## A286955.P5818935206455076919

`2*A292508(2*(n+1)²-1)-A292508(A008574(∑[n+1])-1)`
-/

namespace A286955.P5818935206455076919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292508 (2 * (n + 1) ^ 2 - 1) - A292508 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A286955.P5818935206455076919

/-! ## A286955.P3687948784359110688

`A005843(A292613(n))-A258471(n)`
-/

namespace A286955.P3687948784359110688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A292613 n).toNat - A258471 n

end

end A286955.P3687948784359110688

/-!
# A286956: Main diagonal of A286950.

The programs for A286956, the canonical program `A286956.P16005335099664677132` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286956 has offset 0).

The definition of A286956 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286956.P16005335099664677132

`A010815(n)+n`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286956

/-- `A010815(n)+n` -/
def P16005335099664677132.Spec : Prop :=
  ∀ n, P16005335099664677132.a n = A286956 n

theorem P16005335099664677132.correct : P16005335099664677132.Spec := by
  intro n
  simp only [A286956]

end A286956

/-! ## A286956.P13160651434633923600

`A274719(2*n)+n`
-/

namespace A286956.P13160651434633923600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * n) + (n : ℤ)

end

end A286956.P13160651434633923600

namespace A286956

/-- `A274719(2*n)+n` -/
def P13160651434633923600.Spec : Prop :=
  ∀ n, P13160651434633923600.a n = A286956 n

end A286956

/-! ## A286956.P17941642809235949622

`Δ[A078616(abs(1-n))]+n`
-/

namespace A286956.P17941642809235949622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A286956.P17941642809235949622

namespace A286956

/-- `Δ[A078616(abs(1-n))]+n` -/
def P17941642809235949622.Spec : Prop :=
  ∀ n, P17941642809235949622.a n = A286956 n

end A286956

/-! ## A286956.P13877715774441700663

`(-1)^n*A121373(n)+n`
-/

namespace A286956.P13877715774441700663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121373 n + (n : ℤ)

end

end A286956.P13877715774441700663

namespace A286956

/-- `(-1)^n*A121373(n)+n` -/
def P13877715774441700663.Spec : Prop :=
  ∀ n, P13877715774441700663.a n = A286956 n

end A286956

/-! ## A286956.P8045972705036112497

`A204843(A103214(n))+n`
-/

namespace A286956.P8045972705036112497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A103214 n).toNat + (n : ℤ)

end

end A286956.P8045972705036112497

namespace A286956

/-- `A204843(A103214(n))+n` -/
def P8045972705036112497.Spec : Prop :=
  ∀ n, P8045972705036112497.a n = A286956 n

end A286956

/-! ## A286956.P7254948794443882175

`A028310(n)-A257628(n)`
-/

namespace A286956.P7254948794443882175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A257628 n

end

end A286956.P7254948794443882175

namespace A286956

/-- `A028310(n)-A257628(n)` -/
def P7254948794443882175.Spec : Prop :=
  ∀ n, P7254948794443882175.a n = A286956 n

end A286956

/-! ## A286956.P7028334180972603987

`1-(A024000(n)-A010815(n))`
-/

namespace A286956.P7028334180972603987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024000 n - A010815 n)

end

end A286956.P7028334180972603987

namespace A286956

/-- `1-(A024000(n)-A010815(n))` -/
def P7028334180972603987.Spec : Prop :=
  ∀ n, P7028334180972603987.a n = A286956 n

theorem P7028334180972603987.correct : P7028334180972603987.Spec := by
  intro n
  simp only [A286956, Nat.add_sub_cancel, A286956.P7028334180972603987.a, A286956.P16005335099664677132.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A024000, A024000.P8748414335487061084.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286956

/-! ## A286956.P8489487184100715258

`A204843(A017533(2*n))+n`
-/

namespace A286956.P8489487184100715258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A017533 (2 * n)).toNat + (n : ℤ)

end

end A286956.P8489487184100715258

namespace A286956

/-- `A204843(A017533(2*n))+n` -/
def P8489487184100715258.Spec : Prop :=
  ∀ n, P8489487184100715258.a n = A286956 n

end A286956

/-! ## A286956.P13311300398123162769

`A067661(n)+n-A067659(n)`
-/

namespace A286956.P13311300398123162769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + ((n : ℤ) - A067659 n)

end

end A286956.P13311300398123162769

namespace A286956

/-- `A067661(n)+n-A067659(n)` -/
def P13311300398123162769.Spec : Prop :=
  ∀ n, P13311300398123162769.a n = A286956 n

end A286956

/-! ## A286956.P2089456593482676278

`A000007(n)+n-A257628(n)`
-/

namespace A286956.P2089456593482676278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((n : ℤ) - A257628 n)

end

end A286956.P2089456593482676278

namespace A286956

/-- `A000007(n)+n-A257628(n)` -/
def P2089456593482676278.Spec : Prop :=
  ∀ n, P2089456593482676278.a n = A286956 n

end A286956

/-! ## A286956.P7063785425984600182

`A005843(n)-(n-A010815(n))`
-/

namespace A286956.P7063785425984600182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A010815 n)

end

end A286956.P7063785425984600182

namespace A286956

/-- `A005843(n)-(n-A010815(n))` -/
def P7063785425984600182.Spec : Prop :=
  ∀ n, P7063785425984600182.a n = A286956 n

theorem P7063785425984600182.correct : P7063785425984600182.Spec := by
  intro n
  simp only [A286956, Nat.add_sub_cancel, A286956.P7063785425984600182.a, A286956.P16005335099664677132.a, A005843, A005843.P3167286115683555970.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286956

/-! ## A286956.P9253108993548461085

`A121373(n)*A133985(n)+n`
-/

namespace A286956.P9253108993548461085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A133985 n + (n : ℤ)

end

end A286956.P9253108993548461085

namespace A286956

/-- `A121373(n)*A133985(n)+n` -/
def P9253108993548461085.Spec : Prop :=
  ∀ n, P9253108993548461085.a n = A286956 n

end A286956

/-! ## A286956.P12135198749763074691

`A057077(n)*A206958(n)+n`
-/

namespace A286956.P12135198749763074691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A206958 n + (n : ℤ)

end

end A286956.P12135198749763074691

namespace A286956

/-- `A057077(n)*A206958(n)+n` -/
def P12135198749763074691.Spec : Prop :=
  ∀ n, P12135198749763074691.a n = A286956 n

end A286956

/-! ## A286956.P12623725198542413790

`n-Δ[A010815(n)-A078616(n)]`
-/

namespace A286956.P12623725198542413790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n - A078616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A286956.P12623725198542413790

namespace A286956

/-- `n-Δ[A010815(n)-A078616(n)]` -/
def P12623725198542413790.Spec : Prop :=
  ∀ n, P12623725198542413790.a n = A286956 n

end A286956

/-! ## A286956.P10421869783090519984

`A121373(n)/A057077(A005408(n))+n`
-/

namespace A286956.P10421869783090519984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 n : ℚ) / (A057077 (A005408 n).toNat : ℚ) + (n : ℚ)

end

end A286956.P10421869783090519984

namespace A286956

/-- `A121373(n)/A057077(A005408(n))+n` -/
def P10421869783090519984.Spec : Prop :=
  ∀ n, P10421869783090519984.a n = (A286956 n : ℚ)

end A286956

/-! ## A286956.P16011935535595413505

`A028310(n)-A147843(n)/A028310(n)`
-/

namespace A286956.P16011935535595413505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) - (A147843 n : ℚ) / (A028310 n : ℚ)

end

end A286956.P16011935535595413505

namespace A286956

/-- `A028310(n)-A147843(n)/A028310(n)` -/
def P16011935535595413505.Spec : Prop :=
  ∀ n, P16011935535595413505.a n = (A286956 n : ℚ)

end A286956

/-! ## A286956.P2447667326783801903

`A007706(n)-1+n`
-/

namespace A286956.P2447667326783801903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n - 1 + (n : ℤ)

end

end A286956.P2447667326783801903

namespace A286956

/-- `A007706(n)-1+n` -/
def P2447667326783801903.Spec : Prop :=
  ∀ n, P2447667326783801903.a n = A286956 n

end A286956

/-! ## A286956.P6635144151507178983

`A023443(A007706(n)+n)`
-/

namespace A286956.P6635144151507178983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A007706 n + (n : ℤ)).toNat

end

end A286956.P6635144151507178983

namespace A286956

/-- `A023443(A007706(n)+n)` -/
def P6635144151507178983.Spec : Prop :=
  ∀ n, P6635144151507178983.a n = A286956 n

end A286956

/-! ## A286956.P1105369568622431367

`A007706(n)-A024000(n)`
-/

namespace A286956.P1105369568622431367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n - A024000 n

end

end A286956.P1105369568622431367

namespace A286956

/-- `A007706(n)-A024000(n)` -/
def P1105369568622431367.Spec : Prop :=
  ∀ n, P1105369568622431367.a n = A286956 n

end A286956

/-! ## A286956.P17747532126711497492

`A184362(n)/(n+1)+n`
-/

namespace A286956.P17747532126711497492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184362 n : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A286956.P17747532126711497492

namespace A286956

/-- `A184362(n)/(n+1)+n` -/
def P17747532126711497492.Spec : Prop :=
  ∀ n, P17747532126711497492.a n = (A286956 n : ℚ)

end A286956

/-!
# A286957: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 + k*x^j).

The programs for A286957, there is no canonical definition to state claims against.
-/

/-! ## A286957.P8095163191726033262

`A256140(n)+A007814(A112492(n))`
-/

namespace A286957.P8095163191726033262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256140 n + A007814 (A112492 n).toNat

end

end A286957.P8095163191726033262

/-! ## A286957.P12913999745045370877

`A321391(n)+A007814(A112492(n))`
-/

namespace A286957.P12913999745045370877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 n + A007814 (A112492 n).toNat

end

end A286957.P12913999745045370877

/-! ## A286957.P1665856288429415295

`A087117(lcm(A014420(n), A185411(n)))`
-/

namespace A286957.P1665856288429415295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.lcm (A014420 n) (A185411 n))

end

end A286957.P1665856288429415295

/-! ## A286957.P7611889481737733250

`gcd(A353848(A384861(n)), A384861(n))`
-/

namespace A286957.P7611889481737733250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A353848 (A384861 n).toNat) (A384861 n)

end

end A286957.P7611889481737733250

/-! ## A286957.P6911584391122894639

`A319420(A289537(n))`
-/

namespace A286957.P6911584391122894639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (A289537 n).toNat

end

end A286957.P6911584391122894639

/-!
# A286959: Positive numbers k such that (10^(k+3)*3277 + 3167)/9 is prime.

The programs for A286959, there is no canonical definition to state claims against.
-/

/-! ## A286959.P4032662298071573771

`A248173(A396636(n+3))`
-/

namespace A286959.P4032662298071573771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248173 (A396636 (n + 3)).toNat

end

end A286959.P4032662298071573771

/-!
# A286960: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A286960, there is no canonical definition to state claims against.
-/

/-! ## A286960.P12668222261401909824

`A007088(A286962(n))`
-/

namespace A286960.P12668222261401909824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286962 n).toNat

end

end A286960.P12668222261401909824

/-! ## A286960.P17382041617306536667

`A185544(2*A286962(n))`
-/

namespace A286960.P17382041617306536667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286962 n).toNat

end

end A286960.P17382041617306536667

/-! ## A286960.P17632214761916604219

`A007088(A285827(n)-A184955(2*n+1))`
-/

namespace A286960.P17632214761916604219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285827 n - A184955 (2 * n + 1)).toNat

end

end A286960.P17632214761916604219

/-! ## A286960.P10456623271161060326

`A007088(A288586(n)-A184955(2*n+1))`
-/

namespace A286960.P10456623271161060326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288586 n - A184955 (2 * n + 1)).toNat

end

end A286960.P10456623271161060326

/-!
# A286961: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A286961, there is no canonical definition to state claims against.
-/

/-! ## A286961.P13895212916607865646

`A007088(A286963(n))`
-/

namespace A286961.P13895212916607865646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286963 n).toNat

end

end A286961.P13895212916607865646

/-! ## A286961.P10946379453397027073

`A185544(2*A286963(n))`
-/

namespace A286961.P10946379453397027073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286963 n).toNat

end

end A286961.P10946379453397027073

/-!
# A286962: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 225", based on the 5-celled von Neumann neighborhood.

The programs for A286962, there is no canonical definition to state claims against.
-/

/-! ## A286962.P7487929912747595873

`A285827(n)-A184955(2*n+1)`
-/

namespace A286962.P7487929912747595873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285827 n - A184955 (2 * n + 1)

end

end A286962.P7487929912747595873

/-! ## A286962.P18159176361432630812

`A288586(n)-A184955(2*n+1)`
-/

namespace A286962.P18159176361432630812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288586 n - A184955 (2 * n + 1)

end

end A286962.P18159176361432630812

/-! ## A286962.P16257197115073053495

`A288663(n)+A076399(A177523(n))`
-/

namespace A286962.P16257197115073053495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 n + A076399 (A177523 n).toNat

end

end A286962.P16257197115073053495

/-! ## A286962.P11650780900772408642

`A288129(n)+A287438(A128387(n))`
-/

namespace A286962.P11650780900772408642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 n + A287438 (A128387 n).toNat

end

end A286962.P11650780900772408642

/-!
# A286964: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A286964, there is no canonical definition to state claims against.
-/

/-! ## A286964.P1597033581542375687

`A007088(A286966(n))`
-/

namespace A286964.P1597033581542375687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286966 n).toNat

end

end A286964.P1597033581542375687

/-! ## A286964.P9253122655579890662

`A185544(2*A286966(n))`
-/

namespace A286964.P9253122655579890662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286966 n).toNat

end

end A286964.P9253122655579890662

/-!
# A286967: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 233", based on the 5-celled von Neumann neighborhood.

The programs for A286967, there is no canonical definition to state claims against.
-/

/-! ## A286967.P4425722134503127046

`A007088(A286968(n))`
-/

namespace A286967.P4425722134503127046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286968 n).toNat

end

end A286967.P4425722134503127046

/-! ## A286967.P772654870102129402

`A185544(2*A286968(n))`
-/

namespace A286967.P772654870102129402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286968 n).toNat

end

end A286967.P772654870102129402

/-!
# A286970: Number of compositions (ordered partitions) of n into decimal palindromic primes (A002385).

The programs for A286970, there is no canonical definition to state claims against.
-/

/-! ## A286970.P17830459654779707221

`A178798(A006456(n))+A023360(n)`
-/

namespace A286970.P17830459654779707221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A006456 n).toNat + A023360 n

end

end A286970.P17830459654779707221

/-! ## A286970.P7266742424249064103

`A347743(n)+A178798(A347743(n))`
-/

namespace A286970.P7266742424249064103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347743 n + A178798 (A347743 n).toNat

end

end A286970.P7266742424249064103

/-! ## A286970.P3472970144216566279

`A023360(n)-A014082(A010786(n))`
-/

namespace A286970.P3472970144216566279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A014082 (A010786 n).toNat

end

end A286970.P3472970144216566279

/-! ## A286970.P8820198319687558318

`A023360(n)-A025469(A000225(n))`
-/

namespace A286970.P8820198319687558318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A025469 (A000225 n).toNat

end

end A286970.P8820198319687558318

/-! ## A286970.P10952806264940984486

`A023360(n)-A055641(A122391(n))`
-/

namespace A286970.P10952806264940984486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A055641 (A122391 n).toNat

end

end A286970.P10952806264940984486

/-!
# A286971: Number of ways to write n as a sum of two numbers, one of which is the product of an even number of distinct primes (including 1) (A030229) and another is the product of an odd number of distinct primes (A030059).

The programs for A286971, there is no canonical definition to state claims against.
-/

/-! ## A286971.P15529015441938224729

`A282318(A282318(A185255(n))+n)`
-/

namespace A286971.P15529015441938224729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 (A282318 (A185255 n).toNat + (n : ℤ)).toNat

end

end A286971.P15529015441938224729

/-! ## A286971.P3456212307008578388

`A004218(A230980(n)^A282318(n))`
-/

namespace A286971.P3456212307008578388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((A230980 n : ℚ) ^ (A282318 n : ℤ))).toNat

end

end A286971.P3456212307008578388

/-! ## A286971.P12147110685589368927

`or(A043545(A185255(n)), A282318(n))`
-/

namespace A286971.P12147110685589368927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043545 (A185255 n).toNat) (A282318 n)

end

end A286971.P12147110685589368927

/-!
# A286972: Numbers k such that the average of the prime power divisors (not including 1) of k is an integer.

The programs for A286972, there is no canonical definition to state claims against.
-/

/-! ## A286972.P16500843901722527429

`∑[gcd(2, A275343(2*n+3))]`
-/

namespace A286972.P16500843901722527429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A275343 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286972.P16500843901722527429

/-! ## A286972.P16116942985533558401

`∑[A204456(A204454(n*a(n-1)))]` with `a(0)=2`
-/

namespace A286972.P16116942985533558401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A204456 (A204454 ((n : ℤ) * f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286972.P16116942985533558401

/-! ## A286972.P8145259820225294540

`lt[A063056(A319998(3*n+2)), 2]+2`
-/

namespace A286972.P8145259820225294540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (A319998 (3 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A286972.P8145259820225294540

/-! ## A286972.P5039981555488192745

`lt[A032742(A326486(n)), A029579(n)]`
-/

namespace A286972.P5039981555488192745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A326486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286972.P5039981555488192745

/-! ## A286972.P5216457630478127391

`lt[A134829(n), A100513(A000720(n+1))]`
-/

namespace A286972.P5216457630478127391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100513 (A000720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286972.P5216457630478127391

/-!
# A286973: Number of n X 2 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286973, there is no canonical definition to state claims against.
-/

/-! ## A286973.P5676330721549835582

`A286979(∑[n+1]+2)`
-/

namespace A286973.P5676330721549835582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A286973.P5676330721549835582

/-! ## A286973.P14768920060584701473

`A326292(n)+A286979(A000096(n)+3)`
-/

namespace A286973.P14768920060584701473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A286979 (A000096 n + 3).toNat

end

end A286973.P14768920060584701473

/-! ## A286973.P11344560149749046231

`A293100(∑[n+2])`
-/

namespace A286973.P11344560149749046231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286973.P11344560149749046231

/-! ## A286973.P11257060008968724582

`A269626(n)*A286979(A000096(n+1))`
-/

namespace A286973.P11257060008968724582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n * A286979 (A000096 (n + 1)).toNat

end

end A286973.P11257060008968724582

/-! ## A286973.P3515938780066138087

`A326292(n+1)+A293100(A000096(n+1))`
-/

namespace A286973.P3515938780066138087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (n + 1) + A293100 (A000096 (n + 1)).toNat

end

end A286973.P3515938780066138087

/-!
# A286974: Number of n X 3 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286974, there is no canonical definition to state claims against.
-/

/-! ## A286974.P8211253303147234764

`A286979(∑[n+2]+4)`
-/

namespace A286974.P8211253303147234764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A286974.P8211253303147234764

/-! ## A286974.P7814940292021259392

`record[char[A152948(n+1)]*A286979(n+1)]`
-/

namespace A286974.P7814940292021259392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152948 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286974.P7814940292021259392

/-! ## A286974.P5724449917166503167

`A286979(A167614(n+1))%A001020(n)`
-/

namespace A286974.P5724449917166503167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286979 (A167614 (n + 1)).toNat) (A001020 n)

end

end A286974.P5724449917166503167

/-! ## A286974.P14081323402972849622

`lcm(A033999(n), A286979(A167614(n+1)))`
-/

namespace A286974.P14081323402972849622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A286979 (A167614 (n + 1)).toNat)

end

end A286974.P14081323402972849622

/-! ## A286974.P8661588542371553243

`or(A286979(A167614(n+1)), A299905(n))`
-/

namespace A286974.P8661588542371553243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286979 (A167614 (n + 1)).toNat) (A299905 n)

end

end A286974.P8661588542371553243

/-!
# A286975: Number of n X 4 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286975, there is no canonical definition to state claims against.
-/

/-! ## A286975.P15459599148485007124

`A286979(A374004(n+1))`
-/

namespace A286975.P15459599148485007124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A374004 (n + 1)).toNat

end

end A286975.P15459599148485007124

/-! ## A286975.P4963355961437282994

`A286979(A052905(n)+9)`
-/

namespace A286975.P4963355961437282994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A052905 n + 9).toNat

end

end A286975.P4963355961437282994

/-! ## A286975.P13311250954606726497

`A286979(A055999(n)+10)`
-/

namespace A286975.P13311250954606726497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A055999 n + 10).toNat

end

end A286975.P13311250954606726497

/-! ## A286975.P7290395883624830302

`A286979(A167614(n+2)+1)`
-/

namespace A286975.P7290395883624830302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A167614 (n + 2) + 1).toNat

end

end A286975.P7290395883624830302

/-! ## A286975.P7429562108663513364

`A286979(A167499(n+2)-1)`
-/

namespace A286975.P7429562108663513364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A167499 (n + 2) - 1).toNat

end

end A286975.P7429562108663513364

/-!
# A286976: Number of n X 5 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286976, there is no canonical definition to state claims against.
-/

/-! ## A286976.P9210535291153017284

`A286979(A374005(n+1))`
-/

namespace A286976.P9210535291153017284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A374005 (n + 1)).toNat

end

end A286976.P9210535291153017284

/-! ## A286976.P6450738975407801067

`A286979(A155212(n)+13)`
-/

namespace A286976.P6450738975407801067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A155212 n + 13).toNat

end

end A286976.P6450738975407801067

/-! ## A286976.P16424094304686052732

`A286979(A056000(n)+15)`
-/

namespace A286976.P16424094304686052732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A056000 n + 15).toNat

end

end A286976.P16424094304686052732

/-! ## A286976.P18004536255474313231

`A286979(eq[7, A066657(n)])`
-/

namespace A286976.P18004536255474313231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286976.P18004536255474313231

/-! ## A286976.P5600874777348925963

`A286979(eq[6, A131818(n+1)])`
-/

namespace A286976.P5600874777348925963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286976.P5600874777348925963

/-!
# A286977: Number of n X 6 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286977, there is no canonical definition to state claims against.
-/

/-! ## A286977.P12532762632366929327

`A286979(A374007(n+1))`
-/

namespace A286977.P12532762632366929327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A374007 (n + 1)).toNat

end

end A286977.P12532762632366929327

/-! ## A286977.P5079821962607946667

`A286979(eq[7, A131818(n+1)])`
-/

namespace A286977.P5079821962607946667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286977.P5079821962607946667

/-! ## A286977.P4205479815863535104

`A286979(A052905(n+3))`
-/

namespace A286977.P4205479815863535104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A052905 (n + 3)).toNat

end

end A286977.P4205479815863535104

/-! ## A286977.P18407555565875892988

`A286979(A302537(n)+15)`
-/

namespace A286977.P18407555565875892988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A302537 n + 15).toNat

end

end A286977.P18407555565875892988

/-! ## A286977.P711501595016235066

`A286979(eq[5, A193592(n)])`
-/

namespace A286977.P711501595016235066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286977.P711501595016235066

/-!
# A286978: Number of n X 7 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A286978, there is no canonical definition to state claims against.
-/

/-! ## A286978.P7171518754972127607

`A286979(A374008(n+1))`
-/

namespace A286978.P7171518754972127607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A374008 (n + 1)).toNat

end

end A286978.P7171518754972127607

/-! ## A286978.P17720410606911199616

`A286979(eq[8, A131818(n+1)])`
-/

namespace A286978.P17720410606911199616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286978.P17720410606911199616

/-! ## A286978.P10937499841362045733

`A286979(A000124(n+7)-(n+1))`
-/

namespace A286978.P10937499841362045733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A286978.P10937499841362045733

/-! ## A286978.P16825137360300522782

`A286979(A055999(n+4))`
-/

namespace A286978.P16825137360300522782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (A055999 (n + 4)).toNat

end

end A286978.P16825137360300522782

/-! ## A286978.P7386435991437381107

`A286979(eq[4, A219347(n)])`
-/

namespace A286978.P7386435991437381107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286978.P7386435991437381107

/-!
# A286981: Binomial coefficients binomial(n,k) = UV such that n>=2k and U > V, where gpf(U) <= k, gpf(V) > k (gpf(n)= is the greatest prime factor of n).

The programs for A286981, there is no canonical definition to state claims against.
-/

/-! ## A286981.P6873875361933114520

`∩[A024755(n+1), A181941(n+1)]`
-/

namespace A286981.P6873875361933114520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286981.P6873875361933114520

/-!
# A286983: a(n) is the smallest integer that can appear as the n-th term of two distinct nondecreasing sequences of positive integers that satisfy the Fibonacci recurrence relation.

The programs for A286983, the canonical program `A286983.P1378736018727170307` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286983 has offset 1).

The definition of A286983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286983.P1378736018727170307

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=20`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286983

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P1378736018727170307.Spec : Prop :=
  ∀ n, P1378736018727170307.a n = A286983 (n + 1)

theorem P1378736018727170307.correct : P1378736018727170307.Spec := by
  intro n
  simp only [A286983, Nat.add_sub_cancel]

end A286983

/-! ## A286983.P2464197926534883429

`∑[A212804(n)+round(ϕ^n/sqrt(5))²]`
-/

namespace A286983.P2464197926534883429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286983.P2464197926534883429

namespace A286983

/-- `∑[A212804(n)+round(ϕ^n/sqrt(5))²]` -/
def P2464197926534883429.Spec : Prop :=
  ∀ n, P2464197926534883429.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P15968692450799032110

`A305412(n)-A000045(n)`
-/

namespace A286983.P15968692450799032110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305412 n - A000045 n

end

end A286983.P15968692450799032110

namespace A286983

/-- `A305412(n)-A000045(n)` -/
def P15968692450799032110.Spec : Prop :=
  ∀ n, P15968692450799032110.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P7063091976337482137

`A001654(n)+∑[A212804(n)]`
-/

namespace A286983.P7063091976337482137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286983.P7063091976337482137

namespace A286983

/-- `A001654(n)+∑[A212804(n)]` -/
def P7063091976337482137.Spec : Prop :=
  ∀ n, P7063091976337482137.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P1410765369355255925

`∑[A212804(n)]*A001611(n)`
-/

namespace A286983.P1410765369355255925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001611 n

end

end A286983.P1410765369355255925

namespace A286983

/-- `∑[A212804(n)]*A001611(n)` -/
def P1410765369355255925.Spec : Prop :=
  ∀ n, P1410765369355255925.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P1382428934744656359

`A001654(n)+A000045(n+1)`
-/

namespace A286983.P1382428934744656359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + A000045 (n + 1)

end

end A286983.P1382428934744656359

namespace A286983

/-- `A001654(n)+A000045(n+1)` -/
def P1382428934744656359.Spec : Prop :=
  ∀ n, P1382428934744656359.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P14171514938206994852

`A142975(n+1)+A000045(n)`
-/

namespace A286983.P14171514938206994852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142975 (n + 1) + A000045 n

end

end A286983.P14171514938206994852

namespace A286983

/-- `A142975(n+1)+A000045(n)` -/
def P14171514938206994852.Spec : Prop :=
  ∀ n, P14171514938206994852.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P8346793959823028709

`A127968(n)+A059840(n+1)`
-/

namespace A286983.P8346793959823028709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n + A059840 (n + 1)

end

end A286983.P8346793959823028709

namespace A286983

/-- `A127968(n)+A059840(n+1)` -/
def P8346793959823028709.Spec : Prop :=
  ∀ n, P8346793959823028709.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P12177540115639989078

`A260259(n)+A007492(n+1)`
-/

namespace A286983.P12177540115639989078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n + A007492 (n + 1)

end

end A286983.P12177540115639989078

namespace A286983

/-- `A260259(n)+A007492(n+1)` -/
def P12177540115639989078.Spec : Prop :=
  ∀ n, P12177540115639989078.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P5936329194827620560

`A212804(n+2)+A001654(n)`
-/

namespace A286983.P5936329194827620560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A001654 n

end

end A286983.P5936329194827620560

namespace A286983

/-- `A212804(n+2)+A001654(n)` -/
def P5936329194827620560.Spec : Prop :=
  ∀ n, P5936329194827620560.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P8260899895683194898

`A324969(n+2)+A001654(n)`
-/

namespace A286983.P8260899895683194898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + A001654 n

end

end A286983.P8260899895683194898

namespace A286983

/-- `A324969(n+2)+A001654(n)` -/
def P8260899895683194898.Spec : Prop :=
  ∀ n, P8260899895683194898.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P532069737642124702

`A000045(n+1)*A001611(n)`
-/

namespace A286983.P532069737642124702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001611 n

end

end A286983.P532069737642124702

namespace A286983

/-- `A000045(n+1)*A001611(n)` -/
def P532069737642124702.Spec : Prop :=
  ∀ n, P532069737642124702.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P13045351281640360904

`A001654(n)-A152163(n+3)`
-/

namespace A286983.P13045351281640360904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - A152163 (n + 3)

end

end A286983.P13045351281640360904

namespace A286983

/-- `A001654(n)-A152163(n+3)` -/
def P13045351281640360904.Spec : Prop :=
  ∀ n, P13045351281640360904.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P10540395898976148783

`A001611(n)*A212804(n+2)`
-/

namespace A286983.P10540395898976148783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n * A212804 (n + 2)

end

end A286983.P10540395898976148783

namespace A286983

/-- `A001611(n)*A212804(n+2)` -/
def P10540395898976148783.Spec : Prop :=
  ∀ n, P10540395898976148783.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P4492270124723228333

`∑[A007598(n)+Δ[A000045(n)]]`
-/

namespace A286983.P4492270124723228333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286983.P4492270124723228333

namespace A286983

/-- `∑[A007598(n)+Δ[A000045(n)]]` -/
def P4492270124723228333.Spec : Prop :=
  ∀ n, P4492270124723228333.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P9301979593780636778

`A001654(n)+Δ[Δ[A001911(n)]]`
-/

namespace A286983.P9301979593780636778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n)

end

end A286983.P9301979593780636778

namespace A286983

/-- `A001654(n)+Δ[Δ[A001911(n)]]` -/
def P9301979593780636778.Spec : Prop :=
  ∀ n, P9301979593780636778.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P10817580686902699330

`A001654(n)+Δ[Δ[A020695(n)]]`
-/

namespace A286983.P10817580686902699330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n)

end

end A286983.P10817580686902699330

namespace A286983

/-- `A001654(n)+Δ[Δ[A020695(n)]]` -/
def P10817580686902699330.Spec : Prop :=
  ∀ n, P10817580686902699330.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P66531885214373870

`Δ[Δ[A020695(n)]]*A001611(n)`
-/

namespace A286983.P66531885214373870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001611 n

end

end A286983.P66531885214373870

namespace A286983

/-- `Δ[Δ[A020695(n)]]*A001611(n)` -/
def P66531885214373870.Spec : Prop :=
  ∀ n, P66531885214373870.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P10565212397703737485

`A000045(n+1)+∑[A007598(n)]`
-/

namespace A286983.P10565212397703737485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286983.P10565212397703737485

namespace A286983

/-- `A000045(n+1)+∑[A007598(n)]` -/
def P10565212397703737485.Spec : Prop :=
  ∀ n, P10565212397703737485.a n = A286983 (n + 1)

end A286983

/-! ## A286983.P1845245635920398101

`∑[A059727(n)]+1-A000045(n)`
-/

namespace A286983.P1845245635920398101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000045 n)

end

end A286983.P1845245635920398101

namespace A286983

/-- `∑[A059727(n)]+1-A000045(n)` -/
def P1845245635920398101.Spec : Prop :=
  ∀ n, P1845245635920398101.a n = A286983 (n + 1)

end A286983

/-!
# A286985: Number of connected dominating sets in the n-prism graph.

The programs for A286985, there is no canonical definition to state claims against.
-/

/-! ## A286985.P12918758062044751268

`A287005(n+1)-A016825(n)`
-/

namespace A286985.P12918758062044751268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287005 (n + 1) - A016825 n

end

end A286985.P12918758062044751268

/-! ## A286985.P3504034989844739524

`A287005(n+1)-A042968(3*n+2)`
-/

namespace A286985.P3504034989844739524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287005 (n + 1) - A042968 (3 * n + 2)

end

end A286985.P3504034989844739524

/-!
# A286986: Number of connected dominating sets in the n-antiprism graph.

The programs for A286986, the canonical program `A286986.P9182588061507464975` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286986 has offset 1).

The definition of A286986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286986.P9182588061507464975

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=3, a(1)=15, a(2)=54, a(3)=175`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286986

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P9182588061507464975.Spec : Prop :=
  ∀ n, P9182588061507464975.a n = A286986 (n + 1)

theorem P9182588061507464975.correct : P9182588061507464975.Spec := by
  intro n
  simp only [A286986, Nat.add_sub_cancel]

end A286986

/-! ## A286986.P17606792380565520378

`28*A001871(n+1)-72*A001871(n)-15*A001906(n+1)-26*A001906(n+2)`
-/

namespace A286986.P17606792380565520378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A001871 (n + 1) - 72 * A001871 n - 15 * A001906 (n + 1) - 26 * A001906 (n + 2)

end

end A286986.P17606792380565520378

namespace A286986

/-- `28*A001871(n+1)-72*A001871(n)-15*A001906(n+1)-26*A001906(n+2)` -/
def P17606792380565520378.Spec : Prop :=
  ∀ n, P17606792380565520378.a n = A286986 (n + 1)

end A286986

/-! ## A286986.P5954088028389186378

`A121255(n+1)+A000032(2*(n+1))`
-/

namespace A286986.P5954088028389186378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121255 (n + 1) + A000032 (2 * (n + 1))

end

end A286986.P5954088028389186378

namespace A286986

/-- `A121255(n+1)+A000032(2*(n+1))` -/
def P5954088028389186378.Spec : Prop :=
  ∀ n, P5954088028389186378.a n = A286986 (n + 1)

end A286986

/-! ## A286986.P15745011226512614473

`A022121(2*n)+n*A022087(2*n)`
-/

namespace A286986.P15745011226512614473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 (2 * n) + (n : ℤ) * A022087 (2 * n)

end

end A286986.P15745011226512614473

namespace A286986

/-- `A022121(2*n)+n*A022087(2*n)` -/
def P15745011226512614473.Spec : Prop :=
  ∀ n, P15745011226512614473.a n = A286986 (n + 1)

end A286986

/-! ## A286986.P15811342802096484171

`A339610(2*(n+1))+A006490(2*(n+1))`
-/

namespace A286986.P15811342802096484171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339610 (2 * (n + 1)) + A006490 (2 * (n + 1))

end

end A286986.P15811342802096484171

namespace A286986

/-- `A339610(2*(n+1))+A006490(2*(n+1))` -/
def P15811342802096484171.Spec : Prop :=
  ∀ n, P15811342802096484171.a n = A286986 (n + 1)

end A286986

/-! ## A286986.P12694570204259649533

`A006490(2*(n+2))-A006490(2*n+1)`
-/

namespace A286986.P12694570204259649533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (2 * (n + 2)) - A006490 (2 * n + 1)

end

end A286986.P12694570204259649533

namespace A286986

/-- `A006490(2*(n+2))-A006490(2*n+1)` -/
def P12694570204259649533.Spec : Prop :=
  ∀ n, P12694570204259649533.a n = A286986 (n + 1)

end A286986

/-! ## A286986.P3168176904655388316

`A022096(2*n)+2*A007502(2*n+1)`
-/

namespace A286986.P3168176904655388316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 (2 * n) + 2 * A007502 (2 * n + 1)

end

end A286986.P3168176904655388316

namespace A286986

/-- `A022096(2*n)+2*A007502(2*n+1)` -/
def P3168176904655388316.Spec : Prop :=
  ∀ n, P3168176904655388316.a n = A286986 (n + 1)

end A286986

/-! ## A286986.P12467398334918116049

`A000204(2*(n+1))+2*A006490(2*(n+1))`
-/

namespace A286986.P12467398334918116049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) + 2 * A006490 (2 * (n + 1))

end

end A286986.P12467398334918116049

namespace A286986

/-- `A000204(2*(n+1))+2*A006490(2*(n+1))` -/
def P12467398334918116049.Spec : Prop :=
  ∀ n, P12467398334918116049.a n = A286986 (n + 1)

end A286986

/-!
# A286987: {111->1}-transform of the Sturmian word A080764.

The programs for A286987, the canonical program `A286987.P17283735074823528912` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286987 has offset 1).

The definition of A286987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286987.P10789949494976587896

`char[A286989(n+1)-1]`
-/

namespace A286987.P10789949494976587896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286989 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286987.P10789949494976587896

namespace A286987

/-- `char[A286989(n+1)-1]` -/
def P10789949494976587896.Spec : Prop :=
  ∀ n, (P10789949494976587896.a n : ℤ) = A286987 (n + 1)

end A286987

/-! ## A286987.P806315572090934479

`1-char[∑[5-A097509(n)]]`
-/

namespace A286987.P806315572090934479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A097509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286987.P806315572090934479

namespace A286987

/-- `1-char[∑[5-A097509(n)]]` -/
def P806315572090934479.Spec : Prop :=
  ∀ n, P806315572090934479.a n = A286987 (n + 1)

end A286987

/-! ## A286987.P17283735074823528912

`1-char[A286988(n+1)-1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286987

/-- `1-char[A286988(n+1)-1]` -/
def P17283735074823528912.Spec : Prop :=
  ∀ n, P17283735074823528912.a n = A286987 (n + 1)

theorem P17283735074823528912.correct : P17283735074823528912.Spec := by
  intro n
  simp only [A286987, Nat.add_sub_cancel]

end A286987

/-! ## A286987.P12344490463856500265

`1-char[A187328(2*(n+1))]`
-/

namespace A286987.P12344490463856500265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286987.P12344490463856500265

namespace A286987

/-- `1-char[A187328(2*(n+1))]` -/
def P12344490463856500265.Spec : Prop :=
  ∀ n, P12344490463856500265.a n = A286987 (n + 1)

end A286987

/-! ## A286987.P7434697980980044024

`1-char[A195176(n+1)+n]`
-/

namespace A286987.P7434697980980044024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286987.P7434697980980044024

namespace A286987

/-- `1-char[A195176(n+1)+n]` -/
def P7434697980980044024.Spec : Prop :=
  ∀ n, P7434697980980044024.a n = A286987 (n + 1)

end A286987

/-! ## A286987.P6188173463816921482

`1-A188321(A188372(n+3))`
-/

namespace A286987.P6188173463816921482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A188321 (A188372 (n + 3)).toNat

end

end A286987.P6188173463816921482

namespace A286987

/-- `1-A188321(A188372(n+3))` -/
def P6188173463816921482.Spec : Prop :=
  ∀ n, P6188173463816921482.a n = A286987 (n + 1)

end A286987

/-!
# A286988: Positions of 0 in A286987; complement of A286989.

The programs for A286988, the canonical program `A286988.P18403024785931774095` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286988 has offset 1).

The definition of A286988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286988.P7320664467061967205

`ceil((n+1)*(4-sqrt(2)))`
-/

namespace A286988.P7320664467061967205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (4 - Real.sqrt (2 : ℝ))⌉

end

end A286988.P7320664467061967205

namespace A286988

/-- `ceil((n+1)*(4-sqrt(2)))` -/
def P7320664467061967205.Spec : Prop :=
  ∀ n, P7320664467061967205.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P18037473214411190652

`(5*(n+1))%comp[floor(n*sqrt(2))]+1+n`
-/

namespace A286988.P18037473214411190652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A286988.P18037473214411190652

namespace A286988

/-- `(5*(n+1))%comp[floor(n*sqrt(2))]+1+n` -/
def P18037473214411190652.Spec : Prop :=
  ∀ n, (P18037473214411190652.a n : ℤ) = A286988 (n + 1)

end A286988

/-! ## A286988.P18403024785931774095

`∑[Δ[A195176(n)]+1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286988

/-- `∑[Δ[A195176(n)]+1]` -/
def P18403024785931774095.Spec : Prop :=
  ∀ n, P18403024785931774095.a n = A286988 (n + 1)

theorem P18403024785931774095.correct : P18403024785931774095.Spec := by
  intro n
  simp only [A286988, Nat.add_sub_cancel]

end A286988

/-! ## A286988.P7541442798558714068

`∑[Δ[A195119(n)]+2]`
-/

namespace A286988.P7541442798558714068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286988.P7541442798558714068

namespace A286988

/-- `∑[Δ[A195119(n)]+2]` -/
def P7541442798558714068.Spec : Prop :=
  ∀ n, P7541442798558714068.a n = A286988 (n + 1)

theorem P7541442798558714068.correct : P7541442798558714068.Spec := by
  intro n
  simp only [A286988, Nat.add_sub_cancel, A286988.P7541442798558714068.f2, A286988.P7541442798558714068.f1, A286988.P7541442798558714068.a, A286988.P18403024785931774095.f2, A286988.P18403024785931774095.f1, A286988.P18403024785931774095.a, A195119, A195119.P10467395999653926645.a, A195176, A195176.P10049885742152514298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286988

/-! ## A286988.P7486453471170993976

`∑[4-Δ[A001951(n)]]`
-/

namespace A286988.P7486453471170993976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286988.P7486453471170993976

namespace A286988

/-- `∑[4-Δ[A001951(n)]]` -/
def P7486453471170993976.Spec : Prop :=
  ∀ n, P7486453471170993976.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P3010527771000747563

`∑[A144611(n)+2]+1`
-/

namespace A286988.P3010527771000747563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A286988.P3010527771000747563

namespace A286988

/-- `∑[A144611(n)+2]+1` -/
def P3010527771000747563.Spec : Prop :=
  ∀ n, P3010527771000747563.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P8190212251288729177

`∑[3-A188037(n+1)]`
-/

namespace A286988.P8190212251288729177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A188037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286988.P8190212251288729177

namespace A286988

/-- `∑[3-A188037(n+1)]` -/
def P8190212251288729177.Spec : Prop :=
  ∀ n, P8190212251288729177.a n = A286988 (n + 1)

theorem P8190212251288729177.correct : P8190212251288729177.Spec := by
  intro n
  simp only [A286988, Nat.add_sub_cancel, A286988.P8190212251288729177.f1, A286988.P8190212251288729177.a, A286988.P18403024785931774095.f2, A286988.P18403024785931774095.f1, A286988.P18403024785931774095.a, A188037, A188037.P8986179650995583249.a, A195176, A195176.P10049885742152514298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286988

/-! ## A286988.P16215989835356408135

`A195176(n+1)+1+n`
-/

namespace A286988.P16215989835356408135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (n + 1) + 1 + (n : ℤ)

end

end A286988.P16215989835356408135

namespace A286988

/-- `A195176(n+1)+1+n` -/
def P16215989835356408135.Spec : Prop :=
  ∀ n, P16215989835356408135.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P17188356653107990132

`A182770(n+1)+2+n`
-/

namespace A286988.P17188356653107990132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182770 (n + 1) + 2 + (n : ℤ)

end

end A286988.P17188356653107990132

namespace A286988

/-- `A182770(n+1)+2+n` -/
def P17188356653107990132.Spec : Prop :=
  ∀ n, P17188356653107990132.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P5538499431146909410

`A195119(n+1)+2*(n+1)`
-/

namespace A286988.P5538499431146909410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (n + 1) + (2 * (n + 1) : ℤ)

end

end A286988.P5538499431146909410

namespace A286988

/-- `A195119(n+1)+2*(n+1)` -/
def P5538499431146909410.Spec : Prop :=
  ∀ n, P5538499431146909410.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P16154433919873895926

`A074840(n+1)+2*n+3`
-/

namespace A286988.P16154433919873895926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (n + 1) + (2 * n + 3 : ℤ)

end

end A286988.P16154433919873895926

namespace A286988

/-- `A074840(n+1)+2*n+3` -/
def P16154433919873895926.Spec : Prop :=
  ∀ n, P16154433919873895926.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P75609904461808087

`4*(n+1)-A001951(n+1)`
-/

namespace A286988.P75609904461808087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A001951 (n + 1)

end

end A286988.P75609904461808087

namespace A286988

/-- `4*(n+1)-A001951(n+1)` -/
def P75609904461808087.Spec : Prop :=
  ∀ n, P75609904461808087.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P5745933159349022573

`5*(n+1)-A003151(n+1)`
-/

namespace A286988.P5745933159349022573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A003151 (n + 1)

end

end A286988.P5745933159349022573

namespace A286988

/-- `5*(n+1)-A003151(n+1)` -/
def P5745933159349022573.Spec : Prop :=
  ∀ n, P5745933159349022573.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P2882922030106366912

`∑[char[A003152(n+1)]+2]+1`
-/

namespace A286988.P2882922030106366912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A286988.P2882922030106366912

namespace A286988

/-- `∑[char[A003152(n+1)]+2]+1` -/
def P2882922030106366912.Spec : Prop :=
  ∀ n, (P2882922030106366912.a n : ℤ) = A286988 (n + 1)

end A286988

/-! ## A286988.P933823563718650297

`A016969(n)-A184922(n+1)`
-/

namespace A286988.P933823563718650297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A184922 (n + 1)

end

end A286988.P933823563718650297

namespace A286988

/-- `A016969(n)-A184922(n+1)` -/
def P933823563718650297.Spec : Prop :=
  ∀ n, P933823563718650297.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P1082255869497883938

`A016897(n)-A286666(n+1)`
-/

namespace A286988.P1082255869497883938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A286666 (n + 1)

end

end A286988.P1082255869497883938

namespace A286988

/-- `A016897(n)-A286666(n+1)` -/
def P1082255869497883938.Spec : Prop :=
  ∀ n, P1082255869497883938.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P13089755033093028635

`A017053(n)-A286923(n+1)`
-/

namespace A286988.P13089755033093028635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A286923 (n + 1)

end

end A286988.P13089755033093028635

namespace A286988

/-- `A017053(n)-A286923(n+1)` -/
def P13089755033093028635.Spec : Prop :=
  ∀ n, P13089755033093028635.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P797605286781662370

`A004767(n)-A395101(n+1)`
-/

namespace A286988.P797605286781662370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A395101 (n + 1)

end

end A286988.P797605286781662370

namespace A286988

/-- `A004767(n)-A395101(n+1)` -/
def P797605286781662370.Spec : Prop :=
  ∀ n, P797605286781662370.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P12146755427712719210

`∑[A006530(Δ[A001951(n)]+2)]`
-/

namespace A286988.P12146755427712719210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286988.P12146755427712719210

namespace A286988

/-- `∑[A006530(Δ[A001951(n)]+2)]` -/
def P12146755427712719210.Spec : Prop :=
  ∀ n, P12146755427712719210.a n = A286988 (n + 1)

end A286988

/-! ## A286988.P16008848935223431824

`∑[A020639(Δ[A001951(n)]+2)]`
-/

namespace A286988.P16008848935223431824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286988.P16008848935223431824

namespace A286988

/-- `∑[A020639(Δ[A001951(n)]+2)]` -/
def P16008848935223431824.Spec : Prop :=
  ∀ n, P16008848935223431824.a n = A286988 (n + 1)

end A286988

/-!
# A286989: Positions of 1 in A286987; complement of A286988.

The programs for A286989, the canonical program `A286989.P11993939202091722041` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286989 has offset 1).

The definition of A286989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286989.P11993939202091722041

`comp[ceil(n*(4-sqrt(2)))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286989

/-- `comp[ceil(n*(4-sqrt(2)))]` -/
def P11993939202091722041.Spec : Prop :=
  ∀ n, (P11993939202091722041.a n : ℤ) = A286989 (n + 1)

theorem P11993939202091722041.correct : P11993939202091722041.Spec := by
  intro n
  simp only [A286989, Nat.add_sub_cancel]

end A286989

/-! ## A286989.P1616355754661065402

`∑[char[A195176(n)]]+n`
-/

namespace A286989.P1616355754661065402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A286989.P1616355754661065402

namespace A286989

/-- `∑[char[A195176(n)]]+n` -/
def P1616355754661065402.Spec : Prop :=
  ∀ n, (P1616355754661065402.a n : ℤ) = A286989 (n + 1)

end A286989

/-! ## A286989.P17223082606197321881

`∑[char[A195119(n+1)+1+n]+1]`
-/

namespace A286989.P17223082606197321881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (n + 1) + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286989.P17223082606197321881

namespace A286989

/-- `∑[char[A195119(n+1)+1+n]+1]` -/
def P17223082606197321881.Spec : Prop :=
  ∀ n, (P17223082606197321881.a n : ℤ) = A286989 (n + 1)

end A286989

/-! ## A286989.P7761396669324877463

`∑[A001222(Δ[A188322(n+1)])]+n`
-/

namespace A286989.P7761396669324877463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A286989.P7761396669324877463

namespace A286989

/-- `∑[A001222(Δ[A188322(n+1)])]+n` -/
def P7761396669324877463.Spec : Prop :=
  ∀ n, P7761396669324877463.a n = A286989 (n + 1)

end A286989

/-! ## A286989.P15605105255343683960

`A062843(Δ[A188322(n+1)]+1)+a(n-1)` with `a(0)=1`
-/

namespace A286989.P15605105255343683960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062843 (f1 (n + 1) - f1 n + 1).toNat + a (n - 1)

end

end A286989.P15605105255343683960

namespace A286989

/-- `A062843(Δ[A188322(n+1)]+1)+a(n-1)` -/
def P15605105255343683960.Spec : Prop :=
  ∀ n, P15605105255343683960.a n = A286989 (n + 1)

end A286989

/-! ## A286989.P6538182641781480354

`A000010(A090108(Δ[A188322(n+1)]+1))+a(n-1)` with `a(0)=1`
-/

namespace A286989.P6538182641781480354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (A090108 (f1 (n + 1) - f1 n + 1).toNat).toNat + a (n - 1)

end

end A286989.P6538182641781480354

namespace A286989

/-- `A000010(A090108(Δ[A188322(n+1)]+1))+a(n-1)` -/
def P6538182641781480354.Spec : Prop :=
  ∀ n, P6538182641781480354.a n = A286989 (n + 1)

end A286989

/-! ## A286989.P12144865749886580799

`filter[n+1, A286987(#)]`
-/

namespace A286989.P12144865749886580799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286987 (f1 j) = 1) n)

end

end A286989.P12144865749886580799

namespace A286989

/-- `filter[n+1, A286987(#)]` -/
def P12144865749886580799.Spec : Prop :=
  ∀ n, (P12144865749886580799.a n : ℤ) = A286989 (n + 1)

end A286989

/-! ## A286989.P11755654666379070335

`record[(n+1)*A286987(n+1)]`
-/

namespace A286989.P11755654666379070335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286989.P11755654666379070335

namespace A286989

/-- `record[(n+1)*A286987(n+1)]` -/
def P11755654666379070335.Spec : Prop :=
  ∀ n, P11755654666379070335.a n = A286989 (n + 1)

end A286989

/-! ## A286989.P16900321154029146871

`A183138(A188322(n+2))+n`
-/

namespace A286989.P16900321154029146871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (A188322 (n + 2)).toNat + (n : ℤ)

end

end A286989.P16900321154029146871

namespace A286989

/-- `A183138(A188322(n+2))+n` -/
def P16900321154029146871.Spec : Prop :=
  ∀ n, P16900321154029146871.a n = A286989 (n + 1)

end A286989

/-! ## A286989.P10008015543618800127

`A191537(∑[n+1])`
-/

namespace A286989.P10008015543618800127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286989.P10008015543618800127

namespace A286989

/-- `A191537(∑[n+1])` -/
def P10008015543618800127.Spec : Prop :=
  ∀ n, P10008015543618800127.a n = A286989 (n + 1)

end A286989

/-!
# A286990: {0->010, 1->101}-transform of the Sturmian word A080764.

The programs for A286990, the canonical program `A286990.P5038761849871249141` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286990 has offset 1).

The definition of A286990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286990.P15901511202788976412

`1-A287028(n+1)`
-/

namespace A286990.P15901511202788976412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287028 (n + 1)

end

end A286990.P15901511202788976412

namespace A286990

/-- `1-A287028(n+1)` -/
def P15901511202788976412.Spec : Prop :=
  ∀ n, P15901511202788976412.a n = A286990 (n + 1)

theorem P15901511202788976412.correct : P15901511202788976412.Spec := by
  intro n
  simp only [A286990, Nat.add_sub_cancel, A286990.P15901511202788976412.a, A286990.P5038761849871249141.a, A133310, A133310.P6888286461156837281.a, A286726, A286726.P13971804869111894166.a, A287028, A287028.P2613971056566659341.a, A286685, A286685.P666440380006877132.a, A286688, A286688.P12697212265259802839.f1, A286688.P12697212265259802839.a, A286907, A286907.P16898303085372787161.a, A080764, A080764.P14301132771463561424.a, A171588, A171588.P4513213665566256217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286990

/-! ## A286990.P12893702522141526554

`char[A286992(n+1)-1]`
-/

namespace A286990.P12893702522141526554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286992 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286990.P12893702522141526554

namespace A286990

/-- `char[A286992(n+1)-1]` -/
def P12893702522141526554.Spec : Prop :=
  ∀ n, (P12893702522141526554.a n : ℤ) = A286990 (n + 1)

end A286990

/-! ## A286990.P5038761849871249141

`A286726(A133310(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286990

/-- `A286726(A133310(n))` -/
def P5038761849871249141.Spec : Prop :=
  ∀ n, P5038761849871249141.a n = A286990 (n + 1)

theorem P5038761849871249141.correct : P5038761849871249141.Spec := by
  intro n
  simp only [A286990, Nat.add_sub_cancel]

end A286990

/-! ## A286990.P16591840186484270224

`A286685(A131380(n+1))`
-/

namespace A286990.P16591840186484270224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A131380 (n + 1)).toNat

end

end A286990.P16591840186484270224

namespace A286990

/-- `A286685(A131380(n+1))` -/
def P16591840186484270224.Spec : Prop :=
  ∀ n, P16591840186484270224.a n = A286990 (n + 1)

end A286990

/-! ## A286990.P13065603963662962312

`A287028(A287028(n+1)+A286991(n+1))`
-/

namespace A286990.P13065603963662962312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A287028 (n + 1) + A286991 (n + 1)).toNat

end

end A286990.P13065603963662962312

namespace A286990

/-- `A287028(A287028(n+1)+A286991(n+1))` -/
def P13065603963662962312.Spec : Prop :=
  ∀ n, P13065603963662962312.a n = A286990 (n + 1)

end A286990

/-!
# A286991: Positions of 0 in A286990; complement of A286992.

The programs for A286991, the canonical program `A286991.P960293502275245523` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286991 has offset 1).

The definition of A286991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286991.P960293502275245523

`A187970(n+1)+1+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286991

/-- `A187970(n+1)+1+n` -/
def P960293502275245523.Spec : Prop :=
  ∀ n, P960293502275245523.a n = A286991 (n + 1)

theorem P960293502275245523.correct : P960293502275245523.Spec := by
  intro n
  simp only [A286991, Nat.add_sub_cancel]

end A286991

/-! ## A286991.P8102129302822015067

`comp[A187971(n+1)-1]+2+n`
-/

namespace A286991.P8102129302822015067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A286991.P8102129302822015067

namespace A286991

/-- `comp[A187971(n+1)-1]+2+n` -/
def P8102129302822015067.Spec : Prop :=
  ∀ n, (P8102129302822015067.a n : ℤ) = A286991 (n + 1)

end A286991

/-! ## A286991.P6290083030329165496

`A286908(n+1)+∑[A286922(n+1)]`
-/

namespace A286991.P6290083030329165496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286908 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286991.P6290083030329165496

namespace A286991

/-- `A286908(n+1)+∑[A286922(n+1)]` -/
def P6290083030329165496.Spec : Prop :=
  ∀ n, P6290083030329165496.a n = A286991 (n + 1)

end A286991

/-! ## A286991.P16282568797407798768

`A286908(n+1)+∑[A286908(n+2)%2]`
-/

namespace A286991.P16282568797407798768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286908 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286908 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286991.P16282568797407798768

namespace A286991

/-- `A286908(n+1)+∑[A286908(n+2)%2]` -/
def P16282568797407798768.Spec : Prop :=
  ∀ n, P16282568797407798768.a n = A286991 (n + 1)

end A286991

/-! ## A286991.P13092578473917410420

`A188042(n+4)-2+n`
-/

namespace A286991.P13092578473917410420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 4) - 2 + (n : ℤ)

end

end A286991.P13092578473917410420

namespace A286991

/-- `A188042(n+4)-2+n` -/
def P13092578473917410420.Spec : Prop :=
  ∀ n, P13092578473917410420.a n = A286991 (n + 1)

end A286991

/-! ## A286991.P17466651136537369922

`∑[Δ[A188042(n+3)]+1]`
-/

namespace A286991.P17466651136537369922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286991.P17466651136537369922

namespace A286991

/-- `∑[Δ[A188042(n+3)]+1]` -/
def P17466651136537369922.Spec : Prop :=
  ∀ n, P17466651136537369922.a n = A286991 (n + 1)

end A286991

/-! ## A286991.P14349338299254297563

`lt[Δ[Δ[A285073(n+2)]], 2]+n+1`
-/

namespace A286991.P14349338299254297563
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + (n + 1)

end

end A286991.P14349338299254297563

namespace A286991

/-- `lt[Δ[Δ[A285073(n+2)]], 2]+n+1` -/
def P14349338299254297563.Spec : Prop :=
  ∀ n, (P14349338299254297563.a n : ℤ) = A286991 (n + 1)

end A286991

/-! ## A286991.P8704267752245998329

`A026249(A188265(n+1))+1+n`
-/

namespace A286991.P8704267752245998329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A188265 (n + 1)).toNat + 1 + (n : ℤ)

end

end A286991.P8704267752245998329

namespace A286991

/-- `A026249(A188265(n+1))+1+n` -/
def P8704267752245998329.Spec : Prop :=
  ∀ n, P8704267752245998329.a n = A286991 (n + 1)

end A286991

/-! ## A286991.P11550288552417318414

`A049474(A188265(n+1)+1)+n`
-/

namespace A286991.P11550288552417318414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A188265 (n + 1) + 1).toNat + (n : ℤ)

end

end A286991.P11550288552417318414

namespace A286991

/-- `A049474(A188265(n+1)+1)+n` -/
def P11550288552417318414.Spec : Prop :=
  ∀ n, P11550288552417318414.a n = A286991 (n + 1)

end A286991

/-! ## A286991.P13911753593398744411

`filter[n+1, A287028(#)]`
-/

namespace A286991.P13911753593398744411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287028 (f1 j) = 1) n)

end

end A286991.P13911753593398744411

namespace A286991

/-- `filter[n+1, A287028(#)]` -/
def P13911753593398744411.Spec : Prop :=
  ∀ n, (P13911753593398744411.a n : ℤ) = A286991 (n + 1)

end A286991

/-! ## A286991.P9250306996382482790

`A286802(n+1)-A286990(A286802(n+1))`
-/

namespace A286991.P9250306996382482790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1) - A286990 (A286802 (n + 1)).toNat

end

end A286991.P9250306996382482790

namespace A286991

/-- `A286802(n+1)-A286990(A286802(n+1))` -/
def P9250306996382482790.Spec : Prop :=
  ∀ n, P9250306996382482790.a n = A286991 (n + 1)

end A286991

/-!
# A286992: Positions of 1 in A286990; complement of A286991.

The programs for A286992, the canonical program `A286992.P3935319046932940823` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286992 has offset 1).

The definition of A286992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286992.P11496819078464525725

`comp[comp[A187971(n+1)]+n]`
-/

namespace A286992.P11496819078464525725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A286992.P11496819078464525725

namespace A286992

/-- `comp[comp[A187971(n+1)]+n]` -/
def P11496819078464525725.Spec : Prop :=
  ∀ n, (P11496819078464525725.a n : ℤ) = A286992 (n + 1)

end A286992

/-! ## A286992.P3935319046932940823

`A286803(n+1)+A159684(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A286992

/-- `A286803(n+1)+A159684(n)` -/
def P3935319046932940823.Spec : Prop :=
  ∀ n, P3935319046932940823.a n = A286992 (n + 1)

theorem P3935319046932940823.correct : P3935319046932940823.Spec := by
  intro n
  simp only [A286992, Nat.add_sub_cancel]

end A286992

/-! ## A286992.P13520763161504790284

`A286689(n+1)+A074840(n+1)`
-/

namespace A286992.P13520763161504790284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (n + 1) + A074840 (n + 1)

end

end A286992.P13520763161504790284

namespace A286992

/-- `A286689(n+1)+A074840(n+1)` -/
def P13520763161504790284.Spec : Prop :=
  ∀ n, P13520763161504790284.a n = A286992 (n + 1)

end A286992

/-! ## A286992.P6689303375066600535

`∑[A289036(n+2)-A288998(n+1)]`
-/

namespace A286992.P6689303375066600535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 2) - A288998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286992.P6689303375066600535

namespace A286992

/-- `∑[A289036(n+2)-A288998(n+1)]` -/
def P6689303375066600535.Spec : Prop :=
  ∀ n, P6689303375066600535.a n = A286992 (n + 1)

end A286992

/-! ## A286992.P680680139040489834

`filter[n+1, A286990(#)]`
-/

namespace A286992.P680680139040489834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286990 (f1 j) = 1) n)

end

end A286992.P680680139040489834

namespace A286992

/-- `filter[n+1, A286990(#)]` -/
def P680680139040489834.Spec : Prop :=
  ∀ n, (P680680139040489834.a n : ℤ) = A286992 (n + 1)

end A286992

/-! ## A286992.P10238488896250545257

`record[(n+1)*A286990(n+1)]`
-/

namespace A286992.P10238488896250545257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286992.P10238488896250545257

namespace A286992

/-- `record[(n+1)*A286990(n+1)]` -/
def P10238488896250545257.Spec : Prop :=
  ∀ n, P10238488896250545257.a n = A286992 (n + 1)

end A286992

/-! ## A286992.P5602910937113719845

`A307247(A001952(n+1))+A286803(n+1)`
-/

namespace A286992.P5602910937113719845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A001952 (n + 1)).toNat + A286803 (n + 1)

end

end A286992.P5602910937113719845

namespace A286992

/-- `A307247(A001952(n+1))+A286803(n+1)` -/
def P5602910937113719845.Spec : Prop :=
  ∀ n, P5602910937113719845.a n = A286992 (n + 1)

end A286992

/-!
# A286993: {0->000, 111->1}-transform of the Sturmian word A080764.

The programs for A286993, the canonical program `A286993.P11468751688728453655` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286993 has offset 1).

The definition of A286993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286993.P11468751688728453655

`char[A286995(n+1)-1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286993

/-- `char[A286995(n+1)-1]` -/
def P11468751688728453655.Spec : Prop :=
  ∀ n, (P11468751688728453655.a n : ℤ) = A286993 (n + 1)

theorem P11468751688728453655.correct : P11468751688728453655.Spec := by
  intro n
  simp only [A286993, Nat.add_sub_cancel]

end A286993

/-! ## A286993.P3792159425299104693

`A010891(A007953(n))^A240347(3*n+4)`
-/

namespace A286993.P3792159425299104693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010891 (A007953 n).toNat : ℚ) ^ (A240347 (3 * n + 4) : ℤ)

end

end A286993.P3792159425299104693

namespace A286993

/-- `A010891(A007953(n))^A240347(3*n+4)` -/
def P3792159425299104693.Spec : Prop :=
  ∀ n, P3792159425299104693.a n = (A286993 (n + 1) : ℚ)

end A286993

/-! ## A286993.P3041397578664257943

`A079978(A000330(n)-A347172(n+1))`
-/

namespace A286993.P3041397578664257943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A000330 n - A347172 (n + 1)).toNat

end

end A286993.P3041397578664257943

namespace A286993

/-- `A079978(A000330(n)-A347172(n+1))` -/
def P3041397578664257943.Spec : Prop :=
  ∀ n, P3041397578664257943.a n = A286993 (n + 1)

end A286993

/-! ## A286993.P8857004776996868387

`A266243(8*∑{digits}[n, #]^3)`
-/

namespace A286993.P8857004776996868387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266243 (8 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 3)

end

end A286993.P8857004776996868387

namespace A286993

/-- `A266243(8*∑{digits}[n, #]^3)` -/
def P8857004776996868387.Spec : Prop :=
  ∀ n, P8857004776996868387.a n = A286993 (n + 1)

end A286993

/-! ## A286993.P5431362378334334850

`A316342(A270173(n+1))`
-/

namespace A286993.P5431362378334334850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316342 (A270173 (n + 1)).toNat

end

end A286993.P5431362378334334850

namespace A286993

/-- `A316342(A270173(n+1))` -/
def P5431362378334334850.Spec : Prop :=
  ∀ n, P5431362378334334850.a n = A286993 (n + 1)

end A286993

/-!
# A286994: Positions of 0 in A286993; complement of A286995.

The programs for A286994, the canonical program `A286994.P1062580341009753336` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286994 has offset 1).

The definition of A286994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286994.P12246207647375439004

`comp[A286995(n+1)-1]+1`
-/

namespace A286994.P12246207647375439004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286995 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286994.P12246207647375439004

namespace A286994

/-- `comp[A286995(n+1)-1]+1` -/
def P12246207647375439004.Spec : Prop :=
  ∀ n, (P12246207647375439004.a n : ℤ) = A286994 (n + 1)

end A286994

/-! ## A286994.P14908004559930269341

`A195176(∑[char[3*n]])+1+n`
-/

namespace A286994.P14908004559930269341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A286994.P14908004559930269341

namespace A286994

/-- `A195176(∑[char[3*n]])+1+n` -/
def P14908004559930269341.Spec : Prop :=
  ∀ n, P14908004559930269341.a n = A286994 (n + 1)

end A286994

/-! ## A286994.P1062580341009753336

`n+1+A195176(A008620(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286994

/-- `n+1+A195176(A008620(n))` -/
def P1062580341009753336.Spec : Prop :=
  ∀ n, P1062580341009753336.a n = A286994 (n + 1)

theorem P1062580341009753336.correct : P1062580341009753336.Spec := by
  intro n
  simp only [A286994, Nat.add_sub_cancel]

end A286994

/-! ## A286994.P9018809125488632197

`eq[0, A286993(abs(1-n)+1)]`
-/

namespace A286994.P9018809125488632197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286993 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286994.P9018809125488632197

namespace A286994

/-- `eq[0, A286993(abs(1-n)+1)]` -/
def P9018809125488632197.Spec : Prop :=
  ∀ n, (P9018809125488632197.a n : ℤ) = A286994 (n + 1)

end A286994

/-! ## A286994.P8530233006233026015

`lt[(n+2)*A286993(n+1), root(π, π)]+1`
-/

namespace A286994.P8530233006233026015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A286993 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi ^ (1 / Real.pi)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A286994.P8530233006233026015

namespace A286994

/-- `lt[(n+2)*A286993(n+1), root(π, π)]+1` -/
def P8530233006233026015.Spec : Prop :=
  ∀ n, (P8530233006233026015.a n : ℤ) = A286994 (n + 1)

end A286994

/-! ## A286994.P13353041609647871380

`lt[A286993(A028310(n)), 1]`
-/

namespace A286994.P13353041609647871380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286993 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A286994.P13353041609647871380

namespace A286994

/-- `lt[A286993(A028310(n)), 1]` -/
def P13353041609647871380.Spec : Prop :=
  ∀ n, (P13353041609647871380.a n : ℤ) = A286994 (n + 1)

end A286994

/-! ## A286994.P482495765141047579

`A137735(A002378(n))+A020914(A008620(n))`
-/

namespace A286994.P482495765141047579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A002378 n).toNat + A020914 (A008620 n).toNat

end

end A286994.P482495765141047579

namespace A286994

/-- `A137735(A002378(n))+A020914(A008620(n))` -/
def P482495765141047579.Spec : Prop :=
  ∀ n, P482495765141047579.a n = A286994 (n + 1)

end A286994

/-!
# A286995: Positions of 1 in A286993; complement of A286994.

The programs for A286995, the canonical program `A286995.P5558521182322917598` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286995 has offset 1).

The definition of A286995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286995.P5558521182322917598

`3*floor(n/(3-sqrt(2)))+1+n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286995

/-- `3*floor(n/(3-sqrt(2)))+1+n` -/
def P5558521182322917598.Spec : Prop :=
  ∀ n, P5558521182322917598.a n = A286995 (n + 1)

theorem P5558521182322917598.correct : P5558521182322917598.Spec := by
  intro n
  simp only [A286995, Nat.add_sub_cancel]

end A286995

/-! ## A286995.P8296911674277088163

`∑[3*char[A195176(n+1)]+1]`
-/

namespace A286995.P8296911674277088163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286995.P8296911674277088163

namespace A286995

/-- `∑[3*char[A195176(n+1)]+1]` -/
def P8296911674277088163.Spec : Prop :=
  ∀ n, (P8296911674277088163.a n : ℤ) = A286995 (n + 1)

end A286995

/-! ## A286995.P13925913711924832824

`filter[n+1, A286993(#)]`
-/

namespace A286995.P13925913711924832824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286993 (f1 j) = 1) n)

end

end A286995.P13925913711924832824

namespace A286995

/-- `filter[n+1, A286993(#)]` -/
def P13925913711924832824.Spec : Prop :=
  ∀ n, (P13925913711924832824.a n : ℤ) = A286995 (n + 1)

end A286995

/-! ## A286995.P17423882657210093204

`record[(n+1)*A286993(n+1)]`
-/

namespace A286995.P17423882657210093204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286995.P17423882657210093204

namespace A286995

/-- `record[(n+1)*A286993(n+1)]` -/
def P17423882657210093204.Spec : Prop :=
  ∀ n, P17423882657210093204.a n = A286995 (n + 1)

end A286995

/-! ## A286995.P16103555748969378743

`eq[char[A286994(n+1)], A000007(n)]`
-/

namespace A286995.P16103555748969378743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286994 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286995.P16103555748969378743

namespace A286995

/-- `eq[char[A286994(n+1)], A000007(n)]` -/
def P16103555748969378743.Spec : Prop :=
  ∀ n, (P16103555748969378743.a n : ℤ) = A286995 (n + 1)

end A286995

/-! ## A286995.P14717578126055693704

`eq[char[A286994(n+1)], A000038(n)]`
-/

namespace A286995.P14717578126055693704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286994 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286995.P14717578126055693704

namespace A286995

/-- `eq[char[A286994(n+1)], A000038(n)]` -/
def P14717578126055693704.Spec : Prop :=
  ∀ n, (P14717578126055693704.a n : ℤ) = A286995 (n + 1)

end A286995

/-! ## A286995.P3210744798177813402

`lt[A028310(n)-n, A286993(A028310(n))]`
-/

namespace A286995.P3210744798177813402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286993 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286995.P3210744798177813402

namespace A286995

/-- `lt[A028310(n)-n, A286993(A028310(n))]` -/
def P3210744798177813402.Spec : Prop :=
  ∀ n, (P3210744798177813402.a n : ℤ) = A286995 (n + 1)

end A286995

/-! ## A286995.P14089856573829948358

`lt[A286993(n+2), A286993(A028310(n))]`
-/

namespace A286995.P14089856573829948358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286993 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286993 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286995.P14089856573829948358

namespace A286995

/-- `lt[A286993(n+2), A286993(A028310(n))]` -/
def P14089856573829948358.Spec : Prop :=
  ∀ n, (P14089856573829948358.a n : ℤ) = A286995 (n + 1)

end A286995

/-!
# A286996: {0->000, 11->null}-transform of the Sturmian word A080764.

The programs for A286996, the canonical program `A286996.P13697868704389971951` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286996 has offset 1).

The definition of A286996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286996.P9476351046795727487

`char[3*comp[floor(n/sqrt(2))+n]+n]`
-/

namespace A286996.P9476351046795727487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286996.P9476351046795727487

namespace A286996

/-- `char[3*comp[floor(n/sqrt(2))+n]+n]` -/
def P9476351046795727487.Spec : Prop :=
  ∀ n, (P9476351046795727487.a n : ℤ) = A286996 (n + 1)

end A286996

/-! ## A286996.P13697868704389971951

`A187969(A104521(n)+n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286996

/-- `A187969(A104521(n)+n)` -/
def P13697868704389971951.Spec : Prop :=
  ∀ n, P13697868704389971951.a n = A286996 (n + 1)

theorem P13697868704389971951.correct : P13697868704389971951.Spec := by
  intro n
  simp only [A286996, Nat.add_sub_cancel]

end A286996

/-! ## A286996.P9508244253142844365

`A288997(A080764(n)+n)`
-/

namespace A286996.P9508244253142844365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A080764 n + (n : ℤ)).toNat

end

end A286996.P9508244253142844365

namespace A286996

/-- `A288997(A080764(n)+n)` -/
def P9508244253142844365.Spec : Prop :=
  ∀ n, P9508244253142844365.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P4295053433304907521

`A188374(A080764(n)+1+n)`
-/

namespace A286996.P4295053433304907521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (A080764 n + 1 + (n : ℤ)).toNat

end

end A286996.P4295053433304907521

namespace A286996

/-- `A188374(A080764(n)+1+n)` -/
def P4295053433304907521.Spec : Prop :=
  ∀ n, P4295053433304907521.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P16747826381210421762

`A288997(A083035(n+1)+n)`
-/

namespace A286996.P16747826381210421762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A083035 (n + 1) + (n : ℤ)).toNat

end

end A286996.P16747826381210421762

namespace A286996

/-- `A288997(A083035(n+1)+n)` -/
def P16747826381210421762.Spec : Prop :=
  ∀ n, P16747826381210421762.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P2932875136720918389

`A288997(A188395(n+1)+n)`
-/

namespace A286996.P2932875136720918389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A188395 (n + 1) + (n : ℤ)).toNat

end

end A286996.P2932875136720918389

namespace A286996

/-- `A288997(A188395(n+1)+n)` -/
def P2932875136720918389.Spec : Prop :=
  ∀ n, P2932875136720918389.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P7773071331285691274

`A188374(A286687(n+1)-n)`
-/

namespace A286996.P7773071331285691274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (A286687 (n + 1) - (n : ℤ)).toNat

end

end A286996.P7773071331285691274

namespace A286996

/-- `A188374(A286687(n+1)-n)` -/
def P7773071331285691274.Spec : Prop :=
  ∀ n, P7773071331285691274.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P16350496190852056928

`A144611(n*A288997(n+1))`
-/

namespace A286996.P16350496190852056928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 ((n : ℤ) * A288997 (n + 1)).toNat

end

end A286996.P16350496190852056928

namespace A286996

/-- `A144611(n*A288997(n+1))` -/
def P16350496190852056928.Spec : Prop :=
  ∀ n, P16350496190852056928.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P13432504034336058576

`A159684(n*A288997(n+1))`
-/

namespace A286996.P13432504034336058576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 ((n : ℤ) * A288997 (n + 1)).toNat

end

end A286996.P13432504034336058576

namespace A286996

/-- `A159684(n*A288997(n+1))` -/
def P13432504034336058576.Spec : Prop :=
  ∀ n, P13432504034336058576.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P3615140471401861173

`and(A001953(n), A187969(n+1))`
-/

namespace A286996.P3615140471401861173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001953 n) (A187969 (n + 1))

end

end A286996.P3615140471401861173

namespace A286996

/-- `and(A001953(n), A187969(n+1))` -/
def P3615140471401861173.Spec : Prop :=
  ∀ n, P3615140471401861173.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P1311083112135399684

`and(A049728(n), A187969(n+1))`
-/

namespace A286996.P1311083112135399684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049728 n) (A187969 (n + 1))

end

end A286996.P1311083112135399684

namespace A286996

/-- `and(A049728(n), A187969(n+1))` -/
def P1311083112135399684.Spec : Prop :=
  ∀ n, P1311083112135399684.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P10840685909868659711

`and(A083051(n), A187969(n+1))`
-/

namespace A286996.P10840685909868659711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083051 n) (A187969 (n + 1))

end

end A286996.P10840685909868659711

namespace A286996

/-- `and(A083051(n), A187969(n+1))` -/
def P10840685909868659711.Spec : Prop :=
  ∀ n, P10840685909868659711.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P10658285164792499512

`and(A106035(n), A187969(n+1))`
-/

namespace A286996.P10658285164792499512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106035 n) (A187969 (n + 1))

end

end A286996.P10658285164792499512

namespace A286996

/-- `and(A106035(n), A187969(n+1))` -/
def P10658285164792499512.Spec : Prop :=
  ∀ n, P10658285164792499512.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P12028808019741697907

`A188374(A188374(n+1)+n+1)`
-/

namespace A286996.P12028808019741697907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (A188374 (n + 1) + (n + 1 : ℤ)).toNat

end

end A286996.P12028808019741697907

namespace A286996

/-- `A188374(A188374(n+1)+n+1)` -/
def P12028808019741697907.Spec : Prop :=
  ∀ n, P12028808019741697907.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P4022755710162698311

`A288997(n+1-A171588(n+1))`
-/

namespace A286996.P4022755710162698311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 ((n + 1 : ℤ) - A171588 (n + 1)).toNat

end

end A286996.P4022755710162698311

namespace A286996

/-- `A288997(n+1-A171588(n+1))` -/
def P4022755710162698311.Spec : Prop :=
  ∀ n, P4022755710162698311.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P635083118679191949

`A288997(A286687(n+1)-(n+1))`
-/

namespace A286996.P635083118679191949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A286687 (n + 1) - (n + 1 : ℤ)).toNat

end

end A286996.P635083118679191949

namespace A286996

/-- `A288997(A286687(n+1)-(n+1))` -/
def P635083118679191949.Spec : Prop :=
  ∀ n, P635083118679191949.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P18368688866827004264

`A083035(n+1)*A187969(n+1)`
-/

namespace A286996.P18368688866827004264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1) * A187969 (n + 1)

end

end A286996.P18368688866827004264

namespace A286996

/-- `A083035(n+1)*A187969(n+1)` -/
def P18368688866827004264.Spec : Prop :=
  ∀ n, P18368688866827004264.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P1181547292089826169

`A187969(n+1)*A288213(n+1)`
-/

namespace A286996.P1181547292089826169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (n + 1) * A288213 (n + 1)

end

end A286996.P1181547292089826169

namespace A286996

/-- `A187969(n+1)*A288213(n+1)` -/
def P1181547292089826169.Spec : Prop :=
  ∀ n, P1181547292089826169.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P9045273446063974392

`A187969(n+1)*A288997(n+1)`
-/

namespace A286996.P9045273446063974392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (n + 1) * A288997 (n + 1)

end

end A286996.P9045273446063974392

namespace A286996

/-- `A187969(n+1)*A288997(n+1)` -/
def P9045273446063974392.Spec : Prop :=
  ∀ n, P9045273446063974392.a n = A286996 (n + 1)

end A286996

/-! ## A286996.P10765032918044628695

`A187972(n+1)*A288997(n+1)`
-/

namespace A286996.P10765032918044628695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187972 (n + 1) * A288997 (n + 1)

end

end A286996.P10765032918044628695

namespace A286996

/-- `A187972(n+1)*A288997(n+1)` -/
def P10765032918044628695.Spec : Prop :=
  ∀ n, P10765032918044628695.a n = A286996 (n + 1)

end A286996

/-!
# A286997: Positions of 0 in A286996; complement of A188383.

The programs for A286997, the canonical program `A286997.P246402110141512210` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286997 has offset 1).

The definition of A286997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286997.P10936616442624818550

`A097508(∑[char[3*n]])+n+1`
-/

namespace A286997.P10936616442624818550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A286997.P10936616442624818550

namespace A286997

/-- `A097508(∑[char[3*n]])+n+1` -/
def P10936616442624818550.Spec : Prop :=
  ∀ n, P10936616442624818550.a n = A286997 (n + 1)

end A286997

/-! ## A286997.P5476897764268852899

`comp[record[A187971(xor(1, n)+1)-1]]+1`
-/

namespace A286997.P5476897764268852899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (Nat.xor 1 n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286997.P5476897764268852899

namespace A286997

/-- `comp[record[A187971(xor(1, n)+1)-1]]+1` -/
def P5476897764268852899.Spec : Prop :=
  ∀ n, (P5476897764268852899.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P246402110141512210

`A097508(A008620(n))+1+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286997

/-- `A097508(A008620(n))+1+n` -/
def P246402110141512210.Spec : Prop :=
  ∀ n, P246402110141512210.a n = A286997 (n + 1)

theorem P246402110141512210.correct : P246402110141512210.Spec := by
  intro n
  simp only [A286997, Nat.add_sub_cancel]

end A286997

/-! ## A286997.P14481358865024790134

`∪[A080754(n+1), A288998(n+1)]`
-/

namespace A286997.P14481358865024790134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286997.P14481358865024790134

namespace A286997

/-- `∪[A080754(n+1), A288998(n+1)]` -/
def P14481358865024790134.Spec : Prop :=
  ∀ n, (P14481358865024790134.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P14449482959537948236

`∪[A190777(n+1), A187970(n+1)]`
-/

namespace A286997.P14449482959537948236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286997.P14449482959537948236

namespace A286997

/-- `∪[A190777(n+1), A187970(n+1)]` -/
def P14449482959537948236.Spec : Prop :=
  ∀ n, (P14449482959537948236.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P7336076669760539133

`∪[A188373(n+1), A288998(n+1)]`
-/

namespace A286997.P7336076669760539133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286997.P7336076669760539133

namespace A286997

/-- `∪[A188373(n+1), A288998(n+1)]` -/
def P7336076669760539133.Spec : Prop :=
  ∀ n, (P7336076669760539133.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P5736525969759616059

`comp[A003151(n+1)*A171588(n+1)]`
-/

namespace A286997.P5736525969759616059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) * A171588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286997.P5736525969759616059

namespace A286997

/-- `comp[A003151(n+1)*A171588(n+1)]` -/
def P5736525969759616059.Spec : Prop :=
  ∀ n, (P5736525969759616059.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P4962189592938104066

`comp[A171588(n+1)*A188376(n+1)]`
-/

namespace A286997.P4962189592938104066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) * A188376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286997.P4962189592938104066

namespace A286997

/-- `comp[A171588(n+1)*A188376(n+1)]` -/
def P4962189592938104066.Spec : Prop :=
  ∀ n, (P4962189592938104066.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P6921045518584004166

`∪[A003151(n+1)+1, A288998(n+1)]`
-/

namespace A286997.P6921045518584004166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286997.P6921045518584004166

namespace A286997

/-- `∪[A003151(n+1)+1, A288998(n+1)]` -/
def P6921045518584004166.Spec : Prop :=
  ∀ n, (P6921045518584004166.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P1075631781576381382

`∪[A080755(n+1)-1, A288998(n+1)]`
-/

namespace A286997.P1075631781576381382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286997.P1075631781576381382

namespace A286997

/-- `∪[A080755(n+1)-1, A288998(n+1)]` -/
def P1075631781576381382.Spec : Prop :=
  ∀ n, (P1075631781576381382.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P14144839069380762673

`∪[A188376(n+1)+2, A288998(n+1)]`
-/

namespace A286997.P14144839069380762673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286997.P14144839069380762673

namespace A286997

/-- `∪[A188376(n+1)+2, A288998(n+1)]` -/
def P14144839069380762673.Spec : Prop :=
  ∀ n, (P14144839069380762673.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P4597601926407650337

`A188301(n+4)-3`
-/

namespace A286997.P4597601926407650337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (n + 4) - 3

end

end A286997.P4597601926407650337

namespace A286997

/-- `A188301(n+4)-3` -/
def P4597601926407650337.Spec : Prop :=
  ∀ n, P4597601926407650337.a n = A286997 (n + 1)

end A286997

/-! ## A286997.P15653552984946213528

`∑[A004525(Δ[A188301(n+3)]²)]`
-/

namespace A286997.P15653552984946213528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286997.P15653552984946213528

namespace A286997

/-- `∑[A004525(Δ[A188301(n+3)]²)]` -/
def P15653552984946213528.Spec : Prop :=
  ∀ n, P15653552984946213528.a n = A286997 (n + 1)

end A286997

/-! ## A286997.P3853949862076280282

`∑[A133937(Δ[A188301(n+3)]+1)]`
-/

namespace A286997.P3853949862076280282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133937 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286997.P3853949862076280282

namespace A286997

/-- `∑[A133937(Δ[A188301(n+3)]+1)]` -/
def P3853949862076280282.Spec : Prop :=
  ∀ n, P3853949862076280282.a n = A286997 (n + 1)

end A286997

/-! ## A286997.P8426836791735996584

`comp[A081477(2*(n+1))*A159684(n)]`
-/

namespace A286997.P8426836791735996584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * (n + 1)) * A159684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286997.P8426836791735996584

namespace A286997

/-- `comp[A081477(2*(n+1))*A159684(n)]` -/
def P8426836791735996584.Spec : Prop :=
  ∀ n, (P8426836791735996584.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P14270074830255587532

`floor(∑[sqrt(A083039(2*n+3))])`
-/

namespace A286997.P14270074830255587532
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A083039 (2 * n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A286997.P14270074830255587532

namespace A286997

/-- `floor(∑[sqrt(A083039(2*n+3))])` -/
def P14270074830255587532.Spec : Prop :=
  ∀ n, P14270074830255587532.a n = A286997 (n + 1)

end A286997

/-! ## A286997.P5967483993649580413

`A187977(n+1)-A097508(A187977(n+1))`
-/

namespace A286997.P5967483993649580413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1) - A097508 (A187977 (n + 1)).toNat

end

end A286997.P5967483993649580413

namespace A286997

/-- `A187977(n+1)-A097508(A187977(n+1))` -/
def P5967483993649580413.Spec : Prop :=
  ∀ n, P5967483993649580413.a n = A286997 (n + 1)

end A286997

/-! ## A286997.P1837017178393994122

`floor(∑[sqrt(A040258(2*n+3))])`
-/

namespace A286997.P1837017178393994122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A040258 (2 * n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A286997.P1837017178393994122

namespace A286997

/-- `floor(∑[sqrt(A040258(2*n+3))])` -/
def P1837017178393994122.Spec : Prop :=
  ∀ n, P1837017178393994122.a n = A286997 (n + 1)

end A286997

/-! ## A286997.P16078032199798166201

`lt[tan(tanh(A307247(n+1))), 1]+1`
-/

namespace A286997.P16078032199798166201
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.tanh (A307247 (n + 1) : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A286997.P16078032199798166201

namespace A286997

/-- `lt[tan(tanh(A307247(n+1))), 1]+1` -/
def P16078032199798166201.Spec : Prop :=
  ∀ n, (P16078032199798166201.a n : ℤ) = A286997 (n + 1)

end A286997

/-! ## A286997.P6527633116848308712

`lt[A188374(n+1), A294180(A028310(n))]`
-/

namespace A286997.P6527633116848308712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286997.P6527633116848308712

namespace A286997

/-- `lt[A188374(n+1), A294180(A028310(n))]` -/
def P6527633116848308712.Spec : Prop :=
  ∀ n, (P6527633116848308712.a n : ℤ) = A286997 (n + 1)

end A286997

/-!
# A286998: 0-limiting word of the morphism 0->10, 1->20, 2->0.

The programs for A286998, there is no canonical definition to state claims against.
-/

/-! ## A286998.P10680826223441319713

`3-A107796(abs(1-n))`
-/

namespace A286998.P10680826223441319713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A107796 |1 - (n : ℤ)|.toNat

end

end A286998.P10680826223441319713

/-! ## A286998.P14969066088712230027

`5-A107793(abs(1-n))`
-/

namespace A286998.P14969066088712230027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A107793 |1 - (n : ℤ)|.toNat

end

end A286998.P14969066088712230027

/-! ## A286998.P8075349976958086925

`round(tan(A347290(n+1)²))`
-/

namespace A286998.P8075349976958086925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (A347290 (n + 1) ^ 2 : ℝ))

end

end A286998.P8075349976958086925

/-! ## A286998.P10697473366362579648

`C(2, A107796(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A286998.P10697473366362579648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose 2 (A107796 (n - 1) + (a (n - 1) : ℤ)).toNat

end

end A286998.P10697473366362579648

/-! ## A286998.P14017040730648630479

`lcm(A347279(n+1), A347290(n+1))%3`
-/

namespace A286998.P14017040730648630479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A347279 (n + 1)) (A347290 (n + 1)) % 3

end

end A286998.P14017040730648630479

/-! ## A286998.P3879810270312966488

`(A005384(2*n+1)*A347290(n+1))%3`
-/

namespace A286998.P3879810270312966488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (2 * n + 1) * A347290 (n + 1)) 3

end

end A286998.P3879810270312966488

/-! ## A286998.P1755907274044506761

`A001281(A347290(n+1)+A000045(C(n, n+1)))`
-/

namespace A286998.P1755907274044506761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A347290 (n + 1) + A000045 (Nat.choose n (n + 1))).toNat

end

end A286998.P1755907274044506761

/-! ## A286998.P2777146479517912431

`A080843(A319968(A322409(n))+n+1)`
-/

namespace A286998.P2777146479517912431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A319968 (A322409 n).toNat + (n + 1 : ℤ)).toNat

end

end A286998.P2777146479517912431

/-!
# A286999: Positions of 0 in A286998.

The programs for A286999, there is no canonical definition to state claims against.
-/

/-! ## A286999.P17387627044531697571

`eq[0, A286998(n+1)]+1`
-/

namespace A286999.P17387627044531697571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286999.P17387627044531697571

/-! ## A286999.P6629459673438512498

`record[2-A286998(n+2)+n]`
-/

namespace A286999.P6629459673438512498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A286998 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286999.P6629459673438512498

/-! ## A286999.P7466382357101549043

`eq[3, A172471(a(A286998(n)))]` with `a(0)=6`
-/

namespace A286999.P7466382357101549043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A172471 (f2 (A286998 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286999.P7466382357101549043

/-! ## A286999.P580965476796441135

`A287177(n+1)-A316324(n+1)`
-/

namespace A286999.P580965476796441135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287177 (n + 1) - A316324 (n + 1)

end

end A286999.P580965476796441135

/-! ## A286999.P9639442338253032369

`record[A328399(n)-A286998(A328399(n))]`
-/

namespace A286999.P9639442338253032369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n - A286998 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286999.P9639442338253032369

/-! ## A286999.P13499798431125372856

`A140098(A287114(n+1))+1-A287114(n+1)`
-/

namespace A286999.P13499798431125372856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A287114 (n + 1)).toNat + (1 - A287114 (n + 1))

end

end A286999.P13499798431125372856

/-! ## A286999.P2175317561463815781

`record[A107796(n)-1+n]`
-/

namespace A286999.P2175317561463815781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107796 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286999.P2175317561463815781

/-! ## A286999.P15007629131671622649

`record[A008619(n)-A286998(A008619(n))]`
-/

namespace A286999.P15007629131671622649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A286998 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286999.P15007629131671622649

/-! ## A286999.P7464336694344458360

`A285667(A316324(n+1)+1)-A316324(n+1)`
-/

namespace A286999.P7464336694344458360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285667 (A316324 (n + 1) + 1).toNat - A316324 (n + 1)

end

end A286999.P7464336694344458360

/-! ## A286999.P13752788136811412782

`A276798(A278040(A316324(n+1)-n))`
-/

namespace A286999.P13752788136811412782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A278040 (A316324 (n + 1) - (n : ℤ)).toNat).toNat

end

end A286999.P13752788136811412782

