import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
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
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A183701: 

The programs for A183701, there is no canonical definition to state claims against.
-/

/-! ## A183701.P408648333162750061

`A183710((n+1)²+n²)`
-/

namespace A183701.P408648333162750061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 ((n + 1) ^ 2 + n ^ 2)

end

end A183701.P408648333162750061

/-! ## A183701.P178672605066115655

`record[gcd(A114327(n), A183710(n+1))]`
-/

namespace A183701.P178672605066115655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A183710 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183701.P178672605066115655

/-!
# A183702: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock nonsingular.

The programs for A183702, there is no canonical definition to state claims against.
-/

/-! ## A183702.P1372881830943625180

`A183710(∑[n]+1)`
-/

namespace A183702.P1372881830943625180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183702.P1372881830943625180

/-! ## A183702.P11455634319969715316

`lcm(2, A183710(A000124(n)))`
-/

namespace A183702.P11455634319969715316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183710 (A000124 n).toNat)

end

end A183702.P11455634319969715316

/-! ## A183702.P7346663220375128191

`record[root(A183710(n+1), A059268(n))]`
-/

namespace A183702.P7346663220375128191
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183710 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183702.P7346663220375128191

/-! ## A183702.P6225975390032767733

`record[root(A183710(n+1), A002260(n+1))]`
-/

namespace A183702.P6225975390032767733
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183710 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183702.P6225975390032767733

/-! ## A183702.P7093765134371712154

`record[root(A183710(n+1), A135837(n+1))]`
-/

namespace A183702.P7093765134371712154
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183710 (n + 1) : ℝ) ^ (1 / (A135837 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183702.P7093765134371712154

/-!
# A183703: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock nonsingular.

The programs for A183703, there is no canonical definition to state claims against.
-/

/-! ## A183703.P12811979194521156096

`A183710(∑[n+1]+2)`
-/

namespace A183703.P12811979194521156096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183703.P12811979194521156096

/-! ## A183703.P10774540130423990693

`record[root(A183710(n+2), A059268(n))]`
-/

namespace A183703.P10774540130423990693
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183710 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183703.P10774540130423990693

/-! ## A183703.P88863013713348867

`record[A183710(Δ[A003453(n+5)])]`
-/

namespace A183703.P88863013713348867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183703.P88863013713348867

/-! ## A183703.P14910058519217885562

`record[A183710(record[A316669(n+2)])]`
-/

namespace A183703.P14910058519217885562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183703.P14910058519217885562

/-! ## A183703.P4746631712710041674

`record[A183710(A198453(n+1))]`
-/

namespace A183703.P4746631712710041674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183703.P4746631712710041674

/-!
# A183704: Number of (n+1)X4 0..3 arrays with every 2X2 subblock nonsingular.

The programs for A183704, there is no canonical definition to state claims against.
-/

/-! ## A183704.P6453219912227127059

`A183710(∑[n+2]+4)`
-/

namespace A183704.P6453219912227127059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183704.P6453219912227127059

/-!
# A183705: 

The programs for A183705, there is no canonical definition to state claims against.
-/

/-! ## A183705.P1958279380751338686

`A183710(A055999(n)+10)`
-/

namespace A183705.P1958279380751338686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 (A055999 n + 10).toNat

end

end A183705.P1958279380751338686

/-! ## A183705.P7822838298206325142

`A183710(A155212(n)+5)`
-/

namespace A183705.P7822838298206325142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183710 (A155212 n + 5).toNat

end

end A183705.P7822838298206325142

/-!
# A183711: 1/20 of the number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease.

The programs for A183711, there is no canonical definition to state claims against.
-/

/-! ## A183711.P3983212621558092142

`A183719(∑[4*n]+1)`
-/

namespace A183711.P3983212621558092142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183711.P3983212621558092142

/-! ## A183711.P13056742756902996066

`A010893(n)!*A183719(A001844(n))`
-/

namespace A183711.P13056742756902996066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010893 (n + 13)).toNat : ℤ) * A183719 (A001844 n).toNat

end

end A183711.P13056742756902996066

/-! ## A183711.P2062545635386098158

`A064284(n+1)*A183719(A001844(n))`
-/

namespace A183711.P2062545635386098158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 (n + 1) * A183719 (A001844 n).toNat

end

end A183711.P2062545635386098158

/-! ## A183711.P13558372417269508567

`A059841(10*n)*A183719(A001844(n))`
-/

namespace A183711.P13558372417269508567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (10 * n) * A183719 (A001844 n).toNat

end

end A183711.P13558372417269508567

/-! ## A183711.P3887262007400066517

`A183719(A001844(n))+A008683(20*(n+1))`
-/

namespace A183711.P3887262007400066517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A001844 n).toNat + A008683 (20 * (n + 1))

end

end A183711.P3887262007400066517

/-!
# A183712: 1/20 of the number of (n+1) X 3 0..4 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease.

The programs for A183712, the canonical program `A183712.P17767484336011408450` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183712 has offset 1).

The definition of A183712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183712.P17767484336011408450

`3*a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=17, a(2)=54`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A183712

/-- `3*a(n-1)+a(n-2)-a(n-3)` -/
def P17767484336011408450.Spec : Prop :=
  ∀ n, P17767484336011408450.a n = A183712 (n + 1)

theorem P17767484336011408450.correct : P17767484336011408450.Spec := by
  intro n
  simp only [A183712, Nat.add_sub_cancel]

end A183712

/-! ## A183712.P5472637559408162763

`A030186(n+1)+A033505(n+1)`
-/

namespace A183712.P5472637559408162763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 (n + 1) + A033505 (n + 1)

end

end A183712.P5472637559408162763

namespace A183712

/-- `A030186(n+1)+A033505(n+1)` -/
def P5472637559408162763.Spec : Prop :=
  ∀ n, P5472637559408162763.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P6297323751471549703

`ogf((5+2x-2x^2)/(1-3x-x^2+x^3))`
-/

namespace A183712.P6297323751471549703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2, -2] [1, -3, -1, 1] n

end

end A183712.P6297323751471549703

namespace A183712

/-- `ogf((5+2x-2x^2)/(1-3x-x^2+x^3))` -/
def P6297323751471549703.Spec : Prop :=
  ∀ n, P6297323751471549703.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P3644296477879694191

`A030186(n+2)-a(n-1)` with `a(0)=5`
-/

namespace A183712.P3644296477879694191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A030186 (n + 2) - a (n - 1)

end

end A183712.P3644296477879694191

namespace A183712

/-- `A030186(n+2)-a(n-1)` -/
def P3644296477879694191.Spec : Prop :=
  ∀ n, P3644296477879694191.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P16851138183866333616

`A181301(n+2)-A033505(n)`
-/

namespace A183712.P16851138183866333616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 (n + 2) - A033505 n

end

end A183712.P16851138183866333616

namespace A183712

/-- `A181301(n+2)-A033505(n)` -/
def P16851138183866333616.Spec : Prop :=
  ∀ n, P16851138183866333616.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P5571161593400336228

`A033505(n+1)+Δ[A033505(n)]`
-/

namespace A183712.P5571161593400336228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 (n + 1) + (f1 (n + 1) - f1 n)

end

end A183712.P5571161593400336228

namespace A183712

/-- `A033505(n+1)+Δ[A033505(n)]` -/
def P5571161593400336228.Spec : Prop :=
  ∀ n, P5571161593400336228.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P15906654485571270003

`∑[A030186(n)]+2*A030186(n+1)`
-/

namespace A183712.P15906654485571270003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A030186 (n + 1)

end

end A183712.P15906654485571270003

namespace A183712

/-- `∑[A030186(n)]+2*A030186(n+1)` -/
def P15906654485571270003.Spec : Prop :=
  ∀ n, P15906654485571270003.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P16907948900293521518

`A181301(n+2)-A365967(2*n+1)`
-/

namespace A183712.P16907948900293521518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 (n + 2) - A365967 (2 * n + 1)

end

end A183712.P16907948900293521518

namespace A183712

/-- `A181301(n+2)-A365967(2*n+1)` -/
def P16907948900293521518.Spec : Prop :=
  ∀ n, P16907948900293521518.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P9119213653914764944

`A316726(n+1)+A316726(n)-A030186(n)`
-/

namespace A183712.P9119213653914764944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316726 (n + 1) + (A316726 n - A030186 n)

end

end A183712.P9119213653914764944

namespace A183712

/-- `A316726(n+1)+A316726(n)-A030186(n)` -/
def P9119213653914764944.Spec : Prop :=
  ∀ n, P9119213653914764944.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P1281278392547402845

`A220563(n+1)+A220563(n+2)-A030186(n)`
-/

namespace A183712.P1281278392547402845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220563 (n + 1) + (A220563 (n + 2) - A030186 n)

end

end A183712.P1281278392547402845

namespace A183712

/-- `A220563(n+1)+A220563(n+2)-A030186(n)` -/
def P1281278392547402845.Spec : Prop :=
  ∀ n, P1281278392547402845.a n = A183712 (n + 1)

end A183712

/-! ## A183712.P1276080527614361470

`Δ[Δ[A030186(n+1)/2]]`
-/

namespace A183712.P1276080527614361470
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030186 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183712.P1276080527614361470

namespace A183712

/-- `Δ[Δ[A030186(n+1)/2]]` -/
def P1276080527614361470.Spec : Prop :=
  ∀ n, P1276080527614361470.a n = (A183712 (n + 1) : ℚ)

end A183712

/-!
# A183713: 1/20 of the number of (n+1) X 4 0..4 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease.

The programs for A183713, there is no canonical definition to state claims against.
-/

/-! ## A183713.P10388373169642167237

`A183719(∑[n+2]+4)`
-/

namespace A183713.P10388373169642167237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183713.P10388373169642167237

