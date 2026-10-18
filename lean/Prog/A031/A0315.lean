import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C028
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A031500: Numbers whose base-10 representation has 2 fewer 0's than 9's.

The programs for A031500, there is no canonical definition to state claims against.
-/

/-! ## A031500.P8902710781025799317

`eq[A020639(A086066(n)), A102683(n)]`
-/

namespace A031500.P8902710781025799317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A086066 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031500.P8902710781025799317

/-! ## A031500.P13066873191649392169

`A233583(10*A044895(n+1))`
-/

namespace A031500.P13066873191649392169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (10 * A044895 (n + 1)).toNat

end

end A031500.P13066873191649392169

/-! ## A031500.P14855721323425183927

`A043526(A000005(2^A007095(n)))`
-/

namespace A031500.P14855721323425183927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043526 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A007095 n : ℤ))).toNat).toNat

end

end A031500.P14855721323425183927

/-! ## A031500.P2534271886434791083

`A292739(comp[A163330(n)-A124240(n+1)])`
-/

namespace A031500.P2534271886434791083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 n - A124240 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A031500.P2534271886434791083

/-! ## A031500.P14514311610428914888

`A292739(comp[A001223(n+1)-A331614(3*n+2)])`
-/

namespace A031500.P14514311610428914888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A331614 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A031500.P14514311610428914888

/-!
# A031501: Triangle of numbers maxfit[ i ][ j ] = upper bound on number of incidences in a geometry with <= i points and <= j blocks.

The programs for A031501, there is no canonical definition to state claims against.
-/

/-! ## A031501.P12278205242382012919

`A340033(or(A004273(n), A036565(n)))`
-/

namespace A031501.P12278205242382012919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340033 (Int.lor (A004273 n) (A036565 n)).toNat

end

end A031501.P12278205242382012919

/-! ## A031501.P10375058600476678101

`A325166(6*A025626(n+1))`
-/

namespace A031501.P10375058600476678101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (6 * A025626 (n + 1)).toNat

end

end A031501.P10375058600476678101

/-! ## A031501.P857642295900985891

`A001222(lcm(2, A108218(n+1)))`
-/

namespace A031501.P857642295900985891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (A108218 (n + 1)))

end

end A031501.P857642295900985891

/-! ## A031501.P12559570161929722335

`A051903(21*A025627(n+1))`
-/

namespace A031501.P12559570161929722335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (21 * A025627 (n + 1)).toNat

end

end A031501.P12559570161929722335

/-! ## A031501.P4014695145372012127

`A001222(A108218(n+1))+abs(A197870(n))`
-/

namespace A031501.P4014695145372012127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108218 (n + 1)).toNat + |A197870 n|

end

end A031501.P4014695145372012127

/-!
# A031505: Upper prime of a difference of 4 between consecutive primes.

The programs for A031505, there is no canonical definition to state claims against.
-/

/-! ## A031505.P14772175966167838590

`A029708(n+1)+2`
-/

namespace A031505.P14772175966167838590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1) + 2

end

end A031505.P14772175966167838590

/-! ## A031505.P14380799105692960848

`A029710(n+1)+4`
-/

namespace A031505.P14380799105692960848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1) + 4

end

end A031505.P14380799105692960848

/-! ## A031505.P8458452118983152399

`2*A111981(n+1)+3`
-/

namespace A031505.P8458452118983152399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111981 (n + 1) + 3

end

end A031505.P8458452118983152399

/-! ## A031505.P5137300969245695411

`3*A157834(n+1)+2`
-/

namespace A031505.P5137300969245695411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157834 (n + 1) + 2

end

end A031505.P5137300969245695411

/-! ## A031505.P12653189249079958837

`A053320(n+1)+A046132(n+1)`
-/

namespace A031505.P12653189249079958837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053320 (n + 1) + A046132 (n + 1)

end

end A031505.P12653189249079958837

/-! ## A031505.P12861970398863455339

`A046132(n+2)`
-/

namespace A031505.P12861970398863455339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 2)

end

end A031505.P12861970398863455339

/-! ## A031505.P587646315383321126

`A087679(n+2)+2`
-/

namespace A031505.P587646315383321126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 2) + 2

end

end A031505.P587646315383321126

/-! ## A031505.P13498227642578767811

`A015913(n+2)+4`
-/

