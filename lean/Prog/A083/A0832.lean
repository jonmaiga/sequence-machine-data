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
import Seq.B000.C020
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A083200: Polynexus numbers of order 7.

The programs for A083200, the canonical program `A083200.P13242403136547765864` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083200 has offset 1).

The definition of A083200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083200.P13242403136547765864

`((n+1)^7-n^7-((n+1)^3-n^3))/120`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083200

/-- `((n+1)^7-n^7-((n+1)^3-n^3))/120` -/
def P13242403136547765864.Spec : Prop :=
  ∀ n, P13242403136547765864.a n = (A083200 (n + 1) : ℚ)

end A083200

/-! ## A083200.P16211326419769314640

`∑[A160747(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A083200.P16211326419769314640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A160747 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083200.P16211326419769314640

namespace A083200

/-- `∑[A160747(n-1)+a(n-1)]` -/
def P16211326419769314640.Spec : Prop :=
  ∀ n, P16211326419769314640.a n = A083200 (n + 1)

end A083200

/-! ## A083200.P3258032396052240018

`A000217(n)/15*A160747(n)`
-/

namespace A083200.P3258032396052240018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / 15 * (A160747 n : ℚ)

end

end A083200.P3258032396052240018

namespace A083200

/-- `A000217(n)/15*A160747(n)` -/
def P3258032396052240018.Spec : Prop :=
  ∀ n, P3258032396052240018.a n = (A083200 (n + 1) : ℚ)

end A083200

/-! ## A083200.P4886817750132847189

`∑[∑[A160747(A028310(n)-1)]-1]`
-/

namespace A083200.P4886817750132847189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083200.P4886817750132847189

namespace A083200

/-- `∑[∑[A160747(A028310(n)-1)]-1]` -/
def P4886817750132847189.Spec : Prop :=
  ∀ n, P4886817750132847189.a n = A083200 (n + 1)

end A083200

/-! ## A083200.P17675559971404287208

`Δ[n²/24*A208536(n+1)]`
-/

namespace A083200.P17675559971404287208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 24 * (A208536 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083200.P17675559971404287208

namespace A083200

/-- `Δ[n²/24*A208536(n+1)]` -/
def P17675559971404287208.Spec : Prop :=
  ∀ n, P17675559971404287208.a n = (A083200 (n + 1) : ℚ)

end A083200

/-! ## A083200.P6806011589800059157

`Δ[n/2*C(A002522(n), 3)/10]`
-/

namespace A083200.P6806011589800059157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((Nat.choose (A002522 n).toNat 3 : ℚ) / 10)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083200.P6806011589800059157

namespace A083200

/-- `Δ[n/2*C(A002522(n), 3)/10]` -/
def P6806011589800059157.Spec : Prop :=
  ∀ n, P6806011589800059157.a n = (A083200 (n + 1) : ℚ)

end A083200

/-! ## A083200.P14506157795430987627

`A007290(A000124(n))+∑[A060446(n)]`
-/

namespace A083200.P14506157795430987627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (A000124 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083200.P14506157795430987627

namespace A083200

/-- `A007290(A000124(n))+∑[A060446(n)]` -/
def P14506157795430987627.Spec : Prop :=
  ∀ n, P14506157795430987627.a n = A083200 (n + 1)

end A083200

/-!
# A083201: a(1) = 1. For n>1, let x = a(n-1)+1; then a(n) is the first prime in the sequence 2*x-1, 2*x-3, 4*x-1, 4*x-3, 8*x-1, 8*x-3, ..., (2^k)*x-1, (2^k)*x-3, ...

The programs for A083201, there is no canonical definition to state claims against.
-/

/-! ## A083201.P6038923984223089566

`record[A006530(A083424(n))]`
-/

namespace A083201.P6038923984223089566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A083424 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083201.P6038923984223089566

/-! ## A083201.P5983841665436438802

`A088450(A024459(n+1))`
-/

namespace A083201.P5983841665436438802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (A024459 (n + 1)).toNat

end

end A083201.P5983841665436438802

/-!
# A083202: a(n) = gcd(A000055(n), A000055(n+1)).

The programs for A083202, there is no canonical definition to state claims against.
-/

/-! ## A083202.P2865263924093223961

`gcd(A000055(n), A000055(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083202.P2865263924093223961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000055 n) (A000055 (n + 1))

end

end A083202.P2865263924093223961

/-! ## A083202.P16777486086724501728

`gcd(Δ[A000055(n)], A000055(n))`
-/

namespace A083202.P16777486086724501728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000055 n)

end

end A083202.P16777486086724501728

/-! ## A083202.P7238065660231872235

`gcd(A144520(n)+1, Δ[A144520(n)])`
-/

namespace A083202.P7238065660231872235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144520 n + 1) (f1 (n + 1) - f1 n)

end

end A083202.P7238065660231872235

/-! ## A083202.P3052704175354593064

`sqrt(gcd(A001256(n+1), A001256(n)))`
-/

namespace A083202.P3052704175354593064
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A001256 (n + 1)) (A001256 n) : ℝ)

end

end A083202.P3052704175354593064

/-!
# A083203: a(1) = 1, then smallest number not included earlier such that a(n)*a(n+1) + 1 is a cube.

The programs for A083203, there is no canonical definition to state claims against.
-/

/-! ## A083203.P9715072217865354535

`A117818(A038711(n)*A039623(n+1))`
-/

namespace A083203.P9715072217865354535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A038711 n * A039623 (n + 1)).toNat

end

end A083203.P9715072217865354535

/-! ## A083203.P17738292677613972780

`A117818(A039623(n+1)^A038711(n))`
-/

namespace A083203.P17738292677613972780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (SequenceMachineLib.roundAway ((A039623 (n + 1) : ℚ) ^ (A038711 n : ℤ))).toNat

end

end A083203.P17738292677613972780

/-!
# A083204: Bases for the cubes arising in A083203.

The programs for A083204, there is no canonical definition to state claims against.
-/

/-! ## A083204.P18135703409320880062

`(A083203(n+1)*A083203(n+2)+1)^(1/3)`
-/

namespace A083204.P18135703409320880062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083203 (n + 1) * A083203 (n + 2) + 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A083204.P18135703409320880062

/-!
# A083205: a(1) = 1, then smallest number not included earlier such that a(n)*a(n+1) + 1 is an n-th power.

The programs for A083205, there is no canonical definition to state claims against.
-/

/-! ## A083205.P15954303519918514156

`A365006(A269303(3*n+2)+1)`
-/

namespace A083205.P15954303519918514156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365006 (A269303 (3 * n + 2) + 1).toNat

end

end A083205.P15954303519918514156

/-!
# A083206: a(n) is the number of ways of partitioning the divisors of n into two disjoint sets with equal sum.

The programs for A083206, there is no canonical definition to state claims against.
-/

/-! ## A083206.P10789018548130922832

`A369873(n+1)/2`
-/

namespace A083206.P10789018548130922832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369873 (n + 1) : ℚ) / 2

end

end A083206.P10789018548130922832

/-! ## A083206.P13617581396106469626

`∑{d}[n+1, A008683(#)*A378446((n+1)/#)]`
-/

namespace A083206.P13617581396106469626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378446 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A083206.P13617581396106469626

/-! ## A083206.P289099582821405097

`A001281(A369873(n+1))`
-/

namespace A083206.P289099582821405097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A369873 (n + 1)).toNat

end

end A083206.P289099582821405097

/-! ## A083206.P13828864767786456019

`A004526(A369873(n+1)+1)`
-/

namespace A083206.P13828864767786456019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A369873 (n + 1) + 1).toNat

end

end A083206.P13828864767786456019

/-! ## A083206.P3260174711834687830

`A026741(A369873(char[2]+n+1))`
-/

namespace A083206.P3260174711834687830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A369873 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)).toNat

end

end A083206.P3260174711834687830

/-!
# A083207: Zumkeller or integer-perfect numbers: numbers n whose divisors can be partitioned into two disjoint sets with equal sum.

The programs for A083207, there is no canonical definition to state claims against.
-/

/-! ## A083207.P12625953416150918526

`lt[acot(1), A083206(n+1)]+1`
-/

namespace A083207.P12625953416150918526
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A083207.P12625953416150918526

/-! ## A083207.P5361385889953076692

`A175582(n+1)-A175591(n+1)`
-/

namespace A083207.P5361385889953076692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175582 (n + 1) - A175591 (n + 1)

end

end A083207.P5361385889953076692

/-! ## A083207.P10823428619446846459

`lt[A103977(n+1), 1]+1`
-/

namespace A083207.P10823428619446846459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A083207.P10823428619446846459

/-! ## A083207.P5117065817150949271

`eq[2, A020639(A119347(n+1))]+1`
-/

namespace A083207.P5117065817150949271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A119347 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083207.P5117065817150949271

/-! ## A083207.P7448848714275916814

`filter[n+1, A179527(#)]`
-/

namespace A083207.P7448848714275916814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j) = 1) n)

end

end A083207.P7448848714275916814

/-! ## A083207.P15439922452464350641

`eq[1, A179527(n+1)]+1`
-/

namespace A083207.P15439922452464350641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083207.P15439922452464350641

/-! ## A083207.P8887507804819988939

`eq[1, A179527(A028310(n))]`
-/

namespace A083207.P8887507804819988939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083207.P8887507804819988939

/-! ## A083207.P13276679670736490717

`A153152(eq[1, A179527(n+1)])`
-/

namespace A083207.P13276679670736490717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083207.P13276679670736490717

/-! ## A083207.P11479736084078062661

`lt[A083206(n+1), A083206(A028310(n))]`
-/

namespace A083207.P11479736084078062661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083207.P11479736084078062661

/-! ## A083207.P2522222656660961745

`eq[1, A179527(A233583(n+1))]`
-/

namespace A083207.P2522222656660961745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083207.P2522222656660961745

/-!
# A083208: a(n) = A083206(A083207(n)).

The programs for A083208, there is no canonical definition to state claims against.
-/

/-! ## A083208.P41017589035531819

`A083206(A083207(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083208.P41017589035531819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A083207 (n + 1)).toNat

end

end A083208.P41017589035531819

/-! ## A083208.P3201436981372800626

`A083206(comp[(n+1)*floor(acot(A083206(n+1)))])`
-/

namespace A083208.P3201436981372800626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊SequenceMachineLib.acot (A083206 (n + 1) : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A083208.P3201436981372800626

/-! ## A083208.P1048896882673375321

`A083206(A175582(n+1)-A175591(n+1))`
-/

namespace A083208.P1048896882673375321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A175582 (n + 1) - A175591 (n + 1)).toNat

end

end A083208.P1048896882673375321

/-! ## A083208.P14150693695790501355

`A083206(eq[0, A103977(n+1)]+1)`
-/

namespace A083208.P14150693695790501355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083208.P14150693695790501355

/-! ## A083208.P1464811922564780347

`A083206(lt[A103977(n+1), 1]+1)`
-/

namespace A083208.P1464811922564780347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A083208.P1464811922564780347

/-! ## A083208.P18095241304274579252

`A083206(eq[1, A179527(n+1)]+1)`
-/

namespace A083208.P18095241304274579252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083208.P18095241304274579252

/-! ## A083208.P17445241623020606926

`filter[A083206(2*(n+1)), A168182(#)]`
-/

namespace A083208.P17445241623020606926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A083208.P17445241623020606926

/-!
# A083209: Numbers whose divisors can be partitioned in exactly one way into two disjoint sets with the same sum.

The programs for A083209, there is no canonical definition to state claims against.
-/

/-! ## A083209.P17603485701572133138

`filter[A378599(n+1), A378449(#)]`
-/

namespace A083209.P17603485701572133138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P17603485701572133138

/-! ## A083209.P16098831468251946645

`eq[1, A083206(n+1)]+1`
-/

namespace A083209.P16098831468251946645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083209.P16098831468251946645

/-! ## A083209.P9047832166206186754

`filter[A023196(n+1), A378449(#)]`
-/

namespace A083209.P9047832166206186754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P9047832166206186754

/-! ## A083209.P8466164542435645308

`filter[A068354(n+1), A378449(#)]`
-/

namespace A083209.P8466164542435645308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P8466164542435645308

/-! ## A083209.P13680325499199054878

`filter[A083207(n+1), A378449(#)]`
-/

namespace A083209.P13680325499199054878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P13680325499199054878

/-! ## A083209.P7410064536569842107

`filter[A103288(n+1), A378449(#)]`
-/

namespace A083209.P7410064536569842107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P7410064536569842107

/-! ## A083209.P18281063111052008076

`filter[A177052(n+1), A378449(#)]`
-/

namespace A083209.P18281063111052008076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P18281063111052008076

/-! ## A083209.P3813638233431484289

`filter[A204829(n+1), A378449(#)]`
-/

namespace A083209.P3813638233431484289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P3813638233431484289

/-! ## A083209.P11985395371164455016

`filter[A326133(n+1), A378449(#)]`
-/

namespace A083209.P11985395371164455016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P11985395371164455016

/-! ## A083209.P2366136823561741858

`record[A083207(n+1)/A083208(n+1)]`
-/

namespace A083209.P2366136823561741858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083207 (n + 1) : ℚ) / (A083208 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083209.P2366136823561741858

/-! ## A083209.P7231781321181476774

`record[A175582(n+1)/A083208(n+1)-A175591(n+1)]`
-/

namespace A083209.P7231781321181476774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175582 (n + 1) : ℚ) / (A083208 (n + 1) : ℚ) - (A175591 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083209.P7231781321181476774

/-! ## A083209.P13608615404533487460

`filter[A051774(n+1), A378449(#)]`
-/

namespace A083209.P13608615404533487460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378449 (f1 j).toNat = 1) n)

end

end A083209.P13608615404533487460

/-!
# A083210: Numbers with no subset of their divisors such that the complement has the same sum.

The programs for A083210, there is no canonical definition to state claims against.
-/

/-! ## A083210.P9568943868863835213

`eq[0, A083206(n+1)]+1`
-/

namespace A083210.P9568943868863835213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083210.P9568943868863835213

/-! ## A083210.P11207966545299266391

`lt[0, A103977(n+1)]+1`
-/

namespace A083210.P11207966545299266391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A083210.P11207966545299266391

/-! ## A083210.P6873952919411303501

`comp[A083207(n+1)-1]+1`
-/

namespace A083210.P6873952919411303501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A083210.P6873952919411303501

/-! ## A083210.P3900131402257537541

`eq[1, A119347(n+1)%2]+1`
-/

namespace A083210.P3900131402257537541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119347 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083210.P3900131402257537541

/-! ## A083210.P18413753446903229724

`∪[A083211(n+1), A005100(n+1)]`
-/

namespace A083210.P18413753446903229724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083210.P18413753446903229724

/-! ## A083210.P58536445343371121

`eq[0, A179527(n+1)]+1`
-/

namespace A083210.P58536445343371121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083210.P58536445343371121

/-! ## A083210.P9935872821230925735

`eq[0, A083206(or(n, a(n-1)))]` with `a(0)=1`
-/

namespace A083210.P9935872821230925735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A083206 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083210.P9935872821230925735

/-!
# A083211: Abundant numbers (A005101) with no subset of their divisors such that the complement has the same sum.

The programs for A083211, there is no canonical definition to state claims against.
-/

/-! ## A083211.P1919695776673618169

`∪[A156903(n+1), A171641(n+1)]`
-/

namespace A083211.P1919695776673618169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083211.P1919695776673618169

/-! ## A083211.P3288363132247327093

`eq[1, A378661(n+1)]+1`
-/

namespace A083211.P3288363132247327093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378661 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083211.P3288363132247327093

/-! ## A083211.P17998622525169979119

`∩[A005101(n+1), A083210(n+1)]`
-/

namespace A083211.P17998622525169979119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083211.P17998622525169979119

/-! ## A083211.P949503395548775341

`filter[A350780(n+1), A378661(#)]`
-/

namespace A083211.P949503395548775341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378661 (f1 j).toNat = 1) n)

end

end A083211.P949503395548775341

/-!
# A083212: Where records occur in A083206.

The programs for A083212, there is no canonical definition to state claims against.
-/

/-! ## A083212.P907103220808168774

`A002182(ceil(exp(atan(n²)))+n)`
-/

namespace A083212.P907103220808168774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (⌈Real.exp (Real.arctan (n ^ 2 : ℝ))⌉ + (n : ℤ)).toNat

end

end A083212.P907103220808168774

/-! ## A083212.P18358838321072365730

`A002182(comp[A316622(n)]+1)`
-/

namespace A083212.P18358838321072365730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316622 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083212.P18358838321072365730

/-! ## A083212.P1353163380210280712

`A002182(comp[A328357(n)]+1)`
-/

namespace A083212.P1353163380210280712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328357 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083212.P1353163380210280712

/-! ## A083212.P5144690965736673884

`A002182(A128999(n+1)+n)`
-/

namespace A083212.P5144690965736673884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A128999 (n + 1) + (n : ℤ)).toNat

end

end A083212.P5144690965736673884

/-! ## A083212.P17175965693350756938

`record[A065218(n+1)%A081547(n+1)]`
-/

namespace A083212.P17175965693350756938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065218 (n + 1)) (A081547 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083212.P17175965693350756938

/-!
# A083213: Record values in A083206.

The programs for A083213, there is no canonical definition to state claims against.
-/

/-! ## A083213.P17220166611354073108

`A083206(A083212(n+1))`
-/

namespace A083213.P17220166611354073108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A083212 (n + 1)).toNat

end

end A083213.P17220166611354073108

/-! ## A083213.P11140556189750299635

`record[A083206(n+1)]`
-/

namespace A083213.P11140556189750299635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083213.P11140556189750299635

/-! ## A083213.P1884978837223028320

`record[Δ[A083206(A008486(n))]]`
-/

namespace A083213.P1884978837223028320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083213.P1884978837223028320

/-! ## A083213.P12426568263878522697

`record[A083208(n+1)-A000007(n)]`
-/

namespace A083213.P12426568263878522697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083208 (n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083213.P12426568263878522697

/-! ## A083213.P4451361237762134777

`record[lcm(A011591(n), A083208(n+1))]`
-/

namespace A083213.P4451361237762134777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011591 n) (A083208 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083213.P4451361237762134777

/-!
# A083214: Numbers k for which 3 | p(k), where p(k) = A000041(k) is the k-th partition number.

The programs for A083214, there is no canonical definition to state claims against.
-/

/-! ## A083214.P5434437330835127397

`eq[0, A068907(n)]`
-/

namespace A083214.P5434437330835127397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083214.P5434437330835127397

/-! ## A083214.P12358573272556228116

`lt[A068907(n), A057427(n)]`
-/

namespace A083214.P12358573272556228116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083214.P12358573272556228116

/-! ## A083214.P7139997332919432694

`lt[A068907(n), A325960(A099985(n+1))]`
-/

namespace A083214.P7139997332919432694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325960 (A099985 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083214.P7139997332919432694

/-! ## A083214.P7659879194142111508

`lt[A068907(n), A325960(A343783(n+1))]`
-/

namespace A083214.P7659879194142111508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325960 (A343783 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083214.P7659879194142111508

/-! ## A083214.P12924366490860267072

`lt[A068907(n), A010051(A000040(n+1))]`
-/

namespace A083214.P12924366490860267072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083214.P12924366490860267072

/-! ## A083214.P4618291548825588934

`lt[A068907(n), A010051(A008578(n+1))]`
-/

namespace A083214.P4618291548825588934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083214.P4618291548825588934

/-! ## A083214.P15566077669638835939

`eq[0, A000041(n)%3]`
-/

namespace A083214.P15566077669638835939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083214.P15566077669638835939

/-! ## A083214.P15327107160912231805

`eq[2, A000065(n)%3]`
-/

namespace A083214.P15327107160912231805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083214.P15327107160912231805

/-! ## A083214.P4522729246354616294

`lt[∑[A002865(n)]%3, 1]`
-/

namespace A083214.P4522729246354616294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A083214.P4522729246354616294

/-! ## A083214.P15667745434354774423

`eq[3, gcd(3, A000041(2*n-n))]`
-/

namespace A083214.P15667745434354774423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000041 (2 * n - n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083214.P15667745434354774423

/-! ## A083214.P1898360244802214053

`lt[(A295341(n)+A000726(n))%3, 1]`
-/

namespace A083214.P1898360244802214053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295341 n + A000726 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083214.P1898360244802214053

/-! ## A083214.P1628304502337614774

`lt[6, dr(A299473(n))]`
-/

namespace A083214.P1628304502337614774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299473 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083214.P1628304502337614774

/-! ## A083214.P16904861041541949847

`lt[lcm(3, A000041(n)), A000041(n+1)]`
-/

namespace A083214.P16904861041541949847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A000041 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083214.P16904861041541949847

/-! ## A083214.P7537573969820991748

`lt[A035363(2*n)%3, 1]`
-/

namespace A083214.P7537573969820991748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083214.P7537573969820991748

/-! ## A083214.P8611399925021887217

`lt[A000041(n*A068907(n)), n]`
-/

namespace A083214.P8611399925021887217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) * A068907 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083214.P8611399925021887217

/-! ## A083214.P9226653002795298510

`lt[A068907(n), (n/A000041(n))²]`
-/

namespace A083214.P9226653002795298510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A000041 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A083214.P9226653002795298510

/-! ## A083214.P13058304772596987666

`eq[9, dr(A001255(n))]`
-/

namespace A083214.P13058304772596987666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001255 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083214.P13058304772596987666

/-! ## A083214.P8170027376495036369

`eq[0, A053274(n)%3]`
-/

namespace A083214.P8170027376495036369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053274 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083214.P8170027376495036369

/-! ## A083214.P5726650612727211309

`eq[9, dr(A133042(n))]`
-/

namespace A083214.P5726650612727211309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A133042 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083214.P5726650612727211309

/-!
# A083215: a(n) = 1 + Sum(prime(i)*(2*i-1): 1<=i<=n).

The programs for A083215, the canonical program `A083215.P5803182614636512157` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083215 has offset 1).

The definition of A083215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083215.P5803182614636512157

`∑[Δ[n²]*p?[abs(2*n-3)]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083215

/-- `∑[Δ[n²]*p?[abs(2*n-3)]]` -/
def P5803182614636512157.Spec : Prop :=
  ∀ n, P5803182614636512157.a n = A083215 (n + 1)

theorem P5803182614636512157.correct : P5803182614636512157.Spec := by
  intro n
  simp only [A083215, Nat.add_sub_cancel]

end A083215

/-! ## A083215.P3052511574506061884

`A316322(n+1)+1`
-/

namespace A083215.P3052511574506061884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316322 (n + 1) + 1

end

end A083215.P3052511574506061884

namespace A083215

/-- `A316322(n+1)+1` -/
def P3052511574506061884.Spec : Prop :=
  ∀ n, P3052511574506061884.a n = A083215 (n + 1)

end A083215

/-! ## A083215.P2776591263734291496

`∑[Δ[n²]*Δ[A007504(n)]]+1`
-/

namespace A083215.P2776591263734291496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083215.P2776591263734291496

namespace A083215

/-- `∑[Δ[n²]*Δ[A007504(n)]]+1` -/
def P2776591263734291496.Spec : Prop :=
  ∀ n, P2776591263734291496.a n = A083215 (n + 1)

end A083215

/-! ## A083215.P9283476873092882394

`∑[A000040(n+1)*Δ[n²]]+1`
-/

namespace A083215.P9283476873092882394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083215.P9283476873092882394

namespace A083215

/-- `∑[A000040(n+1)*Δ[n²]]+1` -/
def P9283476873092882394.Spec : Prop :=
  ∀ n, P9283476873092882394.a n = A083215 (n + 1)

end A083215

/-! ## A083215.P12203588599822568416

`∑[(2*n+1)*p?[round(sqrt(n)+n)]]+1`
-/

namespace A083215.P12203588599822568416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083215.P12203588599822568416

namespace A083215

/-- `∑[(2*n+1)*p?[round(sqrt(n)+n)]]+1` -/
def P12203588599822568416.Spec : Prop :=
  ∀ n, P12203588599822568416.a n = A083215 (n + 1)

end A083215

/-!
# A083217: a(n) = (2*5^n + (-1)^n)/3.

The programs for A083217, the canonical program `A083217.P18185323119577274687` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083217 has offset 0).

The definition of A083217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083217.P18185323119577274687

`(2*5^n+(-1)^n)/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083217

/-- `(2*5^n+(-1)^n)/3` -/
def P18185323119577274687.Spec : Prop :=
  ∀ n, P18185323119577274687.a n = (A083217 n : ℚ)

end A083217

/-! ## A083217.P1700502909443150865

`ogf((-1+x)/(-1+4x+5x^2))`
-/

namespace A083217.P1700502909443150865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, -5] n

end

end A083217.P1700502909443150865

namespace A083217

/-- `ogf((-1+x)/(-1+4x+5x^2))` -/
def P1700502909443150865.Spec : Prop :=
  ∀ n, P1700502909443150865.a n = A083217 n

end A083217

/-! ## A083217.P2955542924414455084

`or(1, 2*floor(5^n/3))`
-/

namespace A083217.P2955542924414455084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * ⌊(5 ^ n : ℚ) / 3⌋)

end

end A083217.P2955542924414455084

namespace A083217

/-- `or(1, 2*floor(5^n/3))` -/
def P2955542924414455084.Spec : Prop :=
  ∀ n, P2955542924414455084.a n = A083217 n

end A083217

/-! ## A083217.P4048861331820747374

`Δ[xor(1, 5*a(n-1))]` with `a(0)=0`
-/

namespace A083217.P4048861331820747374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor 1 (5 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083217.P4048861331820747374

namespace A083217

/-- `Δ[xor(1, 5*a(n-1))]` -/
def P4048861331820747374.Spec : Prop :=
  ∀ n, P4048861331820747374.a n = A083217 n

end A083217

/-! ## A083217.P17491949192081901848

`∑[xor(4, 5*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A083217.P17491949192081901848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.xor 4 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083217.P17491949192081901848

namespace A083217

/-- `∑[xor(4, 5*a(n-1))]` -/
def P17491949192081901848.Spec : Prop :=
  ∀ n, (P17491949192081901848.a n : ℤ) = A083217 n

end A083217

/-! ## A083217.P10690074423067947190

`Δ[5^(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A083217.P10690074423067947190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083217.P10690074423067947190

namespace A083217

/-- `Δ[5^(n-1)-a(n-1)]` -/
def P10690074423067947190.Spec : Prop :=
  ∀ n, P10690074423067947190.a n = (A083217 n : ℚ)

end A083217

/-! ## A083217.P15764081957394644970

`4*5^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A083217.P15764081957394644970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A083217.P15764081957394644970

namespace A083217

/-- `4*5^(n-1)-a(n-1)` -/
def P15764081957394644970.Spec : Prop :=
  ∀ n, P15764081957394644970.a n = (A083217 n : ℚ)

end A083217

/-! ## A083217.P4181628338197280196

`4*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A083217.P4181628338197280196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) + 5 * a (n - 2)

end

end A083217.P4181628338197280196

namespace A083217

/-- `4*a(n-1)+5*a(n-2)` -/
def P4181628338197280196.Spec : Prop :=
  ∀ n, (P4181628338197280196.a n : ℤ) = A083217 n

end A083217

/-! ## A083217.P15580481162457772928

`Δ[A015531(n)]`
-/

namespace A083217.P15580481162457772928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083217.P15580481162457772928

namespace A083217

/-- `Δ[A015531(n)]` -/
def P15580481162457772928.Spec : Prop :=
  ∀ n, P15580481162457772928.a n = A083217 n

end A083217

/-! ## A083217.P10196132832709492558

`Δ[xor(1, A109500(n))]`
-/

namespace A083217.P10196132832709492558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A109500 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083217.P10196132832709492558

namespace A083217

/-- `Δ[xor(1, A109500(n))]` -/
def P10196132832709492558.Spec : Prop :=
  ∀ n, P10196132832709492558.a n = A083217 n

end A083217

/-! ## A083217.P9168189390510357061

`Δ[abs(1-A166122(n))]`
-/

namespace A083217.P9168189390510357061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A166122 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083217.P9168189390510357061

namespace A083217

/-- `Δ[abs(1-A166122(n))]` -/
def P9168189390510357061.Spec : Prop :=
  ∀ n, P9168189390510357061.a n = A083217 n

end A083217

/-! ## A083217.P6818917034054851256

`abs(1-2*A083085(n))`
-/

namespace A083217.P6818917034054851256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A083085 n|

end

end A083217.P6818917034054851256

namespace A083217

/-- `abs(1-2*A083085(n))` -/
def P6818917034054851256.Spec : Prop :=
  ∀ n, P6818917034054851256.a n = A083217 n

end A083217

/-! ## A083217.P8350148555890881838

`abs(a(n-1)-A005054(n))` with `a(0)=1, a(1)=3`
-/

namespace A083217.P8350148555890881838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  |a (n - 1) - A005054 n|

end

end A083217.P8350148555890881838

namespace A083217

/-- `abs(a(n-1)-A005054(n))` -/
def P8350148555890881838.Spec : Prop :=
  ∀ n, P8350148555890881838.a n = A083217 n

end A083217

/-! ## A083217.P8620502104192482970

`A082685(n)-A001045(n)`
-/

namespace A083217.P8620502104192482970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082685 n - A001045 n

end

end A083217.P8620502104192482970

namespace A083217

/-- `A082685(n)-A001045(n)` -/
def P8620502104192482970.Spec : Prop :=
  ∀ n, P8620502104192482970.a n = A083217 n

end A083217

/-! ## A083217.P2049702847582826870

`A083425(n)-A015531(n)`
-/

namespace A083217.P2049702847582826870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083425 n - A015531 n

end

end A083217.P2049702847582826870

namespace A083217

/-- `A083425(n)-A015531(n)` -/
def P2049702847582826870.Spec : Prop :=
  ∀ n, P2049702847582826870.a n = A083217 n

end A083217

/-! ## A083217.P4466914564782176868

`Δ[A084177(n)-A084153(n)]`
-/

namespace A083217.P4466914564782176868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 n - A084153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083217.P4466914564782176868

namespace A083217

/-- `Δ[A084177(n)-A084153(n)]` -/
def P4466914564782176868.Spec : Prop :=
  ∀ n, P4466914564782176868.a n = A083217 n

end A083217

/-! ## A083217.P10177488929828717184

`A015531(n+1)-A015531(n)`
-/

namespace A083217.P10177488929828717184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) - A015531 n

end

end A083217.P10177488929828717184

namespace A083217

/-- `A015531(n+1)-A015531(n)` -/
def P10177488929828717184.Spec : Prop :=
  ∀ n, P10177488929828717184.a n = A083217 n

end A083217

/-! ## A083217.P3667052623375343620

`A000351(n)-2*A015531(n)`
-/

namespace A083217.P3667052623375343620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - 2 * A015531 n

end

end A083217.P3667052623375343620

namespace A083217

/-- `A000351(n)-2*A015531(n)` -/
def P3667052623375343620.Spec : Prop :=
  ∀ n, P3667052623375343620.a n = A083217 n

end A083217

/-! ## A083217.P15358143669059578961

`A084177(n+1)-2*A084177(n)`
-/

namespace A083217.P15358143669059578961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 (n + 1) - 2 * A084177 n

end

end A083217.P15358143669059578961

namespace A083217

/-- `A084177(n+1)-2*A084177(n)` -/
def P15358143669059578961.Spec : Prop :=
  ∀ n, P15358143669059578961.a n = A083217 n

end A083217

/-! ## A083217.P11368501128484888519

`floor(xor(2, Δ[5^n])/6)`
-/

namespace A083217.P11368501128484888519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 6⌋

end

end A083217.P11368501128484888519

namespace A083217

/-- `floor(xor(2, Δ[5^n])/6)` -/
def P11368501128484888519.Spec : Prop :=
  ∀ n, P11368501128484888519.a n = A083217 n

end A083217

/-!
# A083218: a(n) = n mod (spf(n+1)+1), where spf(n) is the smallest prime factor of n (A020639).

The programs for A083218, there is no canonical definition to state claims against.
-/

/-! ## A083218.P16641351439157046439

`(n+1)%(A020639(n+2)+1)`
-/

namespace A083218.P16641351439157046439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (n + 2) + 1)

end

end A083218.P16641351439157046439

/-! ## A083218.P13160748645592649732

`A061228(n+2)%(n+1-A061228(n+2))`
-/

namespace A083218.P13160748645592649732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061228 (n + 2)) ((n + 1 : ℤ) - A061228 (n + 2))

end

end A083218.P13160748645592649732

/-!
# A083219: a(n) = n - 2*floor(n/4).

The programs for A083219, the canonical program `A083219.P18134870198854383664` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083219 has offset 0).

The definition of A083219 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-2*floor(n/4)` (program `A083219.P18134870198854383664`, by `A083219.P18134870198854383664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083219.P18134870198854383664

