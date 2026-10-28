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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
# A335800: a(n) is the number of regions formed by n-secting the angles of a decagon.

The programs for A335800, there is no canonical definition to state claims against.
-/

/-! ## A335800.P15620335810176127138

`A335802(n+1)+1-A335801(n+1)`
-/

namespace A335800.P15620335810176127138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335802 (n + 1) + (1 - A335801 (n + 1))

end

end A335800.P15620335810176127138

/-! ## A335800.P3051305261202843491

`A335802(n+1)+A024000(A335801(n+1))`
-/

namespace A335800.P3051305261202843491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335802 (n + 1) + A024000 (A335801 (n + 1)).toNat

end

end A335800.P3051305261202843491

/-!
# A335801: a(n) is the number of vertices formed by n-secting the angles of a decagon.

The programs for A335801, there is no canonical definition to state claims against.
-/

/-! ## A335801.P9806250087191271208

`A335802(n+1)+1-A335800(n+1)`
-/

namespace A335801.P9806250087191271208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335802 (n + 1) + (1 - A335800 (n + 1))

end

end A335801.P9806250087191271208

/-! ## A335801.P9510304701418357097

`A335802(n+1)+A024000(A335800(n+1))`
-/

namespace A335801.P9510304701418357097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335802 (n + 1) + A024000 (A335800 (n + 1)).toNat

end

end A335801.P9510304701418357097

/-! ## A335801.P8246916503891636335

`A020725(A335802(n+1)-A335800(n+1))`
-/

namespace A335801.P8246916503891636335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335802 (n + 1) - A335800 (n + 1)).toNat

end

end A335801.P8246916503891636335

/-! ## A335801.P5980207295208953115

`A065475(A335802(n+1)-A335800(n+1))`
-/

namespace A335801.P5980207295208953115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335802 (n + 1) - A335800 (n + 1)).toNat

end

end A335801.P5980207295208953115

/-!
# A335802: a(n) is the number of edges formed by n-secting the angles of a decagon.

The programs for A335802, there is no canonical definition to state claims against.
-/

/-! ## A335802.P10156045859837633178

`A335800(n+1)+A335801(n+1)-1`
-/

namespace A335802.P10156045859837633178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335800 (n + 1) + (A335801 (n + 1) - 1)

end

end A335802.P10156045859837633178

/-! ## A335802.P5812341914199224689

`A335800(n+1)+A023443(A335801(n+1))`
-/

namespace A335802.P5812341914199224689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335800 (n + 1) + A023443 (A335801 (n + 1)).toNat

end

end A335802.P5812341914199224689

/-! ## A335802.P5335598164546872838

`A185048(A335801(n+1)+A335800(n+1))`
-/

namespace A335802.P5335598164546872838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A335801 (n + 1) + A335800 (n + 1)).toNat

end

end A335802.P5335598164546872838

/-! ## A335802.P8002116478410188472

`A004442(A335801(n+1)+A335800(n+1))`
-/

namespace A335802.P8002116478410188472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A335801 (n + 1) + A335800 (n + 1)).toNat

end

end A335802.P8002116478410188472

/-! ## A335802.P10422563550623692711

`A029578(A335801(n+1)+A335800(n+1))`
-/

namespace A335802.P10422563550623692711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A335801 (n + 1) + A335800 (n + 1)).toNat

end

end A335802.P10422563550623692711

/-!
# A335803: Irregular table read by rows: n-sect the angles of a decagon. Then T(n,k) = number of k-sided polygons in that figure for k >= 3.

The programs for A335803, there is no canonical definition to state claims against.
-/

/-! ## A335803.P15224916131577203492

`A178888(2*(n+2))%A270339(A275175(n))`
-/

namespace A335803.P15224916131577203492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178888 (2 * (n + 2))) (A270339 (A275175 n).toNat)

end

end A335803.P15224916131577203492

/-!
# A335804: Number of n X n matrices over GF(2) with minimal polynomial x^n - 1.

The programs for A335804, there is no canonical definition to state claims against.
-/

/-! ## A335804.P6428963502001012964

`A002884(n+1)/A003473(n+1)`
-/

namespace A335804.P6428963502001012964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / (A003473 (n + 1) : ℚ)

end

end A335804.P6428963502001012964

/-! ## A335804.P12544194540504671065

`A002884(n+1)/((n+1)*A027362(n+1))`
-/

namespace A335804.P12544194540504671065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / ((n + 1 : ℤ) * A027362 (n + 1) : ℚ)

end

end A335804.P12544194540504671065

/-! ## A335804.P1596425019104987941

`A002884(n+1)/(2^(n+1)-A086324(n+1))`
-/

namespace A335804.P1596425019104987941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / ((2 ^ (n + 1) : ℤ) - A086324 (n + 1) : ℚ)

end

end A335804.P1596425019104987941

/-! ## A335804.P10233592897052673046

`A002884(n+1)/record[A330694(n+1)]`
-/

namespace A335804.P10233592897052673046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A335804.P10233592897052673046

/-!
# A335806: The number of n-step self avoiding walks on a 3D cubic lattice confined inside a box of size 2x2x2 where the walk starts at the middle of the box's edge.

The programs for A335806, there is no canonical definition to state claims against.
-/

/-! ## A335806.P1182460930584291995

`A336862(A152947(n+1))%A281070(n)`
-/

namespace A335806.P1182460930584291995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336862 (A152947 (n + 1)).toNat) (A281070 n)

end

end A335806.P1182460930584291995

/-! ## A335806.P8050995911730735307

`record[∏{e}[ceil(2^(n-1)), A336862(#)]]`
-/

namespace A335806.P8050995911730735307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A336862 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335806.P8050995911730735307

/-!
# A335807: Number of vertices in the n-th simplex graph of the complete graph on three vertices (K_3).

The programs for A335807, the canonical program `A335807.P8197446035308308129` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335807 has offset 0).

The definition of A335807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335807.P13174119880245264159

`ogf((3-4x+x^2-x^3)/(1-4x+4x^2-x^3))`
-/

namespace A335807.P13174119880245264159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 1, -1] [1, -4, 4, -1] n

end

end A335807.P13174119880245264159

namespace A335807

/-- `ogf((3-4x+x^2-x^3)/(1-4x+4x^2-x^3))` -/
def P13174119880245264159.Spec : Prop :=
  ∀ n, P13174119880245264159.a n = A335807 n

end A335807

/-! ## A335807.P8197446035308308129

`3*a(n-1)-a(n-2)-1` with `a(0)=3, a(1)=8, a(2)=21`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335807

/-- `3*a(n-1)-a(n-2)-1` -/
def P8197446035308308129.Spec : Prop :=
  ∀ n, P8197446035308308129.a n = A335807 n

theorem P8197446035308308129.correct : P8197446035308308129.Spec := by
  intro n
  simp only [A335807]

end A335807

/-! ## A335807.P8906872439772691659

`∑[ogf((3-4x+x^2-x^3)/(1-3x+x^2))]`
-/

namespace A335807.P8906872439772691659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 1, -1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335807.P8906872439772691659

namespace A335807

/-- `∑[ogf((3-4x+x^2-x^3)/(1-3x+x^2))]` -/
def P8906872439772691659.Spec : Prop :=
  ∀ n, P8906872439772691659.a n = A335807 n

end A335807

/-! ## A335807.P8158245596745507369

`A055267(n)+ceil(acot(n))`
-/

namespace A335807.P8158245596745507369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n + ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A335807.P8158245596745507369

namespace A335807

/-- `A055267(n)+ceil(acot(n))` -/
def P8158245596745507369.Spec : Prop :=
  ∀ n, P8158245596745507369.a n = A335807 n

end A335807

/-! ## A335807.P7183898793373987552

`A054492(n)+A052925(n)`
-/

namespace A335807.P7183898793373987552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054492 n + A052925 n

end

end A335807.P7183898793373987552

namespace A335807

/-- `A054492(n)+A052925(n)` -/
def P7183898793373987552.Spec : Prop :=
  ∀ n, P7183898793373987552.a n = A335807 n

end A335807

/-! ## A335807.P15289842857882992583

`A055267(n)+A054977(n)`
-/

namespace A335807.P15289842857882992583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n + A054977 n

end

end A335807.P15289842857882992583

namespace A335807

/-- `A055267(n)+A054977(n)` -/
def P15289842857882992583.Spec : Prop :=
  ∀ n, P15289842857882992583.a n = A335807 n

end A335807

/-! ## A335807.P13054160384261086360

`A099857(n)+A032908(n)`
-/

namespace A335807.P13054160384261086360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n + A032908 n

end

end A335807.P13054160384261086360

namespace A335807

/-- `A099857(n)+A032908(n)` -/
def P13054160384261086360.Spec : Prop :=
  ∀ n, P13054160384261086360.a n = A335807 n

end A335807

/-! ## A335807.P18270463734824201948

`A188378(n)+A097134(n)`
-/

namespace A335807.P18270463734824201948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 n + A097134 n

end

end A335807.P18270463734824201948

namespace A335807

/-- `A188378(n)+A097134(n)` -/
def P18270463734824201948.Spec : Prop :=
  ∀ n, P18270463734824201948.a n = A335807 n

end A335807

/-! ## A335807.P2759904834199051119

`A246640(n)+A054888(n)`
-/

namespace A335807.P2759904834199051119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 n + A054888 n

end

end A335807.P2759904834199051119

namespace A335807

/-- `A246640(n)+A054888(n)` -/
def P2759904834199051119.Spec : Prop :=
  ∀ n, P2759904834199051119.a n = A335807 n

end A335807

/-! ## A335807.P5804153210207475455

`A055267(n)+A000038(n)!`
-/

namespace A335807.P5804153210207475455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n + (Nat.factorial (A000038 n).toNat : ℤ)

end

end A335807.P5804153210207475455

namespace A335807

/-- `A055267(n)+A000038(n)!` -/
def P5804153210207475455.Spec : Prop :=
  ∀ n, P5804153210207475455.a n = A335807 n

end A335807

/-! ## A335807.P10183363303225481293

`A000007(n)+A055267(n)+1`
-/

namespace A335807.P10183363303225481293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A055267 n + 1)

end

end A335807.P10183363303225481293

namespace A335807

/-- `A000007(n)+A055267(n)+1` -/
def P10183363303225481293.Spec : Prop :=
  ∀ n, P10183363303225481293.a n = A335807 n

end A335807

/-! ## A335807.P10263579878814871688

`A002878(n)+A097134(n)+1`
-/

namespace A335807.P10263579878814871688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + (A097134 n + 1)

end

end A335807.P10263579878814871688

namespace A335807

/-- `A002878(n)+A097134(n)+1` -/
def P10263579878814871688.Spec : Prop :=
  ∀ n, P10263579878814871688.a n = A335807 n

end A335807

/-! ## A335807.P14249663953038009571

`A088305(n+2)-A293064(n)`
-/

namespace A335807.P14249663953038009571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 2) - A293064 n

end

end A335807.P14249663953038009571

namespace A335807

/-- `A088305(n+2)-A293064(n)` -/
def P14249663953038009571.Spec : Prop :=
  ∀ n, P14249663953038009571.a n = A335807 n

end A335807

/-! ## A335807.P11825804425931307638

`A054977(n)+A022096(2*n)`
-/

namespace A335807.P11825804425931307638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A022096 (2 * n)

end

end A335807.P11825804425931307638

namespace A335807

/-- `A054977(n)+A022096(2*n)` -/
def P11825804425931307638.Spec : Prop :=
  ∀ n, P11825804425931307638.a n = A335807 n

end A335807

/-! ## A335807.P18207653628755256639

`A097134(n)+A097132(2*n+1)`
-/

namespace A335807.P18207653628755256639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097134 n + A097132 (2 * n + 1)

end

end A335807.P18207653628755256639

namespace A335807

/-- `A097134(n)+A097132(2*n+1)` -/
def P18207653628755256639.Spec : Prop :=
  ∀ n, P18207653628755256639.a n = A335807 n

end A335807

/-! ## A335807.P17253400608653321125

`A022096(2*n)+A057428(n)+2`
-/

namespace A335807.P17253400608653321125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 (2 * n) + (A057428 n + 2)

end

end A335807.P17253400608653321125

namespace A335807

/-- `A022096(2*n)+A057428(n)+2` -/
def P17253400608653321125.Spec : Prop :=
  ∀ n, P17253400608653321125.a n = A335807 n

end A335807

/-! ## A335807.P15154263027581355293

`A055267(n)+A014963(4*n+2)`
-/

namespace A335807.P15154263027581355293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n + A014963 (4 * n + 2)

end

end A335807.P15154263027581355293

namespace A335807

/-- `A055267(n)+A014963(4*n+2)` -/
def P15154263027581355293.Spec : Prop :=
  ∀ n, P15154263027581355293.a n = A335807 n

end A335807

/-! ## A335807.P14263089578193075691

`A075180(2*n)+A022096(2*n)`
-/

namespace A335807.P14263089578193075691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (2 * n) + A022096 (2 * n)

end

end A335807.P14263089578193075691

namespace A335807

/-- `A075180(2*n)+A022096(2*n)` -/
def P14263089578193075691.Spec : Prop :=
  ∀ n, P14263089578193075691.a n = A335807 n

end A335807

/-! ## A335807.P10446450728290890045

`A097135(2*n)+A097132(2*n+1)`
-/

namespace A335807.P10446450728290890045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (2 * n) + A097132 (2 * n + 1)

end

end A335807.P10446450728290890045

namespace A335807

/-- `A097135(2*n)+A097132(2*n+1)` -/
def P10446450728290890045.Spec : Prop :=
  ∀ n, P10446450728290890045.a n = A335807 n

end A335807

/-! ## A335807.P17160599005921492617

`A000032(2*n+1)+A097135(2*n)+1`
-/

namespace A335807.P17160599005921492617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) + (A097135 (2 * n) + 1)

end

end A335807.P17160599005921492617

namespace A335807

/-- `A000032(2*n+1)+A097135(2*n)+1` -/
def P17160599005921492617.Spec : Prop :=
  ∀ n, P17160599005921492617.a n = A335807 n

end A335807

/-!
# A335811: E.g.f.: exp(x) * Product_{k>=1} (1 + (1 - exp(x))^k).

The programs for A335811, there is no canonical definition to state claims against.
-/

/-! ## A335811.P8726667756042510124

`A323232(n)-A008585((5^n-(-2)^n)/7)`
-/

namespace A335811.P8726667756042510124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323232 n - A008585 (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (-2) ^ n : ℚ) / 7)).toNat

end

end A335811.P8726667756042510124

/-! ## A335811.P12308609238948993180

