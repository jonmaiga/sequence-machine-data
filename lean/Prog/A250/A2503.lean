import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B002.C000
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
import Seq.Opaque.C025

/-!
# A250300: Number of ON states after n generations of cellular automaton based on triangles (compare A161644).

The programs for A250300, there is no canonical definition to state claims against.
-/

/-! ## A250300.P9538565683597792345

`∑[A250301(n)]`
-/

namespace A250300.P9538565683597792345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250300.P9538565683597792345

/-! ## A250300.P13482480791440117193

`A254667(a(n-1))+A250301(n)` with `a(0)=0`
-/

namespace A250300.P13482480791440117193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A254667 (a (n - 1)).toNat + A250301 n

end

end A250300.P13482480791440117193

/-! ## A250300.P8176501425786256770

`∑{d}[A000079(n), A250301(log2(#))]`
-/

namespace A250300.P8176501425786256770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A250301 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A250300.P8176501425786256770

/-! ## A250300.P12429160616481954767

`3*A160162(A024655(n))`
-/

namespace A250300.P12429160616481954767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160162 (A024655 n).toNat

end

end A250300.P12429160616481954767

/-! ## A250300.P3217873300664597135

`eq[A312665(n), A315997(n)]`
-/

namespace A250300.P3217873300664597135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250300.P3217873300664597135

/-!
# A250301: First differences of A250300.

The programs for A250301, there is no canonical definition to state claims against.
-/

/-! ## A250301.P15130244003661476316

`Δ[A250300(log2(ceil(2^(n-1))))]`
-/

namespace A250301.P15130244003661476316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250300 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250301.P15130244003661476316

/-!
# A250307: Number of 2-colored Schroeder paths of semilength n in which there are no (2,0)-steps at level 1.

The programs for A250307, there is no canonical definition to state claims against.
-/

/-! ## A250307.P1077058639853493611

`∑[A070564(∑[A076035(n)])]`
-/

namespace A250307.P1077058639853493611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250307.P1077058639853493611

/-! ## A250307.P3333656762365732752

`A127306(A000332(n))+A005493(n)`
-/

namespace A250307.P3333656762365732752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127306 (A000332 n).toNat + A005493 n

end

end A250307.P3333656762365732752

/-!
# A250309: a(n) = a(n-1)*(1 + a(n-1)/a(n-3)), with a(0) = a(1) = a(2) = 1.

The programs for A250309, there is no canonical definition to state claims against.
-/

/-! ## A250309.P10113732231673605214