/-! ## A183713.P9266277822349266904

`lcm(2, A183719(A167614(n+1)))`
-/

namespace A183713.P9266277822349266904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183719 (A167614 (n + 1)).toNat)

end

end A183713.P9266277822349266904

/-! ## A183713.P5112839827267347220

`A183719(A167614(n+1))+A034547(n+1)`
-/

namespace A183713.P5112839827267347220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A167614 (n + 1)).toNat + A034547 (n + 1)

end

end A183713.P5112839827267347220

/-! ## A183713.P8863696490434834838

`A183719(A167614(n+1))%A183684(n+1)`
-/

namespace A183713.P8863696490434834838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183719 (A167614 (n + 1)).toNat) (A183684 (n + 1))

end

end A183713.P8863696490434834838

/-! ## A183713.P14415306641007305425

`A033273(A014963(n+2))*A183719(A167614(n+1))`
-/

namespace A183713.P14415306641007305425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A014963 (n + 2)).toNat * A183719 (A167614 (n + 1)).toNat

end

end A183713.P14415306641007305425

/-!
# A183714: 1/20 of the number of (n+1) X 5 0..4 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease.

The programs for A183714, there is no canonical definition to state claims against.
-/

/-! ## A183714.P15720762453364726899

`A183719(∑[n+5]+5-2*n)`
-/

namespace A183714.P15720762453364726899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - 2 * n)

end

end A183714.P15720762453364726899

/-! ## A183714.P14238275204914465827

`lcm(A130151(n), A183719(A055999(n)+10))`
-/

namespace A183714.P14238275204914465827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130151 n) (A183719 (A055999 n + 10).toNat)

end

end A183714.P14238275204914465827

/-! ## A183714.P17089532932813282235

`or(A000007(n), A183719(A000124(n+3)+3))`
-/

namespace A183714.P17089532932813282235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183719 (A000124 (n + 3) + 3).toNat)

end

end A183714.P17089532932813282235

/-! ## A183714.P12257062247939571722

`A183719(Δ[A006503(n)]+7)%A183715(n+1)`
-/

namespace A183714.P12257062247939571722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183719 (f1 (n + 1) - f1 n + 7).toNat) (A183715 (n + 1))

end

end A183714.P12257062247939571722

/-! ## A183714.P580851642110569270

`A183719(A000124(n+3)+3)%A183675(n+1)`
-/

namespace A183714.P580851642110569270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183719 (A000124 (n + 3) + 3).toNat) (A183675 (n + 1))

end

end A183714.P580851642110569270

/-!
# A183715: 1/20 of the number of (n+1) X 6 0..4 arrays with every 2X2 subblock strictly increasing clockwise or counterclockwise with one decrease.

The programs for A183715, there is no canonical definition to state claims against.
-/

/-! ## A183715.P12502687143342372020

`A183719(A374005(n+1))`
-/

namespace A183715.P12502687143342372020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A374005 (n + 1)).toNat

end

end A183715.P12502687143342372020

/-! ## A183715.P16420701375581350724

`A183719(A133263(n+4)+3)`
-/

namespace A183715.P16420701375581350724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A133263 (n + 4) + 3).toNat

end

end A183715.P16420701375581350724

/-! ## A183715.P6598092358741709902

`A183719(A000124(n+4)+4)`
-/

namespace A183715.P6598092358741709902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A000124 (n + 4) + 4).toNat

end

end A183715.P6598092358741709902

/-! ## A183715.P5005094047112677186

`A183719(A027379(n+2)+8)`
-/

namespace A183715.P5005094047112677186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A027379 (n + 2) + 8).toNat

end

end A183715.P5005094047112677186

/-! ## A183715.P5940305295354784889

`A183719(A161680(n+7)-6-2*n)`
-/

namespace A183715.P5940305295354784889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A161680 (n + 7) - 6 - (2 * n : ℤ)).toNat

end

end A183715.P5940305295354784889

/-!
# A183717: 1/20 of the number of (n+1) X 8 0..4 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease.

The programs for A183717, there is no canonical definition to state claims against.
-/

/-! ## A183717.P412935069494144935

`A183719(A374008(n+1))`
-/

namespace A183717.P412935069494144935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A374008 (n + 1)).toNat

end

end A183717.P412935069494144935

/-! ## A183717.P18045981858191902310

`A183719(A166136(n+5)+1)`
-/

namespace A183717.P18045981858191902310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A166136 (n + 5) + 1).toNat

end

end A183717.P18045981858191902310

/-! ## A183717.P959432092762623342

`A183719(A052905(n+3)+12)`
-/

namespace A183717.P959432092762623342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A052905 (n + 3) + 12).toNat

end

end A183717.P959432092762623342

/-! ## A183717.P4484101534414648567

`A183719(eq[8, A131818(n+1)])`
-/

namespace A183717.P4484101534414648567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183717.P4484101534414648567

/-! ## A183717.P15552974642899418137

`A183719(eq[6, A193592(n)])`
-/

namespace A183717.P15552974642899418137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183717.P15552974642899418137

/-!
# A183718: 1/20 of the number of (n+1) X 9 0..4 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease.

The programs for A183718, there is no canonical definition to state claims against.
-/

/-! ## A183718.P12873994974251931221

`A183719(A374009(n+1))`
-/

namespace A183718.P12873994974251931221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A374009 (n + 1)).toNat

end

end A183718.P12873994974251931221

/-! ## A183718.P11200186633173911165

`A183719(eq[13, A066657(n)])`
-/

namespace A183718.P11200186633173911165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183718.P11200186633173911165

/-! ## A183718.P1380336793232575477

`A183719(A167614(n+6)+5)`
-/

namespace A183718.P1380336793232575477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (A167614 (n + 6) + 5).toNat

end

end A183718.P1380336793232575477

/-! ## A183718.P994495232052085117

`A183719(eq[9, A131818(n+1)])`
-/

namespace A183718.P994495232052085117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183718.P994495232052085117

/-! ## A183718.P10462389582427890793

`A183719(eq[5, A219347(n)])`
-/

namespace A183718.P10462389582427890793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183718.P10462389582427890793

/-!
# A183719: T(n,k) = 1/20 of the number of (n+1) X (k+1) 0..4 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease.

The programs for A183719, there is no canonical definition to state claims against.
-/

/-! ## A183719.P2992397465436339636

`A317118(A032555(n+1))+A141678(n+1)`
-/

namespace A183719.P2992397465436339636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A032555 (n + 1)).toNat + A141678 (n + 1)

end

end A183719.P2992397465436339636

/-!
# A183720: 1/12 the number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183720, there is no canonical definition to state claims against.
-/

/-! ## A183720.P3307054212660013913

`A183729(∑[4*n]+1)`
-/

namespace A183720.P3307054212660013913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183720.P3307054212660013913

/-! ## A183720.P4442662729253752163

`lcm(2, A183729(A001844(n)))`
-/

namespace A183720.P4442662729253752163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183729 (A001844 n).toNat)

end

end A183720.P4442662729253752163

/-! ## A183720.P13974770100210198418

`A183729(A001844(n))+A127937(n)`
-/

namespace A183720.P13974770100210198418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A001844 n).toNat + A127937 n

end

end A183720.P13974770100210198418

/-! ## A183720.P9185159929239358181

`A128936(n)*A183729(A001844(n))`
-/

namespace A183720.P9185159929239358181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128936 n * A183729 (A001844 n).toNat

end

end A183720.P9185159929239358181

/-! ## A183720.P6399930423397282616

`A158388(n)*A183729(A001844(n))`
-/

namespace A183720.P6399930423397282616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A183729 (A001844 n).toNat

end

end A183720.P6399930423397282616

/-!
# A183721: 1/12 the number of (n+1) X 2 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183721, there is no canonical definition to state claims against.
-/

/-! ## A183721.P7940299198299021781

`A183729(∑[n]+1)`
-/

namespace A183721.P7940299198299021781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183721.P7940299198299021781

/-! ## A183721.P7581369656733492508

`record[A010054(n)*A183729(n+1)]`
-/

namespace A183721.P7581369656733492508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183721.P7581369656733492508

/-! ## A183721.P2398381445894171322

`record[A183729(n+1)/A010048(n)]`
-/

namespace A183721.P2398381445894171322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183729 (n + 1) : ℚ) / (A010048 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183721.P2398381445894171322

/-! ## A183721.P14792412840376605703

`record[A183729(n+1)/A022166(n)]`
-/

namespace A183721.P14792412840376605703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183729 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183721.P14792412840376605703

/-! ## A183721.P12522469645131804547

`record[gcd(A002262(n), A183729(n+1))]`
-/

namespace A183721.P12522469645131804547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183729 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183721.P12522469645131804547

/-!
# A183722: 1/12 the number of (n+1) X 3 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183722, there is no canonical definition to state claims against.
-/

/-! ## A183722.P5230682670040019819

`A183729(∑[n+1]+2)`
-/

namespace A183722.P5230682670040019819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183722.P5230682670040019819

/-! ## A183722.P15409594142738488719

`record[A010054(n)*A183729(n+2)]`
-/

namespace A183722.P15409594142738488719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183729 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183722.P15409594142738488719

/-! ## A183722.P9805185065611375018

`record[A183729(n+3)/A049460(n)]`
-/

namespace A183722.P9805185065611375018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183729 (n + 3) : ℚ) / (A049460 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183722.P9805185065611375018

/-! ## A183722.P4942439407138829281

`record[gcd(A002262(n), A183729(n+2))]`
-/

namespace A183722.P4942439407138829281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183729 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183722.P4942439407138829281

/-! ## A183722.P15933728868707190697

`record[gcd(A183729(n+1), A264403(n))]`
-/

namespace A183722.P15933728868707190697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183729 (n + 1)) (A264403 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183722.P15933728868707190697

/-!
# A183723: 1/12 the number of (n+1) X 4 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183723, there is no canonical definition to state claims against.
-/

/-! ## A183723.P3001110123434740591

`A183729(∑[n+2]+4)`
-/

namespace A183723.P3001110123434740591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183723.P3001110123434740591

/-! ## A183723.P507934749820211836

`A183729(A167614(n+1))+A047752(n+1)`
-/

namespace A183723.P507934749820211836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A167614 (n + 1)).toNat + A047752 (n + 1)