`1-A174726(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A335811.P12308609238948993180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A174726 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A335811.P12308609238948993180

/-!
# A335813: Expansion of e.g.f. Product_{k>=1} (1 + (1 - exp(x))^k).

The programs for A335813, there is no canonical definition to state claims against.
-/

/-! ## A335813.P4202382311432976384

`A326787(A000051(n))-A050946(n)`
-/

namespace A335813.P4202382311432976384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (A000051 n).toNat - A050946 n

end

end A335813.P4202382311432976384

/-! ## A335813.P13929401993141399604

`A327601(n)-A022998(A089677(n))`
-/

namespace A335813.P13929401993141399604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327601 n - A022998 (A089677 n).toNat

end

end A335813.P13929401993141399604

/-!
# A335816: Squares visited by a chess king moving on a square-spiral numbered board where the king moves to the adjacent unvisited square containing the spiral number with the fewest divisors. In case of a tie it chooses the square with the lowest spiral number.

The programs for A335816, there is no canonical definition to state claims against.
-/

/-! ## A335816.P4083168370227409629

`or(A178798(n²)², A335856(n+1))`
-/

namespace A335816.P4083168370227409629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178798 (n ^ 2) ^ 2) (A335856 (n + 1))

end

end A335816.P4083168370227409629

/-! ## A335816.P9300758746268060113

`A335856(n+1)+A185284(A000124(n))`
-/

namespace A335816.P9300758746268060113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335856 (n + 1) + A185284 (A000124 n).toNat

end

end A335816.P9300758746268060113

/-! ## A335816.P2703556950284242921

`A335856(n+1)+A178798(A166444(n))`
-/

namespace A335816.P2703556950284242921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335856 (n + 1) + A178798 (A166444 n).toNat

end

end A335816.P2703556950284242921

/-! ## A335816.P13382956544435202722

`A335856(n+1)+A102681(A276534(n))`
-/

namespace A335816.P13382956544435202722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335856 (n + 1) + A102681 (A276534 n).toNat

end

end A335816.P13382956544435202722

/-! ## A335816.P5921476666037066138

`A335856(n+1)+A107846(A335807(n))`
-/

namespace A335816.P5921476666037066138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335856 (n + 1) + A107846 (A335807 n).toNat

end

end A335816.P5921476666037066138

/-!
# A335819: E.g.f.: exp((3/2) * x * (2 + x)).

The programs for A335819, the canonical program `A335819.P1555121267123990896` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335819 has offset 0).

The definition of A335819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335819.P1555121267123990896

`3*(a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335819

/-- `3*(a(n-1)+(n-1)*a(n-2))` -/
def P1555121267123990896.Spec : Prop :=
  ∀ n, P1555121267123990896.a n = A335819 n

theorem P1555121267123990896.correct : P1555121267123990896.Spec := by
  intro n
  simp only [A335819]

end A335819

/-! ## A335819.P7605524247505672193

`∑{#}[n, C(n, #)*A202830(#)]`
-/

namespace A335819.P7605524247505672193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A202830 k

end

end A335819.P7605524247505672193

namespace A335819

/-- `∑{#}[n, C(n, #)*A202830(#)]` -/
def P7605524247505672193.Spec : Prop :=
  ∀ n, P7605524247505672193.a n = A335819 n

end A335819

/-! ## A335819.P2327882759680499777

`∑{#}[n, C(n, #)*A000085(#)*A000898(n-#)]`
-/

namespace A335819.P2327882759680499777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000085 k * A000898 (n - k)

end

end A335819.P2327882759680499777

namespace A335819

/-- `∑{#}[n, C(n, #)*A000085(#)*A000898(n-#)]` -/
def P2327882759680499777.Spec : Prop :=
  ∀ n, P2327882759680499777.a n = A335819 n

end A335819

/-! ## A335819.P16023314546445617672

`3*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A335819.P16023314546445617672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A335819.P16023314546445617672

namespace A335819

/-- `3*(a(n-1)-(a(n-2)-n*a(n-2)))` -/
def P16023314546445617672.Spec : Prop :=
  ∀ n, P16023314546445617672.a n = A335819 n

end A335819

/-!
# A335821: Triangular array T(n, k) = n^2 - k^2, read by rows.

The programs for A335821, the canonical program `A335821.P109563387027522563` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335821 has offset 0).

The definition of A335821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)²-col(n)²` (program `A335821.P109563387027522563`, by `A335821.P109563387027522563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335821.P109563387027522563

`row(n)²-col(n)²`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335821

/-- `row(n)²-col(n)²` -/
def P109563387027522563.Spec : Prop :=
  ∀ n, P109563387027522563.a n = A335821 n

theorem P109563387027522563.correct : P109563387027522563.Spec := by
  intro n
  simp only [A335821]

end A335821

/-! ## A335821.P3719371284496651077

`row(n)^2-col(n)^2`
-/

namespace A335821.P3719371284496651077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ 2 : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ)

end

end A335821.P3719371284496651077

namespace A335821

/-- `row(n)^2-col(n)^2` -/
def P3719371284496651077.Spec : Prop :=
  ∀ n, P3719371284496651077.a n = A335821 n

theorem P3719371284496651077.correct : P3719371284496651077.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P3719371284496651077.a, A335821.P109563387027522563.a, SequenceMachineLib.memo_apply]

end A335821

/-! ## A335821.P18082894562842563543

`(row(n)+col(n))*(row(n)-col(n))`
-/

namespace A335821.P18082894562842563543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A335821.P18082894562842563543

namespace A335821

/-- `(row(n)+col(n))*(row(n)-col(n))` -/
def P18082894562842563543.Spec : Prop :=
  ∀ n, P18082894562842563543.a n = A335821 n

theorem P18082894562842563543.correct : P18082894562842563543.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P18082894562842563543.a, A335821.P109563387027522563.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A335821

/-! ## A335821.P7622737242616201629

`2*(n+1)-A092283(n+1)`
-/

namespace A335821.P7622737242616201629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A092283 (n + 1)

end

end A335821.P7622737242616201629

namespace A335821

/-- `2*(n+1)-A092283(n+1)` -/
def P7622737242616201629.Spec : Prop :=
  ∀ n, P7622737242616201629.a n = A335821 n

end A335821

/-! ## A335821.P2161425178081094469

`∑[2-char[∑[n]]]-A002260(n+1)²`
-/

namespace A335821.P2161425178081094469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002260 (n + 1) ^ 2

end

end A335821.P2161425178081094469

namespace A335821

/-- `∑[2-char[∑[n]]]-A002260(n+1)²` -/
def P2161425178081094469.Spec : Prop :=
  ∀ n, P2161425178081094469.a n = A335821 n

end A335821

/-! ## A335821.P7209640452609854312

`(C(comp[∑[n]]-n, 2)-(n+1))*A051162(n)`
-/

namespace A335821.P7209640452609854312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A051162 n

end

end A335821.P7209640452609854312

namespace A335821

/-- `(C(comp[∑[n]]-n, 2)-(n+1))*A051162(n)` -/
def P7209640452609854312.Spec : Prop :=
  ∀ n, P7209640452609854312.a n = A335821 n

end A335821

/-! ## A335821.P7919468454186594850

`A091435(n)+A004247(n)`
-/

namespace A335821.P7919468454186594850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + A004247 n

end

end A335821.P7919468454186594850

namespace A335821

/-- `A091435(n)+A004247(n)` -/
def P7919468454186594850.Spec : Prop :=
  ∀ n, P7919468454186594850.a n = A335821 n

theorem P7919468454186594850.correct : P7919468454186594850.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P7919468454186594850.a, A335821.P109563387027522563.a, A004247, A004247.P2751605162508615148.a, A091435, A091435.P4633070448187892032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335821

/-! ## A335821.P9010745725014898145

`A281385(n)-A079904(n)`
-/

namespace A335821.P9010745725014898145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n - A079904 n

end

end A335821.P9010745725014898145

namespace A335821

/-- `A281385(n)-A079904(n)` -/
def P9010745725014898145.Spec : Prop :=
  ∀ n, P9010745725014898145.a n = A335821 n

theorem P9010745725014898145.correct : P9010745725014898145.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P9010745725014898145.a, A335821.P109563387027522563.a, A079904, A079904.P681072687927778273.a, A281385, A281385.P1365053129118161988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335821

/-! ## A335821.P16524436544323167699

`A025581(n)*A051162(n)`
-/

namespace A335821.P16524436544323167699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A051162 n

end

end A335821.P16524436544323167699

namespace A335821

/-- `A025581(n)*A051162(n)` -/
def P16524436544323167699.Spec : Prop :=
  ∀ n, P16524436544323167699.a n = A335821 n

theorem P16524436544323167699.correct : P16524436544323167699.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P16524436544323167699.a, A335821.P109563387027522563.a, A025581, A025581.P16112744757063613497.a, A051162, A051162.P4484969187050632534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335821

/-! ## A335821.P14470004353508846814

`A025581(n)*A134478(n)`
-/

namespace A335821.P14470004353508846814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A134478 n

end

end A335821.P14470004353508846814

namespace A335821

/-- `A025581(n)*A134478(n)` -/
def P14470004353508846814.Spec : Prop :=
  ∀ n, P14470004353508846814.a n = A335821 n

end A335821

/-! ## A335821.P1436025417307855528

`A003056(n)²-A143844(n)`
-/

namespace A335821.P1436025417307855528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A143844 n

end

end A335821.P1436025417307855528

namespace A335821

/-- `A003056(n)²-A143844(n)` -/
def P1436025417307855528.Spec : Prop :=
  ∀ n, P1436025417307855528.a n = A335821 n

end A335821

/-! ## A335821.P5698222635996318514

`A094728(n+1)-A131507(n)`
-/

namespace A335821.P5698222635996318514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A131507 n

end

end A335821.P5698222635996318514

namespace A335821

/-- `A094728(n+1)-A131507(n)` -/
def P5698222635996318514.Spec : Prop :=
  ∀ n, P5698222635996318514.a n = A335821 n

end A335821

/-! ## A335821.P15840394374555342247

`2*A049780(n)-A025581(n)`
-/

namespace A335821.P15840394374555342247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049780 n - A025581 n

end

end A335821.P15840394374555342247

namespace A335821

/-- `2*A049780(n)-A025581(n)` -/
def P15840394374555342247.Spec : Prop :=
  ∀ n, P15840394374555342247.a n = A335821 n

theorem P15840394374555342247.correct : P15840394374555342247.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P15840394374555342247.a, A335821.P109563387027522563.a, A025581, A025581.P16112744757063613497.a, A049780, A049780.P1451714115053196753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A335821

/-! ## A335821.P10122426886889696135

`A003056(n)²-A002262(n)²`
-/

namespace A335821.P10122426886889696135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A002262 n ^ 2

end

end A335821.P10122426886889696135

namespace A335821

/-- `A003056(n)²-A002262(n)²` -/
def P10122426886889696135.Spec : Prop :=
  ∀ n, P10122426886889696135.a n = A335821 n

end A335821

/-! ## A335821.P321384023812797534

`A025581(n)²+2*A004247(n)`
-/

namespace A335821.P321384023812797534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2 + 2 * A004247 n

end

end A335821.P321384023812797534

namespace A335821

/-- `A025581(n)²+2*A004247(n)` -/
def P321384023812797534.Spec : Prop :=
  ∀ n, P321384023812797534.a n = A335821 n

theorem P321384023812797534.correct : P321384023812797534.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P321384023812797534.a, A335821.P109563387027522563.a, A004247, A004247.P2751605162508615148.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335821

/-! ## A335821.P5286983634661392687

`A069011(n)-2*A002262(n)²`
-/

namespace A335821.P5286983634661392687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n - 2 * A002262 n ^ 2

end

end A335821.P5286983634661392687

namespace A335821

/-- `A069011(n)-2*A002262(n)²` -/
def P5286983634661392687.Spec : Prop :=
  ∀ n, P5286983634661392687.a n = A335821 n

theorem P5286983634661392687.correct : P5286983634661392687.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P5286983634661392687.a, A335821.P109563387027522563.a, A002262, A002262.P17823619022233514403.a, A069011, A069011.P12730965949212328677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335821

/-! ## A335821.P4589901389746185669

`2*A003056(n)²-A069011(n)`
-/

namespace A335821.P4589901389746185669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003056 n ^ 2 - A069011 n

end

end A335821.P4589901389746185669

namespace A335821

/-- `2*A003056(n)²-A069011(n)` -/
def P4589901389746185669.Spec : Prop :=
  ∀ n, P4589901389746185669.a n = A335821 n

end A335821

/-! ## A335821.P6922568077024517001

`2*A091435(n)-A025581(n)²`
-/

namespace A335821.P6922568077024517001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091435 n - A025581 n ^ 2

end

end A335821.P6922568077024517001

namespace A335821

/-- `2*A091435(n)-A025581(n)²` -/
def P6922568077024517001.Spec : Prop :=
  ∀ n, P6922568077024517001.a n = A335821 n

theorem P6922568077024517001.correct : P6922568077024517001.Spec := by
  intro n
  simp only [A335821, Nat.add_sub_cancel, A335821.P6922568077024517001.a, A335821.P109563387027522563.a, A025581, A025581.P16112744757063613497.a, A091435, A091435.P4633070448187892032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335821

/-! ## A335821.P12124661620138117719

`2*A049780(n)-log2(A130321(n))`
-/

namespace A335821.P12124661620138117719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A049780 n : ℝ) - Real.logb 2 (A130321 n : ℝ)

end

end A335821.P12124661620138117719

namespace A335821

/-- `2*A049780(n)-log2(A130321(n))` -/
def P12124661620138117719.Spec : Prop :=
  ∀ n, P12124661620138117719.a n = (A335821 n : ℝ)

end A335821

/-! ## A335821.P5694721319776937161

`A003056(n)²-log2(A059268(n))²`
-/

namespace A335821.P5694721319776937161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003056 n ^ 2 : ℝ) - Real.logb 2 (A059268 n : ℝ) ^ 2

end

end A335821.P5694721319776937161

namespace A335821

/-- `A003056(n)²-log2(A059268(n))²` -/
def P5694721319776937161.Spec : Prop :=
  ∀ n, P5694721319776937161.a n = (A335821 n : ℝ)

end A335821

/-!
# A335822: Given the two curves y = (1 + exp(x))/2 and y = (1 + exp(x))/(1 + exp(x/2)), draw a line tangent to both. This sequence is the decimal expansion of the y-coordinate of the point at which the line touches y = (1 + exp(x))/2.

The programs for A335822, there is no canonical definition to state claims against.
-/

/-! ## A335822.P6172726452228376574

`9-A336029(n)`
-/

namespace A335822.P6172726452228376574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A336029 n

end

end A335822.P6172726452228376574

/-!
# A335823: Triangle read by rows: A080779 with rows reversed.

The programs for A335823, there is no canonical definition to state claims against.
-/

/-! ## A335823.P4778814079417874643

`A080779(∑[2*n]%comp[∑[n]])`
-/

namespace A335823.P4778814079417874643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080779 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A335823.P4778814079417874643

/-! ## A335823.P12766159170620280856

`A080779(∑[char[∑[n]]]²-(n+1))`
-/

namespace A335823.P12766159170620280856
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080779 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A335823.P12766159170620280856

/-! ## A335823.P4650435875925788503

`xor(n, xor(n, A080779(A061579(n))))`
-/

namespace A335823.P4650435875925788503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A080779 (A061579 n).toNat))

end

end A335823.P4650435875925788503

/-! ## A335823.P10100963185281741521

`A080779(A061579(n))*A288120(n)`
-/

namespace A335823.P10100963185281741521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080779 (A061579 n).toNat * A288120 n

end

end A335823.P10100963185281741521

/-! ## A335823.P9804029409770350407

`A080779(A061579(n))^A178334(n)`
-/

namespace A335823.P9804029409770350407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080779 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A335823.P9804029409770350407

/-! ## A335823.P7907916356845125422

`A080779(A061579(n))%A022380(n)`
-/

namespace A335823.P7907916356845125422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080779 (A061579 n).toNat) (A022380 n)

end

end A335823.P7907916356845125422

/-! ## A335823.P12792851352742059175

`or(A000007(n), A080779(A061579(n)))`
-/

namespace A335823.P12792851352742059175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A080779 (A061579 n).toNat)

end

end A335823.P12792851352742059175

/-! ## A335823.P15141432273586055844

`A080779(A061579(n))/A007318(∑[n])`
-/

namespace A335823.P15141432273586055844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080779 (A061579 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A335823.P15141432273586055844

/-! ## A335823.P15295106930439206768

`A048999(n)/A140756(A061579(n)+1)`
-/

namespace A335823.P15295106930439206768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048999 n : ℚ) / (A140756 (A061579 n + 1).toNat : ℚ)

end

end A335823.P15295106930439206768

/-! ## A335823.P8719867562667078856

`or(A000045(C(2, n)), A080779(A061579(n)))`
-/

namespace A335823.P8719867562667078856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 (Nat.choose 2 n)) (A080779 (A061579 n).toNat)

end

end A335823.P8719867562667078856

/-!
# A335825: Given the two curves y = (1 + exp(x))/2 and y = (1 + exp(x))/(1 + exp(x/2)), draw a line tangent to both. This sequence is the decimal expansion of the y-coordinate of the point at which the line touches y = (1 + exp(x))/(1 + exp(x/2)).

The programs for A335825, there is no canonical definition to state claims against.
-/

/-! ## A335825.P13559735663752871906

`A336011(abs(1-n))`
-/

namespace A335825.P13559735663752871906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336011 |1 - (n : ℤ)|.toNat

end

end A335825.P13559735663752871906

/-! ## A335825.P12000158199190117014

`dr(A336011(abs(A023443(n))))`
-/

namespace A335825.P12000158199190117014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A336011 |A023443 n|.toNat)

end

end A335825.P12000158199190117014

/-! ## A335825.P5078635599227682389

`dr(A336011(log2(A011782(n))))`
-/

namespace A335825.P5078635599227682389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A336011 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat)

end

end A335825.P5078635599227682389

/-! ## A335825.P6542409139639105570

`A336011(abs(A023443(n)))^A178334(n)`
-/

namespace A335825.P6542409139639105570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336011 |A023443 n|.toNat : ℚ) ^ (A178334 n : ℤ)

end

end A335825.P6542409139639105570

/-! ## A335825.P2614840293039964476

`dr(A336011(A023443(A000007(n)+n)))`
-/

namespace A335825.P2614840293039964476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A336011 (A023443 (A000007 n + (n : ℤ)).toNat).toNat)

end

end A335825.P2614840293039964476

/-! ## A335825.P590140107737303721

`A336011(abs(A023443(n)))+A000007(n+1)`
-/

namespace A335825.P590140107737303721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336011 |A023443 n|.toNat + A000007 (n + 1)

end

end A335825.P590140107737303721

/-! ## A335825.P13112587009868712999

`A336011(abs(A023443(n)))+A010051((n+1)²)`
-/

namespace A335825.P13112587009868712999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336011 |A023443 n|.toNat + A010051 ((n + 1) ^ 2)

end

end A335825.P13112587009868712999

/-! ## A335825.P17391592542970582980

`A014963(6*(n+1))*A336011(abs(A023443(n)))`
-/

namespace A335825.P17391592542970582980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A336011 |A023443 n|.toNat

end

end A335825.P17391592542970582980

/-! ## A335825.P10238368978236374647

`A336011(abs(A023443(n)))+A008683(4*(2*n+1))`
-/

namespace A335825.P10238368978236374647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336011 |A023443 n|.toNat + A008683 (4 * (2 * n + 1))

end

end A335825.P10238368978236374647

/-!
# A335827: Number of permutations of {1,2,...,n} having equal numbers of 1-cycles and 2-cycles.

The programs for A335827, there is no canonical definition to state claims against.
-/

/-! ## A335827.P3899284389831163799

`xor(A004396(n), A054495(A065163(n+1)))`
-/

namespace A335827.P3899284389831163799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004396 n) (A054495 (A065163 (n + 1)).toNat)

end

end A335827.P3899284389831163799

/-!
# A335828: Numerators of coefficients in a power series expansion of the distance between two bodies falling freely towards each other along a straight line under the influence of their mutual gravitational attraction.

The programs for A335828, there is no canonical definition to state claims against.
-/

/-! ## A335828.P11604554157905278360

`A000265(A120419(n))`
-/

namespace A335828.P11604554157905278360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A120419 n).toNat

end

end A335828.P11604554157905278360

/-!
# A335829: Denominators of coefficients in a power series expansion of the distance between two bodies falling freely towards each other along a straight line under the influence of their mutual gravitational attraction.

The programs for A335829, there is no canonical definition to state claims against.
-/

/-! ## A335829.P12584547847621142703

`A000027(A104350(2*(n+1)))*A096443(n)`
-/

namespace A335829.P12584547847621142703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A104350 (2 * (n + 1))).toNat * A096443 n

end

end A335829.P12584547847621142703

/-!
# A335832: Numbers k with record values of the ratio d(k)/id(k) between the number of divisors and the number of infinitary divisors.

The programs for A335832, there is no canonical definition to state claims against.
-/

/-! ## A335832.P8348847399644115851

`A001616(∏[∑{d}[n+1, val(#, 2)+1]])²`
-/

namespace A335832.P8348847399644115851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (SequenceMachineLib.valuation d 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A335832.P8348847399644115851

/-! ## A335832.P726202602399269768

`filter[A330687(n+1), A355823(#)]`
-/

namespace A335832.P726202602399269768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A335832.P726202602399269768

/-! ## A335832.P7197077055497969983

`filter[A330687(n+1), A355825(#)]`
-/

namespace A335832.P7197077055497969983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A335832.P7197077055497969983

/-! ## A335832.P17580150233994971962

`record[A079065(A294897(n+1)²)]`
-/

namespace A335832.P17580150233994971962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (A294897 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335832.P17580150233994971962

/-!
# A335833: Triangle read by rows. T(n,k) is the number of full binary trees with n leaves and with k internal nodes whose left and right children have the same number of leaf descendants, where n > 0 and 0 <= k < n.

The programs for A335833, there is no canonical definition to state claims against.
-/

/-! ## A335833.P13379795079819310586

`and(A096636(n), A360985(n+1))`
-/

namespace A335833.P13379795079819310586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096636 n) (A360985 (n + 1))

end

end A335833.P13379795079819310586

/-! ## A335833.P14182941970108052323

`and(A113860(n), A360985(n+1))`
-/

namespace A335833.P14182941970108052323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113860 n) (A360985 (n + 1))

end

end A335833.P14182941970108052323

/-! ## A335833.P12566558797742443773

`A360985(n+1)%A360993(n+1)`
-/

namespace A335833.P12566558797742443773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360985 (n + 1)) (A360993 (n + 1))

end

end A335833.P12566558797742443773

/-! ## A335833.P5619423522565579715

`A133884(A016802(n))*A360985(n+1)`
-/

namespace A335833.P5619423522565579715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133884 (A016802 n).toNat * A360985 (n + 1)

end

end A335833.P5619423522565579715

/-! ## A335833.P6143192617765050701

`A360985(n+1)%A062938(A177888(n))`
-/

namespace A335833.P6143192617765050701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360985 (n + 1)) (A062938 (A177888 n).toNat)

end

end A335833.P6143192617765050701

/-!
# A335834: Sort the run lengths in binary expansion of n in ascending order (with multiplicities).

The programs for A335834, there is no canonical definition to state claims against.
-/

/-! ## A335834.P13260140289563964829

`A056539(A335835(n))`
-/

namespace A335834.P13260140289563964829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A335835 n).toNat

end

end A335834.P13260140289563964829

/-! ## A335834.P17244672904927139811

`A329303(A361479(n))`
-/

namespace A335834.P17244672904927139811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (A361479 n).toNat

end

end A335834.P17244672904927139811

/-! ## A335834.P7683978922869026015

`A056539(A361480(n)%A029889(n))`
-/

namespace A335834.P7683978922869026015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.tmod (A361480 n) (A029889 n)).toNat

end

end A335834.P7683978922869026015

/-! ## A335834.P6304361387365013756

`A056539(A361480(n))%A068744(n)`
-/

namespace A335834.P6304361387365013756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056539 (A361480 n).toNat) (A068744 n)

end

end A335834.P6304361387365013756

/-! ## A335834.P1763097314949337762

`A056539(A300756(∑[n+2]-1)*A361480(n))`
-/

namespace A335834.P1763097314949337762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A300756 (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A361480 n).toNat

end

end A335834.P1763097314949337762

/-!
# A335835: Sort the run lengths in binary expansion of n in descending order (with multiplicities).

The programs for A335835, there is no canonical definition to state claims against.
-/

/-! ## A335835.P6434429799437612050

`A056539(A335834(n))`
-/

namespace A335835.P6434429799437612050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A335834 n).toNat