`∏[a(n-1)*a(n-2)+1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A250309.P10113732231673605214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) * f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A250309.P10113732231673605214

/-! ## A250309.P4924780793068919931

`lcm(a(n-1)+a(n-3), a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A250309.P4924780793068919931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Nat.lcm (a (n - 1) + a (n - 3)) (a (n - 1))

end

end A250309.P4924780793068919931

/-! ## A250309.P15905682669355367525

`a(n-1)+a(n-1)²/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A250309.P15905682669355367525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 / a (n - 3)

end

end A250309.P15905682669355367525

/-! ## A250309.P2154038439431387825

`a(n-1)*(1+a(n-1)/a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A250309.P2154038439431387825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) * (1 + a (n - 1) / a (n - 3))

end

end A250309.P2154038439431387825

/-! ## A250309.P11396836562915569822

`a(n-1)*A007660(n+1)` with `a(0)=1`
-/

namespace A250309.P11396836562915569822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007660 (n + 1)

end

end A250309.P11396836562915569822

/-!
# A250310: Numbers whose squares are of the form x^2 + y^2 + 3 where x >= y >= 0 (repetitions omitted).

The programs for A250310, there is no canonical definition to state claims against.
-/

/-! ## A250310.P14301812987330024139

`lt[1, A000925(abs(3-n²))]`
-/

namespace A250310.P14301812987330024139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 |3 - (n ^ 2 : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A250310.P14301812987330024139

/-! ## A250310.P282165864526879372

`eq[1, A262750(abs(3-n²)+1)]`
-/

namespace A250310.P282165864526879372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (|3 - (n ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250310.P282165864526879372

/-! ## A250310.P11975332418415850672

`record[A000188(A057653(n+1)+3)]`
-/

namespace A250310.P11975332418415850672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A057653 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250310.P11975332418415850672

/-! ## A250310.P10602987303029199346

`record[A071974(A057653(n+1)+3)]`
-/

namespace A250310.P10602987303029199346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A057653 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250310.P10602987303029199346

/-! ## A250310.P11067757993872773766

`record[A000188(A166687(n+2)+2)]`
-/

namespace A250310.P11067757993872773766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A166687 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250310.P11067757993872773766

/-!
# A250311: Numbers which produce primes if their prime factors, one by one, are prepended, inserted or appended.

The programs for A250311, there is no canonical definition to state claims against.
-/

/-! ## A250311.P6506462380790428906

`∩[A044968(n+1), A187372(n+1)]`
-/

namespace A250311.P6506462380790428906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250311.P6506462380790428906

/-!
# A250313: Number of length n+2 0..1 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250313, the canonical program `A250313.P1908437795509211882` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250313 has offset 1).

The definition of A250313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250313.P1908437795509211882

`A093178(n+4)+∑[A132732(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250313

/-- `A093178(n+4)+∑[A132732(n)]` -/
def P1908437795509211882.Spec : Prop :=
  ∀ n, P1908437795509211882.a n = A250313 (n + 1)

theorem P1908437795509211882.correct : P1908437795509211882.Spec := by
  intro n
  simp only [A250313, Nat.add_sub_cancel]

end A250313

/-! ## A250313.P457468158116865823

`A243860(n+1)+A114285(C(xor(1, n), n))`
-/

namespace A250313.P457468158116865823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243860 (n + 1) + A114285 (Nat.choose (Nat.xor 1 n) n)

end

end A250313.P457468158116865823

namespace A250313

/-- `A243860(n+1)+A114285(C(xor(1, n), n))` -/
def P457468158116865823.Spec : Prop :=
  ∀ n, P457468158116865823.a n = A250313 (n + 1)

end A250313

/-! ## A250313.P10412818391248877873

`A243860(n+1)+A114285(A193356(n+1))`
-/

namespace A250313.P10412818391248877873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243860 (n + 1) + A114285 (A193356 (n + 1)).toNat

end

end A250313.P10412818391248877873

namespace A250313

/-- `A243860(n+1)+A114285(A193356(n+1))` -/
def P10412818391248877873.Spec : Prop :=
  ∀ n, P10412818391248877873.a n = A250313 (n + 1)

end A250313

/-! ## A250313.P5249656607834812011

`A250554(n+1)-A004526(n)*A103517(n)`
-/

namespace A250313.P5249656607834812011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250554 (n + 1) - A004526 n * A103517 n

end

end A250313.P5249656607834812011

namespace A250313

/-- `A250554(n+1)-A004526(n)*A103517(n)` -/
def P5249656607834812011.Spec : Prop :=
  ∀ n, P5249656607834812011.a n = A250313 (n + 1)

end A250313

/-! ## A250313.P4472918728768043396

`A250320(∑[n+1])`
-/

namespace A250313.P4472918728768043396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250313.P4472918728768043396

namespace A250313

/-- `A250320(∑[n+1])` -/
def P4472918728768043396.Spec : Prop :=
  ∀ n, P4472918728768043396.a n = A250313 (n + 1)

end A250313

/-!
# A250314: Number of length n+2 0..2 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250314, there is no canonical definition to state claims against.
-/

/-! ## A250314.P2398476362241095282

`A250320(∑[n+2])`
-/

namespace A250314.P2398476362241095282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250314.P2398476362241095282

/-! ## A250314.P15662852147355242933

`record[A250320(abs(A201163(n)))]`
-/

namespace A250314.P15662852147355242933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250314.P15662852147355242933

/-! ## A250314.P15227204394724295383

`or(1, A250320(A000096(n+1)))`
-/

namespace A250314.P15227204394724295383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250320 (A000096 (n + 1)).toNat)

end

end A250314.P15227204394724295383

/-! ## A250314.P9988368868209923757

`A250320(A000096(n+1))%A000108(n+4)`
-/

namespace A250314.P9988368868209923757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250320 (A000096 (n + 1)).toNat) (A000108 (n + 4))

end

end A250314.P9988368868209923757

/-! ## A250314.P12360640760207943512

`A007318(C(2, n))*A250320(A000096(n+1))`
-/

namespace A250314.P12360640760207943512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250320 (A000096 (n + 1)).toNat

end

end A250314.P12360640760207943512

/-!
# A250315: Number of length n+2 0..3 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250315, there is no canonical definition to state claims against.
-/

/-! ## A250315.P14412379825687264041

`A250320(∑[n+3]+1)`
-/

namespace A250315.P14412379825687264041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250315.P14412379825687264041

/-! ## A250315.P4602038156270068943

`and(-1, A250320(A034856(n+2)))`
-/

namespace A250315.P4602038156270068943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A250320 (A034856 (n + 2)).toNat)

end

end A250315.P4602038156270068943

/-!
# A250316: Number of length n+2 0..4 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250316, there is no canonical definition to state claims against.
-/

/-! ## A250316.P14043858455432261279

`A250320(A141214(n+1))`
-/

namespace A250316.P14043858455432261279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A141214 (n + 1)).toNat

end

end A250316.P14043858455432261279

/-! ## A250316.P5819498476263565234

`A250320(A027379(n+2))`
-/

namespace A250316.P5819498476263565234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A027379 (n + 2)).toNat

end

end A250316.P5819498476263565234

/-! ## A250316.P14698833273503699523

`A250320(A055998(n+2))`
-/

namespace A250316.P14698833273503699523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A055998 (n + 2)).toNat

end

end A250316.P14698833273503699523

/-! ## A250316.P9916136806918451807

`A250320(A155212(n)+5)`
-/

namespace A250316.P9916136806918451807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A155212 n + 5).toNat

end

end A250316.P9916136806918451807

/-! ## A250316.P10032065543678916586

`A250320(A056000(n)+7)`
-/

namespace A250316.P10032065543678916586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A056000 n + 7).toNat

end

end A250316.P10032065543678916586

/-!
# A250317: Number of length n+2 0..5 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250317, there is no canonical definition to state claims against.
-/

/-! ## A250317.P1134489772706907682

`A250320(Δ[A264443(n)])`
-/

namespace A250317.P1134489772706907682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (f1 (n + 1) - f1 n).toNat

end

end A250317.P1134489772706907682

/-! ## A250317.P16832818428712027595

`A250320(A046691(n+3))`
-/

namespace A250317.P16832818428712027595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A046691 (n + 3)).toNat

end

end A250317.P16832818428712027595

/-! ## A250317.P4632857047020099104

`A250320(A056115(n)+11)`
-/

namespace A250317.P4632857047020099104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A056115 n + 11).toNat

end

end A250317.P4632857047020099104

/-! ## A250317.P7770044083553723362

`A250320(eq[2, A092921(n)])`
-/

namespace A250317.P7770044083553723362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250317.P7770044083553723362

/-! ## A250317.P5456174512518779941

`A250320(eq[3, A152157(n)])`
-/

namespace A250317.P5456174512518779941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250317.P5456174512518779941

/-!
# A250318: Number of length n+2 0..6 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250318, there is no canonical definition to state claims against.
-/

/-! ## A250318.P15534284319612833089

`A250320(A052905(n+3))`
-/

namespace A250318.P15534284319612833089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A052905 (n + 3)).toNat

end

end A250318.P15534284319612833089

/-! ## A250318.P654955982700108947

`A250320(A056119(n)+16)`
-/

namespace A250318.P654955982700108947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A056119 n + 16).toNat

end

end A250318.P654955982700108947

/-! ## A250318.P14386828921447723443

`A250320(eq[3, A219347(n)])`
-/

namespace A250318.P14386828921447723443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250318.P14386828921447723443

/-! ## A250318.P15178845799581121365

`A250320(eq[5, A193592(n)])`
-/

namespace A250318.P15178845799581121365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250318.P15178845799581121365

/-! ## A250318.P10784681372007406818

`A250320(eq[8, A258709(n)])`
-/

namespace A250318.P10784681372007406818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250318.P10784681372007406818

/-!
# A250319: Number of length n+2 0..7 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250319, there is no canonical definition to state claims against.
-/

/-! ## A250319.P7545697510262816622

`A250320(A055999(n+4))`
-/

namespace A250319.P7545697510262816622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A055999 (n + 4)).toNat

end

end A250319.P7545697510262816622

/-! ## A250319.P5459452647165047566

`A250320(A168106(n)-6)`
-/

namespace A250319.P5459452647165047566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A168106 n - 6).toNat

end

end A250319.P5459452647165047566

/-! ## A250319.P10630547875010191013

`A250320(eq[4, A219347(n)])`
-/

namespace A250319.P10630547875010191013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250319.P10630547875010191013

/-! ## A250319.P13107899499518535267

`A250320(eq[5, A332954(n)])`
-/

namespace A250319.P13107899499518535267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250319.P13107899499518535267

/-! ## A250319.P14888353608788645348

`A250320(eq[6, A193592(n)])`
-/

namespace A250319.P14888353608788645348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250319.P14888353608788645348

/-!
# A250321: Number of length 2+2 0..n arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250321, there is no canonical definition to state claims against.
-/

/-! ## A250321.P13022964023235602107

`A250561(∑[n+1]+2)`
-/

namespace A250321.P13022964023235602107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250321.P13022964023235602107

/-! ## A250321.P6014202954413799013

`record[A250561(n+3)/A049458(n)]`
-/

namespace A250321.P6014202954413799013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250561 (n + 3) : ℚ) / (A049458 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250321.P6014202954413799013

/-! ## A250321.P284193862688970244

`record[A250561(n+3)/A049460(n)]`
-/

namespace A250321.P284193862688970244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250561 (n + 3) : ℚ) / (A049460 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250321.P284193862688970244

/-! ## A250321.P8973521064248006268

`record[A250561(n+3)/A008275(n+1)]`
-/

namespace A250321.P8973521064248006268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250561 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250321.P8973521064248006268

/-! ## A250321.P16785267393424709293

`A250320(∑[n+1]+2)`
-/

namespace A250321.P16785267393424709293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250321.P16785267393424709293

/-!
# A250322: Number of length 3+2 0..n arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250322, there is no canonical definition to state claims against.
-/

/-! ## A250322.P18226684670408535867

`A250320(∑[n+2]+4)`
-/

namespace A250322.P18226684670408535867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250322.P18226684670408535867

/-! ## A250322.P9547801734996632584

`record[A010054(n)*A250320(n+3)]`
-/

namespace A250322.P9547801734996632584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250320 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250322.P9547801734996632584

/-! ## A250322.P12953074814407980915

`record[A250320(n+4)/A049458(n)]`
-/

namespace A250322.P12953074814407980915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250320 (n + 4) : ℚ) / (A049458 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250322.P12953074814407980915

/-! ## A250322.P8733804812907218091

`record[A250320(n+4)/A049460(n)]`
-/

namespace A250322.P8733804812907218091
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250320 (n + 4) : ℚ) / (A049460 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250322.P8733804812907218091

/-! ## A250322.P10531760293388842055

`record[A250320(n+4)/A008275(n+1)]`
-/

namespace A250322.P10531760293388842055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250320 (n + 4) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250322.P10531760293388842055

/-!
# A250323: Number of length 4+2 0..n arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250323, there is no canonical definition to state claims against.
-/

/-! ## A250323.P7289114529487146894

`A250320(∑[n+3]+7)`
-/

namespace A250323.P7289114529487146894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250323.P7289114529487146894

/-!
# A250324: Number of length 5+2 0..n arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250324, there is no canonical definition to state claims against.
-/

/-! ## A250324.P13545233250776532414

`A250320(A167499(n+3))`
-/

namespace A250324.P13545233250776532414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A167499 (n + 3)).toNat

end

end A250324.P13545233250776532414

/-! ## A250324.P9036361403164358139

`A250320(A155212(n)+13)`
-/

namespace A250324.P9036361403164358139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A155212 n + 13).toNat

end

end A250324.P9036361403164358139

/-! ## A250324.P9368263325997091601

`A250320(A056000(n)+15)`
-/

namespace A250324.P9368263325997091601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A056000 n + 15).toNat

end

end A250324.P9368263325997091601

/-! ## A250324.P13419146545109243166

`A250320(eq[7, A066657(n)])`
-/

namespace A250324.P13419146545109243166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250324.P13419146545109243166

/-! ## A250324.P11062002412651948417

`A250320(A166136(n+3)-1)`
-/

namespace A250324.P11062002412651948417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A166136 (n + 3) - 1).toNat

end

end A250324.P11062002412651948417

/-!
# A250325: Number of length 6+2 0..n arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250325, there is no canonical definition to state claims against.
-/

/-! ## A250325.P13474608681111014919

`A250320(A056115(n)+21)`
-/

namespace A250325.P13474608681111014919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A056115 n + 21).toNat

end

end A250325.P13474608681111014919

/-! ## A250325.P2061466742273249720

`A250320(A167499(n+4)+1)`
-/

namespace A250325.P2061466742273249720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A167499 (n + 4) + 1).toNat

end

end A250325.P2061466742273249720

/-! ## A250325.P867926420871714310

`A250320(A000096(n+4)+7)`
-/

namespace A250325.P867926420871714310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A000096 (n + 4) + 7).toNat

end

end A250325.P867926420871714310

/-! ## A250325.P9806332294839864112

`A250320(A055998(n+3)+9)`
-/

namespace A250325.P9806332294839864112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A055998 (n + 3) + 9).toNat

end

end A250325.P9806332294839864112

/-! ## A250325.P13090484165709075895

`A250320(eq[5, A002262(n)]+1)`
-/

namespace A250325.P13090484165709075895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A250325.P13090484165709075895

/-!
# A250326: Number of length 7+2 0..n arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

The programs for A250326, there is no canonical definition to state claims against.
-/

/-! ## A250326.P12178873264913752971

`A250320(A167487(n+5))`
-/

namespace A250326.P12178873264913752971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A167487 (n + 5)).toNat

end

end A250326.P12178873264913752971

/-! ## A250326.P13390380885356321932

`A250320(A056119(n)+28)`
-/

namespace A250326.P13390380885356321932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A056119 n + 28).toNat

end

end A250326.P13390380885356321932

/-! ## A250326.P8392874297522847195

`A250320(eq[11, A066657(n)])`
-/

namespace A250326.P8392874297522847195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250326.P8392874297522847195

/-! ## A250326.P11527061097953584939

`A250320(∑[A020715(n)]+22)`
-/

namespace A250326.P11527061097953584939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (∑ j ∈ Finset.range (n + 1), f1 j + 22).toNat

end

end A250326.P11527061097953584939

/-! ## A250326.P446533977338048931

`A250320(A167499(n+5)+2)`
-/

namespace A250326.P446533977338048931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A167499 (n + 5) + 2).toNat

end

end A250326.P446533977338048931

/-!
# A250327: Numerator of the harmonic mean of the first n pentagonal numbers.

The programs for A250327, there is no canonical definition to state claims against.
-/

/-! ## A250327.P13517164559966683465

`(n+1)/2*A294513(n)`
-/

namespace A250327.P13517164559966683465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A294513 n : ℚ)

end

end A250327.P13517164559966683465

/-!
# A250329: Number of length n+5 0..1 arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250329, there is no canonical definition to state claims against.
-/

/-! ## A250329.P12034298500613154882

`2*A133523(n+6)`
-/

namespace A250329.P12034298500613154882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133523 (n + 6)

end

end A250329.P12034298500613154882

/-! ## A250329.P1326940770059996205

`A133523(abs(xor(n, -1))+5)+A133523(n+6)`
-/

namespace A250329.P1326940770059996205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133523 (|Int.xor (n : ℤ) (-1)| + 5).toNat + A133523 (n + 6)

end

end A250329.P1326940770059996205

/-! ## A250329.P12377365812616405485

`A133523(A028310(n+6))+A133523(n+6)`
-/

namespace A250329.P12377365812616405485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133523 (A028310 (n + 6)).toNat + A133523 (n + 6)

end

end A250329.P12377365812616405485

/-! ## A250329.P3451236781766080757

`A133523(n+6)+A133523(n+6)%A133523(n+7)`
-/

namespace A250329.P3451236781766080757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133523 (n + 6) + Int.tmod (A133523 (n + 6)) (A133523 (n + 7))

end

end A250329.P3451236781766080757

/-! ## A250329.P17438017829668929664

`2*A213118(A034856(n+2))`
-/

namespace A250329.P17438017829668929664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213118 (A034856 (n + 2)).toNat

end

end A250329.P17438017829668929664

/-! ## A250329.P9430450335505864140

`A250336(∑[n+1])`
-/

namespace A250329.P9430450335505864140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250329.P9430450335505864140

/-! ## A250329.P17554361085001771122

`record[root(A250336(n+1), A130321(n))]`
-/

namespace A250329.P17554361085001771122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250336 (n + 1) : ℝ) ^ (1 / (A130321 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250329.P17554361085001771122

/-! ## A250329.P9633875307743792106

`record[gcd(A173787(n), A250336(n+1))]`
-/

namespace A250329.P9633875307743792106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173787 n) (A250336 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250329.P9633875307743792106

/-!
# A250330: Number of length n+5 0..2 arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250330, there is no canonical definition to state claims against.
-/

/-! ## A250330.P12272651055720695699

`A250336(∑[n+2])`
-/

namespace A250330.P12272651055720695699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250330.P12272651055720695699

/-! ## A250330.P14539846070925225319

`record[A250336(A000096(A065648(n)))]`
-/

namespace A250330.P14539846070925225319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250330.P14539846070925225319

/-! ## A250330.P6478907305730607699

`record[A250336(A000096(A120385(n+1)))]`
-/

namespace A250330.P6478907305730607699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (A120385 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250330.P6478907305730607699

/-! ## A250330.P533340956017155174

`record[A250336(A000096(A187184(n+1)))]`
-/

namespace A250330.P533340956017155174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (A187184 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250330.P533340956017155174

/-! ## A250330.P11760281762865028903

`record[A250336(A000096(A277813(n+1)))]`
-/

namespace A250330.P11760281762865028903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (A277813 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250330.P11760281762865028903

/-!
# A250331: Number of length n+5 0..3 arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250331, there is no canonical definition to state claims against.
-/

/-! ## A250331.P6914458778190644469

`A250336(∑[n+3]+1)`
-/

namespace A250331.P6914458778190644469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250331.P6914458778190644469

/-! ## A250331.P12371651350061163713

`lcm(2, A250336(Δ[A008778(n)]))`
-/

namespace A250331.P12371651350061163713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250336 (f1 (n + 1) - f1 n).toNat)

end

end A250331.P12371651350061163713

/-! ## A250331.P11069960716724071017

`lcm(4, A250336(A034856(n+2)))`
-/

namespace A250331.P11069960716724071017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A250336 (A034856 (n + 2)).toNat)

end

end A250331.P11069960716724071017

/-! ## A250331.P8625986413412890382

`A001511(2*n+1)*A250336(Δ[A008778(n)])`
-/

namespace A250331.P8625986413412890382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A250336 (f1 (n + 1) - f1 n).toNat

end

end A250331.P8625986413412890382

/-! ## A250331.P10298493790753379283

`A250336(Δ[A008778(n)])+A055040(n+1)%3`
-/

namespace A250331.P10298493790753379283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (f1 (n + 1) - f1 n).toNat + Int.tmod (A055040 (n + 1)) 3

end

end A250331.P10298493790753379283

/-! ## A250331.P15982793096837956989

`A059478(n+1)%2*A250336(Δ[A008778(n)])`
-/

namespace A250331.P15982793096837956989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059478 (n + 1)) 2 * A250336 (f1 (n + 1) - f1 n).toNat

end

end A250331.P15982793096837956989

/-! ## A250331.P18301521779871242413

`A000108(C(2, n+2))*A250336(A034856(n+2))`
-/

namespace A250331.P18301521779871242413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A250336 (A034856 (n + 2)).toNat

end

end A250331.P18301521779871242413

/-! ## A250331.P6864478568226929843

`A014963(A054979(n+1))*A250336(A034856(n+2))`
-/

namespace A250331.P6864478568226929843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054979 (n + 1)).toNat * A250336 (A034856 (n + 2)).toNat

end

end A250331.P6864478568226929843

/-!
# A250332: Number of length n+5 0..4 arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250332, there is no canonical definition to state claims against.
-/

/-! ## A250332.P950867544264233349

`A250336(A027379(n+2))`
-/

namespace A250332.P950867544264233349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A027379 (n + 2)).toNat

end

end A250332.P950867544264233349

/-! ## A250332.P2728739575684266387

`A250336(A055998(n+2))`
-/

namespace A250332.P2728739575684266387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A055998 (n + 2)).toNat

end

end A250332.P2728739575684266387

/-! ## A250332.P16393115530609196482

`A250336(A155212(n)+5)`
-/

namespace A250332.P16393115530609196482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A155212 n + 5).toNat

end

end A250332.P16393115530609196482

/-! ## A250332.P14312336014234318777

`A250336(A056000(n)+7)`
-/

namespace A250332.P14312336014234318777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A056000 n + 7).toNat

end

end A250332.P14312336014234318777

/-! ## A250332.P1776567130567200302

`A250336(Δ[A034857(n+1)])`
-/

namespace A250332.P1776567130567200302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (f1 (n + 1) - f1 n).toNat

end

end A250332.P1776567130567200302

/-! ## A250332.P3254681221732415878

`A250336(A052905(n+1)+2)`
-/

namespace A250332.P3254681221732415878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A052905 (n + 1) + 2).toNat

end

end A250332.P3254681221732415878

/-! ## A250332.P7974287860729682389

`A250336(Δ[A008778(n+1)]-1)`
-/

namespace A250332.P7974287860729682389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (f1 (n + 1) - f1 n - 1).toNat

end

end A250332.P7974287860729682389

/-! ## A250332.P473906573932623253

`A250336(A046691(n)+A020744(n))`
-/

namespace A250332.P473906573932623253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A046691 n + A020744 n).toNat

end

end A250332.P473906573932623253

/-! ## A250332.P4174896090401166143

`A250336(A167499(n)+A016777(n))`
-/

namespace A250332.P4174896090401166143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A167499 n + A016777 n).toNat

end

end A250332.P4174896090401166143

/-!
# A250333: Number of length n+5 0..5 arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250333, there is no canonical definition to state claims against.
-/

/-! ## A250333.P15509251645079604789

`A250336(A046691(n+3))`
-/

namespace A250333.P15509251645079604789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A046691 (n + 3)).toNat

end

end A250333.P15509251645079604789

/-! ## A250333.P12306421118060081336

`A250336(Δ[A023545(n+1)])`
-/

namespace A250333.P12306421118060081336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (f1 (n + 1) - f1 n).toNat

end

end A250333.P12306421118060081336

/-! ## A250333.P6733243355137954759

`A250336(A034856(n+4)-2)`
-/

namespace A250333.P6733243355137954759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A034856 (n + 4) - 2).toNat

end

end A250333.P6733243355137954759

/-! ## A250333.P7077551718954825235

`A250336(A000096(n+4)-3)`
-/

namespace A250333.P7077551718954825235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (n + 4) - 3).toNat

end

end A250333.P7077551718954825235

/-! ## A250333.P15853612431600237524

`A250336(A000124(n+5)-5)`
-/

namespace A250333.P15853612431600237524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000124 (n + 5) - 5).toNat

end

end A250333.P15853612431600237524

/-! ## A250333.P12860844368401747437

`A250336(Δ[A034857(n+2)]-1)`
-/

namespace A250333.P12860844368401747437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (f1 (n + 1) - f1 n - 1).toNat

end

end A250333.P12860844368401747437

/-!
# A250334: Number of length n+5 0..6 arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250334, there is no canonical definition to state claims against.
-/

/-! ## A250334.P13732492838656269725

`A250336(A052905(n+3))`
-/

namespace A250334.P13732492838656269725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A052905 (n + 3)).toNat

end

end A250334.P13732492838656269725

/-! ## A250334.P11106137687596088299

`A250336(A155212(n+2)+3)`
-/

namespace A250334.P11106137687596088299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A155212 (n + 2) + 3).toNat

end

end A250334.P11106137687596088299

/-! ## A250334.P8005576372966215984

`A250336(A000217(n+6)-5)`
-/

namespace A250334.P8005576372966215984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000217 (n + 6) - 5).toNat

end

end A250334.P8005576372966215984

/-! ## A250334.P14728194670983590126

`A250336(Δ[A023545(n+2)]-1)`
-/

namespace A250334.P14728194670983590126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (f1 (n + 1) - f1 n - 1).toNat

end

end A250334.P14728194670983590126

/-! ## A250334.P16805845391948344118

`A250336(eq[4, A025581(n)]+n+6)`
-/

namespace A250334.P16805845391948344118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 6))

end

end A250334.P16805845391948344118

/-! ## A250334.P4512521728560294878

`A250336(A000096(n+7)-A004273(n+10))`
-/

namespace A250334.P4512521728560294878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (n + 7) - A004273 (n + 10)).toNat

end

end A250334.P4512521728560294878

/-!
# A250335: Number of length n+5 0..7 arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250335, there is no canonical definition to state claims against.
-/

/-! ## A250335.P10122003853702186200

`A250336(A055999(n+4))`
-/

namespace A250335.P10122003853702186200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A055999 (n + 4)).toNat

end

end A250335.P10122003853702186200

/-! ## A250335.P12602290415403512459

`A250336(A052905(n+4)-1)`
-/

namespace A250335.P12602290415403512459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A052905 (n + 4) - 1).toNat

end

end A250335.P12602290415403512459

/-! ## A250335.P17126530501341925956

`A250336(A000124(n+7)-7)`
-/

namespace A250335.P17126530501341925956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000124 (n + 7) - 7).toNat

end

end A250335.P17126530501341925956

/-! ## A250335.P9020747159992195555

`A250336(A152950(n+8)-9)`
-/

namespace A250335.P9020747159992195555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A152950 (n + 8) - 9).toNat

end

end A250335.P9020747159992195555

/-! ## A250335.P1999062628542874957

`A250336(A000096(n+5)+n+2)`
-/

namespace A250335.P1999062628542874957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A250335.P1999062628542874957

/-!
# A250337: Number of length 1+5 0..n arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250337, the canonical program `A250337.P11402605938923335163` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250337 has offset 1).

The definition of A250337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250337.P11402605938923335163

`(n+2)^6-A250015(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A250337

/-- `(n+2)^6-A250015(n+1)` -/
def P11402605938923335163.Spec : Prop :=
  ∀ n, P11402605938923335163.a n = A250337 (n + 1)

theorem P11402605938923335163.correct : P11402605938923335163.Spec := by
  intro n
  simp only [A250337, Nat.add_sub_cancel]

end A250337

/-! ## A250337.P8372124283215170615

`Δ[((n+1)²²-n)*∑[n+1]]`
-/

namespace A250337.P8372124283215170615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250337.P8372124283215170615

namespace A250337

/-- `Δ[((n+1)²²-n)*∑[n+1]]` -/
def P8372124283215170615.Spec : Prop :=
  ∀ n, P8372124283215170615.a n = A250337 (n + 1)

end A250337

/-! ## A250337.P16790164894370336167

`A250081(∑[n]+1)-∑[5*(n+1)]`
-/

namespace A250337.P16790164894370336167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A250337.P16790164894370336167

namespace A250337

/-- `A250081(∑[n]+1)-∑[5*(n+1)]` -/
def P16790164894370336167.Spec : Prop :=
  ∀ n, P16790164894370336167.a n = A250337 (n + 1)

end A250337

/-! ## A250337.P13807579590218379865

`A250336(∑[n]+1)`
-/

namespace A250337.P13807579590218379865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250337.P13807579590218379865

namespace A250337

/-- `A250336(∑[n]+1)` -/
def P13807579590218379865.Spec : Prop :=
  ∀ n, P13807579590218379865.a n = A250337 (n + 1)

end A250337

/-! ## A250337.P1250249609058748916

`record[A250336(n+1)/A098473(n)]`
-/

namespace A250337.P1250249609058748916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250336 (n + 1) : ℚ) / (A098473 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250337.P1250249609058748916

namespace A250337

/-- `record[A250336(n+1)/A098473(n)]` -/
def P1250249609058748916.Spec : Prop :=
  ∀ n, P1250249609058748916.a n = (A250337 (n + 1) : ℚ)

end A250337

/-! ## A250337.P1727598670099076224

`record[gcd(A221459(n+1), A250336(n+1))]`
-/

namespace A250337.P1727598670099076224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221459 (n + 1)) (A250336 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250337.P1727598670099076224

namespace A250337

/-- `record[gcd(A221459(n+1), A250336(n+1))]` -/
def P1727598670099076224.Spec : Prop :=
  ∀ n, (P1727598670099076224.a n : ℤ) = A250337 (n + 1)

end A250337

/-!
# A250338: Number of length 2+5 0..n arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250338, there is no canonical definition to state claims against.
-/

/-! ## A250338.P6678398949062733350

`A250336(∑[n+1]+2)`
-/

namespace A250338.P6678398949062733350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250338.P6678398949062733350

/-! ## A250338.P11294371341756376313

`record[A250336(A133263(abs(1-n)))]`
-/

namespace A250338.P11294371341756376313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250338.P11294371341756376313

/-! ## A250338.P15271345608320474801

`A033999(n)²*A250336(A133263(n+1))`
-/

namespace A250338.P15271345608320474801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A250336 (A133263 (n + 1)).toNat

end

end A250338.P15271345608320474801

/-! ## A250338.P1577985661589550055

`A250336(A133263(n+1))%A250340(n+1)`
-/

namespace A250338.P1577985661589550055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250336 (A133263 (n + 1)).toNat) (A250340 (n + 1))

end

end A250338.P1577985661589550055

/-! ## A250338.P17449903696944936766

`A250336(A000096(n)+3)%A250331(n+1)`
-/

namespace A250338.P17449903696944936766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250336 (A000096 n + 3).toNat) (A250331 (n + 1))

end

end A250338.P17449903696944936766

/-! ## A250338.P11103439008313353076

`A056594(2*n)²*A250336(A133263(n+1))`
-/

namespace A250338.P11103439008313353076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * A250336 (A133263 (n + 1)).toNat

end

end A250338.P11103439008313353076

/-! ## A250338.P8329928867985812721

`A174275(A031933(n))*A250336(A133263(n+1))`
-/

namespace A250338.P8329928867985812721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (A031933 n).toNat * A250336 (A133263 (n + 1)).toNat

end

end A250338.P8329928867985812721

/-! ## A250338.P17313775783677107382

`A057427(A044427(n+1))*A250336(A133263(n+1))`
-/

namespace A250338.P17313775783677107382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A044427 (n + 1)).toNat * A250336 (A133263 (n + 1)).toNat

end

end A250338.P17313775783677107382

/-! ## A250338.P17829008453770087849

`A000045(A014963(2*(n+1)))*A250336(A133263(n+1))`
-/

namespace A250338.P17829008453770087849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (2 * (n + 1))).toNat * A250336 (A133263 (n + 1)).toNat

end

end A250338.P17829008453770087849

/-!
# A250339: Number of length 3+5 0..n arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250339, there is no canonical definition to state claims against.
-/

/-! ## A250339.P11384596815095304546

`A250336(∑[n+2]+4)`
-/

namespace A250339.P11384596815095304546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250339.P11384596815095304546

/-! ## A250339.P8288412241332359059

`or(char[1], A250336(A167614(n+1)))`
-/

namespace A250339.P8288412241332359059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250336 (A167614 (n + 1)).toNat)