end

end A183723.P507934749820211836

/-! ## A183723.P12705810730904128767

`A183729(A167614(n+1))%A183725(n+1)`
-/

namespace A183723.P12705810730904128767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183729 (A167614 (n + 1)).toNat) (A183725 (n + 1))

end

end A183723.P12705810730904128767

/-! ## A183723.P5250839404861803231

`or(A047758(n+1), A183729(A167614(n+1)))`
-/

namespace A183723.P5250839404861803231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047758 (n + 1)) (A183729 (A167614 (n + 1)).toNat)

end

end A183723.P5250839404861803231

/-! ## A183723.P5003607666482231116

`or(A047766(n+1), A183729(A167614(n+1)))`
-/

namespace A183723.P5003607666482231116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047766 (n + 1)) (A183729 (A167614 (n + 1)).toNat)

end

end A183723.P5003607666482231116

/-!
# A183724: 1/12 the number of (n+1) X 5 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183724, there is no canonical definition to state claims against.
-/

/-! ## A183724.P9532031524649955871

`A183729(A055999(n)+10)`
-/

namespace A183724.P9532031524649955871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A055999 n + 10).toNat

end

end A183724.P9532031524649955871

/-! ## A183724.P941953924516160521

`A183729(A167614(n+2)+1)`
-/

namespace A183724.P941953924516160521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A167614 (n + 2) + 1).toNat

end

end A183724.P941953924516160521

/-! ## A183724.P15736439957908609352

`A183729(A166136(n+2)-2)`
-/

namespace A183724.P15736439957908609352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A166136 (n + 2) - 2).toNat

end

end A183724.P15736439957908609352

/-! ## A183724.P1557242819227675794

`A183729(A055998(n+1)+7)`
-/

namespace A183724.P1557242819227675794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A055998 (n + 1) + 7).toNat

end

end A183724.P1557242819227675794

/-! ## A183724.P5186750476410004973

`A183729(eq[5, A131818(n+1)])`
-/

namespace A183724.P5186750476410004973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183724.P5186750476410004973

/-!
# A183725: 1/12 the number of (n+1) X 6 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183725, there is no canonical definition to state claims against.
-/

/-! ## A183725.P7029998927322941047

`A183729(A155212(n)+13)`
-/

namespace A183725.P7029998927322941047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A155212 n + 13).toNat

end

end A183725.P7029998927322941047

/-! ## A183725.P10791628828894574618

`A183729(A056000(n)+15)`
-/

namespace A183725.P10791628828894574618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A056000 n + 15).toNat

end

end A183725.P10791628828894574618

/-! ## A183725.P13593228901346182537

`A183729(eq[6, A131818(n+1)])`
-/

namespace A183725.P13593228901346182537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183725.P13593228901346182537

/-! ## A183725.P4086820543161622152

`A183729(Δ[A264443(n)])`
-/

namespace A183725.P4086820543161622152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (f1 (n + 1) - f1 n).toNat

end

end A183725.P4086820543161622152

/-! ## A183725.P5938077867407809043

`A183729(A374005(n+1))`
-/

namespace A183725.P5938077867407809043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A374005 (n + 1)).toNat

end

end A183725.P5938077867407809043

/-!
# A183726: 1/12 the number of (n+1) X 7 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183726, there is no canonical definition to state claims against.
-/

/-! ## A183726.P16922778435570830351

`A183729(eq[7, A131818(n+1)])`
-/

namespace A183726.P16922778435570830351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183726.P16922778435570830351

/-! ## A183726.P7554519119671811929

`A183729(A374007(n+1))`
-/

namespace A183726.P7554519119671811929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A374007 (n + 1)).toNat

end

end A183726.P7554519119671811929

/-! ## A183726.P12531853438873794354

`A183729(eq[3, A219347(n)])`
-/

namespace A183726.P12531853438873794354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183726.P12531853438873794354

/-! ## A183726.P7609961330173022988

`A183729(eq[5, A193592(n)])`
-/

namespace A183726.P7609961330173022988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183726.P7609961330173022988

/-! ## A183726.P2838972336713050167

`A183729(A056000(n+2)+5)`
-/

namespace A183726.P2838972336713050167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A056000 (n + 2) + 5).toNat

end

end A183726.P2838972336713050167

/-!
# A183727: 1/12 the number of (n+1) X 8 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183727, there is no canonical definition to state claims against.
-/

/-! ## A183727.P7309145277909916407

`A183729(eq[11, A066657(n)])`
-/

namespace A183727.P7309145277909916407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183727.P7309145277909916407

/-! ## A183727.P293621940686347332

`A183729(eq[8, A131818(n+1)])`
-/

namespace A183727.P293621940686347332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183727.P293621940686347332

/-! ## A183727.P11423857237909701518

`A183729(A374008(n+1))`
-/

namespace A183727.P11423857237909701518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A374008 (n + 1)).toNat

end

end A183727.P11423857237909701518

/-! ## A183727.P5707010639664736896

`A183729(A055999(n+4))`
-/

namespace A183727.P5707010639664736896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A055999 (n + 4)).toNat

end

end A183727.P5707010639664736896

/-! ## A183727.P11189587403205029838

`A183729(eq[6, A193592(n)])`
-/

namespace A183727.P11189587403205029838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183727.P11189587403205029838

/-!
# A183728: 1/12 the number of (n+1) X 9 0..5 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183728, there is no canonical definition to state claims against.
-/

/-! ## A183728.P5340431314657105843

`A183729(A374009(n+1))`
-/

namespace A183728.P5340431314657105843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (A374009 (n + 1)).toNat

end

end A183728.P5340431314657105843

/-! ## A183728.P6540612519469327873

`A183729(eq[5, A219347(n)])`
-/

namespace A183728.P6540612519469327873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183728.P6540612519469327873

/-! ## A183728.P12003179489873683259

`A183729(eq[7, A193592(n)])`
-/

namespace A183728.P12003179489873683259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183728.P12003179489873683259

/-! ## A183728.P15173903045280035207

`A183729(eq[13, A066657(n)])`
-/

namespace A183728.P15173903045280035207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183728.P15173903045280035207

/-! ## A183728.P12227811326257480324

`A183729(eq[9, A131818(n+1)])`
-/

namespace A183728.P12227811326257480324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183728.P12227811326257480324

/-!
# A183730: 1/16 the number of (n+1) X 2 0..7 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183730, there is no canonical definition to state claims against.
-/

/-! ## A183730.P7587299371231170245

`A183738(∑[n]+1)`
-/

namespace A183730.P7587299371231170245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183730.P7587299371231170245

/-! ## A183730.P44056631831244057

`record[A183738(n+1)/A154984(n)]`
-/

namespace A183730.P44056631831244057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183738 (n + 1) : ℚ) / (A154984 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183730.P44056631831244057

/-! ## A183730.P17878029086916333873

`record[gcd(A002262(n), A183738(n+1))]`
-/

namespace A183730.P17878029086916333873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183738 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183730.P17878029086916333873

/-! ## A183730.P6599653650124526003

`A185063(n)+A183738(A000124(n))`
-/

namespace A183730.P6599653650124526003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 n + A183738 (A000124 n).toNat

end

end A183730.P6599653650124526003

/-! ## A183730.P6341354018672547212

`A347470(n)+A183738(A000124(n))`
-/

namespace A183730.P6341354018672547212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 n + A183738 (A000124 n).toNat

end

end A183730.P6341354018672547212

/-!
# A183731: 1/16 the number of (n+1) X 3 0..7 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183731, there is no canonical definition to state claims against.
-/

/-! ## A183731.P11947613886338336482

`A183738(∑[n+1]+2)`
-/

namespace A183731.P11947613886338336482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183731.P11947613886338336482

/-! ## A183731.P10956426387573115999

`record[gcd(A002262(n), A183738(n+2))]`
-/

namespace A183731.P10956426387573115999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183738 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183731.P10956426387573115999

/-!
# A183732: 1/16 the number of (n+1) X 4 0..7 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183732, there is no canonical definition to state claims against.
-/

/-! ## A183732.P665497209945912666

`A183738(∑[n+2]+4)`
-/

namespace A183732.P665497209945912666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183732.P665497209945912666

/-! ## A183732.P14140003141369079870

`or(A002264(n), A183738(A167614(n+1)))`
-/

namespace A183732.P14140003141369079870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002264 n) (A183738 (A167614 (n + 1)).toNat)

end

end A183732.P14140003141369079870

/-! ## A183732.P18225693722031987188

`or(A002265(n), A183738(A167614(n+1)))`
-/

namespace A183732.P18225693722031987188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002265 n) (A183738 (A167614 (n + 1)).toNat)

end

end A183732.P18225693722031987188

/-! ## A183732.P14168787238043373049

`or(A008651(n), A183738(A167614(n+1)))`
-/

namespace A183732.P14168787238043373049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008651 n) (A183738 (A167614 (n + 1)).toNat)

end

end A183732.P14168787238043373049

/-! ## A183732.P11136710615623159274

`or(A010052(n), A183738(A167614(n+1)))`
-/

namespace A183732.P11136710615623159274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A183738 (A167614 (n + 1)).toNat)

end

end A183732.P11136710615623159274