end

end A335835.P6434429799437612050

/-! ## A335835.P11546911658819921182

`A329303(A361480(n))`
-/

namespace A335835.P11546911658819921182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (A361480 n).toNat

end

end A335835.P11546911658819921182

/-! ## A335835.P14776805807074193593

`A330091(A361480(n))%A342839(2*(n+1))`
-/

namespace A335835.P14776805807074193593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330091 (A361480 n).toNat) (A342839 (2 * (n + 1)))

end

end A335835.P14776805807074193593

/-! ## A335835.P3388204366330011840

`A361480(n)%A029889(n)`
-/

namespace A335835.P3388204366330011840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361480 n) (A029889 n)

end

end A335835.P3388204366330011840

/-! ## A335835.P110524488956321351

`A361480(val(A068744(n), 2)+n)`
-/

namespace A335835.P110524488956321351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361480 (SequenceMachineLib.valuation (A068744 n).toNat 2 + n)

end

end A335835.P110524488956321351

/-!
# A335836: a(1) = 1; for n>1, a(n) = floor(a(n-1)^(1/3)) if that number is not already in the sequence, otherwise a(n) = 2*a(n-1).

The programs for A335836, there is no canonical definition to state claims against.
-/

/-! ## A335836.P2681938736639360465

`(2*a(n-1))%A006530(A253507(n+1))` with `a(0)=1`
-/

namespace A335836.P2681938736639360465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * a (n - 1)) (A006530 (A253507 (n + 1)).toNat)

end

end A335836.P2681938736639360465

/-! ## A335836.P3924322710678423028

`A009195(A117302(n+2))`
-/

namespace A335836.P3924322710678423028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A117302 (n + 2)).toNat

end

end A335836.P3924322710678423028

/-! ## A335836.P10053033104159701874

`A003557(2*A140134(n))`
-/

namespace A335836.P10053033104159701874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 * A140134 n).toNat

end

end A335836.P10053033104159701874

/-! ## A335836.P12091449549701546794

`gcd(A052380(A003945(n)), A140134(n))`
-/

namespace A335836.P12091449549701546794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052380 (A003945 n).toNat) (A140134 n)

end

end A335836.P12091449549701546794

/-! ## A335836.P12785527304538299894

`(2*a(n-1))%p?[A157177(n)]` with `a(0)=1`
-/

namespace A335836.P12785527304538299894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157177 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * a (n - 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A335836.P12785527304538299894

/-!
# A335837: Number of normal patterns matched by integer partitions of n.

The programs for A335837, there is no canonical definition to state claims against.
-/

/-! ## A335837.P1438113220985622201

`∑[A122350(A002513(n))]`
-/

namespace A335837.P1438113220985622201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A002513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335837.P1438113220985622201

/-! ## A335837.P9695888383632307717

`∑[A122350(A335604(n))]`
-/

namespace A335837.P9695888383632307717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A335604 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335837.P9695888383632307717

/-! ## A335837.P16657787605670476919

`Δ[A182616(n)%A038386(n+1)]`
-/

namespace A335837.P16657787605670476919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182616 n) (A038386 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335837.P16657787605670476919

/-! ## A335837.P17688588588820766851

`Δ[A182616(n)]%A049499(n+1)`
-/

namespace A335837.P17688588588820766851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A049499 (n + 1))

end

end A335837.P17688588588820766851

/-! ## A335837.P9850126755064246160

`Δ[A086543(∑{e}[A000079(2*n), #])]`
-/

namespace A335837.P9850126755064246160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335837.P9850126755064246160

/-!
# A335838: Number of normal patterns contiguously matched by integer partitions of n.

The programs for A335838, there is no canonical definition to state claims against.
-/

/-! ## A335838.P9440494683325155841

`xor(A326033(A325865(n)), A335837(n))`
-/

namespace A335838.P9440494683325155841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A326033 (A325865 n).toNat) (A335837 n)

end

end A335838.P9440494683325155841

/-! ## A335838.P4603071245826645596

`or(A278690(n), A316345(A297618(n+1)))`
-/

namespace A335838.P4603071245826645596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278690 n) (A316345 (A297618 (n + 1)).toNat)

end

end A335838.P4603071245826645596

/-! ## A335838.P12122889967551272472

`or(A078588(A000129(n+2)), A278690(n))`
-/

namespace A335838.P12122889967551272472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078588 (A000129 (n + 2)).toNat) (A278690 n)

end

end A335838.P12122889967551272472

/-! ## A335838.P16334034837223190096

`A261104(A103925(2*n))`
-/

namespace A335838.P16334034837223190096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A103925 (2 * n)).toNat

end

end A335838.P16334034837223190096

/-! ## A335838.P13092629652753123051

`A141106(A003293(n))+A003849(n)`
-/

namespace A335838.P13092629652753123051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141106 (A003293 n).toNat + A003849 n

end

end A335838.P13092629652753123051

/-!
# A335840: Expansion of x*(1+2*x)/((1-2*x)*(1-x+4*x^2)).

The programs for A335840, the canonical program `A335840.P12780590160204133524` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335840 has offset 1).

The definition of A335840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-3x+6x^2-8x^3))` (program `A335840.P12780590160204133524`, by `A335840.P12780590160204133524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335840.P12780590160204133524

`ogf((1+2x)/(1-3x+6x^2-8x^3))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335840

/-- `ogf((1+2x)/(1-3x+6x^2-8x^3))` -/
def P12780590160204133524.Spec : Prop :=
  ∀ n, P12780590160204133524.a n = A335840 (n + 1)

theorem P12780590160204133524.correct : P12780590160204133524.Spec := by
  intro n
  simp only [A335840, Nat.add_sub_cancel]

end A335840

/-! ## A335840.P728088373872217045

`3*a(n-1)-6*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=9`
-/

namespace A335840.P728088373872217045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9] fun n a =>
  3 * a (n - 1) - 6 * a (n - 2) + 8 * a (n - 3)

end

end A335840.P728088373872217045

namespace A335840

/-- `3*a(n-1)-6*a(n-2)+8*a(n-3)` -/
def P728088373872217045.Spec : Prop :=
  ∀ n, P728088373872217045.a n = A335840 (n + 1)

end A335840

/-! ## A335840.P11351108626467883288

`A112259(n+1)/A112260(n+1)²`
-/

namespace A335840.P11351108626467883288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112259 (n + 1) : ℚ) / (A112260 (n + 1) ^ 2 : ℚ)

end

end A335840.P11351108626467883288

namespace A335840

/-- `A112259(n+1)/A112260(n+1)²` -/
def P11351108626467883288.Spec : Prop :=
  ∀ n, P11351108626467883288.a n = (A335840 (n + 1) : ℚ)

end A335840

/-! ## A335840.P17422491036583028248

`2^(n+1)-A112260(n+1)`
-/

namespace A335840.P17422491036583028248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A112260 (n + 1)

end

end A335840.P17422491036583028248

namespace A335840

/-- `2^(n+1)-A112260(n+1)` -/
def P17422491036583028248.Spec : Prop :=
  ∀ n, P17422491036583028248.a n = A335840 (n + 1)

end A335840

/-! ## A335840.P12438545751764305070

`A126646(n)+1-A112260(n+1)`
-/

namespace A335840.P12438545751764305070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A112260 (n + 1))

end

end A335840.P12438545751764305070

namespace A335840

/-- `A126646(n)+1-A112260(n+1)` -/
def P12438545751764305070.Spec : Prop :=
  ∀ n, P12438545751764305070.a n = A335840 (n + 1)

end A335840

/-! ## A335840.P4254722583775075690

`A112260(n+1)+A112260(n+1)-A272931(n+1)`
-/

namespace A335840.P4254722583775075690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112260 (n + 1) + (A112260 (n + 1) - A272931 (n + 1))

end

end A335840.P4254722583775075690

namespace A335840

/-- `A112260(n+1)+A112260(n+1)-A272931(n+1)` -/
def P4254722583775075690.Spec : Prop :=
  ∀ n, P4254722583775075690.a n = A335840 (n + 1)

end A335840

/-! ## A335840.P14073344787230385473

`A272931(n+1)+A112261(n+2)`
-/

namespace A335840.P14073344787230385473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272931 (n + 1) + A112261 (n + 2)

end

end A335840.P14073344787230385473

namespace A335840

/-- `A272931(n+1)+A112261(n+2)` -/
def P14073344787230385473.Spec : Prop :=
  ∀ n, P14073344787230385473.a n = A335840 (n + 1)

end A335840

/-! ## A335840.P1714225075999163173

`gcd(A112261(n+1)², A112259(n+1))`
-/

namespace A335840.P1714225075999163173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112261 (n + 1) ^ 2) (A112259 (n + 1))

end

end A335840.P1714225075999163173

namespace A335840

/-- `gcd(A112261(n+1)², A112259(n+1))` -/
def P1714225075999163173.Spec : Prop :=
  ∀ n, (P1714225075999163173.a n : ℤ) = A335840 (n + 1)

end A335840

/-!
# A335841: Number of distinct rectangles that can be made with one even and one odd side length that are divisors of 2n.

The programs for A335841, the canonical program `A335841.P748440759745352998` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335841 has offset 1).

The definition of A335841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335841.P748440759745352998

`A000005(n+1)*(A000005(2*(n+1))-A000005(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A335841

/-- `A000005(n+1)*(A000005(2*(n+1))-A000005(n+1))` -/
def P748440759745352998.Spec : Prop :=
  ∀ n, P748440759745352998.a n = A335841 (n + 1)

theorem P748440759745352998.correct : P748440759745352998.Spec := by
  intro n
  simp only [A335841, Nat.add_sub_cancel]

end A335841

/-! ## A335841.P5826896804979119893

`∑{d}[n+1, A275367(#)]`
-/

namespace A335841.P5826896804979119893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A275367 d

end

end A335841.P5826896804979119893

namespace A335841

/-- `∑{d}[n+1, A275367(#)]` -/
def P5826896804979119893.Spec : Prop :=
  ∀ n, P5826896804979119893.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P2143481300174696659

`Δ[A006218(n)]*∑{d}[n+1, #%2]`
-/

namespace A335841.P2143481300174696659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ)

end

end A335841.P2143481300174696659

namespace A335841

/-- `Δ[A006218(n)]*∑{d}[n+1, #%2]` -/
def P2143481300174696659.Spec : Prop :=
  ∀ n, P2143481300174696659.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P18401465620771914465

`(val(n+1, 2)+1)*A001227(n+1)²`
-/

namespace A335841.P18401465620771914465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A001227 (n + 1) ^ 2

end

end A335841.P18401465620771914465

namespace A335841

/-- `(val(n+1, 2)+1)*A001227(n+1)²` -/
def P18401465620771914465.Spec : Prop :=
  ∀ n, P18401465620771914465.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P6460506983357567115

`A000005(n+1)²/(val(n+1, 2)+1)`
-/

namespace A335841.P6460506983357567115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2 : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A335841.P6460506983357567115

namespace A335841

/-- `A000005(n+1)²/(val(n+1, 2)+1)` -/
def P6460506983357567115.Spec : Prop :=
  ∀ n, P6460506983357567115.a n = (A335841 (n + 1) : ℚ)

end A335841

/-! ## A335841.P2667795109056909768

`Δ[A006218(n)]*A001227(n+1)`
-/

namespace A335841.P2667795109056909768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001227 (n + 1)

end

end A335841.P2667795109056909768

namespace A335841

/-- `Δ[A006218(n)]*A001227(n+1)` -/
def P2667795109056909768.Spec : Prop :=
  ∀ n, P2667795109056909768.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P13612333370589994711

`A000005(n+1)*A001227(n+1)`
-/

namespace A335841.P13612333370589994711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001227 (n + 1)

end

end A335841.P13612333370589994711

namespace A335841

/-- `A000005(n+1)*A001227(n+1)` -/
def P13612333370589994711.Spec : Prop :=
  ∀ n, P13612333370589994711.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P10231774803521595710

`A035116(n+1)/A001511(n+1)`
-/

namespace A335841.P10231774803521595710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035116 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A335841.P10231774803521595710

namespace A335841

/-- `A035116(n+1)/A001511(n+1)` -/
def P10231774803521595710.Spec : Prop :=
  ∀ n, P10231774803521595710.a n = (A335841 (n + 1) : ℚ)

end A335841

/-! ## A335841.P13188426556374805962

`A000005(n+1)²/Δ[A005187(n)]`
-/

namespace A335841.P13188426556374805962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A335841.P13188426556374805962

namespace A335841

/-- `A000005(n+1)²/Δ[A005187(n)]` -/
def P13188426556374805962.Spec : Prop :=
  ∀ n, P13188426556374805962.a n = (A335841 (n + 1) : ℚ)

end A335841

/-! ## A335841.P1401697950351731147

`A001227(n+1)²*A001511(n+1)`
-/

namespace A335841.P1401697950351731147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) ^ 2 * A001511 (n + 1)

end

end A335841.P1401697950351731147

namespace A335841

/-- `A001227(n+1)²*A001511(n+1)` -/
def P1401697950351731147.Spec : Prop :=
  ∀ n, P1401697950351731147.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P3378643160628926903

`A000005(n+1)²/A001511(n+1)`
-/

namespace A335841.P3378643160628926903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2 : ℚ) / (A001511 (n + 1) : ℚ)

end

end A335841.P3378643160628926903

namespace A335841

/-- `A000005(n+1)²/A001511(n+1)` -/
def P3378643160628926903.Spec : Prop :=
  ∀ n, P3378643160628926903.a n = (A335841 (n + 1) : ℚ)

end A335841

/-! ## A335841.P7728970281093948516

`A000005(n+1)²/(A085058(n)-1)`
-/

namespace A335841.P7728970281093948516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2 : ℚ) / (A085058 n - 1 : ℚ)

end

end A335841.P7728970281093948516

namespace A335841

/-- `A000005(n+1)²/(A085058(n)-1)` -/
def P7728970281093948516.Spec : Prop :=
  ∀ n, P7728970281093948516.a n = (A335841 (n + 1) : ℚ)

end A335841

/-! ## A335841.P7752337995305791452

`∑[A341062(n+1)]*A001227(n+1)`
-/

namespace A335841.P7752337995305791452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001227 (n + 1)

end

end A335841.P7752337995305791452

namespace A335841

/-- `∑[A341062(n+1)]*A001227(n+1)` -/
def P7752337995305791452.Spec : Prop :=
  ∀ n, P7752337995305791452.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P11539911980638487153

`(Δ[A248517(n)]+1)*A000005(n+1)`
-/

namespace A335841.P11539911980638487153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A000005 (n + 1)

end

end A335841.P11539911980638487153

namespace A335841

/-- `(Δ[A248517(n)]+1)*A000005(n+1)` -/
def P11539911980638487153.Spec : Prop :=
  ∀ n, P11539911980638487153.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P16193633398323306255

`A001227(n+1)*A320111(2*(n+1))`
-/

namespace A335841.P16193633398323306255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A320111 (2 * (n + 1))

end

end A335841.P16193633398323306255

namespace A335841

/-- `A001227(n+1)*A320111(2*(n+1))` -/
def P16193633398323306255.Spec : Prop :=
  ∀ n, P16193633398323306255.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P8468266458006535327

`A000005(n+1)/2*A054844(n+1)`
-/

namespace A335841.P8468266458006535327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 * (A054844 (n + 1) : ℚ)

end

end A335841.P8468266458006535327

namespace A335841

/-- `A000005(n+1)/2*A054844(n+1)` -/
def P8468266458006535327.Spec : Prop :=
  ∀ n, P8468266458006535327.a n = (A335841 (n + 1) : ℚ)

end A335841

/-! ## A335841.P5480748144188911587

`A001227(n+1)/2*A062011(n+1)`
-/

namespace A335841.P5480748144188911587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) / 2 * (A062011 (n + 1) : ℚ)

end

end A335841.P5480748144188911587

namespace A335841

/-- `A001227(n+1)/2*A062011(n+1)` -/
def P5480748144188911587.Spec : Prop :=
  ∀ n, P5480748144188911587.a n = (A335841 (n + 1) : ℚ)

end A335841

/-! ## A335841.P14850190469105971230

`A000005(n+1)²/(A007814(n+1)+1)`
-/

namespace A335841.P14850190469105971230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2 : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A335841.P14850190469105971230

namespace A335841

/-- `A000005(n+1)²/(A007814(n+1)+1)` -/
def P14850190469105971230.Spec : Prop :=
  ∀ n, P14850190469105971230.a n = (A335841 (n + 1) : ℚ)

end A335841

/-! ## A335841.P17949911673651923357

`∑{d}[n+1, A001227(#)*A068068((n+1)/#)]`
-/

namespace A335841.P17949911673651923357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A068068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335841.P17949911673651923357

namespace A335841