end

end A250339.P8288412241332359059

/-! ## A250339.P11996327444598352838

`lcm(A033999(n), A250336(A167614(n+1)))`
-/

namespace A250339.P11996327444598352838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250336 (A167614 (n + 1)).toNat)

end

end A250339.P11996327444598352838

/-! ## A250339.P15070168716104058888

`A250336(A055998(n)+6)+A000007(n+1)`
-/

namespace A250339.P15070168716104058888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A055998 n + 6).toNat + A000007 (n + 1)

end

end A250339.P15070168716104058888

/-! ## A250339.P13199274691240572424

`or(A005369(n+1), A250336(A055998(n)+6))`
-/

namespace A250339.P13199274691240572424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 (n + 1)) (A250336 (A055998 n + 6).toNat)

end

end A250339.P13199274691240572424

/-! ## A250339.P15245960538984490385

`A001511(2*n+1)*A250336(A055998(n)+6)`
-/

namespace A250339.P15245960538984490385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A250336 (A055998 n + 6).toNat

end

end A250339.P15245960538984490385

/-! ## A250339.P4775136949858182630

`A250336(A167614(n+1))+A006995(abs((-1)^n))`
-/

namespace A250339.P4775136949858182630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A167614 (n + 1)).toNat + A006995 |(-1) ^ n|.toNat

end

end A250339.P4775136949858182630

/-! ## A250339.P14064865390829453006

`A007318(A000217(n))*A250336(A167614(n+1))`
-/

namespace A250339.P14064865390829453006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A250336 (A167614 (n + 1)).toNat

end

end A250339.P14064865390829453006

/-!
# A250340: Number of length 4+5 0..n arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250340, there is no canonical definition to state claims against.
-/

/-! ## A250340.P12037648151362468149

`A250336(A052905(n)+9)`
-/

namespace A250340.P12037648151362468149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A052905 n + 9).toNat

end

end A250340.P12037648151362468149

/-! ## A250340.P8616392212950680715

`A250336(A055999(n)+10)`
-/

namespace A250340.P8616392212950680715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A055999 n + 10).toNat

end

end A250340.P8616392212950680715

/-! ## A250340.P11833001934065986147

`A250336(A167614(n+2)+1)`
-/

namespace A250340.P11833001934065986147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A167614 (n + 2) + 1).toNat

end

end A250340.P11833001934065986147

/-! ## A250340.P1843626893581318954

`A250336(A167499(n+2)-1)`
-/

namespace A250340.P1843626893581318954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A167499 (n + 2) - 1).toNat

end

end A250340.P1843626893581318954

/-! ## A250340.P9782390765128183310

`A250336(A166136(n+2)-2)`
-/

namespace A250340.P9782390765128183310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A166136 (n + 2) - 2).toNat

end

end A250340.P9782390765128183310

/-! ## A250340.P15938142265524740893

`A250336(A166136(n+1)+1+n)`
-/

namespace A250340.P15938142265524740893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A250340.P15938142265524740893

/-! ## A250340.P7842057770459513117

`A250336(Δ[A023545(n+1)-n²])`
-/

namespace A250340.P7842057770459513117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (f1 (n + 1) - f1 n).toNat

end

end A250340.P7842057770459513117

/-!
# A250341: Number of length 5+5 0..n arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250341, there is no canonical definition to state claims against.
-/

/-! ## A250341.P18308089755666921288

`A250336(A167499(n+3))`
-/

namespace A250341.P18308089755666921288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A167499 (n + 3)).toNat

end

end A250341.P18308089755666921288

/-! ## A250341.P12532002874418471690

`A250336(A167614(n+3)+2)`
-/

namespace A250341.P12532002874418471690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A167614 (n + 3) + 2).toNat

end

end A250341.P12532002874418471690

/-! ## A250341.P3935769952890319197

`A250336(A133263(n+4)+3)`
-/

namespace A250341.P3935769952890319197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A133263 (n + 4) + 3).toNat

end

end A250341.P3935769952890319197

/-! ## A250341.P2770837369012249584

`A250336(A253145(n+3)+5)`
-/

namespace A250341.P2770837369012249584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A253145 (n + 3) + 5).toNat

end

end A250341.P2770837369012249584

/-! ## A250341.P1125587536919600607

`A250336(A000217(n+4)+5)`
-/

namespace A250341.P1125587536919600607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000217 (n + 4) + 5).toNat

end

end A250341.P1125587536919600607

/-! ## A250341.P6435173749277272879

`A250336(A000096(n+2)+n+10)`
-/

namespace A250341.P6435173749277272879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (n + 2) + (n + 10 : ℤ)).toNat

end

end A250341.P6435173749277272879

/-! ## A250341.P365392958465242466

`A250336(A038722(Δ[A023545(n+1)]))`
-/

namespace A250341.P365392958465242466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A250341.P365392958465242466

/-!
# A250342: Number of length 6+5 0..n arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250342, there is no canonical definition to state claims against.
-/

/-! ## A250342.P13766410832981196452

`A250336(A166136(n+4))`
-/

namespace A250342.P13766410832981196452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A166136 (n + 4)).toNat

end

end A250342.P13766410832981196452

/-! ## A250342.P6384349125192619255

`A250336(A167614(n+4)+3)`
-/

namespace A250342.P6384349125192619255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A167614 (n + 4) + 3).toNat

end

end A250342.P6384349125192619255

/-! ## A250342.P12625821820538147607

`A250336(A253145(n+4)+6)`
-/

namespace A250342.P12625821820538147607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A253145 (n + 4) + 6).toNat

end

end A250342.P12625821820538147607

/-! ## A250342.P1560595109711793393

`A250336(A000096(n+4)+7)`
-/

namespace A250342.P1560595109711793393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (n + 4) + 7).toNat

end

end A250342.P1560595109711793393

/-! ## A250342.P10066461007118303587

`A250336(A000217(n+5)+6)`
-/

namespace A250342.P10066461007118303587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000217 (n + 5) + 6).toNat

end

end A250342.P10066461007118303587

/-! ## A250342.P13963851938819676626

`A250336(A087811(n+1)+A087811(n+8))`
-/

namespace A250342.P13963851938819676626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A087811 (n + 1) + A087811 (n + 8)).toNat

end

end A250342.P13963851938819676626

/-! ## A250342.P12681461988981552456

`A250336(A002620(n+2)+A002620(n+9))`
-/

namespace A250342.P12681461988981552456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A250342.P12681461988981552456

/-! ## A250342.P9401481844726536759

`A250336(A152950(n+4)+A004275(n+7))`
-/

namespace A250342.P9401481844726536759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A152950 (n + 4) + A004275 (n + 7)).toNat

end

end A250342.P9401481844726536759

/-!
# A250343: Number of length 7+5 0..n arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

The programs for A250343, there is no canonical definition to state claims against.
-/

/-! ## A250343.P13749193317059720873

`A250336(A167614(n+5)+4)`
-/

namespace A250343.P13749193317059720873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A167614 (n + 5) + 4).toNat

end

end A250343.P13749193317059720873

/-! ## A250343.P5046552968188765903

`A250336(A133263(n+6)+5)`
-/

namespace A250343.P5046552968188765903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A133263 (n + 6) + 5).toNat

end

end A250343.P5046552968188765903

/-! ## A250343.P3653005227268213739

`A250336(A253145(n+5)+7)`
-/

namespace A250343.P3653005227268213739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A253145 (n + 5) + 7).toNat

end

end A250343.P3653005227268213739

/-! ## A250343.P11973677068922477709

`A250336(A000096(n+5)+8)`
-/

namespace A250343.P11973677068922477709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000096 (n + 5) + 8).toNat

end

end A250343.P11973677068922477709

/-! ## A250343.P10991485269608651947

`A250336(A000217(n+6)+7)`
-/

namespace A250343.P10991485269608651947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250336 (A000217 (n + 6) + 7).toNat

end

end A250343.P10991485269608651947

/-!
# A250344: Numerator of the harmonic mean of the first n hexagonal numbers.

The programs for A250344, there is no canonical definition to state claims against.
-/

/-! ## A250344.P8127695528671894012

`A111876(n)*A308500(A000096(n))`
-/

namespace A250344.P8127695528671894012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111876 n * A308500 (A000096 n).toNat

end

end A250344.P8127695528671894012

/-! ## A250344.P7409292246368406230

`A111876(n)*A122111(A122111(n+1))`
-/

namespace A250344.P7409292246368406230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111876 n * A122111 (A122111 (n + 1)).toNat

end

end A250344.P7409292246368406230

/-! ## A250344.P3296661329519598613

`A111876(n)*A357629(A000040(n+1))`
-/

namespace A250344.P3296661329519598613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111876 n * A357629 (A000040 (n + 1)).toNat

end

end A250344.P3296661329519598613

/-! ## A250344.P16909807924534456770

`A117664(n+1)*A377903(A377903(n+1))*A000005(2^n)`
-/

namespace A250344.P16909807924534456770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117664 (n + 1) * A377903 (A377903 (n + 1)).toNat * A000005 (2 ^ n)

end

end A250344.P16909807924534456770

/-!
# A250346: Number of length n arrays x(i), i=1..n with x(i) in i..i+3 and no value appearing more than 2 times.

The programs for A250346, there is no canonical definition to state claims against.
-/

/-! ## A250346.P13461469756570865131

`A250351(∑[n+3]+1)`
-/

namespace A250346.P13461469756570865131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250346.P13461469756570865131

/-! ## A250346.P11766945080708691900

`A250351(A034856(n+2))%A000670(n+3)`
-/

namespace A250346.P11766945080708691900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250351 (A034856 (n + 2)).toNat) (A000670 (n + 3))

end

end A250346.P11766945080708691900

/-! ## A250346.P7472664363690462083

`record[A250351(A198464(n+1))]`
-/

namespace A250346.P7472664363690462083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250346.P7472664363690462083

/-!
# A250347: Number of length n arrays x(i), i=1..n with x(i) in i..i+4 and no value appearing more than 2 times.

The programs for A250347, there is no canonical definition to state claims against.
-/

/-! ## A250347.P8700711996642031155

`A250351(∑[n+4]+3)`
-/

namespace A250347.P8700711996642031155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250347.P8700711996642031155

/-! ## A250347.P15713412792741527828

`A250351(Δ[A006416(n+2)])+A034560(n+1)`
-/

namespace A250347.P15713412792741527828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (f1 (n + 1) - f1 n).toNat + A034560 (n + 1)

end

end A250347.P15713412792741527828

/-! ## A250347.P18299244829419155935

`A014963(A008458(n))*A250351(A141214(n+1))`
-/

namespace A250347.P18299244829419155935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A250351 (A141214 (n + 1)).toNat

end

end A250347.P18299244829419155935

/-! ## A250347.P12071114344905617009

`A007318(A000217(n+1))*A250351(A141214(n+1))`
-/

namespace A250347.P12071114344905617009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 1)).toNat * A250351 (A141214 (n + 1)).toNat

end

end A250347.P12071114344905617009

/-! ## A250347.P3157236084148228860

`A000045(A014963(4*n+2))*A250351(A141214(n+1))`
-/

namespace A250347.P3157236084148228860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (4 * n + 2)).toNat * A250351 (A141214 (n + 1)).toNat

end

end A250347.P3157236084148228860

/-!
# A250348: Number of length n arrays x(i), i=1..n with x(i) in i..i+5 and no value appearing more than 2 times.

The programs for A250348, there is no canonical definition to state claims against.
-/

/-! ## A250348.P12352023210934146839

`A250351(Δ[A264443(n)])`
-/

namespace A250348.P12352023210934146839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (f1 (n + 1) - f1 n).toNat

end

end A250348.P12352023210934146839

/-! ## A250348.P8125597377513594926

`A250351(A046691(n+3))`
-/

namespace A250348.P8125597377513594926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A046691 (n + 3)).toNat

end

end A250348.P8125597377513594926

/-! ## A250348.P9153442958281280217

`A250351(Δ[A023545(n+1)])`
-/

namespace A250348.P9153442958281280217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (f1 (n + 1) - f1 n).toNat

end

end A250348.P9153442958281280217

/-! ## A250348.P13901012013522480018

`A250351(A056000(n+1)+6)`
-/

namespace A250348.P13901012013522480018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A056000 (n + 1) + 6).toNat

end

end A250348.P13901012013522480018

/-! ## A250348.P9165064075750037916

`A250351(A000124(n+5)-5)`
-/

namespace A250348.P9165064075750037916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000124 (n + 5) - 5).toNat

end

end A250348.P9165064075750037916

/-!
# A250349: Number of length n arrays x(i), i=1..n with x(i) in i..i+6 and no value appearing more than 2 times.

The programs for A250349, there is no canonical definition to state claims against.
-/