namespace A031505.P13498227642578767811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 2) + 4

end

end A031505.P13498227642578767811

/-! ## A031505.P5751799018013388412

`Δ[A172112(n+1)]+4`
-/

namespace A031505.P5751799018013388412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A031505.P5751799018013388412

/-! ## A031505.P7442172897987513942

`2*A088762(n+2)+3`
-/

namespace A031505.P7442172897987513942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088762 (n + 2) + 3

end

end A031505.P7442172897987513942

/-! ## A031505.P13801018075868494949

`ceil(sqrt(A143206(n+2)))+2`
-/

namespace A031505.P13801018075868494949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A143206 (n + 2) : ℝ)⌉ + 2

end

end A031505.P13801018075868494949

/-! ## A031505.P15875198940576059605

`A067830(n+3)`
-/

namespace A031505.P15875198940576059605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 3)

end

end A031505.P15875198940576059605

/-! ## A031505.P9692379485400955668

`A172238(n+3)+4`
-/

namespace A031505.P9692379485400955668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 3) + 4

end

end A031505.P9692379485400955668

/-! ## A031505.P2630243176734931423

`A111980(2*(n+1))`
-/

namespace A031505.P2630243176734931423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (2 * (n + 1))

end

end A031505.P2630243176734931423

/-! ## A031505.P2687335846522655875

`A111980(n+1+n)+4`
-/

namespace A031505.P2687335846522655875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1 + n) + 4

end

end A031505.P2687335846522655875

/-! ## A031505.P519334975024314690

`A094343(2*(n+1))+A053320(n+1)`
-/

namespace A031505.P519334975024314690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (2 * (n + 1)) + A053320 (n + 1)

end

end A031505.P519334975024314690

/-! ## A031505.P6520540225696516476

`A094343(2*(n+2))`
-/

namespace A031505.P6520540225696516476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (2 * (n + 2))

end

end A031505.P6520540225696516476

/-! ## A031505.P10078554513091333974

`A072541(2*(n+2))-1`
-/

namespace A031505.P10078554513091333974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 (2 * (n + 2)) - 1

end

end A031505.P10078554513091333974

/-! ## A031505.P15436840253745209962

`∑{p}[A165986(n+2), #+1]`
-/

namespace A031505.P15436840253745209962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165986 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A031505.P15436840253745209962

/-! ## A031505.P3791940422398765979

`p?[A072569(n+1)+2]`
-/

namespace A031505.P3791940422398765979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031505.P3791940422398765979

/-!
# A031506: Number of consecutive integers placed in n bins under a certain packing scheme.

The programs for A031506, the canonical program `A031506.P8923148781896726843` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031506 has offset 0).

The definition of A031506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031506.P304931340707573269

`∑[ogf((1+x^2-x^3)/(1-3x+x^2))]`
-/

namespace A031506.P304931340707573269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031506.P304931340707573269

namespace A031506

/-- `∑[ogf((1+x^2-x^3)/(1-3x+x^2))]` -/
def P304931340707573269.Spec : Prop :=
  ∀ n, P304931340707573269.a n = A031506 n

end A031506

/-! ## A031506.P10158666197518081574

`ogf((1+x^2-x^3)/(1-4x+4x^2-x^3))`
-/

namespace A031506.P10158666197518081574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -1] [1, -4, 4, -1] n

end

end A031506.P10158666197518081574

namespace A031506

/-- `ogf((1+x^2-x^3)/(1-4x+4x^2-x^3))` -/
def P10158666197518081574.Spec : Prop :=
  ∀ n, P10158666197518081574.a n = A031506 n

end A031506

/-! ## A031506.P3242547986805346436

`∑[floor(ϕ²*a(n-1))]` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A031506.P3242547986805346436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031506.P3242547986805346436

namespace A031506

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P3242547986805346436.Spec : Prop :=
  ∀ n, P3242547986805346436.a n = A031506 n

end A031506

/-! ## A031506.P9764916457974322172

`ceil(a(n-1)+ϕ*(a(n-1)+1))` with `a(0)=1, a(1)=4`
-/

namespace A031506.P9764916457974322172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.goldenRatio * (a (n - 1) + 1 : ℝ)⌉

end

end A031506.P9764916457974322172

namespace A031506

