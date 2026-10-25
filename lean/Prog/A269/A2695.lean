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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A269500: a(n) = Fibonacci(10*n).

The programs for A269500, the canonical program `A269500.P11988186463706824852` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269500 has offset 0).

The definition of A269500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269500.P11988186463706824852

`123*a(n-1)-a(n-2)` with `a(0)=0, a(1)=55`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269500

/-- `123*a(n-1)-a(n-2)` -/
def P11988186463706824852.Spec : Prop :=
  ∀ n, P11988186463706824852.a n = A269500 n

theorem P11988186463706824852.correct : P11988186463706824852.Spec := by
  intro n
  simp only [A269500]

end A269500

/-! ## A269500.P1514392920085842131

`A000045(10*n)`
-/

namespace A269500.P1514392920085842131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (10 * n)

end

end A269500.P1514392920085842131

namespace A269500

/-- `A000045(10*n)` -/
def P1514392920085842131.Spec : Prop :=
  ∀ n, P1514392920085842131.a n = A269500 n

end A269500

/-! ## A269500.P12701193749960050217

`(((1+sqrt(5))/2)^(10*n)-(2/(1+sqrt(5)))^(10*n))/sqrt(5)`
-/

namespace A269500.P12701193749960050217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((1 + Real.sqrt (5 : ℝ)) / 2) ^ (10 * n) - (2 / (1 + Real.sqrt (5 : ℝ))) ^ (10 * n)) / Real.sqrt (5 : ℝ)

end

end A269500.P12701193749960050217

namespace A269500

/-- `(((1+sqrt(5))/2)^(10*n)-(2/(1+sqrt(5)))^(10*n))/sqrt(5)` -/
def P12701193749960050217.Spec : Prop :=
  ∀ n, P12701193749960050217.a n = (A269500 n : ℝ)

end A269500

/-! ## A269500.P706427696182970207

`A102312(2*n)`
-/

namespace A269500.P706427696182970207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102312 (2 * n)

end

end A269500.P706427696182970207

namespace A269500

/-- `A102312(2*n)` -/
def P706427696182970207.Spec : Prop :=
  ∀ n, P706427696182970207.a n = A269500 n

end A269500

/-! ## A269500.P7218765462929584159

`A001906(5*n)`
-/

namespace A269500.P7218765462929584159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (5 * n)

end

end A269500.P7218765462929584159

namespace A269500

/-- `A001906(5*n)` -/
def P7218765462929584159.Spec : Prop :=
  ∀ n, P7218765462929584159.a n = A269500 n

end A269500

/-!
# A269501: Subsequence immediately following the instances of n in the sequence is n, n-1, ..., 1, n+1, n+2, ....

The programs for A269501, the canonical program `A269501.P849220256039381575` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269501 has offset 0).

The definition of A269501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269501.P849220256039381575

`floor(log2(A078446(n+1)))+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269501

/-- `floor(log2(A078446(n+1)))+1` -/
def P849220256039381575.Spec : Prop :=
  ∀ n, (P849220256039381575.a n : ℤ) = A269501 n

theorem P849220256039381575.correct : P849220256039381575.Spec := by
  intro n
  simp only [A269501]

end A269501

/-! ## A269501.P1396580164227113412

`A070939(A078446(n+1))`
-/

namespace A269501.P1396580164227113412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A078446 (n + 1)).toNat

end

end A269501.P1396580164227113412

namespace A269501

/-- `A070939(A078446(n+1))` -/
def P1396580164227113412.Spec : Prop :=
  ∀ n, P1396580164227113412.a n = A269501 n

end A269501

/-! ## A269501.P11307900672178861423

`A029837(A078446(n+1)+1)`
-/

namespace A269501.P11307900672178861423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A078446 (n + 1) + 1).toNat

end

end A269501.P11307900672178861423

namespace A269501

/-- `A029837(A078446(n+1)+1)` -/
def P11307900672178861423.Spec : Prop :=
  ∀ n, P11307900672178861423.a n = A269501 n

end A269501

/-! ## A269501.P4452304976081072751

`A227185(A078446(n+1)-1)+1`
-/

namespace A269501.P4452304976081072751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (A078446 (n + 1) - 1).toNat + 1

end

end A269501.P4452304976081072751

namespace A269501

/-- `A227185(A078446(n+1)-1)+1` -/
def P4452304976081072751.Spec : Prop :=
  ∀ n, P4452304976081072751.a n = A269501 n

end A269501

/-! ## A269501.P6257942962319831097

`A329949(A020703(n+1))`
-/

namespace A269501.P6257942962319831097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (A020703 (n + 1)).toNat

end

end A269501.P6257942962319831097

namespace A269501

/-- `A329949(A020703(n+1))` -/
def P6257942962319831097.Spec : Prop :=
  ∀ n, P6257942962319831097.a n = A269501 n

end A269501

/-! ## A269501.P3763463485236864995

`A305615(n)+1`
-/

namespace A269501.P3763463485236864995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305615 n + 1

end

end A269501.P3763463485236864995

namespace A269501

/-- `A305615(n)+1` -/
def P3763463485236864995.Spec : Prop :=
  ∀ n, P3763463485236864995.a n = A269501 n

theorem P3763463485236864995.correct : P3763463485236864995.Spec := by
  intro n
  simp only [A269501, Nat.add_sub_cancel, A269501.P3763463485236864995.a, A269501.P849220256039381575.a, A078446, A078446.P4984706147977569458.a, A305615, A305615.P4289076314322298115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269501

/-! ## A269501.P15380727380406617168

`1-(A053186(n²)-A305615(n))`
-/

namespace A269501.P15380727380406617168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A053186 (n ^ 2) - A305615 n)

end

end A269501.P15380727380406617168

namespace A269501

/-- `1-(A053186(n²)-A305615(n))` -/
def P15380727380406617168.Spec : Prop :=
  ∀ n, P15380727380406617168.a n = A269501 n

end A269501

/-! ## A269501.P14444340777606019683

`1-(A055029(∑[n])-A305615(n))`
-/

namespace A269501.P14444340777606019683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A055029 (∑ j ∈ Finset.range (n + 1), f1 j) - A305615 n)

end

end A269501.P14444340777606019683

namespace A269501

/-- `1-(A055029(∑[n])-A305615(n))` -/
def P14444340777606019683.Spec : Prop :=
  ∀ n, P14444340777606019683.a n = A269501 n

end A269501

/-! ## A269501.P10940396318112488721

`A004736(A008805(n)-A305615(n))`
-/

namespace A269501.P10940396318112488721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A008805 n - A305615 n).toNat

end

end A269501.P10940396318112488721

namespace A269501

/-- `A004736(A008805(n)-A305615(n))` -/
def P10940396318112488721.Spec : Prop :=
  ∀ n, P10940396318112488721.a n = A269501 n

end A269501

/-! ## A269501.P5570892714628085687

`A000124(n)-(A000217(n)-A305615(n))`
-/

namespace A269501.P5570892714628085687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A000217 n - A305615 n)

end

end A269501.P5570892714628085687

namespace A269501

/-- `A000124(n)-(A000217(n)-A305615(n))` -/
def P5570892714628085687.Spec : Prop :=
  ∀ n, P5570892714628085687.a n = A269501 n

end A269501

/-!
# A269502: Number of contiguous substrings of the binary representation of n that are equal to some a(m) where 1 <= m < n and where a(1)=1.

The programs for A269502, there is no canonical definition to state claims against.
-/

/-! ## A269502.P15575655659872696714

`A071693(n)-A178798(A144742(n+1))`
-/

namespace A269502.P15575655659872696714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 n - A178798 (A144742 (n + 1)).toNat

end

end A269502.P15575655659872696714

/-! ## A269502.P1706893408935493076

`A000120(A118033(n)+A001333(n))`
-/

namespace A269502.P1706893408935493076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A118033 n + A001333 n).toNat

end

end A269502.P1706893408935493076

/-! ## A269502.P3944622435055406193

`A090048(A100720(n)-A159918(n))`
-/

namespace A269502.P3944622435055406193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090048 (A100720 n - A159918 n).toNat

end

end A269502.P3944622435055406193

/-! ## A269502.P9853006059683467431

`A182535(A002522(n)*A304867(n))`
-/

namespace A269502.P9853006059683467431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (A002522 n * A304867 n).toNat

end

end A269502.P9853006059683467431

/-! ## A269502.P7394323977502930976

`A054861(n)+A001511(A027611(n+1))`
-/

namespace A269502.P7394323977502930976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + A001511 (A027611 (n + 1)).toNat

end

end A269502.P7394323977502930976

/-!
# A269503: Largest prime factor of A138148(n).

The programs for A269503, there is no canonical definition to state claims against.
-/

/-! ## A269503.P2253555526643598195

`A003021(A002998(n+2))`
-/

namespace A269503.P2253555526643598195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003021 (A002998 (n + 2)).toNat

end

end A269503.P2253555526643598195

/-! ## A269503.P572919835517561166

`A003021(A004869(n+1)+2)`
-/

namespace A269503.P572919835517561166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003021 (A004869 (n + 1) + 2).toNat

end

end A269503.P572919835517561166

/-! ## A269503.P403617993096793337

`A003021(A004891(n+1)+2)`
-/

namespace A269503.P403617993096793337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003021 (A004891 (n + 1) + 2).toNat

end

end A269503.P403617993096793337

/-! ## A269503.P8971974544235245914

`A003021(A001222(5^n)+2)`
-/

namespace A269503.P8971974544235245914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003021 (A001222 (5 ^ n) + 2).toNat

end

end A269503.P8971974544235245914

/-!
# A269504: Number of nX3 arrays containing 3 copies of 0..n-1 avoiding the pattern down-up in every row and column.

The programs for A269504, there is no canonical definition to state claims against.
-/

/-! ## A269504.P826576241846637695

`A269505(∑[n+3]+1)`
-/

namespace A269504.P826576241846637695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269504.P826576241846637695

/-! ## A269504.P2926673762022715444

`record[A269505(A130297(n+1))]`
-/

namespace A269504.P2926673762022715444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269504.P2926673762022715444

/-! ## A269504.P14911575125021435457

`record[A269505(A198464(n+1))]`
-/

namespace A269504.P14911575125021435457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269504.P14911575125021435457

/-!
# A269505: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 avoiding the pattern down-up in every row and column.

The programs for A269505, there is no canonical definition to state claims against.
-/

/-! ## A269505.P1925478680460759808

`A269479(A043317(n+1))`
-/

namespace A269505.P1925478680460759808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (A043317 (n + 1)).toNat

end

end A269505.P1925478680460759808

/-! ## A269505.P14225022084292255403

`A269479(A044914(n+1))`
-/

namespace A269505.P14225022084292255403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (A044914 (n + 1)).toNat

end

end A269505.P14225022084292255403

/-! ## A269505.P10976008588963748464

`A269479(A055648(n+1))`
-/

namespace A269505.P10976008588963748464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (A055648 (n + 1)).toNat

end

end A269505.P10976008588963748464

/-! ## A269505.P3237099041075471962

`A269479(A099469(n+1))`
-/

namespace A269505.P3237099041075471962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (A099469 (n + 1)).toNat

end

end A269505.P3237099041075471962

/-! ## A269505.P13713724623287843723

`A269479(A132378(n+1))`
-/

namespace A269505.P13713724623287843723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (A132378 (n + 1)).toNat

end

end A269505.P13713724623287843723

/-!
# A269506: Number of 2Xn arrays containing n copies of 0..2-1 avoiding the pattern down-up in every row and column.

The programs for A269506, there is no canonical definition to state claims against.
-/

/-! ## A269506.P1308187724881906762

`record[ratio[A269505(n+2)]]`
-/

namespace A269506.P1308187724881906762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269506.P1308187724881906762

/-! ## A269506.P10118572725964925647

`A269505(∑[n+1]+2)`
-/

namespace A269506.P10118572725964925647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269506.P10118572725964925647

/-! ## A269506.P3630986490366549604

`A269646(∑[n+1]+2)`
-/

namespace A269506.P3630986490366549604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269506.P3630986490366549604

/-! ## A269506.P14207222124082175300

`record[A167374(n)*A269505(n+3)]`
-/

namespace A269506.P14207222124082175300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A269505 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269506.P14207222124082175300

/-! ## A269506.P13331985680387414334

`record[gcd(A025581(n), A269646(n+3))]`
-/

namespace A269506.P13331985680387414334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A269646 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269506.P13331985680387414334

/-!
# A269507: Number of 3Xn arrays containing n copies of 0..3-1 avoiding the pattern down-up in every row and column.

The programs for A269507, there is no canonical definition to state claims against.
-/

/-! ## A269507.P16495695638030569067

`A269505(∑[n+2]+4)`
-/

namespace A269507.P16495695638030569067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269507.P16495695638030569067

/-! ## A269507.P6605065529213732440

`lcm(2, A269505(A167614(n+1)))`
-/

namespace A269507.P6605065529213732440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269505 (A167614 (n + 1)).toNat)

end

end A269507.P6605065529213732440

/-! ## A269507.P3717635138552011086

`A269505(A167614(n+1))+A011738(n)`
-/

namespace A269507.P3717635138552011086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (A167614 (n + 1)).toNat + A011738 n

end

end A269507.P3717635138552011086

/-! ## A269507.P14356737248537406880

`A269505(A167614(n+1))+A025442(n)`
-/

namespace A269507.P14356737248537406880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (A167614 (n + 1)).toNat + A025442 n

end

end A269507.P14356737248537406880

/-!
# A269508: Number of 4Xn arrays containing n copies of 0..4-1 avoiding the pattern down-up in every row and column.

The programs for A269508, there is no canonical definition to state claims against.
-/

/-! ## A269508.P12735434690310250694

`A269505(A141214(n)+7)`
-/

namespace A269508.P12735434690310250694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (A141214 n + 7).toNat

end

end A269508.P12735434690310250694

/-! ## A269508.P6144537664621245703

`A269505(A052905(n)+9)`
-/

namespace A269508.P6144537664621245703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (A052905 n + 9).toNat

end

end A269508.P6144537664621245703

/-! ## A269508.P830585212706612561

`A269505(A055999(n)+10)`
-/

namespace A269508.P830585212706612561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (A055999 n + 10).toNat

end

end A269508.P830585212706612561

/-!
# A269509: a(n) = (n-1)*a(n-1) - a(n-2) + (n-2)*a(n-3) with a(0)=a(1)=1, a(2)=0.

The programs for A269509, the canonical program `A269509.P16709327381426192767` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269509 has offset 0).

The definition of A269509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-1)-a(n-2)+(n-2)*a(n-3)` (program `A269509.P16709327381426192767`, by `A269509.P16709327381426192767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269509.P16709327381426192767

`(n-1)*a(n-1)-a(n-2)+(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269509

/-- `(n-1)*a(n-1)-a(n-2)+(n-2)*a(n-3)` -/
def P16709327381426192767.Spec : Prop :=
  ∀ n, P16709327381426192767.a n = A269509 n

theorem P16709327381426192767.correct : P16709327381426192767.Spec := by
  intro n
  simp only [A269509]

end A269509

/-!
# A269511: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A269511, the canonical program `A269511.P16338175856752422456` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269511 has offset 0).

The definition of A269511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269511.P16338175856752422456

`∑[A004526(n)+or(1, A110344(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269511

/-- `∑[A004526(n)+or(1, A110344(n+1))]` -/
def P16338175856752422456.Spec : Prop :=
  ∀ n, P16338175856752422456.a n = A269511 n

theorem P16338175856752422456.correct : P16338175856752422456.Spec := by
  intro n
  simp only [A269511]

end A269511

/-! ## A269511.P7974464144323280028

`A077221(A142150(n+1))+∑[(n+1)²]`
-/

namespace A269511.P7974464144323280028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A142150 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269511.P7974464144323280028

namespace A269511

/-- `A077221(A142150(n+1))+∑[(n+1)²]` -/
def P7974464144323280028.Spec : Prop :=
  ∀ n, P7974464144323280028.a n = A269511 n

end A269511

/-! ## A269511.P5965665636923126778

`∑[A110344(n+1)+A052928(A008619(n))]`
-/

namespace A269511.P5965665636923126778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A052928 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P5965665636923126778

namespace A269511

/-- `∑[A110344(n+1)+A052928(A008619(n))]` -/
def P5965665636923126778.Spec : Prop :=
  ∀ n, P5965665636923126778.a n = A269511 n

end A269511

/-! ## A269511.P8417889907004840775

`∑[A110344(n+1)+A004524(A083220(n))]`
-/

namespace A269511.P8417889907004840775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A004524 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P8417889907004840775

namespace A269511

/-- `∑[A110344(n+1)+A004524(A083220(n))]` -/
def P8417889907004840775.Spec : Prop :=
  ∀ n, P8417889907004840775.a n = A269511 n

end A269511

/-! ## A269511.P3261468790783132225

`∑[A110344(n+1)+A106249(A109613(n))]`
-/

namespace A269511.P3261468790783132225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A106249 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P3261468790783132225

namespace A269511

/-- `∑[A110344(n+1)+A106249(A109613(n))]` -/
def P3261468790783132225.Spec : Prop :=
  ∀ n, P3261468790783132225.a n = A269511 n

end A269511

/-! ## A269511.P17359127826728979282

`∑[abs(Δ[A077221(A142150(n))+A000330(n)])]`
-/

namespace A269511.P17359127826728979282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A142150 n).toNat + A000330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P17359127826728979282

namespace A269511

/-- `∑[abs(Δ[A077221(A142150(n))+A000330(n)])]` -/
def P17359127826728979282.Spec : Prop :=
  ∀ n, P17359127826728979282.a n = A269511 n

end A269511

/-! ## A269511.P9383777014152437234

`∑[A264797(n)]`
-/

namespace A269511.P9383777014152437234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P9383777014152437234

namespace A269511

/-- `∑[A264797(n)]` -/
def P9383777014152437234.Spec : Prop :=
  ∀ n, P9383777014152437234.a n = A269511 n

end A269511

/-! ## A269511.P9006511061724010382

`∑[∑[A269512(n)]+1-A269512(n)]`
-/

namespace A269511.P9006511061724010382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269512 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A269512 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P9006511061724010382

namespace A269511

/-- `∑[∑[A269512(n)]+1-A269512(n)]` -/
def P9006511061724010382.Spec : Prop :=
  ∀ n, P9006511061724010382.a n = A269511 n

end A269511

/-! ## A269511.P15391584693700582201

`∑[(2*n+3)²-A273144(n+1)]`
-/

namespace A269511.P15391584693700582201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P15391584693700582201

namespace A269511

/-- `∑[(2*n+3)²-A273144(n+1)]` -/
def P15391584693700582201.Spec : Prop :=
  ∀ n, P15391584693700582201.a n = A269511 n

end A269511

/-! ## A269511.P7404192648642813901

`∑[A042948(A008619(n)*A064455(n+1))]`
-/

namespace A269511.P7404192648642813901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A008619 n * A064455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P7404192648642813901

namespace A269511

/-- `∑[A042948(A008619(n)*A064455(n+1))]` -/
def P7404192648642813901.Spec : Prop :=
  ∀ n, P7404192648642813901.a n = A269511 n

end A269511

/-!
# A269512: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A269512, the canonical program `A269512.P10670499889363108988` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269512 has offset 0).

The definition of A269512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269512.P10670499889363108988

`Δ[A264797(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269512

/-- `Δ[A264797(n)]` -/
def P10670499889363108988.Spec : Prop :=
  ∀ n, P10670499889363108988.a n = A269512 n

theorem P10670499889363108988.correct : P10670499889363108988.Spec := by
  intro n
  simp only [A269512]

end A269512

/-! ## A269512.P470661093784998985

`A264797(n+1)-A264797(n)`
-/

namespace A269512.P470661093784998985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264797 (n + 1) - A264797 n

end

end A269512.P470661093784998985

namespace A269512

/-- `A264797(n+1)-A264797(n)` -/
def P470661093784998985.Spec : Prop :=
  ∀ n, P470661093784998985.a n = A269512 n

theorem P470661093784998985.correct : P470661093784998985.Spec := by
  intro n
  simp only [A269512, Nat.add_sub_cancel, A269512.P470661093784998985.a, A269512.P10670499889363108988.f1, A269512.P10670499889363108988.a, SequenceMachineLib.memo_apply]

end A269512

/-! ## A269512.P12545264128889119818

`Δ[A004526(n)+or(1, A110344(n+1))]`
-/

namespace A269512.P12545264128889119818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + Int.lor 1 (A110344 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269512.P12545264128889119818

namespace A269512

/-- `Δ[A004526(n)+or(1, A110344(n+1))]` -/
def P12545264128889119818.Spec : Prop :=
  ∀ n, P12545264128889119818.a n = A269512 n

end A269512

/-! ## A269512.P18044656877448105903

`Δ[Δ[A077221(A142150(n))+A000330(n)]]`
-/

namespace A269512.P18044656877448105903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A142150 n).toNat + A000330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269512.P18044656877448105903

namespace A269512

/-- `Δ[Δ[A077221(A142150(n))+A000330(n)]]` -/
def P18044656877448105903.Spec : Prop :=
  ∀ n, P18044656877448105903.a n = A269512 n

end A269512

/-! ## A269512.P1914597826738219770

`Δ[A110344(n+1)+A004524(A083220(n))]`
-/

namespace A269512.P1914597826738219770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A004524 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269512.P1914597826738219770

namespace A269512

/-- `Δ[A110344(n+1)+A004524(A083220(n))]` -/
def P1914597826738219770.Spec : Prop :=
  ∀ n, P1914597826738219770.a n = A269512 n

end A269512

/-! ## A269512.P5924619533541637194

`Δ[A110344(n+1)+A106249(A109613(n))]`
-/

namespace A269512.P5924619533541637194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A106249 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269512.P5924619533541637194

namespace A269512

/-- `Δ[A110344(n+1)+A106249(A109613(n))]` -/
def P5924619533541637194.Spec : Prop :=
  ∀ n, P5924619533541637194.a n = A269512 n

end A269512

/-! ## A269512.P6761495636852858069

`Δ[A106249(n+1)+A106249(2*n)*A123684(n+2)]`
-/

namespace A269512.P6761495636852858069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (n + 1) + A106249 (2 * n) * A123684 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269512.P6761495636852858069

namespace A269512

/-- `Δ[A106249(n+1)+A106249(2*n)*A123684(n+2)]` -/
def P6761495636852858069.Spec : Prop :=
  ∀ n, P6761495636852858069.a n = A269512 n

end A269512

/-! ## A269512.P12301008455233183293

`∑[9-Δ[A273147(n)]]-n`
-/

namespace A269512.P12301008455233183293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A269512.P12301008455233183293

namespace A269512

/-- `∑[9-Δ[A273147(n)]]-n` -/
def P12301008455233183293.Spec : Prop :=
  ∀ n, P12301008455233183293.a n = A269512 n

end A269512

/-! ## A269512.P6418389094268381010

`8*(n+2)-A273147(n+1)`
-/

namespace A269512.P6418389094268381010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A273147 (n + 1)

end

end A269512.P6418389094268381010

namespace A269512

/-- `8*(n+2)-A273147(n+1)` -/
def P6418389094268381010.Spec : Prop :=
  ∀ n, P6418389094268381010.a n = A269512 n

end A269512

/-!
# A269513: Record (maximal) gaps between primes of the form 8k + 5.

The programs for A269513, there is no canonical definition to state claims against.
-/

/-! ## A269513.P16553765291555741922

`A269515(n+1)-A269514(n+1)`
-/

namespace A269513.P16553765291555741922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269515 (n + 1) - A269514 (n + 1)

end

end A269513.P16553765291555741922

/-! ## A269513.P8681835623186094016

`record[A007521(n+2)-A007521(n+1)]`
-/

namespace A269513.P8681835623186094016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2) - A007521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269513.P8681835623186094016

/-! ## A269513.P6645746532396263738

`record[A186301(n+2)-A186301(n+1)]`
-/

namespace A269513.P6645746532396263738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 2) - A186301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269513.P6645746532396263738

/-! ## A269513.P16732628126283986024

`record[A045366(n+3)-A045366(n+2)]`
-/

namespace A269513.P16732628126283986024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 3) - A045366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269513.P16732628126283986024

/-! ## A269513.P11884774255304880844

`record[A007521(n+4)%A007521(n+3)]`
-/

namespace A269513.P11884774255304880844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007521 (n + 4)) (A007521 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269513.P11884774255304880844

/-!
# A269514: Primes 8k + 5 preceding the maximal gaps in A269513.

The programs for A269514, there is no canonical definition to state claims against.
-/

/-! ## A269514.P16489019199308535169

`A269515(n+1)-A269513(n+1)`
-/

namespace A269514.P16489019199308535169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269515 (n + 1) - A269513 (n + 1)

end

end A269514.P16489019199308535169

/-! ## A269514.P1647838002998039828

`A269515(n+1)-record[Δ[A007521(n+1)]]`
-/

namespace A269514.P1647838002998039828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269515 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269514.P1647838002998039828

/-! ## A269514.P4569945369807231462

`A269515(n+1)-record[Δ[A186301(n+1)]]`
-/

namespace A269514.P4569945369807231462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269515 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269514.P4569945369807231462

/-! ## A269514.P5164972352814061849

`A269515(n+1)-record[A007521(n+2)-A007521(n+1)]`
-/

namespace A269514.P5164972352814061849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2) - A007521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269515 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269514.P5164972352814061849