/-! ## A250349.P15133504166375857226

`A250351(∑[n+6]+10)`
-/

namespace A250349.P15133504166375857226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A250349.P15133504166375857226

/-! ## A250349.P697088229203794572

`A033999(n)²*A250351(eq[8, A258709(n)])`
-/

namespace A250349.P697088229203794572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A250351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250349.P697088229203794572

/-! ## A250349.P14750870897836788542

`A250351(eq[8, A258709(n)])+A000007(n+1)`
-/

namespace A250349.P14750870897836788542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A250349.P14750870897836788542

/-! ## A250349.P5087580572761095136

`A250351(eq[8, A258709(n)])+A002483(2*n)`
-/

namespace A250349.P5087580572761095136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A002483 (2 * n)

end

end A250349.P5087580572761095136

/-! ## A250349.P673167301483051651

`A009001(2*n)²*A250351(eq[8, A258709(n)])`
-/

namespace A250349.P673167301483051651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A250351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250349.P673167301483051651

/-!
# A250350: Number of length n arrays x(i), i=1..n with x(i) in i..i+7 and no value appearing more than 2 times.

The programs for A250350, there is no canonical definition to state claims against.
-/

/-! ## A250350.P564178940752350228

`A250351(A055999(n+4))`
-/

namespace A250350.P564178940752350228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A055999 (n + 4)).toNat

end

end A250350.P564178940752350228

/-! ## A250350.P4784546663597068084

`A250351(A052905(n+4)-1)`
-/

namespace A250350.P4784546663597068084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A052905 (n + 4) - 1).toNat

end

end A250350.P4784546663597068084

/-! ## A250350.P3971060955915529220

`A250351(A000124(n+7)-7)`
-/

namespace A250350.P3971060955915529220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000124 (n + 7) - 7).toNat

end

end A250350.P3971060955915529220

/-! ## A250350.P9971344890938598125

`A250351(A000217(n+6)+n+1)`
-/

namespace A250350.P9971344890938598125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A250350.P9971344890938598125

/-! ## A250350.P15628601263580083765

`A250351(A167499(n+4)+2*(n+1))`
-/

namespace A250350.P15628601263580083765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A250350.P15628601263580083765

/-!
# A250351: T(n,k)=Number of length n arrays x(i), i=1..n with x(i) in i..i+k and no value appearing more than 2 times.

The programs for A250351, there is no canonical definition to state claims against.
-/

/-! ## A250351.P6557565643777761103

`A198060(A262545(n+1))+A193862(n)`
-/

namespace A250351.P6557565643777761103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198060 (A262545 (n + 1)).toNat + A193862 n

end

end A250351.P6557565643777761103

/-! ## A250351.P6038869117374942942

`A353303(A035470(n+4))+A244832(n+1)`
-/

namespace A250351.P6038869117374942942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A035470 (n + 4)).toNat + A244832 (n + 1)

end

end A250351.P6038869117374942942

/-! ## A250351.P4864378670892529065

`A244832(n+1)+A025465(A077168(n))`
-/

namespace A250351.P4864378670892529065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (n + 1) + A025465 (A077168 n).toNat

end

end A250351.P4864378670892529065

/-! ## A250351.P5573582658640568918

`A244832(n+1)+A025465(A099962(n))`
-/

namespace A250351.P5573582658640568918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (n + 1) + A025465 (A099962 n).toNat

end

end A250351.P5573582658640568918

/-! ## A250351.P7002139299528830026

`A244832(n+1)+A007949(A217933(n+1))`
-/

namespace A250351.P7002139299528830026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (n + 1) + A007949 (A217933 (n + 1)).toNat

end

end A250351.P7002139299528830026

/-!
# A250352: Number of length 3 arrays x(i), i=1..3 with x(i) in i..i+n and no value appearing more than 2 times.

The programs for A250352, the canonical program `A250352.P2714815729541496655` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250352 has offset 1).

The definition of A250352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250352.P2714815729541496655

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=26, a(2)=62, a(3)=122`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A250352

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2714815729541496655.Spec : Prop :=
  ∀ n, P2714815729541496655.a n = A250352 (n + 1)

theorem P2714815729541496655.correct : P2714815729541496655.Spec := by
  intro n
  simp only [A250352, Nat.add_sub_cancel]

end A250352

/-! ## A250352.P12421260910196476640

`(n+2)^3-n`
-/

namespace A250352.P12421260910196476640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - (n : ℤ)

end

end A250352.P12421260910196476640

namespace A250352

/-- `(n+2)^3-n` -/
def P12421260910196476640.Spec : Prop :=
  ∀ n, P12421260910196476640.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P584606669273374807

`lcm(2, (-(n+2))^3+n)`
-/

namespace A250352.P584606669273374807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((-(n + 2 : ℤ)) ^ 3 + (n : ℤ))

end

end A250352.P584606669273374807

namespace A250352

/-- `lcm(2, (-(n+2))^3+n)` -/
def P584606669273374807.Spec : Prop :=
  ∀ n, (P584606669273374807.a n : ℤ) = A250352 (n + 1)

end A250352

/-! ## A250352.P8540497498729931909

`abs(Δ[C(n+2, 2)²]-n)`
-/

namespace A250352.P8540497498729931909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|

end

end A250352.P8540497498729931909

namespace A250352

/-- `abs(Δ[C(n+2, 2)²]-n)` -/
def P8540497498729931909.Spec : Prop :=
  ∀ n, P8540497498729931909.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P14740212246662784342

`2*(3*C(n+3, 3)+1)`
-/

namespace A250352.P14740212246662784342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (3 * Nat.choose (n + 3) 3 + 1)

end

end A250352.P14740212246662784342

namespace A250352

/-- `2*(3*C(n+3, 3)+1)` -/
def P14740212246662784342.Spec : Prop :=
  ∀ n, (P14740212246662784342.a n : ℤ) = A250352 (n + 1)

end A250352

/-! ## A250352.P17085565408935371331

`Δ[C(n+2, 2)²-C(n, 2)]`
-/

namespace A250352.P17085565408935371331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250352.P17085565408935371331

namespace A250352

/-- `Δ[C(n+2, 2)²-C(n, 2)]` -/
def P17085565408935371331.Spec : Prop :=
  ∀ n, P17085565408935371331.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P16712786943168881830

`abs(n-(n+2)*record[(n-2)²])`
-/

namespace A250352.P16712786943168881830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (n + 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A250352.P16712786943168881830

namespace A250352

/-- `abs(n-(n+2)*record[(n-2)²])` -/
def P16712786943168881830.Spec : Prop :=
  ∀ n, P16712786943168881830.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P3258082299515630703

`2*(∑[∑[a(n-1)+3]]+1)` with `a(0)=3`
-/

namespace A250352.P3258082299515630703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250352.P3258082299515630703

namespace A250352

/-- `2*(∑[∑[a(n-1)+3]]+1)` -/
def P3258082299515630703.Spec : Prop :=
  ∀ n, (P3258082299515630703.a n : ℤ) = A250352 (n + 1)

end A250352

/-! ## A250352.P6207307666425615670

`xor(1, 3*∑[(n+2)*(n+1)]+3)`
-/

namespace A250352.P6207307666425615670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 3)

end

end A250352.P6207307666425615670

namespace A250352

/-- `xor(1, 3*∑[(n+2)*(n+1)]+3)` -/
def P6207307666425615670.Spec : Prop :=
  ∀ n, (P6207307666425615670.a n : ℤ) = A250352 (n + 1)

end A250352

/-! ## A250352.P10251054812032475705

`record[lcm(n-2, (n-1)*(n-3))+2]`
-/

namespace A250352.P10251054812032475705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) (((n : ℤ) - 1) * ((n : ℤ) - 3)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250352.P10251054812032475705

namespace A250352

/-- `record[lcm(n-2, (n-1)*(n-3))+2]` -/
def P10251054812032475705.Spec : Prop :=
  ∀ n, (P10251054812032475705.a n : ℤ) = A250352 (n + 1)

end A250352

/-! ## A250352.P219966288732183812

`(n+1)*(lcm(n+2, n+3)+2/(n+1))`
-/

namespace A250352.P219966288732183812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.lcm (n + 2) (n + 3) : ℚ) + 2 / (n + 1 : ℚ))

end

end A250352.P219966288732183812

namespace A250352

/-- `(n+1)*(lcm(n+2, n+3)+2/(n+1))` -/
def P219966288732183812.Spec : Prop :=
  ∀ n, P219966288732183812.a n = (A250352 (n + 1) : ℚ)

end A250352

/-! ## A250352.P12844741087129792637

`2*(A117560(n+2)+2)`
-/

namespace A250352.P12844741087129792637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A117560 (n + 2) + 2)

end

end A250352.P12844741087129792637

namespace A250352

/-- `2*(A117560(n+2)+2)` -/
def P12844741087129792637.Spec : Prop :=
  ∀ n, P12844741087129792637.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P4509741828482589329

`2*(A154560(n)+3+n)`
-/

namespace A250352.P4509741828482589329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154560 n + 3 + (n : ℤ))

end

end A250352.P4509741828482589329

namespace A250352

/-- `2*(A154560(n)+3+n)` -/
def P4509741828482589329.Spec : Prop :=
  ∀ n, P4509741828482589329.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P4826818872458491218

`abs(Δ[A000217(n+1)²]-n)`
-/

namespace A250352.P4826818872458491218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n : ℤ)|

end

end A250352.P4826818872458491218

namespace A250352

/-- `abs(Δ[A000217(n+1)²]-n)` -/
def P4826818872458491218.Spec : Prop :=
  ∀ n, P4826818872458491218.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P4168733130032510483

`2*(3*A000292(n+1)+1)`
-/

namespace A250352.P4168733130032510483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A000292 (n + 1) + 1)

end

end A250352.P4168733130032510483

namespace A250352

/-- `2*(3*A000292(n+1)+1)` -/
def P4168733130032510483.Spec : Prop :=
  ∀ n, P4168733130032510483.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P15088470904630847855

`(A193608(n+1)-(n-1))/2`
-/

namespace A250352.P15088470904630847855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193608 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A250352.P15088470904630847855

namespace A250352

/-- `(A193608(n+1)-(n-1))/2` -/
def P15088470904630847855.Spec : Prop :=
  ∀ n, P15088470904630847855.a n = (A250352 (n + 1) : ℚ)

end A250352

/-! ## A250352.P6499862552662747593

`(A269584(n+1)-n)/(n+2)`
-/

namespace A250352.P6499862552662747593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269584 (n + 1) - (n : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A250352.P6499862552662747593

namespace A250352

/-- `(A269584(n+1)-n)/(n+2)` -/
def P6499862552662747593.Spec : Prop :=
  ∀ n, P6499862552662747593.a n = (A250352 (n + 1) : ℚ)

end A250352

/-! ## A250352.P6087542882011038490

`(A269620(n+1)-(n-1))/(n+2)`
-/

namespace A250352.P6087542882011038490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269620 (n + 1) - ((n : ℤ) - 1) : ℚ) / (n + 2 : ℚ)

end

end A250352.P6087542882011038490

namespace A250352

/-- `(A269620(n+1)-(n-1))/(n+2)` -/
def P6087542882011038490.Spec : Prop :=
  ∀ n, P6087542882011038490.a n = (A250352 (n + 1) : ℚ)

end A250352

/-! ## A250352.P7427669662112130637

`abs(∑[∑[A016969(n)+1]+1]+1-n)`
-/

namespace A250352.P7427669662112130637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)|

end

end A250352.P7427669662112130637

namespace A250352

/-- `abs(∑[∑[A016969(n)+1]+1]+1-n)` -/
def P7427669662112130637.Spec : Prop :=
  ∀ n, P7427669662112130637.a n = A250352 (n + 1)

end A250352

/-! ## A250352.P3585515084226360090

`A061222(n)%A027620(n)`
-/

namespace A250352.P3585515084226360090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061222 n) (A027620 n)

end

end A250352.P3585515084226360090

namespace A250352

/-- `A061222(n)%A027620(n)` -/
def P3585515084226360090.Spec : Prop :=
  ∀ n, P3585515084226360090.a n = A250352 (n + 1)

end A250352

/-!
# A250353: Number of length 4 arrays x(i), i=1..4 with x(i) in i..i+n and no value appearing more than 2 times.

The programs for A250353, the canonical program `A250353.P8147615363387882437` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250353 has offset 1).

The definition of A250353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250353.P8147615363387882437

`A250362(n+1)-A002943(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250353

/-- `A250362(n+1)-A002943(n)` -/
def P8147615363387882437.Spec : Prop :=
  ∀ n, P8147615363387882437.a n = A250353 (n + 1)

theorem P8147615363387882437.correct : P8147615363387882437.Spec := by
  intro n
  simp only [A250353, Nat.add_sub_cancel]

end A250353

/-! ## A250353.P7908730970769522335

`A250362(n+1)-2*A014105(n)`
-/

namespace A250353.P7908730970769522335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - 2 * A014105 n

end

end A250353.P7908730970769522335

namespace A250353

/-- `A250362(n+1)-2*A014105(n)` -/
def P7908730970769522335.Spec : Prop :=
  ∀ n, P7908730970769522335.a n = A250353 (n + 1)

end A250353

/-! ## A250353.P6696982319576764726

`A250362(n+1)-n*A016825(n)`
-/

namespace A250353.P6696982319576764726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - (n : ℤ) * A016825 n

end

end A250353.P6696982319576764726

namespace A250353

/-- `A250362(n+1)-n*A016825(n)` -/
def P6696982319576764726.Spec : Prop :=
  ∀ n, P6696982319576764726.a n = A250353 (n + 1)

end A250353

/-! ## A250353.P10523428276092272785

`A250362(n+1)-(A005843(n)+A005843(n)²)`
-/

namespace A250353.P10523428276092272785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - (A005843 n + A005843 n ^ 2)

end

end A250353.P10523428276092272785

namespace A250353

/-- `A250362(n+1)-(A005843(n)+A005843(n)²)` -/
def P10523428276092272785.Spec : Prop :=
  ∀ n, P10523428276092272785.a n = A250353 (n + 1)

end A250353

/-! ## A250353.P14049451988100762002

`A250362(n+1)-n*Δ[A001105(n)]`
-/

namespace A250353.P14049451988100762002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A250353.P14049451988100762002

namespace A250353

/-- `A250362(n+1)-n*Δ[A001105(n)]` -/
def P14049451988100762002.Spec : Prop :=
  ∀ n, P14049451988100762002.a n = A250353 (n + 1)

end A250353

/-! ## A250353.P5849653960447745875

`A250362(n+1)-A002378(2*n)`
-/

namespace A250353.P5849653960447745875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - A002378 (2 * n)

end

end A250353.P5849653960447745875

namespace A250353

/-- `A250362(n+1)-A002378(2*n)` -/
def P5849653960447745875.Spec : Prop :=
  ∀ n, P5849653960447745875.a n = A250353 (n + 1)

end A250353

/-! ## A250353.P10061336233485000349

`A250362(n+1)-A083392(A008586(n))`
-/

namespace A250353.P10061336233485000349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - A083392 (A008586 n).toNat

end

end A250353.P10061336233485000349

namespace A250353

/-- `A250362(n+1)-A083392(A008586(n))` -/
def P10061336233485000349.Spec : Prop :=
  ∀ n, P10061336233485000349.a n = A250353 (n + 1)

end A250353

/-! ## A250353.P11391611156255269605

`A250362(n+1)-A002620(A016813(n))`
-/

namespace A250353.P11391611156255269605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - A002620 (A016813 n).toNat

end

end A250353.P11391611156255269605

namespace A250353

/-- `A250362(n+1)-A002620(A016813(n))` -/
def P11391611156255269605.Spec : Prop :=
  ∀ n, P11391611156255269605.a n = A250353 (n + 1)

end A250353

/-! ## A250353.P9832807394047928878

`A250362(n+1)-A005843(A014105(n))`
-/

namespace A250353.P9832807394047928878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - A005843 (A014105 n).toNat

end

end A250353.P9832807394047928878

namespace A250353

/-- `A250362(n+1)-A005843(A014105(n))` -/
def P9832807394047928878.Spec : Prop :=
  ∀ n, P9832807394047928878.a n = A250353 (n + 1)

end A250353

/-!
# A250354: Number of length 5 arrays x(i), i=1..5 with x(i) in i..i+n and no value appearing more than 2 times.

The programs for A250354, there is no canonical definition to state claims against.
-/

/-! ## A250354.P10246645713306004144

`A250351(A167499(n+3))`
-/

namespace A250354.P10246645713306004144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A167499 (n + 3)).toNat