/-- `∑{d}[n+1, A001227(#)*A068068((n+1)/#)]` -/
def P17949911673651923357.Spec : Prop :=
  ∀ n, P17949911673651923357.a n = A335841 (n + 1)

end A335841

/-! ## A335841.P17747920674467292204

`∑{d}[n+1, A048691(#)*A309873((n+1)/#)]`
-/

namespace A335841.P17747920674467292204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335841.P17747920674467292204

namespace A335841

/-- `∑{d}[n+1, A048691(#)*A309873((n+1)/#)]` -/
def P17747920674467292204.Spec : Prop :=
  ∀ n, P17747920674467292204.a n = A335841 (n + 1)

end A335841

/-!
# A335843: a(n) is the number of n-digit positive integers with exactly two distinct base 10 digits.

The programs for A335843, the canonical program `A335843.P12113007981978311321` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335843 has offset 1).

The definition of A335843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335843.P4397213872738446624

`81*(2^n-1)`
-/

namespace A335843.P4397213872738446624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * ((2 ^ n : ℤ) - 1)

end

end A335843.P4397213872738446624

namespace A335843

/-- `81*(2^n-1)` -/
def P4397213872738446624.Spec : Prop :=
  ∀ n, P4397213872738446624.a n = A335843 (n + 1)

theorem P4397213872738446624.correct : P4397213872738446624.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A335843, Nat.add_sub_cancel, A335843.P4397213872738446624.a, A335843.P12113007981978311321.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A335843, Nat.add_sub_cancel, A335843.P4397213872738446624.a, A335843.P12113007981978311321.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A335843

/-! ## A335843.P10549425438212201169

`ogf(81x/(1-3x+2x^2))`
-/

namespace A335843.P10549425438212201169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 81] [1, -3, 2] n

end

end A335843.P10549425438212201169

namespace A335843

/-- `ogf(81x/(1-3x+2x^2))` -/
def P10549425438212201169.Spec : Prop :=
  ∀ n, P10549425438212201169.a n = A335843 (n + 1)

end A335843

/-! ## A335843.P12113007981978311321

`3*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=81`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335843

/-- `3*a(n-1)-2*a(n-2)` -/
def P12113007981978311321.Spec : Prop :=
  ∀ n, P12113007981978311321.a n = A335843 (n + 1)

theorem P12113007981978311321.correct : P12113007981978311321.Spec := by
  intro n
  simp only [A335843, Nat.add_sub_cancel]

end A335843

/-! ## A335843.P12129335953095024622

`2*a(n-1)+81` with `a(0)=0`
-/

namespace A335843.P12129335953095024622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + 81

end

end A335843.P12129335953095024622

namespace A335843

/-- `2*a(n-1)+81` -/
def P12129335953095024622.Spec : Prop :=
  ∀ n, (P12129335953095024622.a n : ℤ) = A335843 (n + 1)

end A335843

/-! ## A335843.P5921007443817194039

`∑[2*a(n-1)]` with `a(0)=0, a(1)=81`
-/

namespace A335843.P5921007443817194039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 81] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335843.P5921007443817194039

namespace A335843

/-- `∑[2*a(n-1)]` -/
def P5921007443817194039.Spec : Prop :=
  ∀ n, (P5921007443817194039.a n : ℤ) = A335843 (n + 1)

end A335843

/-! ## A335843.P15074861791524326515

`83-2*(1-a(n-1))` with `a(0)=0`
-/

namespace A335843.P15074861791524326515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  83 - 2 * (1 - a (n - 1))

end

end A335843.P15074861791524326515

namespace A335843

/-- `83-2*(1-a(n-1))` -/
def P15074861791524326515.Spec : Prop :=
  ∀ n, P15074861791524326515.a n = A335843 (n + 1)

end A335843

/-! ## A335843.P2051711191637592524

`a(n-1)+a(n-1)+81` with `a(0)=0`
-/

namespace A335843.P2051711191637592524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + 81)

end

end A335843.P2051711191637592524

namespace A335843

/-- `a(n-1)+a(n-1)+81` -/
def P2051711191637592524.Spec : Prop :=
  ∀ n, (P2051711191637592524.a n : ℤ) = A335843 (n + 1)

end A335843

/-! ## A335843.P17751528533588842775

`∑[81*A131577(n)]`
-/

namespace A335843.P17751528533588842775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335843.P17751528533588842775

namespace A335843

/-- `∑[81*A131577(n)]` -/
def P17751528533588842775.Spec : Prop :=
  ∀ n, P17751528533588842775.a n = A335843 (n + 1)

end A335843

/-! ## A335843.P1650084991970207504

`A000225(n)+5*A175164(n)`
-/

namespace A335843.P1650084991970207504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + 5 * A175164 n

end

end A335843.P1650084991970207504

namespace A335843

/-- `A000225(n)+5*A175164(n)` -/
def P1650084991970207504.Spec : Prop :=
  ∀ n, P1650084991970207504.a n = A335843 (n + 1)

theorem P1650084991970207504.correct : P1650084991970207504.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A335843, Nat.add_sub_cancel, A335843.P1650084991970207504.a, A335843.P12113007981978311321.a, A000225, A000225.P6535533121115206393.a, A175164, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A335843, Nat.add_sub_cancel, A335843.P1650084991970207504.a, A335843.P12113007981978311321.a, A000225, A000225.P6535533121115206393.a, A175164, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A335843

/-! ## A335843.P16015029268254583977

`A000225(n)+A175166(n)+A175164(n)`
-/

namespace A335843.P16015029268254583977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A175166 n + A175164 n)

end

end A335843.P16015029268254583977

namespace A335843

/-- `A000225(n)+A175166(n)+A175164(n)` -/
def P16015029268254583977.Spec : Prop :=
  ∀ n, P16015029268254583977.a n = A335843 (n + 1)

theorem P16015029268254583977.correct : P16015029268254583977.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A335843, Nat.add_sub_cancel, A335843.P16015029268254583977.a, A335843.P12113007981978311321.a, A000225, A000225.P6535533121115206393.a, A175164, A175164.P8473928831672684715.a, A175166, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A335843, Nat.add_sub_cancel, A335843.P16015029268254583977.a, A335843.P12113007981978311321.a, A000225, A000225.P6535533121115206393.a, A175164, A175164.P8473928831672684715.a, A175166, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A335843

/-! ## A335843.P3833860355290142532

`A337127(A017293(n))`
-/

namespace A335843.P3833860355290142532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A017293 n).toNat

end

end A335843.P3833860355290142532

namespace A335843

/-- `A337127(A017293(n))` -/
def P3833860355290142532.Spec : Prop :=
  ∀ n, P3833860355290142532.a n = A335843 (n + 1)

end A335843

/-! ## A335843.P15487280268792094262

`A337127(A008592(n)+2)`
-/

namespace A335843.P15487280268792094262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A008592 n + 2).toNat

end

end A335843.P15487280268792094262

namespace A335843

/-- `A337127(A008592(n)+2)` -/
def P15487280268792094262.Spec : Prop :=
  ∀ n, P15487280268792094262.a n = A335843 (n + 1)

end A335843

/-! ## A335843.P9880894787970404360

`A337127(A017305(n)-1)`
-/

namespace A335843.P9880894787970404360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A017305 n - 1).toNat

end

end A335843.P9880894787970404360

namespace A335843

/-- `A337127(A017305(n)-1)` -/
def P9880894787970404360.Spec : Prop :=
  ∀ n, P9880894787970404360.a n = A335843 (n + 1)

end A335843

/-! ## A335843.P6432858092093796980

`A337127(A017317(n)-2)`
-/

namespace A335843.P6432858092093796980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A017317 n - 2).toNat

end

end A335843.P6432858092093796980

namespace A335843

/-- `A337127(A017317(n)-2)` -/
def P6432858092093796980.Spec : Prop :=
  ∀ n, P6432858092093796980.a n = A335843 (n + 1)

end A335843

/-! ## A335843.P17385562742288457002

`A337127(A335756(3*n))`
-/

namespace A335843.P17385562742288457002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A335756 (3 * n)).toNat

end

end A335843.P17385562742288457002

namespace A335843

/-- `A337127(A335756(3*n))` -/
def P17385562742288457002.Spec : Prop :=
  ∀ n, P17385562742288457002.a n = A335843 (n + 1)

end A335843

/-! ## A335843.P2839594773894009782

`A337127(A017317(2*n)/2)`
-/

namespace A335843.P2839594773894009782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (SequenceMachineLib.roundAway ((A017317 (2 * n) : ℚ) / 2)).toNat

end

end A335843.P2839594773894009782

namespace A335843

/-- `A337127(A017317(2*n)/2)` -/
def P2839594773894009782.Spec : Prop :=
  ∀ n, P2839594773894009782.a n = A335843 (n + 1)

end A335843

/-!
# A335845: Irregular triangular array T(n,k) read by rows. Row n gives the number of permutations of {1,2,...,n} whose descent set is S for each subset S of {1,2,...,n-1} where the subsets are ordered first by size and then lexicographically (Cf. A082185).

The programs for A335845, there is no canonical definition to state claims against.
-/

/-! ## A335845.P10272003859274978051

`A060351(A209862(n))`
-/

namespace A335845.P10272003859274978051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A209862 n).toNat

end

end A335845.P10272003859274978051

/-! ## A335845.P7838552296206675959

`A060351(A187769(n)%A058851(n+1))`
-/

namespace A335845.P7838552296206675959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (Int.tmod (A187769 n) (A058851 (n + 1))).toNat

end

end A335845.P7838552296206675959

/-! ## A335845.P12185137678754223138

`A060351(A187769(n))/A019428(A005914(n+1))`
-/

namespace A335845.P12185137678754223138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060351 (A187769 n).toNat : ℚ) / (A019428 (A005914 (n + 1)).toNat : ℚ)

end

end A335845.P12185137678754223138

/-! ## A335845.P10074101983873293578

`A060351(A187769(n))+A008683(A027602(n))`
-/

namespace A335845.P10074101983873293578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A187769 n).toNat + A008683 (A027602 n).toNat

end

end A335845.P10074101983873293578

/-! ## A335845.P2877539945525552067

`∏{e}[A000079(n), A357611(#)]`
-/

namespace A335845.P2877539945525552067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A357611 (Nat.factorization (f1 n).natAbs p)

end

end A335845.P2877539945525552067

/-!
# A335848: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k) * k!! * a(n-k).

The programs for A335848, there is no canonical definition to state claims against.
-/

/-! ## A335848.P13587042254328505792

`A189784(A189919(n))`
-/

namespace A335848.P13587042254328505792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189784 (A189919 n).toNat

end

end A335848.P13587042254328505792

/-! ## A335848.P5044155024505345625

`A028310(n*A032109(n))`
-/

namespace A335848.P5044155024505345625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A032109 n).toNat

end

end A335848.P5044155024505345625

/-!
# A335849: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k) * Bell(k-1) * a(n-k).

The programs for A335849, there is no canonical definition to state claims against.
-/

/-! ## A335849.P6729829292257519188

`A048569(A148930(n))`
-/

namespace A335849.P6729829292257519188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048569 (A148930 n).toNat

end

end A335849.P6729829292257519188

/-! ## A335849.P11196062613660710985

`A132270(lcm(8, A107104(n)))`
-/

namespace A335849.P11196062613660710985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (Int.lcm 8 (A107104 n))

end

end A335849.P11196062613660710985

/-!
# A335850: Cubefull highly composite numbers: numbers with a record number of cubefull divisors (A190867).

The programs for A335850, there is no canonical definition to state claims against.
-/

/-! ## A335850.P16019311621693647195

`A072995(A373969(n))`
-/

namespace A335850.P16019311621693647195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072995 (A373969 n).toNat

end

end A335850.P16019311621693647195

/-! ## A335850.P1413682541669425015

`A055035(A299253(n+3)*A299253(n))`
-/

namespace A335850.P1413682541669425015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A299253 (n + 3) * A299253 n).toNat

end

end A335850.P1413682541669425015

/-!
# A335851: Numbers that are powerful in Gaussian integers.

The programs for A335851, there is no canonical definition to state claims against.
-/

/-! ## A335851.P10422309960956786884

`A390010(n+1)/4`
-/

namespace A335851.P10422309960956786884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390010 (n + 1) : ℚ) / 4

end

end A335851.P10422309960956786884

/-! ## A335851.P9073207787780705103

`∪[A001694(n+1), A364061(n+1)]`
-/

namespace A335851.P9073207787780705103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335851.P9073207787780705103

/-! ## A335851.P12987612354951769191

`record[A001694(n+1)/A258567(n+1)²]`
-/

namespace A335851.P12987612354951769191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A258567 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P12987612354951769191

/-! ## A335851.P1969921670691395524

`record[A273943(A001694(n+2))/2]`
-/

namespace A335851.P1969921670691395524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273943 (A001694 (n + 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P1969921670691395524

/-! ## A335851.P4611535545658846667

`record[A273943(A273943(A001694(n+1)))]`
-/

namespace A335851.P4611535545658846667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A273943 (A001694 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P4611535545658846667

/-! ## A335851.P18041179269065602796

`eq[1, A000010(A055231(n+1))]+1`
-/

namespace A335851.P18041179269065602796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335851.P18041179269065602796

/-! ## A335851.P7520865226835358323

`record[(n+1)%(3*A057521(n+1))]`
-/

namespace A335851.P7520865226835358323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (3 * A057521 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P7520865226835358323

/-! ## A335851.P12708518343485519944

`eq[A000010(n+1), A000010(A057521(n+1))]+1`
-/

namespace A335851.P12708518343485519944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A057521 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335851.P12708518343485519944

/-! ## A335851.P10230005115973448252

`eq[1, A073185(n+1)%2]+1`
-/

namespace A335851.P10230005115973448252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073185 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335851.P10230005115973448252

/-! ## A335851.P16563670120633588016

`record[(n+1)*A010051(A092261(n+1)+2)]`
-/

namespace A335851.P16563670120633588016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A092261 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P16563670120633588016

/-! ## A335851.P12587314024645146918

`eq[A039649(n+1), A039649(A057521(n+1))]+1`
-/

namespace A335851.P12587314024645146918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A057521 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335851.P12587314024645146918

/-! ## A335851.P9171246138907504177

`eq[A156061(A003557(n+1)), A156061(n+1)]+1`
-/

namespace A335851.P9171246138907504177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A003557 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335851.P9171246138907504177

/-! ## A335851.P6787402594646223334

`lt[A183098(n+1), A183097(2*(n+1))]+1`
-/

namespace A335851.P6787402594646223334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A335851.P6787402594646223334

/-! ## A335851.P12244959861049907371

`lt[n, A057521(2*(n+1))]+1`
-/

namespace A335851.P12244959861049907371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335851.P12244959861049907371

/-! ## A335851.P16845416276845579334

`record[gcd(A032742(n+1), A057521(n+1))]`
-/

namespace A335851.P16845416276845579334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (n + 1)) (A057521 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P16845416276845579334

/-! ## A335851.P7373298538593693715

`record[lcm(A003557(2*(n+1)), A057521(n+1))]`
-/

namespace A335851.P7373298538593693715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (2 * (n + 1))) (A057521 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P7373298538593693715

/-! ## A335851.P15767691564842767079

`record[A003557(2*n+2)*A204455(A003557(2*n+2))]`
-/

namespace A335851.P15767691564842767079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 * n + 2) * A204455 (A003557 (2 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P15767691564842767079

/-! ## A335851.P1206221055472429864

`record[A057521(n+1)/A020639(n+1)²]`
-/

namespace A335851.P1206221055472429864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A020639 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P1206221055472429864

/-! ## A335851.P17642852055254084405

`record[A008619(n*A112526(2*(n+1)))]`
-/

namespace A335851.P17642852055254084405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A112526 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P17642852055254084405

/-! ## A335851.P7231777756487359629

`record[A057521(n+1)/A249739(n+1)²]`
-/

namespace A335851.P7231777756487359629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A249739 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335851.P7231777756487359629

/-!
# A335852: Product of the exponents in the prime factorization of n in the ring of Gaussian integers.

The programs for A335852, there is no canonical definition to state claims against.
-/

/-! ## A335852.P639335053684932682

`A000034(n²)*A343068(A057521(n+1))`
-/

namespace A335852.P639335053684932682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n ^ 2) * A343068 (A057521 (n + 1)).toNat

end

end A335852.P639335053684932682

/-! ## A335852.P170006295602982687

`A006519(n²+1)*A343068(A057521(n+1))`
-/

namespace A335852.P170006295602982687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A343068 (A057521 (n + 1)).toNat

end

end A335852.P170006295602982687

/-! ## A335852.P18131637281904942115

`A000034(A066880(n+1))*A005361(n+1)`
-/

namespace A335852.P18131637281904942115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A066880 (n + 1)).toNat * A005361 (n + 1)

end

end A335852.P18131637281904942115

/-! ## A335852.P17925937520994303651

`A005361(n+1)*A040001(A061044(n+5))`
-/

namespace A335852.P17925937520994303651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A040001 (A061044 (n + 5)).toNat

end

end A335852.P17925937520994303651

/-! ## A335852.P6159988681174560962

`A091050(A166705(n+1))`
-/

namespace A335852.P6159988681174560962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (A166705 (n + 1)).toNat

end

end A335852.P6159988681174560962

/-!
# A335853: Numbers that are highly powerful in Gaussian integers.

The programs for A335853, there is no canonical definition to state claims against.
-/

/-! ## A335853.P3605659911897900542

`A000079(n)-A318921(A000183(n+1))`
-/

namespace A335853.P3605659911897900542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A318921 (A000183 (n + 1)).toNat

end

end A335853.P3605659911897900542

/-!
# A335854: The digital-root sandwiches sequence (see Comments lines for definition).

The programs for A335854, there is no canonical definition to state claims against.
-/

/-! ## A335854.P8264489837065869720

`A039940(a(n-1)+2)` with `a(0)=11, a(1)=9`
-/

namespace A335854.P8264489837065869720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 9] fun n a =>
  A039940 (a (n - 1) + 2).toNat

end

end A335854.P8264489837065869720

/-!
# A335855: a(n) = a(a(n-1)) + a(floor(n/a(n-1))) with a(1) = a(2) = a(3) = a(4) = 2.

The programs for A335855, the canonical program `A335855.P949573482966582646` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335855 has offset 1).

The definition of A335855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(floor((n+1)/a(n-1))-1)` (program `A335855.P949573482966582646`, by `A335855.P949573482966582646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335855.P949573482966582646

`a(a(n-1)-1)+a(floor((n+1)/a(n-1))-1)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335855

/-- `a(a(n-1)-1)+a(floor((n+1)/a(n-1))-1)` -/
def P949573482966582646.Spec : Prop :=
  ∀ n, (P949573482966582646.a n : ℤ) = A335855 (n + 1)

theorem P949573482966582646.correct : P949573482966582646.Spec := by
  intro n
  simp only [A335855, Nat.add_sub_cancel]

end A335855

/-!
# A335856: Squares visited by a chess king on a spirally numbered infinite board where the king moves to the adjacent unvisited square containing the lowest prime number. If no such square is available it chooses the lowest-numbered adjacent unvisited square.

The programs for A335856, there is no canonical definition to state claims against.
-/

/-! ## A335856.P10824414163940273045

`A335816(n+1)-A096268(A002740(n))`
-/

namespace A335856.P10824414163940273045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (n + 1) - A096268 (A002740 n).toNat

end

end A335856.P10824414163940273045

/-! ## A335856.P14453653200544867775

`A335816(n+1)-A103589(A028387(n))`
-/

namespace A335856.P14453653200544867775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (n + 1) - A103589 (A028387 n).toNat

end

end A335856.P14453653200544867775

/-! ## A335856.P3682814884651348818

`A335816(n+1)-A185237(A000073(n))`
-/

namespace A335856.P3682814884651348818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (n + 1) - A185237 (A000073 n).toNat

end

end A335856.P3682814884651348818

/-! ## A335856.P101978248379647398

`A335816(n+1)-A185284(A000124(n))`
-/

namespace A335856.P101978248379647398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (n + 1) - A185284 (A000124 n).toNat

end

end A335856.P101978248379647398

/-! ## A335856.P9655739276364069257

`A335816(n+1)-A178798(A166444(n))`
-/

namespace A335856.P9655739276364069257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (n + 1) - A178798 (A166444 n).toNat

end

end A335856.P9655739276364069257

/-!
# A335857: a(n) is the determinant of the n X n Hankel matrix A with A(i,j) = A000108(i+j+6) for 0<=i,j<=n-1.

The programs for A335857, there is no canonical definition to state claims against.
-/

/-! ## A335857.P6954145417273016780

`A123352(A167499(n+4))`
-/

namespace A335857.P6954145417273016780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A167499 (n + 4)).toNat

end

end A335857.P6954145417273016780

/-! ## A335857.P7947805978968451607

`A078920(A055999(n+3))`
-/

namespace A335857.P7947805978968451607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A055999 (n + 3)).toNat

end

end A335857.P7947805978968451607

/-! ## A335857.P16986038835964978230

`A078920(eq[6, A004736(n+1)])`
-/

namespace A335857.P16986038835964978230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335857.P16986038835964978230

/-! ## A335857.P12360855698722580581

`A078920(A000217(n+10)-A008586(n+10))`
-/

namespace A335857.P12360855698722580581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A000217 (n + 10) - A008586 (n + 10)).toNat

end

end A335857.P12360855698722580581

/-!
# A335858: Nonnegative integers ordered by binary length and then lexicographically by run lengths (considering least significant runs first).

The programs for A335858, the canonical program `A335858.P3204271633163649755` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335858 has offset 0).

The definition of A335858 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056539, A180200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335858.P3204271633163649755

`A056539(A180200(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A335858

/-- `A056539(A180200(n))` -/
def P3204271633163649755.Spec : Prop :=
  ∀ n, P3204271633163649755.a n = A335858 n

theorem P3204271633163649755.correct : P3204271633163649755.Spec := by
  intro n
  simp only [A335858]

end A335858

/-! ## A335858.P5676346576963652229

`A292600(A345401(n))`
-/

namespace A335858.P5676346576963652229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A345401 n).toNat

end

end A335858.P5676346576963652229

namespace A335858

/-- `A292600(A345401(n))` -/
def P5676346576963652229.Spec : Prop :=
  ∀ n, P5676346576963652229.a n = A335858 n

end A335858

/-! ## A335858.P10941559364323285494

`A006068(A234024(A234027(A234024(n))))`
-/

namespace A335858.P10941559364323285494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A234024 (A234027 (A234024 n).toNat).toNat).toNat

end

end A335858.P10941559364323285494

namespace A335858

/-- `A006068(A234024(A234027(A234024(n))))` -/
def P10941559364323285494.Spec : Prop :=
  ∀ n, P10941559364323285494.a n = A335858 n

end A335858

/-! ## A335858.P14066092919572621217

`A234613(A234025(A193231(A234024(A234025(n)))))`
-/

namespace A335858.P14066092919572621217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A234025 (A193231 (A234024 (A234025 n).toNat).toNat).toNat).toNat