`n-2*floor(n/4)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083219

/-- `n-2*floor(n/4)` -/
def P18134870198854383664.Spec : Prop :=
  ∀ n, P18134870198854383664.a n = A083219 n

theorem P18134870198854383664.correct : P18134870198854383664.Spec := by
  intro n
  simp only [A083219]

end A083219

/-! ## A083219.P1341960210703244512

`(2*n+3-2*cos(n*π/2)-cos(n*π)-2*sin(n*π/2))/4`
-/

namespace A083219.P1341960210703244512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3 : ℝ) - 2 * Real.cos ((n : ℝ) * Real.pi / 2) - Real.cos ((n : ℝ) * Real.pi) - 2 * Real.sin ((n : ℝ) * Real.pi / 2)) / 4

end

end A083219.P1341960210703244512

namespace A083219

/-- `(2*n+3-2*cos(n*π/2)-cos(n*π)-2*sin(n*π/2))/4` -/
def P1341960210703244512.Spec : Prop :=
  ∀ n, P1341960210703244512.a n = (A083219 n : ℝ)

end A083219

/-! ## A083219.P17581600338627207809

`A083220(n)/2`
-/

namespace A083219.P17581600338627207809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083220 n : ℚ) / 2

end

end A083219.P17581600338627207809

namespace A083219

/-- `A083220(n)/2` -/
def P17581600338627207809.Spec : Prop :=
  ∀ n, P17581600338627207809.a n = (A083219 n : ℚ)

end A083219

/-! ## A083219.P6666385561957897321

`(n%4+n)/2`
-/

namespace A083219.P6666385561957897321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 4 + n : ℕ) : ℚ) / 2

end

end A083219.P6666385561957897321

namespace A083219

/-- `(n%4+n)/2` -/
def P6666385561957897321.Spec : Prop :=
  ∀ n, P6666385561957897321.a n = (A083219 n : ℚ)

end A083219

/-! ## A083219.P12022643090491667098

`(and(3, n)+n)/2`
-/

namespace A083219.P12022643090491667098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 n + n : ℚ) / 2

end

end A083219.P12022643090491667098

namespace A083219

/-- `(and(3, n)+n)/2` -/
def P12022643090491667098.Spec : Prop :=
  ∀ n, P12022643090491667098.a n = (A083219 n : ℚ)

end A083219

/-! ## A083219.P2969598080576161264

`floor(sinh(log(or(2, n+2))))`
-/

namespace A083219.P2969598080576161264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.lor 2 (n + 2) : ℝ))⌋

end

end A083219.P2969598080576161264

namespace A083219

/-- `floor(sinh(log(or(2, n+2))))` -/
def P2969598080576161264.Spec : Prop :=
  ∀ n, P2969598080576161264.a n = A083219 n

end A083219

/-! ## A083219.P12709990307323595603

`floor(∑[n+1]/or(3, n))`
-/

namespace A083219.P12709990307323595603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 3 n : ℚ)⌋

end

end A083219.P12709990307323595603

namespace A083219

/-- `floor(∑[n+1]/or(3, n))` -/
def P12709990307323595603.Spec : Prop :=
  ∀ n, P12709990307323595603.a n = A083219 n

end A083219

/-! ## A083219.P487559983965575612

`round(∑[n+1]/or(3, n))`
-/

namespace A083219.P487559983965575612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 3 n : ℚ))

end

end A083219.P487559983965575612

namespace A083219

/-- `round(∑[n+1]/or(3, n))` -/
def P487559983965575612.Spec : Prop :=
  ∀ n, P487559983965575612.a n = A083219 n

end A083219

/-! ## A083219.P7686948154814597375

`floor((or(2, n+2)-1)/2)`
-/

namespace A083219.P7686948154814597375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 2 (n + 2) : ℤ) - 1 : ℚ) / 2⌋

end

end A083219.P7686948154814597375

namespace A083219

/-- `floor((or(2, n+2)-1)/2)` -/
def P7686948154814597375.Spec : Prop :=
  ∀ n, P7686948154814597375.a n = A083219 n

end A083219

/-! ## A083219.P3474032776828184757

`round((or(2, n-2)+2)/2)`
-/

namespace A083219.P3474032776828184757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 2 ((n : ℤ) - 2) + 2 : ℚ) / 2)

end

end A083219.P3474032776828184757

namespace A083219

/-- `round((or(2, n-2)+2)/2)` -/
def P3474032776828184757.Spec : Prop :=
  ∀ n, P3474032776828184757.a n = A083219 n

end A083219

/-! ## A083219.P2963343326458186562

`ceil(n+1-or(2, n)/2)`
-/

namespace A083219.P2963343326458186562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) - (Nat.lor 2 n : ℚ) / 2⌉

end

end A083219.P2963343326458186562

namespace A083219

/-- `ceil(n+1-or(2, n)/2)` -/
def P2963343326458186562.Spec : Prop :=
  ∀ n, P2963343326458186562.a n = A083219 n

end A083219

/-! ## A083219.P12062915345719516301

`ceil((xor(2, n+2)+n)/4)`
-/

namespace A083219.P12062915345719516301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (n + 2) + n : ℚ) / 4⌉

end

end A083219.P12062915345719516301

namespace A083219

/-- `ceil((xor(2, n+2)+n)/4)` -/
def P12062915345719516301.Spec : Prop :=
  ∀ n, P12062915345719516301.a n = A083219 n

end A083219

/-! ## A083219.P9919586044905895977

`round((xor(2, n+2)+n)/4)`
-/

namespace A083219.P9919586044905895977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n + 2) + n : ℚ) / 4)

end

end A083219.P9919586044905895977

namespace A083219

/-- `round((xor(2, n+2)+n)/4)` -/
def P9919586044905895977.Spec : Prop :=
  ∀ n, P9919586044905895977.a n = A083219 n

end A083219

/-! ## A083219.P15626993930625032245

`floor(-(or(2, -(n+3))/2))`
-/

namespace A083219.P15626993930625032245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.lor 2 (-(n + 3 : ℤ)) : ℚ) / 2)⌋

end

end A083219.P15626993930625032245

namespace A083219

/-- `floor(-(or(2, -(n+3))/2))` -/
def P15626993930625032245.Spec : Prop :=
  ∀ n, P15626993930625032245.a n = A083219 n

end A083219

/-! ## A083219.P15536538009749971549

`-ceil(or(2, -(n+3))/2)`
-/

namespace A083219.P15536538009749971549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.lor 2 (-(n + 3 : ℤ)) : ℚ) / 2⌉

end

end A083219.P15536538009749971549

namespace A083219

/-- `-ceil(or(2, -(n+3))/2)` -/
def P15536538009749971549.Spec : Prop :=
  ∀ n, P15536538009749971549.a n = A083219 n

end A083219

/-! ## A083219.P1895968579713434208

`abs(a(n-4)+2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A083219.P1895968579713434208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 4) + 2

end

end A083219.P1895968579713434208

namespace A083219

/-- `abs(a(n-4)+2)` -/
def P1895968579713434208.Spec : Prop :=
  ∀ n, (P1895968579713434208.a n : ℤ) = A083219 n

end A083219

/-! ## A083219.P7200794594905381964

`floor(a(n-2)+and(2, n))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083219.P7200794594905381964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.land 2 n

end

end A083219.P7200794594905381964

namespace A083219

/-- `floor(a(n-2)+and(2, n))` -/
def P7200794594905381964.Spec : Prop :=
  ∀ n, (P7200794594905381964.a n : ℤ) = A083219 n

end A083219

/-! ## A083219.P16431905437689894532

`∑[and(2, n)-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A083219.P16431905437689894532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Nat.land 2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083219.P16431905437689894532

namespace A083219

/-- `∑[and(2, n)-a(n-1)]` -/
def P16431905437689894532.Spec : Prop :=
  ∀ n, P16431905437689894532.a n = A083219 n

end A083219

/-! ## A083219.P10792420336374927225

`(n-(n-2*n)%4)/2`
-/

namespace A083219.P10792420336374927225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.tmod ((n : ℤ) - (2 * n : ℤ)) 4 : ℚ) / 2

end

end A083219.P10792420336374927225

namespace A083219

/-- `(n-(n-2*n)%4)/2` -/
def P10792420336374927225.Spec : Prop :=
  ∀ n, P10792420336374927225.a n = (A083219 n : ℚ)

end A083219

/-! ## A083219.P1068650429928392288

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A083219.P1068650429928392288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, -1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083219.P1068650429928392288

namespace A083219

/-- `∑[floor(a(n-4))]` -/
def P1068650429928392288.Spec : Prop :=
  ∀ n, P1068650429928392288.a n = A083219 n

end A083219

/-!
# A083220: a(n) = n + (n mod 4).

The programs for A083220, the canonical program `A083220.P880613249531740876` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083220 has offset 0).

The definition of A083220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083220.P880613249531740876

`n%4+n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083220

/-- `n%4+n` -/
def P880613249531740876.Spec : Prop :=
  ∀ n, (P880613249531740876.a n : ℤ) = A083220 n

theorem P880613249531740876.correct : P880613249531740876.Spec := by
  intro n
  simp only [A083220]

end A083220

/-! ## A083220.P12873375482723148078

`4+a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A083220.P12873375482723148078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n a =>
  4 + a (n - 4)

end

end A083220.P12873375482723148078

namespace A083220

/-- `4+a(n-4)` -/
def P12873375482723148078.Spec : Prop :=
  ∀ n, (P12873375482723148078.a n : ℤ) = A083220 n

end A083220

/-! ## A083220.P18108714366797664001

`2*A083219(n)`
-/

namespace A083220.P18108714366797664001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083219 n

end

end A083220.P18108714366797664001

namespace A083220

/-- `2*A083219(n)` -/
def P18108714366797664001.Spec : Prop :=
  ∀ n, P18108714366797664001.a n = A083220 n

end A083220

/-! ## A083220.P6526315999455463559

`and(3, n)+n`
-/

namespace A083220.P6526315999455463559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n + n

end

end A083220.P6526315999455463559

namespace A083220

/-- `and(3, n)+n` -/
def P6526315999455463559.Spec : Prop :=
  ∀ n, (P6526315999455463559.a n : ℤ) = A083220 n

end A083220

/-! ## A083220.P10776135633887233776

`n--n%4`
-/

namespace A083220.P10776135633887233776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (-(n : ℤ)) 4

end

end A083220.P10776135633887233776

namespace A083220

/-- `n--n%4` -/
def P10776135633887233776.Spec : Prop :=
  ∀ n, P10776135633887233776.a n = A083220 n

end A083220

/-! ## A083220.P17741093197235183257

`2*n-and(n, -4)`
-/

namespace A083220.P17741093197235183257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.land (n : ℤ) (-4)

end

end A083220.P17741093197235183257

namespace A083220

/-- `2*n-and(n, -4)` -/
def P17741093197235183257.Spec : Prop :=
  ∀ n, P17741093197235183257.a n = A083220 n

end A083220

/-! ## A083220.P6192240671750957112

`or(n, -4)+4+n`
-/

namespace A083220.P6192240671750957112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-4) + 4 + (n : ℤ)

end

end A083220.P6192240671750957112

namespace A083220

/-- `or(n, -4)+4+n` -/
def P6192240671750957112.Spec : Prop :=
  ∀ n, P6192240671750957112.a n = A083220 n

end A083220

/-! ## A083220.P11582991785388120942

`3*n-comp[or(4, n)]`
-/

namespace A083220.P11582991785388120942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A083220.P11582991785388120942

namespace A083220

/-- `3*n-comp[or(4, n)]` -/
def P11582991785388120942.Spec : Prop :=
  ∀ n, P11582991785388120942.a n = A083220 n

end A083220

/-! ## A083220.P4138646825021480810

`n-(and(n, -4)-n)`
-/

namespace A083220.P4138646825021480810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.land (n : ℤ) (-4) - (n : ℤ))

end

end A083220.P4138646825021480810

namespace A083220

/-- `n-(and(n, -4)-n)` -/
def P4138646825021480810.Spec : Prop :=
  ∀ n, P4138646825021480810.a n = A083220 n

end A083220

/-! ## A083220.P2141938322301377583

`2*n+3-or(3, n)`
-/

namespace A083220.P2141938322301377583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - (Nat.lor 3 n : ℤ))

end

end A083220.P2141938322301377583

namespace A083220

/-- `2*n+3-or(3, n)` -/
def P2141938322301377583.Spec : Prop :=
  ∀ n, P2141938322301377583.a n = A083220 n

end A083220

/-! ## A083220.P2858469520995603660

`2*n-(or(3, n)-3)`
-/

namespace A083220.P2858469520995603660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.lor 3 n : ℤ) - 3)

end

end A083220.P2858469520995603660

namespace A083220

/-- `2*n-(or(3, n)-3)` -/
def P2858469520995603660.Spec : Prop :=
  ∀ n, P2858469520995603660.a n = A083220 n

end A083220

/-! ## A083220.P4808640436791843097

`or(2, n+2)-gcd(2, n)`
-/

namespace A083220.P4808640436791843097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 2) : ℤ) - (Nat.gcd 2 n : ℤ)

end

end A083220.P4808640436791843097

namespace A083220

/-- `or(2, n+2)-gcd(2, n)` -/
def P4808640436791843097.Spec : Prop :=
  ∀ n, P4808640436791843097.a n = A083220 n

end A083220

/-! ## A083220.P8646570915752556697

`n-or(3, n)+n+3`
-/

namespace A083220.P8646570915752556697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lor 3 n : ℤ) + (n + 3 : ℤ)

end

end A083220.P8646570915752556697

namespace A083220

/-- `n-or(3, n)+n+3` -/
def P8646570915752556697.Spec : Prop :=
  ∀ n, P8646570915752556697.a n = A083220 n

end A083220

/-! ## A083220.P17173909063584929607

`2*n-(n-and(3, n))`
-/

namespace A083220.P17173909063584929607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - (Nat.land 3 n : ℤ))

end

end A083220.P17173909063584929607

namespace A083220

/-- `2*n-(n-and(3, n))` -/
def P17173909063584929607.Spec : Prop :=
  ∀ n, P17173909063584929607.a n = A083220 n

end A083220

/-! ## A083220.P2179608958662638700

`n-1-or(3-n, -4)`
-/

namespace A083220.P2179608958662638700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.lor (3 - (n : ℤ)) (-4)

end

end A083220.P2179608958662638700

namespace A083220

/-- `n-1-or(3-n, -4)` -/
def P2179608958662638700.Spec : Prop :=
  ∀ n, P2179608958662638700.a n = A083220 n

end A083220

/-! ## A083220.P11898335646159042599

`2*(n-2*floor(n/4))`
-/

namespace A083220.P11898335646159042599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 2 * ⌊(n : ℚ) / 4⌋)

end

end A083220.P11898335646159042599

namespace A083220

/-- `2*(n-2*floor(n/4))` -/
def P11898335646159042599.Spec : Prop :=
  ∀ n, P11898335646159042599.a n = A083220 n

end A083220

/-! ## A083220.P1190128399266762192

`ceil((n+3)*n/or(3, n))`
-/

namespace A083220.P1190128399266762192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * ((n : ℚ) / (Nat.lor 3 n : ℚ))⌉

end

end A083220.P1190128399266762192

namespace A083220

/-- `ceil((n+3)*n/or(3, n))` -/
def P1190128399266762192.Spec : Prop :=
  ∀ n, P1190128399266762192.a n = A083220 n

end A083220

/-! ## A083220.P10589713372512628945

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A083220.P10589713372512628945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 2, -2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083220.P10589713372512628945

namespace A083220

/-- `∑[floor(a(n-4))]` -/
def P10589713372512628945.Spec : Prop :=
  ∀ n, P10589713372512628945.a n = A083220 n

end A083220

/-! ## A083220.P7243897633403985881

`∑[and(2, n)²-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A083220.P7243897633403985881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (Nat.land 2 n ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083220.P7243897633403985881

namespace A083220

/-- `∑[and(2, n)²-a(n-1)]` -/
def P7243897633403985881.Spec : Prop :=
  ∀ n, P7243897633403985881.a n = A083220 n

end A083220

/-! ## A083220.P5975553396116760062

`floor((n+1)*(n+2)/or(3, n))`
-/

namespace A083220.P5975553396116760062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((n + 2 : ℚ) / (Nat.lor 3 n : ℚ))⌋

end

end A083220.P5975553396116760062

namespace A083220

/-- `floor((n+1)*(n+2)/or(3, n))` -/
def P5975553396116760062.Spec : Prop :=
  ∀ n, P5975553396116760062.a n = A083220 n

end A083220

/-!
# A083221: Sieve of Eratosthenes arranged as an array and read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A083221, there is no canonical definition to state claims against.
-/

/-! ## A083221.P814841828269647313

`A083140(∑[char[∑[n]]]²-n+1)`
-/

namespace A083221.P814841828269647313
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A083221.P814841828269647313

/-! ## A083221.P5018356576202300778

`A083140(A061579(n)+2)%A006450(n+1)`
-/

namespace A083221.P5018356576202300778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083140 (A061579 n + 2).toNat) (A006450 (n + 1))

end

end A083221.P5018356576202300778

/-! ## A083221.P2975186079048594604

`A083140(A061579(n)+2)+C(n, A103206(n))`
-/

namespace A083221.P2975186079048594604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A061579 n + 2).toNat + (Nat.choose n (A103206 n).toNat : ℤ)

end

end A083221.P2975186079048594604

/-! ## A083221.P16550122099547141804

`A249741(n+1)+1`
-/

namespace A083221.P16550122099547141804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 (n + 1) + 1

end

end A083221.P16550122099547141804

/-! ## A083221.P9962593202473908767

`A020725(A249741(n+1))`
-/

namespace A083221.P9962593202473908767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A249741 (n + 1)).toNat

end

end A083221.P9962593202473908767

/-! ## A083221.P18094633098166065993

`A269172(A255127(A260738(A254100(n+2))))`
-/

namespace A083221.P18094633098166065993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A255127 (A260738 (A254100 (n + 2)).toNat).toNat).toNat

end

end A083221.P18094633098166065993

/-! ## A083221.P10703591234988464239

`A255408(A255127(n+2))`
-/

namespace A083221.P10703591234988464239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A255127 (n + 2)).toNat

end

end A083221.P10703591234988464239

/-! ## A083221.P9605719557601346976

`A255408(A260435(A255551(n+2)))`
-/

namespace A083221.P9605719557601346976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A260435 (A255551 (n + 2)).toNat).toNat

end

end A083221.P9605719557601346976

/-! ## A083221.P17946684908646649559

`A252753(A253551(n+1))`
-/

namespace A083221.P17946684908646649559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A253551 (n + 1)).toNat

end

end A083221.P17946684908646649559

/-! ## A083221.P993192628323136860

`A207801(A135764(n+1)+1)`
-/

namespace A083221.P993192628323136860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (A135764 (n + 1) + 1).toNat

end

end A083221.P993192628323136860

/-!
# A083222: a(n) = (4*5^n + (-5)^n)/5.

The programs for A083222, the canonical program `A083222.P13674719079561544464` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083222 has offset 0).

The definition of A083222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083222.P13674719079561544464

`(4*5^n+(-5)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083222

/-- `(4*5^n+(-5)^n)/5` -/
def P13674719079561544464.Spec : Prop :=
  ∀ n, P13674719079561544464.a n = (A083222 n : ℚ)

end A083222

/-! ## A083222.P14127828778467806728

`ogf((1+3x)/(1-25x^2))`
-/

namespace A083222.P14127828778467806728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -25] n

end

end A083222.P14127828778467806728

namespace A083222

/-- `ogf((1+3x)/(1-25x^2))` -/
def P14127828778467806728.Spec : Prop :=
  ∀ n, P14127828778467806728.a n = A083222 n

end A083222

/-! ## A083222.P2680057211370461521

`25*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A083222.P2680057211370461521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  25 * a (n - 2)

end

end A083222.P2680057211370461521

namespace A083222

/-- `25*a(n-2)` -/
def P2680057211370461521.Spec : Prop :=
  ∀ n, (P2680057211370461521.a n : ℤ) = A083222 n

end A083222

/-! ## A083222.P5948197961565354135

`(5^floor(n/2))²*3^(n%2)`
-/

namespace A083222.P5948197961565354135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 2 * (3 ^ (n % 2) : ℚ)

end

end A083222.P5948197961565354135

namespace A083222

/-- `(5^floor(n/2))²*3^(n%2)` -/
def P5948197961565354135.Spec : Prop :=
  ∀ n, P5948197961565354135.a n = (A083222 n : ℚ)

end A083222

/-! ## A083222.P1786867547290620135

`(A033999(n)+4)*5^(n-1)`
-/

namespace A083222.P1786867547290620135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 n + 4 : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083222.P1786867547290620135

namespace A083222

/-- `(A033999(n)+4)*5^(n-1)` -/
def P1786867547290620135.Spec : Prop :=
  ∀ n, P1786867547290620135.a n = (A083222 n : ℚ)

end A083222

/-! ## A083222.P10468863476589477042

`A181287(xor(1, n)+3*n)+1`
-/

namespace A083222.P10468863476589477042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181287 (Nat.xor 1 n + 3 * n) + 1

end

end A083222.P10468863476589477042

namespace A083222

/-- `A181287(xor(1, n)+3*n)+1` -/
def P10468863476589477042.Spec : Prop :=
  ∀ n, P10468863476589477042.a n = A083222 n

end A083222

/-! ## A083222.P10752094398117231963

`5^floor(n/2)*Δ[A026383(n)]`
-/

namespace A083222.P10752094398117231963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A083222.P10752094398117231963

namespace A083222

/-- `5^floor(n/2)*Δ[A026383(n)]` -/
def P10752094398117231963.Spec : Prop :=
  ∀ n, P10752094398117231963.a n = (A083222 n : ℚ)

end A083222

/-! ## A083222.P12345379938370161165

`A020699(n)+lcm(5^(n-1), a(n-1))` with `a(0)=1`
-/

namespace A083222.P12345379938370161165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020699 n + (Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1)) : ℤ)

end

end A083222.P12345379938370161165

namespace A083222

/-- `A020699(n)+lcm(5^(n-1), a(n-1))` -/
def P12345379938370161165.Spec : Prop :=
  ∀ n, P12345379938370161165.a n = A083222 n

end A083222

/-! ## A083222.P4935516947826349088

`A056487(A042948(n))`
-/

namespace A083222.P4935516947826349088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (A042948 n).toNat

end

end A083222.P4935516947826349088

namespace A083222

/-- `A056487(A042948(n))` -/
def P4935516947826349088.Spec : Prop :=
  ∀ n, P4935516947826349088.a n = A083222 n

end A083222

/-! ## A083222.P13709854813347043460

`A005517(A047241(n+1))`
-/

namespace A083222.P13709854813347043460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A047241 (n + 1)).toNat

end

end A083222.P13709854813347043460

namespace A083222

/-- `A005517(A047241(n+1))` -/
def P13709854813347043460.Spec : Prop :=
  ∀ n, P13709854813347043460.a n = A083222 n

end A083222

/-! ## A083222.P1493450661068842778

`A133335(A047238(n+1))`
-/

namespace A083222.P1493450661068842778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A047238 (n + 1)).toNat

end

end A083222.P1493450661068842778

namespace A083222

/-- `A133335(A047238(n+1))` -/
def P1493450661068842778.Spec : Prop :=
  ∀ n, P1493450661068842778.a n = A083222 n

end A083222

/-! ## A083222.P2513352843212327263

`A140730(A047467(n+1))`
-/

namespace A083222.P2513352843212327263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A047467 (n + 1)).toNat

end

end A083222.P2513352843212327263

namespace A083222

/-- `A140730(A047467(n+1))` -/
def P2513352843212327263.Spec : Prop :=
  ∀ n, P2513352843212327263.a n = A083222 n

end A083222

/-! ## A083222.P11022883879433172173

`A133335(2*A032766(n))`
-/

namespace A083222.P11022883879433172173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (2 * A032766 n).toNat

end

end A083222.P11022883879433172173

namespace A083222

/-- `A133335(2*A032766(n))` -/
def P11022883879433172173.Spec : Prop :=
  ∀ n, P11022883879433172173.a n = A083222 n

end A083222

/-! ## A083222.P17423405012323035564

`A140730(2*A042948(n))`
-/

namespace A083222.P17423405012323035564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (2 * A042948 n).toNat

end

end A083222.P17423405012323035564

namespace A083222

/-- `A140730(2*A042948(n))` -/
def P17423405012323035564.Spec : Prop :=
  ∀ n, P17423405012323035564.a n = A083222 n

end A083222

/-! ## A083222.P14482167411137351062

`A056487(A052928(n)+n)`
-/

namespace A083222.P14482167411137351062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (A052928 n + (n : ℤ)).toNat

end

end A083222.P14482167411137351062

namespace A083222

/-- `A056487(A052928(n)+n)` -/
def P14482167411137351062.Spec : Prop :=
  ∀ n, P14482167411137351062.a n = A083222 n

end A083222

/-! ## A083222.P12634459013678845628

`A056487(n)*A074872(n+1)`
-/

namespace A083222.P12634459013678845628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n * A074872 (n + 1)

end

end A083222.P12634459013678845628

namespace A083222

/-- `A056487(n)*A074872(n+1)` -/
def P12634459013678845628.Spec : Prop :=
  ∀ n, P12634459013678845628.a n = A083222 n

end A083222

/-! ## A083222.P12701370357491563150

`A074872(n+1)²*A010684(n)`
-/

namespace A083222.P12701370357491563150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) ^ 2 * A010684 n

end

end A083222.P12701370357491563150

namespace A083222

/-- `A074872(n+1)²*A010684(n)` -/
def P12701370357491563150.Spec : Prop :=
  ∀ n, P12701370357491563150.a n = A083222 n

end A083222

/-! ## A083222.P4579875145250732797

`A005517(lt[Δ[A002264(n)²], n%2])`
-/

namespace A083222.P4579875145250732797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A083222.P4579875145250732797

namespace A083222

/-- `A005517(lt[Δ[A002264(n)²], n%2])` -/
def P4579875145250732797.Spec : Prop :=
  ∀ n, P4579875145250732797.a n = A083222 n

end A083222

/-! ## A083222.P8006343136580374771

`(A010703(n)-2)*A074872(n+1)²`
-/

namespace A083222.P8006343136580374771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010703 n - 2) * A074872 (n + 1) ^ 2

end

end A083222.P8006343136580374771

namespace A083222

/-- `(A010703(n)-2)*A074872(n+1)²` -/
def P8006343136580374771.Spec : Prop :=
  ∀ n, P8006343136580374771.a n = A083222 n

end A083222

/-! ## A083222.P1065613533149521431

`A005517(A122461(2*n)+2*n+1)`
-/

namespace A083222.P1065613533149521431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A122461 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A083222.P1065613533149521431

namespace A083222

/-- `A005517(A122461(2*n)+2*n+1)` -/
def P1065613533149521431.Spec : Prop :=
  ∀ n, P1065613533149521431.a n = A083222 n

end A083222

/-!
# A083223: a(n) = (5*6^n+(-6)^n)/6.

The programs for A083223, the canonical program `A083223.P15146170977237200127` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083223 has offset 0).

The definition of A083223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*6^n+(-6)^n)/6` (program `A083223.P5266784357355686807`, by `A083223.P5266784357355686807.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083223.P15146170977237200127

`36*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083223

/-- `36*a(n-2)` -/
def P15146170977237200127.Spec : Prop :=
  ∀ n, (P15146170977237200127.a n : ℤ) = A083223 n

theorem P15146170977237200127.correct : P15146170977237200127.Spec := by
  intro n
  simp only [A083223]

end A083223

/-! ## A083223.P5266784357355686807

`(5*6^n+(-6)^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083223.P5266784357355686807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 6 ^ n : ℤ) + (-6) ^ n : ℚ) / 6

end

end A083223.P5266784357355686807

namespace A083223

/-- `(5*6^n+(-6)^n)/6` -/
def P5266784357355686807.Spec : Prop :=
  ∀ n, P5266784357355686807.a n = (A083223 n : ℚ)

theorem P5266784357355686807.correct : P5266784357355686807.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083223, Nat.add_sub_cancel, A083223.P5266784357355686807.a, A083223.P15146170977237200127.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A083223, Nat.add_sub_cancel, A083223.P5266784357355686807.a, A083223.P15146170977237200127.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083223

/-! ## A083223.P5482458050529850763

`∏[abs(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A083223.P5482458050529850763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P5482458050529850763

namespace A083223

/-- `∏[abs(a(n-2))]` -/
def P5482458050529850763.Spec : Prop :=
  ∀ n, (P5482458050529850763.a n : ℤ) = A083223 n

end A083223

/-! ## A083223.P9082008778490343201

`∏[dr(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A083223.P9082008778490343201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P9082008778490343201

namespace A083223

/-- `∏[dr(a(n-2))]` -/
def P9082008778490343201.Spec : Prop :=
  ∀ n, (P9082008778490343201.a n : ℤ) = A083223 n

end A083223

/-! ## A083223.P14200105037593127507

`∏[floor(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A083223.P14200105037593127507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P14200105037593127507

namespace A083223

/-- `∏[floor(a(n-2))]` -/
def P14200105037593127507.Spec : Prop :=
  ∀ n, (P14200105037593127507.a n : ℤ) = A083223 n

end A083223

/-! ## A083223.P6631386457205294839

`∏[ceil(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A083223.P6631386457205294839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P6631386457205294839

namespace A083223

/-- `∏[ceil(a(n-2))]` -/
def P6631386457205294839.Spec : Prop :=
  ∀ n, (P6631386457205294839.a n : ℤ) = A083223 n

end A083223

/-! ## A083223.P10732053856458821122

`∏[round(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=9`

`round` is left out, it is the identity on integers.
-/

namespace A083223.P10732053856458821122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P10732053856458821122

namespace A083223

/-- `∏[round(a(n-2))]` -/
def P10732053856458821122.Spec : Prop :=
  ∀ n, (P10732053856458821122.a n : ℤ) = A083223 n

end A083223

/-! ## A083223.P9435885164590628410

`∏[((n-1)%2+2)²]`
-/

namespace A083223.P9435885164590628410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 2 + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P9435885164590628410

namespace A083223

/-- `∏[((n-1)%2+2)²]` -/
def P9435885164590628410.Spec : Prop :=
  ∀ n, P9435885164590628410.a n = A083223 n

end A083223

/-! ## A083223.P493288795797239697

`∏[(or(2, n-1)%4)²]`
-/

namespace A083223.P493288795797239697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 2 ((n : ℤ) - 1)) 4 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P493288795797239697

namespace A083223

/-- `∏[(or(2, n-1)%4)²]` -/
def P493288795797239697.Spec : Prop :=
  ∀ n, P493288795797239697.a n = A083223 n

end A083223

/-! ## A083223.P7048146368019955076

`∏[a(n-2)%10]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A083223.P7048146368019955076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  f1 (n - 2) % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P7048146368019955076

namespace A083223

/-- `∏[a(n-2)%10]` -/
def P7048146368019955076.Spec : Prop :=
  ∀ n, (P7048146368019955076.a n : ℤ) = A083223 n

end A083223

/-! ## A083223.P7997219659504969842

`∏[5-a(n-1)]²` with `a(0)=1, a(1)=2`
-/

namespace A083223.P7997219659504969842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A083223.P7997219659504969842

namespace A083223

/-- `∏[5-a(n-1)]²` -/
def P7997219659504969842.Spec : Prop :=
  ∀ n, P7997219659504969842.a n = A083223 n

end A083223

/-! ## A083223.P15430882144295986964

`A026549(n)²`
-/

namespace A083223.P15430882144295986964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n ^ 2

end

end A083223.P15430882144295986964

namespace A083223

/-- `A026549(n)²` -/
def P15430882144295986964.Spec : Prop :=
  ∀ n, P15430882144295986964.a n = A083223 n

end A083223

/-! ## A083223.P4846043532540746403

`record[A100851(n)²]`
-/

namespace A083223.P4846043532540746403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083223.P4846043532540746403

namespace A083223

/-- `record[A100851(n)²]` -/
def P4846043532540746403.Spec : Prop :=
  ∀ n, P4846043532540746403.a n = A083223 n

end A083223

/-! ## A083223.P13651024020629025197

`∏[dr(A141056(n)²)]`
-/

namespace A083223.P13651024020629025197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A141056 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P13651024020629025197

namespace A083223

/-- `∏[dr(A141056(n)²)]` -/
def P13651024020629025197.Spec : Prop :=
  ∀ n, (P13651024020629025197.a n : ℤ) = A083223 n

end A083223

/-! ## A083223.P181175489604911999

`2^n*A083423(n)`
-/

namespace A083223.P181175489604911999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A083423 n

end

end A083223.P181175489604911999

namespace A083223

/-- `2^n*A083423(n)` -/
def P181175489604911999.Spec : Prop :=
  ∀ n, P181175489604911999.a n = A083223 n

end A083223

/-! ## A083223.P6046521171712968331

`∏[A158478(n+1)²]`
-/

namespace A083223.P6046521171712968331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P6046521171712968331

namespace A083223

/-- `∏[A158478(n+1)²]` -/
def P6046521171712968331.Spec : Prop :=
  ∀ n, P6046521171712968331.a n = A083223 n

end A083223

/-! ## A083223.P12675894971380948281

`∏[dr(2-A009946(n))]`
-/

namespace A083223.P12675894971380948281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - A009946 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P12675894971380948281

namespace A083223

/-- `∏[dr(2-A009946(n))]` -/
def P12675894971380948281.Spec : Prop :=
  ∀ n, (P12675894971380948281.a n : ℤ) = A083223 n

end A083223

/-! ## A083223.P365485870240384988

`∏[A088738(a(n-1))]` with `a(0)=1`
-/

namespace A083223.P365485870240384988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A088738 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P365485870240384988

namespace A083223

/-- `∏[A088738(a(n-1))]` -/
def P365485870240384988.Spec : Prop :=
  ∀ n, P365485870240384988.a n = A083223 n

end A083223

/-! ## A083223.P1475365434839305938

`∏[A088739(a(n-1))]` with `a(0)=1`
-/

namespace A083223.P1475365434839305938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A088739 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P1475365434839305938

namespace A083223

/-- `∏[A088739(a(n-1))]` -/
def P1475365434839305938.Spec : Prop :=
  ∀ n, P1475365434839305938.a n = A083223 n

end A083223

/-! ## A083223.P9166016302563429681

`∏[A088740(a(n-1))]` with `a(0)=1`
-/

namespace A083223.P9166016302563429681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A088740 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083223.P9166016302563429681

namespace A083223

/-- `∏[A088740(a(n-1))]` -/
def P9166016302563429681.Spec : Prop :=
  ∀ n, P9166016302563429681.a n = A083223 n

end A083223

/-!
# A083224: a(n) = (6*7^n + (-7)^n)/7.

The programs for A083224, the canonical program `A083224.P16572519125724174741` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083224 has offset 0).

The definition of A083224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083224.P16572519125724174741

`(6*7^n+(-7)^n)/7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083224

/-- `(6*7^n+(-7)^n)/7` -/
def P16572519125724174741.Spec : Prop :=
  ∀ n, P16572519125724174741.a n = (A083224 n : ℚ)

end A083224

/-! ## A083224.P2430923083210290450

`49*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A083224.P2430923083210290450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  49 * a (n - 2)

end

end A083224.P2430923083210290450

namespace A083224

/-- `49*a(n-2)` -/
def P2430923083210290450.Spec : Prop :=
  ∀ n, (P2430923083210290450.a n : ℤ) = A083224 n

end A083224

/-! ## A083224.P14372621243775959877

`Δ[A123752(n)]*A000420(A004526(n))`
-/

namespace A083224.P14372621243775959877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000420 (A004526 n).toNat

end

end A083224.P14372621243775959877

namespace A083224

/-- `Δ[A123752(n)]*A000420(A004526(n))` -/
def P14372621243775959877.Spec : Prop :=
  ∀ n, P14372621243775959877.a n = A083224 n

end A083224

/-! ## A083224.P16855951250938060222

`A125725(A004525(2*n+1))+A083076(n)`
-/

namespace A083224.P16855951250938060222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (A004525 (2 * n + 1)).toNat + A083076 n

end

end A083224.P16855951250938060222

namespace A083224

/-- `A125725(A004525(2*n+1))+A083076(n)` -/
def P16855951250938060222.Spec : Prop :=
  ∀ n, P16855951250938060222.a n = A083224 n

end A083224

/-! ## A083224.P10133284540803258264

`A245479(4*n+2)-A245479(2*n+1)²`
-/

namespace A083224.P10133284540803258264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (4 * n + 2) - A245479 (2 * n + 1) ^ 2

end

end A083224.P10133284540803258264

namespace A083224

/-- `A245479(4*n+2)-A245479(2*n+1)²` -/
def P10133284540803258264.Spec : Prop :=
  ∀ n, P10133284540803258264.a n = A083224 n

end A083224

/-! ## A083224.P3334826788520648427

`record[A038271(n)/A130595(n)]`
-/

namespace A083224.P3334826788520648427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038271 n : ℚ) / (A130595 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083224.P3334826788520648427

namespace A083224

/-- `record[A038271(n)/A130595(n)]` -/
def P3334826788520648427.Spec : Prop :=
  ∀ n, P3334826788520648427.a n = (A083224 n : ℚ)

end A083224

/-!
# A083225: a(n) = (7*8^n + (-8)^n)/8.

The programs for A083225, the canonical program `A083225.P12235598069356646483` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083225 has offset 0).

The definition of A083225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*8^n+(-8)^n)/8` (program `A083225.P12309257155779837299`, by `A083225.P12309257155779837299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083225.P12235598069356646483

`64*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083225

/-- `64*a(n-2)` -/
def P12235598069356646483.Spec : Prop :=
  ∀ n, (P12235598069356646483.a n : ℤ) = A083225 n

theorem P12235598069356646483.correct : P12235598069356646483.Spec := by
  intro n
  simp only [A083225]

end A083225

/-! ## A083225.P12309257155779837299

`(7*8^n+(-8)^n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083225.P12309257155779837299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 8 ^ n : ℤ) + (-8) ^ n : ℚ) / 8

end

end A083225.P12309257155779837299

namespace A083225

/-- `(7*8^n+(-8)^n)/8` -/
def P12309257155779837299.Spec : Prop :=
  ∀ n, P12309257155779837299.a n = (A083225 n : ℚ)

theorem P12309257155779837299.correct : P12309257155779837299.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083225, Nat.add_sub_cancel, A083225.P12309257155779837299.a, A083225.P12235598069356646483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A083225, Nat.add_sub_cancel, A083225.P12309257155779837299.a, A083225.P12235598069356646483.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083225

/-! ## A083225.P7989153032321698577

`(gcd(2, n)/2+1)/2*8^n`
-/

namespace A083225.P7989153032321698577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n : ℚ) / 2 + 1) / 2 * (8 ^ n : ℚ)

end

end A083225.P7989153032321698577

namespace A083225

/-- `(gcd(2, n)/2+1)/2*8^n` -/
def P7989153032321698577.Spec : Prop :=
  ∀ n, P7989153032321698577.a n = (A083225 n : ℚ)

end A083225

/-! ## A083225.P14976553481488943172

`round(A284354(3*n)/2)`
-/

namespace A083225.P14976553481488943172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284354 (3 * n) : ℚ) / 2)