end

end A250354.P10246645713306004144

/-! ## A250354.P15812482898544707693

`A250351(A133263(n+4)+3)`
-/

namespace A250354.P15812482898544707693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A133263 (n + 4) + 3).toNat

end

end A250354.P15812482898544707693

/-! ## A250354.P8922312490875455309

`A250351(A000217(n+4)+5)`
-/

namespace A250354.P8922312490875455309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000217 (n + 4) + 5).toNat

end

end A250354.P8922312490875455309

/-! ## A250354.P6637210592326933124

`A250351(A052905(n+1)+10)`
-/

namespace A250354.P6637210592326933124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A052905 (n + 1) + 10).toNat

end

end A250354.P6637210592326933124

/-! ## A250354.P6766744724519239211

`A250351(A000124(n+5)-(n+1))`
-/

namespace A250354.P6766744724519239211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A250354.P6766744724519239211

/-!
# A250355: Number of length 6 arrays x(i), i=1..6 with x(i) in i..i+n and no value appearing more than 2 times.

The programs for A250355, there is no canonical definition to state claims against.
-/

/-! ## A250355.P7598262237697090821

`A250351(A056115(n)+21)`
-/

namespace A250355.P7598262237697090821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A056115 n + 21).toNat

end

end A250355.P7598262237697090821

/-! ## A250355.P5132280264942062621

`A250351(Δ[A264443(n)]+10)`
-/

namespace A250355.P5132280264942062621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (f1 (n + 1) - f1 n + 10).toNat

end

end A250355.P5132280264942062621

/-! ## A250355.P16730992478960786112

`A250351(A000124(n+5)+5)`
-/

namespace A250355.P16730992478960786112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000124 (n + 5) + 5).toNat

end

end A250355.P16730992478960786112

/-! ## A250355.P15716848072378791113

`A250351(A000217(n+5)+6)`
-/

namespace A250355.P15716848072378791113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000217 (n + 5) + 6).toNat

end

end A250355.P15716848072378791113

/-! ## A250355.P10180413389899574451

`A250351(Δ[A023545(n+1)]+10)`
-/

namespace A250355.P10180413389899574451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (f1 (n + 1) - f1 n + 10).toNat

end

end A250355.P10180413389899574451

/-!
# A250356: Number of length 7 arrays x(i), i=1..7 with x(i) in i..i+n and no value appearing more than 2 times.

The programs for A250356, there is no canonical definition to state claims against.
-/

/-! ## A250356.P4733454094392208210

`A250351(A167487(n+5))`
-/

namespace A250356.P4733454094392208210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A167487 (n + 5)).toNat

end

end A250356.P4733454094392208210

/-! ## A250356.P2796839324211724343

`A250351(A000096(n+5)+8)`
-/

namespace A250356.P2796839324211724343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000096 (n + 5) + 8).toNat

end

end A250356.P2796839324211724343

/-! ## A250356.P3934094152346534013

`A250351(A000217(n+6)+7)`
-/

namespace A250356.P3934094152346534013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A000217 (n + 6) + 7).toNat

end

end A250356.P3934094152346534013

/-! ## A250356.P18094074117588639502

`A250351(A055998(n+4)+10)`
-/

namespace A250356.P18094074117588639502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A055998 (n + 4) + 10).toNat

end

end A250356.P18094074117588639502

/-! ## A250356.P11816995300955234335

`A250351(A052905(n+3)+12)`
-/

namespace A250356.P11816995300955234335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A052905 (n + 3) + 12).toNat

end

end A250356.P11816995300955234335

/-!
# A250357: Number of length n arrays x(i), i=1..n with x(i) in i..i+4 and no value appearing more than 3 times.

The programs for A250357, there is no canonical definition to state claims against.
-/

/-! ## A250357.P1813560594478502766

`A250361(A141214(n+1))`
-/

namespace A250357.P1813560594478502766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A141214 (n + 1)).toNat

end

end A250357.P1813560594478502766

/-! ## A250357.P3273253280815009767

`A250361(A027379(n+2))`
-/

namespace A250357.P3273253280815009767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A027379 (n + 2)).toNat

end

end A250357.P3273253280815009767

/-! ## A250357.P16914863376888962436

`A250361(A155212(n)+5)`
-/

namespace A250357.P16914863376888962436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A155212 n + 5).toNat

end

end A250357.P16914863376888962436

/-! ## A250357.P8535065917829823828

`A250361(A056000(n)+7)`
-/

namespace A250357.P8535065917829823828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A056000 n + 7).toNat

end

end A250357.P8535065917829823828

/-! ## A250357.P14035612754630378199

`A250361(A052905(n+1)+2)`
-/

namespace A250357.P14035612754630378199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A052905 (n + 1) + 2).toNat

end

end A250357.P14035612754630378199

/-!
# A250358: Number of length n arrays x(i), i=1..n with x(i) in i..i+5 and no value appearing more than 3 times.

The programs for A250358, there is no canonical definition to state claims against.
-/

/-! ## A250358.P14597909334822876066

`A250361(Δ[A264443(n)])`
-/

namespace A250358.P14597909334822876066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (f1 (n + 1) - f1 n).toNat

end

end A250358.P14597909334822876066

/-! ## A250358.P1565315128914323575

`A250361(A046691(n+3))`
-/

namespace A250358.P1565315128914323575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A046691 (n + 3)).toNat

end

end A250358.P1565315128914323575

/-! ## A250358.P17358857785115618576

`A250361(A056115(n)+11)`
-/

namespace A250358.P17358857785115618576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A056115 n + 11).toNat

end

end A250358.P17358857785115618576

/-! ## A250358.P4263506162764720285

`A250361(Δ[A023545(n+1)])`
-/

namespace A250358.P4263506162764720285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (f1 (n + 1) - f1 n).toNat

end

end A250358.P4263506162764720285

/-! ## A250358.P4241257066913958024

`A250361(A052905(n+2)+1)`
-/

namespace A250358.P4241257066913958024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A052905 (n + 2) + 1).toNat

end

end A250358.P4241257066913958024

/-!
# A250359: Number of length n arrays x(i), i=1..n with x(i) in i..i+6 and no value appearing more than 3 times.

The programs for A250359, there is no canonical definition to state claims against.
-/

/-! ## A250359.P13318766163394441214

`A250361(∑[n+6]+10)`
-/

namespace A250359.P13318766163394441214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A250359.P13318766163394441214

/-! ## A250359.P10649974227483740310

`gcd(2, A090633(n+1))*A250361(A052905(n+3))`
-/

namespace A250359.P10649974227483740310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A090633 (n + 1)) : ℤ) * A250361 (A052905 (n + 3)).toNat

end

end A250359.P10649974227483740310

/-! ## A250359.P16103396292230262951

`gcd(n, A020639(n+1))*A250361(A052905(n+3))`
-/

namespace A250359.P16103396292230262951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A020639 (n + 1)) : ℤ) * A250361 (A052905 (n + 3)).toNat

end

end A250359.P16103396292230262951

/-! ## A250359.P14027134085800707359

`gcd(n+1, A024008(n+1))*A250361(A052905(n+3))`
-/

namespace A250359.P14027134085800707359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A024008 (n + 1)) : ℤ) * A250361 (A052905 (n + 3)).toNat

end

end A250359.P14027134085800707359

/-! ## A250359.P18178098400434119402

`gcd(n+2, A000982(n+1))*A250361(A052905(n+3))`
-/

namespace A250359.P18178098400434119402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 2 : ℤ) (A000982 (n + 1)) : ℤ) * A250361 (A052905 (n + 3)).toNat

end

end A250359.P18178098400434119402

/-!
# A250360: Number of length n arrays x(i), i=1..n with x(i) in i..i+7 and no value appearing more than 3 times.

The programs for A250360, there is no canonical definition to state claims against.
-/

/-! ## A250360.P15193101208734106289

`A250361(A055999(n+4))`
-/

namespace A250360.P15193101208734106289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A055999 (n + 4)).toNat

end

end A250360.P15193101208734106289

/-! ## A250360.P2730535883858996303

`A250361(A000124(n+7)-7)`
-/

namespace A250360.P2730535883858996303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A000124 (n + 7) - 7).toNat

end

end A250360.P2730535883858996303

/-! ## A250360.P8907652504994365367

`A250361(eq[7, A195663(n)]+1)`
-/

namespace A250360.P8907652504994365367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A250360.P8907652504994365367

/-! ## A250360.P6987077391254895001

`A250361(A000217(n+6)+n+1)`
-/

namespace A250360.P6987077391254895001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A250360.P6987077391254895001

/-!
# A250361: T(n,k)=Number of length n arrays x(i), i=1..n with x(i) in i..i+k and no value appearing more than 3 times.

The programs for A250361, there is no canonical definition to state claims against.
-/

/-! ## A250361.P3535093265479155052

`A051128(A014132(n+1))-A316864(A320606(n+1))`
-/

namespace A250361.P3535093265479155052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A014132 (n + 1)).toNat - A316864 (A320606 (n + 1)).toNat

end

end A250361.P3535093265479155052

/-! ## A250361.P158082974209937359

`A341392(A204985(n+1))-A316864(A320606(n+1))`
-/

namespace A250361.P158082974209937359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A204985 (n + 1)).toNat - A316864 (A320606 (n + 1)).toNat

end

end A250361.P158082974209937359

/-! ## A250361.P6002385746353530191

`A051128(comp[∑[n]])%A141214(2*n)`
-/

namespace A250361.P6002385746353530191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051128 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A141214 (2 * n))

end

end A250361.P6002385746353530191

/-! ## A250361.P2791502171480532946

`A269583(n+1)+A010893(A024462(n))`
-/

namespace A250361.P2791502171480532946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (n + 1) + A010893 ((A024462 n).toNat + 13)

end

end A250361.P2791502171480532946

/-! ## A250361.P3126241517925336849

`A106737(A249544(n+1))`
-/

namespace A250361.P3126241517925336849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A249544 (n + 1)).toNat

end

end A250361.P3126241517925336849

/-!
# A250362: Number of length 4 arrays x(i), i=1..4 with x(i) in i..i+n and no value appearing more than 3 times.

The programs for A250362, the canonical program `A250362.P5392824824616974191` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250362 has offset 1).

The definition of A250362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250362.P5392824824616974191