/-!
# A183733: 1/16 the number of (n+1) X 5 0..7 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183733, there is no canonical definition to state claims against.
-/

/-! ## A183733.P4394221899220227530

`A183738(A052905(n)+9)`
-/

namespace A183733.P4394221899220227530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (A052905 n + 9).toNat

end

end A183733.P4394221899220227530

/-! ## A183733.P14963723770374052697

`A183738(A167614(n+2)+1)`
-/

namespace A183733.P14963723770374052697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (A167614 (n + 2) + 1).toNat

end

end A183733.P14963723770374052697

/-!
# A183734: 1/16 the number of (n+1) X 6 0..7 arrays with every 2 X 2 subblock strictly increasing clockwise or counterclockwise with one decrease, and at least two adjacent blocks having the same increasing direction.

The programs for A183734, there is no canonical definition to state claims against.
-/

/-! ## A183734.P5950020930004931286

`A183738(A374005(n+1))`
-/

namespace A183734.P5950020930004931286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (A374005 (n + 1)).toNat

end

end A183734.P5950020930004931286

/-! ## A183734.P8461661323682007215

`A183738(eq[8, A141020(n)])`
-/

namespace A183734.P8461661323682007215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183734.P8461661323682007215

/-!
# A183735: 

The programs for A183735, there is no canonical definition to state claims against.
-/

/-! ## A183735.P13703669953887086375

`A183738(eq[4, A191532(n)]+2)`
-/

namespace A183735.P13703669953887086375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A183735.P13703669953887086375

/-!
# A183736: 

The programs for A183736, there is no canonical definition to state claims against.
-/

/-! ## A183736.P10766846191325201889

`A183738(A034856(n+6)-4)`
-/

namespace A183736.P10766846191325201889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183738 (A034856 (n + 6) - 4).toNat

end

end A183736.P10766846191325201889

/-!
# A183739: Number of (n+1) X (n+1) 0..2 arrays with equal numbers of 2 X 2 subblocks with sum over 4 and with sum under 4.

The programs for A183739, there is no canonical definition to state claims against.
-/

/-! ## A183739.P694067973064589573

`A183748((n+1)²+n²)`
-/

namespace A183739.P694067973064589573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 ((n + 1) ^ 2 + n ^ 2)

end

end A183739.P694067973064589573

/-!
# A183740: Number of (n+1) X 2 0..2 arrays with equal numbers of 2 X 2 subblocks with sum over 4 and with sum under 4.

The programs for A183740, there is no canonical definition to state claims against.
-/

/-! ## A183740.P959241741209036605

`A183748(∑[n]+1)`
-/

namespace A183740.P959241741209036605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183740.P959241741209036605

/-! ## A183740.P4274172820320836982

`or(1, A183748(A000124(n)))`
-/

namespace A183740.P4274172820320836982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183748 (A000124 n).toNat)

end

end A183740.P4274172820320836982

/-! ## A183740.P7704183878702574018

`record[(2-A193592(n))*A183748(n+1)]`
-/

namespace A183740.P7704183878702574018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A193592 n) * A183748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183740.P7704183878702574018

/-! ## A183740.P7956612025576647490

`A185063(n)+A183748(A000124(n))`
-/

namespace A183740.P7956612025576647490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 n + A183748 (A000124 n).toNat

end

end A183740.P7956612025576647490

/-! ## A183740.P2460733935959993761

`A183748(A000124(n))%A183716(n+1)`
-/

namespace A183740.P2460733935959993761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183748 (A000124 n).toNat) (A183716 (n + 1))

end

end A183740.P2460733935959993761

/-!
# A183741: Number of (n+1) X 3 0..2 arrays with equal numbers of 2 X 2 subblocks with sum over 4 and with sum under 4.

The programs for A183741, there is no canonical definition to state claims against.
-/

/-! ## A183741.P11357981809324716772

`A183748(∑[n+1]+2)`
-/

namespace A183741.P11357981809324716772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183741.P11357981809324716772

/-! ## A183741.P18346116124101166551

`record[A183748(A112367(n)+2)]`
-/

namespace A183741.P18346116124101166551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183741.P18346116124101166551

/-! ## A183741.P5279998854726841817

`record[A183748(A193592(n)+A014132(n+1))]`
-/

namespace A183741.P5279998854726841817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (A193592 n + A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183741.P5279998854726841817

/-! ## A183741.P14751785021619662334

`record[A183748(abs(A201163(n)))]`
-/

namespace A183741.P14751785021619662334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183741.P14751785021619662334

/-! ## A183741.P9370826378806034889

`record[A183748(A000096(val(n+1, 2)+1))]`
-/

namespace A183741.P9370826378806034889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183741.P9370826378806034889

/-!
# A183742: Number of (n+1) X 4 0..2 arrays with equal numbers of 2 X 2 subblocks with sum over 4 and with sum under 4.

The programs for A183742, there is no canonical definition to state claims against.
-/

/-! ## A183742.P15385119694493882430

`A183748(∑[n+2]+4)`
-/

namespace A183742.P15385119694493882430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183742.P15385119694493882430

/-! ## A183742.P3764453846406320881

`or(1, A183748(A167614(n+1)))`
-/

namespace A183742.P3764453846406320881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183748 (A167614 (n + 1)).toNat)

end

end A183742.P3764453846406320881

/-! ## A183742.P808905281423450698

`A183748(A166136(n+1)-3)+C(n, 36)`
-/

namespace A183742.P808905281423450698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (A166136 (n + 1) - 3).toNat + (Nat.choose n 36 : ℤ)

end

end A183742.P808905281423450698

/-! ## A183742.P13026928489364398799

`A185063(n)+A183748(A167614(n+1))`
-/

namespace A183742.P13026928489364398799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 n + A183748 (A167614 (n + 1)).toNat

end

end A183742.P13026928489364398799

/-! ## A183742.P2595939598401923798

`lcm(A087960(n), A183748(A167614(n+1)))`
-/

namespace A183742.P2595939598401923798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A183748 (A167614 (n + 1)).toNat)

end

end A183742.P2595939598401923798

/-!
# A183743: Number of (n+1) X 5 0..2 arrays with equal numbers of 2 X 2 subblocks with sum over 4 and with sum under 4.

The programs for A183743, there is no canonical definition to state claims against.
-/

/-! ## A183743.P12003886801396586496

`A183748(A167614(n+2)+1)`
-/

namespace A183743.P12003886801396586496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (A167614 (n + 2) + 1).toNat

end

end A183743.P12003886801396586496

/-! ## A183743.P15211910930449205020

`A183748(A166136(n+2)-2)`
-/

namespace A183743.P15211910930449205020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (A166136 (n + 2) - 2).toNat

end

end A183743.P15211910930449205020

/-! ## A183743.P454149718797336312

`A183748(Δ[A034857(n+1)])`
-/

namespace A183743.P454149718797336312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (f1 (n + 1) - f1 n).toNat

end

end A183743.P454149718797336312

/-!
# A183744: Number of (n+1) X 6 0..2 arrays with equal numbers of 2 X 2 subblocks with sum over 4 and with sum under 4.

The programs for A183744, there is no canonical definition to state claims against.
-/

/-! ## A183744.P9407163673507252169

`A183748(A374005(n+1))`
-/

namespace A183744.P9407163673507252169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (A374005 (n + 1)).toNat

end

end A183744.P9407163673507252169

/-! ## A183744.P10886078841876591916

`A183748(Δ[A134465(n+1)]+10)`
-/

namespace A183744.P10886078841876591916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (f1 (n + 1) - f1 n + 10).toNat

end

end A183744.P10886078841876591916

/-! ## A183744.P639129888686427218

`A183748(Δ[A023545(n+1)])`
-/

namespace A183744.P639129888686427218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (f1 (n + 1) - f1 n).toNat

end

end A183744.P639129888686427218

/-!
# A183745: 

The programs for A183745, there is no canonical definition to state claims against.
-/

/-! ## A183745.P4313239076558543906

`A183748(eq[11, A099375(n)]+1)`
-/

namespace A183745.P4313239076558543906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183745.P4313239076558543906

/-!
# A183749: 

The programs for A183749, there is no canonical definition to state claims against.
-/

/-! ## A183749.P875289736438575029

`A183756((n+1)²+n²)`
-/

namespace A183749.P875289736438575029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183756 ((n + 1) ^ 2 + n ^ 2)

end

end A183749.P875289736438575029

/-!
# A183750: Number of (n+1) X 2 0..3 arrays with equal numbers of 2 X 2 subblocks with sum over 6 and with sum under 6.

The programs for A183750, there is no canonical definition to state claims against.
-/

/-! ## A183750.P5550390299771451372

`A183756(∑[n]+1)`
-/

namespace A183750.P5550390299771451372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183750.P5550390299771451372

/-! ## A183750.P1170217325819666438

`lcm(2, A183756(A000124(n)))`
-/

namespace A183750.P1170217325819666438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183756 (A000124 n).toNat)

end

end A183750.P1170217325819666438

/-! ## A183750.P12799757422216524287

`record[root(A183756(n+1), A008279(n))]`
-/