end

end A083225.P14976553481488943172

namespace A083225

/-- `round(A284354(3*n)/2)` -/
def P14976553481488943172.Spec : Prop :=
  ∀ n, P14976553481488943172.a n = A083225 n

end A083225

/-! ## A083225.P8577537965262312390

`A133572(A008486(n))`
-/

namespace A083225.P8577537965262312390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133572 (A008486 n).toNat

end

end A083225.P8577537965262312390

namespace A083225

/-- `A133572(A008486(n))` -/
def P8577537965262312390.Spec : Prop :=
  ∀ n, P8577537965262312390.a n = A083225 n

end A083225

/-! ## A083225.P16447712995296292762

`A081631(A047225(n+1))`
-/

namespace A083225.P16447712995296292762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 (A047225 (n + 1)).toNat

end

end A083225.P16447712995296292762

namespace A083225

/-- `A081631(A047225(n+1))` -/
def P16447712995296292762.Spec : Prop :=
  ∀ n, P16447712995296292762.a n = A083225 n

end A083225

/-! ## A083225.P13812312092099160239

`A164640(A042963(n+1))`
-/

namespace A083225.P13812312092099160239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164640 (A042963 (n + 1)).toNat

end

end A083225.P13812312092099160239

namespace A083225

/-- `A164640(A042963(n+1))` -/
def P13812312092099160239.Spec : Prop :=
  ∀ n, P13812312092099160239.a n = A083225 n

end A083225

/-! ## A083225.P16287932062543916807

`A074323(A228137(n+1))`
-/

namespace A083225.P16287932062543916807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A228137 (n + 1)).toNat

end

end A083225.P16287932062543916807

namespace A083225

/-- `A074323(A228137(n+1))` -/
def P16287932062543916807.Spec : Prop :=
  ∀ n, P16287932062543916807.a n = A083225 n

end A083225

/-! ## A083225.P15429025498963596019

`A213173(n)*A266180(n)`
-/

namespace A083225.P15429025498963596019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n * A266180 n

end

end A083225.P15429025498963596019

namespace A083225

/-- `A213173(n)*A266180(n)` -/
def P15429025498963596019.Spec : Prop :=
  ∀ n, P15429025498963596019.a n = A083225 n

end A083225

/-! ## A083225.P65895756625147983

`A081631(2*A042948(n)-n)`
-/

namespace A083225.P65895756625147983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 (2 * A042948 n - (n : ℤ)).toNat

end

end A083225.P65895756625147983

namespace A083225

/-- `A081631(2*A042948(n)-n)` -/
def P65895756625147983.Spec : Prop :=
  ∀ n, P65895756625147983.a n = A083225 n

end A083225

/-! ## A083225.P11954987505827533687

`A016116(n)²²*A081631(n)`
-/

namespace A083225.P11954987505827533687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016116 n ^ 2) ^ 2 * A081631 n

end

end A083225.P11954987505827533687

namespace A083225

/-- `A016116(n)²²*A081631(n)` -/
def P11954987505827533687.Spec : Prop :=
  ∀ n, P11954987505827533687.a n = A083225 n

end A083225

/-! ## A083225.P5130766708426155952

`∩[A025627(n+1), A133572(n+1)]`
-/

namespace A083225.P5130766708426155952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083225.P5130766708426155952

namespace A083225

/-- `∩[A025627(n+1), A133572(n+1)]` -/
def P5130766708426155952.Spec : Prop :=
  ∀ n, (P5130766708426155952.a n : ℤ) = A083225 n

end A083225

/-! ## A083225.P15486373726497420041

`∩[A133572(n+1), A164640(n+1)]`
-/

namespace A083225.P15486373726497420041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083225.P15486373726497420041

namespace A083225

/-- `∩[A133572(n+1), A164640(n+1)]` -/
def P15486373726497420041.Spec : Prop :=
  ∀ n, (P15486373726497420041.a n : ℤ) = A083225 n

end A083225

/-! ## A083225.P4447922957894661154

`A000079(n)²/2*A134683(n+1)`
-/

namespace A083225.P4447922957894661154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / 2 * (A134683 (n + 1) : ℚ)

end

end A083225.P4447922957894661154

namespace A083225

/-- `A000079(n)²/2*A134683(n+1)` -/
def P4447922957894661154.Spec : Prop :=
  ∀ n, P4447922957894661154.a n = (A083225 n : ℚ)

end A083225

/-! ## A083225.P17399150444887203713

`A000079(2*n)/2*A134683(n+1)`
-/

namespace A083225.P17399150444887203713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) : ℚ) / 2 * (A134683 (n + 1) : ℚ)

end

end A083225.P17399150444887203713

namespace A083225

/-- `A000079(2*n)/2*A134683(n+1)` -/
def P17399150444887203713.Spec : Prop :=
  ∀ n, P17399150444887203713.a n = (A083225 n : ℚ)

end A083225

/-! ## A083225.P4166968513812216493

`A084221(2*n)/2*A134683(n+1)`
-/

namespace A083225.P4166968513812216493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084221 (2 * n) : ℚ) / 2 * (A134683 (n + 1) : ℚ)

end

end A083225.P4166968513812216493

namespace A083225

/-- `A084221(2*n)/2*A134683(n+1)` -/
def P4166968513812216493.Spec : Prop :=
  ∀ n, P4166968513812216493.a n = (A083225 n : ℚ)

end A083225

/-! ## A083225.P4512184231295768784

`A131577(n+1)²/2*A134683(n+1)`
-/

namespace A083225.P4512184231295768784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) ^ 2 : ℚ) / 2 * (A134683 (n + 1) : ℚ)

end

end A083225.P4512184231295768784

namespace A083225

/-- `A131577(n+1)²/2*A134683(n+1)` -/
def P4512184231295768784.Spec : Prop :=
  ∀ n, P4512184231295768784.a n = (A083225 n : ℚ)

end A083225

/-! ## A083225.P5450825171106093169

`A131577(2*n+1)/2*A134683(n+1)`
-/

namespace A083225.P5450825171106093169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (2 * n + 1) : ℚ) / 2 * (A134683 (n + 1) : ℚ)

end

end A083225.P5450825171106093169

namespace A083225

/-- `A131577(2*n+1)/2*A134683(n+1)` -/
def P5450825171106093169.Spec : Prop :=
  ∀ n, P5450825171106093169.a n = (A083225 n : ℚ)

end A083225

/-! ## A083225.P8553238881479448138

`abs(A138377(2*n+1))*record[A138377(n+1)]`
-/

namespace A083225.P8553238881479448138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138377 (2 * n + 1)| * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083225.P8553238881479448138

namespace A083225

/-- `abs(A138377(2*n+1))*record[A138377(n+1)]` -/
def P8553238881479448138.Spec : Prop :=
  ∀ n, P8553238881479448138.a n = A083225 n

end A083225

/-! ## A083225.P3927787020838503666

`A081631(A042948(n)+A042948(n)-n)`
-/

namespace A083225.P3927787020838503666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 (A042948 n + (A042948 n - (n : ℤ))).toNat

end

end A083225.P3927787020838503666

namespace A083225

/-- `A081631(A042948(n)+A042948(n)-n)` -/
def P3927787020838503666.Spec : Prop :=
  ∀ n, P3927787020838503666.a n = A083225 n

end A083225

/-!
# A083226: a(n) = (8*9^n + (-9)^n)/9.

The programs for A083226, the canonical program `A083226.P8025121165493987399` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083226 has offset 0).

The definition of A083226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*9^n+(-9)^n)/9` (program `A083226.P14381251654365558289`, by `A083226.P14381251654365558289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083226.P8025121165493987399

`81*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083226

/-- `81*a(n-2)` -/
def P8025121165493987399.Spec : Prop :=
  ∀ n, (P8025121165493987399.a n : ℤ) = A083226 n

theorem P8025121165493987399.correct : P8025121165493987399.Spec := by
  intro n
  simp only [A083226]

end A083226

/-! ## A083226.P14381251654365558289

`(8*9^n+(-9)^n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083226.P14381251654365558289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 9 ^ n : ℤ) + (-9) ^ n : ℚ) / 9

end

end A083226.P14381251654365558289

namespace A083226

/-- `(8*9^n+(-9)^n)/9` -/
def P14381251654365558289.Spec : Prop :=
  ∀ n, P14381251654365558289.a n = (A083226 n : ℚ)

theorem P14381251654365558289.correct : P14381251654365558289.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083226, Nat.add_sub_cancel, A083226.P14381251654365558289.a, A083226.P8025121165493987399.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A083226, Nat.add_sub_cancel, A083226.P14381251654365558289.a, A083226.P8025121165493987399.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083226

/-! ## A083226.P13754270115578701731

`∏[81/a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A083226.P13754270115578701731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  81 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083226.P13754270115578701731

namespace A083226

/-- `∏[81/a(n-1)]` -/
def P13754270115578701731.Spec : Prop :=
  ∀ n, P13754270115578701731.a n = (A083226 n : ℚ)

end A083226

/-! ## A083226.P13268495898091528510

`A166481(A047468(n+1))`
-/

namespace A083226.P13268495898091528510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (A047468 (n + 1)).toNat

end

end A083226.P13268495898091528510

namespace A083226

/-- `A166481(A047468(n+1))` -/
def P13268495898091528510.Spec : Prop :=
  ∀ n, P13268495898091528510.a n = A083226 n

end A083226

/-! ## A083226.P14616614900746286794

`A166481(A047393(n+1)+1)`
-/

namespace A083226.P14616614900746286794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (A047393 (n + 1) + 1).toNat

end

end A083226.P14616614900746286794

namespace A083226

/-- `A166481(A047393(n+1)+1)` -/
def P14616614900746286794.Spec : Prop :=
  ∀ n, P14616614900746286794.a n = A083226 n

end A083226

/-! ## A083226.P10215574577571713972

`A108411(n)²²*A010688(n)`
-/

namespace A083226.P10215574577571713972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108411 n ^ 2) ^ 2 * A010688 n

end

end A083226.P10215574577571713972

namespace A083226

/-- `A108411(n)²²*A010688(n)` -/
def P10215574577571713972.Spec : Prop :=
  ∀ n, P10215574577571713972.a n = A083226 n

end A083226

/-! ## A083226.P3971097421405064429

`A135765(xor(1, A014106(n)))`
-/

namespace A083226.P3971097421405064429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135765 (Int.xor 1 (A014106 n)).toNat

end

end A083226.P3971097421405064429

namespace A083226

/-- `A135765(xor(1, A014106(n)))` -/
def P3971097421405064429.Spec : Prop :=
  ∀ n, P3971097421405064429.a n = A083226 n

end A083226

/-!
# A083227: a(n) = (9*10^n + (-10)^n)/10.

The programs for A083227, the canonical program `A083227.P14725429074094142636` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083227 has offset 0).

The definition of A083227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083227.P14725429074094142636

`(9*10^n+(-10)^n)/10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083227

/-- `(9*10^n+(-10)^n)/10` -/
def P14725429074094142636.Spec : Prop :=
  ∀ n, P14725429074094142636.a n = (A083227 n : ℚ)

end A083227

/-! ## A083227.P16493298939197958148

`a(n-2)*100` with `a(0)=1, a(1)=8`
-/

namespace A083227.P16493298939197958148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) * 100

end

end A083227.P16493298939197958148

namespace A083227

/-- `a(n-2)*100` -/
def P16493298939197958148.Spec : Prop :=
  ∀ n, (P16493298939197958148.a n : ℤ) = A083227 n

end A083227

/-! ## A083227.P1238979951525094843

`4/(A010693(n)+2)*10^n`
-/

namespace A083227.P1238979951525094843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A010693 n + 2 : ℚ) * (10 ^ n : ℚ)

end

end A083227.P1238979951525094843

namespace A083227

/-- `4/(A010693(n)+2)*10^n` -/
def P1238979951525094843.Spec : Prop :=
  ∀ n, P1238979951525094843.a n = (A083227 n : ℚ)

end A083227

/-! ## A083227.P9532540610712256145

`A004655(A047470(n+1))`
-/

namespace A083227.P9532540610712256145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (A047470 (n + 1)).toNat

end

end A083227.P9532540610712256145

namespace A083227

/-- `A004655(A047470(n+1))` -/
def P9532540610712256145.Spec : Prop :=
  ∀ n, P9532540610712256145.a n = A083227 n

end A083227

/-! ## A083227.P11260206936367201046

`A004643(n)²*A000034(n)`
-/

namespace A083227.P11260206936367201046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 n ^ 2 * A000034 n

end

end A083227.P11260206936367201046

namespace A083227

/-- `A004643(n)²*A000034(n)` -/
def P11260206936367201046.Spec : Prop :=
  ∀ n, P11260206936367201046.a n = A083227 n

end A083227

/-! ## A083227.P12706836980759627709

`A026383(n)²*A000079(n)`
-/

namespace A083227.P12706836980759627709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n ^ 2 * A000079 n

end

end A083227.P12706836980759627709

namespace A083227

/-- `A026383(n)²*A000079(n)` -/
def P12706836980759627709.Spec : Prop :=
  ∀ n, P12706836980759627709.a n = A083227 n

end A083227

/-! ## A083227.P2581825487088322410

`A004643(n)*A004655(2*n)`
-/

namespace A083227.P2581825487088322410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 n * A004655 (2 * n)

end

end A083227.P2581825487088322410

namespace A083227

/-- `A004643(n)*A004655(2*n)` -/
def P2581825487088322410.Spec : Prop :=
  ∀ n, P2581825487088322410.a n = A083227 n

end A083227

/-! ## A083227.P5287830204358960245

`(A000035(n)+1)*A004643(n)²`
-/

namespace A083227.P5287830204358960245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A004643 n ^ 2

end

end A083227.P5287830204358960245

namespace A083227

/-- `(A000035(n)+1)*A004643(n)²` -/
def P5287830204358960245.Spec : Prop :=
  ∀ n, P5287830204358960245.a n = A083227 n

end A083227

/-! ## A083227.P11892400422386132380

`A026383(n)²*A016116(2*n)`
-/

namespace A083227.P11892400422386132380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n ^ 2 * A016116 (2 * n)

end

end A083227.P11892400422386132380

namespace A083227

/-- `A026383(n)²*A016116(2*n)` -/
def P11892400422386132380.Spec : Prop :=
  ∀ n, P11892400422386132380.a n = A083227 n

end A083227

/-! ## A083227.P17903565061983276649

`Δ[A178501(n)]-A165326(n)*A178501(n)`
-/

namespace A083227.P17903565061983276649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A165326 n * A178501 n

end

end A083227.P17903565061983276649

namespace A083227

/-- `Δ[A178501(n)]-A165326(n)*A178501(n)` -/
def P17903565061983276649.Spec : Prop :=
  ∀ n, P17903565061983276649.a n = A083227 n

end A083227

/-! ## A083227.P17537028093978662715

`2*A004663(n)²-A011557(n)`
-/

namespace A083227.P17537028093978662715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004663 n ^ 2 - A011557 n

end

end A083227.P17537028093978662715

namespace A083227

/-- `2*A004663(n)²-A011557(n)` -/
def P17537028093978662715.Spec : Prop :=
  ∀ n, P17537028093978662715.a n = A083227 n

end A083227

/-!
# A083228: A Jacobsthal related sequence.

The programs for A083228, the canonical program `A083228.P16210576374494080607` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083228 has offset 0).

The definition of A083228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083228.P5149302281536377825

`2^C(n+2, 2)/3-(-1)^C(n+2, 2)/3`
-/

namespace A083228.P5149302281536377825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose (n + 2) 2 : ℚ) / 3 - ((-1) ^ Nat.choose (n + 2) 2 : ℚ) / 3

end

end A083228.P5149302281536377825

namespace A083228

/-- `2^C(n+2, 2)/3-(-1)^C(n+2, 2)/3` -/
def P5149302281536377825.Spec : Prop :=
  ∀ n, P5149302281536377825.a n = (A083228 n : ℚ)

end A083228

/-! ## A083228.P16210576374494080607

`A001045(C(n+2, 2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083228

/-- `A001045(C(n+2, 2))` -/
def P16210576374494080607.Spec : Prop :=
  ∀ n, P16210576374494080607.a n = A083228 n

theorem P16210576374494080607.correct : P16210576374494080607.Spec := by
  intro n
  simp only [A083228]

end A083228

/-! ## A083228.P2804022361066640170

`round(2^∑[n+1]/3)`
-/

namespace A083228.P2804022361066640170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3)

end

end A083228.P2804022361066640170

namespace A083228

/-- `round(2^∑[n+1]/3)` -/
def P2804022361066640170.Spec : Prop :=
  ∀ n, P2804022361066640170.a n = A083228 n

end A083228

/-! ## A083228.P5827023434337289031

`A001045(∑[n+1])`
-/

namespace A083228.P5827023434337289031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083228.P5827023434337289031

namespace A083228

/-- `A001045(∑[n+1])` -/
def P5827023434337289031.Spec : Prop :=
  ∀ n, P5827023434337289031.a n = A083228 n

end A083228

/-! ## A083228.P4623033941156961202

`A024494(∑[n+1])`
-/

namespace A083228.P4623033941156961202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083228.P4623033941156961202

namespace A083228

/-- `A024494(∑[n+1])` -/
def P4623033941156961202.Spec : Prop :=
  ∀ n, P4623033941156961202.a n = A083228 n

end A083228

/-!
# A083229: a(n) = (3*3^n + (-5)^n)/4.

The programs for A083229, the canonical program `A083229.P5879408644206722627` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083229 has offset 0).

The definition of A083229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083229.P5879408644206722627

`(3*3^n+(-5)^n)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083229

/-- `(3*3^n+(-5)^n)/4` -/
def P5879408644206722627.Spec : Prop :=
  ∀ n, P5879408644206722627.a n = (A083229 n : ℚ)

end A083229

/-! ## A083229.P114105762387616593

`ogf((1+3x)/(1+2x-15x^2))`
-/

namespace A083229.P114105762387616593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 2, -15] n

end

end A083229.P114105762387616593

namespace A083229

/-- `ogf((1+3x)/(1+2x-15x^2))` -/
def P114105762387616593.Spec : Prop :=
  ∀ n, P114105762387616593.a n = A083229 n

end A083229

/-! ## A083229.P13539320386957388796

`Δ[3^n]-5*a(n-1)` with `a(0)=1`
-/

namespace A083229.P13539320386957388796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 5 * a (n - 1)

end

end A083229.P13539320386957388796

namespace A083229

/-- `Δ[3^n]-5*a(n-1)` -/
def P13539320386957388796.Spec : Prop :=
  ∀ n, P13539320386957388796.a n = A083229 n

end A083229

/-! ## A083229.P15136860142029618308

`15*a(n-2)-a(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A083229.P15136860142029618308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  15 * a (n - 2) - a (n - 1) - a (n - 1)

end

end A083229.P15136860142029618308

namespace A083229

/-- `15*a(n-2)-a(n-1)-a(n-1)` -/
def P15136860142029618308.Spec : Prop :=
  ∀ n, P15136860142029618308.a n = A083229 n

end A083229

/-! ## A083229.P14079040475545600201

`A115099(n)-(5*a(n-1)+2)` with `a(0)=1`
-/

namespace A083229.P14079040475545600201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115099 n - (5 * a (n - 1) + 2)

end

end A083229.P14079040475545600201

namespace A083229

/-- `A115099(n)-(5*a(n-1)+2)` -/
def P14079040475545600201.Spec : Prop :=
  ∀ n, P14079040475545600201.a n = A083229 n

end A083229

/-! ## A083229.P14589420700295737598

`A000244(n)+A000244(n)-5*a(n-1)` with `a(0)=1`
-/

namespace A083229.P14589420700295737598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000244 n + (A000244 n - 5 * a (n - 1))

end

end A083229.P14589420700295737598

namespace A083229

/-- `A000244(n)+A000244(n)-5*a(n-1)` -/
def P14589420700295737598.Spec : Prop :=
  ∀ n, P14589420700295737598.a n = A083229 n

end A083229

/-!
# A083230: Number of repunit divisors of n.

The programs for A083230, there is no canonical definition to state claims against.
-/

/-! ## A083230.P17058288783998693075

`A114976(gcd(A048058(n), A067080(n+1)))`
-/

namespace A083230.P17058288783998693075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114976 (Int.gcd (A048058 n) (A067080 (n + 1)))

end

end A083230.P17058288783998693075

/-! ## A083230.P11922627972868194970

`gcd(2*(-1)^n, A020703(A044333(n+1)))`
-/

namespace A083230.P11922627972868194970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (-1) ^ n) (A020703 (A044333 (n + 1)).toNat)

end

end A083230.P11922627972868194970

/-! ## A083230.P6765615686671393967

`A182447(Δ[A206245(n)])!`
-/

namespace A083230.P6765615686671393967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A182447 (f1 (n + 1) - f1 n).toNat).toNat

end

end A083230.P6765615686671393967

/-! ## A083230.P6478186575937405130

`A106583(val(n+1, A069358(a(n-1)+1))^n)` with `a(0)=1`
-/

namespace A083230.P6478186575937405130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106583 (SequenceMachineLib.valuation (n + 1) (A069358 (a (n - 1) + 1).toNat).toNat ^ n)

end

end A083230.P6478186575937405130

/-! ## A083230.P5030482236662741682

`A304181(val(n+1, A069358(a(n-1)+1))^n+1)` with `a(0)=1`
-/

namespace A083230.P5030482236662741682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304181 (SequenceMachineLib.valuation (n + 1) (A069358 (a (n - 1) + 1).toNat).toNat ^ n + 1)

end

end A083230.P5030482236662741682

/-! ## A083230.P13984994977395569633

`A038901(A213217(n+1)+1)%3`
-/

namespace A083230.P13984994977395569633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038901 (A213217 (n + 1) + 1).toNat) 3

end

end A083230.P13984994977395569633

/-! ## A083230.P9303375412304093386

`A054977(A302389(n+1)*A321801(n+1))`
-/

namespace A083230.P9303375412304093386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A302389 (n + 1) * A321801 (n + 1)).toNat

end

end A083230.P9303375412304093386

/-! ## A083230.P1685794417522058177

`A054977(A053300(xor(1, n))*A321801(n+1))`
-/

namespace A083230.P1685794417522058177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A053300 (Nat.xor 1 n) * A321801 (n + 1)).toNat

end

end A083230.P1685794417522058177

/-! ## A083230.P8482314159834634233

`A036987((A000040(n+1)-A189084(n+1))*A321801(n+1))+1`
-/

namespace A083230.P8482314159834634233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 ((A000040 (n + 1) - A189084 (n + 1)) * A321801 (n + 1)).toNat + 1

end

end A083230.P8482314159834634233

/-! ## A083230.P8308164496567009253

`A270645(Δ[A044334(n+1)]²)`
-/

namespace A083230.P8308164496567009253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270645 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A083230.P8308164496567009253

/-! ## A083230.P16574474928996426640

`A178788((n+1)^A107846(n))+A107846(n+1)`
-/

namespace A083230.P16574474928996426640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A107846 n : ℤ))).toNat + A107846 (n + 1)

end

end A083230.P16574474928996426640

/-! ## A083230.P874778692533377693

`A000122(A321537(n+1)^4)`
-/

namespace A083230.P874778692533377693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A321537 (n + 1) ^ 4).toNat

end

end A083230.P874778692533377693

/-! ## A083230.P9094069938166162555

`A000034(A044721(n+1)-90)`
-/

namespace A083230.P9094069938166162555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A044721 (n + 1) - 90).toNat

end

end A083230.P9094069938166162555

/-! ## A083230.P4714662224973608960

`A000701(Δ[A107846(n)^n]+3)`
-/

namespace A083230.P4714662224973608960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (f1 (n + 1) - f1 n + 3).toNat

end

end A083230.P4714662224973608960

/-! ## A083230.P2831852982281808402

`A036453(A321804(A000265(n+1))²)`
-/

namespace A083230.P2831852982281808402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A321804 (A000265 (n + 1)).toNat ^ 2).toNat

end

end A083230.P2831852982281808402

/-! ## A083230.P7808526763370884910

`A110135(Δ[A064458(n)]%A186788(n+1))`
-/

namespace A083230.P7808526763370884910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110135 (Int.tmod (f1 (n + 1) - f1 n) (A186788 (n + 1))).toNat

end

end A083230.P7808526763370884910

/-! ## A083230.P17275735669059870800

`A014963(A051724(Δ[A033009(n+1)]))`
-/

namespace A083230.P17275735669059870800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051724 (f1 (n + 1) - f1 n).toNat).toNat

end

end A083230.P17275735669059870800

/-! ## A083230.P9072181438067441346

`A000030(A045918(n+1))`
-/

namespace A083230.P9072181438067441346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A045918 (n + 1)).toNat

end

end A083230.P9072181438067441346

/-! ## A083230.P12848378991040258186

`dr(A317371(A139337(n+1)))`
-/

namespace A083230.P12848378991040258186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A317371 (A139337 (n + 1)).toNat)

end

end A083230.P12848378991040258186

/-!
# A083231: a(n) = (3*5^n + (-3)^n)/4.

The programs for A083231, the canonical program `A083231.P16244384588450000514` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083231 has offset 0).

The definition of A083231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083231.P16244384588450000514

`(3*5^n+(-3)^n)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083231

/-- `(3*5^n+(-3)^n)/4` -/
def P16244384588450000514.Spec : Prop :=
  ∀ n, P16244384588450000514.a n = (A083231 n : ℚ)

end A083231

/-! ## A083231.P8101574810477553937

`ogf((1+x)/(1-2x-15x^2))`
-/

namespace A083231.P8101574810477553937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -15] n

end

end A083231.P8101574810477553937

namespace A083231

/-- `ogf((1+x)/(1-2x-15x^2))` -/
def P8101574810477553937.Spec : Prop :=
  ∀ n, P8101574810477553937.a n = A083231 n

end A083231

/-! ## A083231.P1039472533291976939

`5^n+5^(n-1)-3*a(n-1)` with `a(0)=1`
-/

namespace A083231.P1039472533291976939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℚ) + ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 3 * a (n - 1))

end

end A083231.P1039472533291976939

namespace A083231

/-- `5^n+5^(n-1)-3*a(n-1)` -/
def P1039472533291976939.Spec : Prop :=
  ∀ n, P1039472533291976939.a n = (A083231 n : ℚ)

end A083231

/-! ## A083231.P2719041474854631466

`3*(A020699(n)-a(n-1))` with `a(0)=1`
-/

namespace A083231.P2719041474854631466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (A020699 n - a (n - 1))

end

end A083231.P2719041474854631466

namespace A083231

/-- `3*(A020699(n)-a(n-1))` -/
def P2719041474854631466.Spec : Prop :=
  ∀ n, P2719041474854631466.a n = A083231 n

end A083231

/-! ## A083231.P13889713981267523532

`A083065(n)-A014983(n)`
-/

namespace A083231.P13889713981267523532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 n - A014983 n

end

end A083231.P13889713981267523532

namespace A083231

/-- `A083065(n)-A014983(n)` -/
def P13889713981267523532.Spec : Prop :=
  ∀ n, P13889713981267523532.a n = A083231 n

end A083231

/-! ## A083231.P5172024680775386683

`A079773(n+1)+A079773(n)`
-/

namespace A083231.P5172024680775386683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079773 (n + 1) + A079773 n

end

end A083231.P5172024680775386683

namespace A083231

/-- `A079773(n+1)+A079773(n)` -/
def P5172024680775386683.Spec : Prop :=
  ∀ n, P5172024680775386683.a n = A083231 n

end A083231

/-! ## A083231.P15879230465034963707

`A000351(n)-(A014983(n)+A003463(n))`
-/

namespace A083231.P15879230465034963707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - (A014983 n + A003463 n)

end

end A083231.P15879230465034963707

namespace A083231

/-- `A000351(n)-(A014983(n)+A003463(n))` -/
def P15879230465034963707.Spec : Prop :=
  ∀ n, P15879230465034963707.a n = A083231 n

end A083231

/-! ## A083231.P7633711104398484768

`A003463(n)+A034478(n)-A014983(n)`
-/

namespace A083231.P7633711104398484768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + (A034478 n - A014983 n)

end

end A083231.P7633711104398484768

namespace A083231

/-- `A003463(n)+A034478(n)-A014983(n)` -/
def P7633711104398484768.Spec : Prop :=
  ∀ n, P7633711104398484768.a n = A083231 n

end A083231

/-! ## A083231.P17373922715197792588

`∑[2*A120612(n)]-A120612(n)`
-/

namespace A083231.P17373922715197792588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A120612 n

end

end A083231.P17373922715197792588

namespace A083231

/-- `∑[2*A120612(n)]-A120612(n)` -/
def P17373922715197792588.Spec : Prop :=
  ∀ n, P17373922715197792588.a n = A083231 n

end A083231

/-!
# A083232: a(n) = (3*7^n+(-1)^n)/4.

The programs for A083232, the canonical program `A083232.P6313513059304398613` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083232 has offset 0).

The definition of A083232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083232.P6313513059304398613

`(3*7^n+(-1)^n)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083232

/-- `(3*7^n+(-1)^n)/4` -/
def P6313513059304398613.Spec : Prop :=
  ∀ n, P6313513059304398613.a n = (A083232 n : ℚ)

end A083232

/-! ## A083232.P7335256487846659742

`ogf((-1+x)/(-1+6x+7x^2))`
-/

namespace A083232.P7335256487846659742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, -7] n

end

end A083232.P7335256487846659742

namespace A083232

/-- `ogf((-1+x)/(-1+6x+7x^2))` -/
def P7335256487846659742.Spec : Prop :=
  ∀ n, P7335256487846659742.a n = A083232 n

end A083232

/-! ## A083232.P3248748520893126049

`Δ[xor(1, 7*a(n-1))]` with `a(0)=0`
-/

namespace A083232.P3248748520893126049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor 1 (7 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083232.P3248748520893126049

namespace A083232

/-- `Δ[xor(1, 7*a(n-1))]` -/
def P3248748520893126049.Spec : Prop :=
  ∀ n, P3248748520893126049.a n = A083232 n

end A083232

/-! ## A083232.P14799255366994956182

`Δ[xor(1, lcm(7, a(n-1)))]` with `a(0)=0`
-/

namespace A083232.P14799255366994956182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor 1 (Nat.lcm 7 (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083232.P14799255366994956182

namespace A083232

/-- `Δ[xor(1, lcm(7, a(n-1)))]` -/
def P14799255366994956182.Spec : Prop :=
  ∀ n, P14799255366994956182.a n = A083232 n

end A083232

/-! ## A083232.P11262467750152175262

`Δ[7^(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A083232.P11262467750152175262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083232.P11262467750152175262

namespace A083232

/-- `Δ[7^(n-1)-a(n-1)]` -/
def P11262467750152175262.Spec : Prop :=
  ∀ n, P11262467750152175262.a n = (A083232 n : ℚ)

end A083232

/-! ## A083232.P15546723005448014105

`6*7^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A083232.P15546723005448014105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A083232.P15546723005448014105

namespace A083232

/-- `6*7^(n-1)-a(n-1)` -/
def P15546723005448014105.Spec : Prop :=
  ∀ n, P15546723005448014105.a n = (A083232 n : ℚ)

end A083232

/-! ## A083232.P6876451188188907411

`6*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A083232.P6876451188188907411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * a (n - 1) + 7 * a (n - 2)

end

end A083232.P6876451188188907411

namespace A083232

/-- `6*a(n-1)+7*a(n-2)` -/
def P6876451188188907411.Spec : Prop :=
  ∀ n, (P6876451188188907411.a n : ℤ) = A083232 n

end A083232

/-! ## A083232.P13328096281877399288

`Δ[A015552(n)]`
-/

namespace A083232.P13328096281877399288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083232.P13328096281877399288

namespace A083232

/-- `Δ[A015552(n)]` -/
def P13328096281877399288.Spec : Prop :=
  ∀ n, P13328096281877399288.a n = A083232 n

end A083232

/-! ## A083232.P1037087829028899024

`or(1, A397936(n))`
-/

namespace A083232.P1037087829028899024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A397936 n)

end

end A083232.P1037087829028899024

namespace A083232

/-- `or(1, A397936(n))` -/
def P1037087829028899024.Spec : Prop :=
  ∀ n, P1037087829028899024.a n = A083232 n

end A083232

/-! ## A083232.P2465993590523014057

`floor(A199417(n)/2)`
-/

namespace A083232.P2465993590523014057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199417 n : ℚ) / 2⌋

end

end A083232.P2465993590523014057

namespace A083232

/-- `floor(A199417(n)/2)` -/
def P2465993590523014057.Spec : Prop :=
  ∀ n, P2465993590523014057.a n = A083232 n

end A083232

/-! ## A083232.P14497351835257936625

`A015552(n+1)-A015552(n)`
-/

namespace A083232.P14497351835257936625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1) - A015552 n

end

end A083232.P14497351835257936625

namespace A083232

/-- `A015552(n+1)-A015552(n)` -/
def P14497351835257936625.Spec : Prop :=
  ∀ n, P14497351835257936625.a n = A083232 n

end A083232

/-! ## A083232.P9894752058143393752

`round(A169634(n)/4)`
-/

namespace A083232.P9894752058143393752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A169634 n : ℚ) / 4)

end

end A083232.P9894752058143393752

namespace A083232

/-- `round(A169634(n)/4)` -/
def P9894752058143393752.Spec : Prop :=
  ∀ n, P9894752058143393752.a n = A083232 n

end A083232

/-! ## A083232.P16236168213226388022

`round(A198688(n)/8)`
-/

namespace A083232.P16236168213226388022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A198688 n : ℚ) / 8)

end

end A083232.P16236168213226388022

namespace A083232

/-- `round(A198688(n)/8)` -/
def P16236168213226388022.Spec : Prop :=
  ∀ n, P16236168213226388022.a n = A083232 n

end A083232

/-!
# A083233: a(n) = (3*8^n + 0^n)/4.

The programs for A083233, the canonical program `A083233.P16089140762988962246` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083233 has offset 0).

The definition of A083233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083233.P16089140762988962246