end

end A335858.P14066092919572621217

namespace A335858

/-- `A234613(A234025(A193231(A234024(A234025(n)))))` -/
def P14066092919572621217.Spec : Prop :=
  ∀ n, P14066092919572621217.a n = A335858 n

end A335858

/-! ## A335858.P9618862021654272273

`A193231(A234612(A234027(A234024(A234027(n)))))`
-/

namespace A335858.P9618862021654272273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234612 (A234027 (A234024 (A234027 n).toNat).toNat).toNat).toNat

end

end A335858.P9618862021654272273

namespace A335858

/-- `A193231(A234612(A234027(A234024(A234027(n)))))` -/
def P9618862021654272273.Spec : Prop :=
  ∀ n, P9618862021654272273.a n = A335858 n

end A335858

/-! ## A335858.P11983266899442913393

`A292600(A056539(2*n))`
-/

namespace A335858.P11983266899442913393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A056539 (2 * n)).toNat

end

end A335858.P11983266899442913393

namespace A335858

/-- `A292600(A056539(2*n))` -/
def P11983266899442913393.Spec : Prop :=
  ∀ n, P11983266899442913393.a n = A335858 n

end A335858

/-! ## A335858.P14480633216582663230

`A006068(A056539(2*n)/2)`
-/

namespace A335858.P14480633216582663230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (SequenceMachineLib.roundAway ((A056539 (2 * n) : ℚ) / 2)).toNat

end

end A335858.P14480633216582663230

namespace A335858

/-- `A006068(A056539(2*n)/2)` -/
def P14480633216582663230.Spec : Prop :=
  ∀ n, P14480633216582663230.a n = A335858 n

end A335858

/-! ## A335858.P2897592093697481657

`A053645(A006068(A059894(2*n+1)))`
-/

namespace A335858.P2897592093697481657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A006068 (A059894 (2 * n + 1)).toNat).toNat

end

end A335858.P2897592093697481657

namespace A335858

/-- `A053645(A006068(A059894(2*n+1)))` -/
def P2897592093697481657.Spec : Prop :=
  ∀ n, P2897592093697481657.a n = A335858 n

end A335858

/-! ## A335858.P8180873686045746448

`A056539(A154435(A180201(A154435(n))))`
-/

namespace A335858.P8180873686045746448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A154435 (A180201 (A154435 n).toNat).toNat).toNat

end

end A335858.P8180873686045746448

namespace A335858

/-- `A056539(A154435(A180201(A154435(n))))` -/
def P8180873686045746448.Spec : Prop :=
  ∀ n, P8180873686045746448.a n = A335858 n

end A335858

/-! ## A335858.P6417369632692455074

`A129594(A006068(n))`
-/

namespace A335858.P6417369632692455074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A006068 n).toNat

end

end A335858.P6417369632692455074

namespace A335858

/-- `A129594(A006068(n))` -/
def P6417369632692455074.Spec : Prop :=
  ∀ n, P6417369632692455074.a n = A335858 n

end A335858

/-! ## A335858.P7852889674729872867

`A165199(A341916(n))`
-/

namespace A335858.P7852889674729872867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A341916 n).toNat

end

end A335858.P7852889674729872867

namespace A335858

/-- `A165199(A341916(n))` -/
def P7852889674729872867.Spec : Prop :=
  ∀ n, P7852889674729872867.a n = A335858 n

end A335858

/-! ## A335858.P6696747352287227812

`A243354(A253563(n))`
-/

namespace A335858.P6696747352287227812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A253563 n).toNat

end

end A335858.P6696747352287227812

namespace A335858

/-- `A243354(A253563(n))` -/
def P6696747352287227812.Spec : Prop :=
  ∀ n, P6696747352287227812.a n = A335858 n

end A335858

/-!
# A335860: Partial sums of A064097.

The programs for A335860, the canonical program `A335860.P17749243859278538825` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335860 has offset 1).

The definition of A335860 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053044, A335429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335860.P17749243859278538825

`A053044(n+1)+A335429(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A335860

/-- `A053044(n+1)+A335429(n+1)` -/
def P17749243859278538825.Spec : Prop :=
  ∀ n, P17749243859278538825.a n = A335860 (n + 1)

theorem P17749243859278538825.correct : P17749243859278538825.Spec := by
  intro n
  simp only [A335860, Nat.add_sub_cancel]

end A335860

/-! ## A335860.P11488325697719497732

`∑[A064097(n+1)]`
-/

namespace A335860.P11488325697719497732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P11488325697719497732

namespace A335860

/-- `∑[A064097(n+1)]` -/
def P11488325697719497732.Spec : Prop :=
  ∀ n, P11488325697719497732.a n = A335860 (n + 1)

end A335860

/-! ## A335860.P15174783827007209543

`∑[∑[A334090(n+1)]]`
-/

namespace A335860.P15174783827007209543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P15174783827007209543

namespace A335860

/-- `∑[∑[A334090(n+1)]]` -/
def P15174783827007209543.Spec : Prop :=
  ∀ n, P15174783827007209543.a n = A335860 (n + 1)

end A335860

/-! ## A335860.P16557036370243249139

`∑[A073933(n+1)-1]`
-/

namespace A335860.P16557036370243249139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P16557036370243249139

namespace A335860

/-- `∑[A073933(n+1)-1]` -/
def P16557036370243249139.Spec : Prop :=
  ∀ n, P16557036370243249139.a n = A335860 (n + 1)

end A335860

/-! ## A335860.P8483329335607462953

`∑[A334203(2*(n+1))]`
-/

namespace A335860.P8483329335607462953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P8483329335607462953

namespace A335860

/-- `∑[A334203(2*(n+1))]` -/
def P8483329335607462953.Spec : Prop :=
  ∀ n, P8483329335607462953.a n = A335860 (n + 1)

end A335860

/-! ## A335860.P9251312031669718414

`∑[∑{d}[n+1, A307742(#)]]`
-/

namespace A335860.P9251312031669718414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A307742 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P9251312031669718414

namespace A335860

/-- `∑[∑{d}[n+1, A307742(#)]]` -/
def P9251312031669718414.Spec : Prop :=
  ∀ n, P9251312031669718414.a n = A335860 (n + 1)

end A335860

/-! ## A335860.P2705911179684985218

`∑[a(A060681(n+1)-1)+1]` with `a(0)=0`
-/

namespace A335860.P2705911179684985218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A060681 (n + 1) - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P2705911179684985218

namespace A335860

/-- `∑[a(A060681(n+1)-1)+1]` -/
def P2705911179684985218.Spec : Prop :=
  ∀ n, (P2705911179684985218.a n : ℤ) = A335860 (n + 1)

end A335860

/-! ## A335860.P8232025184572082919

`∑[a(n-(n+1)/A006530(n+1))+1]` with `a(0)=0`
-/

namespace A335860.P8232025184572082919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P8232025184572082919

namespace A335860

/-- `∑[a(n-(n+1)/A006530(n+1))+1]` -/
def P8232025184572082919.Spec : Prop :=
  ∀ n, (P8232025184572082919.a n : ℤ) = A335860 (n + 1)

end A335860

/-! ## A335860.P6920047212592062018

`∑[abs(a(n-(n+1)/A020639(n+1))+n+1)-n]` with `a(0)=0`
-/

namespace A335860.P6920047212592062018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  |f1 (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat + (n + 1 : ℤ)| - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P6920047212592062018

namespace A335860

/-- `∑[abs(a(n-(n+1)/A020639(n+1))+n+1)-n]` -/
def P6920047212592062018.Spec : Prop :=
  ∀ n, P6920047212592062018.a n = A335860 (n + 1)

end A335860

/-! ## A335860.P14503651973833104159

`∑[∑[A334195(n+1)+A334091(n+1)]]`
-/

namespace A335860.P14503651973833104159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1) + A334091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335860.P14503651973833104159

namespace A335860

/-- `∑[∑[A334195(n+1)+A334091(n+1)]]` -/
def P14503651973833104159.Spec : Prop :=
  ∀ n, P14503651973833104159.a n = A335860 (n + 1)

end A335860

/-!
# A335865: Moduli a(n) = v(n) for the simple difference sets of Singer type of order m(n) (v(n), m(n)+1, 1) in the additive group modulo v(n) = m(n)^2 + m(n) + 1, with m(n) = A000961(n).

The programs for A335865, there is no canonical definition to state claims against.
-/

/-! ## A335865.P5422622586464725512

`record[A304233(n+1)+2+n]`
-/

namespace A335865.P5422622586464725512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304233 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335865.P5422622586464725512

/-! ## A335865.P460127025588228848

`ceil((A000961(n+1)+1/2)²)`
-/

namespace A335865.P460127025588228848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000961 (n + 1) : ℚ) + (1 : ℚ) / 2) ^ 2⌉

end

end A335865.P460127025588228848

/-! ## A335865.P8517904413008432858

`ceil(((A138929(n+1)+1)/2)²)`
-/

namespace A335865.P8517904413008432858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A138929 (n + 1) + 1 : ℚ) / 2) ^ 2⌉

end

end A335865.P8517904413008432858

/-! ## A335865.P545028140653500798

`record[A034684(n+1)²+n+2]`
-/

namespace A335865.P545028140653500798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) ^ 2 + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335865.P545028140653500798

/-! ## A335865.P17834300475490328616

`record[A034699((n+1)²)+n+2]`
-/

namespace A335865.P17834300475490328616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 ((n + 1) ^ 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335865.P17834300475490328616

/-!
# A335866: Number of classes of simple difference sets of the Singer type (m^2 + m + 1, m + 1, 1) with m = m(n) = A000961(n), for n >= 1.

The programs for A335866, there is no canonical definition to state claims against.
-/

/-! ## A335866.P14224654944206933717

`filter[A353108(n+2), A145568(#)]`
-/

namespace A335866.P14224654944206933717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353108 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A335866.P14224654944206933717

/-! ## A335866.P13568265053437982005

`filter[A353108(n+2), A276398(#)]`
-/

namespace A335866.P13568265053437982005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353108 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A335866.P13568265053437982005

/-! ## A335866.P5246516763291836776

`filter[A353108(n+2), A022933(#)]`
-/

namespace A335866.P5246516763291836776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353108 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022933 (f1 j).toNat = 1) n)

end

end A335866.P5246516763291836776

/-! ## A335866.P1872083144267533203

`filter[A353108(n+2), A109720(#)]`
-/

namespace A335866.P1872083144267533203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353108 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A335866.P1872083144267533203

/-! ## A335866.P10928022211542665666

`A325787(∪[A335865(3*n+1), A138077(n+1)])`
-/

namespace A335866.P10928022211542665666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335865 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138077 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325787 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A335866.P10928022211542665666

/-!
# A335867: a(n) = exp(-n) * Sum_{k>=0} n^k * (k - 1)^n / k!.

The programs for A335867, there is no canonical definition to state claims against.
-/

/-! ## A335867.P15220070747010305201

`A081599(C(round(n²-(n²+2)/5), n))`
-/

namespace A335867.P15220070747010305201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081599 (Nat.choose (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) - (n ^ 2 + 2 : ℚ) / 5)).toNat n)

end

end A335867.P15220070747010305201

/-!
# A335868: a(n) = exp(n) * Sum_{k>=0} (-n)^k * (k - 1)^n / k!.

The programs for A335868, there is no canonical definition to state claims against.
-/

/-! ## A335868.P12720778517441592169

`A333626(A272773(n)+A001832(n+1)+n)/(-1)^n`
-/

namespace A335868.P12720778517441592169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333626 (A272773 n + A001832 (n + 1) + (n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A335868.P12720778517441592169

/-!
# A335871: a(0) = 1 and a(n) = (1/n) * Sum_{k=1..n} binomial(n,k) * binomial(n+(n-1)*k,k-1) for n > 0.

The programs for A335871, there is no canonical definition to state claims against.
-/

/-! ## A335871.P8246324434466493949

`A336706(∑[4*n])`
-/

namespace A335871.P8246324434466493949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335871.P8246324434466493949

/-! ## A335871.P13932626566337072613

`gcd(A000038(n), A336706(A046092(n)))`
-/

namespace A335871.P13932626566337072613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A336706 (A046092 n).toNat)

end

end A335871.P13932626566337072613

/-! ## A335871.P11655891128198247439

`A336706(A046092(n))+A000007(A005408(n))`
-/

namespace A335871.P11655891128198247439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (A046092 n).toNat + A000007 (A005408 n).toNat

end

end A335871.P11655891128198247439

/-! ## A335871.P4044087123574575504

`A336706(A046092(n))^A001222(A008578(n+1))`
-/

namespace A335871.P4044087123574575504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336706 (A046092 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A335871.P4044087123574575504

/-! ## A335871.P12944058210062007671

`A336706(A046092(n))+A000007(A108426(n))`
-/

namespace A335871.P12944058210062007671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (A046092 n).toNat + A000007 (A108426 n).toNat

end

end A335871.P12944058210062007671

/-!
# A335872: Number T(n,k) of permutations of [n] having k points that are fixed or reflected; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A335872, there is no canonical definition to state claims against.
-/

/-! ## A335872.P7453446052178345654

`and(A104035(n), A114107(A254049(3*n+1)))`
-/

namespace A335872.P7453446052178345654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104035 n) (A114107 (A254049 (3 * n + 1)).toNat)

end

end A335872.P7453446052178345654

/-! ## A335872.P13303556174818591287

`A325788(A361504(n+1))`
-/

namespace A335872.P13303556174818591287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325788 (A361504 (n + 1)).toNat

end

end A335872.P13303556174818591287

/-! ## A335872.P9142075172800458539

`A052344(∑[A289844(n+1)])`
-/

namespace A335872.P9142075172800458539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335872.P9142075172800458539

/-! ## A335872.P17478501298072628677

`A051699(or(1, A298617(n+1)))`
-/

namespace A335872.P17478501298072628677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (Int.lor 1 (A298617 (n + 1))).toNat

end

end A335872.P17478501298072628677

/-! ## A335872.P10461753692291563194

`A035177(∑[record[A113552(n+1)]])`
-/

namespace A335872.P10461753692291563194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335872.P10461753692291563194

/-!
# A335873: Total number of points in all permutations of [n] that are fixed or reflected.

The programs for A335873, the canonical program `A335873.P17123219860348108659` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335873 has offset 0).

The definition of A335873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335873.P17123219860348108659