namespace A183750.P12799757422216524287
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183756 (n + 1) : ℝ) ^ (1 / (A008279 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183750.P12799757422216524287

/-! ## A183750.P795022355791264687

`record[root(A183756(n+1), A059268(n))]`
-/

namespace A183750.P795022355791264687
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183756 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183750.P795022355791264687

/-! ## A183750.P8262311268541603577

`record[root(A183756(n+1), A193738(n))]`
-/

namespace A183750.P8262311268541603577
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183756 (n + 1) : ℝ) ^ (1 / (A193738 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183750.P8262311268541603577

/-!
# A183751: Number of (n+1) X 3 0..3 arrays with equal numbers of 2 X 2 subblocks with sum over 6 and with sum under 6.

The programs for A183751, there is no canonical definition to state claims against.
-/

/-! ## A183751.P8438435170186511495

`A183756(∑[n+1]+2)`
-/

namespace A183751.P8438435170186511495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183756 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183751.P8438435170186511495

/-! ## A183751.P11562537325831350517

`record[root(A183756(n+2), A059268(n))]`
-/

namespace A183751.P11562537325831350517
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183756 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183751.P11562537325831350517

/-! ## A183751.P3250185257198428671

`record[A183756(Δ[A003453(n+5)])]`
-/

namespace A183751.P3250185257198428671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183756 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183751.P3250185257198428671

/-!
# A183752: Number of (n+1) X 4 0..3 arrays with equal numbers of 2 X 2 subblocks with sum over 6 and with sum under 6.

The programs for A183752, there is no canonical definition to state claims against.
-/

/-! ## A183752.P17023254273722231335

`A183756(∑[n+2]+4)`
-/

namespace A183752.P17023254273722231335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183756 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183752.P17023254273722231335

/-!
# A183754: 

The programs for A183754, there is no canonical definition to state claims against.
-/

/-! ## A183754.P1716117953339506859

`A183756(Δ[A023545(n+1)])`
-/

namespace A183754.P1716117953339506859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183756 (f1 (n + 1) - f1 n).toNat

end

end A183754.P1716117953339506859

/-!
# A183755: 

The programs for A183755, there is no canonical definition to state claims against.
-/

/-! ## A183755.P2599882563951844233

`A183756(eq[11, A099375(n)]+1)`
-/

namespace A183755.P2599882563951844233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183756 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183755.P2599882563951844233

/-!
# A183757: Unlabeled super-Catalan numbers: patterns of nonintersecting chords joining unlabeled points on a circle.

The programs for A183757, there is no canonical definition to state claims against.
-/

/-! ## A183757.P12872814659191706537

`A117268(A030762(n+2))`
-/

namespace A183757.P12872814659191706537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117268 (A030762 (n + 2)).toNat

end

end A183757.P12872814659191706537

/-! ## A183757.P594778108320019530

`A117268(A001859(n)+3)`
-/

namespace A183757.P594778108320019530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117268 (A001859 n + 3).toNat

end

end A183757.P594778108320019530

/-! ## A183757.P10295630885674694169

`A117268(A267529(n+1)+1)`
-/

namespace A183757.P10295630885674694169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117268 (A267529 (n + 1) + 1).toNat

end

end A183757.P10295630885674694169

/-!
# A183758: Unlabeled super-Catalan numbers: patterns of nonintersecting chords joining unlabeled points on a flippable circle.

The programs for A183758, there is no canonical definition to state claims against.
-/

/-! ## A183758.P6447415119832669335

`A065361(A049449(n!))`
-/

namespace A183758.P6447415119832669335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A049449 (Nat.factorial n)).toNat

end

end A183758.P6447415119832669335

/-! ## A183758.P4442181427951616795

`A215406(A150272(n+1))`
-/

namespace A183758.P4442181427951616795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (A150272 (n + 1)).toNat

end

end A183758.P4442181427951616795

/-! ## A183758.P7202384197766005608

`A089860(A007773(n+2))`
-/

namespace A183758.P7202384197766005608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089860 (A007773 (n + 2)).toNat

end

end A183758.P7202384197766005608

/-!
# A183761: Number of 2 X 2 nonsingular 0..n matrices with rows in increasing order.

The programs for A183761, the canonical program `A183761.P5340774791652619797` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183761 has offset 1).

The definition of A183761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062801, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183761.P5340774791652619797

`A062801(n+1)/2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A183761

/-- `A062801(n+1)/2` -/
def P5340774791652619797.Spec : Prop :=
  ∀ n, P5340774791652619797.a n = (A183761 (n + 1) : ℚ)

end A183761

/-! ## A183761.P12417280033156710005

`Δ[∑[A062801(n)]/2]`
-/

namespace A183761.P12417280033156710005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062801 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183761.P12417280033156710005

namespace A183761

/-- `Δ[∑[A062801(n)]/2]` -/
def P12417280033156710005.Spec : Prop :=
  ∀ n, P12417280033156710005.a n = (A183761 (n + 1) : ℚ)

end A183761

/-! ## A183761.P3590595224493523861

`(n+2)²²-A210290(n+1)`
-/

namespace A183761.P3590595224493523861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - A210290 (n + 1)

end

end A183761.P3590595224493523861

namespace A183761

/-- `(n+2)²²-A210290(n+1)` -/
def P3590595224493523861.Spec : Prop :=
  ∀ n, P3590595224493523861.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P10290592215169044862

`ceil(A062801(ceil(Δ[n²]/2))/2)`
-/

namespace A183761.P10290592215169044862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062801 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A183761.P10290592215169044862

namespace A183761

/-- `ceil(A062801(ceil(Δ[n²]/2))/2)` -/
def P10290592215169044862.Spec : Prop :=
  ∀ n, P10290592215169044862.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P4396526750861356264

`∑[2*(n+1)]²-A211058(n+1)`
-/

namespace A183761.P4396526750861356264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A211058 (n + 1)

end

end A183761.P4396526750861356264

namespace A183761

/-- `∑[2*(n+1)]²-A211058(n+1)` -/
def P4396526750861356264.Spec : Prop :=
  ∀ n, P4396526750861356264.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P10024399684032736364

`A211059(n+1)+(2*n+3)*(n+1)²`
-/

namespace A183761.P10024399684032736364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (n + 1) + ((2 * n + 3) * (n + 1) ^ 2 : ℤ)

end

end A183761.P10024399684032736364

namespace A183761

/-- `A211059(n+1)+(2*n+3)*(n+1)²` -/
def P10024399684032736364.Spec : Prop :=
  ∀ n, P10024399684032736364.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P8514937421360545118

`A210373(n+1)+A210372(n+1)`
-/

namespace A183761.P8514937421360545118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210373 (n + 1) + A210372 (n + 1)

end

end A183761.P8514937421360545118

namespace A183761

/-- `A210373(n+1)+A210372(n+1)` -/
def P8514937421360545118.Spec : Prop :=
  ∀ n, P8514937421360545118.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P2871002457643067885

`A210290(n+1)-A059306(n+1)`
-/

namespace A183761.P2871002457643067885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 (n + 1) - A059306 (n + 1)

end

end A183761.P2871002457643067885

namespace A183761

/-- `A210290(n+1)-A059306(n+1)` -/
def P2871002457643067885.Spec : Prop :=
  ∀ n, P2871002457643067885.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P12810506831738713038

`A000583(n+2)%A210290(n+1)`
-/

namespace A183761.P12810506831738713038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (n + 2)) (A210290 (n + 1))

end

end A183761.P12810506831738713038

namespace A183761

/-- `A000583(n+2)%A210290(n+1)` -/
def P12810506831738713038.Spec : Prop :=
  ∀ n, P12810506831738713038.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P4328589621753172000

`A210372(n+1)+A210370(n+1)/2`
-/

namespace A183761.P4328589621753172000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210372 (n + 1) : ℚ) + (A210370 (n + 1) : ℚ) / 2

end

end A183761.P4328589621753172000

namespace A183761

/-- `A210372(n+1)+A210370(n+1)/2` -/
def P4328589621753172000.Spec : Prop :=
  ∀ n, P4328589621753172000.a n = (A183761 (n + 1) : ℚ)

end A183761

/-! ## A183761.P10873239433718650703

`A210371(n+1)+A210373(n+1)-A059306(n+1)`
-/

namespace A183761.P10873239433718650703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210371 (n + 1) + (A210373 (n + 1) - A059306 (n + 1))

end

end A183761.P10873239433718650703

namespace A183761

/-- `A210371(n+1)+A210373(n+1)-A059306(n+1)` -/
def P10873239433718650703.Spec : Prop :=
  ∀ n, P10873239433718650703.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P4159275460701694669

`A210290(n+1)+A210372(n+1)-A210371(n+1)`
-/

namespace A183761.P4159275460701694669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 (n + 1) + (A210372 (n + 1) - A210371 (n + 1))

end

end A183761.P4159275460701694669

namespace A183761

/-- `A210290(n+1)+A210372(n+1)-A210371(n+1)` -/
def P4159275460701694669.Spec : Prop :=
  ∀ n, P4159275460701694669.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P1361682884420907998

`A210369(n+1)+A210370(n+1)-A210290(n+1)`
-/

namespace A183761.P1361682884420907998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 (n + 1) + (A210370 (n + 1) - A210290 (n + 1))

end

end A183761.P1361682884420907998

namespace A183761

/-- `A210369(n+1)+A210370(n+1)-A210290(n+1)` -/
def P1361682884420907998.Spec : Prop :=
  ∀ n, P1361682884420907998.a n = A183761 (n + 1)

end A183761

/-! ## A183761.P10261256948134880095

`A210369(n+1)+A210373(n+1)-A210371(n+1)`
-/

namespace A183761.P10261256948134880095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 (n + 1) + (A210373 (n + 1) - A210371 (n + 1))

end

end A183761.P10261256948134880095

namespace A183761

/-- `A210369(n+1)+A210373(n+1)-A210371(n+1)` -/
def P10261256948134880095.Spec : Prop :=
  ∀ n, P10261256948134880095.a n = A183761 (n + 1)

end A183761

/-!
# A183762: Number of 2 X 2 nonsingular 0..n matrices with rows and columns in increasing order.

The programs for A183762, there is no canonical definition to state claims against.
-/

/-! ## A183762.P5269048614499459965

`∑[∑[A328369(A080663(n+1))]]`
-/

namespace A183762.P5269048614499459965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (A080663 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183762.P5269048614499459965

/-!
# A183763: Number of 2 X 2 nonsingular 0..n matrices with a(1,1) <= a(1,2) <= a(2,1) <= a(2,2).

The programs for A183763, there is no canonical definition to state claims against.
-/

/-! ## A183763.P12295645897113677139

`∑[A008778(n)-A180772(n+1)]`
-/

namespace A183763.P12295645897113677139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n - A180772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183763.P12295645897113677139

/-! ## A183763.P7420162472584666560

`A005582(n+1)-∑[A174088(n+1)]`
-/

namespace A183763.P7420162472584666560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183763.P7420162472584666560

/-! ## A183763.P7182424550644392271

`∑[∑[A034856(n+1)]-A180772(n+1)]`
-/

namespace A183763.P7182424550644392271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A180772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183763.P7182424550644392271

/-! ## A183763.P8351808049685897631

`A007318(A052905(n+3))-A183764(n+1)`
-/

namespace A183763.P8351808049685897631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A052905 (n + 3)).toNat - A183764 (n + 1)

end

end A183763.P8351808049685897631

/-! ## A183763.P2434236291806363991

`A007318(eq[3, A219347(n)])-A183764(n+1)`
-/

namespace A183763.P2434236291806363991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A183764 (n + 1)

end

end A183763.P2434236291806363991

/-!
# A183764: Number of 2 X 2 singular 0..n matrices with a(1,1) <= a(1,2) <= a(2,1) <= a(2,2).

The programs for A183764, the canonical program `A183764.P17512530686883695841` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183764 has offset 1).

The definition of A183764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183764.P17512530686883695841

`∑[A180772(n+1)]+(n+2)²`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A183764

/-- `∑[A180772(n+1)]+(n+2)²` -/
def P17512530686883695841.Spec : Prop :=
  ∀ n, P17512530686883695841.a n = A183764 (n + 1)

theorem P17512530686883695841.correct : P17512530686883695841.Spec := by
  intro n
  simp only [A183764, Nat.add_sub_cancel]

end A183764

/-! ## A183764.P14279795465069275226

`∑[A174088(n+1)+2+n]+1`
-/

namespace A183764.P14279795465069275226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174088 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A183764.P14279795465069275226

namespace A183764

/-- `∑[A174088(n+1)+2+n]+1` -/
def P14279795465069275226.Spec : Prop :=
  ∀ n, P14279795465069275226.a n = A183764 (n + 1)

end A183764

/-! ## A183764.P7115733029781503848

`A253145(n+1)+∑[A174088(n+1)]`
-/

namespace A183764.P7115733029781503848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183764.P7115733029781503848

namespace A183764

/-- `A253145(n+1)+∑[A174088(n+1)]` -/
def P7115733029781503848.Spec : Prop :=
  ∀ n, P7115733029781503848.a n = A183764 (n + 1)

end A183764

/-! ## A183764.P11615508321411171599

`A000217(n+2)+∑[A174088(n+1)]`
-/

namespace A183764.P11615508321411171599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183764.P11615508321411171599

namespace A183764

/-- `A000217(n+2)+∑[A174088(n+1)]` -/
def P11615508321411171599.Spec : Prop :=
  ∀ n, P11615508321411171599.a n = A183764 (n + 1)

end A183764

/-! ## A183764.P11603593894742423637

`A000290(n+2)+∑[A180772(n+1)]`
-/

namespace A183764.P11603593894742423637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183764.P11603593894742423637

namespace A183764

/-- `A000290(n+2)+∑[A180772(n+1)]` -/
def P11603593894742423637.Spec : Prop :=
  ∀ n, P11603593894742423637.a n = A183764 (n + 1)

end A183764

/-!
# A183766: 1/32 the number of (2n+1) X 4 binary arrays with equal numbers of 2 X 2 subblocks with sum mod two being 0 and 1.

The programs for A183766, there is no canonical definition to state claims against.
-/

/-! ## A183766.P393567084993545371

`A004171(n+1)*A187366(n)`
-/

namespace A183766.P393567084993545371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) * A187366 n

end

end A183766.P393567084993545371

/-! ## A183766.P14341696944327479404

`2*A000079(n)²*A066802(n+1)`
-/

namespace A183766.P14341696944327479404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 * A066802 (n + 1)

end

end A183766.P14341696944327479404

/-! ## A183766.P5303144181487199371

`2*4^n*A126930(Δ[A003215(n)])`
-/

namespace A183766.P5303144181487199371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) * A126930 (f1 (n + 1) - f1 n).toNat

end

end A183766.P5303144181487199371

/-! ## A183766.P14963213400563304224

`A000079(2*n+1)*A066802(n+1)`
-/

namespace A183766.P14963213400563304224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A066802 (n + 1)

end

end A183766.P14963213400563304224

/-! ## A183766.P7433460765960298725

`A066802(n+1)*A081672(2*n+1)`
-/

namespace A183766.P7433460765960298725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066802 (n + 1) * A081672 (2 * n + 1)

end

end A183766.P7433460765960298725

/-!
# A183767: 1/32 the number of (n+1) X 5 binary arrays with equal numbers of 2 X 2 subblocks with sum mod two being 0 and 1.

The programs for A183767, there is no canonical definition to state claims against.
-/

/-! ## A183767.P15694609205007837580

`A000079(n+1)*A001448(n+1)`
-/

namespace A183767.P15694609205007837580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A001448 (n + 1)

end

end A183767.P15694609205007837580

/-! ## A183767.P11291581396977609199

`A001700(2*n+1)*A020707(n)`
-/

namespace A183767.P11291581396977609199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (2 * n + 1) * A020707 n

end

end A183767.P11291581396977609199

/-! ## A183767.P12287883118915898484

`A000079(n+1)*A000984(2*(n+1))`
-/

namespace A183767.P12287883118915898484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A000984 (2 * (n + 1))

end

end A183767.P12287883118915898484

/-! ## A183767.P13198263206457812467

`A000079(n+2)*A001700(2*n+1)`
-/

namespace A183767.P13198263206457812467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) * A001700 (2 * n + 1)

end

end A183767.P13198263206457812467

/-! ## A183767.P11000372686868236284

`A000984(2*(n+1))*A011782(n+2)`
-/

namespace A183767.P11000372686868236284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * (n + 1)) * A011782 (n + 2)

end

end A183767.P11000372686868236284

/-! ## A183767.P11480181656650110962

`A000079(n+2)*A088218(2*(n+1))`
-/

namespace A183767.P11480181656650110962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) * A088218 (2 * (n + 1))

end

end A183767.P11480181656650110962

/-! ## A183767.P11877457097345865905

`A001700(2*n+1)*A151821(n+2)`
-/

namespace A183767.P11877457097345865905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (2 * n + 1) * A151821 (n + 2)

end

end A183767.P11877457097345865905

/-! ## A183767.P12734935039171429385

`A001700(2*n+1)*A011782(n+3)`
-/

namespace A183767.P12734935039171429385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (2 * n + 1) * A011782 (n + 3)

end

end A183767.P12734935039171429385

/-! ## A183767.P8001428536812696279

`A011782(n+3)*A088218(2*(n+1))`
-/

namespace A183767.P8001428536812696279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 3) * A088218 (2 * (n + 1))

end

end A183767.P8001428536812696279

/-! ## A183767.P6576758191269082815

`∏[A100320(2*(n+1))/A000984(2*n)]`
-/

namespace A183767.P6576758191269082815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100320 (2 * (n + 1)) : ℚ) / (A000984 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A183767.P6576758191269082815

/-!
# A183769: 1/32 the number of (n+1) X 7 binary arrays with equal numbers of 2 X 2 subblocks with sum mod two being 0 and 1.

The programs for A183769, there is no canonical definition to state claims against.
-/

/-! ## A183769.P15576889227994156176

`A020707(n+1)*A066802(n+1)`
-/

namespace A183769.P15576889227994156176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (n + 1) * A066802 (n + 1)

end

end A183769.P15576889227994156176

/-! ## A183769.P15374031660083730056

`A020707(n+1)*A126869(Δ[A004538(n)])`
-/

namespace A183769.P15374031660083730056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (n + 1) * A126869 (f1 (n + 1) - f1 n).toNat

end

end A183769.P15374031660083730056

/-! ## A183769.P5030990705478406271

`4*A183766(n+1)/A000079(n)`
-/

namespace A183769.P5030990705478406271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A183766 (n + 1) : ℚ) / (A000079 n : ℚ))

end

end A183769.P5030990705478406271

/-! ## A183769.P11799518968672731593

`A183772(A374007(n+1))`
-/

namespace A183769.P11799518968672731593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183772 (A374007 (n + 1)).toNat

end

end A183769.P11799518968672731593

/-! ## A183769.P8648801699969735900

`A183772(Δ[A023545(n+1)]+10)`
-/

namespace A183769.P8648801699969735900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183772 (f1 (n + 1) - f1 n + 10).toNat

end

end A183769.P8648801699969735900

/-!
# A183771: 1/32 the number of (n+1) X 9 binary arrays with equal numbers of 2 X 2 subblocks with sum mod two being 0 and 1.

The programs for A183771, there is no canonical definition to state claims against.
-/

/-! ## A183771.P10689656160469096920

`A183772(A374009(n+1))`
-/

namespace A183771.P10689656160469096920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183772 (A374009 (n + 1)).toNat

end

end A183771.P10689656160469096920

/-! ## A183771.P10941818237979759970

`A183772(eq[7, A193592(n)])`
-/

namespace A183771.P10941818237979759970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183771.P10941818237979759970

/-!
# A183773: Half the number of (n+1) X (n+1) binary arrays with no 2 X 2 subblock having exactly 2 ones.

The programs for A183773, there is no canonical definition to state claims against.
-/

/-! ## A183773.P4259655657628572524

`A259289(n+1)/2`
-/

namespace A183773.P4259655657628572524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259289 (n + 1) : ℚ) / 2

end

end A183773.P4259655657628572524

/-! ## A183773.P12733411674730416020

`A183782(∑[4*n]+1)`
-/

namespace A183773.P12733411674730416020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183773.P12733411674730416020

/-! ## A183773.P15811591406909812990

`record[A003982(n)*A183782(n+1)]`
-/

namespace A183773.P15811591406909812990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183773.P15811591406909812990

/-! ## A183773.P11100006914925371805

`record[A259297(n+1)/2*A003982(n)]`
-/

namespace A183773.P11100006914925371805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259297 (n + 1) : ℚ) / 2 * (A003982 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183773.P11100006914925371805

/-! ## A183773.P12526028968024673277

`record[gcd(A259297(n+1)/2, A008482(n))]`
-/

namespace A183773.P12526028968024673277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A259297 (n + 1) : ℚ) / 2)) (A008482 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183773.P12526028968024673277

/-!
# A183774: Half the number of (n+1) X 2 binary arrays with no 2X2 subblock having exactly 2 ones.

The programs for A183774, the canonical program `A183774.P2978237285844373184` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183774 has offset 0).

The definition of A183774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183774.P2978237285844373184

`a(n-1)+4*a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A183774

/-- `a(n-1)+4*a(n-2)` -/
def P2978237285844373184.Spec : Prop :=
  ∀ n, (P2978237285844373184.a n : ℤ) = A183774 n

theorem P2978237285844373184.correct : P2978237285844373184.Spec := by
  intro n
  simp only [A183774]

end A183774

/-! ## A183774.P8411075599014842360

`ogf((2+3x)/(1-x-4x^2))`
-/

namespace A183774.P8411075599014842360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -1, -4] n