/-! ## A269514.P5487573540063155359

`A269515(n+1)-record[A186301(n+2)-A186301(n+1)]`
-/

namespace A269514.P5487573540063155359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 2) - A186301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269515 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269514.P5487573540063155359

/-!
# A269515: Primes 8k + 5 at the end of the maximal gaps in A269513.

The programs for A269515, there is no canonical definition to state claims against.
-/

/-! ## A269515.P6551991621177197960

`A269514(n+1)+A269513(n+1)`
-/

namespace A269515.P6551991621177197960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269514 (n + 1) + A269513 (n + 1)

end

end A269515.P6551991621177197960

/-! ## A269515.P582026928267225738

`A269514(n+1)+record[Δ[A007521(n+1)]]`
-/

namespace A269515.P582026928267225738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269514 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269515.P582026928267225738

/-! ## A269515.P399087514577019190

`A269514(n+1)+record[A007521(n+2)-A007521(n+1)]`
-/

namespace A269515.P399087514577019190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2) - A007521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269514 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269515.P399087514577019190

/-! ## A269515.P3431724274325358284

`A269514(n+1)+record[A186301(n+2)-A186301(n+1)]`
-/

namespace A269515.P3431724274325358284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 2) - A186301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269514 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269515.P3431724274325358284

/-! ## A269515.P11118531983299504184

`A269514(n+1)+record[A045366(n+3)-A045366(n+2)]`
-/

namespace A269515.P11118531983299504184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 3) - A045366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269514 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269515.P11118531983299504184

/-!
# A269517: Lexicographically least sequence of nonnegative integers that avoids a/b-powers for all a/b >= 3/2.

The programs for A269517, there is no canonical definition to state claims against.
-/

/-! ## A269517.P10950699639416381134

`A269518(A047248(n+1))+Δ[A057354(n)]`
-/

namespace A269517.P10950699639416381134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269518 (A047248 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A269517.P10950699639416381134

/-! ## A269517.P16027813675333061329

`A263576(n)%A060502(A260052(n+1))`
-/

namespace A269517.P16027813675333061329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263576 n) (A060502 (A260052 (n + 1)).toNat)

end

end A269517.P16027813675333061329

/-! ## A269517.P16456759627098752442

`A020944(A018600(n+2))%4`
-/

namespace A269517.P16456759627098752442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020944 (A018600 (n + 2)).toNat) 4

end

end A269517.P16456759627098752442

/-! ## A269517.P14777476620036096999

`val(A018457(A165412(n+1)), 2)`
-/

namespace A269517.P14777476620036096999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018457 (A165412 (n + 1)).toNat).toNat 2

end

end A269517.P14777476620036096999

/-! ## A269517.P10262819238911782526

`val(A018740(A178859(n+1)), 2)`
-/

namespace A269517.P10262819238911782526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018740 (A178859 (n + 1)).toNat).toNat 2

end

end A269517.P10262819238911782526

/-!
# A269518: Lexicographically least sequence of nonnegative integers that avoids 3/2-powers.

The programs for A269518, there is no canonical definition to state claims against.
-/

/-! ## A269518.P1030726568344831496

`A004526(n)%A007978(A322310(n+1)²)`
-/

namespace A269518.P1030726568344831496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 n) (A007978 (A322310 (n + 1) ^ 2).toNat)

end

end A269518.P1030726568344831496

/-! ## A269518.P1015377768307362350

`A071045(n)%A007978(A322310(n+1)²)`
-/

namespace A269518.P1015377768307362350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071045 n) (A007978 (A322310 (n + 1) ^ 2).toNat)

end

end A269518.P1015377768307362350

/-! ## A269518.P4619561247969787216

`A111660(n)%A007978(A322310(n+1)²)`
-/

namespace A269518.P4619561247969787216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111660 n) (A007978 (A322310 (n + 1) ^ 2).toNat)

end

end A269518.P4619561247969787216

/-! ## A269518.P12731760265573692279

`(A005563(n)%(2*n+1))%A007978(A322310(n+1)²)`
-/

namespace A269518.P12731760265573692279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A005563 n) (2 * n + 1 : ℤ)) (A007978 (A322310 (n + 1) ^ 2).toNat)

end

end A269518.P12731760265573692279

/-! ## A269518.P284367967982259239

`A269517(5*n+4)-3`
-/

namespace A269518.P284367967982259239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269517 (5 * n + 4) - 3

end

end A269518.P284367967982259239

/-!
# A269519: Record (maximal) gaps between primes of the form 8k + 7.

The programs for A269519, there is no canonical definition to state claims against.
-/

/-! ## A269519.P6754659408954195470

`A269521(n+1)-A269520(n+1)`
-/

namespace A269519.P6754659408954195470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269521 (n + 1) - A269520 (n + 1)

end

end A269519.P6754659408954195470

/-! ## A269519.P15678733585483178820

`record[A007522(n+2)-A007522(n+1)]`
-/

namespace A269519.P15678733585483178820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 2) - A007522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269519.P15678733585483178820

/-! ## A269519.P13818680245912227190

`record[A186304(n+2)-A186304(n+1)]`
-/

namespace A269519.P13818680245912227190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186304 (n + 2) - A186304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269519.P13818680245912227190

/-! ## A269519.P9067623369084876903

`record[A045382(n+3)-A045382(n+2)]`
-/

namespace A269519.P9067623369084876903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 3) - A045382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269519.P9067623369084876903

/-!
# A269520: Primes 8k + 7 preceding the maximal gaps in A269519.

The programs for A269520, there is no canonical definition to state claims against.
-/

/-! ## A269520.P3886265558891960585

`A269521(n+1)-A269519(n+1)`
-/

namespace A269520.P3886265558891960585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269521 (n + 1) - A269519 (n + 1)

end

end A269520.P3886265558891960585

/-! ## A269520.P4948761508502640295

`A269521(n+1)-record[Δ[A007522(n+1)]]`
-/

namespace A269520.P4948761508502640295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269521 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269520.P4948761508502640295

/-! ## A269520.P11982914665146527270

`A269521(n+1)-record[A007522(n+2)-A007522(n+1)]`
-/

namespace A269520.P11982914665146527270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 2) - A007522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269521 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269520.P11982914665146527270

/-! ## A269520.P7758367338302705515

`A269521(n+1)-record[A186304(n+2)-A186304(n+1)]`
-/

namespace A269520.P7758367338302705515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186304 (n + 2) - A186304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269521 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269520.P7758367338302705515

/-! ## A269520.P6494360194746059228

`A269521(n+1)-record[A045382(n+3)-A045382(n+2)]`
-/

namespace A269520.P6494360194746059228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 3) - A045382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269521 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269520.P6494360194746059228

/-!
# A269521: Primes 8k + 7 at the end of the maximal gaps in A269519.

The programs for A269521, there is no canonical definition to state claims against.
-/

/-! ## A269521.P16740663794044072008

`A269520(n+1)+A269519(n+1)`
-/

namespace A269521.P16740663794044072008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269520 (n + 1) + A269519 (n + 1)

end

end A269521.P16740663794044072008

/-! ## A269521.P4952837539614956192

`A269520(n+1)+record[Δ[A007522(n+1)]]`
-/

namespace A269521.P4952837539614956192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269520 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269521.P4952837539614956192

/-! ## A269521.P7287647484759452589

`A269520(n+1)+record[A007522(n+2)-A007522(n+1)]`
-/

namespace A269521.P7287647484759452589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 2) - A007522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269520 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269521.P7287647484759452589

/-! ## A269521.P14837641379460781812

`A269520(n+1)+record[A186304(n+2)-A186304(n+1)]`
-/

namespace A269521.P14837641379460781812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186304 (n + 2) - A186304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269520 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269521.P14837641379460781812

/-! ## A269521.P10852338246578087566

`A269520(n+1)+record[A045382(n+3)-A045382(n+2)]`
-/

namespace A269521.P10852338246578087566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 3) - A045382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269520 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269521.P10852338246578087566

/-!
# A269522: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 622", based on the 5-celled von Neumann neighborhood.

The programs for A269522, there is no canonical definition to state claims against.
-/

/-! ## A269522.P1938197790898934513

`A269568(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269522.P1938197790898934513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269568 (n - 1) + a (n - 1)

end

end A269522.P1938197790898934513

/-! ## A269522.P9093383609637279619

`Δ[A269567(n)]-A269568(n)`
-/

namespace A269522.P9093383609637279619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269568 n

end

end A269522.P9093383609637279619

/-! ## A269522.P15523226124999963982

`A269567(n+1)-(A269568(n)+A269567(n))`
-/

namespace A269522.P15523226124999963982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269567 (n + 1) - (A269568 n + A269567 n)

end

end A269522.P15523226124999963982

/-! ## A269522.P1393740355009096228

`1-(A269568(n)-∑[A269568(n)])%A056108(n)`
-/

namespace A269522.P1393740355009096228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A269568 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A056108 n)

end

end A269522.P1393740355009096228

/-! ## A269522.P10944506618226808968

`A005408(n)-(2*n+A269568(n)-∑[A269568(n)])`
-/

namespace A269522.P10944506618226808968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) + (A269568 n - ∑ j ∈ Finset.range (n + 1), f1 j))

end

end A269522.P10944506618226808968

/-! ## A269522.P15436622663288626707

`A273482(2*n)`
-/

namespace A269522.P15436622663288626707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (2 * n)

end

end A269522.P15436622663288626707

/-! ## A269522.P7393178253802151844

`A273484(2*n+1)-(A273485(2*n)+A273484(2*n))`
-/

namespace A269522.P7393178253802151844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273484 (2 * n + 1) - (A273485 (2 * n) + A273484 (2 * n))

end

end A269522.P7393178253802151844

/-! ## A269522.P1738861879344601924

`A000027(A273482(record[A014681(n)]))`
-/

namespace A269522.P1738861879344601924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A273482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A269522.P1738861879344601924

/-! ## A269522.P14428036912317212885

`A109613(A273482(n+n))`
-/

namespace A269522.P14428036912317212885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A273482 (n + n)).toNat

end

end A269522.P14428036912317212885

/-! ## A269522.P16898331931210386031

`A109613(∑[A269568(n)]-A269568(n))`
-/

namespace A269522.P16898331931210386031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A269568 n).toNat

end

end A269522.P16898331931210386031

/-!
# A269523: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 630", based on the 5-celled von Neumann neighborhood.

The programs for A269523, there is no canonical definition to state claims against.
-/

/-! ## A269523.P10880531800540052633

`A269629(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269523.P10880531800540052633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269629 (n - 1) + a (n - 1)

end

end A269523.P10880531800540052633

/-! ## A269523.P5146816859567098549

`1+∑[A269629(n)]-A269629(n)`
-/

namespace A269523.P5146816859567098549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A269629 n)

end

end A269523.P5146816859567098549

/-! ## A269523.P10510489817034821645

`Δ[A269543(n)]-A269629(n)`
-/

namespace A269523.P10510489817034821645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269629 n

end

end A269523.P10510489817034821645

/-! ## A269523.P10523596724356528711

`A269543(n+1)-(A269629(n)+A269543(n))`
-/