`(n+2)²²-floor(abs(γ-n))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A250362

/-- `(n+2)²²-floor(abs(γ-n))` -/
def P5392824824616974191.Spec : Prop :=
  ∀ n, P5392824824616974191.a n = A250362 (n + 1)

theorem P5392824824616974191.correct : P5392824824616974191.Spec := by
  intro n
  simp only [A250362, Nat.add_sub_cancel]

end A250362

/-! ## A250362.P573976105874722989

`xor((n+2)²²-n, ceil(abs(sin(n))))`
-/

namespace A250362.P573976105874722989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((((n + 2) ^ 2) ^ 2 : ℤ) - (n : ℤ)) ⌈|Real.sin (n : ℝ)|⌉

end

end A250362.P573976105874722989

namespace A250362

/-- `xor((n+2)²²-n, ceil(abs(sin(n))))` -/
def P573976105874722989.Spec : Prop :=
  ∀ n, P573976105874722989.a n = A250362 (n + 1)

end A250362

/-! ## A250362.P13952948426477407950

`abs((n+2)²²-floor(n²*acot(n)))`
-/

namespace A250362.P13952948426477407950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 2) ^ 2) ^ 2 : ℤ) - ⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋|

end

end A250362.P13952948426477407950

namespace A250362

/-- `abs((n+2)²²-floor(n²*acot(n)))` -/
def P13952948426477407950.Spec : Prop :=
  ∀ n, P13952948426477407950.a n = A250362 (n + 1)

end A250362

/-! ## A250362.P13484274960601634937

`abs(A289207(n+1)-(n+2)²²)`
-/

namespace A250362.P13484274960601634937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289207 (n + 1) - (((n + 2) ^ 2) ^ 2 : ℤ)|

end

end A250362.P13484274960601634937

namespace A250362

/-- `abs(A289207(n+1)-(n+2)²²)` -/
def P13484274960601634937.Spec : Prop :=
  ∀ n, P13484274960601634937.a n = A250362 (n + 1)

end A250362

/-! ## A250362.P4178015506000765603

`xor(A269657(n+1)+1, A057427(n))`
-/

namespace A250362.P4178015506000765603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A269657 (n + 1) + 1) (A057427 n)

end

end A250362.P4178015506000765603

namespace A250362

/-- `xor(A269657(n+1)+1, A057427(n))` -/
def P4178015506000765603.Spec : Prop :=
  ∀ n, P4178015506000765603.a n = A250362 (n + 1)

end A250362

/-! ## A250362.P18238150440352338501

`abs(A000583(n+2)-(A004273(n)-n))`
-/

namespace A250362.P18238150440352338501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 (n + 2) - (A004273 n - (n : ℤ))|

end

end A250362.P18238150440352338501

namespace A250362

/-- `abs(A000583(n+2)-(A004273(n)-n))` -/
def P18238150440352338501.Spec : Prop :=
  ∀ n, P18238150440352338501.a n = A250362 (n + 1)

end A250362

/-!
# A250363: Number of length 5 arrays x(i), i=1..5 with x(i) in i..i+n and no value appearing more than 3 times.

The programs for A250363, there is no canonical definition to state claims against.
-/

/-! ## A250363.P3264552887664402729

`A250361(A167499(n+3))`
-/

namespace A250363.P3264552887664402729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A167499 (n + 3)).toNat

end

end A250363.P3264552887664402729

/-! ## A250363.P17495388368603924526

`A250361(A056000(n)+15)`
-/

namespace A250363.P17495388368603924526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A056000 n + 15).toNat

end

end A250363.P17495388368603924526

/-! ## A250363.P5854915990971633112

`A250361(A000217(n+4)+5)`
-/

namespace A250363.P5854915990971633112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A000217 (n + 4) + 5).toNat

end

end A250363.P5854915990971633112

/-! ## A250363.P5499823077241215931

`A250361(A027379(n+2)+8)`
-/

namespace A250363.P5499823077241215931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A027379 (n + 2) + 8).toNat

end

end A250363.P5499823077241215931

/-! ## A250363.P6421615553022090808

`A250361(A038722(Δ[A264443(n)]))`
-/

namespace A250363.P6421615553022090808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A250363.P6421615553022090808

/-!
# A250364: Number of length 6 arrays x(i), i=1..6 with x(i) in i..i+n and no value appearing more than 3 times.

The programs for A250364, there is no canonical definition to state claims against.
-/

/-! ## A250364.P6027467173865118297

`A250361(A166136(n+4))`
-/

namespace A250364.P6027467173865118297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A166136 (n + 4)).toNat

end

end A250364.P6027467173865118297

/-! ## A250364.P3131638914064207620

`A250361(A077169(n+6)+1)`
-/

namespace A250364.P3131638914064207620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A077169 (n + 6) + 1).toNat

end

end A250364.P3131638914064207620

/-! ## A250364.P14873765766720608075

`A250361(A000124(n+5)+5)`
-/

namespace A250364.P14873765766720608075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A000124 (n + 5) + 5).toNat

end

end A250364.P14873765766720608075

/-! ## A250364.P3388690805623961608

`A250361(A000217(n+5)+6)`
-/

namespace A250364.P3388690805623961608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A000217 (n + 5) + 6).toNat

end

end A250364.P3388690805623961608

/-! ## A250364.P16755955033133535078

`A250361(A141214(n+2)+9)`
-/

namespace A250364.P16755955033133535078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A141214 (n + 2) + 9).toNat

end

end A250364.P16755955033133535078

/-!
# A250365: Number of length 7 arrays x(i), i=1..7 with x(i) in i..i+n and no value appearing more than 3 times.

The programs for A250365, there is no canonical definition to state claims against.
-/

/-! ## A250365.P1544759252349695901

`A250361(A167487(n+5))`
-/

namespace A250365.P1544759252349695901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A167487 (n + 5)).toNat

end

end A250365.P1544759252349695901

/-! ## A250365.P119053170838118362

`A250361(A167499(n+5)+2)`
-/

namespace A250365.P119053170838118362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A167499 (n + 5) + 2).toNat

end

end A250365.P119053170838118362

/-! ## A250365.P6209245488631805158

`A250361(A000124(n+6)+6)`
-/

namespace A250365.P6209245488631805158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A000124 (n + 6) + 6).toNat

end

end A250365.P6209245488631805158

/-! ## A250365.P7882117941794653432

`A250361(A000096(n+5)+8)`
-/

namespace A250365.P7882117941794653432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A000096 (n + 5) + 8).toNat

end

end A250365.P7882117941794653432

/-! ## A250365.P7254207479130732936

`A250361(A000217(n+6)+7)`
-/

namespace A250365.P7254207479130732936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (A000217 (n + 6) + 7).toNat

end

end A250365.P7254207479130732936

/-!
# A250366: Number of length n+6 0..1 arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250366, there is no canonical definition to state claims against.
-/

/-! ## A250366.P16272623083542697486

`A250373(∑[n+1])`
-/

namespace A250366.P16272623083542697486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250366.P16272623083542697486

/-! ## A250366.P14017297006642817835

`record[A250373(A175631(n+1)+1)]`
-/

namespace A250366.P14017297006642817835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A175631 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250366.P14017297006642817835

/-! ## A250366.P1557400651797547192

`record[gcd(A025581(n), A250373(n+1))]`
-/

namespace A250366.P1557400651797547192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A250373 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250366.P1557400651797547192

/-! ## A250366.P2280943378524416365

`record[A250373(A000217(A020986(n)))]`
-/

namespace A250366.P2280943378524416365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000217 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250366.P2280943378524416365

/-! ## A250366.P16165660168511668593

`record[A250373(A000217(A144328(n+1)))]`
-/

namespace A250366.P16165660168511668593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000217 (A144328 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250366.P16165660168511668593

/-! ## A250366.P11524816106807202415

`record[A250373(A000217(A253146(n+1)))]`
-/

namespace A250366.P11524816106807202415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000217 (A253146 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250366.P11524816106807202415

/-!
# A250367: Number of length n+6 0..2 arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250367, there is no canonical definition to state claims against.
-/

/-! ## A250367.P5494817583978768384

`A250373(∑[n+2])`
-/

namespace A250367.P5494817583978768384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250367.P5494817583978768384

/-! ## A250367.P1621378047726277326

`round(sqrt(A250373(C(n+2, 2)+n+1)²+1))`
-/

namespace A250367.P1621378047726277326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A250373 (Nat.choose (n + 2) 2 + (n + 1)) ^ 2 + 1 : ℝ))

end

end A250367.P1621378047726277326

/-! ## A250367.P16056057429694638689

`record[A250373(A000096(A126759(n)))]`
-/

namespace A250367.P16056057429694638689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250367.P16056057429694638689

/-! ## A250367.P6689557785161359637

`record[A250373(A000096(A133310(n)))]`
-/

namespace A250367.P6689557785161359637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250367.P6689557785161359637

/-! ## A250367.P17509702408502653336

`record[A250373(A000096(A134478(n)))]`
-/

namespace A250367.P17509702408502653336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250367.P17509702408502653336

/-! ## A250367.P11041218857800169707

`record[A250373(A000096(A262519(n)))]`
-/

namespace A250367.P11041218857800169707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000096 (A262519 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250367.P11041218857800169707

/-! ## A250367.P8375603256601943826

`record[A250373(A000096(A003602(n+1)))]`
-/

namespace A250367.P8375603256601943826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250367.P8375603256601943826

/-! ## A250367.P13324018061762957129

`record[A250373(A000096(A329620(n+1)))]`
-/

namespace A250367.P13324018061762957129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000096 (A329620 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250367.P13324018061762957129

/-!
# A250368: Number of length n+6 0..3 arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250368, there is no canonical definition to state claims against.
-/

/-! ## A250368.P8542582456660703326

`A250373(∑[n+3]+1)`
-/

namespace A250368.P8542582456660703326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250368.P8542582456660703326

/-! ## A250368.P7261289680563963368

`lcm(2, A250373(A055999(n)+4))`
-/

namespace A250368.P7261289680563963368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250373 (A055999 n + 4).toNat)

end

end A250368.P7261289680563963368

/-! ## A250368.P8658220895010233470

`and(-A000034(n), A250373(A055999(n)+4))`
-/

namespace A250368.P8658220895010233470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A250373 (A055999 n + 4).toNat)

end

end A250368.P8658220895010233470

/-! ## A250368.P14289945857869428431

`or(A000038(n)², A250373(A055999(n)+4))`
-/

namespace A250368.P14289945857869428431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A250373 (A055999 n + 4).toNat)

end

end A250368.P14289945857869428431

/-! ## A250368.P2848200345364726258

`A250373(A055999(n)+4)+A000007(n+1)`
-/

namespace A250368.P2848200345364726258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A250368.P2848200345364726258

/-! ## A250368.P15880126404985366881

`A000034(2*n)*A250373(A055999(n)+4)`
-/

namespace A250368.P15880126404985366881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A250373 (A055999 n + 4).toNat

end

end A250368.P15880126404985366881

/-! ## A250368.P9441625502826169656

`A250373(A055998(n+1)+1)+A000038(n+1)`
-/

namespace A250368.P9441625502826169656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A055998 (n + 1) + 1).toNat + A000038 (n + 1)

end

end A250368.P9441625502826169656

/-!
# A250369: Number of length n+6 0..4 arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250369, there is no canonical definition to state claims against.
-/

/-! ## A250369.P16093449504551973251

`A250373(∑[n+4]+3)`
-/

namespace A250369.P16093449504551973251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250369.P16093449504551973251

/-! ## A250369.P15674110203498899897

`or(1, A250373(A027379(n+2)))`
-/

namespace A250369.P15674110203498899897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250373 (A027379 (n + 2)).toNat)

end

end A250369.P15674110203498899897

/-! ## A250369.P7968909199156764419

`or(1, A250373(A055998(n+2)))`
-/

namespace A250369.P7968909199156764419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250373 (A055998 (n + 2)).toNat)

end

end A250369.P7968909199156764419

/-! ## A250369.P6959540986601812373

`A000188(A000040(n+1))*A250373(A027379(n+2))`
-/

namespace A250369.P6959540986601812373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000040 (n + 1)).toNat * A250373 (A027379 (n + 2)).toNat

end

end A250369.P6959540986601812373

/-! ## A250369.P17624593826562654211

`A113061(A002496(n+1))*A250373(A055998(n+2))`
-/

namespace A250369.P17624593826562654211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (A002496 (n + 1)).toNat * A250373 (A055998 (n + 2)).toNat

end

end A250369.P17624593826562654211

/-!
# A250370: Number of length n+6 0..5 arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250370, there is no canonical definition to state claims against.
-/

/-! ## A250370.P5382820643756116831

`A250373(∑[n+5]+6)`
-/

namespace A250370.P5382820643756116831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250370.P5382820643756116831

/-! ## A250370.P14330949586136825932

`A250373(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A250370.P14330949586136825932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A250370.P14330949586136825932

/-! ## A250370.P12085986798252834247

`A093178(2*n)*A250373(Δ[A023545(n+1)])`
-/

namespace A250370.P12085986798252834247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A250373 (f1 (n + 1) - f1 n).toNat

end

end A250370.P12085986798252834247

/-! ## A250370.P16012419544722494838

`A250373(Δ[A023545(n+1)])%A250371(n+1)`
-/

namespace A250370.P16012419544722494838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250373 (f1 (n + 1) - f1 n).toNat) (A250371 (n + 1))

end

end A250370.P16012419544722494838

/-! ## A250370.P8094317265186099551

`A008836(n+1)²*A250373(Δ[A023545(n+1)])`
-/

namespace A250370.P8094317265186099551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A250373 (f1 (n + 1) - f1 n).toNat

end

end A250370.P8094317265186099551

/-! ## A250370.P1912597863749708236

`A250373(Δ[A023545(n+1)])+((-1)^n-1)*A353461(n+1)`
-/

namespace A250370.P1912597863749708236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (f1 (n + 1) - f1 n).toNat + ((-1) ^ n - 1) * A353461 (n + 1)

end

end A250370.P1912597863749708236

/-!
# A250371: Number of length n+6 0..6 arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250371, there is no canonical definition to state claims against.
-/

/-! ## A250371.P2041491799395988082

`A250373(A052905(n+3))`
-/

namespace A250371.P2041491799395988082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A052905 (n + 3)).toNat

end

end A250371.P2041491799395988082

/-! ## A250371.P9328661837429802614

`A250373(A000096(n+5)-4)`
-/

namespace A250371.P9328661837429802614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000096 (n + 5) - 4).toNat

end

end A250371.P9328661837429802614

/-! ## A250371.P408565383775696147

`A250373(A000217(n+6)-5)`
-/

namespace A250371.P408565383775696147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000217 (n + 6) - 5).toNat

end

end A250371.P408565383775696147

/-! ## A250371.P8234496327761612211

`A250373(A000124(n+6)-6)`
-/

namespace A250371.P8234496327761612211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000124 (n + 6) - 6).toNat

end

end A250371.P8234496327761612211

/-! ## A250371.P4257942029959031651

`A250373(Δ[A023545(n+2)]-1)`
-/

namespace A250371.P4257942029959031651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (f1 (n + 1) - f1 n - 1).toNat

end

end A250371.P4257942029959031651

/-! ## A250371.P12393797061664838068

`A250373(A161680(n+6)+n+1)`
-/

namespace A250371.P12393797061664838068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A161680 (n + 6) + (n + 1 : ℤ)).toNat

end

end A250371.P12393797061664838068

/-! ## A250371.P1682404900145906316

`A250373(A167499(n+4)+n-4)`
-/

namespace A250371.P1682404900145906316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167499 (n + 4) + ((n : ℤ) - 4)).toNat

end

end A250371.P1682404900145906316

/-!
# A250372: Number of length n+6 0..7 arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250372, there is no canonical definition to state claims against.
-/

/-! ## A250372.P14800527692364862250

`A250373(A055999(n+4))`
-/

namespace A250372.P14800527692364862250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A055999 (n + 4)).toNat

end

end A250372.P14800527692364862250

/-! ## A250372.P7357811020558017317

`A250373(A052905(n+4)-1)`
-/

namespace A250372.P7357811020558017317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A052905 (n + 4) - 1).toNat

end

end A250372.P7357811020558017317

/-! ## A250372.P5267555709438709416

`A250373(A046691(n+5)-2)`
-/

namespace A250372.P5267555709438709416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A046691 (n + 5) - 2).toNat

end

end A250372.P5267555709438709416

/-! ## A250372.P10825562139506698509

`A250373(A000217(n+7)-6)`
-/

namespace A250372.P10825562139506698509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000217 (n + 7) - 6).toNat

end

end A250372.P10825562139506698509

/-! ## A250372.P8130373478445500481

`A250373(A000124(n+7)-7)`
-/

namespace A250372.P8130373478445500481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000124 (n + 7) - 7).toNat

end

end A250372.P8130373478445500481

/-! ## A250372.P9203662464499517974

`A250373(A026741(n+4)*A026741(n+11))`
-/

namespace A250372.P9203662464499517974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A026741 (n + 4) * A026741 (n + 11)).toNat

end

end A250372.P9203662464499517974

/-!
# A250374: Number of length 1+6 0..n arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250374, there is no canonical definition to state claims against.
-/

/-! ## A250374.P1608782766636694510

`(n+2)^7-A249884(n+1)`
-/

namespace A250374.P1608782766636694510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249884 (n + 1)

end

end A250374.P1608782766636694510

/-! ## A250374.P16072340494823144729

`A250373(∑[n]+1)`
-/

namespace A250374.P16072340494823144729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250374.P16072340494823144729

/-! ## A250374.P16561938977300810464

`record[A010054(n)*A250373(n+1)]`
-/

namespace A250374.P16561938977300810464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250374.P16561938977300810464

/-! ## A250374.P15511895847972666996

`record[A250373(n+1)/A008279(n)]`
-/

namespace A250374.P15511895847972666996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250373 (n + 1) : ℚ) / (A008279 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250374.P15511895847972666996

/-! ## A250374.P12022782417520553279

`record[gcd(A176276(n), A250373(n+1))]`
-/

namespace A250374.P12022782417520553279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176276 n) (A250373 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250374.P12022782417520553279

/-! ## A250374.P8998416885743894107

`record[lcm(A106459(n), A250373(n+1))]`
-/

namespace A250374.P8998416885743894107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106459 n) (A250373 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250374.P8998416885743894107

/-!
# A250375: Number of length 2+6 0..n arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250375, there is no canonical definition to state claims against.
-/

/-! ## A250375.P1332741888327662738

`A250373(∑[n+1]+2)`
-/

namespace A250375.P1332741888327662738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250375.P1332741888327662738

/-! ## A250375.P4871742914600354913

`round(sqrt(A250373(C(n+2, 2)+2)²+1))`
-/

namespace A250375.P4871742914600354913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A250373 (Nat.choose (n + 2) 2 + 2) ^ 2 + 1 : ℝ))

end

end A250375.P4871742914600354913

/-! ## A250375.P1925398248687422523

`or(A000007(n), A250373(C(n+2, 2)+2))`
-/

namespace A250375.P1925398248687422523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250373 (Nat.choose (n + 2) 2 + 2))

end

end A250375.P1925398248687422523

/-! ## A250375.P5390006280245168840

`A008836(n+1)²*A250373(C(n+2, 2)+2)`
-/

namespace A250375.P5390006280245168840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A250373 (Nat.choose (n + 2) 2 + 2)

end

end A250375.P5390006280245168840

/-! ## A250375.P15783668453160906337

`or(A000007(n), A250373(A133263(n+1)))`
-/

namespace A250375.P15783668453160906337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250373 (A133263 (n + 1)).toNat)

end

end A250375.P15783668453160906337

/-! ## A250375.P16284189003135154441

`or(A000038(n), A250373(A133263(n+1)))`
-/

namespace A250375.P16284189003135154441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250373 (A133263 (n + 1)).toNat)

end

end A250375.P16284189003135154441

/-! ## A250375.P10473806053872584611

`A250373(A133263(n+1))+A169585(n+2)`
-/

namespace A250375.P10473806053872584611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A133263 (n + 1)).toNat + A169585 (n + 2)

end

end A250375.P10473806053872584611

/-! ## A250375.P457060862290051168

`A000034(2*n)*A250373(A133263(n+1))`
-/

namespace A250375.P457060862290051168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A250373 (A133263 (n + 1)).toNat

end

end A250375.P457060862290051168

/-! ## A250375.P985524707981455163

`A250373(A133263(n+1))%A250368(n+1)`
-/

namespace A250375.P985524707981455163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250373 (A133263 (n + 1)).toNat) (A250368 (n + 1))

end

end A250375.P985524707981455163

/-!
# A250376: Number of length 3+6 0..n arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250376, there is no canonical definition to state claims against.
-/

/-! ## A250376.P2983233558528893006

`A250373(∑[n+2]+4)`
-/

namespace A250376.P2983233558528893006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250376.P2983233558528893006

/-! ## A250376.P10304536472506287177

`round(sqrt(A250373(C(n+2, 2)+n+5)²+1))`
-/

namespace A250376.P10304536472506287177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A250373 (Nat.choose (n + 2) 2 + (n + 5)) ^ 2 + 1 : ℝ))

end

end A250376.P10304536472506287177

/-! ## A250376.P17727913305076234618

`A264668(n)+A250373(A167614(n+1))`
-/

namespace A250376.P17727913305076234618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A250373 (A167614 (n + 1)).toNat

end

end A250376.P17727913305076234618

/-! ## A250376.P14336903475071713178

`A250373(A167614(n+1))%A017513(n)`
-/

namespace A250376.P14336903475071713178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250373 (A167614 (n + 1)).toNat) (A017513 n)

end

end A250376.P14336903475071713178