end

end A183774.P8411075599014842360

namespace A183774

/-- `ogf((2+3x)/(1-x-4x^2))` -/
def P8411075599014842360.Spec : Prop :=
  ∀ n, P8411075599014842360.a n = A183774 n

end A183774

/-! ## A183774.P17761086795525849093

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=2, a(1)=5`
-/

namespace A183774.P17761086795525849093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A183774.P17761086795525849093

namespace A183774

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P17761086795525849093.Spec : Prop :=
  ∀ n, P17761086795525849093.a n = (A183774 n : ℚ)

end A183774

/-! ## A183774.P3846844838573949872

`5*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A183774.P3846844838573949872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  5 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A183774.P3846844838573949872

namespace A183774

/-- `5*a(n-2)-(a(n-2)-a(n-1))` -/
def P3846844838573949872.Spec : Prop :=
  ∀ n, P3846844838573949872.a n = A183774 n

end A183774

/-! ## A183774.P2754071007514816228

`A026597(n)+A026581(n)`
-/

namespace A183774.P2754071007514816228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n + A026581 n

end

end A183774.P2754071007514816228

namespace A183774

/-- `A026597(n)+A026581(n)` -/
def P2754071007514816228.Spec : Prop :=
  ∀ n, P2754071007514816228.a n = A183774 n