namespace A269523.P10523596724356528711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269543 (n + 1) - (A269629 n + A269543 n)

end

end A269523.P10523596724356528711

/-! ## A269523.P8706629444015592118

`A141310(∑[A269629(n)]-A269629(n))`
-/

namespace A269523.P8706629444015592118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A269629 n).toNat

end

end A269523.P8706629444015592118

/-! ## A269523.P11325104428078537914

`A004442(∑[A269629(n)]-A269629(n))`
-/

namespace A269523.P11325104428078537914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A269629 n).toNat

end

end A269523.P11325104428078537914

/-! ## A269523.P16780518265212460369

`A109613(∑[A269629(n)]-A269629(n))`
-/

namespace A269523.P16780518265212460369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A269629 n).toNat

end

end A269523.P16780518265212460369

/-!
# A269524: a(1) = 1, a(n) counts m < n for which a(m) has at most as many divisors as n.

The programs for A269524, there is no canonical definition to state claims against.
-/

/-! ## A269524.P7830780559365993359

`n+1-A060715(A326180(n)+1)`
-/

namespace A269524.P7830780559365993359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060715 (A326180 n + 1).toNat

end

end A269524.P7830780559365993359

/-!
# A269526: Square array T(n,k) (n>=1, k>=1) read by antidiagonals upwards in which each term is the least positive integer satisfying the condition that no row, column, diagonal, or antidiagonal contains a repeated term.

The programs for A269526, there is no canonical definition to state claims against.
-/

/-! ## A269526.P4902696743536970488

`A274528(n)+1`
-/

namespace A269526.P4902696743536970488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 n + 1

end

end A269526.P4902696743536970488

/-! ## A269526.P17822314548245125042

`A008619(2*A274528(n))`
-/

namespace A269526.P17822314548245125042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A274528 n).toNat

end

end A269526.P17822314548245125042

/-! ## A269526.P15184597241902106896

`A028242(2*A274528(n))`
-/

namespace A269526.P15184597241902106896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A274528 n).toNat

end

end A269526.P15184597241902106896

/-! ## A269526.P14313497414955433130

`A029579(2*A274528(n))`
-/

namespace A269526.P14313497414955433130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A274528 n).toNat

end

end A269526.P14313497414955433130

/-! ## A269526.P615382191684932742

`A158416(2*A274528(n))`
-/

namespace A269526.P615382191684932742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A274528 n).toNat

end

end A269526.P615382191684932742

/-! ## A269526.P6613849517434540476

`2-(A020985(n)²-A274528(n))`
-/

namespace A269526.P6613849517434540476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020985 n ^ 2 - A274528 n)

end

end A269526.P6613849517434540476

/-! ## A269526.P8621021396082284046

`A004442(2*A274528(n))-A274528(n)`
-/

namespace A269526.P8621021396082284046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A274528 n).toNat - A274528 n

end

end A269526.P8621021396082284046

/-! ## A269526.P6006728960730201871

`1-(A142150(A004767(n))-A274528(n))`
-/

namespace A269526.P6006728960730201871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A142150 (A004767 n).toNat - A274528 n)

end

end A269526.P6006728960730201871

/-! ## A269526.P15199776652832100836

`2-(A269529(n)²-A274528(n))`
-/

namespace A269526.P15199776652832100836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A269529 n ^ 2 - A274528 n)

end

end A269526.P15199776652832100836

/-! ## A269526.P5634237043149579090

`1-(A274650(A046092(n))-A274528(n))`
-/

namespace A269526.P5634237043149579090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A274650 (A046092 n).toNat - A274528 n)

end

end A269526.P5634237043149579090

/-! ## A269526.P12767959215183467609

`2-(A274651(A001844(n))-A274528(n))`
-/

namespace A269526.P12767959215183467609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A274651 (A001844 n).toNat - A274528 n)

end

end A269526.P12767959215183467609

/-!
# A269527: a(n) = n^20 + n^15 + n^10 + n^5 + 1.

The programs for A269527, the canonical program `A269527.P13702965637692599770` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269527 has offset 0).

The definition of A269527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^20+n^15+n^10+n^5+1` (program `A269527.P13702965637692599770`, by `A269527.P13702965637692599770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269527.P13702965637692599770

`n^20+n^15+n^10+n^5+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269527

/-- `n^20+n^15+n^10+n^5+1` -/
def P13702965637692599770.Spec : Prop :=
  ∀ n, (P13702965637692599770.a n : ℤ) = A269527 n

theorem P13702965637692599770.correct : P13702965637692599770.Spec := by
  intro n
  simp only [A269527]

end A269527

/-! ## A269527.P10924227063818991708

`A053699(n^5)`
-/

namespace A269527.P10924227063818991708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (n ^ 5)

end

end A269527.P10924227063818991708

namespace A269527

/-- `A053699(n^5)` -/
def P10924227063818991708.Spec : Prop :=
  ∀ n, P10924227063818991708.a n = A269527 n

theorem P10924227063818991708.correct : P10924227063818991708.Spec := by
  intro n
  simp only [A269527, Nat.add_sub_cancel, A269527.P10924227063818991708.a, A269527.P13702965637692599770.a, A053699, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269527

/-! ## A269527.P17556699673008638403

`or(1, A027445(n^5))`
-/

namespace A269527.P17556699673008638403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027445 (n ^ 5))

end

end A269527.P17556699673008638403

namespace A269527

/-- `or(1, A027445(n^5))` -/
def P17556699673008638403.Spec : Prop :=
  ∀ n, P17556699673008638403.a n = A269527 n

end A269527

/-!
# A269528: Parity of number of runs of 1's in negabinary representation of n.

The programs for A269528, the canonical program `A269528.P15804477055261084594` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269528 has offset 0).

The definition of A269528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269528.P7568400342993790661

`A268411(A005351(n))`
-/

namespace A269528.P7568400342993790661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 (A005351 n).toNat

end

end A269528.P7568400342993790661

namespace A269528

/-- `A268411(A005351(n))` -/
def P7568400342993790661.Spec : Prop :=
  ∀ n, P7568400342993790661.a n = A269528 n

end A269528

/-! ## A269528.P15804477055261084594

`and(1, A264596(2*A005351(n)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A269528

/-- `and(1, A264596(2*A005351(n)))` -/
def P15804477055261084594.Spec : Prop :=
  ∀ n, P15804477055261084594.a n = A269528 n

theorem P15804477055261084594.correct : P15804477055261084594.Spec := by
  intro n
  simp only [A269528]

end A269528

/-! ## A269528.P880581790402884060

`A010060(and(A003188(n), A005351(n)))`
-/

namespace A269528.P880581790402884060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.land (A003188 n) (A005351 n)).toNat

end

end A269528.P880581790402884060

namespace A269528

/-- `A010060(and(A003188(n), A005351(n)))` -/
def P880581790402884060.Spec : Prop :=
  ∀ n, P880581790402884060.a n = A269528 n

end A269528

/-! ## A269528.P2127263785087527467

`A269027(xor(n, A020987(A005351(n))))`
-/

namespace A269528.P2127263785087527467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (Int.xor (n : ℤ) (A020987 (A005351 n).toNat)).toNat

end

end A269528.P2127263785087527467

namespace A269528

/-- `A269027(xor(n, A020987(A005351(n))))` -/
def P2127263785087527467.Spec : Prop :=
  ∀ n, P2127263785087527467.a n = A269528 n

end A269528

/-! ## A269528.P17938411661821012428

`and(A007664(n)²², A264596(A005351(n)))`
-/

namespace A269528.P17938411661821012428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A007664 n ^ 2) ^ 2) (A264596 (A005351 n).toNat)

end

end A269528.P17938411661821012428

namespace A269528

/-- `and(A007664(n)²², A264596(A005351(n)))` -/
def P17938411661821012428.Spec : Prop :=
  ∀ n, P17938411661821012428.a n = A269528 n

end A269528

/-! ## A269528.P9261294523302608242

`char[A053985(A268415(n+1))]`
-/

namespace A269528.P9261294523302608242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A268415 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A269528.P9261294523302608242

namespace A269528

/-- `char[A053985(A268415(n+1))]` -/
def P9261294523302608242.Spec : Prop :=
  ∀ n, (P9261294523302608242.a n : ℤ) = A269528 n

end A269528

/-! ## A269528.P15897725013813272816

`1-char[A053985(A268412(n))]`
-/

namespace A269528.P15897725013813272816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A268412 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A269528.P15897725013813272816

namespace A269528

/-- `1-char[A053985(A268412(n))]` -/
def P15897725013813272816.Spec : Prop :=
  ∀ n, P15897725013813272816.a n = A269528 n

end A269528

/-! ## A269528.P1681895502674404255

`and(A007664(n²), A264596(A005351(n)))`
-/

namespace A269528.P1681895502674404255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 (n ^ 2)) (A264596 (A005351 n).toNat)

end

end A269528.P1681895502674404255

namespace A269528

/-- `and(A007664(n²), A264596(A005351(n)))` -/
def P1681895502674404255.Spec : Prop :=
  ∀ n, P1681895502674404255.a n = A269528 n

end A269528

/-!
# A269529: An analog of the Golay-Rudin-Shapiro sequence (A020985) in base -2 (see comments).

The programs for A269529, the canonical program `A269529.P254350868632863170` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269529 has offset 0).

The definition of A269529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269529.P254350868632863170