`(3*8^n+0^n)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083233

/-- `(3*8^n+0^n)/4` -/
def P16089140762988962246.Spec : Prop :=
  ∀ n, P16089140762988962246.a n = (A083233 n : ℚ)

end A083233

/-! ## A083233.P17324615982468426571

`ogf((1-2x)/(1-8x))`
-/

namespace A083233.P17324615982468426571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8] n

end

end A083233.P17324615982468426571

namespace A083233

/-- `ogf((1-2x)/(1-8x))` -/
def P17324615982468426571.Spec : Prop :=
  ∀ n, P17324615982468426571.a n = A083233 n

end A083233

/-! ## A083233.P15692485540546509869

`8*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A083233.P15692485540546509869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  8 * a (n - 1)

end

end A083233.P15692485540546509869

namespace A083233

/-- `8*a(n-1)` -/
def P15692485540546509869.Spec : Prop :=
  ∀ n, (P15692485540546509869.a n : ℤ) = A083233 n

end A083233

/-! ## A083233.P17778673868188258631

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=6, a(2)=8`
-/

namespace A083233.P17778673868188258631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A083233.P17778673868188258631

namespace A083233

/-- `abs(∏[-a(n-1)])` -/
def P17778673868188258631.Spec : Prop :=
  ∀ n, P17778673868188258631.a n = A083233 n

end A083233

/-! ## A083233.P1263872517807098254

`Δ[lcm(8, a(n-1)-1)]` with `a(0)=1, a(1)=2`
-/

namespace A083233.P1263872517807098254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Int.lcm 8 ((f1 (n - 1) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083233.P1263872517807098254

namespace A083233

/-- `Δ[lcm(8, a(n-1)-1)]` -/
def P1263872517807098254.Spec : Prop :=
  ∀ n, P1263872517807098254.a n = A083233 n

end A083233

/-! ## A083233.P16218400259213415757

`2^n*record[round(3*(-2)^(n-2))]`
-/

namespace A083233.P16218400259213415757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083233.P16218400259213415757

namespace A083233

/-- `2^n*record[round(3*(-2)^(n-2))]` -/
def P16218400259213415757.Spec : Prop :=
  ∀ n, P16218400259213415757.a n = A083233 n

end A083233

/-! ## A083233.P13330396223845455712

`and(-(n+1), 2^n)*Δ[floor(4^(n-1))]`
-/

namespace A083233.P13330396223845455712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A083233.P13330396223845455712

namespace A083233

/-- `and(-(n+1), 2^n)*Δ[floor(4^(n-1))]` -/
def P13330396223845455712.Spec : Prop :=
  ∀ n, P13330396223845455712.a n = A083233 n

end A083233

/-! ## A083233.P16049916209576694615

`A111286(3*n)`
-/

namespace A083233.P16049916209576694615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (3 * n)

end

end A083233.P16049916209576694615

namespace A083233

/-- `A111286(3*n)` -/
def P16049916209576694615.Spec : Prop :=
  ∀ n, P16049916209576694615.a n = A083233 n

end A083233

/-! ## A083233.P25502627724100173

`abs(A110164(3*n))`
-/

namespace A083233.P25502627724100173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110164 (3 * n)|

end

end A083233.P25502627724100173

namespace A083233

/-- `abs(A110164(3*n))` -/
def P25502627724100173.Spec : Prop :=
  ∀ n, P25502627724100173.a n = A083233 n

end A083233

/-! ## A083233.P5087920667141427211

`round(A270568(n)/2)`
-/

namespace A083233.P5087920667141427211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A270568 n : ℚ) / 2)

end

end A083233.P5087920667141427211

namespace A083233

/-- `round(A270568(n)/2)` -/
def P5087920667141427211.Spec : Prop :=
  ∀ n, P5087920667141427211.a n = A083233 n

end A083233

/-! ## A083233.P8164719979261264776

`A122391(3*n+1)`
-/

namespace A083233.P8164719979261264776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (3 * n + 1)

end

end A083233.P8164719979261264776

namespace A083233

/-- `A122391(3*n+1)` -/
def P8164719979261264776.Spec : Prop :=
  ∀ n, P8164719979261264776.a n = A083233 n

end A083233

/-! ## A083233.P584205152756692353

`A098011(3*n+2)`
-/

namespace A083233.P584205152756692353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (3 * n + 2)

end

end A083233.P584205152756692353

namespace A083233

/-- `A098011(3*n+2)` -/
def P584205152756692353.Spec : Prop :=
  ∀ n, P584205152756692353.a n = A083233 n

end A083233

/-! ## A083233.P7453301177950803978

`2^n*A002001(n)`
-/

namespace A083233.P7453301177950803978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002001 n

end

end A083233.P7453301177950803978

namespace A083233

/-- `2^n*A002001(n)` -/
def P7453301177950803978.Spec : Prop :=
  ∀ n, P7453301177950803978.a n = A083233 n

end A083233

/-! ## A083233.P15194458614505123383

`2^(n-1)*A084509(n+2)`
-/

namespace A083233.P15194458614505123383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A084509 (n + 2) : ℚ)

end

end A083233.P15194458614505123383

namespace A083233

/-- `2^(n-1)*A084509(n+2)` -/
def P15194458614505123383.Spec : Prop :=
  ∀ n, P15194458614505123383.a n = (A083233 n : ℚ)

end A083233

/-! ## A083233.P3943855283463434467

`2^(n-2)*A110594(n+1)`
-/

namespace A083233.P3943855283463434467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A110594 (n + 1) : ℚ)

end

end A083233.P3943855283463434467

namespace A083233

/-- `2^(n-2)*A110594(n+1)` -/
def P3943855283463434467.Spec : Prop :=
  ∀ n, P3943855283463434467.a n = (A083233 n : ℚ)

end A083233

/-! ## A083233.P13495939493543835199

`2^(n-2)*A092898(n+2)`
-/

namespace A083233.P13495939493543835199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A092898 (n + 2) : ℚ)

end

end A083233.P13495939493543835199

namespace A083233

/-- `2^(n-2)*A092898(n+2)` -/
def P13495939493543835199.Spec : Prop :=
  ∀ n, P13495939493543835199.a n = (A083233 n : ℚ)

end A083233

/-! ## A083233.P11412233628720791977

`A029747(A122709(n))`
-/

namespace A083233.P11412233628720791977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A122709 n).toNat

end

end A083233.P11412233628720791977

namespace A083233

/-- `A029747(A122709(n))` -/
def P11412233628720791977.Spec : Prop :=
  ∀ n, P11412233628720791977.a n = A083233 n

end A083233

/-! ## A083233.P12897137161041517382

`A164640(A004277(n))`
-/

namespace A083233.P12897137161041517382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164640 (A004277 n).toNat

end

end A083233.P12897137161041517382

namespace A083233

/-- `A164640(A004277(n))` -/
def P12897137161041517382.Spec : Prop :=
  ∀ n, P12897137161041517382.a n = A083233 n

end A083233

/-! ## A083233.P5735982225648740268

`A164640(A004275(n+1))`
-/

namespace A083233.P5735982225648740268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164640 (A004275 (n + 1)).toNat

end

end A083233.P5735982225648740268

namespace A083233

/-- `A164640(A004275(n+1))` -/
def P5735982225648740268.Spec : Prop :=
  ∀ n, P5735982225648740268.a n = A083233 n

end A083233

/-! ## A083233.P16578611601561538052

`A029744(A101328(n+2))`
-/

namespace A083233.P16578611601561538052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A101328 (n + 2)).toNat

end

end A083233.P16578611601561538052

namespace A083233

/-- `A029744(A101328(n+2))` -/
def P16578611601561538052.Spec : Prop :=
  ∀ n, P16578611601561538052.a n = A083233 n

end A083233

/-!
# A083234: a(n) = (3*10^n + 2^n)/4.

The programs for A083234, the canonical program `A083234.P15185806902653730475` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083234 has offset 0).

The definition of A083234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*10^n+2^n)/4` (program `A083234.P7931732899365807108`, by `A083234.P7931732899365807108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083234.P15185806902653730475

`12*a(n-1)-20*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083234

/-- `12*a(n-1)-20*a(n-2)` -/
def P15185806902653730475.Spec : Prop :=
  ∀ n, P15185806902653730475.a n = A083234 n

theorem P15185806902653730475.correct : P15185806902653730475.Spec := by
  intro n
  simp only [A083234]

end A083234

/-! ## A083234.P7931732899365807108

`(3*10^n+2^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083234.P7931732899365807108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 10 ^ n + 2 ^ n : ℚ) / 4

end

end A083234.P7931732899365807108

namespace A083234

/-- `(3*10^n+2^n)/4` -/
def P7931732899365807108.Spec : Prop :=
  ∀ n, P7931732899365807108.a n = (A083234 n : ℚ)

theorem P7931732899365807108.correct : P7931732899365807108.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083234, Nat.add_sub_cancel, A083234.P7931732899365807108.a, A083234.P15185806902653730475.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083234, Nat.add_sub_cancel, A083234.P7931732899365807108.a, A083234.P15185806902653730475.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083234

/-! ## A083234.P3473967737200869490

`ogf((1-4x)/(1-12x+20x^2))`
-/

namespace A083234.P3473967737200869490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -12, 20] n

end

end A083234.P3473967737200869490

namespace A083234

/-- `ogf((1-4x)/(1-12x+20x^2))` -/
def P3473967737200869490.Spec : Prop :=
  ∀ n, P3473967737200869490.a n = A083234 n

end A083234

/-! ## A083234.P15325556507710486082

`10*a(n-1)-2^n` with `a(0)=1`
-/

namespace A083234.P15325556507710486082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - (2 ^ n : ℤ)

end

end A083234.P15325556507710486082

namespace A083234

/-- `10*a(n-1)-2^n` -/
def P15325556507710486082.Spec : Prop :=
  ∀ n, P15325556507710486082.a n = A083234 n

end A083234

/-! ## A083234.P4479168623062908581

`a(n-1)+10^(n-1)+a(n-1)+10^n/2` with `a(0)=1`
-/

namespace A083234.P4479168623062908581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (a (n - 1) + (10 ^ n : ℚ) / 2)

end

end A083234.P4479168623062908581

namespace A083234

/-- `a(n-1)+10^(n-1)+a(n-1)+10^n/2` -/
def P4479168623062908581.Spec : Prop :=
  ∀ n, P4479168623062908581.a n = (A083234 n : ℚ)

end A083234

/-! ## A083234.P996765237196285662

`A090019(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A083234.P996765237196285662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090019 n + 2 * a (n - 1)

end

end A083234.P996765237196285662

namespace A083234

/-- `A090019(n)+2*a(n-1)` -/
def P996765237196285662.Spec : Prop :=
  ∀ n, P996765237196285662.a n = A083234 n

end A083234

/-! ## A083234.P7865628513100661697

`2*5*a(n-1)-Δ[A000225(n)]` with `a(0)=1`
-/

namespace A083234.P7865628513100661697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 * a (n - 1)) - (f1 (n + 1) - f1 n)

end

end A083234.P7865628513100661697

namespace A083234

/-- `2*5*a(n-1)-Δ[A000225(n)]` -/
def P7865628513100661697.Spec : Prop :=
  ∀ n, P7865628513100661697.a n = A083234 n

end A083234

/-! ## A083234.P5546289880325400960

`A000079(n)*A083065(n)`
-/

namespace A083234.P5546289880325400960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A083065 n

end

end A083234.P5546289880325400960

namespace A083234

/-- `A000079(n)*A083065(n)` -/
def P5546289880325400960.Spec : Prop :=
  ∀ n, P5546289880325400960.a n = A083234 n

end A083234

/-! ## A083234.P9402008910035511006

`Δ[A256493(n)/2]`
-/

namespace A083234.P9402008910035511006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256493 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083234.P9402008910035511006

namespace A083234

/-- `Δ[A256493(n)/2]` -/
def P9402008910035511006.Spec : Prop :=
  ∀ n, P9402008910035511006.a n = (A083234 n : ℚ)

end A083234

/-! ## A083234.P7802377344455221980

`2*A011557(n)-A016134(n)`
-/

namespace A083234.P7802377344455221980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011557 n - A016134 n

end

end A083234.P7802377344455221980

namespace A083234

/-- `2*A011557(n)-A016134(n)` -/
def P7802377344455221980.Spec : Prop :=
  ∀ n, P7802377344455221980.a n = A083234 n

end A083234

/-!
# A083235: First differences of A063742, the possible values for cototients.

The programs for A083235, there is no canonical definition to state claims against.
-/

/-! ## A083235.P16760040866734825527

`A063742(n+2)-A063742(n+1)`
-/

namespace A083235.P16760040866734825527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 2) - A063742 (n + 1)

end

end A083235.P16760040866734825527

/-! ## A083235.P15421361703907297366

`char[2*A126887(n+1)-(n+1)]+1`
-/

namespace A083235.P15421361703907297366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126887 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A083235.P15421361703907297366

/-! ## A083235.P2380198014424667638

`Δ[∪[A058817(n+1), A004273(n)]]`
-/

namespace A083235.P2380198014424667638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083235.P2380198014424667638

/-! ## A083235.P11227170260041896492

`Δ[A063742(n+1)]`
-/

namespace A083235.P11227170260041896492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083235.P11227170260041896492

/-! ## A083235.P4198686050640236567

`Δ[comp[A005278(n+1)]]`
-/

namespace A083235.P4198686050640236567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083235.P4198686050640236567

/-! ## A083235.P14406121040628648033

`A008313(A063742(n+1)²%A063742(n+2))`
-/

namespace A083235.P14406121040628648033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (Int.tmod (A063742 (n + 1) ^ 2) (A063742 (n + 2))).toNat

end

end A083235.P14406121040628648033

/-! ## A083235.P2266659658788570082

`A040001(A063742(n+1)+A063742(n+2))`
-/

namespace A083235.P2266659658788570082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A063742 (n + 1) + A063742 (n + 2)).toNat

end

end A083235.P2266659658788570082

/-!
# A083236: First order recursion: a(0)=2; a(n) = prime(n) - a(n-1).

The programs for A083236, the canonical program `A083236.P16899612719890715469` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083236 has offset 0).

The definition of A083236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083236.P16899612719890715469

`A000040(n)-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083236

/-- `A000040(n)-a(n-1)` -/
def P16899612719890715469.Spec : Prop :=
  ∀ n, P16899612719890715469.a n = A083236 n

theorem P16899612719890715469.correct : P16899612719890715469.Spec := by
  intro n
  simp only [A083236]

end A083236

/-! ## A083236.P117452174240803009

`A006093(n)+1-a(n-1)` with `a(0)=2`
-/

namespace A083236.P117452174240803009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006093 n + (1 - a (n - 1))

end

end A083236.P117452174240803009

namespace A083236

/-- `A006093(n)+1-a(n-1)` -/
def P117452174240803009.Spec : Prop :=
  ∀ n, P117452174240803009.a n = A083236 n

theorem P117452174240803009.correct : P117452174240803009.Spec := by
  intro n
  simp only [A083236, Nat.add_sub_cancel, A083236.P117452174240803009.a, A083236.P16899612719890715469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083236

/-! ## A083236.P13712115643967838989

`A008578(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A083236.P13712115643967838989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008578 (n + 1) - a (n - 1)

end

end A083236.P13712115643967838989

namespace A083236

/-- `A008578(n+1)-a(n-1)` -/
def P13712115643967838989.Spec : Prop :=
  ∀ n, P13712115643967838989.a n = A083236 n

end A083236

/-! ## A083236.P13186439017248571672

`A182986(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A083236.P13186439017248571672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A182986 (n + 1) - a (n - 1)

end

end A083236.P13186439017248571672

namespace A083236

/-- `A182986(n+1)-a(n-1)` -/
def P13186439017248571672.Spec : Prop :=
  ∀ n, P13186439017248571672.a n = A083236 n

end A083236

/-! ## A083236.P6740856654521869113

`A008864(n)-1-a(n-1)` with `a(0)=2`
-/

namespace A083236.P6740856654521869113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008864 n - 1 - a (n - 1)

end

end A083236.P6740856654521869113

namespace A083236

/-- `A008864(n)-1-a(n-1)` -/
def P6740856654521869113.Spec : Prop :=
  ∀ n, P6740856654521869113.a n = A083236 n

theorem P6740856654521869113.correct : P6740856654521869113.Spec := by
  intro n
  simp only [A083236, Nat.add_sub_cancel, A083236.P6740856654521869113.a, A083236.P16899612719890715469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083236

/-! ## A083236.P6502618636300343173

`A028815(n)-1-a(n-1)` with `a(0)=2`
-/

namespace A083236.P6502618636300343173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A028815 n - 1 - a (n - 1)

end

end A083236.P6502618636300343173

namespace A083236

/-- `A028815(n)-1-a(n-1)` -/
def P6502618636300343173.Spec : Prop :=
  ∀ n, P6502618636300343173.a n = A083236 n

end A083236

/-! ## A083236.P5550883123026029700

`A014689(n)-a(n-1)+n` with `a(0)=2`
-/

namespace A083236.P5550883123026029700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A014689 n - a (n - 1) + (n : ℤ)

end

end A083236.P5550883123026029700

namespace A083236

/-- `A014689(n)-a(n-1)+n` -/
def P5550883123026029700.Spec : Prop :=
  ∀ n, P5550883123026029700.a n = A083236 n

end A083236

/-! ## A083236.P5019809566320849645

`A036467(n)+A033999(n)`
-/

namespace A083236.P5019809566320849645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 n + A033999 n

end

end A083236.P5019809566320849645

namespace A083236

/-- `A036467(n)+A033999(n)` -/
def P5019809566320849645.Spec : Prop :=
  ∀ n, P5019809566320849645.a n = A083236 n

end A083236

/-! ## A083236.P676736031634845686

`A083237(n)-A174971(n)`
-/

namespace A083236.P676736031634845686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083237 n - A174971 n

end

end A083236.P676736031634845686

namespace A083236

/-- `A083237(n)-A174971(n)` -/
def P676736031634845686.Spec : Prop :=
  ∀ n, P676736031634845686.a n = A083236 n

end A083236

/-! ## A083236.P10114338473347918569

`A008347(n)+2*A033999(n)`
-/

namespace A083236.P10114338473347918569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n + 2 * A033999 n

end

end A083236.P10114338473347918569

namespace A083236

/-- `A008347(n)+2*A033999(n)` -/
def P10114338473347918569.Spec : Prop :=
  ∀ n, P10114338473347918569.a n = A083236 n

end A083236

/-! ## A083236.P13222676869563992427

`2*A036467(n)-A008347(n)`
-/

namespace A083236.P13222676869563992427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036467 n - A008347 n

end

end A083236.P13222676869563992427

namespace A083236

/-- `2*A036467(n)-A008347(n)` -/
def P13222676869563992427.Spec : Prop :=
  ∀ n, P13222676869563992427.a n = A083236 n

end A083236

/-! ## A083236.P17612331180184051915

`A350171(n+1)-A086910(n+1)`
-/

namespace A083236.P17612331180184051915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (n + 1) - A086910 (n + 1)

end

end A083236.P17612331180184051915

namespace A083236

/-- `A350171(n+1)-A086910(n+1)` -/
def P17612331180184051915.Spec : Prop :=
  ∀ n, P17612331180184051915.a n = A083236 n

end A083236

/-! ## A083236.P4219935230854353876

`A174971(n+1)+A083237(n)`
-/

namespace A083236.P4219935230854353876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (n + 1) + A083237 n

end

end A083236.P4219935230854353876

namespace A083236

/-- `A174971(n+1)+A083237(n)` -/
def P4219935230854353876.Spec : Prop :=
  ∀ n, P4219935230854353876.a n = A083236 n

end A083236

/-! ## A083236.P15042097913664476824

`record[A006530(n+1)]-a(n-1)` with `a(0)=2`
-/

namespace A083236.P15042097913664476824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A083236.P15042097913664476824

namespace A083236

/-- `record[A006530(n+1)]-a(n-1)` -/
def P15042097913664476824.Spec : Prop :=
  ∀ n, P15042097913664476824.a n = A083236 n

end A083236

/-! ## A083236.P8122849156728759058

`record[A020639(n+1)]-a(n-1)` with `a(0)=2`
-/

namespace A083236.P8122849156728759058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A083236.P8122849156728759058

namespace A083236

/-- `record[A020639(n+1)]-a(n-1)` -/
def P8122849156728759058.Spec : Prop :=
  ∀ n, P8122849156728759058.a n = A083236 n

end A083236

/-! ## A083236.P3360231251430795024

`record[∑{p}[n, #]]-a(n-1)` with `a(0)=2`
-/

namespace A083236.P3360231251430795024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - a (n - 1)

end

end A083236.P3360231251430795024

namespace A083236

/-- `record[∑{p}[n, #]]-a(n-1)` -/
def P3360231251430795024.Spec : Prop :=
  ∀ n, P3360231251430795024.a n = A083236 n

end A083236

/-!
# A083237: First order recursion: a(0)=5; a(n)=prime(n)-a(n-1).

The programs for A083237, the canonical program `A083237.P3865752581450416523` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083237 has offset 0).

The definition of A083237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083237.P3865752581450416523

`A000040(n)-a(n-1)` with `a(0)=5`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083237

/-- `A000040(n)-a(n-1)` -/
def P3865752581450416523.Spec : Prop :=
  ∀ n, P3865752581450416523.a n = A083237 n

theorem P3865752581450416523.correct : P3865752581450416523.Spec := by
  intro n
  simp only [A083237]

end A083237

/-! ## A083237.P12644858964159706387

`sqrt(A001248(n))-a(n-1)` with `a(0)=5`
-/

namespace A083237.P12644858964159706387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5] fun n a =>
  Real.sqrt (A001248 n : ℝ) - a (n - 1)

end

end A083237.P12644858964159706387

namespace A083237

/-- `sqrt(A001248(n))-a(n-1)` -/
def P12644858964159706387.Spec : Prop :=
  ∀ n, P12644858964159706387.a n = (A083237 n : ℝ)

end A083237

/-! ## A083237.P5838860201269724321

`A006093(n)+1-a(n-1)` with `a(0)=5`
-/

namespace A083237.P5838860201269724321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A006093 n + (1 - a (n - 1))

end

end A083237.P5838860201269724321

namespace A083237

/-- `A006093(n)+1-a(n-1)` -/
def P5838860201269724321.Spec : Prop :=
  ∀ n, P5838860201269724321.a n = A083237 n

theorem P5838860201269724321.correct : P5838860201269724321.Spec := by
  intro n
  simp only [A083237, Nat.add_sub_cancel, A083237.P5838860201269724321.a, A083237.P3865752581450416523.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083237

/-! ## A083237.P16290768770097300279

`A008578(n+1)-a(n-1)` with `a(0)=5`
-/

namespace A083237.P16290768770097300279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A008578 (n + 1) - a (n - 1)

end

end A083237.P16290768770097300279

namespace A083237

/-- `A008578(n+1)-a(n-1)` -/
def P16290768770097300279.Spec : Prop :=
  ∀ n, P16290768770097300279.a n = A083237 n

end A083237

/-! ## A083237.P16783614367781107510

`A182986(n+1)-a(n-1)` with `a(0)=5`
-/

namespace A083237.P16783614367781107510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A182986 (n + 1) - a (n - 1)

end

end A083237.P16783614367781107510

namespace A083237

/-- `A182986(n+1)-a(n-1)` -/
def P16783614367781107510.Spec : Prop :=
  ∀ n, P16783614367781107510.a n = A083237 n

end A083237

/-! ## A083237.P6394056676873062426

`A174971(n)+A083236(n)`
-/

namespace A083237.P6394056676873062426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n + A083236 n

end

end A083237.P6394056676873062426

namespace A083237

/-- `A174971(n)+A083236(n)` -/
def P6394056676873062426.Spec : Prop :=
  ∀ n, P6394056676873062426.a n = A083237 n

end A083237

/-! ## A083237.P5946276386221979837

`record[A006530(n+1)]-a(n-1)` with `a(0)=5`
-/

namespace A083237.P5946276386221979837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A083237.P5946276386221979837

namespace A083237

/-- `record[A006530(n+1)]-a(n-1)` -/
def P5946276386221979837.Spec : Prop :=
  ∀ n, P5946276386221979837.a n = A083237 n

end A083237

/-! ## A083237.P7911594696034727608

`record[A166333(n)]-a(n-1)` with `a(0)=5`
-/

namespace A083237.P7911594696034727608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A083237.P7911594696034727608

namespace A083237

/-- `record[A166333(n)]-a(n-1)` -/
def P7911594696034727608.Spec : Prop :=
  ∀ n, P7911594696034727608.a n = A083237 n

end A083237

/-! ## A083237.P3828503266810045929

`record[∑{p}[n, #]]-a(n-1)` with `a(0)=5`
-/

namespace A083237.P3828503266810045929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - a (n - 1)

end

end A083237.P3828503266810045929

namespace A083237

/-- `record[∑{p}[n, #]]-a(n-1)` -/
def P3828503266810045929.Spec : Prop :=
  ∀ n, P3828503266810045929.a n = A083237 n

end A083237

/-!
# A083238: First order recursion: a(0)=1; a(n) = sigma(1,n) - a(n-1).

The programs for A083238, the canonical program `A083238.P785176864677222985` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083238 has offset 0).

The definition of A083238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083238.P785176864677222985

`∑{d}[n, #]-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083238

/-- `∑{d}[n, #]-a(n-1)` -/
def P785176864677222985.Spec : Prop :=
  ∀ n, P785176864677222985.a n = A083238 n

theorem P785176864677222985.correct : P785176864677222985.Spec := by
  intro n
  simp only [A083238]

end A083238

/-! ## A083238.P2370865371379864052

`A000203(n)-a(n-1)` with `a(0)=1`
-/

namespace A083238.P2370865371379864052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 n - a (n - 1)

end

end A083238.P2370865371379864052

namespace A083238

/-- `A000203(n)-a(n-1)` -/
def P2370865371379864052.Spec : Prop :=
  ∀ n, P2370865371379864052.a n = A083238 n

end A083238

/-! ## A083238.P6244149117981596085

`A340793(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A083238.P6244149117981596085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A340793 n + a (n - 2)

end

end A083238.P6244149117981596085

namespace A083238

/-- `A340793(n)+a(n-2)` -/
def P6244149117981596085.Spec : Prop :=
  ∀ n, P6244149117981596085.a n = A083238 n

end A083238

/-! ## A083238.P17743994312950806944

`abs(A143348(n))-a(n-1)` with `a(0)=1`
-/

namespace A083238.P17743994312950806944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A143348 n| - a (n - 1)

end

end A083238.P17743994312950806944

namespace A083238

/-- `abs(A143348(n))-a(n-1)` -/
def P17743994312950806944.Spec : Prop :=
  ∀ n, P17743994312950806944.a n = A083238 n

end A083238

/-! ## A083238.P6686424748093027882

`sqrt(A072861(n))-a(n-1)` with `a(0)=1`
-/

namespace A083238.P6686424748093027882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A072861 n : ℝ) - a (n - 1)

end

end A083238.P6686424748093027882

namespace A083238

/-- `sqrt(A072861(n))-a(n-1)` -/
def P6686424748093027882.Spec : Prop :=
  ∀ n, P6686424748093027882.a n = (A083238 n : ℝ)

end A083238

/-! ## A083238.P16450697375435839010

`log2(∏{d}[n, 2^#])-a(n-1)` with `a(0)=1`
-/

namespace A083238.P16450697375435839010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℝ) - a (n - 1)

end

end A083238.P16450697375435839010

namespace A083238

/-- `log2(∏{d}[n, 2^#])-a(n-1)` -/
def P16450697375435839010.Spec : Prop :=
  ∀ n, P16450697375435839010.a n = (A083238 n : ℝ)

end A083238

/-! ## A083238.P801898035592441073

`A069290(n²)-a(n-1)` with `a(0)=1`
-/

namespace A083238.P801898035592441073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069290 (n ^ 2) - a (n - 1)

end

end A083238.P801898035592441073

namespace A083238

/-- `A069290(n²)-a(n-1)` -/
def P801898035592441073.Spec : Prop :=
  ∀ n, P801898035592441073.a n = A083238 n

end A083238

/-! ## A083238.P6920053618455025159

`A365347(n²)-a(n-1)` with `a(0)=1`
-/

namespace A083238.P6920053618455025159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A365347 (n ^ 2) - a (n - 1)

end

end A083238.P6920053618455025159

namespace A083238

/-- `A365347(n²)-a(n-1)` -/
def P6920053618455025159.Spec : Prop :=
  ∀ n, P6920053618455025159.a n = A083238 n

end A083238

/-! ## A083238.P3639235362040561059

`A367988(n²)-a(n-1)` with `a(0)=1`
-/

namespace A083238.P3639235362040561059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A367988 (n ^ 2) - a (n - 1)

end

end A083238.P3639235362040561059

namespace A083238

/-- `A367988(n²)-a(n-1)` -/
def P3639235362040561059.Spec : Prop :=
  ∀ n, P3639235362040561059.a n = A083238 n

end A083238

/-!
# A083239: First order recursion: a(0) = 1; a(n) = phi(n) - a(n-1) = A000010(n) - a(n-1).

The programs for A083239, the canonical program `A083239.P10010670586367493324` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083239 has offset 0).

The definition of A083239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083239.P10010670586367493324

`A000010(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083239

/-- `A000010(n)-a(n-1)` -/
def P10010670586367493324.Spec : Prop :=
  ∀ n, P10010670586367493324.a n = A083239 n

theorem P10010670586367493324.correct : P10010670586367493324.Spec := by
  intro n
  simp only [A083239]

end A083239

/-! ## A083239.P13388263305066550605

`sqrt(A127473(n))-a(n-1)` with `a(0)=1`
-/

namespace A083239.P13388263305066550605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A127473 n : ℝ) - a (n - 1)

end

end A083239.P13388263305066550605

namespace A083239

/-- `sqrt(A127473(n))-a(n-1)` -/
def P13388263305066550605.Spec : Prop :=
  ∀ n, P13388263305066550605.a n = (A083239 n : ℝ)

end A083239

/-! ## A083239.P12200677807397861691

`A039649(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A083239.P12200677807397861691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039649 n - (a (n - 1) + 1)

end

end A083239.P12200677807397861691

namespace A083239

/-- `A039649(n)-(a(n-1)+1)` -/
def P12200677807397861691.Spec : Prop :=
  ∀ n, P12200677807397861691.a n = A083239 n

theorem P12200677807397861691.correct : P12200677807397861691.Spec := by
  intro n
  simp only [A083239, Nat.add_sub_cancel, A083239.P12200677807397861691.a, A083239.P10010670586367493324.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083239

/-! ## A083239.P14290932638649192656

`A109606(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A083239.P14290932638649192656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109606 n + (1 - a (n - 1))

end

end A083239.P14290932638649192656

namespace A083239

/-- `A109606(n)+1-a(n-1)` -/
def P14290932638649192656.Spec : Prop :=
  ∀ n, P14290932638649192656.a n = A083239 n

theorem P14290932638649192656.correct : P14290932638649192656.Spec := by
  intro n
  simp only [A083239, Nat.add_sub_cancel, A083239.P14290932638649192656.a, A083239.P10010670586367493324.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083239

/-! ## A083239.P13255220113689899568

`∑{d}[n, n/#*A008683(#)]-a(n-1)` with `a(0)=1`
-/

namespace A083239.P13255220113689899568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℚ) / (d : ℚ) * (A008683 d : ℚ) - a (n - 1)

end

end A083239.P13255220113689899568

namespace A083239

/-- `∑{d}[n, n/#*A008683(#)]-a(n-1)` -/
def P13255220113689899568.Spec : Prop :=
  ∀ n, P13255220113689899568.a n = (A083239 n : ℚ)

end A083239

/-! ## A083239.P11797445379327315729

`A225530(n)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A083239.P11797445379327315729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A225530 n - a (n - 1)

end

end A083239.P11797445379327315729

namespace A083239

/-- `A225530(n)-a(n-1)` -/
def P11797445379327315729.Spec : Prop :=
  ∀ n, P11797445379327315729.a n = A083239 n

end A083239

/-! ## A083239.P10729413227654562673

`A089929(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A083239.P10729413227654562673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089929 (2 * n) - a (n - 1)

end

end A083239.P10729413227654562673

namespace A083239

/-- `A089929(2*n)-a(n-1)` -/
def P10729413227654562673.Spec : Prop :=
  ∀ n, P10729413227654562673.a n = A083239 n

end A083239

/-! ## A083239.P2866186171751058754

`A054522(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A083239.P2866186171751058754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054522 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A083239.P2866186171751058754

namespace A083239

/-- `A054522(∑[n])-a(n-1)` -/
def P2866186171751058754.Spec : Prop :=
  ∀ n, P2866186171751058754.a n = A083239 n

end A083239

/-! ## A083239.P4493072291212349075

`A054532(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A083239.P4493072291212349075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054532 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A083239.P4493072291212349075

namespace A083239

/-- `A054532(∑[n])-a(n-1)` -/
def P4493072291212349075.Spec : Prop :=
  ∀ n, P4493072291212349075.a n = A083239 n

end A083239

/-! ## A083239.P3863056386224431834

`A057828(n²)-a(n-1)` with `a(0)=1`
-/

namespace A083239.P3863056386224431834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057828 (n ^ 2) - a (n - 1)

end

end A083239.P3863056386224431834

namespace A083239

/-- `A057828(n²)-a(n-1)` -/
def P3863056386224431834.Spec : Prop :=
  ∀ n, P3863056386224431834.a n = A083239 n

end A083239

/-! ## A083239.P16956266536594390725

`A390752(n²)-a(n-1)` with `a(0)=1`
-/

namespace A083239.P16956266536594390725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390752 (n ^ 2) - a (n - 1)

end

end A083239.P16956266536594390725

namespace A083239

/-- `A390752(n²)-a(n-1)` -/
def P16956266536594390725.Spec : Prop :=
  ∀ n, P16956266536594390725.a n = A083239 n

end A083239

/-!
# A083240: Primes prime(j) such that prime(j)-j is a true power of prime.

The programs for A083240, there is no canonical definition to state claims against.
-/

/-! ## A083240.P12730370375262884630

`A000040(A109315(n+1))`
-/

namespace A083240.P12730370375262884630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A109315 (n + 1)).toNat

end

end A083240.P12730370375262884630

/-! ## A083240.P582651706641952299

`A008578(A109315(n+1)+1)`
-/

namespace A083240.P582651706641952299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A109315 (n + 1) + 1).toNat

end

end A083240.P582651706641952299

/-! ## A083240.P12783442291044816113

`A045319(A109315(n+1)-1)`
-/

namespace A083240.P12783442291044816113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A109315 (n + 1) - 1).toNat

end

end A083240.P12783442291044816113

/-! ## A083240.P2619899512544161560

`A140475(A109315(n+1)-1)`
-/

namespace A083240.P2619899512544161560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (A109315 (n + 1) - 1).toNat

end

end A083240.P2619899512544161560

/-! ## A083240.P14331698935977525814

`A158611(A109315(n+1)+2)`
-/

namespace A083240.P14331698935977525814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A109315 (n + 1) + 2).toNat

end

end A083240.P14331698935977525814

/-!
# A083241: a(n) + a(n-1) + a(n-2) + a(n-3) = prime(n), n>2, a(0)=a(1)=a(2)=0;.

The programs for A083241, the canonical program `A083241.P84878704181718384` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083241 has offset 0).

The definition of A083241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083241.P84878704181718384

`Δ[A000040(n-1)+a(n-4)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083241

/-- `Δ[A000040(n-1)+a(n-4)]` -/
def P84878704181718384.Spec : Prop :=
  ∀ n, P84878704181718384.a n = A083241 n

theorem P84878704181718384.correct : P84878704181718384.Spec := by
  intro n
  simp only [A083241]

end A083241

/-! ## A083241.P3430022937027015485

`xor(1, A083242(n)+Δ[A004525(n)])`
-/

namespace A083241.P3430022937027015485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A083242 n + (f1 (n + 1) - f1 n))

end

end A083241.P3430022937027015485

namespace A083241

/-- `xor(1, A083242(n)+Δ[A004525(n)])` -/
def P3430022937027015485.Spec : Prop :=
  ∀ n, P3430022937027015485.a n = A083241 n

end A083241

/-! ## A083241.P3849446312157951839

`A004442(A083242(n)+Δ[A004525(n)])`
-/

namespace A083241.P3849446312157951839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A083242 n + (f1 (n + 1) - f1 n)).toNat

end

end A083241.P3849446312157951839

namespace A083241

/-- `A004442(A083242(n)+Δ[A004525(n)])` -/
def P3849446312157951839.Spec : Prop :=
  ∀ n, P3849446312157951839.a n = A083241 n

end A083241

/-!
# A083242: For n >= 3, a(n-3) + a(n-2) + a(n-1) + a(n) = prime(n); a(0) = 0, a(1) = 1, a(2) = 1.

The programs for A083242, the canonical program `A083242.P7247398102828661569` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083242 has offset 0).

The definition of A083242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083242.P7247398102828661569

`A008347(n)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083242

/-- `A008347(n)-a(n-2)` -/
def P7247398102828661569.Spec : Prop :=
  ∀ n, P7247398102828661569.a n = A083242 n

theorem P7247398102828661569.correct : P7247398102828661569.Spec := by
  intro n
  simp only [A083242]

end A083242

/-! ## A083242.P11989331007668674419

`Δ[A000040(n-1)+a(n-4)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A083242.P11989331007668674419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  A000040 (n - 1) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083242.P11989331007668674419

namespace A083242

/-- `Δ[A000040(n-1)+a(n-4)]` -/
def P11989331007668674419.Spec : Prop :=
  ∀ n, P11989331007668674419.a n = A083242 n

end A083242

/-! ## A083242.P1869901105113377039

`Δ[A175965(n+1)-a(n-1)]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A083242.P1869901105113377039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A175965 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 2)