end A183774

/-! ## A183774.P11746421550341513751

`A052923(n)+A006131(n+1)`
-/

namespace A183774.P11746421550341513751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 n + A006131 (n + 1)

end

end A183774.P11746421550341513751

namespace A183774

/-- `A052923(n)+A006131(n+1)` -/
def P11746421550341513751.Spec : Prop :=
  ∀ n, P11746421550341513751.a n = A183774 n

end A183774

/-! ## A183774.P9126934308574171364

`A072265(n)+A052923(n+1)`
-/

namespace A183774.P9126934308574171364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072265 n + A052923 (n + 1)

end

end A183774.P9126934308574171364

namespace A183774

/-- `A072265(n)+A052923(n+1)` -/
def P9126934308574171364.Spec : Prop :=
  ∀ n, P9126934308574171364.a n = A183774 n

end A183774

/-! ## A183774.P15988080573804209611

`A159612(n+1)+A006131(n)`
-/

namespace A183774.P15988080573804209611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159612 (n + 1) + A006131 n

end

end A183774.P15988080573804209611

namespace A183774

/-- `A159612(n+1)+A006131(n)` -/
def P15988080573804209611.Spec : Prop :=
  ∀ n, P15988080573804209611.a n = A183774 n

end A183774

/-! ## A183774.P1710818784182888879

`A159612(n+1)+A102446(n)/2`
-/

namespace A183774.P1710818784182888879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159612 (n + 1) : ℚ) + (A102446 n : ℚ) / 2

end

end A183774.P1710818784182888879

namespace A183774

/-- `A159612(n+1)+A102446(n)/2` -/
def P1710818784182888879.Spec : Prop :=
  ∀ n, P1710818784182888879.a n = (A183774 n : ℚ)

end A183774

/-! ## A183774.P11931858996507913414

`A006131(n+1)+A072265(n)-A006131(n)`
-/

namespace A183774.P11931858996507913414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (n + 1) + (A072265 n - A006131 n)

end

end A183774.P11931858996507913414

namespace A183774

/-- `A006131(n+1)+A072265(n)-A006131(n)` -/
def P11931858996507913414.Spec : Prop :=
  ∀ n, P11931858996507913414.a n = A183774 n

end A183774

/-! ## A183774.P2939388777962482207

`A277236(n+1)/2`
-/

namespace A183774.P2939388777962482207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277236 (n + 1) : ℚ) / 2

end

end A183774.P2939388777962482207

namespace A183774

/-- `A277236(n+1)/2` -/
def P2939388777962482207.Spec : Prop :=
  ∀ n, P2939388777962482207.a n = (A183774 n : ℚ)

end A183774

/-! ## A183774.P16049597801517058189

`A006131(n)+Δ[A026597(n)]`
-/

namespace A183774.P16049597801517058189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n + (f1 (n + 1) - f1 n)

end

end A183774.P16049597801517058189

namespace A183774

/-- `A006131(n)+Δ[A026597(n)]` -/
def P16049597801517058189.Spec : Prop :=
  ∀ n, P16049597801517058189.a n = A183774 n

end A183774

/-! ## A183774.P267274085409154478

`A026597(n)+A026597(n+1)/2`
-/

namespace A183774.P267274085409154478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026597 n : ℚ) + (A026597 (n + 1) : ℚ) / 2

end

end A183774.P267274085409154478

namespace A183774

/-- `A026597(n)+A026597(n+1)/2` -/
def P267274085409154478.Spec : Prop :=
  ∀ n, P267274085409154478.a n = (A183774 n : ℚ)

end A183774

/-! ## A183774.P4349447358043151508

`A026597(n+1)+A006131(n)-A026597(n)`
-/

namespace A183774.P4349447358043151508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 (n + 1) + (A006131 n - A026597 n)

end

end A183774.P4349447358043151508

namespace A183774

/-- `A026597(n+1)+A006131(n)-A026597(n)` -/
def P4349447358043151508.Spec : Prop :=
  ∀ n, P4349447358043151508.a n = A183774 n

end A183774

/-! ## A183774.P14253370598837735966

`A026583(n+1)-(A026597(n)+A026583(n))`
-/

namespace A183774.P14253370598837735966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026583 (n + 1) - (A026597 n + A026583 n)

end

end A183774.P14253370598837735966

namespace A183774

/-- `A026583(n+1)-(A026597(n)+A026583(n))` -/
def P14253370598837735966.Spec : Prop :=
  ∀ n, P14253370598837735966.a n = A183774 n

end A183774

/-! ## A183774.P15933308756867125418

`A277237(n+1)/3`
-/

namespace A183774.P15933308756867125418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277237 (n + 1) : ℚ) / 3

end

end A183774.P15933308756867125418

namespace A183774

/-- `A277237(n+1)/3` -/
def P15933308756867125418.Spec : Prop :=
  ∀ n, P15933308756867125418.a n = (A183774 n : ℚ)

end A183774

/-! ## A183774.P15595836849763522422

`A205219(n+1)/4`
-/

namespace A183774.P15595836849763522422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205219 (n + 1) : ℚ) / 4

end

end A183774.P15595836849763522422

namespace A183774

/-- `A205219(n+1)/4` -/
def P15595836849763522422.Spec : Prop :=
  ∀ n, P15595836849763522422.a n = (A183774 n : ℚ)

end A183774

/-! ## A183774.P1890189623751583172

`A277237(n+1)-A277236(n+1)`
-/

namespace A183774.P1890189623751583172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277237 (n + 1) - A277236 (n + 1)

end

end A183774.P1890189623751583172

namespace A183774

/-- `A277237(n+1)-A277236(n+1)` -/
def P1890189623751583172.Spec : Prop :=
  ∀ n, P1890189623751583172.a n = A183774 n

end A183774

/-! ## A183774.P3887361879924471029

`A185761(n+1)/8`
-/

namespace A183774.P3887361879924471029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185761 (n + 1) : ℚ) / 8

end

end A183774.P3887361879924471029

namespace A183774

/-- `A185761(n+1)/8` -/
def P3887361879924471029.Spec : Prop :=
  ∀ n, P3887361879924471029.a n = (A183774 n : ℚ)

end A183774

/-!
# A183775: Half the number of (n+1) X 3 binary arrays with no 2 X 2 subblock having exactly 2 ones.

The programs for A183775, the canonical program `A183775.P9403960458988182594` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183775 has offset 0).

The definition of A183775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183775.P2354421589540135165

`ogf((4+x-8x^2)/(1-3x-4x^2+8x^3))`
-/

namespace A183775.P2354421589540135165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -8] [1, -3, -4, 8] n

end

end A183775.P2354421589540135165

namespace A183775