/-! ## A250376.P14454146051191354609

`lcm(A033999(n), A250373(A167614(n+1)))`
-/

namespace A250376.P14454146051191354609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250373 (A167614 (n + 1)).toNat)

end

end A250376.P14454146051191354609

/-! ## A250376.P2481945565305237410

`A250373(A167614(n+1))+A000007(n+1)`
-/

namespace A250376.P2481945565305237410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A250376.P2481945565305237410

/-! ## A250376.P6632426313155020845

`A001222(A002144(n+1))*A250373(A167614(n+1))`
-/

namespace A250376.P6632426313155020845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002144 (n + 1)).toNat * A250373 (A167614 (n + 1)).toNat

end

end A250376.P6632426313155020845

/-! ## A250376.P13777399850513571248

`A001222(A002313(n+1))*A250373(A167614(n+1))`
-/

namespace A250376.P13777399850513571248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002313 (n + 1)).toNat * A250373 (A167614 (n + 1)).toNat

end

end A250376.P13777399850513571248

/-!
# A250377: Number of length 4+6 0..n arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250377, there is no canonical definition to state claims against.
-/

/-! ## A250377.P11251086883636920741

`A250373(A052905(n)+9)`
-/

namespace A250377.P11251086883636920741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A052905 n + 9).toNat

end

end A250377.P11251086883636920741

/-! ## A250377.P1605277489335781592

`A250373(A055999(n)+10)`
-/

namespace A250377.P1605277489335781592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A055999 n + 10).toNat

end

end A250377.P1605277489335781592

/-! ## A250377.P8976830851252176604

`A250373(A167614(n+2)+1)`
-/

namespace A250377.P8976830851252176604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167614 (n + 2) + 1).toNat

end

end A250377.P8976830851252176604

/-! ## A250377.P2391356581298537931

`A250373(A166136(n+2)-2)`
-/

namespace A250377.P2391356581298537931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A166136 (n + 2) - 2).toNat

end

end A250377.P2391356581298537931

/-! ## A250377.P4954042593498902408

`A250373(A167487(n+2)-3)`
-/

namespace A250377.P4954042593498902408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167487 (n + 2) - 3).toNat

end

end A250377.P4954042593498902408

/-! ## A250377.P12881299374492136891

`A250373(A166136(n+1)+1+n)`
-/

namespace A250377.P12881299374492136891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A250377.P12881299374492136891

/-! ## A250377.P1155152299142574222

`A250373(Δ[A023545(n+1)-n²])`
-/

namespace A250377.P1155152299142574222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (f1 (n + 1) - f1 n).toNat

end

end A250377.P1155152299142574222

/-! ## A250377.P8556268905083518617

`A250373(A080036(A167614(n+1)))`
-/

namespace A250377.P8556268905083518617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A250377.P8556268905083518617

/-! ## A250377.P16885266939765358172

`A250373(A038722(Δ[A034857(n+1)]))`
-/

namespace A250377.P16885266939765358172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A250377.P16885266939765358172

/-!
# A250378: Number of length 5+6 0..n arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250378, there is no canonical definition to state claims against.
-/

/-! ## A250378.P379020759332824019

`A250373(A167499(n+3))`
-/

namespace A250378.P379020759332824019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167499 (n + 3)).toNat

end

end A250378.P379020759332824019

/-! ## A250378.P8401602998471297360

`A250373(A167614(n+3)+2)`
-/

namespace A250378.P8401602998471297360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167614 (n + 3) + 2).toNat

end

end A250378.P8401602998471297360

/-! ## A250378.P16948215799104968134

`A250373(A167487(n+3)-2)`
-/

namespace A250378.P16948215799104968134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167487 (n + 3) - 2).toNat

end

end A250378.P16948215799104968134

/-! ## A250378.P12301128812995632685

`A250373(A000217(n+4)+5)`
-/

namespace A250378.P12301128812995632685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000217 (n + 4) + 5).toNat

end

end A250378.P12301128812995632685

/-! ## A250378.P4280062957371781114

`A250373(A173036(n)+A016825(n))`
-/

namespace A250378.P4280062957371781114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A173036 n + A016825 n).toNat

end

end A250378.P4280062957371781114

/-!
# A250379: Number of length 6+6 0..n arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250379, there is no canonical definition to state claims against.
-/

/-! ## A250379.P13496310698289712278

`A250373(A056115(n)+21)`
-/

namespace A250379.P13496310698289712278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A056115 n + 21).toNat

end

end A250379.P13496310698289712278

/-! ## A250379.P16209554373836049402

`A250373(A167487(n+4)-1)`
-/

namespace A250379.P16209554373836049402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167487 (n + 4) - 1).toNat

end

end A250379.P16209554373836049402

/-! ## A250379.P313525526088739266

`A250373(A167614(n+4)+3)`
-/

namespace A250379.P313525526088739266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167614 (n + 4) + 3).toNat

end

end A250379.P313525526088739266

/-! ## A250379.P6297127287330799438

`A250373(A000217(n+5)+6)`
-/

namespace A250379.P6297127287330799438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000217 (n + 5) + 6).toNat

end

end A250379.P6297127287330799438

/-! ## A250379.P18049474335816779814

`A250373(7-A080956(n+6))`
-/

namespace A250379.P18049474335816779814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (7 - A080956 (n + 6)).toNat

end

end A250379.P18049474335816779814

/-! ## A250379.P17721479267612475532

`A250373(A020710(A000124(n+5)))`
-/

namespace A250379.P17721479267612475532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A020710 (A000124 (n + 5)).toNat).toNat

end

end A250379.P17721479267612475532

/-!
# A250380: Number of length 7+6 0..n arrays with every seven consecutive terms having the maximum of some three terms equal to the minimum of the remaining four terms.

The programs for A250380, there is no canonical definition to state claims against.
-/

/-! ## A250380.P5313497993461445940

`A250373(A167487(n+5))`
-/

namespace A250380.P5313497993461445940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167487 (n + 5)).toNat

end

end A250380.P5313497993461445940

/-! ## A250380.P1078244167568635166

`A250373(A166136(n+5)+1)`
-/

namespace A250380.P1078244167568635166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A166136 (n + 5) + 1).toNat

end

end A250380.P1078244167568635166

/-! ## A250380.P9459016786798255627

`A250373(A167499(n+5)+2)`
-/

namespace A250380.P9459016786798255627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A167499 (n + 5) + 2).toNat

end

end A250380.P9459016786798255627

/-! ## A250380.P14572042482555762598

`A250373(A000217(n+6)+7)`
-/

namespace A250380.P14572042482555762598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A000217 (n + 6) + 7).toNat

end

end A250380.P14572042482555762598

/-! ## A250380.P7533952284587617542

`A250373(A038722(A055999(n+4)))`
-/

namespace A250380.P7533952284587617542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (A038722 (A055999 (n + 4)).toNat).toNat

end

end A250380.P7533952284587617542

/-!
# A250381: Number of length n+3 0..2 arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250381, there is no canonical definition to state claims against.
-/

/-! ## A250381.P4566878536431640528

`A250387(∑[n+2])`
-/

namespace A250381.P4566878536431640528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250381.P4566878536431640528

/-! ## A250381.P9975132738113315054

`abs(A250387(A000217(n+1)+1+n)-n)+n`
-/

namespace A250381.P9975132738113315054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A250387 (A000217 (n + 1) + 1 + (n : ℤ)).toNat - (n : ℤ)| + (n : ℤ)

end

end A250381.P9975132738113315054

/-! ## A250381.P3206122535568778338

`record[A250387(A000096(A331742(n)))]`
-/

namespace A250381.P3206122535568778338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000096 (A331742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250381.P3206122535568778338

/-! ## A250381.P2533930648827723264

`record[A250387(A000096(A002260(n+1)))]`
-/

namespace A250381.P2533930648827723264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250381.P2533930648827723264

/-! ## A250381.P5647936283003428342

`record[A250387(A000096(A003963(n+1)))]`
-/

namespace A250381.P5647936283003428342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250381.P5647936283003428342

/-! ## A250381.P6252707758940031961

`record[A250387(A000096(A004736(n+1)))]`
-/

namespace A250381.P6252707758940031961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250381.P6252707758940031961

/-!
# A250382: Number of length n+3 0..3 arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250382, there is no canonical definition to state claims against.
-/

/-! ## A250382.P15332409580239355459

`A250387(∑[n+3]+1)`
-/

namespace A250382.P15332409580239355459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250382.P15332409580239355459

/-! ## A250382.P12191782126043173882

`lcm(2, A250387(A034856(n+2)))`
-/

namespace A250382.P12191782126043173882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250387 (A034856 (n + 2)).toNat)

end

end A250382.P12191782126043173882

/-! ## A250382.P18038133559018520640

`char[A002262(n)]*A250387(A034856(n+2))`
-/

namespace A250382.P18038133559018520640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250387 (A034856 (n + 2)).toNat

end

end A250382.P18038133559018520640

/-! ## A250382.P17268510780840252590

`A057427(n+1)*A250387(A034856(n+2))`
-/

namespace A250382.P17268510780840252590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A250387 (A034856 (n + 2)).toNat

end

end A250382.P17268510780840252590

/-! ## A250382.P10311944262479003653

`A250387(A034856(n+2))+A000035(2*n)`
-/

namespace A250382.P10311944262479003653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A034856 (n + 2)).toNat + A000035 (2 * n)

end

end A250382.P10311944262479003653

/-! ## A250382.P447138410285034460

`char[A062602(n+1)]*A250387(A034856(n+2))`
-/

namespace A250382.P447138410285034460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250387 (A034856 (n + 2)).toNat

end

end A250382.P447138410285034460

/-! ## A250382.P8041666732193441339

`A250387(A055998(n+1)+1)+A000038(n+1)`
-/

namespace A250382.P8041666732193441339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A055998 (n + 1) + 1).toNat + A000038 (n + 1)

end

end A250382.P8041666732193441339

/-! ## A250382.P3517407939626864043

`A250387(A055998(n+1)+1)%A250369(n+1)`
-/

namespace A250382.P3517407939626864043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250387 (A055998 (n + 1) + 1).toNat) (A250369 (n + 1))

end

end A250382.P3517407939626864043

/-!
# A250383: Number of length n+3 0..4 arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250383, there is no canonical definition to state claims against.
-/

/-! ## A250383.P8280756292461887590

`A250387(A027379(n+2))`
-/

namespace A250383.P8280756292461887590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A027379 (n + 2)).toNat

end

end A250383.P8280756292461887590

/-! ## A250383.P3699150875852568476

`A250387(A055998(n+2))`
-/

namespace A250383.P3699150875852568476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A055998 (n + 2)).toNat

end

end A250383.P3699150875852568476

/-! ## A250383.P1410852500853296841

`A250387(Δ[A006416(n+2)])`
-/

namespace A250383.P1410852500853296841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n).toNat

end

end A250383.P1410852500853296841

/-! ## A250383.P12719427878781399349

`A250387(A052905(n+1)+2)`
-/

namespace A250383.P12719427878781399349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A052905 (n + 1) + 2).toNat

end

end A250383.P12719427878781399349

/-! ## A250383.P10192325981792036137

`A250387(A167614(n+1)+Δ[n²])`
-/

namespace A250383.P10192325981792036137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A250383.P10192325981792036137

/-! ## A250383.P2991105290602192137

`A250387(A167499(n)+A016777(n))`
-/

namespace A250383.P2991105290602192137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A167499 n + A016777 n).toNat

end

end A250383.P2991105290602192137

/-!
# A250384: Number of length n+3 0..5 arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250384, there is no canonical definition to state claims against.
-/

/-! ## A250384.P3171708018915156309

`A250387(Δ[A264443(n)])`
-/

namespace A250384.P3171708018915156309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n).toNat

end

end A250384.P3171708018915156309

/-! ## A250384.P4372915484051113334

`A250387(A046691(n+3))`
-/

namespace A250384.P4372915484051113334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A046691 (n + 3)).toNat

end

end A250384.P4372915484051113334

/-! ## A250384.P13665078095101960733

`A250387(Δ[A023545(n+1)])`
-/

namespace A250384.P13665078095101960733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n).toNat

end

end A250384.P13665078095101960733

/-! ## A250384.P12114771482293467222

`A250387(A052905(n+2)+1)`
-/

namespace A250384.P12114771482293467222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A052905 (n + 2) + 1).toNat

end

end A250384.P12114771482293467222

/-! ## A250384.P1709476346416978168

`A250387(A055999(n+2)+2)`
-/

namespace A250384.P1709476346416978168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A055999 (n + 2) + 2).toNat

end

end A250384.P1709476346416978168

/-! ## A250384.P14780537170784278916

`A250387(A000124(n+5)-5)`
-/

namespace A250384.P14780537170784278916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000124 (n + 5) - 5).toNat

end

end A250384.P14780537170784278916

/-! ## A250384.P1841584373330879554

`A250387(eq[4, A025581(n)]+1)`
-/

namespace A250384.P1841584373330879554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A250384.P1841584373330879554

/-! ## A250384.P599584820892819177

`A250387(Δ[A006416(n+3)]-1)`
-/

namespace A250384.P599584820892819177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n - 1).toNat

end

end A250384.P599584820892819177

/-! ## A250384.P12774107601097576501

`A250387(A000096(n+3)+n+2)`
-/

namespace A250384.P12774107601097576501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A250384.P12774107601097576501

/-! ## A250384.P18316073687726712692

`A250387(A264443(n+1)-A264443(n))`
-/

namespace A250384.P18316073687726712692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A264443 (n + 1) - A264443 n).toNat

end

end A250384.P18316073687726712692

/-!
# A250385: Number of length n+3 0..6 arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250385, there is no canonical definition to state claims against.
-/

/-! ## A250385.P9790580734892092368

`A250387(A052905(n+3))`
-/

namespace A250385.P9790580734892092368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A052905 (n + 3)).toNat

end

end A250385.P9790580734892092368

/-! ## A250385.P4833078304272862262

`A250387(A055999(n+3)+1)`
-/

namespace A250385.P4833078304272862262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A055999 (n + 3) + 1).toNat

end

end A250385.P4833078304272862262

/-! ## A250385.P15137314730168376478

`A250387(A000217(n+6)-5)`
-/

namespace A250385.P15137314730168376478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000217 (n + 6) - 5).toNat

end

end A250385.P15137314730168376478

/-! ## A250385.P14085576834665358963

`A250387(Δ[Δ[A006504(n+1)]])`
-/

namespace A250385.P14085576834665358963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n).toNat

end

end A250385.P14085576834665358963

/-! ## A250385.P2127262630108635711

`A250387(Δ[A264443(n+1)]-1)`
-/

namespace A250385.P2127262630108635711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n - 1).toNat

end

end A250385.P2127262630108635711

/-! ## A250385.P10371913584633201658

`A250387(Δ[A023545(n+2)]-1)`
-/

namespace A250385.P10371913584633201658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n - 1).toNat

end

end A250385.P10371913584633201658

/-! ## A250385.P17124688169876960418

`A250387(A080956(n+2)+(n+4)²)`
-/

namespace A250385.P17124688169876960418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A080956 (n + 2) + ((n + 4) ^ 2 : ℤ)).toNat

end

end A250385.P17124688169876960418

/-!
# A250386: Number of length n+3 0..7 arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250386, there is no canonical definition to state claims against.
-/

/-! ## A250386.P4907598325252731819

`A250387(A055999(n+4))`
-/

namespace A250386.P4907598325252731819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A055999 (n + 4)).toNat

end

end A250386.P4907598325252731819

/-! ## A250386.P18402434899894185060

`A250387(A000124(n+7)-7)`
-/

namespace A250386.P18402434899894185060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000124 (n + 7) - 7).toNat

end

end A250386.P18402434899894185060

/-! ## A250386.P15454603832726066796

`A250387(n+2+A000096(n+5))`
-/

namespace A250386.P15454603832726066796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 ((n + 2 : ℤ) + A000096 (n + 5)).toNat

end

end A250386.P15454603832726066796

/-! ## A250386.P9712739897674446833

`A250387(A000217(n+6)+n+1)`
-/

namespace A250386.P9712739897674446833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A250386.P9712739897674446833