`A020985(A005351(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A269529

/-- `A020985(A005351(n))` -/
def P254350868632863170.Spec : Prop :=
  ∀ n, P254350868632863170.a n = A269529 n

theorem P254350868632863170.correct : P254350868632863170.Spec := by
  intro n
  simp only [A269529]

end A269529

/-! ## A269529.P8774263562000153121

`A326802(A014081(A005351(n))²)`
-/

namespace A269529.P8774263562000153121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A014081 (A005351 n).toNat ^ 2).toNat

end

end A269529.P8774263562000153121

namespace A269529

/-- `A326802(A014081(A005351(n))²)` -/
def P8774263562000153121.Spec : Prop :=
  ∀ n, P8774263562000153121.a n = A269529 n

end A269529

/-! ## A269529.P7127564708231869751

`A033999(A269528(n)+A027615(n))`
-/

namespace A269529.P7127564708231869751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A269528 n + A027615 n).toNat

end

end A269529.P7127564708231869751

namespace A269529

/-- `A033999(A269528(n)+A027615(n))` -/
def P7127564708231869751.Spec : Prop :=
  ∀ n, P7127564708231869751.a n = A269529 n

end A269529

/-! ## A269529.P3243762364000495762

`A033999(A338253(n)+A269528(n))`
-/

namespace A269529.P3243762364000495762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A338253 n + A269528 n).toNat

end

end A269529.P3243762364000495762

namespace A269529

/-- `A033999(A338253(n)+A269528(n))` -/
def P3243762364000495762.Spec : Prop :=
  ∀ n, P3243762364000495762.a n = A269529 n

end A269529

/-! ## A269529.P1665672940984728030

`A033999(A027615(n)-A269528(n))`
-/

namespace A269529.P1665672940984728030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A027615 n - A269528 n).toNat

end

end A269529.P1665672940984728030

namespace A269529

/-- `A033999(A027615(n)-A269528(n))` -/
def P1665672940984728030.Spec : Prop :=
  ∀ n, P1665672940984728030.a n = A269529 n

end A269529

/-! ## A269529.P6642446035895449260

`A033999(xor(A027615(n), A269528(n)))`
-/

namespace A269529.P6642446035895449260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.xor (A027615 n) (A269528 n)).toNat

end

end A269529.P6642446035895449260

namespace A269529

/-- `A033999(xor(A027615(n), A269528(n)))` -/
def P6642446035895449260.Spec : Prop :=
  ∀ n, P6642446035895449260.a n = A269529 n

end A269529

/-! ## A269529.P7849834651730704066

`A106400(A005351(xor(n, A269528(n))))`
-/

namespace A269529.P7849834651730704066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A005351 (Int.xor (n : ℤ) (A269528 n)).toNat).toNat

end

end A269529.P7849834651730704066

namespace A269529

/-- `A106400(A005351(xor(n, A269528(n))))` -/
def P7849834651730704066.Spec : Prop :=
  ∀ n, P7849834651730704066.a n = A269529 n

end A269529

/-! ## A269529.P9937775884375378064

`A106400(A269528(n)+2*A005351(n))`
-/

namespace A269529.P9937775884375378064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A269528 n + 2 * A005351 n).toNat

end

end A269529.P9937775884375378064

namespace A269529

/-- `A106400(A269528(n)+2*A005351(n))` -/
def P9937775884375378064.Spec : Prop :=
  ∀ n, P9937775884375378064.a n = A269529 n

end A269529

/-! ## A269529.P16086570406362157130

`A106400(A005351(n)+A269528(n)+A005351(n))`
-/

namespace A269529.P16086570406362157130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A005351 n + (A269528 n + A005351 n)).toNat

end

end A269529.P16086570406362157130

namespace A269529

/-- `A106400(A005351(n)+A269528(n)+A005351(n))` -/
def P16086570406362157130.Spec : Prop :=
  ∀ n, P16086570406362157130.a n = A269529 n

end A269529

/-! ## A269529.P7027696150390594989

`A020985(A052992(A003057(n+2))-n)`
-/

namespace A269529.P7027696150390594989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A052992 (A003057 (n + 2)).toNat - (n : ℤ)).toNat

end

end A269529.P7027696150390594989

namespace A269529

/-- `A020985(A052992(A003057(n+2))-n)` -/
def P7027696150390594989.Spec : Prop :=
  ∀ n, P7027696150390594989.a n = A269529 n

end A269529

/-!
# A269530: Number of length-n 0..n arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269530, there is no canonical definition to state claims against.
-/

/-! ## A269530.P6794521338018316601

`A269537((n+1)²+n²)`
-/

namespace A269530.P6794521338018316601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 ((n + 1) ^ 2 + n ^ 2)

end

end A269530.P6794521338018316601

/-! ## A269530.P15545725065642869298

`or(char[1], A269537(A046092(n)+1))`
-/

namespace A269530.P15545725065642869298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A269537 (A046092 n + 1).toNat)

end

end A269530.P15545725065642869298

/-! ## A269530.P6547889980634163904

`record[A003982(n)*A269537(n+1)]`
-/

namespace A269530.P6547889980634163904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269530.P6547889980634163904

/-! ## A269530.P9582088670020847062

`record[gcd(A114327(n), A269537(n+1))]`
-/

namespace A269530.P9582088670020847062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A269537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269530.P9582088670020847062

/-! ## A269530.P16643112609973850249

`record[root(A269537(n+1), A322550(n+1))]`
-/

namespace A269530.P16643112609973850249
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269537 (n + 1) : ℝ) ^ (1 / (A322550 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269530.P16643112609973850249

/-!
# A269531: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269531, the canonical program `A269531.P14873547006652137912` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269531 has offset 1).

The definition of A269531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269531.P14873547006652137912

`4*a(n-1)-a(n-2)-10*a(n-3)+6*a(n-4)+4*a(n-5)` with `a(0)=3, a(1)=9, a(2)=24, a(3)=64, a(4)=164`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269531

/-- `4*a(n-1)-a(n-2)-10*a(n-3)+6*a(n-4)+4*a(n-5)` -/
def P14873547006652137912.Spec : Prop :=
  ∀ n, P14873547006652137912.a n = A269531 (n + 1)

theorem P14873547006652137912.correct : P14873547006652137912.Spec := by
  intro n
  simp only [A269531, Nat.add_sub_cancel]

end A269531

/-! ## A269531.P13053407331356781240

`A269537(∑[n+2])`
-/

namespace A269531.P13053407331356781240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269531.P13053407331356781240

namespace A269531

/-- `A269537(∑[n+2])` -/
def P13053407331356781240.Spec : Prop :=
  ∀ n, P13053407331356781240.a n = A269531 (n + 1)

end A269531

/-! ## A269531.P4044038202834904509

`abs(2-A269537(A000096(n+1)))+2`
-/

namespace A269531.P4044038202834904509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A269537 (A000096 (n + 1)).toNat| + 2

end

end A269531.P4044038202834904509

namespace A269531

/-- `abs(2-A269537(A000096(n+1)))+2` -/
def P4044038202834904509.Spec : Prop :=
  ∀ n, P4044038202834904509.a n = A269531 (n + 1)

end A269531

/-! ## A269531.P13304768493821130511

`record[A269537(A000096(A193738(n)))]`
-/

namespace A269531.P13304768493821130511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000096 (A193738 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269531.P13304768493821130511

namespace A269531

/-- `record[A269537(A000096(A193738(n)))]` -/
def P13304768493821130511.Spec : Prop :=
  ∀ n, P13304768493821130511.a n = A269531 (n + 1)

end A269531

/-! ## A269531.P9938762039760926528

`record[A269537(A000096(A002260(n+1)))]`
-/

namespace A269531.P9938762039760926528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269531.P9938762039760926528

namespace A269531

/-- `record[A269537(A000096(A002260(n+1)))]` -/
def P9938762039760926528.Spec : Prop :=
  ∀ n, P9938762039760926528.a n = A269531 (n + 1)

end A269531

/-! ## A269531.P6159525757844965049

`record[A269537(A000096(A004736(n+1)))]`
-/

namespace A269531.P6159525757844965049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269531.P6159525757844965049

namespace A269531

/-- `record[A269537(A000096(A004736(n+1)))]` -/
def P6159525757844965049.Spec : Prop :=
  ∀ n, P6159525757844965049.a n = A269531 (n + 1)

end A269531

/-! ## A269531.P10197919206628742247

`record[A269537(A000096(A130747(n+1)))]`
-/

namespace A269531.P10197919206628742247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000096 (A130747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269531.P10197919206628742247

namespace A269531

/-- `record[A269537(A000096(A130747(n+1)))]` -/
def P10197919206628742247.Spec : Prop :=
  ∀ n, P10197919206628742247.a n = A269531 (n + 1)

end A269531

/-!
# A269532: Number of length-n 0..3 arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269532, there is no canonical definition to state claims against.
-/

/-! ## A269532.P10027108974462484054

`A269537(∑[n+3]+1)`
-/

namespace A269532.P10027108974462484054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269532.P10027108974462484054

/-! ## A269532.P4950969127892308649

`A269606(∑[n+3]+1)`
-/

namespace A269532.P4950969127892308649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269532.P4950969127892308649

/-! ## A269532.P14431611481097612775

`lcm(2, A269537(A055999(n)+4))`
-/

namespace A269532.P14431611481097612775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269537 (A055999 n + 4).toNat)

end

end A269532.P14431611481097612775

/-! ## A269532.P9668896907452842294

`A269537(A055999(n)+4)%A269533(n+1)`
-/

namespace A269532.P9668896907452842294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269537 (A055999 n + 4).toNat) (A269533 (n + 1))

end

end A269532.P9668896907452842294

/-! ## A269532.P4450635709538584265

`A269537(A055999(n)+4)^gcd(2, A025964(n))`
-/

namespace A269532.P4450635709538584265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A055999 n + 4).toNat ^ Int.gcd 2 (A025964 n)

end

end A269532.P4450635709538584265

/-! ## A269532.P8217225643859837137

`A165476((n+1)²)*A269537(A052905(n)+3)`
-/

namespace A269532.P8217225643859837137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 ((n + 1) ^ 2) * A269537 (A052905 n + 3).toNat

end

end A269532.P8217225643859837137

/-!
# A269533: Number of length-n 0..4 arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269533, there is no canonical definition to state claims against.
-/

/-! ## A269533.P15328003959538051665

`A269537(∑[n+4]+3)`
-/

namespace A269533.P15328003959538051665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A269533.P15328003959538051665

/-! ## A269533.P8264431518138134413

`or(1, char[1])*A269537(A027379(n+2))`
-/

namespace A269533.P8264431518138134413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (if ∃ j, f1 j = n then 1 else 0) : ℤ) * A269537 (A027379 (n + 2)).toNat

end

end A269533.P8264431518138134413

/-! ## A269533.P10849012156104299720

`A269537(A027379(n+2))%A041390(n)`
-/

namespace A269533.P10849012156104299720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269537 (A027379 (n + 2)).toNat) (A041390 n)

end

end A269533.P10849012156104299720

/-! ## A269533.P4367956517393721436

`lcm(A033999(n), A269537(A027379(n+2)))`
-/

namespace A269533.P4367956517393721436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A269537 (A027379 (n + 2)).toNat)

end

end A269533.P4367956517393721436

/-! ## A269533.P12497916786353059151

`or(A000007(n), A269537(A027379(n+2)))`
-/

namespace A269533.P12497916786353059151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A269537 (A027379 (n + 2)).toNat)

end

end A269533.P12497916786353059151

/-! ## A269533.P17625059899085367103

`A269537(A027379(n+2))+A000035(2*n)`
-/

namespace A269533.P17625059899085367103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A027379 (n + 2)).toNat + A000035 (2 * n)

end

end A269533.P17625059899085367103

/-! ## A269533.P3023835378210340098

`A057427(A017353(n))*A269537(A027379(n+2))`
-/

namespace A269533.P3023835378210340098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A017353 n).toNat * A269537 (A027379 (n + 2)).toNat

end

end A269533.P3023835378210340098

/-! ## A269533.P4413869445315276576

`A003557(A020639(n+1))*A269537(A027379(n+2))`
-/

namespace A269533.P4413869445315276576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A020639 (n + 1)).toNat * A269537 (A027379 (n + 2)).toNat

end

end A269533.P4413869445315276576

/-! ## A269533.P15328395412300191669

`A003557(A006530(2*n+1))*A269537(A027379(n+2))`
-/

namespace A269533.P15328395412300191669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A006530 (2 * n + 1)).toNat * A269537 (A027379 (n + 2)).toNat

end

end A269533.P15328395412300191669

/-!
# A269534: Number of length-n 0..5 arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269534, there is no canonical definition to state claims against.
-/

/-! ## A269534.P13805631779418384188

`A269537(Δ[A264443(n)])`
-/

namespace A269534.P13805631779418384188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (f1 (n + 1) - f1 n).toNat

end

end A269534.P13805631779418384188

/-! ## A269534.P2746195721325193226

`A269537(A046691(n+3))`
-/

namespace A269534.P2746195721325193226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A046691 (n + 3)).toNat

end

end A269534.P2746195721325193226

/-! ## A269534.P18403166295536624304

`A269537(Δ[A023545(n+1)])`
-/

namespace A269534.P18403166295536624304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (f1 (n + 1) - f1 n).toNat

end

end A269534.P18403166295536624304

/-! ## A269534.P12615292636315647575

`A269537(A052905(n+2)+1)`
-/

namespace A269534.P12615292636315647575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A052905 (n + 2) + 1).toNat

end

end A269534.P12615292636315647575

/-! ## A269534.P6172229908025228389

`A269537(A055998(n+3)-1)`
-/

namespace A269534.P6172229908025228389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A055998 (n + 3) - 1).toNat

end

end A269534.P6172229908025228389

/-! ## A269534.P5831445769288039155

`A269537(lt[A269537(n+5), n])`
-/

namespace A269534.P5831445769288039155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A269534.P5831445769288039155

/-! ## A269534.P5148879474093447379

`A269537(A000217(A020710(n))-4)`
-/

namespace A269534.P5148879474093447379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000217 (A020710 n).toNat - 4).toNat

end

end A269534.P5148879474093447379

/-! ## A269534.P6678624388471544020

`A269537(A166136(n+1)+A016789(n))`
-/

namespace A269534.P6678624388471544020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A166136 (n + 1) + A016789 n).toNat

end

end A269534.P6678624388471544020

/-! ## A269534.P5066809780732279022

`A269537(A264443(n+1)-A264443(n))`
-/

namespace A269534.P5066809780732279022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A264443 (n + 1) - A264443 n).toNat

end

end A269534.P5066809780732279022

/-!
# A269535: Number of length-n 0..6 arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269535, there is no canonical definition to state claims against.
-/

/-! ## A269535.P2101581029876957711

`A269537(A052905(n+3))`
-/

namespace A269535.P2101581029876957711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A052905 (n + 3)).toNat

end

end A269535.P2101581029876957711

/-! ## A269535.P10014424247277609063

`A269537(A000124(n+6)-6)`
-/

namespace A269535.P10014424247277609063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000124 (n + 6) - 6).toNat

end

end A269535.P10014424247277609063

/-! ## A269535.P11531547875870059406

`A269537(Δ[Δ[A006504(n+1)]])`
-/

namespace A269535.P11531547875870059406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (f1 (n + 1) - f1 n).toNat

end

end A269535.P11531547875870059406

/-! ## A269535.P16610906716822204913

`A269537(Δ[A023551(n+1)]+1)`
-/

namespace A269535.P16610906716822204913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (f1 (n + 1) - f1 n + 1).toNat

end

end A269535.P16610906716822204913

/-! ## A269535.P6196415220705390055

`A269537(Δ[A264443(n+1)]-1)`
-/

namespace A269535.P6196415220705390055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (f1 (n + 1) - f1 n - 1).toNat

end

end A269535.P6196415220705390055

/-! ## A269535.P12115877412537207187

`A269537(Δ[A023545(n+2)]-1)`
-/

namespace A269535.P12115877412537207187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (f1 (n + 1) - f1 n - 1).toNat

end

end A269535.P12115877412537207187

/-! ## A269535.P16390642333698318576

`A269537(A133263(n+4)+A005843(n+2))`
-/

namespace A269535.P16390642333698318576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A133263 (n + 4) + A005843 (n + 2)).toNat

end

end A269535.P16390642333698318576

/-!
# A269536: Number of length-n 0..7 arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269536, there is no canonical definition to state claims against.
-/

/-! ## A269536.P10449579071569286055

`A269537(A055999(n+4))`
-/

namespace A269536.P10449579071569286055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A055999 (n + 4)).toNat

end

end A269536.P10449579071569286055

/-! ## A269536.P18369220962630094258

`A269537(Δ[A023551(n+2)])`
-/

namespace A269536.P18369220962630094258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (f1 (n + 1) - f1 n).toNat

end

end A269536.P18369220962630094258

/-! ## A269536.P12317895142736864240

`A269537(A052905(n+4)-1)`
-/

namespace A269536.P12317895142736864240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A052905 (n + 4) - 1).toNat

end

end A269536.P12317895142736864240

/-! ## A269536.P2677847607768632099

`A269537(A000217(n+7)-6)`
-/

namespace A269536.P2677847607768632099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000217 (n + 7) - 6).toNat

end

end A269536.P2677847607768632099

/-! ## A269536.P3305950985323144353

`A269537(A000124(n+7)-7)`
-/

namespace A269536.P3305950985323144353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000124 (n + 7) - 7).toNat

end

end A269536.P3305950985323144353

/-! ## A269536.P6211907101516643932

`A269537(A152947(n+9)-7)`
-/

namespace A269536.P6211907101516643932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A152947 (n + 9) - 7).toNat

end

end A269536.P6211907101516643932

/-!
# A269537: T(n,k)=Number of length-n 0..k arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269537, there is no canonical definition to state claims against.
-/

/-! ## A269537.P12619072982739803998

`A268944(n+1)+A102683(A026691(n))`
-/

namespace A269537.P12619072982739803998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (n + 1) + A102683 (A026691 n).toNat

end

end A269537.P12619072982739803998

/-! ## A269537.P12331000646983254692

`A268944(n+1)+A034332(A122848(n))`
-/

namespace A269537.P12331000646983254692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (n + 1) + A034332 (A122848 n).toNat

end

end A269537.P12331000646983254692

/-! ## A269537.P14741321270452480968

`A358754(A164147(n))+A268944(n+1)`
-/

namespace A269537.P14741321270452480968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358754 (A164147 n).toNat + A268944 (n + 1)

end

end A269537.P14741321270452480968

/-! ## A269537.P11866272988165510110

`A269678(n+1)-A105514(A320606(n+1)²)`
-/

namespace A269537.P11866272988165510110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (n + 1) - A105514 (A320606 (n + 1) ^ 2).toNat

end

end A269537.P11866272988165510110

/-!
# A269538: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269538, the canonical program `A269538.P17635687002611226142` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269538 has offset 1).

The definition of A269538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269538.P17635687002611226142

`(1-(n+2)²)²+1-n²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269538

/-- `(1-(n+2)²)²+1-n²` -/
def P17635687002611226142.Spec : Prop :=
  ∀ n, P17635687002611226142.a n = A269538 (n + 1)

theorem P17635687002611226142.correct : P17635687002611226142.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel]

end A269538

/-! ## A269538.P15773321088545201225

`(n+1)*(A317637(n+1)+2)`
-/

namespace A269538.P15773321088545201225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A317637 (n + 1) + 2)

end

end A269538.P15773321088545201225

namespace A269538

/-- `(n+1)*(A317637(n+1)+2)` -/
def P15773321088545201225.Spec : Prop :=
  ∀ n, P15773321088545201225.a n = A269538 (n + 1)

theorem P15773321088545201225.correct : P15773321088545201225.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P15773321088545201225.a, A269538.P17635687002611226142.a, A317637, A317637.P12410921374359631461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-! ## A269538.P13141994069852656025

`(n+1)*(A027620(n)+1-n)`
-/

namespace A269538.P13141994069852656025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A027620 n + (1 - (n : ℤ)))

end

end A269538.P13141994069852656025

namespace A269538

/-- `(n+1)*(A027620(n)+1-n)` -/
def P13141994069852656025.Spec : Prop :=
  ∀ n, P13141994069852656025.a n = A269538 (n + 1)

theorem P13141994069852656025.correct : P13141994069852656025.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P13141994069852656025.a, A269538.P17635687002611226142.a, A027620, A027620.P6451220114165535432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-! ## A269538.P14009680792655425226

`(n+1)*(A081437(n+1)-n)`
-/

namespace A269538.P14009680792655425226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A081437 (n + 1) - (n : ℤ))

end

end A269538.P14009680792655425226

namespace A269538

/-- `(n+1)*(A081437(n+1)-n)` -/
def P14009680792655425226.Spec : Prop :=
  ∀ n, P14009680792655425226.a n = A269538 (n + 1)

theorem P14009680792655425226.correct : P14009680792655425226.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P14009680792655425226.a, A269538.P17635687002611226142.a, A081437, A081437.P14818767288704405254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-! ## A269538.P17768071523066196903

`2*(A083374(n+2)-(n+1)²)`
-/

namespace A269538.P17768071523066196903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083374 (n + 2) - ((n + 1) ^ 2 : ℤ))

end

end A269538.P17768071523066196903

namespace A269538

/-- `2*(A083374(n+2)-(n+1)²)` -/
def P17768071523066196903.Spec : Prop :=
  ∀ n, P17768071523066196903.a n = A269538 (n + 1)

end A269538

/-! ## A269538.P14590741949497677932

`(n+1)*(A152619(n+1)-(n-1))`
-/

namespace A269538.P14590741949497677932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A152619 (n + 1) - ((n : ℤ) - 1))

end

end A269538.P14590741949497677932

namespace A269538

/-- `(n+1)*(A152619(n+1)-(n-1))` -/
def P14590741949497677932.Spec : Prop :=
  ∀ n, P14590741949497677932.a n = A269538 (n + 1)

theorem P14590741949497677932.correct : P14590741949497677932.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P14590741949497677932.a, A269538.P17635687002611226142.a, A152619, A152619.P2662992481695215872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-! ## A269538.P2602547472487179187

`(n+1)*(A168297(n+2)+1)`
-/

namespace A269538.P2602547472487179187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A168297 (n + 2) + 1)

end

end A269538.P2602547472487179187

namespace A269538

/-- `(n+1)*(A168297(n+2)+1)` -/
def P2602547472487179187.Spec : Prop :=
  ∀ n, P2602547472487179187.a n = A269538 (n + 1)

theorem P2602547472487179187.correct : P2602547472487179187.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P2602547472487179187.a, A269538.P17635687002611226142.a, A168297, A168297.P10015316482910448573.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-! ## A269538.P9224504679100891845

`(n+1)*(A085490(n+2)-n)`
-/

namespace A269538.P9224504679100891845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A085490 (n + 2) - (n : ℤ))

end

end A269538.P9224504679100891845

namespace A269538

/-- `(n+1)*(A085490(n+2)-n)` -/
def P9224504679100891845.Spec : Prop :=
  ∀ n, P9224504679100891845.a n = A269538 (n + 1)

theorem P9224504679100891845.correct : P9224504679100891845.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P9224504679100891845.a, A269538.P17635687002611226142.a, A085490, A085490.P10919642999791457831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-! ## A269538.P6991384741289028535

`(n+1)*(A100109(n+3)-(n+1))`
-/

namespace A269538.P6991384741289028535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A100109 (n + 3) - (n + 1 : ℤ))

end

end A269538.P6991384741289028535

namespace A269538

/-- `(n+1)*(A100109(n+3)-(n+1))` -/
def P6991384741289028535.Spec : Prop :=
  ∀ n, P6991384741289028535.a n = A269538 (n + 1)

theorem P6991384741289028535.correct : P6991384741289028535.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P6991384741289028535.a, A269538.P17635687002611226142.a, A100109, A100109.P12729926206155598771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-! ## A269538.P16461069141379340975

`(n+1)*(A214731(n+3)-(n-2))`
-/

namespace A269538.P16461069141379340975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A214731 (n + 3) - ((n : ℤ) - 2))

end

end A269538.P16461069141379340975

namespace A269538

/-- `(n+1)*(A214731(n+3)-(n-2))` -/
def P16461069141379340975.Spec : Prop :=
  ∀ n, P16461069141379340975.a n = A269538 (n + 1)

theorem P16461069141379340975.correct : P16461069141379340975.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P16461069141379340975.a, A269538.P17635687002611226142.a, A214731, A214731.P11100101771334017780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-! ## A269538.P12051580459804434112

`((n+1)*A005563(n+2)+2)*(n+1)`
-/

namespace A269538.P12051580459804434112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A005563 (n + 2) + 2) * (n + 1 : ℤ)

end

end A269538.P12051580459804434112

namespace A269538

/-- `((n+1)*A005563(n+2)+2)*(n+1)` -/
def P12051580459804434112.Spec : Prop :=
  ∀ n, P12051580459804434112.a n = A269538 (n + 1)

theorem P12051580459804434112.correct : P12051580459804434112.Spec := by
  intro n
  simp only [A269538, Nat.add_sub_cancel, A269538.P12051580459804434112.a, A269538.P17635687002611226142.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269538

/-!
# A269539: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269539, the canonical program `A269539.P11217978190165439671` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269539 has offset 1).

The definition of A269539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269539.P11217978190165439671

`(n+1)^5+5*(n+1)^4+4*(n+1)^3+6*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269539

/-- `(n+1)^5+5*(n+1)^4+4*(n+1)^3+6*(n+1)²-2*(n+1)` -/
def P11217978190165439671.Spec : Prop :=
  ∀ n, P11217978190165439671.a n = A269539 (n + 1)

theorem P11217978190165439671.correct : P11217978190165439671.Spec := by
  intro n
  simp only [A269539, Nat.add_sub_cancel]

end A269539

/-!
# A269540: Number of length-6 0..n arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269540, the canonical program `A269540.P8549606940405058781` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269540 has offset 1).

The definition of A269540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269540.P8549606940405058781

`(n+1)^6+6*(n+1)^5+5*(n+1)^4+12*(n+1)^3-6*(n+1)²+6*(n+1)-2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269540

/-- `(n+1)^6+6*(n+1)^5+5*(n+1)^4+12*(n+1)^3-6*(n+1)²+6*(n+1)-2` -/
def P8549606940405058781.Spec : Prop :=
  ∀ n, P8549606940405058781.a n = A269540 (n + 1)

theorem P8549606940405058781.correct : P8549606940405058781.Spec := by
  intro n
  simp only [A269540, Nat.add_sub_cancel]

end A269540

/-! ## A269540.P14324089238560201493

`A269537(A166136(n+4))`
-/

namespace A269540.P14324089238560201493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A166136 (n + 4)).toNat

end

end A269540.P14324089238560201493

namespace A269540

/-- `A269537(A166136(n+4))` -/
def P14324089238560201493.Spec : Prop :=
  ∀ n, P14324089238560201493.a n = A269540 (n + 1)

end A269540

/-! ## A269540.P15399378541935356096

`A269537(A167499(n+4)+1)`
-/