/-- `ceil(a(n-1)+ϕ*(a(n-1)+1))` -/
def P9764916457974322172.Spec : Prop :=
  ∀ n, P9764916457974322172.a n = A031506 n

end A031506

/-! ## A031506.P14076616996004280681

`or(1, floor(ϕ²*a(n-1)))+(n%3)!` with `a(0)=1`
-/

namespace A031506.P14076616996004280681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ + (Nat.factorial (n % 3) : ℤ)

end

end A031506.P14076616996004280681

namespace A031506

/-- `or(1, floor(ϕ²*a(n-1)))+(n%3)!` -/
def P14076616996004280681.Spec : Prop :=
  ∀ n, P14076616996004280681.a n = A031506 n

end A031506

/-! ## A031506.P14360450174892906134

`char[2]+3*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=4`
-/

namespace A031506.P14360450174892906134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (3 * a (n - 1) - a (n - 2)) + 1

end

end A031506.P14360450174892906134

namespace A031506

/-- `char[2]+3*a(n-1)-a(n-2)+1` -/
def P14360450174892906134.Spec : Prop :=
  ∀ n, P14360450174892906134.a n = A031506 n

end A031506

/-! ## A031506.P8923148781896726843

`A026625(Δ[n²])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031506

/-- `A026625(Δ[n²])` -/
def P8923148781896726843.Spec : Prop :=
  ∀ n, P8923148781896726843.a n = A031506 n

theorem P8923148781896726843.correct : P8923148781896726843.Spec := by
  intro n
  simp only [A031506]

end A031506

/-! ## A031506.P1078153394130803498

`record[A026625(n*and(1, n))]`
-/

namespace A031506.P1078153394130803498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026625 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031506.P1078153394130803498

namespace A031506

/-- `record[A026625(n*and(1, n))]` -/
def P1078153394130803498.Spec : Prop :=
  ∀ n, P1078153394130803498.a n = A031506 n

end A031506

/-! ## A031506.P15657869647085031047

`record[A022308(n+1)^(n%2)]`
-/

namespace A031506.P15657869647085031047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031506.P15657869647085031047

namespace A031506

/-- `record[A022308(n+1)^(n%2)]` -/
def P15657869647085031047.Spec : Prop :=
  ∀ n, P15657869647085031047.a n = A031506 n

end A031506

/-! ## A031506.P220076698865417593

`A057428(n)+A054486(n)`
-/

namespace A031506.P220076698865417593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A054486 n

end

end A031506.P220076698865417593

namespace A031506

/-- `A057428(n)+A054486(n)` -/
def P220076698865417593.Spec : Prop :=
  ∀ n, P220076698865417593.a n = A031506 n

end A031506

/-! ## A031506.P3616914470360836334

`A097134(n)+A027941(n)`
-/

namespace A031506.P3616914470360836334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097134 n + A027941 n

end

end A031506.P3616914470360836334

namespace A031506

/-- `A097134(n)+A027941(n)` -/
def P3616914470360836334.Spec : Prop :=
  ∀ n, P3616914470360836334.a n = A031506 n

end A031506

/-! ## A031506.P382723710350473253

`A256233(n)+A052925(n)`
-/

namespace A031506.P382723710350473253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 n + A052925 n

end

end A031506.P382723710350473253

namespace A031506

/-- `A256233(n)+A052925(n)` -/
def P382723710350473253.Spec : Prop :=
  ∀ n, P382723710350473253.a n = A031506 n

end A031506

/-! ## A031506.P16486058559187304874

`A054486(n)-A057427(n)`
-/

namespace A031506.P16486058559187304874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n - A057427 n

end

end A031506.P16486058559187304874

namespace A031506

/-- `A054486(n)-A057427(n)` -/
def P16486058559187304874.Spec : Prop :=
  ∀ n, P16486058559187304874.a n = A031506 n

end A031506

/-! ## A031506.P18201646952153882485

`A111282(n+1)+A035508(n)`
-/

namespace A031506.P18201646952153882485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111282 (n + 1) + A035508 n

end

end A031506.P18201646952153882485

namespace A031506

/-- `A111282(n+1)+A035508(n)` -/
def P18201646952153882485.Spec : Prop :=
  ∀ n, P18201646952153882485.a n = A031506 n

end A031506

/-! ## A031506.P17851583381862910380

`A002878(n)+A088305(n)-1`
-/

namespace A031506.P17851583381862910380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + (A088305 n - 1)

end

end A031506.P17851583381862910380

namespace A031506

/-- `A002878(n)+A088305(n)-1` -/
def P17851583381862910380.Spec : Prop :=
  ∀ n, P17851583381862910380.a n = A031506 n

end A031506

/-! ## A031506.P11819838428491312029

`A025169(n)-A093467(n+1)`
-/

namespace A031506.P11819838428491312029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - A093467 (n + 1)

end

end A031506.P11819838428491312029

namespace A031506

/-- `A025169(n)-A093467(n+1)` -/
def P11819838428491312029.Spec : Prop :=
  ∀ n, P11819838428491312029.a n = A031506 n

end A031506

/-! ## A031506.P13624404946878159940

`A000285(2*n)-A057427(n)`
-/

namespace A031506.P13624404946878159940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (2 * n) - A057427 n

end

end A031506.P13624404946878159940

namespace A031506

/-- `A000285(2*n)-A057427(n)` -/
def P13624404946878159940.Spec : Prop :=
  ∀ n, P13624404946878159940.a n = A031506 n

end A031506

/-! ## A031506.P14730925872272421494

`A001610(2*n+1)-A006355(2*n)`
-/

namespace A031506.P14730925872272421494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n + 1) - A006355 (2 * n)

end

end A031506.P14730925872272421494

namespace A031506

/-- `A001610(2*n+1)-A006355(2*n)` -/
def P14730925872272421494.Spec : Prop :=
  ∀ n, P14730925872272421494.a n = A031506 n

end A031506

/-! ## A031506.P1941782543151414018

`A000285(2*n)-A130654(2*n+1)`
-/

namespace A031506.P1941782543151414018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (2 * n) - A130654 (2 * n + 1)

end

end A031506.P1941782543151414018

namespace A031506

/-- `A000285(2*n)-A130654(2*n+1)` -/
def P1941782543151414018.Spec : Prop :=
  ∀ n, P1941782543151414018.a n = A031506 n

end A031506

/-! ## A031506.P3329267421450913907

`A000285(2*n)-and(1, A000040(n+1))`
-/

namespace A031506.P3329267421450913907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (2 * n) - Int.land 1 (A000040 (n + 1))

end

end A031506.P3329267421450913907

namespace A031506

/-- `A000285(2*n)-and(1, A000040(n+1))` -/
def P3329267421450913907.Spec : Prop :=
  ∀ n, P3329267421450913907.a n = A031506 n

end A031506

/-!
# A031507: a(n) = smallest k>0 such that the elliptic curve y^2 = x^3 + k has rank n, or -1 if no such k exists.

The programs for A031507, there is no canonical definition to state claims against.
-/

/-! ## A031507.P14653152043655488440

`∑[A084834(A137730(n+1))]`
-/

namespace A031507.P14653152043655488440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084834 (A137730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031507.P14653152043655488440

/-!
# A031508: a(n) = smallest k > 0 such that the elliptic curve y^2 = x^3 - k has rank n, or -1 if no such k exists.

The programs for A031508, there is no canonical definition to state claims against.
-/

/-! ## A031508.P2679486019816296705

`∑[A088442(A038156(n)²)]`
-/

namespace A031508.P2679486019816296705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 (A038156 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031508.P2679486019816296705

/-!
# A031509: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 11.

The programs for A031509, there is no canonical definition to state claims against.
-/

/-! ## A031509.P13554966951507391056

`eq[12, A308778(n)+A141134(n)]`
-/

namespace A031509.P13554966951507391056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n + A141134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031509.P13554966951507391056

/-! ## A031509.P12098544693666349355

`eq[11, A134430(n)*A308778(n)]`
-/

namespace A031509.P12098544693666349355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n * A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031509.P12098544693666349355

/-! ## A031509.P12081266994861709315

`eq[A066135(A063130(n+1))+1, A308778(n)]`
-/

namespace A031509.P12081266994861709315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A063130 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031509.P12081266994861709315

/-!
# A031510: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 12.

The programs for A031510, there is no canonical definition to state claims against.
-/

/-! ## A031510.P17335957532984788293

`eq[12, A308778(A233583(n+1))]`
-/

namespace A031510.P17335957532984788293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031510.P17335957532984788293

/-! ## A031510.P14655897373021407552

`eq[A000005(A272183(n+1)), A308778(n)]`
-/

namespace A031510.P14655897373021407552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A272183 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031510.P14655897373021407552

/-!
# A031511: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 13.

The programs for A031511, there is no canonical definition to state claims against.
-/

/-! ## A031511.P11134968259027620694

`eq[A141134(n)+12, A308778(n)]`
-/

namespace A031511.P11134968259027620694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141134 n + 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031511.P11134968259027620694

/-! ## A031511.P11288603762746607499

`eq[13, A134430(n)*A308778(n)]`
-/

namespace A031511.P11288603762746607499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n * A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031511.P11288603762746607499

/-! ## A031511.P296911321540574592

`eq[A070939(A247681(n+1)), A308778(n)]`
-/

namespace A031511.P296911321540574592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A247681 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031511.P296911321540574592

/-!
# A031512: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 14.

The programs for A031512, there is no canonical definition to state claims against.
-/

/-! ## A031512.P726709692944872539

`eq[A055027(A162371(n+1))+12, A308778(n)]`
-/

namespace A031512.P726709692944872539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (A162371 (n + 1)).toNat + 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031512.P726709692944872539

/-! ## A031512.P4462293157661066840

`eq[A055027(A266197(n+1)+1)+12, A308778(n)]`
-/

namespace A031512.P4462293157661066840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (A266197 (n + 1) + 1).toNat + 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031512.P4462293157661066840

/-!
# A031513: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 15.

The programs for A031513, there is no canonical definition to state claims against.
-/

/-! ## A031513.P10907620780930346788

`A080530(A020897(n+1)+6)`
-/

namespace A031513.P10907620780930346788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080530 (A020897 (n + 1) + 6).toNat

end

end A031513.P10907620780930346788

/-! ## A031513.P17075877051111010528

`A080530(A020898(n+1)+6)`
-/

namespace A031513.P17075877051111010528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080530 (A020898 (n + 1) + 6).toNat

end

end A031513.P17075877051111010528

/-!
# A031521: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 23.

The programs for A031521, there is no canonical definition to state claims against.
-/

/-! ## A031521.P17411677138281728104

`A126988(A042634(n))+A109420(n+5)`
-/

namespace A031521.P17411677138281728104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A042634 n).toNat + A109420 (n + 5)

end

end A031521.P17411677138281728104

/-!
# A031522: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 24.

The programs for A031522, there is no canonical definition to state claims against.
-/

/-! ## A031522.P1119511496004481120

`eq[A100476(A093995(n+1)), A308778(n)]`
-/

namespace A031522.P1119511496004481120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100476 (A093995 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031522.P1119511496004481120

/-! ## A031522.P17107913229439101665

`eq[A100476(A314313(n)), A308778(n)]`
-/

namespace A031522.P17107913229439101665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100476 (A314313 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031522.P17107913229439101665

/-! ## A031522.P10803600503426995111

`eq[A100476(A315474(n)), A308778(n)]`
-/

namespace A031522.P10803600503426995111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100476 (A315474 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031522.P10803600503426995111

/-! ## A031522.P12802557439063432286

`eq[A100476(A338224(n+1)), A308778(n)]`
-/

namespace A031522.P12802557439063432286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100476 (A338224 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031522.P12802557439063432286

/-!
# A031530: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 32.

The programs for A031530, there is no canonical definition to state claims against.
-/

/-! ## A031530.P3298239609687563008

`eq[32, A308778(n)]`
-/

namespace A031530.P3298239609687563008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031530.P3298239609687563008

/-!
# A031533: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 35.

The programs for A031533, there is no canonical definition to state claims against.
-/

/-! ## A031533.P7900259812459691238

`eq[35, A308778(n)]`
-/

namespace A031533.P7900259812459691238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031533.P7900259812459691238

/-!
# A031534: Numbers k such that the continued fraction for sqrt(k) has even period and if the last term of the periodic part is deleted the central term is 36.

The programs for A031534, there is no canonical definition to state claims against.
-/

/-! ## A031534.P286745739587043007

`eq[36, A308778(n)]`
-/

namespace A031534.P286745739587043007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031534.P286745739587043007