`(n-1)*(4*a(n-1)+(n-2)*(4*n-3)*a(n-2))/(4*n-7)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335873

/-- `(n-1)*(4*a(n-1)+(n-2)*(4*n-3)*a(n-2))/(4*n-7)` -/
def P17123219860348108659.Spec : Prop :=
  ∀ n, P17123219860348108659.a n = (A335873 n : ℚ)

end A335873

/-! ## A335873.P13177903872714247398

`abs(1-n)!*comp[or(2, n)]`
-/

namespace A335873.P13177903872714247398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335873.P13177903872714247398

namespace A335873

/-- `abs(1-n)!*comp[or(2, n)]` -/
def P13177903872714247398.Spec : Prop :=
  ∀ n, (P13177903872714247398.a n : ℤ) = A335873 n

end A335873

/-! ## A335873.P5526484299008312760

`(or(1, n)+n-1)*round(log(cosh(n)))!`
-/

namespace A335873.P5526484299008312760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℤ) + ((n : ℤ) - 1)) * (Nat.factorial (SequenceMachineLib.roundAway (Real.log (Real.cosh (n : ℝ)))).toNat : ℤ)

end

end A335873.P5526484299008312760

namespace A335873

/-- `(or(1, n)+n-1)*round(log(cosh(n)))!` -/
def P5526484299008312760.Spec : Prop :=
  ∀ n, P5526484299008312760.a n = A335873 n

end A335873

/-! ## A335873.P963214157759750169

`comp[or(2, n)]*A104150(n)`
-/

namespace A335873.P963214157759750169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A104150 n

end

end A335873.P963214157759750169

namespace A335873

/-- `comp[or(2, n)]*A104150(n)` -/
def P963214157759750169.Spec : Prop :=
  ∀ n, P963214157759750169.a n = A335873 n

end A335873

/-! ## A335873.P6158142550918345508

`A042948(n)*A104150(n)`
-/

namespace A335873.P6158142550918345508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n * A104150 n

end

end A335873.P6158142550918345508

namespace A335873

/-- `A042948(n)*A104150(n)` -/
def P6158142550918345508.Spec : Prop :=
  ∀ n, P6158142550918345508.a n = A335873 n

end A335873

/-! ## A335873.P15498879805742074653

`A042948(n)*A084938(∑[n]+1)`
-/

namespace A335873.P15498879805742074653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n * A084938 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A335873.P15498879805742074653

namespace A335873

/-- `A042948(n)*A084938(∑[n]+1)` -/
def P15498879805742074653.Spec : Prop :=
  ∀ n, P15498879805742074653.a n = A335873 n

end A335873

/-! ## A335873.P3580585790437238195

`A014681(A053438(n))*A104150(n)`
-/

namespace A335873.P3580585790437238195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A053438 n).toNat * A104150 n

end

end A335873.P3580585790437238195

namespace A335873

/-- `A014681(A053438(n))*A104150(n)` -/
def P3580585790437238195.Spec : Prop :=
  ∀ n, P3580585790437238195.a n = A335873 n

end A335873

/-! ## A335873.P10415302330922061285

`A057979(A004273(n))!*A042948(n)`
-/

namespace A335873.P10415302330922061285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057979 (A004273 n).toNat).toNat : ℤ) * A042948 n

end

end A335873.P10415302330922061285

namespace A335873

/-- `A057979(A004273(n))!*A042948(n)` -/
def P10415302330922061285.Spec : Prop :=
  ∀ n, P10415302330922061285.a n = A335873 n

end A335873

/-! ## A335873.P923052138671046859

`A042948(n)*A094587(A007318(A133263(n)))`
-/

namespace A335873.P923052138671046859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n * A094587 (A007318 (A133263 n).toNat).toNat

end

end A335873.P923052138671046859

namespace A335873

/-- `A042948(n)*A094587(A007318(A133263(n)))` -/
def P923052138671046859.Spec : Prop :=
  ∀ n, P923052138671046859.a n = A335873 n

end A335873

/-! ## A335873.P15796648863159502822

`A042948(n)*A219570(A000217(n))`
-/

namespace A335873.P15796648863159502822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n * A219570 (A000217 n).toNat

end

end A335873.P15796648863159502822

namespace A335873

/-- `A042948(n)*A219570(A000217(n))` -/
def P15796648863159502822.Spec : Prop :=
  ∀ n, P15796648863159502822.a n = A335873 n

end A335873

/-!
# A335874: Primes of the form q*2^h - 1, where q is a Mersenne prime (A000668).

The programs for A335874, there is no canonical definition to state claims against.
-/

/-! ## A335874.P4116222218277844392

`∩[A030130(n+1), A086983(n+1)]`
-/

namespace A335874.P4116222218277844392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335874.P4116222218277844392

/-! ## A335874.P17149091590006143473

`∩[A086983(n+1), A095078(n+1)]`
-/

namespace A335874.P17149091590006143473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335874.P17149091590006143473

/-! ## A335874.P3428743247488380258

`∩[A086983(n+1), A140707(n+1)]`
-/

namespace A335874.P3428743247488380258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335874.P3428743247488380258

/-! ## A335874.P17086685350042959009

`∩[A086983(n+1), A161793(n+1)]`
-/

namespace A335874.P17086685350042959009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335874.P17086685350042959009

/-! ## A335874.P17099234927388981662

`∩[A086983(n+1), A164874(n+1)]`
-/

namespace A335874.P17099234927388981662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335874.P17099234927388981662

/-!
# A335875: a(n) = min(A329697(n), A331410(n)).

The programs for A335875, there is no canonical definition to state claims against.
-/

/-! ## A335875.P14434655986844895564

`A334861(n+1)-A335881(n+1)`
-/

namespace A335875.P14434655986844895564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - A335881 (n + 1)

end

end A335875.P14434655986844895564

/-! ## A335875.P18314830629938545849

`A335881(n+1)-abs(A335877(n+1))`
-/

namespace A335875.P18314830629938545849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (n + 1) - |A335877 (n + 1)|

end

end A335875.P18314830629938545849

/-! ## A335875.P11162754549680028054

`A335881(2*(n+1))-dr(A335877(n+1))`
-/

namespace A335875.P11162754549680028054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (2 * (n + 1)) - (SequenceMachineLib.digitalRoot (A335877 (n + 1)) : ℤ)

end

end A335875.P11162754549680028054

/-! ## A335875.P2896363671968508804

`A329697(n+1)+A331410(n+1)-A335881(n+1)`
-/

namespace A335875.P2896363671968508804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A331410 (n + 1) - A335881 (n + 1))

end

end A335875.P2896363671968508804

/-! ## A335875.P8111185220158668951

`2*A331410(n+1)-A335877(n+1)-A335881(n+1)`
-/

namespace A335875.P8111185220158668951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331410 (n + 1) - A335877 (n + 1) - A335881 (n + 1)

end

end A335875.P8111185220158668951

/-! ## A335875.P17488573050675536167

`A331410((n+1)²)-A335877(n+1)-A335881(n+1)`
-/

namespace A335875.P17488573050675536167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 ((n + 1) ^ 2) - A335877 (n + 1) - A335881 (n + 1)

end

end A335875.P17488573050675536167

/-!
# A335876: a(1) = 2, and for n > 1, a(n) = n + (n/p), where p is largest prime dividing n, A006530(n).

The programs for A335876, the canonical program `A335876.P3249295182234954832` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335876 has offset 1).

The definition of A335876 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335876.P3249295182234954832

`n+1+A052126(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A335876

/-- `n+1+A052126(n+1)` -/
def P3249295182234954832.Spec : Prop :=
  ∀ n, P3249295182234954832.a n = A335876 (n + 1)

theorem P3249295182234954832.correct : P3249295182234954832.Spec := by
  intro n
  simp only [A335876, Nat.add_sub_cancel]

end A335876

/-! ## A335876.P15167266019565315483

`A269304(n+1)-1`
-/

namespace A335876.P15167266019565315483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269304 (n + 1) - 1

end

end A335876.P15167266019565315483

namespace A335876

/-- `A269304(n+1)-1` -/
def P15167266019565315483.Spec : Prop :=
  ∀ n, P15167266019565315483.a n = A335876 (n + 1)

theorem P15167266019565315483.correct : P15167266019565315483.Spec := by
  intro n
  simp only [A335876, Nat.add_sub_cancel, A335876.P15167266019565315483.a, A335876.P3249295182234954832.a, A052126, A052126.P1944428405920482243.a, A269304, A269304.P13577493983909923936.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335876

/-! ## A335876.P13461336641569132114

`2*(n+1)-A171462(n+1)`
-/

namespace A335876.P13461336641569132114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A171462 (n + 1)

end

end A335876.P13461336641569132114

namespace A335876

/-- `2*(n+1)-A171462(n+1)` -/
def P13461336641569132114.Spec : Prop :=
  ∀ n, P13461336641569132114.a n = A335876 (n + 1)

theorem P13461336641569132114.correct : P13461336641569132114.Spec := by
  intro n
  simp only [A335876, Nat.add_sub_cancel, A335876.P13461336641569132114.a, A335876.P3249295182234954832.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335876

/-! ## A335876.P9148216666640567061

`floor(n/A006530(n+1)+2+n)`
-/

namespace A335876.P9148216666640567061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A006530 (n + 1) : ℚ) + 2 + (n : ℚ)⌋

end

end A335876.P9148216666640567061

namespace A335876

/-- `floor(n/A006530(n+1)+2+n)` -/
def P9148216666640567061.Spec : Prop :=
  ∀ n, P9148216666640567061.a n = A335876 (n + 1)

end A335876

/-! ## A335876.P10233415574483718249

`A342768(n+1)/(n+1)+n+1`
-/

namespace A335876.P10233415574483718249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A335876.P10233415574483718249

namespace A335876

/-- `A342768(n+1)/(n+1)+n+1` -/
def P10233415574483718249.Spec : Prop :=
  ∀ n, P10233415574483718249.a n = (A335876 (n + 1) : ℚ)

end A335876

/-! ## A335876.P5656702402531808300

`(n+1)/A006530(C(n+1, n))+n+1`
-/

namespace A335876.P5656702402531808300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (Nat.choose (n + 1) n) : ℚ) + (n + 1 : ℚ)

end

end A335876.P5656702402531808300

namespace A335876

/-- `(n+1)/A006530(C(n+1, n))+n+1` -/
def P5656702402531808300.Spec : Prop :=
  ∀ n, P5656702402531808300.a n = (A335876 (n + 1) : ℚ)

end A335876

/-! ## A335876.P2261074532749333065

`(n+1)/A006530(∏{p}[n+1, #])+n+1`
-/

namespace A335876.P2261074532749333065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) + (n + 1 : ℚ)

end

end A335876.P2261074532749333065

namespace A335876

/-- `(n+1)/A006530(∏{p}[n+1, #])+n+1` -/
def P2261074532749333065.Spec : Prop :=
  ∀ n, P2261074532749333065.a n = (A335876 (n + 1) : ℚ)

end A335876

/-! ## A335876.P595358952567727210

`(n+1)/A006530(2*n+1-n)+n+1`
-/

namespace A335876.P595358952567727210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (2 * n + 1 - n) : ℚ) + (n + 1 : ℚ)

end

end A335876.P595358952567727210

namespace A335876

/-- `(n+1)/A006530(2*n+1-n)+n+1` -/
def P595358952567727210.Spec : Prop :=
  ∀ n, P595358952567727210.a n = (A335876 (n + 1) : ℚ)

end A335876

/-! ## A335876.P17458853639057396956

`A020725(A052126(n+1))+n`
-/

namespace A335876.P17458853639057396956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A052126 (n + 1)).toNat + (n : ℤ)

end

end A335876.P17458853639057396956

namespace A335876

/-- `A020725(A052126(n+1))+n` -/
def P17458853639057396956.Spec : Prop :=
  ∀ n, P17458853639057396956.a n = A335876 (n + 1)

end A335876

/-! ## A335876.P13243514360712469773

`A032742(A130065(n+1))+1+n`
-/

namespace A335876.P13243514360712469773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A130065 (n + 1)).toNat + 1 + (n : ℤ)

end

end A335876.P13243514360712469773

namespace A335876

/-- `A032742(A130065(n+1))+1+n` -/
def P13243514360712469773.Spec : Prop :=
  ∀ n, P13243514360712469773.a n = A335876 (n + 1)

end A335876

/-! ## A335876.P2729027234897151666

`A144396(n+1)-(A171462(n+1)+1)`
-/

namespace A335876.P2729027234897151666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - (A171462 (n + 1) + 1)

end

end A335876.P2729027234897151666

namespace A335876

/-- `A144396(n+1)-(A171462(n+1)+1)` -/
def P2729027234897151666.Spec : Prop :=
  ∀ n, P2729027234897151666.a n = A335876 (n + 1)

theorem P2729027234897151666.correct : P2729027234897151666.Spec := by
  intro n
  simp only [A335876, Nat.add_sub_cancel, A335876.P2729027234897151666.a, A335876.P3249295182234954832.a, A052126, A052126.P1944428405920482243.a, A144396, A144396.P18396969748453668116.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335876

/-! ## A335876.P1554671504521698288

`A000027(n+2)-A171462(n+1)+n`
-/

namespace A335876.P1554671504521698288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2) - A171462 (n + 1) + (n : ℤ)

end

end A335876.P1554671504521698288

namespace A335876

/-- `A000027(n+2)-A171462(n+1)+n` -/
def P1554671504521698288.Spec : Prop :=
  ∀ n, P1554671504521698288.a n = A335876 (n + 1)

theorem P1554671504521698288.correct : P1554671504521698288.Spec := by
  intro n
  simp only [A335876, Nat.add_sub_cancel, A335876.P1554671504521698288.a, A335876.P3249295182234954832.a, A000027, A000027.P10331202704469894836.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335876

/-! ## A335876.P758514762038468002

`1-n+A016777(n)-A171462(n+1)`
-/

namespace A335876.P758514762038468002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + (A016777 n - A171462 (n + 1))

end

end A335876.P758514762038468002

namespace A335876

/-- `1-n+A016777(n)-A171462(n+1)` -/
def P758514762038468002.Spec : Prop :=
  ∀ n, P758514762038468002.a n = A335876 (n + 1)

theorem P758514762038468002.correct : P758514762038468002.Spec := by
  intro n
  simp only [A335876, Nat.add_sub_cancel, A335876.P758514762038468002.a, A335876.P3249295182234954832.a, A016777, A016777.P9931792138852554157.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335876

/-! ## A335876.P2544632918959189884

`(n+1)/lcm(A014963(n+1), A006530(n+1))+n+1`
-/

namespace A335876.P2544632918959189884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.lcm (A014963 (n + 1)) (A006530 (n + 1)) : ℚ) + (n + 1 : ℚ)

end

end A335876.P2544632918959189884

namespace A335876

/-- `(n+1)/lcm(A014963(n+1), A006530(n+1))+n+1` -/
def P2544632918959189884.Spec : Prop :=
  ∀ n, P2544632918959189884.a n = (A335876 (n + 1) : ℚ)

end A335876

/-! ## A335876.P17864820077019551122

`A000027(n+1)+A000027(n+1)/A006530(n+1)`
-/

namespace A335876.P17864820077019551122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) + (A000027 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A335876.P17864820077019551122

namespace A335876

/-- `A000027(n+1)+A000027(n+1)/A006530(n+1)` -/
def P17864820077019551122.Spec : Prop :=
  ∀ n, P17864820077019551122.a n = (A335876 (n + 1) : ℚ)

end A335876

/-! ## A335876.P10545786754491008642

`A001478(n+1)/A001478(A006530(n+1))-A001478(n+1)`
-/

namespace A335876.P10545786754491008642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (n + 1) : ℚ) / (A001478 (A006530 (n + 1)).toNat : ℚ) - (A001478 (n + 1) : ℚ)

end

end A335876.P10545786754491008642

namespace A335876

/-- `A001478(n+1)/A001478(A006530(n+1))-A001478(n+1)` -/
def P10545786754491008642.Spec : Prop :=
  ∀ n, P10545786754491008642.a n = (A335876 (n + 1) : ℚ)

end A335876

/-! ## A335876.P11040146545944489271

`Δ[A005563(n)]-(A171462(n+1)+1)`
-/

namespace A335876.P11040146545944489271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A171462 (n + 1) + 1)

end

end A335876.P11040146545944489271

namespace A335876

/-- `Δ[A005563(n)]-(A171462(n+1)+1)` -/
def P11040146545944489271.Spec : Prop :=
  ∀ n, P11040146545944489271.a n = A335876 (n + 1)

theorem P11040146545944489271.correct : P11040146545944489271.Spec := by
  intro n
  simp only [A335876, Nat.add_sub_cancel, A335876.P11040146545944489271.f1, A335876.P11040146545944489271.a, A335876.P3249295182234954832.a, A005563, A005563.P13300161655551567421.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335876

/-! ## A335876.P6929463194119343423

`A023443(A269304(n+1))`
-/

namespace A335876.P6929463194119343423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A269304 (n + 1)).toNat

end

end A335876.P6929463194119343423

namespace A335876

/-- `A023443(A269304(n+1))` -/
def P6929463194119343423.Spec : Prop :=
  ∀ n, P6929463194119343423.a n = A335876 (n + 1)

end A335876

/-! ## A335876.P6024985422009783831

`A122111(A064989(A322865(n+1)))+n+1`
-/

namespace A335876.P6024985422009783831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A064989 (A322865 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A335876.P6024985422009783831

namespace A335876

/-- `A122111(A064989(A322865(n+1)))+n+1` -/
def P6024985422009783831.Spec : Prop :=
  ∀ n, P6024985422009783831.a n = A335876 (n + 1)

end A335876

/-! ## A335876.P4327254597999283770

`A329900(A331188(n+1))+n+1`
-/

namespace A335876.P4327254597999283770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A331188 (n + 1)).toNat + (n + 1 : ℤ)

end

end A335876.P4327254597999283770

namespace A335876

/-- `A329900(A331188(n+1))+n+1` -/
def P4327254597999283770.Spec : Prop :=
  ∀ n, P4327254597999283770.a n = A335876 (n + 1)

end A335876

/-!
# A335877: a(n) = A331410(n) - A329697(n).

The programs for A335877, the canonical program `A335877.P9922726367996187859` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335877 has offset 1).

The definition of A335877 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335877.P9922726367996187859