namespace A269540.P15399378541935356096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A167499 (n + 4) + 1).toNat

end

end A269540.P15399378541935356096

namespace A269540

/-- `A269537(A167499(n+4)+1)` -/
def P15399378541935356096.Spec : Prop :=
  ∀ n, P15399378541935356096.a n = A269540 (n + 1)

end A269540

/-! ## A269540.P5681442207965246793

`A269537(A167614(n+4)+3)`
-/

namespace A269540.P5681442207965246793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A167614 (n + 4) + 3).toNat

end

end A269540.P5681442207965246793

namespace A269540

/-- `A269537(A167614(n+4)+3)` -/
def P5681442207965246793.Spec : Prop :=
  ∀ n, P5681442207965246793.a n = A269540 (n + 1)

end A269540

/-! ## A269540.P1618831506752259407

`A269537(A133263(n+5)+4)`
-/

namespace A269540.P1618831506752259407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A133263 (n + 5) + 4).toNat

end

end A269540.P1618831506752259407

namespace A269540

/-- `A269537(A133263(n+5)+4)` -/
def P1618831506752259407.Spec : Prop :=
  ∀ n, P1618831506752259407.a n = A269540 (n + 1)

end A269540

/-! ## A269540.P5509388628267381620

`A269537(A000124(n+5)+5)`
-/

namespace A269540.P5509388628267381620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000124 (n + 5) + 5).toNat

end

end A269540.P5509388628267381620

namespace A269540

/-- `A269537(A000124(n+5)+5)` -/
def P5509388628267381620.Spec : Prop :=
  ∀ n, P5509388628267381620.a n = A269540 (n + 1)

end A269540

/-! ## A269540.P6564096315235562912

`A269537(A000217(n+5)+6)`
-/

namespace A269540.P6564096315235562912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000217 (n + 5) + 6).toNat

end

end A269540.P6564096315235562912

namespace A269540

/-- `A269537(A000217(n+5)+6)` -/
def P6564096315235562912.Spec : Prop :=
  ∀ n, P6564096315235562912.a n = A269540 (n + 1)

end A269540

/-! ## A269540.P5403229717132068225

`A269537(A152947(n+7)+5)`
-/

namespace A269540.P5403229717132068225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A152947 (n + 7) + 5).toNat

end

end A269540.P5403229717132068225

namespace A269540

/-- `A269537(A152947(n+7)+5)` -/
def P5403229717132068225.Spec : Prop :=
  ∀ n, P5403229717132068225.a n = A269540 (n + 1)

end A269540

/-! ## A269540.P4995911852146697468

`A269537(A046691(n+3)+10)`
-/

namespace A269540.P4995911852146697468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A046691 (n + 3) + 10).toNat

end

end A269540.P4995911852146697468

namespace A269540

/-- `A269537(A046691(n+3)+10)` -/
def P4995911852146697468.Spec : Prop :=
  ∀ n, P4995911852146697468.a n = A269540 (n + 1)

end A269540

/-!
# A269541: Number of length-7 0..n arrays with no repeated value differing from the previous repeated value by other than one.

The programs for A269541, there is no canonical definition to state claims against.
-/

/-! ## A269541.P2722050317319103414

`A269537(∑[n+7]+21-n)`
-/

namespace A269541.P2722050317319103414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (∑ j ∈ Finset.range (n + 1), f1 j + 21 - n)

end

end A269541.P2722050317319103414

/-! ## A269541.P2993852775145399310

`lcm(2, A269537(A000217(n+6)+7))`
-/

namespace A269541.P2993852775145399310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269537 (A000217 (n + 6) + 7).toNat)

end

end A269541.P2993852775145399310

/-! ## A269541.P9268465781688315704

`A033999(n)²*A269537(A000217(n+6)+7)`
-/

namespace A269541.P9268465781688315704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A269537 (A000217 (n + 6) + 7).toNat

end

end A269541.P9268465781688315704

/-! ## A269541.P14542848626523553509

`A269537(A000217(n+6)+7)+A135481(2*n)`
-/

namespace A269541.P14542848626523553509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (A000217 (n + 6) + 7).toNat + A135481 (2 * n)

end

end A269541.P14542848626523553509

/-! ## A269541.P13123853923761440409

`A007318(A093799(n+1))*A269537(A000217(n+6)+7)`
-/

namespace A269541.P13123853923761440409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A093799 (n + 1)).toNat * A269537 (A000217 (n + 6) + 7).toNat

end

end A269541.P13123853923761440409

/-! ## A269541.P13233958648152942695

`A208510(A130883(n))*A269537(A000217(n+6)+7)`
-/

namespace A269541.P13233958648152942695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (A130883 n).toNat * A269537 (A000217 (n + 6) + 7).toNat

end

end A269541.P13233958648152942695

/-!
# A269542: Aliquot sequence starting at 702.

The programs for A269542, there is no canonical definition to state claims against.
-/

/-! ## A269542.P10737858490910567757

`A048050(a(n-1))+1` with `a(0)=702`
-/

namespace A269542.P10737858490910567757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [702] fun n a =>
  A048050 (a (n - 1)).toNat + 1

end

end A269542.P10737858490910567757

/-!
# A269543: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 630", based on the 5-celled von Neumann neighborhood.

The programs for A269543, there is no canonical definition to state claims against.
-/

/-! ## A269543.P7610688165541925343

`∑[A269523(n)]`
-/

namespace A269543.P7610688165541925343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269543.P7610688165541925343

/-! ## A269543.P13881898794033662921

`A269523(floor(acot(n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A269543.P13881898794033662921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269523 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + a (n - 1)

end

end A269543.P13881898794033662921

/-! ## A269543.P7247665977550707523

`∑[∑[A269629(n)]+1-A269629(n)]`
-/

namespace A269543.P7247665977550707523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A269629 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269543.P7247665977550707523

/-! ## A269543.P15674867328588850938

`a(n-1)+A269523(n)+A000038(n)` with `a(0)=1`
-/

namespace A269543.P15674867328588850938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A269523 n + A000038 n)

end

end A269543.P15674867328588850938

/-! ## A269543.P7469675036133460811

`A269523(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A269543.P7469675036133460811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269523 (A004526 (n + n)).toNat + a (n - 1)

end

end A269543.P7469675036133460811

/-! ## A269543.P12109016228294724265

`∑[A141310(∑[A269629(n)]-A269629(n))]`
-/

namespace A269543.P12109016228294724265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f2 j - A269629 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269543.P12109016228294724265

/-! ## A269543.P16186149165329113179

`∑[A004442(∑[A269629(n)]-A269629(n))]`
-/

namespace A269543.P16186149165329113179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f2 j - A269629 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269543.P16186149165329113179

/-! ## A269543.P467604185550950317

`∑[A109613(∑[A269629(n)]-A269629(n))]`
-/

namespace A269543.P467604185550950317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f2 j - A269629 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269543.P467604185550950317

/-! ## A269543.P14888820619771925187

`a(n-1)+A269523(n)%A002189(n)` with `a(0)=1`
-/

namespace A269543.P14888820619771925187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A269523 n) (A002189 n)

end

end A269543.P14888820619771925187

/-!
# A269544: Numbers n such that 7*8^n + 1 is prime.

The programs for A269544, there is no canonical definition to state claims against.
-/

/-! ## A269544.P3137301095323078471

`eq[A001065(n+1), A280129(A060959(n))]`
-/

namespace A269544.P3137301095323078471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280129 (A060959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269544.P3137301095323078471

/-!
# A269548: Expansion of (-7*x^2 + 134*x + 1)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269548, there is no canonical definition to state claims against.
-/

/-! ## A269548.P13552318034169624376

`4-A269551(n)`
-/

namespace A269548.P13552318034169624376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269551 n

end

end A269548.P13552318034169624376

/-! ## A269548.P14120890837308618669

`1-2*A220755(2*(n+1))`
-/

namespace A269548.P14120890837308618669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A220755 (2 * (n + 1))

end

end A269548.P14120890837308618669

/-! ## A269548.P12697467013731244049

`A269552(n)+A269553(n)-1`
-/

namespace A269548.P12697467013731244049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269552 n + (A269553 n - 1)

end

end A269548.P12697467013731244049

/-! ## A269548.P8091384016000609920

`A269552(n)+3-A269555(n)`
-/

namespace A269548.P8091384016000609920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269552 n + (3 - A269555 n)

end

end A269548.P8091384016000609920

/-! ## A269548.P9040004575252466944

`A269553(n)+3-A269549(n)`
-/

namespace A269548.P9040004575252466944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269553 n + (3 - A269549 n)

end

end A269548.P9040004575252466944

/-! ## A269548.P220578243291337932

`A008683(A087895(n+1))+A269553(n)+A269552(n)`
-/

namespace A269548.P220578243291337932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A087895 (n + 1)).toNat + (A269553 n + A269552 n)

end

end A269548.P220578243291337932

/-!
# A269549: Expansion of (-x^2 + 298*x - 1)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269549, there is no canonical definition to state claims against.
-/

/-! ## A269549.P1656577427341654194

`4-A269552(n)`
-/

namespace A269549.P1656577427341654194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269552 n

end

end A269549.P1656577427341654194

/-! ## A269549.P8677223860054507144

`1-5*A045502(n)`
-/

namespace A269549.P8677223860054507144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 5 * A045502 n

end

end A269549.P8677223860054507144

/-! ## A269549.P16830206728414112133

`1-4*5*A200993(n)`
-/

namespace A269549.P16830206728414112133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 4 * (5 * A200993 n)

end

end A269549.P16830206728414112133

/-! ## A269549.P11912121464094727776

`A269551(n)+A269553(n)-1`
-/

namespace A269549.P11912121464094727776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269551 n + (A269553 n - 1)

end

end A269549.P11912121464094727776

/-! ## A269549.P9204178118460598259

`A269553(n)+3-A269548(n)`
-/

namespace A269549.P9204178118460598259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269553 n + (3 - A269548 n)

end

end A269549.P9204178118460598259

/-!
# A269550: Expansion of (-5*x^2 + 228*x - 7)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269550, there is no canonical definition to state claims against.
-/

/-! ## A269550.P15848891537197176514

`4-A261004(n)`
-/

namespace A269550.P15848891537197176514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A261004 n

end

end A269550.P15848891537197176514

/-! ## A269550.P5825684191563394912

`4*A269552(n)-A269556(n)`
-/

namespace A269550.P5825684191563394912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A269552 n - A269556 n

end

end A269550.P5825684191563394912

/-! ## A269550.P1870582134525022862

`floor(A269556(n)+A269551(n)/2)`
-/

namespace A269550.P1870582134525022862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269556 n : ℚ) + (A269551 n : ℚ) / 2⌋

end

end A269550.P1870582134525022862

/-! ## A269550.P3859873406768174993

`4-(A269554(n)-floor(A269551(n)/2))`
-/

namespace A269550.P3859873406768174993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (A269554 n - ⌊(A269551 n : ℚ) / 2⌋)

end

end A269550.P3859873406768174993

/-! ## A269550.P10816873083078465325

`floor(A261004(n)/A269553(n)*A269555(n))`
-/

namespace A269550.P10816873083078465325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261004 n : ℚ) / (A269553 n : ℚ) * (A269555 n : ℚ)⌋

end

end A269550.P10816873083078465325

/-!
# A269551: Expansion of (3*x^2 + 258*x - 5)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269551, there is no canonical definition to state claims against.
-/

/-! ## A269551.P5157568917026597939

`4-A269548(n)`
-/

namespace A269551.P5157568917026597939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269548 n

end

end A269551.P5157568917026597939

/-! ## A269551.P3724555255935227362

`2*A220755(2*(n+1))+3`
-/

namespace A269551.P3724555255935227362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220755 (2 * (n + 1)) + 3

end

end A269551.P3724555255935227362

/-! ## A269551.P7527697801732053521

`A146313(n+1)-A173115(n)/3+2`
-/

namespace A269551.P7527697801732053521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146313 (n + 1) : ℚ) - (A173115 n : ℚ) / 3 + 2

end

end A269551.P7527697801732053521

/-! ## A269551.P16553274802268605977

`A269549(n)+1-A269553(n)`
-/

namespace A269551.P16553274802268605977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269549 n + (1 - A269553 n)

end

end A269551.P16553274802268605977

/-! ## A269551.P10419876519526553656

`A269555(n)+1-A269552(n)`
-/

namespace A269551.P10419876519526553656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269555 n + (1 - A269552 n)

end

end A269551.P10419876519526553656

/-! ## A269551.P13652626522953380154

`5-(A269553(n)+A269552(n))`
-/

namespace A269551.P13652626522953380154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A269553 n + A269552 n)

end

end A269551.P13652626522953380154

/-!
# A269552: Expansion of (-3*x^2 + 94*x - 3)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269552, the canonical program `A269552.P3673447742636027827` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269552 has offset 0).

The definition of A269552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-94x+3x^2)/(1-99x+99x^2-x^3))` (program `A269552.P3673447742636027827`, by `A269552.P3673447742636027827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269552.P3673447742636027827