end

end A083242.P1869901105113377039

namespace A083242

/-- `Δ[A175965(n+1)-a(n-1)]-a(n-2)` -/
def P1869901105113377039.Spec : Prop :=
  ∀ n, P1869901105113377039.a n = A083242 n

end A083242

/-! ## A083242.P14831403564553586745

`xor(Δ[A004525(n)], A103781(n+3))`
-/

namespace A083242.P14831403564553586745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A103781 (n + 3))

end

end A083242.P14831403564553586745

namespace A083242

/-- `xor(Δ[A004525(n)], A103781(n+3))` -/
def P14831403564553586745.Spec : Prop :=
  ∀ n, P14831403564553586745.a n = A083242 n

end A083242

/-! ## A083242.P8503806706228554627

`A107128(n)-A188172(A144241(n+1))`
-/

namespace A083242.P8503806706228554627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n - A188172 (A144241 (n + 1)).toNat

end

end A083242.P8503806706228554627

namespace A083242

/-- `A107128(n)-A188172(A144241(n+1))` -/
def P8503806706228554627.Spec : Prop :=
  ∀ n, P8503806706228554627.a n = A083242 n

end A083242

/-!
# A083243: Numbers k for which there are more divisors and coprimes than other numbers less than k: A045763(k) < A073757(k) or A045763(k) < k/2 or A073757(k) > k/2.

The programs for A083243, the canonical program `A083243.P12650602988300709870` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083243 has offset 1).

The definition of A083243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083243.P17521130896573270979

`lt[0, A083245(n+1)]+1`
-/

namespace A083243.P17521130896573270979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A083243.P17521130896573270979

namespace A083243

/-- `lt[0, A083245(n+1)]+1` -/
def P17521130896573270979.Spec : Prop :=
  ∀ n, (P17521130896573270979.a n : ℤ) = A083243 (n + 1)

end A083243

/-! ## A083243.P12650602988300709870

`lt[A045763(A028310(n)), n/2]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083243

/-- `lt[A045763(A028310(n)), n/2]` -/
def P12650602988300709870.Spec : Prop :=
  ∀ n, (P12650602988300709870.a n : ℤ) = A083243 (n + 1)

theorem P12650602988300709870.correct : P12650602988300709870.Spec := by
  intro n
  simp only [A083243, Nat.add_sub_cancel]

end A083243

/-! ## A083243.P16467031700532827503

`lt[A045763(n+1), A008619(n)]+1`
-/

namespace A083243.P16467031700532827503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A083243.P16467031700532827503

namespace A083243

/-- `lt[A045763(n+1), A008619(n)]+1` -/
def P16467031700532827503.Spec : Prop :=
  ∀ n, (P16467031700532827503.a n : ℤ) = A083243 (n + 1)

end A083243

/-! ## A083243.P15745167314395859664

`lt[A033999(n), A083245(A028310(n))]`
-/

namespace A083243.P15745167314395859664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083243.P15745167314395859664

namespace A083243

/-- `lt[A033999(n), A083245(A028310(n))]` -/
def P15745167314395859664.Spec : Prop :=
  ∀ n, (P15745167314395859664.a n : ℤ) = A083243 (n + 1)

end A083243

/-! ## A083243.P8269625034620240556

`lt[2, A083245(A028310(n))*A307202(n)]`
-/

namespace A083243.P8269625034620240556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (A028310 n).toNat * A307202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083243.P8269625034620240556

namespace A083243

/-- `lt[2, A083245(A028310(n))*A307202(n)]` -/
def P8269625034620240556.Spec : Prop :=
  ∀ n, (P8269625034620240556.a n : ℤ) = A083243 (n + 1)

end A083243

/-! ## A083243.P2676259520908271349

`lt[1, A083245(A138153(n+1))]`
-/

namespace A083243.P2676259520908271349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083243.P2676259520908271349

namespace A083243

/-- `lt[1, A083245(A138153(n+1))]` -/
def P2676259520908271349.Spec : Prop :=
  ∀ n, (P2676259520908271349.a n : ℤ) = A083243 (n + 1)

end A083243

/-! ## A083243.P8097171309820229706

`lt[A045763(A123108(2*n)), A123108(n+1)]`
-/

namespace A083243.P8097171309820229706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083243.P8097171309820229706

namespace A083243

/-- `lt[A045763(A123108(2*n)), A123108(n+1)]` -/
def P8097171309820229706.Spec : Prop :=
  ∀ n, (P8097171309820229706.a n : ℤ) = A083243 (n + 1)

end A083243

/-! ## A083243.P14020644284120488767

`lt[A045763(A233583(n+1)), A123108(n+1)]`
-/

namespace A083243.P14020644284120488767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083243.P14020644284120488767

namespace A083243

/-- `lt[A045763(A233583(n+1)), A123108(n+1)]` -/
def P14020644284120488767.Spec : Prop :=
  ∀ n, (P14020644284120488767.a n : ℤ) = A083243 (n + 1)

end A083243

/-!
# A083244: k is in the sequence iff the number of numbers unrelated to k is larger than that of related ones[=divisors and coprimes] to k: A045763(k) > A073757(k) or A045763(k) > k/2 or A073757(k) < k/2.

The programs for A083244, the canonical program `A083244.P7512416555689218093` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083244 has offset 1).

The definition of A083244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083244.P1662359713296217374

`lt[A073757(n+1), n/2]+1`
-/

namespace A083244.P1662359713296217374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A083244.P1662359713296217374

namespace A083244

/-- `lt[A073757(n+1), n/2]+1` -/
def P1662359713296217374.Spec : Prop :=
  ∀ n, (P1662359713296217374.a n : ℤ) = A083244 (n + 1)

end A083244

/-! ## A083244.P17927147319252330546

`lt[A083245(A028310(n)), 0]`
-/

namespace A083244.P17927147319252330546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083244.P17927147319252330546

namespace A083244

/-- `lt[A083245(A028310(n)), 0]` -/
def P17927147319252330546.Spec : Prop :=
  ∀ n, (P17927147319252330546.a n : ℤ) = A083244 (n + 1)

end A083244

/-! ## A083244.P17961555210767959609

`A020725(lt[A083245(n+1)+1, 1])`
-/

namespace A083244.P17961555210767959609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A083244.P17961555210767959609

namespace A083244

/-- `A020725(lt[A083245(n+1)+1, 1])` -/
def P17961555210767959609.Spec : Prop :=
  ∀ n, P17961555210767959609.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P2936407452774974003

`A065475(lt[A083245(n+1)+1, 1])`
-/

namespace A083244.P2936407452774974003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A083244.P2936407452774974003

namespace A083244

/-- `A065475(lt[A083245(n+1)+1, 1])` -/
def P2936407452774974003.Spec : Prop :=
  ∀ n, P2936407452774974003.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P4461679052005813776

`A153152(lt[A083245(n+1)+1, 1])`
-/

namespace A083244.P4461679052005813776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A083244.P4461679052005813776

namespace A083244

/-- `A153152(lt[A083245(n+1)+1, 1])` -/
def P4461679052005813776.Spec : Prop :=
  ∀ n, P4461679052005813776.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P11374849495894577951

`A326178(lt[A083245(n+1)+1, 1])`
-/

namespace A083244.P11374849495894577951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A083244.P11374849495894577951

namespace A083244

/-- `A326178(lt[A083245(n+1)+1, 1])` -/
def P11374849495894577951.Spec : Prop :=
  ∀ n, P11374849495894577951.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P7512416555689218093

`lt[A008619(n), A045763(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083244

/-- `lt[A008619(n), A045763(n+1)]+1` -/
def P7512416555689218093.Spec : Prop :=
  ∀ n, (P7512416555689218093.a n : ℤ) = A083244 (n + 1)

theorem P7512416555689218093.correct : P7512416555689218093.Spec := by
  intro n
  simp only [A083244, Nat.add_sub_cancel]

end A083244

/-! ## A083244.P17006781680340426090

`lt[A083245(n+1), A000007(n)]+1`
-/

namespace A083244.P17006781680340426090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A083244.P17006781680340426090

namespace A083244

/-- `lt[A083245(n+1), A000007(n)]+1` -/
def P17006781680340426090.Spec : Prop :=
  ∀ n, (P17006781680340426090.a n : ℤ) = A083244 (n + 1)

end A083244

/-! ## A083244.P7921452073476722228

`A020725(lt[2*A073757(n+1), n])`
-/

namespace A083244.P7921452073476722228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073757 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A083244.P7921452073476722228

namespace A083244

/-- `A020725(lt[2*A073757(n+1), n])` -/
def P7921452073476722228.Spec : Prop :=
  ∀ n, P7921452073476722228.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P1636817559363916625

`A020725(lt[2, n/A073757(n+1)])`
-/

namespace A083244.P1636817559363916625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A073757 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A083244.P1636817559363916625

namespace A083244

/-- `A020725(lt[2, n/A073757(n+1)])` -/
def P1636817559363916625.Spec : Prop :=
  ∀ n, P1636817559363916625.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P972807854356810953

`A020725(lt[A083245(n+1), A000007(n)])`
-/

namespace A083244.P972807854356810953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083244.P972807854356810953

namespace A083244

/-- `A020725(lt[A083245(n+1), A000007(n)])` -/
def P972807854356810953.Spec : Prop :=
  ∀ n, P972807854356810953.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P9976055608688480543

`A065475(lt[A083245(n+1), A000007(n)])`
-/

namespace A083244.P9976055608688480543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083244.P9976055608688480543

namespace A083244

/-- `A065475(lt[A083245(n+1), A000007(n)])` -/
def P9976055608688480543.Spec : Prop :=
  ∀ n, P9976055608688480543.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P1238362008179059060

`A326178(lt[A083245(n+1), A000007(n)])`
-/

namespace A083244.P1238362008179059060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083244.P1238362008179059060

namespace A083244

/-- `A326178(lt[A083245(n+1), A000007(n)])` -/
def P1238362008179059060.Spec : Prop :=
  ∀ n, P1238362008179059060.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P8695315706907947061

`A020725(lt[A073757(n+1), n-A073757(n+1)])`
-/

namespace A083244.P8695315706907947061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083244.P8695315706907947061

namespace A083244

/-- `A020725(lt[A073757(n+1), n-A073757(n+1)])` -/
def P8695315706907947061.Spec : Prop :=
  ∀ n, P8695315706907947061.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P1054862999050911358

`lt[A083245(A000007(n)+n), A000007(n)]`
-/

namespace A083244.P1054862999050911358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083244.P1054862999050911358

namespace A083244

/-- `lt[A083245(A000007(n)+n), A000007(n)]` -/
def P1054862999050911358.Spec : Prop :=
  ∀ n, (P1054862999050911358.a n : ℤ) = A083244 (n + 1)

end A083244

/-! ## A083244.P3252347929560916652

`lt[A083245(A138153(n+1))+1, 1]`
-/

namespace A083244.P3252347929560916652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (A138153 (n + 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083244.P3252347929560916652

namespace A083244

/-- `lt[A083245(A138153(n+1))+1, 1]` -/
def P3252347929560916652.Spec : Prop :=
  ∀ n, (P3252347929560916652.a n : ℤ) = A083244 (n + 1)

end A083244

/-! ## A083244.P9298204186337233797

`lt[A123108(n+1), A045763(A123108(2*n))]`
-/

namespace A083244.P9298204186337233797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083244.P9298204186337233797

namespace A083244

/-- `lt[A123108(n+1), A045763(A123108(2*n))]` -/
def P9298204186337233797.Spec : Prop :=
  ∀ n, (P9298204186337233797.a n : ℤ) = A083244 (n + 1)

end A083244

/-! ## A083244.P16335461082088094161

`A113484(lt[2*A073757(n+1), n])`
-/

namespace A083244.P16335461082088094161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073757 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A083244.P16335461082088094161

namespace A083244

/-- `A113484(lt[2*A073757(n+1), n])` -/
def P16335461082088094161.Spec : Prop :=
  ∀ n, P16335461082088094161.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P7090552918881480824

`A113484(lt[2, n/A073757(n+1)])`
-/

namespace A083244.P7090552918881480824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A073757 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A083244.P7090552918881480824

namespace A083244

/-- `A113484(lt[2, n/A073757(n+1)])` -/
def P7090552918881480824.Spec : Prop :=
  ∀ n, P7090552918881480824.a n = A083244 (n + 1)

end A083244

/-! ## A083244.P6443315311916731087

`A113484(lt[A073757(n+1), n-A073757(n+1)])`
-/

namespace A083244.P6443315311916731087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083244.P6443315311916731087

namespace A083244

/-- `A113484(lt[A073757(n+1), n-A073757(n+1)])` -/
def P6443315311916731087.Spec : Prop :=
  ∀ n, P6443315311916731087.a n = A083244 (n + 1)

end A083244

/-!
# A083245: Difference between numbers of related and numbers of unrelated numbers belonging to n: a(n) = A073757(n)-A045763(n) = (n-u(n))-u(n) = n-2*A045763(n) = 2*A073757(n)-n.

The programs for A083245, the canonical program `A083245.P760659149355917661` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083245 has offset 1).

The definition of A083245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, A073757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083245.P9231309052944364186

`n+1-2*A045763(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083245.P9231309052944364186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A045763 (n + 1)

end

end A083245.P9231309052944364186

namespace A083245

/-- `n+1-2*A045763(n+1)` -/
def P9231309052944364186.Spec : Prop :=
  ∀ n, P9231309052944364186.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P185651845031845127

`2*A073757(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083245.P185651845031845127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073757 (n + 1) - (n + 1 : ℤ)

end

end A083245.P185651845031845127

namespace A083245

/-- `2*A073757(n+1)-(n+1)` -/
def P185651845031845127.Spec : Prop :=
  ∀ n, P185651845031845127.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P760659149355917661

`A073757(n+1)-A045763(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A083245

/-- `A073757(n+1)-A045763(n+1)` -/
def P760659149355917661.Spec : Prop :=
  ∀ n, P760659149355917661.a n = A083245 (n + 1)

theorem P760659149355917661.correct : P760659149355917661.Spec := by
  intro n
  simp only [A083245, Nat.add_sub_cancel]

end A083245

/-! ## A083245.P16161127511476411784

`2*(A000005(n+1)+A000010(n+1)-1)-(n+1)`
-/

namespace A083245.P16161127511476411784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000005 (n + 1) + A000010 (n + 1) - 1) - (n + 1 : ℤ)

end

end A083245.P16161127511476411784

namespace A083245

/-- `2*(A000005(n+1)+A000010(n+1)-1)-(n+1)` -/
def P16161127511476411784.Spec : Prop :=
  ∀ n, P16161127511476411784.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P6612815178539165571

`n+3-2*A046640(n+1)`
-/

namespace A083245.P6612815178539165571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A046640 (n + 1)

end

end A083245.P6612815178539165571

namespace A083245

/-- `n+3-2*A046640(n+1)` -/
def P6612815178539165571.Spec : Prop :=
  ∀ n, P6612815178539165571.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P18287970501059500377

`2*A061468(n+1)-(n+3)`
-/

namespace A083245.P18287970501059500377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061468 (n + 1) - (n + 3 : ℤ)

end

end A083245.P18287970501059500377

namespace A083245

/-- `2*A061468(n+1)-(n+3)` -/
def P18287970501059500377.Spec : Prop :=
  ∀ n, P18287970501059500377.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P3560885877943918488

`A061468(n+1)-A046640(n+1)`
-/

namespace A083245.P3560885877943918488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A046640 (n + 1)

end

end A083245.P3560885877943918488

namespace A083245

/-- `A061468(n+1)-A046640(n+1)` -/
def P3560885877943918488.Spec : Prop :=
  ∀ n, P3560885877943918488.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P11540005542132463429

`A114003(n+1)+A074057(n+3)`
-/

namespace A083245.P11540005542132463429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + A074057 (n + 3)

end

end A083245.P11540005542132463429

namespace A083245

/-- `A114003(n+1)+A074057(n+3)` -/
def P11540005542132463429.Spec : Prop :=
  ∀ n, P11540005542132463429.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P3949212877787456515

`A073757(n+1)+1-A046640(n+1)`
-/

namespace A083245.P3949212877787456515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) + (1 - A046640 (n + 1))

end

end A083245.P3949212877787456515

namespace A083245

/-- `A073757(n+1)+1-A046640(n+1)` -/
def P3949212877787456515.Spec : Prop :=
  ∀ n, P3949212877787456515.a n = A083245 (n + 1)

theorem P3949212877787456515.correct : P3949212877787456515.Spec := by
  intro n
  simp only [A083245, Nat.add_sub_cancel, A083245.P3949212877787456515.a, A083245.P760659149355917661.a, A045763, A045763.P10750903732750680223.a, A046640, A046640.P10355392584185486359.a, A073757, A073757.P6861480467973211752.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083245

/-! ## A083245.P5963100380408864824

`2*(A000010(n+1)+A000005(n+1))-(n+3)`
-/

namespace A083245.P5963100380408864824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000010 (n + 1) + A000005 (n + 1)) - (n + 3 : ℤ)

end

end A083245.P5963100380408864824

namespace A083245

/-- `2*(A000010(n+1)+A000005(n+1))-(n+3)` -/
def P5963100380408864824.Spec : Prop :=
  ∀ n, P5963100380408864824.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P8078263459146736531

`A000005(n+1)+A000010(n+1)-A046640(n+1)`
-/

namespace A083245.P8078263459146736531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000010 (n + 1) - A046640 (n + 1))

end

end A083245.P8078263459146736531

namespace A083245

/-- `A000005(n+1)+A000010(n+1)-A046640(n+1)` -/
def P8078263459146736531.Spec : Prop :=
  ∀ n, P8078263459146736531.a n = A083245 (n + 1)

theorem P8078263459146736531.correct : P8078263459146736531.Spec := by
  intro n
  simp only [A083245, Nat.add_sub_cancel, A083245.P8078263459146736531.a, A083245.P760659149355917661.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A045763, A045763.P10750903732750680223.a, A046640, A046640.P10355392584185486359.a, A073757, A073757.P6861480467973211752.a, A003557, A003557.P6364735403900941810.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083245

/-! ## A083245.P1141870159629861583

`A073757(n+1)-(A051953(n+1)+1-A000005(n+1))`
-/

namespace A083245.P1141870159629861583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - (A051953 (n + 1) + 1 - A000005 (n + 1))

end

end A083245.P1141870159629861583

namespace A083245

/-- `A073757(n+1)-(A051953(n+1)+1-A000005(n+1))` -/
def P1141870159629861583.Spec : Prop :=
  ∀ n, P1141870159629861583.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P9759788740222812335

`A109606(n+1)+A000005(n+1)-(A046640(n+1)-1)`
-/

namespace A083245.P9759788740222812335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A000005 (n + 1) - (A046640 (n + 1) - 1)

end

end A083245.P9759788740222812335

namespace A083245

/-- `A109606(n+1)+A000005(n+1)-(A046640(n+1)-1)` -/
def P9759788740222812335.Spec : Prop :=
  ∀ n, P9759788740222812335.a n = A083245 (n + 1)

theorem P9759788740222812335.correct : P9759788740222812335.Spec := by
  intro n
  simp only [A083245, Nat.add_sub_cancel, A083245.P9759788740222812335.a, A083245.P760659149355917661.a, A000005, A000005.P16091521709108585461.a, A045763, A045763.P10750903732750680223.a, A046640, A046640.P10355392584185486359.a, A073757, A073757.P6861480467973211752.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083245

/-! ## A083245.P7904743550841788182

`A109606(n+1)+A000005(n+1)-(2-A061468(n+1)+n)`
-/

namespace A083245.P7904743550841788182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A000005 (n + 1) - (2 - A061468 (n + 1) + (n : ℤ))

end

end A083245.P7904743550841788182

namespace A083245

/-- `A109606(n+1)+A000005(n+1)-(2-A061468(n+1)+n)` -/
def P7904743550841788182.Spec : Prop :=
  ∀ n, P7904743550841788182.a n = A083245 (n + 1)

theorem P7904743550841788182.correct : P7904743550841788182.Spec := by
  intro n
  simp only [A083245, Nat.add_sub_cancel, A083245.P7904743550841788182.a, A083245.P760659149355917661.a, A000005, A000005.P16091521709108585461.a, A045763, A045763.P10750903732750680223.a, A061468, A061468.P9127133299873505687.a, A073757, A073757.P6861480467973211752.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083245

/-! ## A083245.P6184950911396627259

`A073757(n+1)+A020725(A073757(n+1))-A020725(n+1)`
-/

namespace A083245.P6184950911396627259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) + (A020725 (A073757 (n + 1)).toNat - A020725 (n + 1))

end

end A083245.P6184950911396627259

namespace A083245

/-- `A073757(n+1)+A020725(A073757(n+1))-A020725(n+1)` -/
def P6184950911396627259.Spec : Prop :=
  ∀ n, P6184950911396627259.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P15398435762441096149

`A109606(n+1)+A000005(n+1)-(A051953(n+1)+1-A000005(n+1))`
-/

namespace A083245.P15398435762441096149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A000005 (n + 1) - (A051953 (n + 1) + 1 - A000005 (n + 1))

end

end A083245.P15398435762441096149

namespace A083245

/-- `A109606(n+1)+A000005(n+1)-(A051953(n+1)+1-A000005(n+1))` -/
def P15398435762441096149.Spec : Prop :=
  ∀ n, P15398435762441096149.a n = A083245 (n + 1)

end A083245

/-! ## A083245.P6970529650873991709

`A073757(n+1)-(n+1-∑{d}[n+1, A000040(#+1)%2]-A109606(n+1))`
-/

namespace A083245.P6970529650873991709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - ((n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (d + 1)) 2 - A109606 (n + 1))

end

end A083245.P6970529650873991709

namespace A083245

/-- `A073757(n+1)-(n+1-∑{d}[n+1, A000040(#+1)%2]-A109606(n+1))` -/
def P6970529650873991709.Spec : Prop :=
  ∀ n, P6970529650873991709.a n = A083245 (n + 1)

end A083245

/-!
# A083247: Numbers k such that A000010(k) > A045763(k) > A000005(k).

The programs for A083247, there is no canonical definition to state claims against.
-/

/-! ## A083247.P820452723233491980

`lt[A020639(A167885(n+4)), A167866(n)]`
-/

namespace A083247.P820452723233491980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A167885 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083247.P820452723233491980

/-! ## A083247.P6248225832959542729

`lt[2*A210762(2*(n+1)), n]`
-/

namespace A083247.P6248225832959542729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210762 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083247.P6248225832959542729

/-! ## A083247.P9980653116250334549

`lt[A146749(n+3), A145891(n)]`
-/

namespace A083247.P9980653116250334549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146749 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083247.P9980653116250334549

/-! ## A083247.P1845125929917651406

`lt[43*A154694(n), A131980(n)]`
-/

namespace A083247.P1845125929917651406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  43 * A154694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083247.P1845125929917651406

/-! ## A083247.P6966796360958729576

`lt[A007318(n), A219347(A114952(n))]`
-/

namespace A083247.P6966796360958729576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A114952 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083247.P6966796360958729576

/-!
# A083248: Numbers k such that A045763(k) > A000010(k) > A000005(k).

The programs for A083248, there is no canonical definition to state claims against.
-/

/-! ## A083248.P10683012926007812164

`A076771(n+4)+A000007(A050531(n))`
-/

namespace A083248.P10683012926007812164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 4) + A000007 (A050531 n).toNat

end

end A083248.P10683012926007812164

/-! ## A083248.P11165072667129988039

`A076771(n+4)+A000038(A325951(n))`
-/

namespace A083248.P11165072667129988039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 4) + A000038 (A325951 n).toNat

end

end A083248.P11165072667129988039

/-! ## A083248.P8989074832183829945

`A076771(n+4)%A001235(A005915(n))`
-/

namespace A083248.P8989074832183829945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076771 (n + 4)) (A001235 (A005915 n).toNat)

end

end A083248.P8989074832183829945

/-! ## A083248.P8753493858850780706

`A000035(A229521(n+3))*A076771(n+4)`
-/

namespace A083248.P8753493858850780706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A229521 (n + 3)).toNat * A076771 (n + 4)

end

end A083248.P8753493858850780706

/-! ## A083248.P2518420141662129381

`A377130(A304972(3*n+5))+A076771(n+4)`
-/

namespace A083248.P2518420141662129381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377130 (A304972 (3 * n + 5)).toNat + A076771 (n + 4)

end

end A083248.P2518420141662129381

/-!
# A083249: Numbers k with A045763(k) = k + 1 - d(k) - phi(k) < d(k) < phi(k).

The programs for A083249, there is no canonical definition to state claims against.
-/

/-! ## A083249.P3060070435918554409

`record[A177951(A000005(n+1))+A000010(n+1)]`
-/

namespace A083249.P3060070435918554409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177951 (A000005 (n + 1)).toNat + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083249.P3060070435918554409

/-! ## A083249.P9720854315775210565

`eq[A040502(n), A072721(n)]`
-/

namespace A083249.P9720854315775210565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083249.P9720854315775210565

/-! ## A083249.P12813472610956931820

`eq[A040502(n), A211110(n)]`
-/

namespace A083249.P12813472610956931820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083249.P12813472610956931820

/-! ## A083249.P13741613657314081343

`eq[A040502(n), A322968(n)]`
-/

namespace A083249.P13741613657314081343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083249.P13741613657314081343

/-! ## A083249.P16014782938119891182

`eq[A040206(n), A331887(n)]`
-/

namespace A083249.P16014782938119891182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083249.P16014782938119891182

/-! ## A083249.P4023192909370486035

`eq[gcd(4, A186101(n)), A032741(n)]`
-/

namespace A083249.P4023192909370486035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A186101 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083249.P4023192909370486035

/-! ## A083249.P13841730979062911182

`eq[A000727(A300817(n)), A078898(n)]`
-/

namespace A083249.P13841730979062911182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000727 (A300817 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083249.P13841730979062911182

/-! ## A083249.P3461421025841763974

`eq[A010213(n), A326774(A032741(n))]`
-/

namespace A083249.P3461421025841763974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083249.P3461421025841763974

/-! ## A083249.P15098528712540968109

`eq[16, A000005(24*(n+1))]+1`
-/

namespace A083249.P15098528712540968109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (24 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083249.P15098528712540968109

/-! ## A083249.P4438961483434734624

`eq[16, A000005(4*A008458(n))]`
-/

namespace A083249.P4438961483434734624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083249.P4438961483434734624

/-! ## A083249.P7594492309193764217

`eq[16, A000005(6*A008574(n))]`
-/

namespace A083249.P7594492309193764217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083249.P7594492309193764217

/-! ## A083249.P16484474876093175926

`eq[16, A000005(A022144(3*n))]`
-/

namespace A083249.P16484474876093175926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022144 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083249.P16484474876093175926

/-! ## A083249.P2857066440758337578

`eq[A040338(n), A318691(n+1)]`
-/

namespace A083249.P2857066440758337578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083249.P2857066440758337578

/-! ## A083249.P15489189685147153926

`eq[A016116(A300817(n)), A318691(n+1)]`
-/

namespace A083249.P15489189685147153926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A300817 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083249.P15489189685147153926

/-!
# A083251: Numbers m such that abs(A045763(m) - A073757(m)) = 2, i.e., signed difference of size of related and unrelated sets to n equals either 2 or -2.

The programs for A083251, the canonical program `A083251.P14965405990869838222` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083251 has offset 1).

The definition of A083251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083251.P14965405990869838222

`eq[2, abs(A083245(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A083251

/-- `eq[2, abs(A083245(n+1))]+1` -/
def P14965405990869838222.Spec : Prop :=
  ∀ n, (P14965405990869838222.a n : ℤ) = A083251 (n + 1)

theorem P14965405990869838222.correct : P14965405990869838222.Spec := by
  intro n
  simp only [A083251, Nat.add_sub_cancel]

end A083251

/-! ## A083251.P6376977388854449390

`eq[2, abs(A083245(A028310(n)))]`
-/

namespace A083251.P6376977388854449390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083245 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083251.P6376977388854449390

namespace A083251

/-- `eq[2, abs(A083245(A028310(n)))]` -/
def P6376977388854449390.Spec : Prop :=
  ∀ n, (P6376977388854449390.a n : ℤ) = A083251 (n + 1)

end A083251

/-! ## A083251.P7756317618275663247

`A014681(eq[2, abs(A083245(n+1))])`
-/

namespace A083251.P7756317618275663247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083245 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083251.P7756317618275663247

namespace A083251

/-- `A014681(eq[2, abs(A083245(n+1))])` -/
def P7756317618275663247.Spec : Prop :=
  ∀ n, P7756317618275663247.a n = A083251 (n + 1)

end A083251

/-! ## A083251.P13394837296584801346

`eq[2, abs(A083245(A000007(n)+n))]`
-/

namespace A083251.P13394837296584801346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083245 (A000007 n + (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083251.P13394837296584801346

namespace A083251

/-- `eq[2, abs(A083245(A000007(n)+n))]` -/
def P13394837296584801346.Spec : Prop :=
  ∀ n, (P13394837296584801346.a n : ℤ) = A083251 (n + 1)

end A083251

/-!
# A083254: a(n) = 2*phi(n) - n.

The programs for A083254, the canonical program `A083254.P14519512853932888104` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083254 has offset 1).

The definition of A083254 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083254.P15578909591330423957

`A117966(A297154(n+1))`
-/

namespace A083254.P15578909591330423957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A297154 (n + 1)).toNat

end

end A083254.P15578909591330423957

namespace A083254

/-- `A117966(A297154(n+1))` -/
def P15578909591330423957.Spec : Prop :=
  ∀ n, P15578909591330423957.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P16041595813390939935

`A297114(n+1)+A297115(n+1)`
-/

namespace A083254.P16041595813390939935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (n + 1) + A297115 (n + 1)

end

end A083254.P16041595813390939935

namespace A083254

/-- `A297114(n+1)+A297115(n+1)` -/
def P16041595813390939935.Spec : Prop :=
  ∀ n, P16041595813390939935.a n = A083254 (n + 1)

theorem P16041595813390939935.correct : P16041595813390939935.Spec := by
  intro n
  simp only [A083254, Nat.add_sub_cancel, A083254.P16041595813390939935.a, A083254.P14519512853932888104.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P12093122754958550118.a, A297114, A297114.P2765220314566008295.a, A297115, A297115.P17041612972225485539.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A297111, A297111.P9451184863548072993.a, A318305, A318305.P17845263951644339002.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083254

/-! ## A083254.P14519512853932888104

`A000010(n+1)-A051953(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A083254

/-- `A000010(n+1)-A051953(n+1)` -/
def P14519512853932888104.Spec : Prop :=
  ∀ n, P14519512853932888104.a n = A083254 (n + 1)

theorem P14519512853932888104.correct : P14519512853932888104.Spec := by
  intro n
  simp only [A083254, Nat.add_sub_cancel]

end A083254

/-! ## A083254.P15954396604115756666

`A065620(A297153(n+1))`
-/

namespace A083254.P15954396604115756666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A297153 (n + 1)).toNat

end

end A083254.P15954396604115756666

namespace A083254

/-- `A065620(A297153(n+1))` -/
def P15954396604115756666.Spec : Prop :=
  ∀ n, P15954396604115756666.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P11902476937366349152

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)`
-/

namespace A083254.P11902476937366349152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A083254.P11902476937366349152

namespace A083254

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)` -/
def P11902476937366349152.Spec : Prop :=
  ∀ n, P11902476937366349152.a n = (A083254 (n + 1) : ℚ)

end A083254

/-! ## A083254.P17975506724802316278

`A074057(n+3)+1`
-/

namespace A083254.P17975506724802316278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074057 (n + 3) + 1

end

end A083254.P17975506724802316278

namespace A083254

/-- `A074057(n+3)+1` -/
def P17975506724802316278.Spec : Prop :=
  ∀ n, P17975506724802316278.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P6871933258837096645

`Δ[2*A002088(n)]-(n+1)`
-/

namespace A083254.P6871933258837096645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A083254.P6871933258837096645

namespace A083254

/-- `Δ[2*A002088(n)]-(n+1)` -/
def P6871933258837096645.Spec : Prop :=
  ∀ n, P6871933258837096645.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P11434051749176723341

`2*A109606(n+1)+1-n`
-/

namespace A083254.P11434051749176723341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109606 (n + 1) + (1 - (n : ℤ))

end

end A083254.P11434051749176723341

namespace A083254

/-- `2*A109606(n+1)+1-n` -/
def P11434051749176723341.Spec : Prop :=
  ∀ n, P11434051749176723341.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P10174754547326904260

`A319998(2*(n+1))-(n+1)`
-/

namespace A083254.P10174754547326904260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A083254.P10174754547326904260

namespace A083254

/-- `A319998(2*(n+1))-(n+1)` -/
def P10174754547326904260.Spec : Prop :=
  ∀ n, P10174754547326904260.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P10491077537168527742

`A000010(lcm(4, 2*(n+1)))-(n+1)`
-/

namespace A083254.P10491077537168527742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm 4 (2 * (n + 1))) - (n + 1 : ℤ)

end

end A083254.P10491077537168527742

namespace A083254

/-- `A000010(lcm(4, 2*(n+1)))-(n+1)` -/
def P10491077537168527742.Spec : Prop :=
  ∀ n, P10491077537168527742.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P4166333109473056505

`A071118(n+1)/(n+1)-(n+1)`
-/

namespace A083254.P4166333109473056505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A083254.P4166333109473056505

namespace A083254

/-- `A071118(n+1)/(n+1)-(n+1)` -/
def P4166333109473056505.Spec : Prop :=
  ∀ n, P4166333109473056505.a n = (A083254 (n + 1) : ℚ)

end A083254

/-! ## A083254.P8636658491654187390

`∑{d}[n+1, #*A378225((n+1)/#)]`
-/

namespace A083254.P8636658491654187390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A083254.P8636658491654187390

namespace A083254

/-- `∑{d}[n+1, #*A378225((n+1)/#)]` -/
def P8636658491654187390.Spec : Prop :=
  ∀ n, P8636658491654187390.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P13769000255508933944

`A004273(A000010(n+1))-n`
-/

namespace A083254.P13769000255508933944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000010 (n + 1)).toNat - (n : ℤ)

end

end A083254.P13769000255508933944

namespace A083254

/-- `A004273(A000010(n+1))-n` -/
def P13769000255508933944.Spec : Prop :=
  ∀ n, P13769000255508933944.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P3221303534248231672

`A005408(A109606(n+1))-n`
-/

namespace A083254.P3221303534248231672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A109606 (n + 1)).toNat - (n : ℤ)