`A331410(n+1)-A329697(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A335877

/-- `A331410(n+1)-A329697(n+1)` -/
def P9922726367996187859.Spec : Prop :=
  ∀ n, P9922726367996187859.a n = A335877 (n + 1)

theorem P9922726367996187859.correct : P9922726367996187859.Spec := by
  intro n
  simp only [A335877, Nat.add_sub_cancel]

end A335877

/-! ## A335877.P605762637404858792

`A336921(n+1)-A336396(n+1)`
-/

namespace A335877.P605762637404858792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (n + 1) - A336396 (n + 1)

end

end A335877.P605762637404858792

namespace A335877

/-- `A336921(n+1)-A336396(n+1)` -/
def P605762637404858792.Spec : Prop :=
  ∀ n, P605762637404858792.a n = A335877 (n + 1)

theorem P605762637404858792.correct : P605762637404858792.Spec := by
  intro n
  simp only [A335877, Nat.add_sub_cancel, A335877.P605762637404858792.a, A335877.P9922726367996187859.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A336396, A336396.P16969858180878355374.a, A336921, A336921.P608047927114178291.a, A064097, A064097.P7596357096388061613.a, A064415, A064415.P3438679109517359530.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A060681, A060681.P11747361826650309872.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A032742, A032742.P14489579072839730134.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335877

/-! ## A335877.P5722816338183423567

`A336922(n+1)-A336469(n+1)`
-/

namespace A335877.P5722816338183423567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 (n + 1) - A336469 (n + 1)

end

end A335877.P5722816338183423567

namespace A335877

/-- `A336922(n+1)-A336469(n+1)` -/
def P5722816338183423567.Spec : Prop :=
  ∀ n, P5722816338183423567.a n = A335877 (n + 1)

end A335877

/-! ## A335877.P4427778535907690848

`A334861(n+1)-2*A329697(n+1)`
-/

namespace A335877.P4427778535907690848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - 2 * A329697 (n + 1)

end

end A335877.P4427778535907690848

namespace A335877

/-- `A334861(n+1)-2*A329697(n+1)` -/
def P4427778535907690848.Spec : Prop :=
  ∀ n, P4427778535907690848.a n = A335877 (n + 1)

theorem P4427778535907690848.correct : P4427778535907690848.Spec := by
  intro n
  simp only [A335877, Nat.add_sub_cancel, A335877.P4427778535907690848.a, A335877.P9922726367996187859.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A334861, A334861.P8338568547344458298.a, A064097, A064097.P7596357096388061613.a, A064415, A064415.P3438679109517359530.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A060681, A060681.P11747361826650309872.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A032742, A032742.P14489579072839730134.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335877

/-! ## A335877.P12524379395106583774

`2*A331410(n+1)-A334861(n+1)`
-/

namespace A335877.P12524379395106583774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331410 (n + 1) - A334861 (n + 1)

end

end A335877.P12524379395106583774

namespace A335877

/-- `2*A331410(n+1)-A334861(n+1)` -/
def P12524379395106583774.Spec : Prop :=
  ∀ n, P12524379395106583774.a n = A335877 (n + 1)

theorem P12524379395106583774.correct : P12524379395106583774.Spec := by
  intro n
  simp only [A335877, Nat.add_sub_cancel, A335877.P12524379395106583774.a, A335877.P9922726367996187859.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A334861, A334861.P8338568547344458298.a, A064097, A064097.P7596357096388061613.a, A064415, A064415.P3438679109517359530.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A060681, A060681.P11747361826650309872.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A032742, A032742.P14489579072839730134.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335877

/-! ## A335877.P11212513553653633077

`A336921(n+1)-A329697(A336466(n+1))`
-/

namespace A335877.P11212513553653633077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (n + 1) - A329697 (A336466 (n + 1)).toNat

end

end A335877.P11212513553653633077

namespace A335877

/-- `A336921(n+1)-A329697(A336466(n+1))` -/
def P11212513553653633077.Spec : Prop :=
  ∀ n, P11212513553653633077.a n = A335877 (n + 1)

end A335877

/-! ## A335877.P13323594869889873301

`A331410(A336467(n+1))-A336396(n+1)`
-/

namespace A335877.P13323594869889873301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A336467 (n + 1)).toNat - A336396 (n + 1)

end

end A335877.P13323594869889873301

namespace A335877

/-- `A331410(A336467(n+1))-A336396(n+1)` -/
def P13323594869889873301.Spec : Prop :=
  ∀ n, P13323594869889873301.a n = A335877 (n + 1)

end A335877

/-! ## A335877.P4982231915535876936

`A005087(n+1)+A336922(n+1)-A329697(n+1)`
-/

namespace A335877.P4982231915535876936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A336922 (n + 1) - A329697 (n + 1))

end

end A335877.P4982231915535876936

namespace A335877

/-- `A005087(n+1)+A336922(n+1)-A329697(n+1)` -/
def P4982231915535876936.Spec : Prop :=
  ∀ n, P4982231915535876936.a n = A335877 (n + 1)

theorem P4982231915535876936.correct : P4982231915535876936.Spec := by
  intro n
  simp only [A335877, Nat.add_sub_cancel, A335877.P4982231915535876936.a, A335877.P9922726367996187859.a, A005087, A005087.P10391577523985143555.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A336922, A336922.P363598391234132890.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A064097, A064097.P7596357096388061613.a, A064415, A064415.P3438679109517359530.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A060681, A060681.P11747361826650309872.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A032742, A032742.P14489579072839730134.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335877

/-! ## A335877.P14986849542132169824

`A331410(n+1)-(A336469(n+1)+A005087(n+1))`
-/

namespace A335877.P14986849542132169824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - (A336469 (n + 1) + A005087 (n + 1))

end

end A335877.P14986849542132169824

namespace A335877

/-- `A331410(n+1)-(A336469(n+1)+A005087(n+1))` -/
def P14986849542132169824.Spec : Prop :=
  ∀ n, P14986849542132169824.a n = A335877 (n + 1)

end A335877

/-! ## A335877.P357683847059820951

`A087436(n+1)+A336921(n+1)-A329697(n+1)`
-/

namespace A335877.P357683847059820951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) + (A336921 (n + 1) - A329697 (n + 1))

end

end A335877.P357683847059820951

namespace A335877

/-- `A087436(n+1)+A336921(n+1)-A329697(n+1)` -/
def P357683847059820951.Spec : Prop :=
  ∀ n, P357683847059820951.a n = A335877 (n + 1)

theorem P357683847059820951.correct : P357683847059820951.Spec := by
  intro n
  simp only [A335877, Nat.add_sub_cancel, A335877.P357683847059820951.a, A335877.P9922726367996187859.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A336921, A336921.P608047927114178291.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P7596357096388061613.a, A064415, A064415.P3438679109517359530.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001511, A001511.P17146462531039486101.a, A060681, A060681.P11747361826650309872.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A006519, A006519.P10435570611646570274.a, A010684, A010684.P11440423886746696901.a, A032742, A032742.P14489579072839730134.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335877

/-! ## A335877.P14619120313650777599

`A331410(n+1)-(A336396(n+1)+A087436(n+1))`
-/

namespace A335877.P14619120313650777599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - (A336396 (n + 1) + A087436 (n + 1))

end

end A335877.P14619120313650777599

namespace A335877

/-- `A331410(n+1)-(A336396(n+1)+A087436(n+1))` -/
def P14619120313650777599.Spec : Prop :=
  ∀ n, P14619120313650777599.a n = A335877 (n + 1)

theorem P14619120313650777599.correct : P14619120313650777599.Spec := by
  intro n
  simp only [A335877, Nat.add_sub_cancel, A335877.P14619120313650777599.a, A335877.P9922726367996187859.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A336396, A336396.P16969858180878355374.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P7596357096388061613.a, A064415, A064415.P3438679109517359530.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001511, A001511.P17146462531039486101.a, A060681, A060681.P11747361826650309872.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A006519, A006519.P10435570611646570274.a, A010684, A010684.P11440423886746696901.a, A032742, A032742.P14489579072839730134.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335877

/-! ## A335877.P15280323830303644196

`A334097(n+1)-(A334098(n+1)+A329697(n+1))`
-/

namespace A335877.P15280323830303644196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - (A334098 (n + 1) + A329697 (n + 1))

end

end A335877.P15280323830303644196

namespace A335877

/-- `A334097(n+1)-(A334098(n+1)+A329697(n+1))` -/
def P15280323830303644196.Spec : Prop :=
  ∀ n, P15280323830303644196.a n = A335877 (n + 1)

end A335877

/-! ## A335877.P3847986848994596156

`A334861(n+1)-A329697((n+1)²)`
-/

namespace A335877.P3847986848994596156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - A329697 ((n + 1) ^ 2)

end

end A335877.P3847986848994596156

namespace A335877

/-- `A334861(n+1)-A329697((n+1)²)` -/
def P3847986848994596156.Spec : Prop :=
  ∀ n, P3847986848994596156.a n = A335877 (n + 1)

end A335877

/-! ## A335877.P7963562415364823825

`A331410((n+1)²)-A334861(n+1)`
-/

namespace A335877.P7963562415364823825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 ((n + 1) ^ 2) - A334861 (n + 1)

end

end A335877.P7963562415364823825

namespace A335877

/-- `A331410((n+1)²)-A334861(n+1)` -/
def P7963562415364823825.Spec : Prop :=
  ∀ n, P7963562415364823825.a n = A335877 (n + 1)

end A335877

/-!
# A335878: Numbers k such that A329697(k) = A331410(k).

The programs for A335878, the canonical program `A335878.P17774881758164026936` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335878 has offset 1).

The definition of A335878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335878.P17774881758164026936

`eq[1, A335877(n+1)+1]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A335878

/-- `eq[1, A335877(n+1)+1]+1` -/
def P17774881758164026936.Spec : Prop :=
  ∀ n, (P17774881758164026936.a n : ℤ) = A335878 (n + 1)

theorem P17774881758164026936.correct : P17774881758164026936.Spec := by
  intro n
  simp only [A335878, Nat.add_sub_cancel]

end A335878

/-! ## A335878.P18637374070071892

`eq[A329697(n+1), A331410(n+1)]+1`
-/

namespace A335878.P18637374070071892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335878.P18637374070071892

namespace A335878

/-- `eq[A329697(n+1), A331410(n+1)]+1` -/
def P18637374070071892.Spec : Prop :=
  ∀ n, (P18637374070071892.a n : ℤ) = A335878 (n + 1)

end A335878

/-! ## A335878.P17473180387703781143

`eq[A335875(n+1), A335881(n+1)]+1`
-/

namespace A335878.P17473180387703781143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335878.P17473180387703781143

namespace A335878

/-- `eq[A335875(n+1), A335881(n+1)]+1` -/
def P17473180387703781143.Spec : Prop :=
  ∀ n, (P17473180387703781143.a n : ℤ) = A335878 (n + 1)

end A335878

/-! ## A335878.P12233592490564945581

`eq[1, A335877(A008574(n)+n)]`
-/

namespace A335878.P12233592490564945581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (A008574 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335878.P12233592490564945581

namespace A335878

/-- `eq[1, A335877(A008574(n)+n)]` -/
def P12233592490564945581.Spec : Prop :=
  ∀ n, (P12233592490564945581.a n : ℤ) = A335878 (n + 1)

end A335878

/-! ## A335878.P14821536388155030293

`record[n+1-lcm(A054429(n+1), A335877(n+1))]`
-/

namespace A335878.P14821536388155030293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (A054429 (n + 1)) (A335877 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335878.P14821536388155030293

namespace A335878

/-- `record[n+1-lcm(A054429(n+1), A335877(n+1))]` -/
def P14821536388155030293.Spec : Prop :=
  ∀ n, P14821536388155030293.a n = A335878 (n + 1)

end A335878

/-! ## A335878.P13460035947277041649

`eq[1, A335877(A008574(5*n))]`
-/

namespace A335878.P13460035947277041649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (A008574 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335878.P13460035947277041649

namespace A335878

/-- `eq[1, A335877(A008574(5*n))]` -/
def P13460035947277041649.Spec : Prop :=
  ∀ n, (P13460035947277041649.a n : ℤ) = A335878 (n + 1)

end A335878

/-! ## A335878.P13360565278055353877

`record[(n+1)/(A335877((n+1)²)+1)]`
-/

namespace A335878.P13360565278055353877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A335877 ((n + 1) ^ 2) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335878.P13360565278055353877

namespace A335878

/-- `record[(n+1)/(A335877((n+1)²)+1)]` -/
def P13360565278055353877.Spec : Prop :=
  ∀ n, P13360565278055353877.a n = (A335878 (n + 1) : ℚ)

end A335878

/-!
# A335879: a(n) = A332215(A335882(n)).

The programs for A335879, there is no canonical definition to state claims against.
-/

/-! ## A335879.P18310693701558971140

`A332215(A335882(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335879.P18310693701558971140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332215 (A335882 (n + 1)).toNat

end

end A335879.P18310693701558971140

/-! ## A335879.P15140141542482961239

`A332215(eq[2, A331410(n+1)]+1)`
-/

namespace A335879.P15140141542482961239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A335879.P15140141542482961239

/-! ## A335879.P4375827706016907540

`A332215(eq[n, n-a(A331410(n))])` with `a(0)=2`
-/

namespace A335879.P4375827706016907540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A331410 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335879.P4375827706016907540

/-! ## A335879.P12175177729873435827

`A243071(A332213(A335882(n+1)%A144482(n+1)))`
-/

namespace A335879.P12175177729873435827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A332213 (Int.tmod (A335882 (n + 1)) (A144482 (n + 1))).toNat).toNat

end

end A335879.P12175177729873435827

/-!
# A335880: Lexicographically earliest infinite sequence such that a(i) = a(j) => A329697(i) = A329697(j) and A331410(i) = A331410(j) for all i, j >= 1.

The programs for A335880, there is no canonical definition to state claims against.
-/

/-! ## A335880.P14648084217365989249

`A350126(A000265(n+1))%A156724(3*n+5)`
-/

namespace A335880.P14648084217365989249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350126 (A000265 (n + 1)).toNat) (A156724 (3 * n + 5))

end

end A335880.P14648084217365989249

/-! ## A335880.P6759027480545258986

`A350126(((n+1)/2^val(n+1, 2))%A178130(2*n+5))`
-/

namespace A335880.P6759027480545258986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350126 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A178130 (2 * n + 5))).toNat

end

end A335880.P6759027480545258986

/-!
# A335881: a(n) = max(A329697(n), A331410(n)).

The programs for A335881, there is no canonical definition to state claims against.
-/

/-! ## A335881.P5467427087658497482

`A334861(n+1)-A335875(n+1)`
-/

namespace A335881.P5467427087658497482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - A335875 (n + 1)

end

end A335881.P5467427087658497482

/-! ## A335881.P6470047967582663889

`A335875(n+1)+abs(A335877(n+1))`
-/

namespace A335881.P6470047967582663889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (n + 1) + |A335877 (n + 1)|

end

end A335881.P6470047967582663889

/-! ## A335881.P18159226356570450645

`A329697(n+1)+A331410(n+1)-A335875(n+1)`
-/

namespace A335881.P18159226356570450645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A331410 (n + 1) - A335875 (n + 1))

end

end A335881.P18159226356570450645

/-! ## A335881.P8846960898654293786

`2*A331410(n+1)-A335877(n+1)-A335875(n+1)`
-/

namespace A335881.P8846960898654293786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331410 (n + 1) - A335877 (n + 1) - A335875 (n + 1)

end

end A335881.P8846960898654293786

/-! ## A335881.P16949100085162744931

`A005087(n+1)+A336922(n+1)+A329697(n+1)-A335875(n+1)`
-/

namespace A335881.P16949100085162744931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A336922 (n + 1) + A329697 (n + 1)) - A335875 (n + 1)

end

end A335881.P16949100085162744931

/-! ## A335881.P2852509781210496885

`A335877(n+1)+A329697((n+1)²)-A335875(n+1)`
-/

namespace A335881.P2852509781210496885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + A329697 ((n + 1) ^ 2) - A335875 (n + 1)

end

end A335881.P2852509781210496885

/-! ## A335881.P17155187339244992656

`A331410((n+1)²)-A335877(n+1)-A335875(n+1)`
-/

namespace A335881.P17155187339244992656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 ((n + 1) ^ 2) - A335877 (n + 1) - A335875 (n + 1)

end

end A335881.P17155187339244992656

/-!
# A335882: Numbers k for which A331410(k) = 2.

The programs for A335882, the canonical program `A335882.P10828346716437010302` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335882 has offset 1).

The definition of A335882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335882.P10828346716437010302

`eq[2, A331410(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A335882

/-- `eq[2, A331410(n+1)]+1` -/
def P10828346716437010302.Spec : Prop :=
  ∀ n, (P10828346716437010302.a n : ℤ) = A335882 (n + 1)

theorem P10828346716437010302.correct : P10828346716437010302.Spec := by
  intro n
  simp only [A335882, Nat.add_sub_cancel]

end A335882

/-! ## A335882.P2738789690660694448

`eq[n, n-a(A331410(n))]` with `a(0)=2`
-/

namespace A335882.P2738789690660694448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A331410 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335882.P2738789690660694448

namespace A335882

/-- `eq[n, n-a(A331410(n))]` -/
def P2738789690660694448.Spec : Prop :=
  ∀ n, (P2738789690660694448.a n : ℤ) = A335882 (n + 1)

end A335882

/-! ## A335882.P15326066759541234303

`eq[2, A331410(A008574(n))]`
-/

namespace A335882.P15326066759541234303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335882.P15326066759541234303

namespace A335882

/-- `eq[2, A331410(A008574(n))]` -/
def P15326066759541234303.Spec : Prop :=
  ∀ n, (P15326066759541234303.a n : ℤ) = A335882 (n + 1)

end A335882

/-! ## A335882.P16852634225625595025

`eq[3, A331410(A008458(n))]`
-/

namespace A335882.P16852634225625595025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335882.P16852634225625595025

namespace A335882

/-- `eq[3, A331410(A008458(n))]` -/
def P16852634225625595025.Spec : Prop :=
  ∀ n, (P16852634225625595025.a n : ℤ) = A335882 (n + 1)

end A335882

/-! ## A335882.P6575098755485196120

`eq[3, A331410(A008486(n))]`
-/

namespace A335882.P6575098755485196120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335882.P6575098755485196120

namespace A335882

/-- `eq[3, A331410(A008486(n))]` -/
def P6575098755485196120.Spec : Prop :=
  ∀ n, (P6575098755485196120.a n : ℤ) = A335882 (n + 1)

end A335882

/-! ## A335882.P16829811130813851670

`eq[4, A331410(A008706(n))]`
-/

namespace A335882.P16829811130813851670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335882.P16829811130813851670

namespace A335882

/-- `eq[4, A331410(A008706(n))]` -/
def P16829811130813851670.Spec : Prop :=
  ∀ n, (P16829811130813851670.a n : ℤ) = A335882 (n + 1)

end A335882

/-! ## A335882.P1515552177882071232

`A153152(eq[2, A331410(n+1)])`
-/

namespace A335882.P1515552177882071232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335882.P1515552177882071232

namespace A335882

/-- `A153152(eq[2, A331410(n+1)])` -/
def P1515552177882071232.Spec : Prop :=
  ∀ n, P1515552177882071232.a n = A335882 (n + 1)

end A335882

/-! ## A335882.P4727106347006485415

`eq[2, A331410(A233583(n+1))]`
-/

namespace A335882.P4727106347006485415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335882.P4727106347006485415

namespace A335882

/-- `eq[2, A331410(A233583(n+1))]` -/
def P4727106347006485415.Spec : Prop :=
  ∀ n, (P4727106347006485415.a n : ℤ) = A335882 (n + 1)

end A335882

/-!
# A335883: The least k for which A335884(k) = n.

The programs for A335883, there is no canonical definition to state claims against.
-/

/-! ## A335883.P15466650250587991934

`A129759(A123222(n+1))`
-/

namespace A335883.P15466650250587991934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (A123222 (n + 1)).toNat

end

end A335883.P15466650250587991934

/-! ## A335883.P11077342227948303272

`A129759(A127927(n+1))`
-/

namespace A335883.P11077342227948303272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (A127927 (n + 1)).toNat

end

end A335883.P11077342227948303272

/-! ## A335883.P6955139527188641059

`A330225(A124642(n+1))`
-/

namespace A335883.P6955139527188641059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (A124642 (n + 1)).toNat

end

end A335883.P6955139527188641059

/-!
# A335884: The length of a longest path from n to a power of 2, when applying the nondeterministic maps k -> k - k/p and k -> k + k/p, where p can be any of the odd prime factors of k, and the maps can be applied in any order.

The programs for A335884, there is no canonical definition to state claims against.
-/

/-! ## A335884.P8513151772457646566

`A334097(A003963(n+1))%A069069(A007318(n))`
-/

namespace A335884.P8513151772457646566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334097 (A003963 (n + 1)).toNat) (A069069 (A007318 n).toNat)

end

end A335884.P8513151772457646566

/-! ## A335884.P1578274589039186413

`A334097(A003963(n+1)%A056987(n+1))`
-/

namespace A335884.P1578274589039186413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (Int.tmod (A003963 (n + 1)) (A056987 (n + 1))).toNat

end

end A335884.P1578274589039186413

/-! ## A335884.P15916987906876206716

`A334097(A003963(n+1))+A000007(A032817(n+1))`
-/

namespace A335884.P15916987906876206716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A003963 (n + 1)).toNat + A000007 (A032817 (n + 1)).toNat

end

end A335884.P15916987906876206716

/-! ## A335884.P3547942989722616914

`A334097(A003963(n+1))+A073059(A005893(n))`
-/

namespace A335884.P3547942989722616914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A003963 (n + 1)).toNat + A073059 (A005893 n).toNat

end

end A335884.P3547942989722616914

/-! ## A335884.P6827009550015902660

`A334097(A003963(n+1))+A000007(A183191(n+1))`
-/

namespace A335884.P6827009550015902660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A003963 (n + 1)).toNat + A000007 (A183191 (n + 1)).toNat

end

end A335884.P6827009550015902660

/-! ## A335884.P3896040601187146566

`A334097(A003963(n+1))+A000007(A108105(n))`
-/

namespace A335884.P3896040601187146566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A003963 (n + 1)).toNat + A000007 (A108105 n).toNat