`ogf((3-94x+3x^2)/(1-99x+99x^2-x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269552

/-- `ogf((3-94x+3x^2)/(1-99x+99x^2-x^3))` -/
def P3673447742636027827.Spec : Prop :=
  ∀ n, P3673447742636027827.a n = A269552 n

theorem P3673447742636027827.correct : P3673447742636027827.Spec := by
  intro n
  simp only [A269552]

end A269552

/-! ## A269552.P5051721316717705615

`4-A269549(n)`
-/

namespace A269552.P5051721316717705615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269549 n

end

end A269552.P5051721316717705615

namespace A269552

/-- `4-A269549(n)` -/
def P5051721316717705615.Spec : Prop :=
  ∀ n, P5051721316717705615.a n = A269552 n

end A269552

/-! ## A269552.P5901037321710348785

`5*A045502(n)+3`
-/

namespace A269552.P5901037321710348785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A045502 n + 3

end

end A269552.P5901037321710348785

namespace A269552

/-- `5*A045502(n)+3` -/
def P5901037321710348785.Spec : Prop :=
  ∀ n, P5901037321710348785.a n = A269552 n

end A269552

/-! ## A269552.P12107482277370044614

`4*5*A200993(n)+3`
-/

namespace A269552.P12107482277370044614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (5 * A200993 n) + 3

end

end A269552.P12107482277370044614

namespace A269552

/-- `4*5*A200993(n)+3` -/
def P12107482277370044614.Spec : Prop :=
  ∀ n, P12107482277370044614.a n = A269552 n

end A269552

/-! ## A269552.P1980869129408741709

`A146313(n+1)-A045502(n)`
-/

namespace A269552.P1980869129408741709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146313 (n + 1) - A045502 n

end

end A269552.P1980869129408741709

namespace A269552

/-- `A146313(n+1)-A045502(n)` -/
def P1980869129408741709.Spec : Prop :=
  ∀ n, P1980869129408741709.a n = A269552 n

end A269552

/-! ## A269552.P17598023872490275785

`A146313(n+1)-∑[A122652(2*n)]`
-/

namespace A269552.P17598023872490275785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146313 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269552.P17598023872490275785

namespace A269552

/-- `A146313(n+1)-∑[A122652(2*n)]` -/
def P17598023872490275785.Spec : Prop :=
  ∀ n, P17598023872490275785.a n = A269552 n

end A269552

/-! ## A269552.P135476576323531348

`A080806(2*(n+1))*A080806(2*n+1)`
-/

namespace A269552.P135476576323531348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (2 * (n + 1)) * A080806 (2 * n + 1)

end

end A269552.P135476576323531348

namespace A269552

/-- `A080806(2*(n+1))*A080806(2*n+1)` -/
def P135476576323531348.Spec : Prop :=
  ∀ n, P135476576323531348.a n = A269552 n

end A269552

/-! ## A269552.P2059830558774717598

`A080873(2*n+1)*A080874(2*(n+1))`
-/

namespace A269552.P2059830558774717598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n + 1) * A080874 (2 * (n + 1))

end

end A269552.P2059830558774717598

namespace A269552

/-- `A080873(2*n+1)*A080874(2*(n+1))` -/
def P2059830558774717598.Spec : Prop :=
  ∀ n, P2059830558774717598.a n = A269552 n

end A269552

/-! ## A269552.P14327818720987902643

`A146313(n+1)-A001078(n+1)*A001078(n)`
-/

namespace A269552.P14327818720987902643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146313 (n + 1) - A001078 (n + 1) * A001078 n

end

end A269552.P14327818720987902643

namespace A269552

/-- `A146313(n+1)-A001078(n+1)*A001078(n)` -/
def P14327818720987902643.Spec : Prop :=
  ∀ n, P14327818720987902643.a n = A269552 n

end A269552

/-!
# A269553: Expansion of (-5*x^2 + 138*x + 3)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269553, there is no canonical definition to state claims against.
-/

/-! ## A269553.P2994853445493208535

`4-A269555(n)`
-/

namespace A269553.P2994853445493208535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269555 n

end

end A269553.P2994853445493208535

/-! ## A269553.P7218282117067659634

`A269548(n)+1-A269552(n)`
-/

namespace A269553.P7218282117067659634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269548 n + (1 - A269552 n)

end

end A269553.P7218282117067659634

/-! ## A269553.P7419266542539422496

`A269549(n)+1-A269551(n)`
-/

namespace A269553.P7419266542539422496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269549 n + (1 - A269551 n)

end

end A269553.P7419266542539422496

/-! ## A269553.P11682580020972939737

`A269548(n)+A269549(n)-3`
-/

namespace A269553.P11682580020972939737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269548 n + (A269549 n - 3)

end

end A269553.P11682580020972939737

/-! ## A269553.P4602223686002878131

`5-(A269552(n)+A269551(n))`
-/

namespace A269553.P4602223686002878131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A269552 n + A269551 n)

end

end A269553.P4602223686002878131

/-! ## A269553.P12850651667302590288

`A080806(2*n+1)²-A041006(2*n)²`
-/

namespace A269553.P12850651667302590288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (2 * n + 1) ^ 2 - A041006 (2 * n) ^ 2

end

end A269553.P12850651667302590288

/-! ## A269553.P7634330134857273784

`(A080806(2*n+1)-A041006(2*n))*A080806(2*(n+1))`
-/

namespace A269553.P7634330134857273784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080806 (2 * n + 1) - A041006 (2 * n)) * A080806 (2 * (n + 1))

end

end A269553.P7634330134857273784

/-!
# A269554: Expansion of (3*x^2 + 244*x + 1)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269554, there is no canonical definition to state claims against.
-/

/-! ## A269554.P15692044619557703689

`4-A269556(n)`
-/

namespace A269554.P15692044619557703689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269556 n

end

end A269554.P15692044619557703689

/-! ## A269554.P15474613253656746025

`floor(A261004(n)+A269551(n)/2)`
-/

namespace A269554.P15474613253656746025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261004 n : ℚ) + (A269551 n : ℚ) / 2⌋

end

end A269554.P15474613253656746025

/-! ## A269554.P15419605353150242944

`4-(4*A269552(n)-A269550(n))`
-/

namespace A269554.P15419605353150242944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (4 * A269552 n - A269550 n)

end

end A269554.P15419605353150242944

/-! ## A269554.P14240951626922472329

`A261004(n)+A269550(n)%A269556(n)`
-/

namespace A269554.P14240951626922472329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261004 n + Int.tmod (A269550 n) (A269556 n)

end

end A269554.P14240951626922472329

/-! ## A269554.P631037232966615857

`A269553(n)+A269555(n)%A269556(n)`
-/

namespace A269554.P631037232966615857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269553 n + Int.tmod (A269555 n) (A269556 n)

end

end A269554.P631037232966615857

/-!
# A269555: Expansion of (x^2 + 254*x - 7)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269555, there is no canonical definition to state claims against.
-/

/-! ## A269555.P18214388002762707893

`4-A269553(n)`
-/

namespace A269555.P18214388002762707893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269553 n

end

end A269555.P18214388002762707893

/-! ## A269555.P3621233712360457613

`A269551(n)+A269552(n)-1`
-/

namespace A269555.P3621233712360457613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269551 n + (A269552 n - 1)

end

end A269555.P3621233712360457613

/-! ## A269555.P12831972003123867620

`A269551(n)+3-A269549(n)`
-/

namespace A269555.P12831972003123867620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269551 n + (3 - A269549 n)

end

end A269555.P12831972003123867620

/-! ## A269555.P10687776299826242543

`A269552(n)+3-A269548(n)`
-/

namespace A269555.P10687776299826242543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269552 n + (3 - A269548 n)

end

end A269555.P10687776299826242543

/-! ## A269555.P11462889592388935082

`A008683(A000355(n+1))+A269552(n)+A269551(n)`
-/

namespace A269555.P11462889592388935082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000355 (n + 1)).toNat + (A269552 n + A269551 n)

end

end A269555.P11462889592388935082

/-!
# A269556: Expansion of (-7*x^2 + 148*x - 5)/(x^3 - 99*x^2 + 99*x - 1).

The programs for A269556, there is no canonical definition to state claims against.
-/

/-! ## A269556.P9204859825403226359

`4-A269554(n)`
-/

namespace A269556.P9204859825403226359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A269554 n

end

end A269556.P9204859825403226359

/-! ## A269556.P283188651608884440

`4*A269552(n)-A269550(n)`
-/

namespace A269556.P283188651608884440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A269552 n - A269550 n

end

end A269556.P283188651608884440

/-! ## A269556.P4464358117421955040

`A269550(n)-floor(A269551(n)/2)`
-/

namespace A269556.P4464358117421955040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269550 n - ⌊(A269551 n : ℚ) / 2⌋

end

end A269556.P4464358117421955040

/-! ## A269556.P11422467428697058113

`A269553(n)+A080874(4*n+3)`
-/

namespace A269556.P11422467428697058113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269553 n + A080874 (4 * n + 3)

end

end A269556.P11422467428697058113

/-! ## A269556.P1408048961057553509

`4-floor(A261004(n)+A269551(n)/2)`
-/

namespace A269556.P1408048961057553509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ⌊(A261004 n : ℚ) + (A269551 n : ℚ) / 2⌋

end

end A269556.P1408048961057553509

/-!
# A269560: Length of the longest squarefree and rich word over an alphabet of n letters.

The programs for A269560, there is no canonical definition to state claims against.
-/

/-! ## A269560.P12304260930283647358

`ogf((1+3x+2x^2-x^3)/(1-5x^2-x^3+5x^4))`
-/

namespace A269560.P12304260930283647358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, -1] [1, 0, -5, -1, 5] n

end

end A269560.P12304260930283647358

/-! ## A269560.P15152287816132260628

`∑[∑[∑{d}[ceil(2^(n-1))+1, #-1]]]`
-/

namespace A269560.P15152287816132260628
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, ((d : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269560.P15152287816132260628

/-! ## A269560.P18122525729526752470

`∑[∏[gcd(1-n, n%2)]+2^n-1]`
-/

namespace A269560.P18122525729526752470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269560.P18122525729526752470

/-!
# A269565: Array read by antidiagonals: T(n,m) is the number of (directed) Hamiltonian paths in K_n X K_m.

The programs for A269565, there is no canonical definition to state claims against.
-/

/-! ## A269565.P17862307033847083943

`A221916(A240347(n+1))`
-/

namespace A269565.P17862307033847083943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221916 (A240347 (n + 1)).toNat

end

end A269565.P17862307033847083943

/-! ## A269565.P18113890036998937462

`A156992(n+1)-A235924(A156917(n))`
-/

namespace A269565.P18113890036998937462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156992 (n + 1) - A235924 (A156917 n).toNat

end

end A269565.P18113890036998937462

/-! ## A269565.P15698407753021580035

`A093594(A268781(n+1))/A128545(n)`
-/

namespace A269565.P15698407753021580035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093594 (A268781 (n + 1)).toNat : ℚ) / (A128545 n : ℚ)

end

end A269565.P15698407753021580035

/-! ## A269565.P10757302652135746351

`A093594(A268781(n+1))/A144151(n)`
-/

namespace A269565.P10757302652135746351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093594 (A268781 (n + 1)).toNat : ℚ) / (A144151 n : ℚ)

end

end A269565.P10757302652135746351

/-!
# A269566: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 622", based on the 5-celled von Neumann neighborhood.

The programs for A269566, there is no canonical definition to state claims against.
-/

/-! ## A269566.P16427741780683355609

`A269522(2^n-1)`
-/

namespace A269566.P16427741780683355609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269522 (2 ^ n - 1)

end

end A269566.P16427741780683355609

/-! ## A269566.P18236424114550893301

`A273482(2^(n+1)-2)`
-/

namespace A269566.P18236424114550893301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (2 ^ (n + 1) - 2)

end

end A269566.P18236424114550893301

/-! ## A269566.P15847972205669267793

`record[A269522(A218616(n))]`
-/

namespace A269566.P15847972205669267793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269522 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269566.P15847972205669267793

/-! ## A269566.P5445084172265582584

`or(1, A269522(A000225(n)))`
-/

namespace A269566.P5445084172265582584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269522 (A000225 n).toNat)

end

end A269566.P5445084172265582584

/-! ## A269566.P17025328366863771083

`record[A269522(A243071(n+1))]`
-/

namespace A269566.P17025328366863771083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269522 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269566.P17025328366863771083

/-!
# A269567: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 622", based on the 5-celled von Neumann neighborhood.

The programs for A269567, there is no canonical definition to state claims against.
-/

/-! ## A269567.P11642079718489041508

`∑[A269522(n)]`
-/

namespace A269567.P11642079718489041508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269567.P11642079718489041508

/-! ## A269567.P16176647848188845153

`A269522(n%A269522(n))+a(n-1)` with `a(0)=1`
-/

namespace A269567.P16176647848188845153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269522 (Int.tmod (n : ℤ) (A269522 n)).toNat + a (n - 1)

end

end A269567.P16176647848188845153

/-! ## A269567.P14277156715068567729

`∑[1-(A269568(n)-∑[A269568(n)])]`
-/

namespace A269567.P14277156715068567729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269568 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A269568 n - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269567.P14277156715068567729

/-! ## A269567.P2318889035665941081

`∑[A273482(2*n)]`
-/

namespace A269567.P2318889035665941081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269567.P2318889035665941081

/-! ## A269567.P16474913814975322221

`A273482(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A269567.P16474913814975322221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273482 (n + n) + a (n - 1)

end

end A269567.P16474913814975322221

/-! ## A269567.P8045630832578146673

`∑[A273482(A005843(n))%A228381(n+1)]`
-/

namespace A269567.P8045630832578146673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273482 (A005843 n).toNat) (A228381 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269567.P8045630832578146673

/-!
# A269568: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 622", based on the 5-celled von Neumann neighborhood.

The programs for A269568, there is no canonical definition to state claims against.
-/

/-! ## A269568.P7848889040332452088

`Δ[A269522(n)]`
-/

namespace A269568.P7848889040332452088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269568.P7848889040332452088

/-! ## A269568.P4439854530000139745

`A269522(n+1)-A269522(n)`
-/

namespace A269568.P4439854530000139745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269522 (n + 1) - A269522 n

end

end A269568.P4439854530000139745

/-! ## A269568.P9977311833924224295

`A273485(2*n+1)+A273485(2*n)`
-/

namespace A269568.P9977311833924224295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273485 (2 * n + 1) + A273485 (2 * n)

end

end A269568.P9977311833924224295

/-! ## A269568.P12473516491050404418

`A273485(2*n)-abs(A273485(A109613(2*n)))`
-/

namespace A269568.P12473516491050404418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273485 (2 * n) - |A273485 (A109613 (2 * n)).toNat|

end

end A269568.P12473516491050404418

/-! ## A269568.P14793392814151189191

`Δ[A273482(2*n)]`
-/

namespace A269568.P14793392814151189191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269568.P14793392814151189191

/-! ## A269568.P3524170550778176650

`A273482(2*(n+1))-A273482(2*n)`
-/

namespace A269568.P3524170550778176650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (2 * (n + 1)) - A273482 (2 * n)

end

end A269568.P3524170550778176650

/-! ## A269568.P416542074334988803

`Δ[A273482(A005843(n))]%A155212(n+2)`
-/

namespace A269568.P416542074334988803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273482 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A155212 (n + 2))

end

end A269568.P416542074334988803

/-!
# A269570: Binary fractility of n.

The programs for A269570, there is no canonical definition to state claims against.
-/

/-! ## A269570.P4937157073191449931

`A000374(n+2)-n%2`
-/

namespace A269570.P4937157073191449931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 2) - ((n % 2 : ℕ) : ℤ)

end

end A269570.P4937157073191449931

/-! ## A269570.P17650604182201239935

`∑[Δ[A000374(n+1)]+(-1)^n]`
-/

namespace A269570.P17650604182201239935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269570.P17650604182201239935

/-! ## A269570.P7840602340822246428

`A000374(n+2)-A000035(n)`
-/

namespace A269570.P7840602340822246428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 2) - A000035 n

end

end A269570.P7840602340822246428

/-! ## A269570.P2766495589169119261

`A000374(n+2)-log2(A000034(n))`
-/

namespace A269570.P2766495589169119261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000374 (n + 2) : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A269570.P2766495589169119261

/-! ## A269570.P18276711637993279035

`A000374(n+2)-∑[A062157(n)]`
-/

namespace A269570.P18276711637993279035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269570.P18276711637993279035

/-! ## A269570.P13407535496964195651

`A000374(n+2)-Δ[A004526(n)]`
-/

namespace A269570.P13407535496964195651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 2) - (f1 (n + 1) - f1 n)

end

end A269570.P13407535496964195651

/-! ## A269570.P14792414902091733140

`A000374(n+2)-Δ[A008619(n)]`
-/

namespace A269570.P14792414902091733140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 2) - (f1 (n + 1) - f1 n)

end

end A269570.P14792414902091733140

/-! ## A269570.P4271889674263857589

`A000374(n+2)-char[A005408(n)]`
-/

namespace A269570.P4271889674263857589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A269570.P4271889674263857589

/-! ## A269570.P7938980860828778947

`A000374(n+2)-A059841(n+1)`
-/

namespace A269570.P7938980860828778947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 2) - A059841 (n + 1)

end

end A269570.P7938980860828778947

/-! ## A269570.P11641655474969772861

`∑[A033999(n)+Δ[A000374(n+1)]]`
-/

namespace A269570.P11641655474969772861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269570.P11641655474969772861

/-!
# A269571: Numbers having binary fractility 1.

The programs for A269571, there is no canonical definition to state claims against.
-/

/-! ## A269571.P10867122612688639161

`∪[A001122(n+1), 2*a(n-1)]` with `a(0)=2`
-/

namespace A269571.P10867122612688639161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A269571.P10867122612688639161

/-! ## A269571.P13014280179971771498

`eq[2, A000374(A184418(n))]`
-/

namespace A269571.P13014280179971771498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A184418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269571.P13014280179971771498

/-! ## A269571.P17644500442280369819

`eq[2, A000374(A257143(n))]`
-/

namespace A269571.P17644500442280369819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269571.P17644500442280369819

/-! ## A269571.P16368711457342149086

`∪[A001122(n+1), A056767(n+1)]`
-/

namespace A269571.P16368711457342149086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A269571.P16368711457342149086

/-! ## A269571.P17288243425994268739

`∪[A001122(n+1), A335890(n+1)]`
-/

namespace A269571.P17288243425994268739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A269571.P17288243425994268739

/-! ## A269571.P12075142505621127026

`∪[A001122(n+1), A335891(n+1)]`
-/

namespace A269571.P12075142505621127026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A269571.P12075142505621127026

/-! ## A269571.P18346454709603147737

`record[A123167(n+1)/A000374(n+1)-n]`
-/

namespace A269571.P18346454709603147737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123167 (n + 1) : ℚ) / (A000374 (n + 1) : ℚ) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269571.P18346454709603147737

/-! ## A269571.P13078278623032641627

`eq[A000374(n+1), A023135(a(n-1)+1)]+1` with `a(0)=2`
-/

namespace A269571.P13078278623032641627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A023135 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269571.P13078278623032641627

/-! ## A269571.P8114835519338758636

`record[A008619(A123167(n+1))/A000374(n+1)]`
-/

namespace A269571.P8114835519338758636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A123167 (n + 1)).toNat : ℚ) / (A000374 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269571.P8114835519338758636

/-! ## A269571.P3459051535011864330

`record[A140670(n+1)+A007733(A007733(n+1)+1)]`
-/

namespace A269571.P3459051535011864330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (n + 1) + A007733 (A007733 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269571.P3459051535011864330

/-!
# A269572: Maximal period-length associated with binary fractility of n.

The programs for A269572, there is no canonical definition to state claims against.
-/

/-! ## A269572.P8706036196757044745

`∑{digits}[A104013(n+2), 1-#]`
-/

namespace A269572.P8706036196757044745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A269572.P8706036196757044745

/-! ## A269572.P11746392821951751711

`A333468(A101279(n+2))`
-/

namespace A269572.P11746392821951751711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333468 (A101279 (n + 2)).toNat

end

end A269572.P11746392821951751711

/-! ## A269572.P5017516665901155284

`A007733(n+2)-A119513(n+2)`
-/

namespace A269572.P5017516665901155284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 2) - A119513 (n + 2)

end

end A269572.P5017516665901155284

/-! ## A269572.P9641606899899492862

`A023416(A104014(n+2))`
-/

namespace A269572.P9641606899899492862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A104014 (n + 2)).toNat

end

end A269572.P9641606899899492862

/-! ## A269572.P1278893284751087125

`A139355(A003473(n+2))`
-/

namespace A269572.P1278893284751087125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A003473 (n + 2)).toNat

end

end A269572.P1278893284751087125

/-!
# A269575: Primes of the form 10^n + 91.

The programs for A269575, there is no canonical definition to state claims against.
-/

/-! ## A269575.P4469422628058069508

`10^A110918(n+1)+91`
-/

namespace A269575.P4469422628058069508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A110918 (n + 1) : ℤ) + 91

end

end A269575.P4469422628058069508

/-! ## A269575.P7905949291530330066

`A216179(A110918(n+1))+88`
-/

namespace A269575.P7905949291530330066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216179 (A110918 (n + 1)).toNat + 88

end

end A269575.P7905949291530330066

/-!
# A269576: a(n) = Product_{i=1..n} (4^i - 3^i).

The programs for A269576, there is no canonical definition to state claims against.
-/

/-! ## A269576.P17786978625323098857

`∏[4^(n+1)-3^(n+1)]`
-/

namespace A269576.P17786978625323098857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A269576.P17786978625323098857

/-! ## A269576.P8977551099964623996

`(4^(n+1)-3^(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A269576.P8977551099964623996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ)) * a (n - 1)

end

end A269576.P8977551099964623996

/-! ## A269576.P621146831687156039

`∏[sqrt(∑[A255463(n)])]²`
-/

namespace A269576.P621146831687156039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A269576.P621146831687156039

/-! ## A269576.P13318545305736436622

`or(1, ∏[A005061(n+1)])`
-/

namespace A269576.P13318545305736436622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A269576.P13318545305736436622

/-! ## A269576.P3181132929534109716

`∏[A005061(n+1)]^A019429(2*n)`
-/

namespace A269576.P3181132929534109716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A019429 (2 * n) : ℤ)

end

end A269576.P3181132929534109716

/-!
# A269577: Number of length-n 0..n arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269577, there is no canonical definition to state claims against.
-/

/-! ## A269577.P11399159594326673527

`A269583((n+1)²+n²)`
-/

namespace A269577.P11399159594326673527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 ((n + 1) ^ 2 + n ^ 2)

end

end A269577.P11399159594326673527

/-! ## A269577.P15779273151611083853

`record[A003982(n)*A269583(n+1)]`
-/

namespace A269577.P15779273151611083853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269577.P15779273151611083853

/-! ## A269577.P4246154597742926988

`record[gcd(A003987(n), A269583(n+1))]`
-/

namespace A269577.P4246154597742926988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A269583 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269577.P4246154597742926988

/-! ## A269577.P9913928805896905246

`gcd(A000038(n), A269583(A001844(n)))`
-/

namespace A269577.P9913928805896905246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269583 (A001844 n).toNat)

end

end A269577.P9913928805896905246

/-! ## A269577.P16008304692478818056

`A014963(20*(n+1))*A269583(A001844(n))`
-/

namespace A269577.P16008304692478818056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A269583 (A001844 n).toNat

end

end A269577.P16008304692478818056

/-!
# A269578: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269578, the canonical program `A269578.P13878171620172934460` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269578 has offset 1).

The definition of A269578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269578.P1115581377962811796

`ogf((3-3x-3x^2+x^3)/(1-4x+2x^2+4x^3-x^4))`
-/

namespace A269578.P1115581377962811796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, -3, 1] [1, -4, 2, 4, -1] n

end

end A269578.P1115581377962811796

namespace A269578

/-- `ogf((3-3x-3x^2+x^3)/(1-4x+2x^2+4x^3-x^4))` -/
def P1115581377962811796.Spec : Prop :=
  ∀ n, P1115581377962811796.a n = A269578 (n + 1)

end A269578

/-! ## A269578.P13878171620172934460

`4*a(n-1)-2*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=3, a(1)=9, a(2)=27, a(3)=79`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269578

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)+a(n-4)` -/
def P13878171620172934460.Spec : Prop :=
  ∀ n, P13878171620172934460.a n = A269578 (n + 1)