end

end A083254.P3221303534248231672

namespace A083254

/-- `A005408(A109606(n+1))-n` -/
def P3221303534248231672.Spec : Prop :=
  ∀ n, P3221303534248231672.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P4027912203600080354

`Δ[A002088(n)]-A051953(n+1)`
-/

namespace A083254.P4027912203600080354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A051953 (n + 1)

end

end A083254.P4027912203600080354

namespace A083254

/-- `Δ[A002088(n)]-A051953(n+1)` -/
def P4027912203600080354.Spec : Prop :=
  ∀ n, P4027912203600080354.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P419468592393230727

`Δ[A005728(n)]-A051953(n+1)`
-/

namespace A083254.P419468592393230727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A051953 (n + 1)

end

end A083254.P419468592393230727

namespace A083254

/-- `Δ[A005728(n)]-A051953(n+1)` -/
def P419468592393230727.Spec : Prop :=
  ∀ n, P419468592393230727.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P5527330764844174031

`Δ[2*A002088(n)-A000217(n)]`
-/

namespace A083254.P5527330764844174031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002088 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083254.P5527330764844174031

namespace A083254

/-- `Δ[2*A002088(n)-A000217(n)]` -/
def P5527330764844174031.Spec : Prop :=
  ∀ n, P5527330764844174031.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P3287671820094951799

`A000010(A110192(n+1))-(n+1)`
-/

namespace A083254.P3287671820094951799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A110192 (n + 1)).toNat - (n + 1 : ℤ)

end

end A083254.P3287671820094951799

namespace A083254

/-- `A000010(A110192(n+1))-(n+1)` -/
def P3287671820094951799.Spec : Prop :=
  ∀ n, P3287671820094951799.a n = A083254 (n + 1)

end A083254

/-! ## A083254.P10531076259651447141

`A079530(n+1)-A079532(n+1)`
-/

namespace A083254.P10531076259651447141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079530 (n + 1) - A079532 (n + 1)

end

end A083254.P10531076259651447141

namespace A083254

/-- `A079530(n+1)-A079532(n+1)` -/
def P10531076259651447141.Spec : Prop :=
  ∀ n, P10531076259651447141.a n = A083254 (n + 1)

theorem P10531076259651447141.correct : P10531076259651447141.Spec := by
  intro n
  simp only [A083254, Nat.add_sub_cancel, A083254.P10531076259651447141.a, A083254.P14519512853932888104.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P12093122754958550118.a, A079530, A079530.P12744078454568212387.a, A079532, A079532.P14893760689655914217.a, A003557, A003557.P6364735403900941810.a, A053158, A053158.P12394903761097819487.a, A121048, A121048.P10222907602682812102.a, A135668, A135668.P8218061950587313652.a, A173557, A173557.P15666735857375843373.a, A318305, A318305.P17845263951644339002.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A083254

/-! ## A083254.P5754988725748256367

`A121048(n+1)-A053158(n+1)`
-/

namespace A083254.P5754988725748256367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A053158 (n + 1)

end

end A083254.P5754988725748256367

namespace A083254

/-- `A121048(n+1)-A053158(n+1)` -/
def P5754988725748256367.Spec : Prop :=
  ∀ n, P5754988725748256367.a n = A083254 (n + 1)

theorem P5754988725748256367.correct : P5754988725748256367.Spec := by
  intro n
  simp only [A083254, Nat.add_sub_cancel, A083254.P5754988725748256367.a, A083254.P14519512853932888104.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P12093122754958550118.a, A053158, A053158.P12394903761097819487.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A318305, A318305.P17845263951644339002.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083254

/-!
# A083256: a(n) = A046523(n-th nonprime number) = A046523(A018252(n)).

The programs for A083256, the canonical program `A083256.P15049022721426564056` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083256 has offset 1).

The definition of A083256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083256.P15049022721426564056

`A046523(A018252(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A083256

/-- `A046523(A018252(n+1))` -/
def P15049022721426564056.Spec : Prop :=
  ∀ n, P15049022721426564056.a n = A083256 (n + 1)

theorem P15049022721426564056.correct : P15049022721426564056.Spec := by
  intro n
  simp only [A083256, Nat.add_sub_cancel]

end A083256

/-! ## A083256.P16695583844275876920

`A046523(A083257(n+1))`
-/

namespace A083256.P16695583844275876920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A083257 (n + 1)).toNat

end

end A083256.P16695583844275876920

namespace A083256

/-- `A046523(A083257(n+1))` -/
def P16695583844275876920.Spec : Prop :=
  ∀ n, P16695583844275876920.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P16506503538775125657

`A046523(comp[p?[xor(1, n)]-1]+1)`
-/

namespace A083256.P16506503538775125657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083256.P16506503538775125657

namespace A083256

/-- `A046523(comp[p?[xor(1, n)]-1]+1)` -/
def P16506503538775125657.Spec : Prop :=
  ∀ n, P16506503538775125657.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P4919403447405368677

`A046523(Δ[A051349(n)])`
-/

namespace A083256.P4919403447405368677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (n + 1) - f1 n).toNat

end

end A083256.P4919403447405368677

namespace A083256

/-- `A046523(Δ[A051349(n)])` -/
def P4919403447405368677.Spec : Prop :=
  ∀ n, P4919403447405368677.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P463035547613935875

`A046523(A141468(n+2))`
-/

namespace A083256.P463035547613935875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A141468 (n + 2)).toNat

end

end A083256.P463035547613935875

namespace A083256

/-- `A046523(A141468(n+2))` -/
def P463035547613935875.Spec : Prop :=
  ∀ n, P463035547613935875.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P12303268833827658415

`A046523(comp[A182986(n+1)])`
-/

namespace A083256.P12303268833827658415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A083256.P12303268833827658415

namespace A083256

/-- `A046523(comp[A182986(n+1)])` -/
def P12303268833827658415.Spec : Prop :=
  ∀ n, P12303268833827658415.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P995259724398207952

`filter[A046523(n+1), A005171(#)]`
-/

namespace A083256.P995259724398207952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A083256.P995259724398207952

namespace A083256

/-- `filter[A046523(n+1), A005171(#)]` -/
def P995259724398207952.Spec : Prop :=
  ∀ n, P995259724398207952.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P16546276234547989261

`filter[A046523(n+1), A093521(#)]`
-/

namespace A083256.P16546276234547989261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A083256.P16546276234547989261

namespace A083256

/-- `filter[A046523(n+1), A093521(#)]` -/
def P16546276234547989261.Spec : Prop :=
  ∀ n, P16546276234547989261.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P697414002144680743

`filter[A046523(n+1), A267621(#)]`
-/

namespace A083256.P697414002144680743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267621 (f1 j).toNat = 1) n)

end

end A083256.P697414002144680743

namespace A083256

/-- `filter[A046523(n+1), A267621(#)]` -/
def P697414002144680743.Spec : Prop :=
  ∀ n, P697414002144680743.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P11195802852641363954

`filter[A046523(n+1), A267919(#)]`
-/

namespace A083256.P11195802852641363954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267919 (f1 j).toNat = 1) n)

end

end A083256.P11195802852641363954

namespace A083256

/-- `filter[A046523(n+1), A267919(#)]` -/
def P11195802852641363954.Spec : Prop :=
  ∀ n, P11195802852641363954.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P15635612729610790415

`filter[A046523(n+1), A283265(#)]`
-/

namespace A083256.P15635612729610790415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A083256.P15635612729610790415

namespace A083256

/-- `filter[A046523(n+1), A283265(#)]` -/
def P15635612729610790415.Spec : Prop :=
  ∀ n, P15635612729610790415.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P7406340027410181419

`A046523(comp[record[A000010(n+1)]]+1)`
-/

namespace A083256.P7406340027410181419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083256.P7406340027410181419

namespace A083256

/-- `A046523(comp[record[A000010(n+1)]]+1)` -/
def P7406340027410181419.Spec : Prop :=
  ∀ n, P7406340027410181419.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P16098211130392265119

`A046523(comp[A000040(n+1)-1]+1)`
-/

namespace A083256.P16098211130392265119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083256.P16098211130392265119

namespace A083256

/-- `A046523(comp[A000040(n+1)-1]+1)` -/
def P16098211130392265119.Spec : Prop :=
  ∀ n, P16098211130392265119.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P12313779813318474469

`A046523(A073846(2*n+1))`
-/

namespace A083256.P12313779813318474469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A073846 (2 * n + 1)).toNat

end

end A083256.P12313779813318474469

namespace A083256

/-- `A046523(A073846(2*n+1))` -/
def P12313779813318474469.Spec : Prop :=
  ∀ n, P12313779813318474469.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P7442404359955194839

`A046523(A046523(A073846(n+1+n)))`
-/

namespace A083256.P7442404359955194839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A046523 (A073846 (n + 1 + n)).toNat).toNat

end

end A083256.P7442404359955194839

namespace A083256

/-- `A046523(A046523(A073846(n+1+n)))` -/
def P7442404359955194839.Spec : Prop :=
  ∀ n, P7442404359955194839.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P9778602999057033864

`A046523(comp[A047814(n)])`
-/

namespace A083256.P9778602999057033864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A083256.P9778602999057033864

namespace A083256

/-- `A046523(comp[A047814(n)])` -/
def P9778602999057033864.Spec : Prop :=
  ∀ n, P9778602999057033864.a n = A083256 (n + 1)

end A083256

/-! ## A083256.P7151213003924746849

`A046523(comp[A331044(n)])`
-/

namespace A083256.P7151213003924746849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A083256.P7151213003924746849

namespace A083256

/-- `A046523(comp[A331044(n)])` -/
def P7151213003924746849.Spec : Prop :=
  ∀ n, P7151213003924746849.a n = A083256 (n + 1)

end A083256

/-!
# A083257: a(n) = A071364(n-th nonprime number) = A071364(A018252(n)).

The programs for A083257, there is no canonical definition to state claims against.
-/

/-! ## A083257.P11858330648964855817

`A071364(A018252(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083257.P11858330648964855817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A018252 (n + 1)).toNat

end

end A083257.P11858330648964855817

/-! ## A083257.P9943472886412179195

`A071364(comp[p?[xor(1, n)+1]-1]+1)`
-/

namespace A083257.P9943472886412179195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083257.P9943472886412179195

/-! ## A083257.P5752693813759594775

`A071364(Δ[A051349(n)])`
-/

namespace A083257.P5752693813759594775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (f1 (n + 1) - f1 n).toNat

end

end A083257.P5752693813759594775

/-! ## A083257.P5651884502289570162

`A071364(A141468(n+2))`
-/

namespace A083257.P5651884502289570162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A141468 (n + 2)).toNat

end

end A083257.P5651884502289570162

/-! ## A083257.P570752696474492544

`A071364(comp[record[A000010(n+1)]]+1)`
-/

namespace A083257.P570752696474492544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083257.P570752696474492544

/-! ## A083257.P15195376630086408278

`A071364(comp[∑{p}[record[A020639(n+1)], #]])`
-/

namespace A083257.P15195376630086408278
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A083257.P15195376630086408278

/-! ## A083257.P7915214267582067922

`A071364(comp[A000040(n+1)-1]+1)`
-/

namespace A083257.P7915214267582067922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083257.P7915214267582067922

/-! ## A083257.P6893816233042441296

`A071364(comp[A020639(n+2)-1]+1)`
-/

namespace A083257.P6893816233042441296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A083257.P6893816233042441296

/-! ## A083257.P12026220785155160894

`A071364(record[A005451(n+1)])`
-/

namespace A083257.P12026220785155160894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083257.P12026220785155160894

/-! ## A083257.P5133883652321386729

`filter[A071364(n+1), A005171(#)]`
-/

namespace A083257.P5133883652321386729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A083257.P5133883652321386729

/-! ## A083257.P5057757381409108643

`filter[A071364(n+1), A093521(#)]`
-/

namespace A083257.P5057757381409108643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A083257.P5057757381409108643

/-! ## A083257.P6887254244939158860

`filter[A071364(n+1), A267621(#)]`
-/

namespace A083257.P6887254244939158860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267621 (f1 j).toNat = 1) n)

end

end A083257.P6887254244939158860

/-! ## A083257.P18213559511826908579

`filter[A071364(n+1), A267919(#)]`
-/

namespace A083257.P18213559511826908579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267919 (f1 j).toNat = 1) n)

end

end A083257.P18213559511826908579

/-! ## A083257.P739487159814957304

`filter[A071364(n+1), A283265(#)]`
-/

namespace A083257.P739487159814957304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A083257.P739487159814957304

/-!
# A083258: a(n) = gcd(A046523(n), n).

The programs for A083258, the canonical program `A083258.P17521307318890347805` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083258 has offset 1).

The definition of A083258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083258.P13873478584529122159

`gcd(n+1, A046523(n+1))`
-/

namespace A083258.P13873478584529122159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A046523 (n + 1))

end

end A083258.P13873478584529122159

namespace A083258

/-- `gcd(n+1, A046523(n+1))` -/
def P13873478584529122159.Spec : Prop :=
  ∀ n, (P13873478584529122159.a n : ℤ) = A083258 (n + 1)

end A083258

/-! ## A083258.P17521307318890347805

`gcd(A046523(n+1), n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A083258

/-- `gcd(A046523(n+1), n+1)` -/
def P17521307318890347805.Spec : Prop :=
  ∀ n, (P17521307318890347805.a n : ℤ) = A083258 (n + 1)

theorem P17521307318890347805.correct : P17521307318890347805.Spec := by
  intro n
  simp only [A083258, Nat.add_sub_cancel]

end A083258

/-! ## A083258.P593941849058713317

`sqrt(gcd((n+1)², A278254(n+1)))`
-/

namespace A083258.P593941849058713317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd ((n + 1) ^ 2 : ℤ) (A278254 (n + 1)) : ℝ)

end

end A083258.P593941849058713317

namespace A083258

/-- `sqrt(gcd((n+1)², A278254(n+1)))` -/
def P593941849058713317.Spec : Prop :=
  ∀ n, P593941849058713317.a n = (A083258 (n + 1) : ℝ)

end A083258

/-! ## A083258.P4345837313479009844

`gcd(37*(n+1), A025487(A101296(n+1)))`
-/

namespace A083258.P4345837313479009844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (37 * (n + 1) : ℤ) (A025487 (A101296 (n + 1)).toNat)

end

end A083258.P4345837313479009844

namespace A083258

/-- `gcd(37*(n+1), A025487(A101296(n+1)))` -/
def P4345837313479009844.Spec : Prop :=
  ∀ n, (P4345837313479009844.a n : ℤ) = A083258 (n + 1)

end A083258

/-! ## A083258.P13545691693220628963

`gcd(A000027(n+1), A083260(A089247(n+1)))`
-/

namespace A083258.P13545691693220628963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A083260 (A089247 (n + 1)).toNat)

end

end A083258.P13545691693220628963

namespace A083258

/-- `gcd(A000027(n+1), A083260(A089247(n+1)))` -/
def P13545691693220628963.Spec : Prop :=
  ∀ n, (P13545691693220628963.a n : ℤ) = A083258 (n + 1)

end A083258

/-! ## A083258.P1726813285435267007

`gcd(A062758(n+1), A083260(n+1))`
-/

namespace A083258.P1726813285435267007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062758 (n + 1)) (A083260 (n + 1))

end

end A083258.P1726813285435267007

namespace A083258

/-- `gcd(A062758(n+1), A083260(n+1))` -/
def P1726813285435267007.Spec : Prop :=
  ∀ n, (P1726813285435267007.a n : ℤ) = A083258 (n + 1)

end A083258

/-! ## A083258.P14631061926271020446

`gcd(A108951(A238745(n+1)), A253560(n+1))`
-/

namespace A083258.P14631061926271020446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108951 (A238745 (n + 1)).toNat) (A253560 (n + 1))

end

end A083258.P14631061926271020446

namespace A083258

/-- `gcd(A108951(A238745(n+1)), A253560(n+1))` -/
def P14631061926271020446.Spec : Prop :=
  ∀ n, (P14631061926271020446.a n : ℤ) = A083258 (n + 1)

end A083258

/-! ## A083258.P15557452464582888690

`gcd((n+1)*A000040(n+1), A278525(A241916(n+1)))`
-/

namespace A083258.P15557452464582888690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A000040 (n + 1)) (A278525 (A241916 (n + 1)).toNat)

end

end A083258.P15557452464582888690

namespace A083258

/-- `gcd((n+1)*A000040(n+1), A278525(A241916(n+1)))` -/
def P15557452464582888690.Spec : Prop :=
  ∀ n, (P15557452464582888690.a n : ℤ) = A083258 (n + 1)

end A083258

/-! ## A083258.P10674573949667719982

`gcd(A193231(A193231(n+1)), A292589((n+1)*(n+1)))`
-/

namespace A083258.P10674573949667719982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193231 (A193231 (n + 1)).toNat) (A292589 ((n + 1) * (n + 1)))

end

end A083258.P10674573949667719982

namespace A083258

/-- `gcd(A193231(A193231(n+1)), A292589((n+1)*(n+1)))` -/
def P10674573949667719982.Spec : Prop :=
  ∀ n, (P10674573949667719982.a n : ℤ) = A083258 (n + 1)

end A083258

/-!
# A083259: a(n) = gcd(n, A071364(n)), where A071364(n) is the smallest number with same sequence of exponents in canonical prime factorization as n.

The programs for A083259, there is no canonical definition to state claims against.
-/

/-! ## A083259.P9457182988696915448

`gcd(n+1, A071364(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083259.P9457182988696915448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A071364 (n + 1))

end

end A083259.P9457182988696915448

/-! ## A083259.P2296423129521282927

`gcd(A071364(n+1), A131738(n))`
-/

namespace A083259.P2296423129521282927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071364 (n + 1)) (A131738 n)

end

end A083259.P2296423129521282927

/-! ## A083259.P14800812916196302325

`gcd(A071364(A080513(2*n)), A080513(2*n))`
-/

namespace A083259.P14800812916196302325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071364 (A080513 (2 * n)).toNat) (A080513 (2 * n))

end

end A083259.P14800812916196302325

/-! ## A083259.P14424453486332915556

`gcd(A000027(n+1), A122111(A329607(n+1)))`
-/

namespace A083259.P14424453486332915556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A122111 (A329607 (n + 1)).toNat)

end

end A083259.P14424453486332915556

/-! ## A083259.P13887831594746940023

`gcd(A060401(n+1), A329600(n+1))`
-/

namespace A083259.P13887831594746940023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060401 (n + 1)) (A329600 (n + 1))

end

end A083259.P13887831594746940023

/-! ## A083259.P11607014345511456112

`gcd(A020338(n+1), A329600(A329600(n+1)))`
-/

namespace A083259.P11607014345511456112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020338 (n + 1)) (A329600 (A329600 (n + 1)).toNat)

end

end A083259.P11607014345511456112

/-! ## A083259.P1516758320547959025

`A050873(A071364(n+1)+∑[n])`
-/

namespace A083259.P1516758320547959025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A071364 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A083259.P1516758320547959025

/-!
# A083260: a(n) = gcd(A046523(n), A071364(n)).

The programs for A083260, there is no canonical definition to state claims against.
-/

/-! ## A083260.P808105869975152968

`gcd(A046523(n+1), A071364(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083260.P808105869975152968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046523 (n + 1)) (A071364 (n + 1))

end

end A083260.P808105869975152968

/-! ## A083260.P11890033377595627292

`A083258(A071364(n+1))`
-/

namespace A083260.P11890033377595627292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (A071364 (n + 1)).toNat

end

end A083260.P11890033377595627292

/-! ## A083260.P1485230370108528050

`A071364(gcd(n+1, A089247(n+1)))`
-/

namespace A083260.P1485230370108528050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.gcd (n + 1 : ℤ) (A089247 (n + 1)))

end

end A083260.P1485230370108528050

/-! ## A083260.P10066251157585311239

`A328479(83*A071364(n+1))`
-/

namespace A083260.P10066251157585311239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (83 * A071364 (n + 1)).toNat

end

end A083260.P10066251157585311239

/-! ## A083260.P6900815818147918672

`gcd(A033833(n+1), A328479(A071364(n+1)))`
-/

namespace A083260.P6900815818147918672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033833 (n + 1)) (A328479 (A071364 (n + 1)).toNat)

end

end A083260.P6900815818147918672

/-! ## A083260.P6304242255221547818

`A046523(gcd(A069799(n+1), A085079(n+1)))`
-/

namespace A083260.P6304242255221547818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.gcd (A069799 (n + 1)) (A085079 (n + 1)))

end

end A083260.P6304242255221547818

/-! ## A083260.P15648535252668880293

`A046523(gcd(A320389(n+1), A331580(n+1)))`
-/

namespace A083260.P15648535252668880293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.gcd (A320389 (n + 1)) (A331580 (n + 1)))

end

end A083260.P15648535252668880293

/-! ## A083260.P16137549082883596916

`A046523((A331580(n+1)+A320389(n+1))/2)`
-/

namespace A083260.P16137549082883596916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A331580 (n + 1) + A320389 (n + 1) : ℚ) / 2)).toNat

end

end A083260.P16137549082883596916

/-! ## A083260.P5530304308664551864

`gcd(A071364(n+1), A204093(A046092(n)))`
-/

namespace A083260.P5530304308664551864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071364 (n + 1)) (A204093 (A046092 n).toNat)

end

end A083260.P5530304308664551864

/-!
# A083261: a(n) = gcd(A046523(n+1), A046523(n)).

The programs for A083261, the canonical program `A083261.P7276315028419355886` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083261 has offset 1).

The definition of A083261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083261.P1420882788985832240

`gcd(A046523(n+1), A046523(n+2))`
-/

namespace A083261.P1420882788985832240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046523 (n + 1)) (A046523 (n + 2))

end

end A083261.P1420882788985832240

namespace A083261

/-- `gcd(A046523(n+1), A046523(n+2))` -/
def P1420882788985832240.Spec : Prop :=
  ∀ n, (P1420882788985832240.a n : ℤ) = A083261 (n + 1)

end A083261

/-! ## A083261.P7276315028419355886

`gcd(A046523(n+2), A046523(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A083261

/-- `gcd(A046523(n+2), A046523(n+1))` -/
def P7276315028419355886.Spec : Prop :=
  ∀ n, (P7276315028419355886.a n : ℤ) = A083261 (n + 1)

theorem P7276315028419355886.correct : P7276315028419355886.Spec := by
  intro n
  simp only [A083261, Nat.add_sub_cancel]

end A083261

/-! ## A083261.P910923385927606962

`sqrt(gcd(A278254(n+1), A278254(n+2)))`
-/

namespace A083261.P910923385927606962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A278254 (n + 1)) (A278254 (n + 2)) : ℝ)

end

end A083261.P910923385927606962

namespace A083261

/-- `sqrt(gcd(A278254(n+1), A278254(n+2)))` -/
def P910923385927606962.Spec : Prop :=
  ∀ n, P910923385927606962.a n = (A083261 (n + 1) : ℝ)

end A083261

/-! ## A083261.P14903110830848824628

`A124859(gcd(A124859(n+1), A124859(n+2)))`
-/

namespace A083261.P14903110830848824628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (Int.gcd (A124859 (n + 1)) (A124859 (n + 2)))

end

end A083261.P14903110830848824628

namespace A083261

/-- `A124859(gcd(A124859(n+1), A124859(n+2)))` -/
def P14903110830848824628.Spec : Prop :=
  ∀ n, P14903110830848824628.a n = A083261 (n + 1)

end A083261

/-! ## A083261.P15643447443168628189

`gcd(lcm(A083260(n+1), A212173(n+1)), A181821(A181819(n+2)))`
-/

namespace A083261.P15643447443168628189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lcm (A083260 (n + 1)) (A212173 (n + 1)) : ℤ) (A181821 (A181819 (n + 2)).toNat)

end

end A083261.P15643447443168628189

namespace A083261

/-- `gcd(lcm(A083260(n+1), A212173(n+1)), A181821(A181819(n+2)))` -/
def P15643447443168628189.Spec : Prop :=
  ∀ n, (P15643447443168628189.a n : ℤ) = A083261 (n + 1)

end A083261

/-! ## A083261.P4014770056324404649

`gcd(A089247(A071364(n+1)), A278264(A064413(n+2)))`
-/

namespace A083261.P4014770056324404649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089247 (A071364 (n + 1)).toNat) (A278264 (A064413 (n + 2)).toNat)

end

end A083261.P4014770056324404649

namespace A083261

/-- `gcd(A089247(A071364(n+1)), A278264(A064413(n+2)))` -/
def P4014770056324404649.Spec : Prop :=
  ∀ n, (P4014770056324404649.a n : ℤ) = A083261 (n + 1)

end A083261

/-! ## A083261.P4142277321656117174

`gcd(Δ[A278264(A064413(n+1))], A278264(A064413(n+1)))`
-/

namespace A083261.P4142277321656117174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A278264 (A064413 (n + 1)).toNat)

end

end A083261.P4142277321656117174

namespace A083261

/-- `gcd(Δ[A278264(A064413(n+1))], A278264(A064413(n+1)))` -/
def P4142277321656117174.Spec : Prop :=
  ∀ n, (P4142277321656117174.a n : ℤ) = A083261 (n + 1)

end A083261

/-! ## A083261.P953962054996799222

`gcd(A089247(A071364(n+2)), A278263(A064664(n+1)))`
-/

namespace A083261.P953962054996799222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089247 (A071364 (n + 2)).toNat) (A278263 (A064664 (n + 1)).toNat)

end

end A083261.P953962054996799222

namespace A083261

/-- `gcd(A089247(A071364(n+2)), A278263(A064664(n+1)))` -/
def P953962054996799222.Spec : Prop :=
  ∀ n, (P953962054996799222.a n : ℤ) = A083261 (n + 1)

end A083261

/-! ## A083261.P14048620493883719665

`gcd(sqrt(A278259(2*(n+1))), Δ[sqrt(A278259(2*(n+1)))])`
-/

namespace A083261.P14048620493883719665
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278259 (2 * (n + 1)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A278259 (2 * (n + 1)) : ℝ))) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A083261.P14048620493883719665

namespace A083261

/-- `gcd(sqrt(A278259(2*(n+1))), Δ[sqrt(A278259(2*(n+1)))])` -/
def P14048620493883719665.Spec : Prop :=
  ∀ n, (P14048620493883719665.a n : ℤ) = A083261 (n + 1)

end A083261

/-! ## A083261.P367136642122513008

`A003989(A286255(n+1))`
-/

namespace A083261.P367136642122513008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A286255 (n + 1)).toNat

end

end A083261.P367136642122513008

namespace A083261

/-- `A003989(A286255(n+1))` -/
def P367136642122513008.Spec : Prop :=
  ∀ n, P367136642122513008.a n = A083261 (n + 1)

end A083261

/-!
# A083262: a(n) = sigma(A046523(n)), sum of divisors of the least number with the same prime signature as n.

The programs for A083262, the canonical program `A083262.P10914736835129619845` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083262 has offset 1).

The definition of A083262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083262.P10914736835129619845

`∑{d}[A046523(n+1), #]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A083262

/-- `∑{d}[A046523(n+1), #]` -/
def P10914736835129619845.Spec : Prop :=
  ∀ n, (P10914736835129619845.a n : ℤ) = A083262 (n + 1)

theorem P10914736835129619845.correct : P10914736835129619845.Spec := by
  intro n
  simp only [A083262, Nat.add_sub_cancel]

end A083262

/-! ## A083262.P17404034644061857548

`∑{d}[sqrt(A278254(n+1)), #]`
-/

namespace A083262.P17404034644061857548
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A083262.P17404034644061857548

namespace A083262

/-- `∑{d}[sqrt(A278254(n+1)), #]` -/
def P17404034644061857548.Spec : Prop :=
  ∀ n, (P17404034644061857548.a n : ℤ) = A083262 (n + 1)

end A083262

/-! ## A083262.P9825236339613960393

`A000203(A046523(n+1))`
-/

namespace A083262.P9825236339613960393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A046523 (n + 1)).toNat

end

end A083262.P9825236339613960393

namespace A083262

/-- `A000203(A046523(n+1))` -/
def P9825236339613960393.Spec : Prop :=
  ∀ n, P9825236339613960393.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P15724204065898556570

`A356425(A101296(n+1))`
-/

namespace A083262.P15724204065898556570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356425 (A101296 (n + 1)).toNat

end

end A083262.P15724204065898556570

namespace A083262

/-- `A356425(A101296(n+1))` -/
def P15724204065898556570.Spec : Prop :=
  ∀ n, P15724204065898556570.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P13828382643236530785

`A000203(sqrt(A278254(n+1)))`
-/

namespace A083262.P13828382643236530785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A278254 (n + 1) : ℝ))).toNat

end

end A083262.P13828382643236530785

namespace A083262

/-- `A000203(sqrt(A278254(n+1)))` -/
def P13828382643236530785.Spec : Prop :=
  ∀ n, P13828382643236530785.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P9171827469654918367

`∑{d}[A181821(A181819(n+1)), #]`
-/

namespace A083262.P9171827469654918367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A083262.P9171827469654918367

namespace A083262

/-- `∑{d}[A181821(A181819(n+1)), #]` -/
def P9171827469654918367.Spec : Prop :=
  ∀ n, (P9171827469654918367.a n : ℤ) = A083262 (n + 1)

end A083262

/-! ## A083262.P15113507129129211852

`A119347(A046523(2*n+1-n))`
-/

namespace A083262.P15113507129129211852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119347 (A046523 (2 * n + 1 - n)).toNat

end

end A083262.P15113507129129211852

namespace A083262

/-- `A119347(A046523(2*n+1-n))` -/
def P15113507129129211852.Spec : Prop :=
  ∀ n, P15113507129129211852.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P7011920876651012452

`A000203(A181821(A181819(n+1)))`
-/

namespace A083262.P7011920876651012452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A181821 (A181819 (n + 1)).toNat).toNat

end

end A083262.P7011920876651012452

namespace A083262

/-- `A000203(A181821(A181819(n+1)))` -/
def P7011920876651012452.Spec : Prop :=
  ∀ n, P7011920876651012452.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P4844654091819781842

`A007503(A046523(n+1))-A000005(n+1)`
-/

namespace A083262.P4844654091819781842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (A046523 (n + 1)).toNat - A000005 (n + 1)

end

end A083262.P4844654091819781842

namespace A083262

/-- `A007503(A046523(n+1))-A000005(n+1)` -/
def P4844654091819781842.Spec : Prop :=
  ∀ n, P4844654091819781842.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P15217687155993011499

`A000203(A292586(n+1)*A292589(n+1))`
-/

namespace A083262.P15217687155993011499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A292586 (n + 1) * A292589 (n + 1)).toNat

end

end A083262.P15217687155993011499

namespace A083262

/-- `A000203(A292586(n+1)*A292589(n+1))` -/
def P15217687155993011499.Spec : Prop :=
  ∀ n, P15217687155993011499.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P2831364503810903209

`A000203(lcm(A083260(n+1), A212173(n+1)))`
-/

namespace A083262.P2831364503810903209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm (A083260 (n + 1)) (A212173 (n + 1)))

end

end A083262.P2831364503810903209

namespace A083262

/-- `A000203(lcm(A083260(n+1), A212173(n+1)))` -/
def P2831364503810903209.Spec : Prop :=
  ∀ n, P2831364503810903209.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P1565649103020520302

`A146076(2*A046523(n+1))/2`
-/

namespace A083262.P1565649103020520302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * A046523 (n + 1)).toNat : ℚ) / 2

end

end A083262.P1565649103020520302

namespace A083262

/-- `A146076(2*A046523(n+1))/2` -/
def P1565649103020520302.Spec : Prop :=
  ∀ n, P1565649103020520302.a n = (A083262 (n + 1) : ℚ)

end A083262

/-! ## A083262.P7021214579660719792

`A000203(A278223(A048673(n+1)))`
-/

namespace A083262.P7021214579660719792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A278223 (A048673 (n + 1)).toNat).toNat

end

end A083262.P7021214579660719792

namespace A083262

/-- `A000203(A278223(A048673(n+1)))` -/
def P7021214579660719792.Spec : Prop :=
  ∀ n, P7021214579660719792.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P5160816869479812881

`A000203(A002260(A286255(n+1)))`
-/

namespace A083262.P5160816869479812881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (A286255 (n + 1)).toNat).toNat

end

end A083262.P5160816869479812881

namespace A083262

/-- `A000203(A002260(A286255(n+1)))` -/
def P5160816869479812881.Spec : Prop :=
  ∀ n, P5160816869479812881.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P12086357875284626794

`A000203(A002260(A286149(n+1)))`
-/

namespace A083262.P12086357875284626794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (A286149 (n + 1)).toNat).toNat

end

end A083262.P12086357875284626794

namespace A083262

/-- `A000203(A002260(A286149(n+1)))` -/
def P12086357875284626794.Spec : Prop :=
  ∀ n, P12086357875284626794.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P18433553010434107342

`A245093(A286258(n+1))`
-/

namespace A083262.P18433553010434107342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A286258 (n + 1)).toNat

end

end A083262.P18433553010434107342

namespace A083262

/-- `A245093(A286258(n+1))` -/
def P18433553010434107342.Spec : Prop :=
  ∀ n, P18433553010434107342.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P7316687514943181180

`A272172(A286142(n+1))`
-/

namespace A083262.P7316687514943181180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (A286142 (n + 1)).toNat

end

end A083262.P7316687514943181180

namespace A083262

/-- `A272172(A286142(n+1))` -/
def P7316687514943181180.Spec : Prop :=
  ∀ n, P7316687514943181180.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P14489699347571949652

`A272172(A286143(n+1))`
-/

namespace A083262.P14489699347571949652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (A286143 (n + 1)).toNat

end

end A083262.P14489699347571949652

namespace A083262

/-- `A272172(A286143(n+1))` -/
def P14489699347571949652.Spec : Prop :=
  ∀ n, P14489699347571949652.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P13862113315627883500

`A245093(A286255(n+1))`
-/

namespace A083262.P13862113315627883500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A286255 (n + 1)).toNat

end

end A083262.P13862113315627883500

namespace A083262