/-! ## A250386.P7134142148243308445

`A250387(A008706(n+4)-A080956(n+3))`
-/

namespace A250386.P7134142148243308445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A008706 (n + 4) - A080956 (n + 3)).toNat

end

end A250386.P7134142148243308445

/-!
# A250388: Number of length 2+3 0..n arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250388, the canonical program `A250388.P14151257932274028181` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250388 has offset 1).

The definition of A250388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250388.P14151257932274028181

`(∑[n+1]+∑[Δ[n^3]+1])*(n+1)*(n+2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A250388

/-- `(∑[n+1]+∑[Δ[n^3]+1])*(n+1)*(n+2)` -/
def P14151257932274028181.Spec : Prop :=
  ∀ n, P14151257932274028181.a n = A250388 (n + 1)

theorem P14151257932274028181.correct : P14151257932274028181.Spec := by
  intro n
  simp only [A250388, Nat.add_sub_cancel]

end A250388

/-! ## A250388.P10076405199444961515

`A208139(n+1)-Δ[6*n*∑[∑[n²]]]`
-/

namespace A250388.P10076405199444961515
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208139 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A250388.P10076405199444961515

namespace A250388

/-- `A208139(n+1)-Δ[6*n*∑[∑[n²]]]` -/
def P10076405199444961515.Spec : Prop :=
  ∀ n, P10076405199444961515.a n = A250388 (n + 1)

end A250388

/-! ## A250388.P12946353075136815686

`A002378(n+1)+A000384(n+1)*A006000(n+1)`
-/

namespace A250388.P12946353075136815686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + A000384 (n + 1) * A006000 (n + 1)

end

end A250388.P12946353075136815686

namespace A250388

/-- `A002378(n+1)+A000384(n+1)*A006000(n+1)` -/
def P12946353075136815686.Spec : Prop :=
  ∀ n, P12946353075136815686.a n = A250388 (n + 1)

end A250388

/-! ## A250388.P15122084113444993600

`record[A002411(A028242(n))*A167614(n+1)]`
-/

namespace A250388.P15122084113444993600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A028242 n).toNat * A167614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250388.P15122084113444993600

namespace A250388

/-- `record[A002411(A028242(n))*A167614(n+1)]` -/
def P15122084113444993600.Spec : Prop :=
  ∀ n, P15122084113444993600.a n = A250388 (n + 1)

end A250388

/-! ## A250388.P3694831613430994264

`A250387(∑[n+1]+2)`
-/

namespace A250388.P3694831613430994264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250388.P3694831613430994264

namespace A250388

/-- `A250387(∑[n+1]+2)` -/
def P3694831613430994264.Spec : Prop :=
  ∀ n, P3694831613430994264.a n = A250388 (n + 1)

end A250388

/-! ## A250388.P15989260878180669043

`abs(A250387(A000217(n+1)+2)-n)+n`
-/

namespace A250388.P15989260878180669043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A250387 (A000217 (n + 1) + 2).toNat - (n : ℤ)| + (n : ℤ)

end

end A250388.P15989260878180669043

namespace A250388

/-- `abs(A250387(A000217(n+1)+2)-n)+n` -/
def P15989260878180669043.Spec : Prop :=
  ∀ n, P15989260878180669043.a n = A250388 (n + 1)

end A250388

/-!
# A250389: Number of length 3+3 0..n arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250389, there is no canonical definition to state claims against.
-/

/-! ## A250389.P5608895660735469369

`A250387(∑[n+2]+4)`
-/

namespace A250389.P5608895660735469369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250389.P5608895660735469369

/-! ## A250389.P8971494223168681816

`lcm(2, A250387(A167614(n+1)))`
-/

namespace A250389.P8971494223168681816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250387 (A167614 (n + 1)).toNat)

end

end A250389.P8971494223168681816

/-! ## A250389.P10354584611621720234

`A250387(A167614(n+1))%A016890(n)`
-/

namespace A250389.P10354584611621720234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250387 (A167614 (n + 1)).toNat) (A016890 n)

end

end A250389.P10354584611621720234

/-! ## A250389.P8969409818440776098

`or(A000038(n), A250387(A167614(n+1)))`
-/

namespace A250389.P8969409818440776098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250387 (A167614 (n + 1)).toNat)

end

end A250389.P8969409818440776098

/-! ## A250389.P1357935597603251523

`char[A065361(n)]*A250387(A167614(n+1))`
-/

namespace A250389.P1357935597603251523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250387 (A167614 (n + 1)).toNat

end

end A250389.P1357935597603251523

/-! ## A250389.P17132425852705281898

`A250387(A167614(n+1))+A000007(n+1)`
-/

namespace A250389.P17132425852705281898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A250389.P17132425852705281898

/-! ## A250389.P15073508048123360656

`A250387(A167614(n+1))+A338754(n)%11`
-/

namespace A250389.P15073508048123360656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A167614 (n + 1)).toNat + Int.tmod (A338754 n) 11

end

end A250389.P15073508048123360656

/-! ## A250389.P10365198350830040581

`Δ[A010751(n)]²*A250387(A167614(n+1))`
-/

namespace A250389.P10365198350830040581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A250387 (A167614 (n + 1)).toNat

end

end A250389.P10365198350830040581

/-! ## A250389.P5707462728469223756

`A007318(C(n, n²))*A250387(A167614(n+1))`
-/

namespace A250389.P5707462728469223756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A250387 (A167614 (n + 1)).toNat

end

end A250389.P5707462728469223756

/-! ## A250389.P9870123905333602691

`((-1)^A001620(n))²*A250387(A167614(n+1))`
-/

namespace A250389.P9870123905333602691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A001620 n : ℤ)) ^ 2 * (A250387 (A167614 (n + 1)).toNat : ℚ)

end

end A250389.P9870123905333602691

/-!
# A250390: Number of length 4+3 0..n arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250390, there is no canonical definition to state claims against.
-/

/-! ## A250390.P4204260880146799083

`A250387(A052905(n)+9)`
-/

namespace A250390.P4204260880146799083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A052905 n + 9).toNat

end

end A250390.P4204260880146799083

/-! ## A250390.P3246523319326281220

`A250387(A055999(n)+10)`
-/

namespace A250390.P3246523319326281220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A055999 n + 10).toNat

end

end A250390.P3246523319326281220

/-! ## A250390.P5575547409451610105

`A250387(A167614(n+2)+1)`
-/

namespace A250390.P5575547409451610105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A167614 (n + 2) + 1).toNat

end

end A250390.P5575547409451610105

/-! ## A250390.P17626817500611928683

`A250387(A000217(n+3)+4)`
-/

namespace A250390.P17626817500611928683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000217 (n + 3) + 4).toNat

end

end A250390.P17626817500611928683

/-! ## A250390.P5532153951140606012

`A250387(Δ[A264443(n)-n²])`
-/

namespace A250390.P5532153951140606012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n).toNat

end

end A250390.P5532153951140606012

/-! ## A250390.P8902190262353626556

`A250387(Δ[A023545(n+1)-n²])`
-/

namespace A250390.P8902190262353626556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n).toNat

end

end A250390.P8902190262353626556

/-! ## A250390.P12683618329987950183

`A250387(A080036(A167614(n+1)))`
-/

namespace A250390.P12683618329987950183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A250390.P12683618329987950183

/-!
# A250391: Number of length 5+3 0..n arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250391, there is no canonical definition to state claims against.
-/

/-! ## A250391.P12769180696944060260

`A250387(A167499(n+3))`
-/

namespace A250391.P12769180696944060260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A167499 (n + 3)).toNat

end

end A250391.P12769180696944060260

/-! ## A250391.P1446071433927773276

`A250387(A000096(n+3)+6)`
-/

namespace A250391.P1446071433927773276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000096 (n + 3) + 6).toNat

end

end A250391.P1446071433927773276

/-! ## A250391.P484231216714513201

`A250387(A000217(n+4)+5)`
-/

namespace A250391.P484231216714513201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000217 (n + 4) + 5).toNat

end

end A250391.P484231216714513201

/-! ## A250391.P183161703123039800

`A250387(A055999(n+1)+11)`
-/

namespace A250391.P183161703123039800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A055999 (n + 1) + 11).toNat

end

end A250391.P183161703123039800

/-! ## A250391.P12373692585088638290

`A250387(A000124(n+5)-(n+1))`
-/

namespace A250391.P12373692585088638290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A250391.P12373692585088638290

/-! ## A250391.P3074306223433095489

`A250387(A038722(Δ[A023545(n+1)]))`
-/

namespace A250391.P3074306223433095489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A250391.P3074306223433095489

/-!
# A250392: Number of length 6+3 0..n arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250392, there is no canonical definition to state claims against.
-/

/-! ## A250392.P11208948101449322470

`A250387(A000217(n+5)+6)`
-/

namespace A250392.P11208948101449322470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000217 (n + 5) + 6).toNat

end

end A250392.P11208948101449322470

/-! ## A250392.P16519124151128113247

`A250387(A161680(n+6)+6)`
-/

namespace A250392.P16519124151128113247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A161680 (n + 6) + 6).toNat

end

end A250392.P16519124151128113247

/-! ## A250392.P1376874653217663264

`A250387(Δ[A023545(n+1)]+10)`
-/

namespace A250392.P1376874653217663264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (f1 (n + 1) - f1 n + 10).toNat

end

end A250392.P1376874653217663264

/-! ## A250392.P11335332306571913077

`A250387(n+12+A000096(n+3))`
-/

namespace A250392.P11335332306571913077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 ((n + 12 : ℤ) + A000096 (n + 3)).toNat

end

end A250392.P11335332306571913077

/-! ## A250392.P6963019981629686893

`A250387(A002620(n+2)+A002620(n+9))`
-/

namespace A250392.P6963019981629686893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A250392.P6963019981629686893

/-!
# A250393: Number of length 7+3 0..n arrays with no four consecutive terms having the maximum of any two terms equal to the minimum of the remaining two terms.

The programs for A250393, there is no canonical definition to state claims against.
-/

/-! ## A250393.P12184742856997368669

`A250387(A167499(n+5)+2)`
-/

namespace A250393.P12184742856997368669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A167499 (n + 5) + 2).toNat

end

end A250393.P12184742856997368669

/-! ## A250393.P1708933726768528622

`A250387(A000217(n+6)+7)`
-/

namespace A250393.P1708933726768528622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A000217 (n + 6) + 7).toNat

end

end A250393.P1708933726768528622

/-! ## A250393.P17493949524826602406

`A250387(A161680(n+7)+7)`
-/

namespace A250393.P17493949524826602406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A161680 (n + 7) + 7).toNat

end

end A250393.P17493949524826602406

/-! ## A250393.P10352894866616129160

`A250387(n+14+A000096(n+4))`
-/

namespace A250393.P10352894866616129160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 ((n + 14 : ℤ) + A000096 (n + 4)).toNat

end

end A250393.P10352894866616129160

/-! ## A250393.P6682052672861919939

`A250387(A005408(n+8)+A000124(n+4))`
-/

namespace A250393.P6682052672861919939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250387 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A250393.P6682052672861919939

/-!
# A250394: Numbers k such that 56211383760397 + 44546738095860*k is prime.

The programs for A250394, there is no canonical definition to state claims against.
-/

/-! ## A250394.P12790205897718712883

`lt[A261184(n+1), A210890(A383589(n+2))]`
-/

namespace A250394.P12790205897718712883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210890 (A383589 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250394.P12790205897718712883

/-! ## A250394.P9718259381903184867

`A294929(A144512(n))+n`
-/

namespace A250394.P9718259381903184867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (A144512 n).toNat + (n : ℤ)

end

end A250394.P9718259381903184867

/-! ## A250394.P3001848068044721476

`lt[A328389(A358475(n+1)), 2]`
-/

namespace A250394.P3001848068044721476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A358475 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A250394.P3001848068044721476

/-! ## A250394.P5558183836022557627

`lt[A291684(A239495(n+1)), 6]`
-/

namespace A250394.P5558183836022557627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A239495 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A250394.P5558183836022557627

/-! ## A250394.P3283152310549343443

`lt[A366802(A264591(n+2)), 9]`
-/

namespace A250394.P3283152310549343443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366802 (A264591 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A250394.P3283152310549343443

/-!
# A250395: Numbers k such that 11410337850553 + 4609098694200*k is prime.

The programs for A250395, there is no canonical definition to state claims against.
-/

/-! ## A250395.P608334222153277273

`lt[A015128(n), A100974(A371099(n))]`
-/

namespace A250395.P608334222153277273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100974 (A371099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250395.P608334222153277273

/-! ## A250395.P1016625202931791522

`lt[A000041(n), A017113(A151708(3*n))]`
-/

namespace A250395.P1016625202931791522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A151708 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250395.P1016625202931791522

/-! ## A250395.P16828642092125745660

`lt[A332638(n), A005117(A151874(3*n))]`
-/

namespace A250395.P16828642092125745660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A151874 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250395.P16828642092125745660

/-! ## A250395.P4111845589273477730

`lt[A067553(n), A275919(A151706(3*n))]`
-/

namespace A250395.P4111845589273477730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275919 (A151706 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250395.P4111845589273477730

/-! ## A250395.P2927895508912938557

`lt[A289048(n), A133073(A152980(3*n))]`
-/

namespace A250395.P2927895508912938557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133073 (A152980 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250395.P2927895508912938557

/-!
# A250396: a(n) is the smallest prime greater than 2^n such that 2 is a primitive root modulo a(n).

The programs for A250396, there is no canonical definition to state claims against.
-/

/-! ## A250396.P11618146688605096703

`or(A014210(n), A046951(A002999(n)))`
-/

namespace A250396.P11618146688605096703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014210 n) (A046951 (A002999 n).toNat)

end

end A250396.P11618146688605096703

/-! ## A250396.P17544243236277432805

`or(A046951(A002999(n)), A104080(n))`
-/

namespace A250396.P17544243236277432805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046951 (A002999 n).toNat) (A104080 n)

end

end A250396.P17544243236277432805

/-! ## A250396.P12197563867554551928

`A159477(or(A000051(n), A236938(n)))`
-/

namespace A250396.P12197563867554551928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (Int.lor (A000051 n) (A236938 n)).toNat

end

end A250396.P12197563867554551928

/-! ## A250396.P9561904261223419855

`A100725(A000570(n+1)+1)`
-/

namespace A250396.P9561904261223419855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (A000570 (n + 1) + 1).toNat

end

end A250396.P9561904261223419855

/-! ## A250396.P10833389639536368316

`or(A000005(A207397(n)), A000051(n))`
-/

namespace A250396.P10833389639536368316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A207397 n).toNat) (A000051 n)

end

end A250396.P10833389639536368316

/-!
# A250397: Differences between A250396 and A104080.

The programs for A250397, there is no canonical definition to state claims against.
-/

/-! ## A250397.P15919994987571977109

`A250396(n+1)-A014210(n+1)`
-/

namespace A250397.P15919994987571977109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250396 (n + 1) - A014210 (n + 1)

end

end A250397.P15919994987571977109

/-! ## A250397.P11030838005519113330

`A250396(n+1)-A203074(n+2)`
-/

namespace A250397.P11030838005519113330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250396 (n + 1) - A203074 (n + 2)

end

end A250397.P11030838005519113330

/-! ## A250397.P14266103205595915501

`A250396(A000027(n+1))%A203074(n+2)`
-/

namespace A250397.P14266103205595915501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250396 (A000027 (n + 1)).toNat) (A203074 (n + 2))

end

end A250397.P14266103205595915501

/-! ## A250397.P1857633259159240254

`A250396(n+1)-(A013597(n+1)+A000079(n+1))`
-/

namespace A250397.P1857633259159240254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250396 (n + 1) - (A013597 (n + 1) + A000079 (n + 1))

end

end A250397.P1857633259159240254

/-!
# A250398: Composite numbers whose sum of divisors divides the sum of their unrelated numbers.

The programs for A250398, there is no canonical definition to state claims against.
-/

/-! ## A250398.P13811641912402519349

`A112774(n+1)-A025480(A210709(n+2))`
-/

namespace A250398.P13811641912402519349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112774 (n + 1) - A025480 (A210709 (n + 2)).toNat

end

end A250398.P13811641912402519349