end

end A335884.P3896040601187146566

/-!
# A335885: The length of a shortest path from n to a power of 2, when applying the nondeterministic maps k -> k - k/p and k -> k + k/p, where p can be any of the odd prime factors of k, and the maps can be applied in any order.

The programs for A335885, there is no canonical definition to state claims against.
-/

/-! ## A335885.P11618532271637100043

`A335875(n+1)-A267006(A031934(n+1))`
-/

namespace A335885.P11618532271637100043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (n + 1) - A267006 (A031934 (n + 1)).toNat

end

end A335885.P11618532271637100043

/-! ## A335885.P3411113179441866201

`A072491(A335875(n+1)^A198328(n+1))`
-/

namespace A335885.P3411113179441866201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.roundAway ((A335875 (n + 1) : ℚ) ^ (A198328 (n + 1) : ℤ))).toNat

end

end A335885.P3411113179441866201

/-! ## A335885.P17517899987854317244

`A072491(A335875(n+1)^A046523(n+1))`
-/

namespace A335885.P17517899987854317244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.roundAway ((A335875 (n + 1) : ℚ) ^ (A046523 (n + 1) : ℤ))).toNat

end

end A335885.P17517899987854317244

/-! ## A335885.P6430887149131100385

`A102669(A167321(n+1))`
-/

namespace A335885.P6430887149131100385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A167321 (n + 1)).toNat

end

end A335885.P6430887149131100385

/-! ## A335885.P3104848981384505400

`A305832(A110316(n))`
-/

namespace A335885.P3104848981384505400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305832 (A110316 n).toNat

end

end A335885.P3104848981384505400

/-!
# A335886: The heavy sandwiches sequence (see Comments lines for definition).

The programs for A335886, there is no canonical definition to state claims against.
-/

/-! ## A335886.P9288665481644834710

`A062813(a(n-1))` with `a(0)=1, a(1)=2, a(2)=22, a(3)=4`
-/

namespace A335886.P9288665481644834710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 22, 4] fun n a =>
  A062813 (a (n - 1)).toNat

end

end A335886.P9288665481644834710

/-!
# A335889: a(n) is the number of Mersenne primes between consecutive perfect numbers.

The programs for A335889, there is no canonical definition to state claims against.
-/

/-! ## A335889.P8421194197430205073

`val(A002024(A286704(n)+3*n)+1, 2)`
-/

namespace A335889.P8421194197430205073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002024 (A286704 n + (3 * n : ℤ)).toNat + 1).toNat 2

end

end A335889.P8421194197430205073

/-! ## A335889.P18385061099291710312

`A266313(A286169(n)+A081221(n+1))`
-/

namespace A335889.P18385061099291710312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266313 (A286169 n + A081221 (n + 1)).toNat

end

end A335889.P18385061099291710312

/-! ## A335889.P18337085813118195092

`A010873(A000124(n)*A008837(n+1))`
-/

namespace A335889.P18337085813118195092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000124 n * A008837 (n + 1)).toNat

end

end A335889.P18337085813118195092

/-! ## A335889.P10967724058898868043

`and(A002024(A140047(n+1)), A010684(n))`
-/

namespace A335889.P10967724058898868043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002024 (A140047 (n + 1)).toNat) (A010684 n)

end

end A335889.P10967724058898868043

/-! ## A335889.P1763163503856851645

`and(A047541(n+1), A296774(A036469(n)))`
-/

namespace A335889.P1763163503856851645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047541 (n + 1)) (A296774 (A036469 n).toNat)

end

end A335889.P1763163503856851645

/-!
# A335890: Number of equivalence classes of 4-binomial complexity for binary words of length n. Or, equivalently, the number of distinct 4-decks of binary words of length n.

The programs for A335890, there is no canonical definition to state claims against.
-/

/-! ## A335890.P207265117658149113

`A131452(A166327(n))`
-/

namespace A335890.P207265117658149113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (A166327 n).toNat

end

end A335890.P207265117658149113

/-! ## A335890.P13908485476041219102

`A140201(A145117(n+1))`
-/

namespace A335890.P13908485476041219102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (A145117 (n + 1)).toNat

end

end A335890.P13908485476041219102

/-! ## A335890.P7790610211184775589

`A287707(A289373(n+1))`
-/

namespace A335890.P7790610211184775589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287707 (A289373 (n + 1)).toNat

end

end A335890.P7790610211184775589

/-! ## A335890.P7277559009511923979

`A287707(A290628(n+1))`
-/

namespace A335890.P7277559009511923979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287707 (A290628 (n + 1)).toNat

end

end A335890.P7277559009511923979

/-! ## A335890.P7662078778942385264

`A004001(4*A008862(n))`
-/

namespace A335890.P7662078778942385264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (4 * A008862 n).toNat

end

end A335890.P7662078778942385264

/-!
# A335891: Number of equivalence classes of 5-binomial complexity for binary words of length n. Or, equivalently, the number of distinct 5-decks of binary words of length n.

The programs for A335891, there is no canonical definition to state claims against.
-/

/-! ## A335891.P4676357712234032511

`A080588(A220493(n+2))`
-/

namespace A335891.P4676357712234032511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080588 (A220493 (n + 2)).toNat

end

end A335891.P4676357712234032511

/-! ## A335891.P1665580447121729592

`record[2*A220493(A187200(n+1))]`
-/

namespace A335891.P1665580447121729592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220493 (A187200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335891.P1665580447121729592

/-! ## A335891.P16332388243753047063

`∑[2^n]+2-A097031(A041739(n)+1)`
-/

namespace A335891.P16332388243753047063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - A097031 (A041739 n + 1).toNat

end

end A335891.P16332388243753047063

/-! ## A335891.P6722612593660584649

`A220051(n)+Δ[2^n-A103754(3*n+1)]`
-/

namespace A335891.P6722612593660584649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A103754 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220051 n + (f1 (n + 1) - f1 n)

end

end A335891.P6722612593660584649

/-!
# A335894: Smallest side of integer-sided primitive triangles whose angles A < B < C are in arithmetic order.

The programs for A335894, there is no canonical definition to state claims against.
-/

/-! ## A335894.P16430115900305370627

`A335897(n+1)-(A335896(n+1)+A335895(n+1))`
-/

namespace A335894.P16430115900305370627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335897 (n + 1) - (A335896 (n + 1) + A335895 (n + 1))

end

end A335894.P16430115900305370627

/-! ## A335894.P7176846277875894957

`A357274(∑[log2(gcd(2, n))]+n)`
-/

namespace A335894.P7176846277875894957
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357274 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ))).toNat

end

end A335894.P7176846277875894957

/-! ## A335894.P1293694793346099941

`A357274(floor(n/2)+n+1)`
-/

namespace A335894.P1293694793346099941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357274 (⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat

end

end A335894.P1293694793346099941

/-! ## A335894.P5571727339319979386

`A335893(3*n+1)`
-/

namespace A335894.P5571727339319979386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (3 * n + 1)

end

end A335894.P5571727339319979386

/-! ## A335894.P8539311477669159344

`or(A000007(n), A335893(A016777(n)))`
-/

namespace A335894.P8539311477669159344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A335893 (A016777 n).toNat)

end

end A335894.P8539311477669159344

/-! ## A335894.P10033742125805437782

`or(A000035(2*n), A335893(A016777(n)))`
-/

namespace A335894.P10033742125805437782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (2 * n)) (A335893 (A016777 n).toNat)

end

end A335894.P10033742125805437782

/-!
# A335895: Middle side of primitive triples, in nondecreasing order, for integer-sided triangles whose angles A < B < C are in arithmetic progression.

The programs for A335895, there is no canonical definition to state claims against.
-/

/-! ## A335895.P7752250464888153730

`A357277(∑[log2(gcd(2, n))])`
-/

namespace A335895.P7752250464888153730
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357277 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A335895.P7752250464888153730

/-! ## A335895.P10682548394836700967

`A357277(∑[char[2*n]])`
-/

namespace A335895.P10682548394836700967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335895.P10682548394836700967

/-! ## A335895.P3010819370160080333

`or(1, A357277(A008619(n)))`
-/

namespace A335895.P3010819370160080333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A357277 (A008619 n).toNat)

end

end A335895.P3010819370160080333

/-! ## A335895.P2678799715036754

`A357277(A008619(n))+A319691(2*(n+1))`
-/

namespace A335895.P2678799715036754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357277 (A008619 n).toNat + A319691 (2 * (n + 1))

end

end A335895.P2678799715036754

/-! ## A335895.P9111534193270303759

`A357277(A008619(n))+C(2, A043589(n+1))`
-/

namespace A335895.P9111534193270303759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357277 (A008619 n).toNat + (Nat.choose 2 (A043589 (n + 1)).toNat : ℤ)

end

end A335895.P9111534193270303759

/-! ## A335895.P17619774067369227135

`A335897(n+1)-(A335896(n+1)+A335894(n+1))`
-/

namespace A335895.P17619774067369227135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335897 (n + 1) - (A335896 (n + 1) + A335894 (n + 1))

end

end A335895.P17619774067369227135

/-! ## A335895.P5429311434962656833

`A357277(A008619(n))%A027688(n+2)`
-/

namespace A335895.P5429311434962656833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357277 (A008619 n).toNat) (A027688 (n + 2))

end

end A335895.P5429311434962656833

/-! ## A335895.P12158527771293184371

`A357277(A008619(n))+A000007(2*n)-A000007(n)`
-/

namespace A335895.P12158527771293184371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357277 (A008619 n).toNat + (A000007 (2 * n) - A000007 n)

end

end A335895.P12158527771293184371

/-! ## A335895.P5009492996642784947

`A335893(A168329(n+1)-1)`
-/

namespace A335895.P5009492996642784947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (A168329 (n + 1) - 1).toNat

end

end A335895.P5009492996642784947

/-! ## A335895.P15313047138796888943

`A335893(3*n+2)`
-/

namespace A335895.P15313047138796888943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (3 * n + 2)

end

end A335895.P15313047138796888943

/-! ## A335895.P2663422769963832725

`A357277(A008619(n))+A045827(3*n+1)`
-/

namespace A335895.P2663422769963832725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357277 (A008619 n).toNat + A045827 (3 * n + 1)

end

end A335895.P2663422769963832725

/-! ## A335895.P5003908195904305550

`filter[A020888(n+2), A319691(#)]`
-/

namespace A335895.P5003908195904305550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A335895.P5003908195904305550

/-! ## A335895.P2514787512407203414

`A357277(A008619(n))+A028956(A106881(2*n+1))²`
-/

namespace A335895.P2514787512407203414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357277 (A008619 n).toNat + A028956 (A106881 (2 * n + 1)).toNat ^ 2

end

end A335895.P2514787512407203414

/-!
# A335896: Largest side of integer-sided primitive triangles whose angles A < B < C are in arithmetic order.

The programs for A335896, there is no canonical definition to state claims against.
-/

/-! ## A335896.P17204555461510737203

`A335894(xor(1, n)+1)+A335894(n+1)`
-/

namespace A335896.P17204555461510737203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335894 (Nat.xor 1 n + 1) + A335894 (n + 1)

end

end A335896.P17204555461510737203

/-! ## A335896.P2543177380641155508

`A335894((-1)^n+1+n)+A335894(n+1)`
-/

namespace A335896.P2543177380641155508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335894 ((-1) ^ n + 1 + (n : ℤ)).toNat + A335894 (n + 1)

end

end A335896.P2543177380641155508

/-! ## A335896.P13346545432323799033

`A335897(n+1)-(A335895(n+1)+A335894(n+1))`
-/

namespace A335896.P13346545432323799033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335897 (n + 1) - (A335895 (n + 1) + A335894 (n + 1))

end

end A335896.P13346545432323799033

/-! ## A335896.P15626598289072884935

`A335893(A168329(n+1))`
-/

namespace A335896.P15626598289072884935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (A168329 (n + 1)).toNat

end

end A335896.P15626598289072884935

/-! ## A335896.P13755512961913578570

`A335893(3*A109613(n))`
-/

namespace A335896.P13755512961913578570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (3 * A109613 n).toNat

end

end A335896.P13755512961913578570

/-! ## A335896.P11657741515755528709

`A335893(3*(n+1))`
-/

namespace A335896.P11657741515755528709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (3 * (n + 1))

end

end A335896.P11657741515755528709

/-!
# A335897: Perimeters of primitive integer-sided triangles whose angles A < B < C are in arithmetic order.

The programs for A335897, there is no canonical definition to state claims against.
-/

/-! ## A335897.P9313831580366552679

`A335894(n+1)+A335895(n+1)+A335896(n+1)`
-/

namespace A335897.P9313831580366552679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335894 (n + 1) + A335895 (n + 1) + A335896 (n + 1)

end

end A335897.P9313831580366552679

/-! ## A335897.P13588694138451042238

`A357278(A008619(n))+A335894(n+1)`
-/

namespace A335897.P13588694138451042238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357278 (A008619 n).toNat + A335894 (n + 1)

end

end A335897.P13588694138451042238

/-! ## A335897.P12530428031625142012

`A335893(3*n+1)+A335896(n+1)+A335895(n+1)`
-/

namespace A335897.P12530428031625142012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (3 * n + 1) + (A335896 (n + 1) + A335895 (n + 1))

end

end A335897.P12530428031625142012

/-!
# A335898: a(n) = a(floor((n-1)/a(n-1))) + a(floor((n-2)/a(n-2))) with a(1) = a(2) = 1.

The programs for A335898, the canonical program `A335898.P4812134267755531036` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335898 has offset 1).

The definition of A335898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/a(n-1))-1)+a(floor((n-1)/a(n-2))-1)` (program `A335898.P4812134267755531036`, by `A335898.P4812134267755531036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335898.P4812134267755531036

`a(floor(n/a(n-1))-1)+a(floor((n-1)/a(n-2))-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335898

/-- `a(floor(n/a(n-1))-1)+a(floor((n-1)/a(n-2))-1)` -/
def P4812134267755531036.Spec : Prop :=
  ∀ n, (P4812134267755531036.a n : ℤ) = A335898 (n + 1)

theorem P4812134267755531036.correct : P4812134267755531036.Spec := by
  intro n
  simp only [A335898, Nat.add_sub_cancel]

end A335898

/-!
# A335899: Squares visited when moving on a square-spiral numbered board to an unvisited diagonally adjacent square containing the spiral number with the fewest divisors. In case of a tie it chooses the square with the lowest spiral number.

The programs for A335899, there is no canonical definition to state claims against.
-/

/-! ## A335899.P9401891771409008541

`A335816(A187829(n+1)+A178334(n))`
-/

namespace A335899.P9401891771409008541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (A187829 (n + 1) + A178334 n).toNat

end

end A335899.P9401891771409008541

/-! ## A335899.P8343119838917281893

`A335816(A187829(n+1)+A178487(n))`
-/

namespace A335899.P8343119838917281893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (A187829 (n + 1) + A178487 n).toNat

end

end A335899.P8343119838917281893

/-! ## A335899.P17240452030812929961

`A335816(n+2)-A049084(A055258(n))`
-/

namespace A335899.P17240452030812929961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (n + 2) - A049084 (A055258 n).toNat

end

end A335899.P17240452030812929961

/-! ## A335899.P17451302480321736267

`A335816(n+2)^A289508(A000079(n))`
-/

namespace A335899.P17451302480321736267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335816 (n + 2) : ℚ) ^ (A289508 (A000079 n).toNat : ℤ)

end

end A335899.P17451302480321736267

/-! ## A335899.P5947835346830430912

`A335816(n+2)-A000007(A219901(n+1))`
-/

namespace A335899.P5947835346830430912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335816 (n + 2) - A000007 (A219901 (n + 1)).toNat

end

end A335899.P5947835346830430912