/-- `A245093(A286255(n+1))` -/
def P13862113315627883500.Spec : Prop :=
  ∀ n, P13862113315627883500.a n = A083262 (n + 1)

end A083262

/-! ## A083262.P18007660519428982147

`A245093(A286149(n+1))`
-/

namespace A083262.P18007660519428982147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A286149 (n + 1)).toNat

end

end A083262.P18007660519428982147

namespace A083262

/-- `A245093(A286149(n+1))` -/
def P18007660519428982147.Spec : Prop :=
  ∀ n, P18007660519428982147.a n = A083262 (n + 1)

end A083262

/-!
# A083263: Numbers k such that the difference of the largest and smallest prime factors of k divides k.

The programs for A083263, there is no canonical definition to state claims against.
-/

/-! ## A083263.P8580681244441164213

`eq[n+1, lcm(n+1, A046665(n+1))]+1`
-/

namespace A083263.P8580681244441164213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A046665 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A083263.P8580681244441164213

/-! ## A083263.P4707697841341353330

`eq[(-1)^n, A242411(A253909(n))]`
-/

namespace A083263.P4707697841341353330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083263.P4707697841341353330

/-! ## A083263.P124807469395709205

`∑[A001734(A094436(n+2))]`
-/

namespace A083263.P124807469395709205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001734 (A094436 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083263.P124807469395709205

/-! ## A083263.P9046512390132609880

`eq[8, A122456(n)]`
-/

namespace A083263.P9046512390132609880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083263.P9046512390132609880

/-! ## A083263.P13408887830901013776

`∑[A105444((n+1)²)+1]`
-/

namespace A083263.P13408887830901013776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105444 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083263.P13408887830901013776

/-!
# A083266: Sum of related numbers (counted in A073757) belonging to n: a(n) = A000203(n) + A023896(n) - 1; related = {divisor-set, RRS}.

The programs for A083266, the canonical program `A083266.P13941034721229126041` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083266 has offset 1).

The definition of A083266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083266.P13941034721229126041

`A000203(n+1)+A023896(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083266

/-- `A000203(n+1)+A023896(n+1)-1` -/
def P13941034721229126041.Spec : Prop :=
  ∀ n, P13941034721229126041.a n = A083266 (n + 1)

theorem P13941034721229126041.correct : P13941034721229126041.Spec := by
  intro n
  simp only [A083266, Nat.add_sub_cancel]

end A083266

/-! ## A083266.P16218057887787217310

`∑[n+1]-A066760(n+1)`
-/

namespace A083266.P16218057887787217310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A066760 (n + 1)

end

end A083266.P16218057887787217310

namespace A083266

/-- `∑[n+1]-A066760(n+1)` -/
def P16218057887787217310.Spec : Prop :=
  ∀ n, P16218057887787217310.a n = A083266 (n + 1)

end A083266

/-! ## A083266.P6614999308204125615

`A109607(n+1)+A000203(n+1)`
-/

namespace A083266.P6614999308204125615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 (n + 1) + A000203 (n + 1)

end

end A083266.P6614999308204125615

namespace A083266

/-- `A109607(n+1)+A000203(n+1)` -/
def P6614999308204125615.Spec : Prop :=
  ∀ n, P6614999308204125615.a n = A083266 (n + 1)

end A083266

/-! ## A083266.P14889551949597752567

`A390323(n+1)+A351827(n+1)`
-/

namespace A083266.P14889551949597752567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390323 (n + 1) + A351827 (n + 1)

end

end A083266.P14889551949597752567

namespace A083266

/-- `A390323(n+1)+A351827(n+1)` -/
def P14889551949597752567.Spec : Prop :=
  ∀ n, P14889551949597752567.a n = A083266 (n + 1)

end A083266

/-! ## A083266.P17433660146692596523

`A001065(n+1)+A023896(n+1)+n`
-/

namespace A083266.P17433660146692596523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A023896 (n + 1) + (n : ℤ))

end

end A083266.P17433660146692596523

namespace A083266

/-- `A001065(n+1)+A023896(n+1)+n` -/
def P17433660146692596523.Spec : Prop :=
  ∀ n, P17433660146692596523.a n = A083266 (n + 1)

theorem P17433660146692596523.correct : P17433660146692596523.Spec := by
  intro n
  simp only [A083266, Nat.add_sub_cancel, A083266.P17433660146692596523.a, A083266.P13941034721229126041.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083266

/-! ## A083266.P1669974029753659202

`A023896(n+1)+A000096(n)-A024816(n+1)`
-/

namespace A083266.P1669974029753659202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (A000096 n - A024816 (n + 1))

end

end A083266.P1669974029753659202

namespace A083266

/-- `A023896(n+1)+A000096(n)-A024816(n+1)` -/
def P1669974029753659202.Spec : Prop :=
  ∀ n, P1669974029753659202.a n = A083266 (n + 1)

theorem P1669974029753659202.correct : P1669974029753659202.Spec := by
  intro n
  simp only [A083266, Nat.add_sub_cancel, A083266.P1669974029753659202.a, A083266.P13941034721229126041.a, A000096, A000096.P6925830517264718723.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A024816, A024816.P10728806423584859610.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083266

/-! ## A083266.P6541662610058887460

`A023896(n+1)+∑{d}[A087156(n+1), A087156(#)]`
-/

namespace A083266.P6541662610058887460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A087156 d

end

end A083266.P6541662610058887460

namespace A083266

/-- `A023896(n+1)+∑{d}[A087156(n+1), A087156(#)]` -/
def P6541662610058887460.Spec : Prop :=
  ∀ n, P6541662610058887460.a n = A083266 (n + 1)

end A083266

/-! ## A083266.P2303130679350211244

`A000203(n+1)+A024816(n+1)-A066760(n+1)`
-/

namespace A083266.P2303130679350211244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A024816 (n + 1) - A066760 (n + 1))

end

end A083266.P2303130679350211244

namespace A083266

/-- `A000203(n+1)+A024816(n+1)-A066760(n+1)` -/
def P2303130679350211244.Spec : Prop :=
  ∀ n, P2303130679350211244.a n = A083266 (n + 1)

theorem P2303130679350211244.correct : P2303130679350211244.Spec := by
  intro n
  simp only [A083266, Nat.add_sub_cancel, A083266.P2303130679350211244.a, A083266.P13941034721229126041.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A024816, A024816.P10728806423584859610.a, A066760, A066760.P15906391362368166906.a, A000217, A000217.P10269402890581615239.a, A067392, A067392.P7533820900183805373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083266

/-! ## A083266.P14193699046936501377

`A000217(n+1)+A109607(n+1)-A024816(n+1)`
-/

namespace A083266.P14193699046936501377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A109607 (n + 1) - A024816 (n + 1))

end

end A083266.P14193699046936501377

namespace A083266

/-- `A000217(n+1)+A109607(n+1)-A024816(n+1)` -/
def P14193699046936501377.Spec : Prop :=
  ∀ n, P14193699046936501377.a n = A083266 (n + 1)

end A083266

/-! ## A083266.P200917574396636795

`A023896(n+1)+A067392(n+1)-A066760(n+1)`
-/

namespace A083266.P200917574396636795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (A067392 (n + 1) - A066760 (n + 1))

end

end A083266.P200917574396636795

namespace A083266

/-- `A023896(n+1)+A067392(n+1)-A066760(n+1)` -/
def P200917574396636795.Spec : Prop :=
  ∀ n, P200917574396636795.a n = A083266 (n + 1)

theorem P200917574396636795.correct : P200917574396636795.Spec := by
  intro n
  simp only [A083266, Nat.add_sub_cancel, A083266.P200917574396636795.a, A083266.P13941034721229126041.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A066760, A066760.P15906391362368166906.a, A067392, A067392.P7533820900183805373.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083266

/-! ## A083266.P10498389505634316079

`A024916(n+1)-(A153485(n+1)+A066760(n+1))`
-/

namespace A083266.P10498389505634316079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - (A153485 (n + 1) + A066760 (n + 1))

end

end A083266.P10498389505634316079

namespace A083266

/-- `A024916(n+1)-(A153485(n+1)+A066760(n+1))` -/
def P10498389505634316079.Spec : Prop :=
  ∀ n, P10498389505634316079.a n = A083266 (n + 1)

end A083266

/-! ## A083266.P8103638917840814166

`A004125(n+2)+A153485(n+2)-A066760(n+1)`
-/

namespace A083266.P8103638917840814166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 2) + (A153485 (n + 2) - A066760 (n + 1))

end

end A083266.P8103638917840814166

namespace A083266

/-- `A004125(n+2)+A153485(n+2)-A066760(n+1)` -/
def P8103638917840814166.Spec : Prop :=
  ∀ n, P8103638917840814166.a n = A083266 (n + 1)

theorem P8103638917840814166.correct : P8103638917840814166.Spec := by
  intro n
  simp only [A083266, Nat.add_sub_cancel, A083266.P8103638917840814166.a, A083266.P13941034721229126041.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A004125, A004125.P17154347137318566864.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A066760, A066760.P15906391362368166906.a, A153485, A153485.P1399869421749084233.a, A000217, A000217.P10269402890581615239.a, A067392, A067392.P7533820900183805373.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083266

/-! ## A083266.P4564777217345186698

`A023896(n+2)+A308473(n+2)-A066760(n+1)`
-/

namespace A083266.P4564777217345186698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 2) + (A308473 (n + 2) - A066760 (n + 1))

end

end A083266.P4564777217345186698

namespace A083266

/-- `A023896(n+2)+A308473(n+2)-A066760(n+1)` -/
def P4564777217345186698.Spec : Prop :=
  ∀ n, P4564777217345186698.a n = A083266 (n + 1)

end A083266

/-!
# A083267: Product of related numbers (counted in A073757) belonging to n; related = {divisor-set, RRS}: a(n) = A007955(n)*A001783(n).

The programs for A083267, there is no canonical definition to state claims against.
-/

/-! ## A083267.P3014811777410172239

`A007955(n+1)*A001783(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083267.P3014811777410172239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A001783 (n + 1)

end

end A083267.P3014811777410172239

/-! ## A083267.P13996303736275058770

`sqrt(A062758(n+1))*A001783(n+1)`
-/

namespace A083267.P13996303736275058770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) * (A001783 (n + 1) : ℝ)

end

end A083267.P13996303736275058770

/-! ## A083267.P15551126619779845284

`(n+1)!/A070251(n+1)`
-/

namespace A083267.P15551126619779845284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A070251 (n + 1) : ℚ)

end

end A083267.P15551126619779845284

/-! ## A083267.P15027752865737791293

`record[A047920(n)]/A070251(n+1)`
-/

namespace A083267.P15027752865737791293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A070251 (n + 1) : ℚ)

end

end A083267.P15027752865737791293

/-! ## A083267.P14700776378517534078

`A000142(n+1)/A070251(n+1)`
-/

namespace A083267.P14700776378517534078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A070251 (n + 1) : ℚ)

end

end A083267.P14700776378517534078

/-!
# A083268: a(n) is the lcm of related numbers to n (counted in A073757): related = {divisor-set, RRS}.

The programs for A083268, the canonical program `A083268.P10854369148247872519` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083268 has offset 1).

The definition of A083268 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038610, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083268.P10854369148247872519

`(n+1)*A038610(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083268

/-- `(n+1)*A038610(n+1)` -/
def P10854369148247872519.Spec : Prop :=
  ∀ n, P10854369148247872519.a n = A083268 (n + 1)

theorem P10854369148247872519.correct : P10854369148247872519.Spec := by
  intro n
  simp only [A083268, Nat.add_sub_cancel]

end A083268

/-! ## A083268.P14974524200129737905

`lcm(n+1, A038610(Δ[n²]-n))`
-/

namespace A083268.P14974524200129737905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A038610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A083268.P14974524200129737905

namespace A083268

/-- `lcm(n+1, A038610(Δ[n²]-n))` -/
def P14974524200129737905.Spec : Prop :=
  ∀ n, (P14974524200129737905.a n : ℤ) = A083268 (n + 1)

end A083268

/-! ## A083268.P13653574004446512357

`lcm(A038610(n+1), A289870(n))`
-/

namespace A083268.P13653574004446512357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038610 (n + 1)) (A289870 n)

end

end A083268.P13653574004446512357

namespace A083268

/-- `lcm(A038610(n+1), A289870(n))` -/
def P13653574004446512357.Spec : Prop :=
  ∀ n, (P13653574004446512357.a n : ℤ) = A083268 (n + 1)

end A083268

/-! ## A083268.P15046009215784648687

`A003418(n+1)/A133910(n+1)`
-/

namespace A083268.P15046009215784648687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A133910 (n + 1) : ℚ)

end

end A083268.P15046009215784648687

namespace A083268

/-- `A003418(n+1)/A133910(n+1)` -/
def P15046009215784648687.Spec : Prop :=
  ∀ n, P15046009215784648687.a n = (A083268 (n + 1) : ℚ)

end A083268

/-! ## A083268.P7678368640256627865

`(n+1)*A002944(n+1)/gcd(A002944(n+1), A064446(n+1))`
-/

namespace A083268.P7678368640256627865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A002944 (n + 1) : ℚ) / (Int.gcd (A002944 (n + 1)) (A064446 (n + 1)) : ℚ))

end

end A083268.P7678368640256627865

namespace A083268

/-- `(n+1)*A002944(n+1)/gcd(A002944(n+1), A064446(n+1))` -/
def P7678368640256627865.Spec : Prop :=
  ∀ n, P7678368640256627865.a n = (A083268 (n + 1) : ℚ)

end A083268

/-! ## A083268.P16221740184139247869

`A081528(n+1)/A064446(n+1)`
-/

namespace A083268.P16221740184139247869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081528 (n + 1) : ℚ) / (A064446 (n + 1) : ℚ)

end

end A083268.P16221740184139247869

namespace A083268

/-- `A081528(n+1)/A064446(n+1)` -/
def P16221740184139247869.Spec : Prop :=
  ∀ n, P16221740184139247869.a n = (A083268 (n + 1) : ℚ)

end A083268

/-!
# A083269: a(n) = pi(A052180(n)) = A000720(A052180(n)); subscript of last prime used in Eratosthenes sieve by which all composites between n-th and (n+1)th primes were excluded.

The programs for A083269, there is no canonical definition to state claims against.
-/

/-! ## A083269.P7166568450069004268

`A000720(∏{e}[A006530(n+1), A052180(#*(n+1))])`
-/

namespace A083269.P7166568450069004268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A052180 (Nat.factorization (f1 n).natAbs p * (n + 1))).toNat

end

end A083269.P7166568450069004268

/-! ## A083269.P554834463562798632

`A000720(∏{e}[A020639(n+1), A052180(#*(n+1))])`
-/

namespace A083269.P554834463562798632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A052180 (Nat.factorization (f1 n).natAbs p * (n + 1))).toNat

end

end A083269.P554834463562798632

/-! ## A083269.P6999563244366466623

`A061395(A076976(n+1)%A075369(n+1))`
-/

namespace A083269.P6999563244366466623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A076976 (n + 1)) (A075369 (n + 1))).toNat

end

end A083269.P6999563244366466623

/-! ## A083269.P9862560946316291310

`A061395(A076976(n+1))`
-/

namespace A083269.P9862560946316291310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A076976 (n + 1)).toNat

end

end A083269.P9862560946316291310

/-! ## A083269.P7971343743948543459

`A069010(C(A076976(n+1), 2))`
-/

namespace A083269.P7971343743948543459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Nat.choose (A076976 (n + 1)).toNat 2)

end

end A083269.P7971343743948543459

/-!
# A083271: a(n) = n*tau(n) + 1.

The programs for A083271, the canonical program `A083271.P4870819776415420897` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083271 has offset 1).

The definition of A083271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083271.P4870819776415420897

`A038040(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083271

/-- `A038040(n+1)+1` -/
def P4870819776415420897.Spec : Prop :=
  ∀ n, P4870819776415420897.a n = A083271 (n + 1)

theorem P4870819776415420897.correct : P4870819776415420897.Spec := by
  intro n
  simp only [A083271, Nat.add_sub_cancel]

end A083271

/-! ## A083271.P10851639479146577084

`∑{d}[n+1, ceil(2/#+n)]`
-/

namespace A083271.P10851639479146577084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ) + (n : ℚ)⌉

end

end A083271.P10851639479146577084

namespace A083271

/-- `∑{d}[n+1, ceil(2/#+n)]` -/
def P10851639479146577084.Spec : Prop :=
  ∀ n, P10851639479146577084.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P1432910095608107565

`∑{d}[n+1, lcm(#, n+1)]+1`
-/

namespace A083271.P1432910095608107565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) + 1

end

end A083271.P1432910095608107565

namespace A083271

/-- `∑{d}[n+1, lcm(#, n+1)]+1` -/
def P1432910095608107565.Spec : Prop :=
  ∀ n, (P1432910095608107565.a n : ℤ) = A083271 (n + 1)

end A083271

/-! ## A083271.P5152123340770571893

`∑{d}[n+1, gcd(n, #)+n]+1`
-/

namespace A083271.P5152123340770571893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.gcd n d + n) + 1

end

end A083271.P5152123340770571893

namespace A083271

/-- `∑{d}[n+1, gcd(n, #)+n]+1` -/
def P5152123340770571893.Spec : Prop :=
  ∀ n, (P5152123340770571893.a n : ℤ) = A083271 (n + 1)

end A083271

/-! ## A083271.P12074288630071541125

`∑{d}[n+1, n-or(#, -1)]+1`
-/

namespace A083271.P12074288630071541125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - Int.lor (d : ℤ) (-1)) + 1

end

end A083271.P12074288630071541125

namespace A083271

/-- `∑{d}[n+1, n-or(#, -1)]+1` -/
def P12074288630071541125.Spec : Prop :=
  ∀ n, P12074288630071541125.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P12619659942589514232

`∑{d}[n+1, (#%2)!+n]+1`
-/

namespace A083271.P12619659942589514232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial (d % 2) + n) + 1

end

end A083271.P12619659942589514232

namespace A083271

/-- `∑{d}[n+1, (#%2)!+n]+1` -/
def P12619659942589514232.Spec : Prop :=
  ∀ n, (P12619659942589514232.a n : ℤ) = A083271 (n + 1)

end A083271

/-! ## A083271.P3449162595516136479

`round(∑{d}[n+1, acot(#²)+n+1])`
-/

namespace A083271.P3449162595516136479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (SequenceMachineLib.acot (d ^ 2 : ℝ) + (n + 1 : ℝ)))

end

end A083271.P3449162595516136479

namespace A083271

/-- `round(∑{d}[n+1, acot(#²)+n+1])` -/
def P3449162595516136479.Spec : Prop :=
  ∀ n, P3449162595516136479.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P3935743761668852954

`(n+1)*∏{e}[n+1, #+1]+1`
-/

namespace A083271.P3935743761668852954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1

end

end A083271.P3935743761668852954

namespace A083271

/-- `(n+1)*∏{e}[n+1, #+1]+1` -/
def P3935743761668852954.Spec : Prop :=
  ∀ n, (P3935743761668852954.a n : ℤ) = A083271 (n + 1)

theorem P3935743761668852954.correct : P3935743761668852954.Spec := by
  intro n
  simp only [A083271, Nat.add_sub_cancel, A083271.P3935743761668852954.f1, A083271.P3935743761668852954.a, A083271.P4870819776415420897.a, A038040, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083271

/-! ## A083271.P1027326588886360844

`A145229(n)/4+1`
-/

namespace A083271.P1027326588886360844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145229 n : ℚ) / 4 + 1

end

end A083271.P1027326588886360844

namespace A083271

/-- `A145229(n)/4+1` -/
def P1027326588886360844.Spec : Prop :=
  ∀ n, P1027326588886360844.a n = (A083271 (n + 1) : ℚ)

end A083271

/-! ## A083271.P970059046193552161

`(n+1)*Δ[A006218(n)]+1`
-/

namespace A083271.P970059046193552161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) + 1

end

end A083271.P970059046193552161

namespace A083271

/-- `(n+1)*Δ[A006218(n)]+1` -/
def P970059046193552161.Spec : Prop :=
  ∀ n, P970059046193552161.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P13992173363591196257

`(n+1)*A000005(n+1)+1`
-/

namespace A083271.P13992173363591196257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) + 1

end

end A083271.P13992173363591196257

namespace A083271

/-- `(n+1)*A000005(n+1)+1` -/
def P13992173363591196257.Spec : Prop :=
  ∀ n, P13992173363591196257.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P2936169145358388860

`A034714(n+1)/(n+1)+1`
-/

namespace A083271.P2936169145358388860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034714 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A083271.P2936169145358388860

namespace A083271

/-- `A034714(n+1)/(n+1)+1` -/
def P2936169145358388860.Spec : Prop :=
  ∀ n, P2936169145358388860.a n = (A083271 (n + 1) : ℚ)

end A083271

/-! ## A083271.P13435223436566443615

`(n+1)*A334954(n+1)-n`
-/

namespace A083271.P13435223436566443615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334954 (n + 1) - (n : ℤ)

end

end A083271.P13435223436566443615

namespace A083271

/-- `(n+1)*A334954(n+1)-n` -/
def P13435223436566443615.Spec : Prop :=
  ∀ n, P13435223436566443615.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P4784101415791830728

`(n+1)*A032741(n+1)+n+2`
-/

namespace A083271.P4784101415791830728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032741 (n + 1) + (n + 2 : ℤ)

end

end A083271.P4784101415791830728

namespace A083271

/-- `(n+1)*A032741(n+1)+n+2` -/
def P4784101415791830728.Spec : Prop :=
  ∀ n, P4784101415791830728.a n = A083271 (n + 1)

theorem P4784101415791830728.correct : P4784101415791830728.Spec := by
  intro n
  simp only [A083271, Nat.add_sub_cancel, A083271.P4784101415791830728.a, A083271.P4870819776415420897.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038040, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083271

/-! ## A083271.P3496314518589400059

`∑{d}[n+1, A000040(#)%2+n]+2`
-/

namespace A083271.P3496314518589400059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.tmod (A000040 d) 2 + (n : ℤ)) + 2

end

end A083271.P3496314518589400059

namespace A083271

/-- `∑{d}[n+1, A000040(#)%2+n]+2` -/
def P3496314518589400059.Spec : Prop :=
  ∀ n, P3496314518589400059.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P5271833862968747984

`∑{d}[n+1, A000010(#)+n+1]-n`
-/

namespace A083271.P5271833862968747984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d + (n + 1 : ℤ)) - (n : ℤ)

end

end A083271.P5271833862968747984

namespace A083271

/-- `∑{d}[n+1, A000010(#)+n+1]-n` -/
def P5271833862968747984.Spec : Prop :=
  ∀ n, P5271833862968747984.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P11090837747223083260

`A094471(n+1)+A088580(n+1)`
-/

namespace A083271.P11090837747223083260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A088580 (n + 1)

end

end A083271.P11090837747223083260

namespace A083271

/-- `A094471(n+1)+A088580(n+1)` -/
def P11090837747223083260.Spec : Prop :=
  ∀ n, P11090837747223083260.a n = A083271 (n + 1)

theorem P11090837747223083260.correct : P11090837747223083260.Spec := by
  intro n
  simp only [A083271, Nat.add_sub_cancel, A083271.P11090837747223083260.a, A083271.P4870819776415420897.a, A038040, A038040.P16512896840577774730.a, A088580, A088580.P3089093194242277422.a, A094471, A094471.P10880822235094612413.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083271

/-! ## A083271.P13193954910729313723

`A158901(n+1)+A081307(n+1)`
-/

namespace A083271.P13193954910729313723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) + A081307 (n + 1)

end

end A083271.P13193954910729313723

namespace A083271

/-- `A158901(n+1)+A081307(n+1)` -/
def P13193954910729313723.Spec : Prop :=
  ∀ n, P13193954910729313723.a n = A083271 (n + 1)

end A083271

/-! ## A083271.P4746109399077846257

`A008864(n+1)-A067292(n+1)`
-/

namespace A083271.P4746109399077846257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A067292 (n + 1)

end

end A083271.P4746109399077846257

namespace A083271

/-- `A008864(n+1)-A067292(n+1)` -/
def P4746109399077846257.Spec : Prop :=
  ∀ n, P4746109399077846257.a n = A083271 (n + 1)

theorem P4746109399077846257.correct : P4746109399077846257.Spec := by
  intro n
  simp only [A083271, Nat.add_sub_cancel, A083271.P4746109399077846257.a, A083271.P4870819776415420897.a, A008864, A008864.P9177617808325052279.a, A038040, A038040.P16512896840577774730.a, A067292, A067292.P1668061141920978615.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083271

/-! ## A083271.P1819298127167164867

`A000203(n+1)+A094471(n+1)+1`
-/

namespace A083271.P1819298127167164867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A094471 (n + 1) + 1)

end

end A083271.P1819298127167164867

namespace A083271

/-- `A000203(n+1)+A094471(n+1)+1` -/
def P1819298127167164867.Spec : Prop :=
  ∀ n, P1819298127167164867.a n = A083271 (n + 1)

theorem P1819298127167164867.correct : P1819298127167164867.Spec := by
  intro n
  simp only [A083271, Nat.add_sub_cancel, A083271.P1819298127167164867.a, A083271.P4870819776415420897.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A094471, A094471.P10880822235094612413.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083271

/-!
# A083272: a(n) = n*tau(a(n-1)) + 1 = n*A000005(a(n-1)) + 1, a(0) = 1.

The programs for A083272, the canonical program `A083272.P5000618419740904812` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083272 has offset 0).

The definition of A083272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000005(a(n-1))+1` (program `A083272.P5000618419740904812`, by `A083272.P5000618419740904812.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083272.P5000618419740904812

`n*A000005(a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083272

/-- `n*A000005(a(n-1))+1` -/
def P5000618419740904812.Spec : Prop :=
  ∀ n, P5000618419740904812.a n = A083272 n

theorem P5000618419740904812.correct : P5000618419740904812.Spec := by
  intro n
  simp only [A083272]

end A083272

/-! ## A083272.P1502032436323948250

`1-A000005(a(n-1))*A001489(n)` with `a(0)=1`
-/

namespace A083272.P1502032436323948250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A000005 (a (n - 1)).toNat * A001489 n

end

end A083272.P1502032436323948250

namespace A083272

/-- `1-A000005(a(n-1))*A001489(n)` -/
def P1502032436323948250.Spec : Prop :=
  ∀ n, P1502032436323948250.a n = A083272 n

end A083272

/-! ## A083272.P4542268436691181268

`n*(A032741(a(n-1))+1)+1` with `a(0)=1`
-/

namespace A083272.P4542268436691181268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A032741 (a (n - 1)).toNat + 1) + 1

end

end A083272.P4542268436691181268

namespace A083272

/-- `n*(A032741(a(n-1))+1)+1` -/
def P4542268436691181268.Spec : Prop :=
  ∀ n, P4542268436691181268.a n = A083272 n

end A083272

/-! ## A083272.P15713330864961118533

`A008619(2*n*A000005(a(n-1)))` with `a(0)=1`
-/

namespace A083272.P15713330864961118533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008619 ((2 * n : ℤ) * A000005 (a (n - 1)).toNat).toNat

end

end A083272.P15713330864961118533

namespace A083272

/-- `A008619(2*n*A000005(a(n-1)))` -/
def P15713330864961118533.Spec : Prop :=
  ∀ n, P15713330864961118533.a n = A083272 n

end A083272

/-! ## A083272.P10800823175908553650

`A008619(A000005(a(n-1))*A005843(n))` with `a(0)=1`
-/

namespace A083272.P10800823175908553650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008619 (A000005 (a (n - 1)).toNat * A005843 n).toNat

end

end A083272.P10800823175908553650

namespace A083272

/-- `A008619(A000005(a(n-1))*A005843(n))` -/
def P10800823175908553650.Spec : Prop :=
  ∀ n, P10800823175908553650.a n = A083272 n

end A083272

/-!
# A083273: a(n) is the quotient of lcm of first n consecutive prime differences and A001223(n), the n-th difference between consecutive primes.

The programs for A083273, the canonical program `A083273.P10952218317192786139` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083273 has offset 1).

The definition of A083273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A080374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083273.P10952218317192786139

`A080374(n+1)/A001223(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083273

/-- `A080374(n+1)/A001223(n+1)` -/
def P10952218317192786139.Spec : Prop :=
  ∀ n, P10952218317192786139.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P1455922041929014923

`A080374(n+1)/A075526(n+1)`
-/

namespace A083273.P1455922041929014923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (A075526 (n + 1) : ℚ)

end

end A083273.P1455922041929014923

namespace A083273

/-- `A080374(n+1)/A075526(n+1)` -/
def P1455922041929014923.Spec : Prop :=
  ∀ n, P1455922041929014923.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P16321062792692737312

`A080374(n+1)/A054541(n+2)`
-/

namespace A083273.P16321062792692737312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (A054541 (n + 2) : ℚ)

end

end A083273.P16321062792692737312

namespace A083273

/-- `A080374(n+1)/A054541(n+2)` -/
def P16321062792692737312.Spec : Prop :=
  ∀ n, P16321062792692737312.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P9801260634561557467

`A080374(n+1)/A125266(n+2)`
-/

namespace A083273.P9801260634561557467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (A125266 (n + 2) : ℚ)

end

end A083273.P9801260634561557467

namespace A083273

/-- `A080374(n+1)/A125266(n+2)` -/
def P9801260634561557467.Spec : Prop :=
  ∀ n, P9801260634561557467.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P1721251000417307432

`A080374(n+1)/Δ[A000040(n+1)]`
-/

namespace A083273.P1721251000417307432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A083273.P1721251000417307432

namespace A083273

/-- `A080374(n+1)/Δ[A000040(n+1)]` -/
def P1721251000417307432.Spec : Prop :=
  ∀ n, P1721251000417307432.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P6023062362883243506

`A080374(n+1)/Δ[A006093(n+1)]`
-/

namespace A083273.P6023062362883243506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A083273.P6023062362883243506

namespace A083273

/-- `A080374(n+1)/Δ[A006093(n+1)]` -/
def P6023062362883243506.Spec : Prop :=
  ∀ n, P6023062362883243506.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P5824090580671161238

`A080374(n+1)/Δ[A008864(n+1)]`
-/

namespace A083273.P5824090580671161238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A083273.P5824090580671161238

namespace A083273

/-- `A080374(n+1)/Δ[A008864(n+1)]` -/
def P5824090580671161238.Spec : Prop :=
  ∀ n, P5824090580671161238.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P1816330768835623474

`A080374(n+1)/Δ[A040976(n+1)]`
-/

namespace A083273.P1816330768835623474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A083273.P1816330768835623474

namespace A083273

/-- `A080374(n+1)/Δ[A040976(n+1)]` -/
def P1816330768835623474.Spec : Prop :=
  ∀ n, P1816330768835623474.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P7236950031794762871

`A080374(n+1)/(A000040(n+2)-A000040(n+1))`
-/

namespace A083273.P7236950031794762871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (A000040 (n + 2) - A000040 (n + 1) : ℚ)

end

end A083273.P7236950031794762871

namespace A083273

/-- `A080374(n+1)/(A000040(n+2)-A000040(n+1))` -/
def P7236950031794762871.Spec : Prop :=
  ∀ n, P7236950031794762871.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P5139909364432397926

`A080374(n+1)/A000040(n+2)%A000040((n+1)%(n+2))`
-/

namespace A083273.P5139909364432397926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (Int.tmod (A000040 (n + 2)) (A000040 ((n + 1) % (n + 2))) : ℚ)

end

end A083273.P5139909364432397926

namespace A083273

/-- `A080374(n+1)/A000040(n+2)%A000040((n+1)%(n+2))` -/
def P5139909364432397926.Spec : Prop :=
  ∀ n, P5139909364432397926.a n = (A083273 (n + 1) : ℚ)

end A083273

/-! ## A083273.P3270063809010574862

`A070323(n+1)/A070323(n+2)*A080374(n+1)`
-/

namespace A083273.P3270063809010574862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070323 (n + 1) : ℚ) / (A070323 (n + 2) : ℚ) * (A080374 (n + 1) : ℚ)

end

end A083273.P3270063809010574862

namespace A083273

/-- `A070323(n+1)/A070323(n+2)*A080374(n+1)` -/
def P3270063809010574862.Spec : Prop :=
  ∀ n, P3270063809010574862.a n = (A083273 (n + 1) : ℚ)

end A083273

/-!
# A083277: k appears 3k-2 times.

The programs for A083277, the canonical program `A083277.P18196545443314937728` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083277 has offset 1).

The definition of A083277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083277.P18196545443314937728