theorem P13878171620172934460.correct : P13878171620172934460.Spec := by
  intro n
  simp only [A269578, Nat.add_sub_cancel]

end A269578

/-! ## A269578.P11660588662168565571

`A269583(∑[n+2])`
-/

namespace A269578.P11660588662168565571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269578.P11660588662168565571

namespace A269578

/-- `A269583(∑[n+2])` -/
def P11660588662168565571.Spec : Prop :=
  ∀ n, P11660588662168565571.a n = A269578 (n + 1)

end A269578

/-! ## A269578.P15431300226628510364

`record[A269583(A000096(A004736(n+1)))]`
-/

namespace A269578.P15431300226628510364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269578.P15431300226628510364

namespace A269578

/-- `record[A269583(A000096(A004736(n+1)))]` -/
def P15431300226628510364.Spec : Prop :=
  ∀ n, P15431300226628510364.a n = A269578 (n + 1)

end A269578

/-! ## A269578.P1082957363764907218

`record[A269583(A000096(A026233(n+1)))]`
-/

namespace A269578.P1082957363764907218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000096 (A026233 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269578.P1082957363764907218

namespace A269578

/-- `record[A269583(A000096(A026233(n+1)))]` -/
def P1082957363764907218.Spec : Prop :=
  ∀ n, P1082957363764907218.a n = A269578 (n + 1)

end A269578

/-! ## A269578.P15759889135543599955

`record[A269583(A000096(A032742(n+1)))]`
-/

namespace A269578.P15759889135543599955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269578.P15759889135543599955

namespace A269578

/-- `record[A269583(A000096(A032742(n+1)))]` -/
def P15759889135543599955.Spec : Prop :=
  ∀ n, P15759889135543599955.a n = A269578 (n + 1)

end A269578

/-!
# A269579: Number of length-n 0..4 arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269579, there is no canonical definition to state claims against.
-/

/-! ## A269579.P8742559220979963908

`A269583(∑[n+4]+3)`
-/

namespace A269579.P8742559220979963908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A269579.P8742559220979963908

/-! ## A269579.P13132013314095183999

`or(1, A269583(A055998(n+2)))`
-/

namespace A269579.P13132013314095183999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269583 (A055998 (n + 2)).toNat)

end

end A269579.P13132013314095183999

/-! ## A269579.P8832481712593631842

`or(1, A269583(A056000(n)+7))`
-/

namespace A269579.P8832481712593631842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269583 (A056000 n + 7).toNat)

end

end A269579.P8832481712593631842

/-! ## A269579.P3333387527682466139

`A269583(A055998(n+2))+A159075(n+2)`
-/

namespace A269579.P3333387527682466139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A055998 (n + 2)).toNat + A159075 (n + 2)

end

end A269579.P3333387527682466139

/-! ## A269579.P3521618646793859681

`A269583(A055998(n+2))+A016958(n)%2`
-/

namespace A269579.P3521618646793859681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A055998 (n + 2)).toNat + Int.tmod (A016958 n) 2

end

end A269579.P3521618646793859681

/-! ## A269579.P660567506155420698

`A037095(n)%2*A269583(A055998(n+2))`
-/

namespace A269579.P660567506155420698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037095 n) 2 * A269583 (A055998 (n + 2)).toNat

end

end A269579.P660567506155420698

/-! ## A269579.P12133246734371877536

`A090368(n+1)%2*A269583(A055998(n+2))`
-/

namespace A269579.P12133246734371877536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090368 (n + 1)) 2 * A269583 (A055998 (n + 2)).toNat

end

end A269579.P12133246734371877536

/-! ## A269579.P15755447950831210476

`A001222(A000923(n+1))*A269583(A055998(n+2))`
-/

namespace A269579.P15755447950831210476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000923 (n + 1)).toNat * A269583 (A055998 (n + 2)).toNat

end

end A269579.P15755447950831210476

/-! ## A269579.P3588808955201597577

`A001222(A065091(n+1))*A269583(A055998(n+2))`
-/

namespace A269579.P3588808955201597577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat * A269583 (A055998 (n + 2)).toNat

end

end A269579.P3588808955201597577

/-! ## A269579.P7298024951031860483

`A001222(A008578(n+2))*A269583(A055998(n+2))`
-/

namespace A269579.P7298024951031860483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2)).toNat * A269583 (A055998 (n + 2)).toNat

end

end A269579.P7298024951031860483

/-!
# A269580: Number of length-n 0..5 arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269580, there is no canonical definition to state claims against.
-/

/-! ## A269580.P8828608100617916582

`A269583(∑[n+5]+6)`
-/

namespace A269580.P8828608100617916582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A269580.P8828608100617916582

/-! ## A269580.P8927409524133984040

`abs(A269583(A056115(n)+11)-n)+n`
-/

namespace A269580.P8927409524133984040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269583 (A056115 n + 11).toNat - (n : ℤ)| + (n : ℤ)

end

end A269580.P8927409524133984040

/-! ## A269580.P2214273261053612533

`A269583(A056115(n)+11)+A000007(n+1)`
-/

namespace A269580.P2214273261053612533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A056115 n + 11).toNat + A000007 (n + 1)

end

end A269580.P2214273261053612533

/-! ## A269580.P2723082287013008247

`A054977(n+1)*A269583(A056115(n)+11)`
-/

namespace A269580.P2723082287013008247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A269583 (A056115 n + 11).toNat

end

end A269580.P2723082287013008247

/-! ## A269580.P9464649653211010543

`A036989(and(n, 1-n))*A269583(A056115(n)+11)`
-/

namespace A269580.P9464649653211010543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (Int.land (n : ℤ) (1 - (n : ℤ))).toNat * A269583 (A056115 n + 11).toNat

end

end A269580.P9464649653211010543

/-!
# A269581: Number of length-n 0..6 arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269581, there is no canonical definition to state claims against.
-/

/-! ## A269581.P10455725592113899504

`A269583((n+4)²-∑[n+1]+1)`
-/

namespace A269581.P10455725592113899504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A269581.P10455725592113899504

/-! ## A269581.P9830947521632721942

`or(1, A269583(A052905(n+3)))`
-/

namespace A269581.P9830947521632721942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269583 (A052905 (n + 3)).toNat)

end

end A269581.P9830947521632721942

/-! ## A269581.P10941623967886131195

`or(1, A269583(A000096(n+5)-4))`
-/

namespace A269581.P10941623967886131195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269583 (A000096 (n + 5) - 4).toNat)

end

end A269581.P10941623967886131195

/-! ## A269581.P13439119912915310129

`A269583(A052905(n+3))%A299871(n+1)`
-/

namespace A269581.P13439119912915310129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269583 (A052905 (n + 3)).toNat) (A299871 (n + 1))

end

end A269581.P13439119912915310129

/-! ## A269581.P17842683038155906631

`A269583(A000096(n+5)-4)%A224007(n+1)`
-/

namespace A269581.P17842683038155906631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269583 (A000096 (n + 5) - 4).toNat) (A224007 (n + 1))

end

end A269581.P17842683038155906631

/-!
# A269582: Number of length-n 0..7 arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269582, there is no canonical definition to state claims against.
-/

/-! ## A269582.P259216537892374825

`A269583(C(n+7, 2)+n+1)`
-/

namespace A269582.P259216537892374825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (Nat.choose (n + 7) 2 + (n + 1))

end

end A269582.P259216537892374825

/-! ## A269582.P8693553818431218779

`A269583(A055999(n+4))`
-/

namespace A269582.P8693553818431218779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A055999 (n + 4)).toNat

end

end A269582.P8693553818431218779

/-! ## A269582.P10991475486799213398

`A269583(Δ[A023551(n+2)])`
-/

namespace A269582.P10991475486799213398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (f1 (n + 1) - f1 n).toNat

end

end A269582.P10991475486799213398

/-! ## A269582.P6076022180934739359

`A269583(A027379(n+5)-3)`
-/

namespace A269582.P6076022180934739359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A027379 (n + 5) - 3).toNat

end

end A269582.P6076022180934739359

/-! ## A269582.P3536271151393726124

`A269583(A000096(n+6)-5)`
-/

namespace A269582.P3536271151393726124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000096 (n + 6) - 5).toNat

end

end A269582.P3536271151393726124

/-! ## A269582.P13007147333721637320

`A269583(A000217(n+7)-6)`
-/

namespace A269582.P13007147333721637320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000217 (n + 7) - 6).toNat

end

end A269582.P13007147333721637320

/-! ## A269582.P665908018773348343

`A269583(A000124(n+7)-7)`
-/

namespace A269582.P665908018773348343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000124 (n + 7) - 7).toNat

end

end A269582.P665908018773348343

/-! ## A269582.P15662879105786840502

`A269583(eq[7, A004736(n+1)]+1)`
-/

namespace A269582.P15662879105786840502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269582.P15662879105786840502

/-! ## A269582.P6983911821644899831

`A269583(A166136(n+4)+2*n+1)`
-/

namespace A269582.P6983911821644899831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A269582.P6983911821644899831

/-! ## A269582.P9916113014507718695

`A269583(A002061(n+10)%A167614(n+10))`
-/

namespace A269582.P9916113014507718695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (Int.tmod (A002061 (n + 10)) (A167614 (n + 10))).toNat

end

end A269582.P9916113014507718695

/-!
# A269583: T(n,k)=Number of length-n 0..k arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269583, there is no canonical definition to state claims against.
-/

/-! ## A269583.P9565015408540484996

`2*A269435(n+1)-(A269690(n+1)+A198316(A143632(n)))`
-/

namespace A269583.P9565015408540484996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269435 (n + 1) - (A269690 (n + 1) + A198316 (A143632 n).toNat)

end

end A269583.P9565015408540484996

/-! ## A269583.P16641132579892968721

`2*A269435(n+1)-(A269776(n+1)-A082859(A102480(n)))`
-/

namespace A269583.P16641132579892968721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269435 (n + 1) - (A269776 (n + 1) - A082859 (A102480 n).toNat)

end

end A269583.P16641132579892968721

/-! ## A269583.P2000910886002573470

`2*A269435(n+1)-(A269776(n+1)-A082859(A143632(n)))`
-/

namespace A269583.P2000910886002573470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269435 (n + 1) - (A269776 (n + 1) - A082859 (A143632 n).toNat)

end

end A269583.P2000910886002573470

/-! ## A269583.P18314971561266061788

`A250361(n+1)-A010893(A024462(n))`
-/

namespace A269583.P18314971561266061788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (n + 1) - A010893 ((A024462 n).toNat + 13)

end

end A269583.P18314971561266061788

/-! ## A269583.P15162344525028459061

`A337541(A282913(n))+A228740(n+1)`
-/

namespace A269583.P15162344525028459061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (A282913 n).toNat + A228740 (n + 1)

end

end A269583.P15162344525028459061

/-!
# A269584: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269584, the canonical program `A269584.P17119371903957716745` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269584 has offset 1).

The definition of A269584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269584.P17119371903957716745

`(n+2)^4-∑[2*n]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269584

/-- `(n+2)^4-∑[2*n]` -/
def P17119371903957716745.Spec : Prop :=
  ∀ n, P17119371903957716745.a n = A269584 (n + 1)

theorem P17119371903957716745.correct : P17119371903957716745.Spec := by
  intro n
  simp only [A269584, Nat.add_sub_cancel]

end A269584

/-! ## A269584.P16421419479120099286

`abs((n+2)^4-lcm(n, n+1))`
-/

namespace A269584.P16421419479120099286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 2) ^ 4 : ℤ) - (Nat.lcm n (n + 1) : ℤ)|

end

end A269584.P16421419479120099286

namespace A269584

/-- `abs((n+2)^4-lcm(n, n+1))` -/
def P16421419479120099286.Spec : Prop :=
  ∀ n, P16421419479120099286.a n = A269584 (n + 1)

end A269584

/-! ## A269584.P828315127730300164

`abs((n+2)²²-A002378(n))`
-/

namespace A269584.P828315127730300164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 2) ^ 2) ^ 2 : ℤ) - A002378 n|

end

end A269584.P828315127730300164

namespace A269584

/-- `abs((n+2)²²-A002378(n))` -/
def P828315127730300164.Spec : Prop :=
  ∀ n, P828315127730300164.a n = A269584 (n + 1)

end A269584

/-! ## A269584.P11048434770554825794

`or(A269620(n+1)+1, and(1, n))`
-/

namespace A269584.P11048434770554825794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A269620 (n + 1) + 1) (Nat.land 1 n : ℤ)

end

end A269584.P11048434770554825794

namespace A269584

/-- `or(A269620(n+1)+1, and(1, n))` -/
def P11048434770554825794.Spec : Prop :=
  ∀ n, P11048434770554825794.a n = A269584 (n + 1)

end A269584

/-! ## A269584.P4225799445366490865

`record[A269620(A286378(n))+1]`
-/

namespace A269584.P4225799445366490865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269620 (A286378 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269584.P4225799445366490865

namespace A269584

/-- `record[A269620(A286378(n))+1]` -/
def P4225799445366490865.Spec : Prop :=
  ∀ n, P4225799445366490865.a n = A269584 (n + 1)

end A269584

/-! ## A269584.P3954011733473398297

`record[A269620(A324343(n))+1]`
-/

namespace A269584.P3954011733473398297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269620 (A324343 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269584.P3954011733473398297

namespace A269584

/-- `record[A269620(A324343(n))+1]` -/
def P3954011733473398297.Spec : Prop :=
  ∀ n, P3954011733473398297.a n = A269584 (n + 1)

end A269584

/-! ## A269584.P12435360396166317564

`(A269620(n+1)+1)%A269641(n+2)`
-/

namespace A269584.P12435360396166317564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269620 (n + 1) + 1) (A269641 (n + 2))

end

end A269584.P12435360396166317564

namespace A269584

/-- `(A269620(n+1)+1)%A269641(n+2)` -/
def P12435360396166317564.Spec : Prop :=
  ∀ n, P12435360396166317564.a n = A269584 (n + 1)

end A269584

/-! ## A269584.P9954623105307127259

`(A269620(n+1)+1)^A000034(2*n)`
-/

namespace A269584.P9954623105307127259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269620 (n + 1) + 1 : ℚ) ^ (A000034 (2 * n) : ℤ)

end

end A269584.P9954623105307127259

namespace A269584

/-- `(A269620(n+1)+1)^A000034(2*n)` -/
def P9954623105307127259.Spec : Prop :=
  ∀ n, P9954623105307127259.a n = (A269584 (n + 1) : ℚ)

end A269584

/-! ## A269584.P16218882593053136087

`record[(n-comp[∑[n]])²²-2*n]`
-/

namespace A269584.P16218882593053136087
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2) ^ 2 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269584.P16218882593053136087

namespace A269584

/-- `record[(n-comp[∑[n]])²²-2*n]` -/
def P16218882593053136087.Spec : Prop :=
  ∀ n, P16218882593053136087.a n = A269584 (n + 1)

end A269584

/-! ## A269584.P47156755496386316

`A269583(A052905(n)+9)`
-/

namespace A269584.P47156755496386316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A052905 n + 9).toNat

end

end A269584.P47156755496386316

namespace A269584

/-- `A269583(A052905(n)+9)` -/
def P47156755496386316.Spec : Prop :=
  ∀ n, P47156755496386316.a n = A269584 (n + 1)

end A269584

/-!
# A269585: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269585, the canonical program `A269585.P17578161600017265471` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269585 has offset 1).

The definition of A269585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269585.P17578161600017265471

`(n+2)^5-∑[n*(9*n+5)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269585

/-- `(n+2)^5-∑[n*(9*n+5)]` -/
def P17578161600017265471.Spec : Prop :=
  ∀ n, P17578161600017265471.a n = A269585 (n + 1)

theorem P17578161600017265471.correct : P17578161600017265471.Spec := by
  intro n
  simp only [A269585, Nat.add_sub_cancel]

end A269585

/-! ## A269585.P5865989682980450887

`A269583(A167499(n+3))`
-/

namespace A269585.P5865989682980450887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A167499 (n + 3)).toNat

end

end A269585.P5865989682980450887

namespace A269585

/-- `A269583(A167499(n+3))` -/
def P5865989682980450887.Spec : Prop :=
  ∀ n, P5865989682980450887.a n = A269585 (n + 1)

end A269585

/-! ## A269585.P15627433019424799322

`A269583(A155212(n)+13)`
-/

namespace A269585.P15627433019424799322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A155212 n + 13).toNat

end

end A269585.P15627433019424799322

namespace A269585

/-- `A269583(A155212(n)+13)` -/
def P15627433019424799322.Spec : Prop :=
  ∀ n, P15627433019424799322.a n = A269585 (n + 1)

end A269585

/-! ## A269585.P13693382482108925194

`A269583(A000124(n+4)+4)`
-/

namespace A269585.P13693382482108925194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000124 (n + 4) + 4).toNat

end

end A269585.P13693382482108925194

namespace A269585

/-- `A269583(A000124(n+4)+4)` -/
def P13693382482108925194.Spec : Prop :=
  ∀ n, P13693382482108925194.a n = A269585 (n + 1)

end A269585

/-! ## A269585.P5175524927909371025

`A269583(A000217(n+4)+5)`
-/

namespace A269585.P5175524927909371025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000217 (n + 4) + 5).toNat