/-- `ogf((4+x-8x^2)/(1-3x-4x^2+8x^3))` -/
def P2354421589540135165.Spec : Prop :=
  ∀ n, P2354421589540135165.a n = A183775 n

end A183775

/-! ## A183775.P9403960458988182594

`3*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=4, a(1)=13, a(2)=47`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A183775

/-- `3*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P9403960458988182594.Spec : Prop :=
  ∀ n, P9403960458988182594.a n = A183775 n

theorem P9403960458988182594.correct : P9403960458988182594.Spec := by
  intro n
  simp only [A183775]

end A183775

/-!
# A183782: T(n,k) = half the number of (n+1) X (k+1) binary arrays with no 2 X 2 subblock having exactly 2 ones.

The programs for A183782, there is no canonical definition to state claims against.
-/

/-! ## A183782.P12826167632325241507

`A259297(n+1)/2`
-/

namespace A183782.P12826167632325241507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259297 (n + 1) : ℚ) / 2

end

end A183782.P12826167632325241507

/-! ## A183782.P13816328375399938250

`round(A259297(n-log2(1/2))/2)`
-/

namespace A183782.P13816328375399938250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A259297 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 2)

end

end A183782.P13816328375399938250

/-! ## A183782.P5033078817227160149

`A014682(A259297(n+1))`
-/

namespace A183782.P5033078817227160149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A259297 (n + 1)).toNat

end

end A183782.P5033078817227160149

/-! ## A183782.P11991393081684287232

`A273943(A259297(comp[31*n]))`
-/

namespace A183782.P11991393081684287232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A259297 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A183782.P11991393081684287232

/-! ## A183782.P18288356744228778792

`A103391(A259297(n+1)-2)`
-/

namespace A183782.P18288356744228778792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A259297 (n + 1) - 2).toNat

end

end A183782.P18288356744228778792

/-!
# A183783: Half the number of (n+1) X (n+1) 0..2 arrays with no 2 X 2 subblock having sum 4.

The programs for A183783, there is no canonical definition to state claims against.
-/

/-! ## A183783.P3839988906874345324

`A183792((n+1)²+n²)`
-/

namespace A183783.P3839988906874345324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 ((n + 1) ^ 2 + n ^ 2)

end

end A183783.P3839988906874345324

/-!
# A183784: Half the number of (n+1) X 2 0..2 arrays with no 2 X 2 subblock having sum 4.

The programs for A183784, there is no canonical definition to state claims against.
-/

/-! ## A183784.P10842476387434461915

`A186133(n+2)/18`
-/

namespace A183784.P10842476387434461915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186133 (n + 2) : ℚ) / 18

end

end A183784.P10842476387434461915

/-! ## A183784.P12930007388039485783

`A183792(∑[n]+1)`
-/

namespace A183784.P12930007388039485783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183784.P12930007388039485783

/-! ## A183784.P14245178584206381107

`record[A010054(n)*A183792(n+1)]`
-/

namespace A183784.P14245178584206381107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183784.P14245178584206381107

/-! ## A183784.P18152042874708569645

`record[A183792(gcd(n+1, A002262(n)))]`
-/

namespace A183784.P18152042874708569645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (Int.gcd (n + 1 : ℤ) (A002262 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183784.P18152042874708569645

/-! ## A183784.P6488167877453266599

`record[root(A183792(n+1), A001263(n+1))]`
-/

namespace A183784.P6488167877453266599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183792 (n + 1) : ℝ) ^ (1 / (A001263 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183784.P6488167877453266599

/-!
# A183785: Half the number of (n+1) X 3 0..2 arrays with no 2 X 2 subblock having sum 4.

The programs for A183785, there is no canonical definition to state claims against.
-/

/-! ## A183785.P15711637805644328835

`A183792(∑[n+1]+2)`
-/

namespace A183785.P15711637805644328835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183785.P15711637805644328835

/-! ## A183785.P16573282800144859867

`record[A010054(n)*A183792(n+2)]`
-/

namespace A183785.P16573282800144859867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183792 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183785.P16573282800144859867

/-! ## A183785.P11079427190830926794

`record[gcd(A002262(n), A183792(n+2))]`
-/

namespace A183785.P11079427190830926794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183792 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183785.P11079427190830926794

/-! ## A183785.P12951406690108311892

`record[A183792(Δ[A003453(n+5)])]`
-/

namespace A183785.P12951406690108311892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183785.P12951406690108311892

/-! ## A183785.P7931521626339446342

`A183792(A117142(2*(n+1)))+A014018(3*n+1)`
-/

namespace A183785.P7931521626339446342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (A117142 (2 * (n + 1))).toNat + A014018 (3 * n + 1)

end

end A183785.P7931521626339446342

/-!
# A183786: Half the number of (n+1)X4 0..2 arrays with no 2X2 subblock having sum 4.

The programs for A183786, there is no canonical definition to state claims against.
-/

/-! ## A183786.P2263296866857970059

`A183792(∑[n+2]+4)`
-/

namespace A183786.P2263296866857970059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183786.P2263296866857970059

/-! ## A183786.P8833220215840898947

`A183792(A167614(n+1))*A291168(n)`
-/

namespace A183786.P8833220215840898947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (A167614 (n + 1)).toNat * A291168 n

end

end A183786.P8833220215840898947

/-! ## A183786.P16735462972175679379

`lcm(A114523(n), A183792(A167614(n+1)))`
-/

namespace A183786.P16735462972175679379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114523 n) (A183792 (A167614 (n + 1)).toNat)

end

end A183786.P16735462972175679379

/-! ## A183786.P4327146432580916551

`A183792(A167614(n+1))+A034508(n+1)`
-/

namespace A183786.P4327146432580916551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (A167614 (n + 1)).toNat + A034508 (n + 1)

end

end A183786.P4327146432580916551

/-! ## A183786.P13417657323937191768

`A183792(A167614(n+1))%A223341(n+1)`
-/

namespace A183786.P13417657323937191768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183792 (A167614 (n + 1)).toNat) (A223341 (n + 1))

end

end A183786.P13417657323937191768

/-!
# A183787: Half the number of (n+1)X5 0..2 arrays with no 2X2 subblock having sum 4.

The programs for A183787, there is no canonical definition to state claims against.
-/

/-! ## A183787.P4249832085262046237

`A183792(A052905(n)+9)`
-/

namespace A183787.P4249832085262046237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (A052905 n + 9).toNat

end

end A183787.P4249832085262046237

/-! ## A183787.P15113661738881578365

`A183792(A055999(n)+10)`
-/

namespace A183787.P15113661738881578365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (A055999 n + 10).toNat

end

end A183787.P15113661738881578365

/-! ## A183787.P14227025705994682695

`A183792(A167614(n+2)+1)`
-/

namespace A183787.P14227025705994682695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (A167614 (n + 2) + 1).toNat

end

end A183787.P14227025705994682695

/-! ## A183787.P7299642712762160548

`A183792(eq[5, A131818(n+1)])`
-/

namespace A183787.P7299642712762160548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183787.P7299642712762160548

/-! ## A183787.P13715922559595850818

`A183792(Δ[A023545(n+1)-n²])`
-/

namespace A183787.P13715922559595850818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (f1 (n + 1) - f1 n).toNat

end

end A183787.P13715922559595850818

/-!
# A183788: Half the number of (n+1)X6 0..2 arrays with no 2X2 subblock having sum 4.

The programs for A183788, there is no canonical definition to state claims against.
-/

/-! ## A183788.P1683827641946223105

`A183792(A374005(n+1))`
-/

namespace A183788.P1683827641946223105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (A374005 (n + 1)).toNat

end

end A183788.P1683827641946223105

/-! ## A183788.P5313219814893490870

`A183792(Δ[A023545(n+1)])`
-/

namespace A183788.P5313219814893490870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183792 (f1 (n + 1) - f1 n).toNat

end

end A183788.P5313219814893490870

/-!
# A183794: 1/4 the number of (n+1) X 2 0..3 arrays with no 2 X 2 subblock having sum 6.

The programs for A183794, there is no canonical definition to state claims against.
-/

/-! ## A183794.P216271867978418140

`sqrt(A185572(2*n+3))/4`
-/

namespace A183794.P216271867978418140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A185572 (2 * n + 3) : ℝ) / 4

end

end A183794.P216271867978418140

/-! ## A183794.P315988935389802185

`A185933(A000124(n+1))/64`
-/

namespace A183794.P315988935389802185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185933 (A000124 (n + 1)).toNat : ℚ) / 64

end

end A183794.P315988935389802185

/-! ## A183794.P16039896272816796249

`A185933(A000217(n+2))/64`
-/

namespace A183794.P16039896272816796249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185933 (A000217 (n + 2)).toNat : ℚ) / 64

end

end A183794.P16039896272816796249

/-!
# A183795: 1/4 the number of (n+1)X3 0..3 arrays with no 2X2 subblock having sum 6.

The programs for A183795, there is no canonical definition to state claims against.
-/

/-! ## A183795.P6769712222774460466

`A183802(∑[n+1]+2)`
-/

namespace A183795.P6769712222774460466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183795.P6769712222774460466

/-! ## A183795.P15537199124224618084

`record[A183802(A268669(n+1)+1)]`
-/

namespace A183795.P15537199124224618084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183802 (A268669 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183795.P15537199124224618084

/-!
# A183796: 1/4 the number of (n+1)X4 0..3 arrays with no 2X2 subblock having sum 6.

The programs for A183796, there is no canonical definition to state claims against.
-/

/-! ## A183796.P2509117315518205799

`A183802(record[xor(3, n)]+ceil((n+1)²/6))`
-/

namespace A183796.P2509117315518205799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183802 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ⌈((n + 1) ^ 2 : ℚ) / 6⌉).toNat

end

end A183796.P2509117315518205799