`ceil((1+sqrt(24*(n+1)+1))/6)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083277

/-- `ceil((1+sqrt(24*(n+1)+1))/6)` -/
def P18196545443314937728.Spec : Prop :=
  ∀ n, P18196545443314937728.a n = A083277 (n + 1)

theorem P18196545443314937728.correct : P18196545443314937728.Spec := by
  intro n
  simp only [A083277, Nat.add_sub_cancel]

end A083277

/-! ## A083277.P14632960720292504808

`∑[char[C(n, 2)+n²]]`
-/

namespace A083277.P14632960720292504808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P14632960720292504808

namespace A083277

/-- `∑[char[C(n, 2)+n²]]` -/
def P14632960720292504808.Spec : Prop :=
  ∀ n, (P14632960720292504808.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P12506839198887287852

`∑[char[3*C(n, 2)+n]]`
-/

namespace A083277.P12506839198887287852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P12506839198887287852

namespace A083277

/-- `∑[char[3*C(n, 2)+n]]` -/
def P12506839198887287852.Spec : Prop :=
  ∀ n, (P12506839198887287852.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P12922698998178219817

`∑[char[∑[n*∑[n]%3]]]`
-/

namespace A083277.P12922698998178219817
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((∑ j ∈ Finset.range (n + 1), f4 j) % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P12922698998178219817

namespace A083277

/-- `∑[char[∑[n*∑[n]%3]]]` -/
def P12922698998178219817.Spec : Prop :=
  ∀ n, (P12922698998178219817.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P12323986846925518575

`∑[char[Δ[(n-1)*C(n, 2)]]]`
-/

namespace A083277.P12323986846925518575
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose n 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P12323986846925518575

namespace A083277

/-- `∑[char[Δ[(n-1)*C(n, 2)]]]` -/
def P12323986846925518575.Spec : Prop :=
  ∀ n, (P12323986846925518575.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P14423661914501233514

`∑[char[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=1`
-/

namespace A083277.P14423661914501233514
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P14423661914501233514

namespace A083277

/-- `∑[char[∑[a(n-1)+3]]]` -/
def P14423661914501233514.Spec : Prop :=
  ∀ n, (P14423661914501233514.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P14789348608208818201

`∑[char[∑[ogf((x+2x^2)/(1-2x+x^2))]]]`
-/

namespace A083277.P14789348608208818201
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P14789348608208818201

namespace A083277

/-- `∑[char[∑[ogf((x+2x^2)/(1-2x+x^2))]]]` -/
def P14789348608208818201.Spec : Prop :=
  ∀ n, (P14789348608208818201.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P1951933037924929794

`∑[A255849(n)]`
-/

namespace A083277.P1951933037924929794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P1951933037924929794

namespace A083277

/-- `∑[A255849(n)]` -/
def P1951933037924929794.Spec : Prop :=
  ∀ n, P1951933037924929794.a n = A083277 (n + 1)

end A083277

/-! ## A083277.P1066884861888315043

`A180447(n)+1`
-/

namespace A083277.P1066884861888315043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 n + 1

end

end A083277.P1066884861888315043

namespace A083277

/-- `A180447(n)+1` -/
def P1066884861888315043.Spec : Prop :=
  ∀ n, P1066884861888315043.a n = A083277 (n + 1)

end A083277

/-! ## A083277.P13038330344619416086

`∑[char[A000326(n)]]`
-/

namespace A083277.P13038330344619416086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P13038330344619416086

namespace A083277

/-- `∑[char[A000326(n)]]` -/
def P13038330344619416086.Spec : Prop :=
  ∀ n, (P13038330344619416086.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P11957099852870113435

`1-A180446(n)+n`
-/

namespace A083277.P11957099852870113435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A180446 n + (n : ℤ)

end

end A083277.P11957099852870113435

namespace A083277

/-- `1-A180446(n)+n` -/
def P11957099852870113435.Spec : Prop :=
  ∀ n, P11957099852870113435.a n = A083277 (n + 1)

end A083277

/-! ## A083277.P276562671123599729

`A183294(n+1)-n`
-/

namespace A083277.P276562671123599729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183294 (n + 1) - (n : ℤ)

end

end A083277.P276562671123599729

namespace A083277

/-- `A183294(n+1)-n` -/
def P276562671123599729.Spec : Prop :=
  ∀ n, P276562671123599729.a n = A083277 (n + 1)

end A083277

/-! ## A083277.P11236789005554776890

`∑[char[A005449(n)-n]]`
-/

namespace A083277.P11236789005554776890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P11236789005554776890

namespace A083277

/-- `∑[char[A005449(n)-n]]` -/
def P11236789005554776890.Spec : Prop :=
  ∀ n, (P11236789005554776890.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P1417905707054491829

`∑[1-char[A183217(n+1)]]`
-/

namespace A083277.P1417905707054491829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183217 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P1417905707054491829

namespace A083277

/-- `∑[1-char[A183217(n+1)]]` -/
def P1417905707054491829.Spec : Prop :=
  ∀ n, P1417905707054491829.a n = A083277 (n + 1)

end A083277

/-! ## A083277.P8776152093341906844

`∑[char[A104249(n)-(n+1)]]`
-/

namespace A083277.P8776152093341906844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P8776152093341906844

namespace A083277

/-- `∑[char[A104249(n)-(n+1)]]` -/
def P8776152093341906844.Spec : Prop :=
  ∀ n, (P8776152093341906844.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P15129979663229581581

`∑[char[n%2*A001318(n)]]`
-/

namespace A083277.P15129979663229581581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A001318 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P15129979663229581581

namespace A083277

/-- `∑[char[n%2*A001318(n)]]` -/
def P15129979663229581581.Spec : Prop :=
  ∀ n, (P15129979663229581581.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P7407116605319154526

`∑[char[∑[A016777(n)-2]+1-n]]`
-/

namespace A083277.P7407116605319154526
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1 - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083277.P7407116605319154526

namespace A083277

/-- `∑[char[∑[A016777(n)-2]+1-n]]` -/
def P7407116605319154526.Spec : Prop :=
  ∀ n, (P7407116605319154526.a n : ℤ) = A083277 (n + 1)

end A083277

/-! ## A083277.P7169970387501368059

`A002264(A000703(n))`
-/

namespace A083277.P7169970387501368059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000703 n).toNat

end

end A083277.P7169970387501368059

namespace A083277

/-- `A002264(A000703(n))` -/
def P7169970387501368059.Spec : Prop :=
  ∀ n, P7169970387501368059.a n = A083277 (n + 1)

end A083277

/-! ## A083277.P2220425958712932668

`A080513(A235963(n))`
-/

namespace A083277.P2220425958712932668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A235963 n).toNat

end

end A083277.P2220425958712932668

namespace A083277

/-- `A080513(A235963(n))` -/
def P2220425958712932668.Spec : Prop :=
  ∀ n, P2220425958712932668.a n = A083277 (n + 1)

end A083277

/-!
# A083278: Repunit powers.

The programs for A083278, there is no canonical definition to state claims against.
-/

/-! ## A083278.P17860323582359378534

`A308365(lt[A265832(n), A178908(n+1)])`
-/

namespace A083278.P17860323582359378534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083278.P17860323582359378534

/-! ## A083278.P12773345645756607818

`A308365(eq[A026405(n+1), A328582(2*(n+2))])`
-/

namespace A083278.P12773345645756607818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328582 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A083278.P12773345645756607818

/-! ## A083278.P4550720805025586532

`A308365(lt[A005709(3*(n+1)), A231733(3*n+1)])`
-/

namespace A083278.P4550720805025586532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231733 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083278.P4550720805025586532

/-!
# A083279: Length of odd/even runs in A061419, where a(2n)=length of n-th run of even numbers in A061419 and a(2n-1)=length of n-th run of odd numbers.

The programs for A083279, there is no canonical definition to state claims against.
-/

/-! ## A083279.P8768156464049478649

`A032513(Δ[record[n*A082416(n+1)]])`
-/

namespace A083279.P8768156464049478649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082416 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 (f1 (n + 1) - f1 n).toNat

end

end A083279.P8768156464049478649

/-! ## A083279.P3685137914008461874

`Δ[lt[A082416(n+2), 3*A082416(n+1)]]`
-/

namespace A083279.P3685137914008461874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082416 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082416 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083279.P3685137914008461874

/-! ## A083279.P9312473149177834871

`Δ[record[n*A082416(n+1)]%A000040(n+2)]`
-/

namespace A083279.P9312473149177834871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082416 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A000040 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083279.P9312473149177834871

/-!
# A083280: Number of 2-generator non-Abelian groups of order n.

The programs for A083280, there is no canonical definition to state claims against.
-/

/-! ## A083280.P2160721154380328177

`A066389(n+1)-A046951(n+1)`
-/

namespace A083280.P2160721154380328177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1) - A046951 (n + 1)

end

end A083280.P2160721154380328177

/-! ## A083280.P6155901023241023479

`A066389(n+1)-A000005(A000188(n+1))`
-/

namespace A083280.P6155901023241023479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1) - A000005 (A000188 (n + 1)).toNat

end

end A083280.P6155901023241023479

/-! ## A083280.P4392508862457085819

`A066389(n+1)-A298735(A003961(n+1))`
-/

namespace A083280.P4392508862457085819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1) - A298735 (A003961 (n + 1)).toNat

end

end A083280.P4392508862457085819

/-! ## A083280.P10888656317582834895

`A066389(n+1)-A298735(A045965(n+1))`
-/

namespace A083280.P10888656317582834895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1) - A298735 (A045965 (n + 1)).toNat

end

end A083280.P10888656317582834895

/-! ## A083280.P17927105555426347339

`A066389(n+1)-A298735(A064988(n+1))`
-/

namespace A083280.P17927105555426347339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1) - A298735 (A064988 (n + 1)).toNat

end

end A083280.P17927105555426347339

/-! ## A083280.P11651541621722099558

`A000001(n+1)-(A068385(n+1)+A046951(n+1))`
-/

namespace A083280.P11651541621722099558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - (A068385 (n + 1) + A046951 (n + 1))

end

end A083280.P11651541621722099558

/-! ## A083280.P12916910058966584310

`A066389(n+1)-A298735(A045966(n+1))`
-/

namespace A083280.P12916910058966584310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1) - A298735 (A045966 (n + 1)).toNat

end

end A083280.P12916910058966584310

/-!
# A083282: a(n) = n^(3*n).

The programs for A083282, the canonical program `A083282.P13898022033371723406` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083282 has offset 1).

The definition of A083282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(3*(n+1))` (program `A083282.P13898022033371723406`, by `A083282.P13898022033371723406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083282.P13898022033371723406

`(n+1)^(3*(n+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083282

/-- `(n+1)^(3*(n+1))` -/
def P13898022033371723406.Spec : Prop :=
  ∀ n, (P13898022033371723406.a n : ℤ) = A083282 (n + 1)

theorem P13898022033371723406.correct : P13898022033371723406.Spec := by
  intro n
  simp only [A083282, Nat.add_sub_cancel]

end A083282

/-! ## A083282.P358958517843586472

`record[(n-char[1])^(3*n)]`
-/

namespace A083282.P358958517843586472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083282.P358958517843586472

namespace A083282

/-- `record[(n-char[1])^(3*n)]` -/
def P358958517843586472.Spec : Prop :=
  ∀ n, P358958517843586472.a n = A083282 (n + 1)

end A083282

/-! ## A083282.P1666665413268987176

`abs(((n+1)^(n+1)/(1-and(2, n)))^3)`
-/

namespace A083282.P1666665413268987176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(((n + 1) ^ (n + 1) : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)) ^ 3|

end

end A083282.P1666665413268987176

namespace A083282

/-- `abs(((n+1)^(n+1)/(1-and(2, n)))^3)` -/
def P1666665413268987176.Spec : Prop :=
  ∀ n, P1666665413268987176.a n = (A083282 (n + 1) : ℚ)

end A083282

/-! ## A083282.P182107087277552810

`A233397(3*(n+1))`
-/

namespace A083282.P182107087277552810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233397 (3 * (n + 1))

end

end A083282.P182107087277552810

namespace A083282

/-- `A233397(3*(n+1))` -/
def P182107087277552810.Spec : Prop :=
  ∀ n, P182107087277552810.a n = A083282 (n + 1)

end A083282

/-! ## A083282.P10327265501784102312

`abs(A177885(n+2)^3)`
-/

namespace A083282.P10327265501784102312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A177885 (n + 2) ^ 3|

end

end A083282.P10327265501784102312

namespace A083282

/-- `abs(A177885(n+2)^3)` -/
def P10327265501784102312.Spec : Prop :=
  ∀ n, P10327265501784102312.a n = A083282 (n + 1)

end A083282

/-!
# A083284: Numbers m such that m and m+2 are both brilliant numbers, where brilliant numbers are semiprimes whose prime factors have an equal number of decimal digits, or whose prime factors are equal.

The programs for A083284, there is no canonical definition to state claims against.
-/

/-! ## A083284.P1766209990966566210

`∩[A078972(n+1)-2, A078972(n+1)]`
-/

namespace A083284.P1766209990966566210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083284.P1766209990966566210

/-! ## A083284.P16060005395058518804

`∩[A078972(n+1), A023444(A078972(n+1))]`
-/

namespace A083284.P16060005395058518804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A078972 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083284.P16060005395058518804

/-!
# A083285: Numbers n such that n and n+4 are both brilliant numbers (A078972).

The programs for A083285, there is no canonical definition to state claims against.
-/

/-! ## A083285.P1550918141933962738

`∩[A078972(n+1)-4, A078972(n+1)]`
-/

namespace A083285.P1550918141933962738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083285.P1550918141933962738

/-! ## A083285.P5507753988940892034

`∩[A078972(n+1), A023446(A078972(n+1))]`
-/

namespace A083285.P5507753988940892034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A078972 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083285.P5507753988940892034

/-!
# A083288: Sigma unitary-sigma perfect numbers: numbers m which satisfy the following equation for some integer k: sigma(usigma(m)) = k*m where usigma(m) is sum of unitary divisors of m.

The programs for A083288, there is no canonical definition to state claims against.
-/

/-! ## A083288.P17475593281067444120

`filter[A369205(n+1), A176329(#)]`
-/

namespace A083288.P17475593281067444120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A176329 (f1 j).toNat = 1) n)

end

end A083288.P17475593281067444120

/-! ## A083288.P4165691242209122397

`∩[A329996(n+1), A369205(n+1)]`
-/

namespace A083288.P4165691242209122397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083288.P4165691242209122397

/-!
# A083289: Least k such that 10^n+k is a brilliant number (cf. A078972).

The programs for A083289, there is no canonical definition to state claims against.
-/

/-! ## A083289.P13841419758246995341

`A347818(n+1)-A011557(n)`
-/

namespace A083289.P13841419758246995341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347818 (n + 1) - A011557 n

end

end A083289.P13841419758246995341

/-! ## A083289.P4242162618991370229

`A347818(n+1)-Δ[A002275(n)]`
-/

namespace A083289.P4242162618991370229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347818 (n + 1) - (f1 (n + 1) - f1 n)

end

end A083289.P4242162618991370229

/-! ## A083289.P10172037322463389063

`A347818(n+1)-A017934(2*n)`
-/

namespace A083289.P10172037322463389063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347818 (n + 1) - A017934 (2 * n)

end

end A083289.P10172037322463389063

/-! ## A083289.P1442566919615568111

`A347818(n+1)-A017936(A005408(n))`
-/

namespace A083289.P1442566919615568111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347818 (n + 1) - A017936 (A005408 n).toNat

end

end A083289.P1442566919615568111

/-! ## A083289.P16540078464870214911

`A347818(n+1)+A033873(n)-A003617(n+1)`
-/

namespace A083289.P16540078464870214911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347818 (n + 1) + (A033873 n - A003617 (n + 1))

end

end A083289.P16540078464870214911

/-!
# A083290: Number of partitions of n into distinct parts which are coprime to n and which are also pairwise relatively prime.

The programs for A083290, there is no canonical definition to state claims against.
-/

/-! ## A083290.P16066777546294041235

`A169993(A161951(n+1)-A130054(n+1))`
-/

namespace A083290.P16066777546294041235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169993 (A161951 (n + 1) - A130054 (n + 1)).toNat

end

end A083290.P16066777546294041235

/-! ## A083290.P16854722871646485106

`A351007(A039649(n+1)%A179107(n+1))`
-/

namespace A083290.P16854722871646485106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 (Int.tmod (A039649 (n + 1)) (A179107 (n + 1))).toNat

end

end A083290.P16854722871646485106

/-! ## A083290.P9385900949998127092

`A258327(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A351821(n+1))`
-/

namespace A083290.P9385900949998127092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258327 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A351821 (n + 1))).toNat

end

end A083290.P9385900949998127092

/-!
# A083291: Triangular array read by rows: T(n,k) = k*floor(n/10) + n mod 10, 0<=k<=n.

The programs for A083291, there is no canonical definition to state claims against.
-/

/-! ## A083291.P18207488526521100664

`A079475(A163352(n))%p?[A008016(n)]`
-/

namespace A083291.P18207488526521100664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079475 (A163352 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A083291.P18207488526521100664

/-! ## A083291.P16776413678861977874

`A010879(A163352(n)%A236542(n+1))`
-/

namespace A083291.P16776413678861977874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (Int.tmod (A163352 n) (A236542 (n + 1))).toNat

end

end A083291.P16776413678861977874

/-! ## A083291.P327074385965918245

`A007954(A163352(n))+A000035(2*A162246(n))`
-/

namespace A083291.P327074385965918245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A163352 n).toNat + A000035 (2 * A162246 n).toNat

end

end A083291.P327074385965918245

/-! ## A083291.P2642213917568225994

`∏{digits}[A163352(n), #%A136498(n+1)]`
-/

namespace A083291.P2642213917568225994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (x : ℤ) (A136498 (n + 1))).prod

end

end A083291.P2642213917568225994

/-!
# A083292: a(n) = n*floor(n/10) + (n mod 10).

The programs for A083292, the canonical program `A083292.P9512798182505895718` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083292 has offset 0).

The definition of A083292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083292.P9512798182505895718

`(n-10)*floor(n/10)+n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083292

/-- `(n-10)*floor(n/10)+n` -/
def P9512798182505895718.Spec : Prop :=
  ∀ n, P9512798182505895718.a n = A083292 n

theorem P9512798182505895718.correct : P9512798182505895718.Spec := by
  intro n
  simp only [A083292]

end A083292

/-! ## A083292.P8721980425115828309

`abs((n-10)*A059995(n)+n)`
-/

namespace A083292.P8721980425115828309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 10) * A059995 n + (n : ℤ)|

end

end A083292.P8721980425115828309

namespace A083292

/-- `abs((n-10)*A059995(n)+n)` -/
def P8721980425115828309.Spec : Prop :=
  ∀ n, P8721980425115828309.a n = A083292 n

end A083292

/-! ## A083292.P3236183413749288769

`((n-10)*A059995(n)+n)%A008255(n)`
-/

namespace A083292.P3236183413749288769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - 10) * A059995 n + (n : ℤ)) (A008255 n)

end

end A083292.P3236183413749288769

namespace A083292

/-- `((n-10)*A059995(n)+n)%A008255(n)` -/
def P3236183413749288769.Spec : Prop :=
  ∀ n, P3236183413749288769.a n = A083292 n

end A083292

/-! ## A083292.P17479064159490314069

`((n-10)*A059995(n)+n)*A007318(C(3, n+2))`
-/

namespace A083292.P17479064159490314069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 10) * A059995 n + (n : ℤ)) * A007318 (Nat.choose 3 (n + 2))

end

end A083292.P17479064159490314069

namespace A083292

/-- `((n-10)*A059995(n)+n)*A007318(C(3, n+2))` -/
def P17479064159490314069.Spec : Prop :=
  ∀ n, P17479064159490314069.a n = A083292 n

end A083292

/-! ## A083292.P533803801982909663

`((n-10)*A059995(n)+n)*A007318(gcd(n+2, ∑[n]))`
-/

namespace A083292.P533803801982909663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 10) * A059995 n + (n : ℤ)) * A007318 (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A083292.P533803801982909663

namespace A083292

/-- `((n-10)*A059995(n)+n)*A007318(gcd(n+2, ∑[n]))` -/
def P533803801982909663.Spec : Prop :=
  ∀ n, P533803801982909663.a n = A083292 n

end A083292

/-! ## A083292.P805980679600792805

`A083291(∑[n]+n)`
-/

namespace A083292.P805980679600792805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083291 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A083292.P805980679600792805

namespace A083292

/-- `A083291(∑[n]+n)` -/
def P805980679600792805.Spec : Prop :=
  ∀ n, P805980679600792805.a n = A083292 n

end A083292

/-! ## A083292.P3869682302893661206

`A122618(A028310(n))%A150120(n)`
-/

namespace A083292.P3869682302893661206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122618 (A028310 n).toNat) (A150120 n)

end

end A083292.P3869682302893661206

namespace A083292

/-- `A122618(A028310(n))%A150120(n)` -/
def P3869682302893661206.Spec : Prop :=
  ∀ n, P3869682302893661206.a n = A083292 n

end A083292

/-!
# A083294: a(n) = (4 + (-9)^n)/5.

The programs for A083294, the canonical program `A083294.P9173184102920641349` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083294 has offset 0).

The definition of A083294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083294.P9173184102920641349

`(4+(-9)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083294

/-- `(4+(-9)^n)/5` -/
def P9173184102920641349.Spec : Prop :=
  ∀ n, P9173184102920641349.a n = (A083294 n : ℚ)

end A083294

/-! ## A083294.P1616413144826697047

`∑[ogf((1+7x)/(1+9x))]`
-/

namespace A083294.P1616413144826697047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083294.P1616413144826697047

namespace A083294

/-- `∑[ogf((1+7x)/(1+9x))]` -/
def P1616413144826697047.Spec : Prop :=
  ∀ n, P1616413144826697047.a n = A083294 n

end A083294

/-! ## A083294.P16285587240401438959

`ogf((1+7x)/(1+8x-9x^2))`
-/

namespace A083294.P16285587240401438959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 8, -9] n

end

end A083294.P16285587240401438959

namespace A083294

/-- `ogf((1+7x)/(1+8x-9x^2))` -/
def P16285587240401438959.Spec : Prop :=
  ∀ n, P16285587240401438959.a n = A083294 n

end A083294

/-! ## A083294.P14234861826795042842

`8-9*a(n-1)` with `a(0)=1`
-/

namespace A083294.P14234861826795042842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 - 9 * a (n - 1)

end

end A083294.P14234861826795042842

namespace A083294

/-- `8-9*a(n-1)` -/
def P14234861826795042842.Spec : Prop :=
  ∀ n, P14234861826795042842.a n = A083294 n

end A083294

/-! ## A083294.P8367980954867544857

`8-a(n-1)/(1/3)²` with `a(0)=1`
-/

namespace A083294.P8367980954867544857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 - a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A083294.P8367980954867544857

namespace A083294

/-- `8-a(n-1)/(1/3)²` -/
def P8367980954867544857.Spec : Prop :=
  ∀ n, P8367980954867544857.a n = (A083294 n : ℚ)

end A083294

/-! ## A083294.P11706816565199115671

`∑[A033999(n)*A270369(n)]`
-/

namespace A083294.P11706816565199115671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A270369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083294.P11706816565199115671

namespace A083294

/-- `∑[A033999(n)*A270369(n)]` -/
def P11706816565199115671.Spec : Prop :=
  ∀ n, P11706816565199115671.a n = A083294 n

end A083294

/-!
# A083295: a(n) = (4*2^n + (-8)^n)/5.

The programs for A083295, the canonical program `A083295.P9290451539464174613` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083295 has offset 0).

The definition of A083295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083295.P9290451539464174613

`(4*2^n+(-8)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083295

/-- `(4*2^n+(-8)^n)/5` -/
def P9290451539464174613.Spec : Prop :=
  ∀ n, P9290451539464174613.a n = (A083295 n : ℚ)

end A083295

/-! ## A083295.P10004475461978868208

`ogf((1+6x)/(1+6x-16x^2))`
-/

namespace A083295.P10004475461978868208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 6, -16] n

end

end A083295.P10004475461978868208

namespace A083295

/-- `ogf((1+6x)/(1+6x-16x^2))` -/
def P10004475461978868208.Spec : Prop :=
  ∀ n, P10004475461978868208.a n = A083295 n

end A083295

/-! ## A083295.P10918387771014080541

`4*(2^n-2*a(n-1))` with `a(0)=1`
-/

namespace A083295.P10918387771014080541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((2 ^ n : ℤ) - 2 * a (n - 1))

end

end A083295.P10918387771014080541

namespace A083295

/-- `4*(2^n-2*a(n-1))` -/
def P10918387771014080541.Spec : Prop :=
  ∀ n, P10918387771014080541.a n = A083295 n

end A083295

/-! ## A083295.P9705446805391197568

`2^n*A137505(4*n)`
-/

namespace A083295.P9705446805391197568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A137505 (4 * n)

end

end A083295.P9705446805391197568

namespace A083295

/-- `2^n*A137505(4*n)` -/
def P9705446805391197568.Spec : Prop :=
  ∀ n, P9705446805391197568.a n = A083295 n

end A083295

/-! ## A083295.P11189673420796086555

`8*(A011782(n)-a(n-1))` with `a(0)=1`
-/

namespace A083295.P11189673420796086555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * (A011782 n - a (n - 1))

end

end A083295.P11189673420796086555

namespace A083295

/-- `8*(A011782(n)-a(n-1))` -/
def P11189673420796086555.Spec : Prop :=
  ∀ n, P11189673420796086555.a n = A083295 n

end A083295

/-! ## A083295.P13999040282705371912

`8*(A131577(n)-a(n-1))` with `a(0)=1`
-/

namespace A083295.P13999040282705371912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * (A131577 n - a (n - 1))

end

end A083295.P13999040282705371912

namespace A083295

/-- `8*(A131577(n)-a(n-1))` -/
def P13999040282705371912.Spec : Prop :=
  ∀ n, P13999040282705371912.a n = A083295 n

end A083295

/-! ## A083295.P10234303351918511500

`A146541(n)-8*a(n-1)` with `a(0)=1`
-/

namespace A083295.P10234303351918511500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146541 n - 8 * a (n - 1)

end

end A083295.P10234303351918511500

namespace A083295

/-- `A146541(n)-8*a(n-1)` -/
def P10234303351918511500.Spec : Prop :=
  ∀ n, P10234303351918511500.a n = A083295 n

end A083295

/-! ## A083295.P2009999506895242599

`A109499(n)*A122803(n)`
-/

namespace A083295.P2009999506895242599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 n * A122803 n

end

end A083295.P2009999506895242599

namespace A083295

/-- `A109499(n)*A122803(n)` -/
def P2009999506895242599.Spec : Prop :=
  ∀ n, P2009999506895242599.a n = A083295 n

end A083295

/-! ## A083295.P15415371403225573752

`A118405(2*n)*A122803(n)`
-/

namespace A083295.P15415371403225573752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118405 (2 * n) * A122803 n

end

end A083295.P15415371403225573752

namespace A083295

/-- `A118405(2*n)*A122803(n)` -/
def P15415371403225573752.Spec : Prop :=
  ∀ n, P15415371403225573752.a n = A083295 n

end A083295

/-!
# A083296: a(n) = (4*3^n + (-7)^n)/5.

The programs for A083296, the canonical program `A083296.P7144385764679710283` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083296 has offset 0).

The definition of A083296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083296.P7144385764679710283

`(4*3^n+(-7)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083296

/-- `(4*3^n+(-7)^n)/5` -/
def P7144385764679710283.Spec : Prop :=
  ∀ n, P7144385764679710283.a n = (A083296 n : ℚ)

end A083296

/-! ## A083296.P5649841413379881384

`ogf((1+5x)/(1+4x-21x^2))`
-/

namespace A083296.P5649841413379881384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 4, -21] n

end

end A083296.P5649841413379881384

namespace A083296

/-- `ogf((1+5x)/(1+4x-21x^2))` -/
def P5649841413379881384.Spec : Prop :=
  ∀ n, P5649841413379881384.a n = A083296 n

end A083296

/-! ## A083296.P10647327600458048459

`21*a(n-2)-4*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A083296.P10647327600458048459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  21 * a (n - 2) - 4 * a (n - 1)

end

end A083296.P10647327600458048459

namespace A083296

/-- `21*a(n-2)-4*a(n-1)` -/
def P10647327600458048459.Spec : Prop :=
  ∀ n, P10647327600458048459.a n = A083296 n

end A083296

/-! ## A083296.P3509681091317961595

`A047399(3^n+1)-7*a(n-1)` with `a(0)=1`
-/

namespace A083296.P3509681091317961595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047399 (3 ^ n + 1) - 7 * a (n - 1)

end

end A083296.P3509681091317961595

namespace A083296

/-- `A047399(3^n+1)-7*a(n-1)` -/
def P3509681091317961595.Spec : Prop :=
  ∀ n, P3509681091317961595.a n = A083296 n

end A083296

/-!
# A083297: a(n) = (4*4^n + (-6)^n)/5.

The programs for A083297, the canonical program `A083297.P4243663172984394013` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083297 has offset 0).

The definition of A083297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083297.P4243663172984394013

`(4*4^n+(-6)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083297

/-- `(4*4^n+(-6)^n)/5` -/
def P4243663172984394013.Spec : Prop :=
  ∀ n, P4243663172984394013.a n = (A083297 n : ℚ)

end A083297

/-! ## A083297.P8828886374739444795

`ogf((1+4x)/(1+2x-24x^2))`
-/

namespace A083297.P8828886374739444795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 2, -24] n

end

end A083297.P8828886374739444795

namespace A083297

/-- `ogf((1+4x)/(1+2x-24x^2))` -/
def P8828886374739444795.Spec : Prop :=
  ∀ n, P8828886374739444795.a n = A083297 n

end A083297

/-! ## A083297.P18239458405214572336

`2*(4^n-3*a(n-1))` with `a(0)=1`
-/

namespace A083297.P18239458405214572336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((4 ^ n : ℤ) - 3 * a (n - 1))

end

end A083297.P18239458405214572336

namespace A083297

/-- `2*(4^n-3*a(n-1))` -/
def P18239458405214572336.Spec : Prop :=
  ∀ n, P18239458405214572336.a n = A083297 n

end A083297

/-! ## A083297.P11499553605628891223

`2*(3*4*a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A083297.P11499553605628891223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (3 * (4 * a (n - 2)) - a (n - 1))

end

end A083297.P11499553605628891223

namespace A083297

/-- `2*(3*4*a(n-2)-a(n-1))` -/
def P11499553605628891223.Spec : Prop :=
  ∀ n, P11499553605628891223.a n = A083297 n

end A083297

/-! ## A083297.P9076691270812659946

`A004171(n)-6*a(n-1)` with `a(0)=1`
-/

namespace A083297.P9076691270812659946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004171 n - 6 * a (n - 1)

end

end A083297.P9076691270812659946

namespace A083297

/-- `A004171(n)-6*a(n-1)` -/
def P9076691270812659946.Spec : Prop :=
  ∀ n, P9076691270812659946.a n = A083297 n

end A083297

/-! ## A083297.P10331228963377547158

`A122803(n)*A232015(n)`
-/

namespace A083297.P10331228963377547158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A232015 n

end

end A083297.P10331228963377547158

namespace A083297

/-- `A122803(n)*A232015(n)` -/
def P10331228963377547158.Spec : Prop :=
  ∀ n, P10331228963377547158.a n = A083297 n

end A083297

/-! ## A083297.P12108770367289767067

`(A122803(n)+A015441(n))*A122803(n)`
-/

namespace A083297.P12108770367289767067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122803 n + A015441 n) * A122803 n

end

end A083297.P12108770367289767067

namespace A083297

/-- `(A122803(n)+A015441(n))*A122803(n)` -/
def P12108770367289767067.Spec : Prop :=
  ∀ n, P12108770367289767067.a n = A083297 n

end A083297

/-! ## A083297.P6747695396877311453

`(A232015(n)-A015441(n))*A232015(n)`
-/

namespace A083297.P6747695396877311453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A232015 n - A015441 n) * A232015 n

end

end A083297.P6747695396877311453

namespace A083297

/-- `(A232015(n)-A015441(n))*A232015(n)` -/
def P6747695396877311453.Spec : Prop :=
  ∀ n, P6747695396877311453.a n = A083297 n

end A083297

/-! ## A083297.P10778391723565761546

`(A000079(n)-A091005(n+1))*A000079(n)`
-/

namespace A083297.P10778391723565761546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A091005 (n + 1)) * A000079 n

end

end A083297.P10778391723565761546

namespace A083297

/-- `(A000079(n)-A091005(n+1))*A000079(n)` -/
def P10778391723565761546.Spec : Prop :=
  ∀ n, P10778391723565761546.a n = A083297 n

end A083297

/-! ## A083297.P11009330766500028900

`(A011782(n+1)-A091005(n+1))*A011782(n+1)`
-/

namespace A083297.P11009330766500028900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) - A091005 (n + 1)) * A011782 (n + 1)

end

end A083297.P11009330766500028900

namespace A083297

/-- `(A011782(n+1)-A091005(n+1))*A011782(n+1)` -/
def P11009330766500028900.Spec : Prop :=
  ∀ n, P11009330766500028900.a n = A083297 n

end A083297

/-!
# A083299: a(n) = (4*6^n + (-4)^n)/5.

The programs for A083299, the canonical program `A083299.P11977226873257043906` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083299 has offset 0).

The definition of A083299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083299.P11977226873257043906

`(4*6^n+(-4)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083299

/-- `(4*6^n+(-4)^n)/5` -/
def P11977226873257043906.Spec : Prop :=
  ∀ n, P11977226873257043906.a n = (A083299 n : ℚ)

end A083299

/-! ## A083299.P9846097517733552166

`ogf((1+2x)/(1-2x-24x^2))`
-/

namespace A083299.P9846097517733552166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, -24] n

end

end A083299.P9846097517733552166

namespace A083299

/-- `ogf((1+2x)/(1-2x-24x^2))` -/
def P9846097517733552166.Spec : Prop :=
  ∀ n, P9846097517733552166.a n = A083299 n

end A083299

/-! ## A083299.P12622937830060395639

`2*(a(n-1)+12*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A083299.P12622937830060395639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 1) + 12 * a (n - 2))

end

end A083299.P12622937830060395639

namespace A083299

/-- `2*(a(n-1)+12*a(n-2))` -/
def P12622937830060395639.Spec : Prop :=
  ∀ n, (P12622937830060395639.a n : ℤ) = A083299 n

end A083299

/-! ## A083299.P17882487916654677660

`2^n*A133467(n)`
-/

namespace A083299.P17882487916654677660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A133467 n

end

end A083299.P17882487916654677660

namespace A083299

/-- `2^n*A133467(n)` -/
def P17882487916654677660.Spec : Prop :=
  ∀ n, P17882487916654677660.a n = A083299 n

end A083299

/-! ## A083299.P1976996819492507657

`A000400(n)-2*A051958(n)`
-/

namespace A083299.P1976996819492507657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - 2 * A051958 n

end

end A083299.P1976996819492507657

namespace A083299

/-- `A000400(n)-2*A051958(n)` -/
def P1976996819492507657.Spec : Prop :=
  ∀ n, P1976996819492507657.a n = A083299 n

end A083299

/-! ## A083299.P2967420383704522880

`abs(A091004(n+1))*A000079(n)`
-/

namespace A083299.P2967420383704522880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091004 (n + 1)| * A000079 n

end

end A083299.P2967420383704522880

namespace A083299

/-- `abs(A091004(n+1))*A000079(n)` -/
def P2967420383704522880.Spec : Prop :=
  ∀ n, P2967420383704522880.a n = A083299 n

end A083299

/-! ## A083299.P15427015695157119492

`A051958(n+1)+2*A051958(n)`
-/

namespace A083299.P15427015695157119492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051958 (n + 1) + 2 * A051958 n

end

end A083299.P15427015695157119492

namespace A083299

/-- `A051958(n+1)+2*A051958(n)` -/
def P15427015695157119492.Spec : Prop :=
  ∀ n, P15427015695157119492.a n = A083299 n

end A083299

/-! ## A083299.P851728879111551151

`abs(Δ[A091005(n+1)]*A011782(n+1))`
-/

namespace A083299.P851728879111551151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A011782 (n + 1)|

end

end A083299.P851728879111551151

namespace A083299

/-- `abs(Δ[A091005(n+1)]*A011782(n+1))` -/
def P851728879111551151.Spec : Prop :=
  ∀ n, P851728879111551151.a n = A083299 n

end A083299

/-! ## A083299.P213940588339942919

`(A000244(n)-A015441(n))*A000079(n)`
-/

namespace A083299.P213940588339942919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A015441 n) * A000079 n

end

end A083299.P213940588339942919

namespace A083299

/-- `(A000244(n)-A015441(n))*A000079(n)` -/
def P213940588339942919.Spec : Prop :=
  ∀ n, P213940588339942919.a n = A083299 n

end A083299

/-! ## A083299.P9375740953916656657

`A000400(n)-A000079(n)*A015441(n)`
-/

namespace A083299.P9375740953916656657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - A000079 n * A015441 n

end

end A083299.P9375740953916656657

namespace A083299

/-- `A000400(n)-A000079(n)*A015441(n)` -/
def P9375740953916656657.Spec : Prop :=
  ∀ n, P9375740953916656657.a n = A083299 n

end A083299

/-! ## A083299.P5844230054015667842

`(A015441(n+1)+A015441(n))*A000079(n)`
-/

namespace A083299.P5844230054015667842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015441 (n + 1) + A015441 n) * A000079 n

end

end A083299.P5844230054015667842

namespace A083299

/-- `(A015441(n+1)+A015441(n))*A000079(n)` -/
def P5844230054015667842.Spec : Prop :=
  ∀ n, P5844230054015667842.a n = A083299 n

end A083299

/-! ## A083299.P3988075442018846890

`(A084247(n+1)-A084247(n))*A091004(n+1)`
-/

namespace A083299.P3988075442018846890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084247 (n + 1) - A084247 n) * A091004 (n + 1)

end

end A083299.P3988075442018846890

namespace A083299

/-- `(A084247(n+1)-A084247(n))*A091004(n+1)` -/
def P3988075442018846890.Spec : Prop :=
  ∀ n, P3988075442018846890.a n = A083299 n

end A083299