end

end A269585.P5175524927909371025

namespace A269585

/-- `A269583(A000217(n+4)+5)` -/
def P5175524927909371025.Spec : Prop :=
  ∀ n, P5175524927909371025.a n = A269585 (n + 1)

end A269585

/-! ## A269585.P17028477764371358371

`A269583(Δ[A224039(n+2)]-1)`
-/

namespace A269585.P17028477764371358371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (f1 (n + 1) - f1 n - 1).toNat

end

end A269585.P17028477764371358371

namespace A269585

/-- `A269583(Δ[A224039(n+2)]-1)` -/
def P17028477764371358371.Spec : Prop :=
  ∀ n, P17028477764371358371.a n = A269585 (n + 1)

end A269585

/-! ## A269585.P7007280220237125257

`A269583(Δ[A023551(n+1)]-A005843(n))`
-/

namespace A269585.P7007280220237125257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (f1 (n + 1) - f1 n - A005843 n).toNat

end

end A269585.P7007280220237125257

namespace A269585

/-- `A269583(Δ[A023551(n+1)]-A005843(n))` -/
def P7007280220237125257.Spec : Prop :=
  ∀ n, P7007280220237125257.a n = A269585 (n + 1)

end A269585

/-!
# A269586: Number of length-6 0..n arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269586, the canonical program `A269586.P907104120817929603` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269586 has offset 1).

The definition of A269586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269586.P907104120817929603

`(n+1)^6+6*(n+1)^5+9*(n+1)^4+22*(n+1)^3+15*(n+1)²+12*(n+1)-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269586

/-- `(n+1)^6+6*(n+1)^5+9*(n+1)^4+22*(n+1)^3+15*(n+1)²+12*(n+1)-1` -/
def P907104120817929603.Spec : Prop :=
  ∀ n, P907104120817929603.a n = A269586 (n + 1)

theorem P907104120817929603.correct : P907104120817929603.Spec := by
  intro n
  simp only [A269586, Nat.add_sub_cancel]

end A269586

/-! ## A269586.P10795379263773880706

`A269583(A167499(n+4)+1)`
-/

namespace A269586.P10795379263773880706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A167499 (n + 4) + 1).toNat

end

end A269586.P10795379263773880706

namespace A269586

/-- `A269583(A167499(n+4)+1)` -/
def P10795379263773880706.Spec : Prop :=
  ∀ n, P10795379263773880706.a n = A269586 (n + 1)

end A269586

/-! ## A269586.P16147895319500302483

`A269583(A167614(n+4)+3)`
-/

namespace A269586.P16147895319500302483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A167614 (n + 4) + 3).toNat

end

end A269586.P16147895319500302483

namespace A269586

/-- `A269583(A167614(n+4)+3)` -/
def P16147895319500302483.Spec : Prop :=
  ∀ n, P16147895319500302483.a n = A269586 (n + 1)

end A269586

/-! ## A269586.P3801620141698636634

`A269583(A000124(n+5)+5)`
-/

namespace A269586.P3801620141698636634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000124 (n + 5) + 5).toNat

end

end A269586.P3801620141698636634

namespace A269586

/-- `A269583(A000124(n+5)+5)` -/
def P3801620141698636634.Spec : Prop :=
  ∀ n, P3801620141698636634.a n = A269586 (n + 1)

end A269586

/-! ## A269586.P11342184452300788544

`A269583(A000217(n+5)+6)`
-/

namespace A269586.P11342184452300788544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000217 (n + 5) + 6).toNat

end

end A269586.P11342184452300788544

namespace A269586

/-- `A269583(A000217(n+5)+6)` -/
def P11342184452300788544.Spec : Prop :=
  ∀ n, P11342184452300788544.a n = A269586 (n + 1)

end A269586

/-! ## A269586.P1938505494025868474

`record[A269583(Δ[A224039(n+1)])]`
-/

namespace A269586.P1938505494025868474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269586.P1938505494025868474

namespace A269586

/-- `record[A269583(Δ[A224039(n+1)])]` -/
def P1938505494025868474.Spec : Prop :=
  ∀ n, P1938505494025868474.a n = A269586 (n + 1)

end A269586

/-!
# A269587: Number of length-7 0..n arrays with no repeated value differing from the previous repeated value by more than one.

The programs for A269587, there is no canonical definition to state claims against.
-/

/-! ## A269587.P16225910372162275948

`A269583(A167499(n+5)+2)`
-/

namespace A269587.P16225910372162275948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A167499 (n + 5) + 2).toNat

end

end A269587.P16225910372162275948

/-! ## A269587.P13911420122472369358

`A269583(A167614(n+5)+4)`
-/

namespace A269587.P13911420122472369358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A167614 (n + 5) + 4).toNat

end

end A269587.P13911420122472369358

/-! ## A269587.P15810561739194060738

`A269583(A000124(n+6)+6)`
-/

namespace A269587.P15810561739194060738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000124 (n + 6) + 6).toNat

end

end A269587.P15810561739194060738

/-! ## A269587.P4119635738668201591

`A269583(A000217(n+6)+7)`
-/

namespace A269587.P4119635738668201591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000217 (n + 6) + 7).toNat

end

end A269587.P4119635738668201591

/-! ## A269587.P13158873030137381069

`A269583(A052905(n+5)-A004273(n+2))`
-/

namespace A269587.P13158873030137381069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A052905 (n + 5) - A004273 (n + 2)).toNat

end

end A269587.P13158873030137381069

/-! ## A269587.P1424289226959142872

`A269583(A000096(n+7)-A004273(n+4))`
-/

namespace A269587.P1424289226959142872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A000096 (n + 7) - A004273 (n + 4)).toNat

end

end A269587.P1424289226959142872

/-!
# A269588: Numbers n such that n^2 ends with the digits of n reversed (A004086(n)).

The programs for A269588, there is no canonical definition to state claims against.
-/

/-! ## A269588.P5322948693922223264

`A115761(eq[A066121(n+1), A329180(n)])`
-/

namespace A269588.P5322948693922223264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115761 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A269588.P5322948693922223264

/-!
# A269589: Number of triples 0 <= i, j, k < n such that bitwise AND of i, j, k is 0.

The programs for A269589, there is no canonical definition to state claims against.
-/

/-! ## A269589.P2887492723553182774

`A337811(A318604(n+3))`
-/

namespace A269589.P2887492723553182774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337811 (A318604 (n + 3)).toNat

end

end A269589.P2887492723553182774

/-!
# A269590: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-4). These are the 4 mod 5 numbers (except for n=0).

The programs for A269590, the canonical program `A269590.P2969606302811492531` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269590 has offset 0).

The definition of A269590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269590.P2969606302811492531

`(2*A048898(n))%A000351(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269590

/-- `(2*A048898(n))%A000351(n)` -/
def P2969606302811492531.Spec : Prop :=
  ∀ n, P2969606302811492531.a n = A269590 n

theorem P2969606302811492531.correct : P2969606302811492531.Spec := by
  intro n
  simp only [A269590]

end A269590

/-! ## A269590.P2603273042680034771

`A048898(n)+A048899(n)-A268922(n)`
-/

namespace A269590.P2603273042680034771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A268922 n)

end

end A269590.P2603273042680034771

namespace A269590

/-- `A048898(n)+A048899(n)-A268922(n)` -/
def P2603273042680034771.Spec : Prop :=
  ∀ n, P2603273042680034771.a n = A269590 n

end A269590

/-! ## A269590.P4091629981606200822

`A268922(n)+A269594(n)-A269593(n)`
-/

namespace A269590.P4091629981606200822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269594 n - A269593 n)

end

end A269590.P4091629981606200822

namespace A269590

/-- `A268922(n)+A269594(n)-A269593(n)` -/
def P4091629981606200822.Spec : Prop :=
  ∀ n, P4091629981606200822.a n = A269590 n

end A269590

/-! ## A269590.P5327740749945746600

`(2*A034935(n))%A000351(n)`
-/

namespace A269590.P5327740749945746600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A034935 n) (A000351 n)

end

end A269590.P5327740749945746600

namespace A269590

/-- `(2*A034935(n))%A000351(n)` -/
def P5327740749945746600.Spec : Prop :=
  ∀ n, P5327740749945746600.a n = A269590 n

end A269590

/-! ## A269590.P1690734561203155841

`(A048898(n)+A034935(n))%A000351(n)`
-/

namespace A269590.P1690734561203155841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048898 n + A034935 n) (A000351 n)

end

end A269590.P1690734561203155841

namespace A269590

/-- `(A048898(n)+A034935(n))%A000351(n)` -/
def P1690734561203155841.Spec : Prop :=
  ∀ n, P1690734561203155841.a n = A269590 n

end A269590

/-!
# A269591: Digits of one of the two 5-adic integers sqrt(-4).

The programs for A269591, there is no canonical definition to state claims against.
-/

/-! ## A269591.P13404924065609996524

`A000007(n)+4-A269592(n)`
-/

namespace A269591.P13404924065609996524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A269592 n)

end

end A269591.P13404924065609996524

/-! ## A269591.P1708179192532960790

`5-(A269592(n)+A131373(a(n-1)))` with `a(0)=1`
-/

namespace A269591.P1708179192532960790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - (A269592 n + A131373 (a (n - 1)).toNat)

end

end A269591.P1708179192532960790

/-! ## A269591.P5639072330704480451

`5-(A269592(n)+A119338(a(n-1)+1))` with `a(0)=1`
-/

namespace A269591.P5639072330704480451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - (A269592 n + A119338 (a (n - 1) + 1).toNat)

end

end A269591.P5639072330704480451

/-! ## A269591.P10203180198541306587

`A210850(n)+A210851(n)-A269592(n)`
-/

namespace A269591.P10203180198541306587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n + (A210851 n - A269592 n)

end

end A269591.P10203180198541306587

/-! ## A269591.P2601083087743676561

`A269592(A034407(a(n-1)+1))-A269592(n)` with `a(0)=1`
-/

namespace A269591.P2601083087743676561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269592 (A034407 (a (n - 1) + 1).toNat).toNat - A269592 n

end

end A269591.P2601083087743676561

/-! ## A269591.P8914007058548249409

`(A268922(n+1)-A268922(n))/A000351(n)`
-/

namespace A269591.P8914007058548249409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268922 (n + 1) - A268922 n : ℚ) / (A000351 n : ℚ)

end

end A269591.P8914007058548249409

/-! ## A269591.P17623761119831136492

`A324025(n)+A324026(n)-A269592(n)`
-/

namespace A269591.P17623761119831136492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324025 n + (A324026 n - A269592 n)

end

end A269591.P17623761119831136492

/-! ## A269591.P1819689885351170605

`A324029(n)+A324030(n)-A269592(n)`
-/

namespace A269591.P1819689885351170605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324029 n + (A324030 n - A269592 n)

end

end A269591.P1819689885351170605

/-!
# A269592: Digits of one of the two 5-adic integers sqrt(-4). Here the ones related to A269590.

The programs for A269592, there is no canonical definition to state claims against.
-/

/-! ## A269592.P1006260204757280272

`A000007(n)+4-A269591(n)`
-/

namespace A269592.P1006260204757280272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A269591 n)

end

end A269592.P1006260204757280272

/-! ## A269592.P14918609941656010428

`5-(A269591(n)+A057427(n))`
-/

namespace A269592.P14918609941656010428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A269591 n + A057427 n)

end

end A269592.P14918609941656010428

/-! ## A269592.P17003929591456131404

`a(A000038(n))-A269591(n)` with `a(0)=4`
-/

namespace A269592.P17003929591456131404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (A000038 n).toNat - A269591 n

end

end A269592.P17003929591456131404

/-! ## A269592.P10140748079732999269

`A210850(n)+A210851(n)-A269591(n)`
-/

namespace A269592.P10140748079732999269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n + (A210851 n - A269591 n)

end

end A269592.P10140748079732999269

/-! ## A269592.P17044358640646738794

`A325489(n)+A325492(n)-A269591(n)`
-/

namespace A269592.P17044358640646738794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325489 n + (A325492 n - A269591 n)

end

end A269592.P17044358640646738794

/-! ## A269592.P594636195560181242

`A290797(A286839(n)+A286838(n))-A269591(n)`
-/

namespace A269592.P594636195560181242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290797 (A286839 n + A286838 n).toNat - A269591 n

end

end A269592.P594636195560181242

/-! ## A269592.P1554697730399133380

`A210850(2*n)-(A269591(n)-A210851(2*n))`
-/

namespace A269592.P1554697730399133380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (2 * n) - (A269591 n - A210851 (2 * n))

end

end A269592.P1554697730399133380

/-! ## A269592.P3323545783396418448

`(A269590(n+1)-A269590(n))/A000351(n)`
-/

namespace A269592.P3323545783396418448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269590 (n + 1) - A269590 n : ℚ) / (A000351 n : ℚ)

end

end A269592.P3323545783396418448

/-! ## A269592.P14935478260857801060

`A324025(n)+A324026(n)-A269591(n)`
-/

namespace A269592.P14935478260857801060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324025 n + (A324026 n - A269591 n)

end

end A269592.P14935478260857801060

/-! ## A269592.P147645856310114778

`A324029(n)+A324030(n)-A269591(n)`
-/

namespace A269592.P147645856310114778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324029 n + (A324030 n - A269591 n)

end

end A269592.P147645856310114778

/-!
# A269593: a(n) = (A268922(n)^2 + 4)/5^n, n >= 0.

The programs for A269593, the canonical program `A269593.P15396111525171696352` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269593 has offset 0).

The definition of A269593 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268922, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269593.P15396111525171696352

`(A268922(n)²+4)/5^n`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A269593

/-- `(A268922(n)²+4)/5^n` -/
def P15396111525171696352.Spec : Prop :=
  ∀ n, P15396111525171696352.a n = (A269593 n : ℚ)

end A269593

/-! ## A269593.P1003856820643445038

`A268922(n)+A269594(n)-A269590(n)`
-/

namespace A269593.P1003856820643445038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269594 n - A269590 n)

end

end A269593.P1003856820643445038

namespace A269593

/-- `A268922(n)+A269594(n)-A269590(n)` -/
def P1003856820643445038.Spec : Prop :=
  ∀ n, P1003856820643445038.a n = A269593 n

end A269593

/-!
# A269594: a(n) = (A269590(n)^2 + 4)/5^n, n >= 0.

The programs for A269594, the canonical program `A269594.P601689813181141290` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269594 has offset 0).

The definition of A269594 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269594.P601689813181141290

`(A269590(n)²+4)/5^n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269594

/-- `(A269590(n)²+4)/5^n` -/
def P601689813181141290.Spec : Prop :=
  ∀ n, P601689813181141290.a n = (A269594 n : ℚ)

end A269594

/-! ## A269594.P5267663878084822970

`A269590(n)+A269593(n)-A268922(n)`
-/

namespace A269594.P5267663878084822970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269590 n + (A269593 n - A268922 n)

end

end A269594.P5267663878084822970

namespace A269594

/-- `A269590(n)+A269593(n)-A268922(n)` -/
def P5267663878084822970.Spec : Prop :=
  ∀ n, P5267663878084822970.a n = A269594 n

end A269594

/-!
# A269595: Irregular triangle in which n-th row the gives quadratic residues prime(n)- m modulo prime(n), for m from {1, 2, ..., prime(n)-1}, in increasing order.

The programs for A269595, there is no canonical definition to state claims against.
-/

/-! ## A269595.P10713081052079100637

`A037125(lt[0, A268921(n+1)])`
-/

namespace A269595.P10713081052079100637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A269595.P10713081052079100637

/-! ## A269595.P1165730085313397109

`A037125(eq[1, A268921(n+1)])`
-/

namespace A269595.P1165730085313397109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269595.P1165730085313397109

/-! ## A269595.P1084294316734233420

`A037125(record[n^A268921(n+1)])`
-/

namespace A269595.P1084294316734233420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A268921 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A269595.P1084294316734233420

/-!
# A269596: Irregular triangle giving in row n the smaller of the two roots x1 of x^2 + b modulo prime(n) from {0, 1, ..., prime(n)-1} corresponding to b from row n of A269595.

The programs for A269596, there is no canonical definition to state claims against.
-/

/-! ## A269596.P4298002414531310163

`A193073(A301400(n+1)+A124400(n))`
-/

namespace A269596.P4298002414531310163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (A301400 (n + 1) + A124400 n).toNat

end

end A269596.P4298002414531310163

/-! ## A269596.P12765569766409119100

`A294442(lt[A055615(n+1), A079562(n+1)])`
-/

namespace A269596.P12765569766409119100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269596.P12765569766409119100

/-! ## A269596.P17419116283853270658

`A001222(or(A099738(n+1), A099759(3*n+2)))`
-/

namespace A269596.P17419116283853270658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A099738 (n + 1)) (A099759 (3 * n + 2))).toNat

end

end A269596.P17419116283853270658

/-! ## A269596.P4861886178523847331

`A002260(lt[A222290(3*(n+1)), A115896(n+4)]+1)`
-/

namespace A269596.P4861886178523847331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115896 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A269596.P4861886178523847331

/-! ## A269596.P16518474788484410167

`A123400(A261031(n))`
-/

namespace A269596.P16518474788484410167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123400 (A261031 n).toNat

end

end A269596.P16518474788484410167

/-!
# A269598: Irregular triangle giving T(n, k) = -(2*A269596(n, k))^(prime(n)-2) modulo prime(n) for n >= 2.

The programs for A269598, there is no canonical definition to state claims against.
-/

/-! ## A269598.P4315851455282319067

`A269596(n+2)+A269597(n+2)-A269599(n+2)`
-/

namespace A269598.P4315851455282319067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269596 (n + 2) + (A269597 (n + 2) - A269599 (n + 2))

end

end A269598.P4315851455282319067

/-!
# A269599: Irregular triangle giving T(n, k) = -(2*A269597(n, k))^(prime(n) -2) modulo prime(n) for n >= 2.

The programs for A269599, there is no canonical definition to state claims against.
-/

/-! ## A269599.P5597287709920476611

`A269596(n+2)+A269597(n+2)-A269598(n+2)`
-/

namespace A269599.P5597287709920476611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269596 (n + 2) + (A269597 (n + 2) - A269598 (n + 2))

end

end A269599.P5597287709920476611

