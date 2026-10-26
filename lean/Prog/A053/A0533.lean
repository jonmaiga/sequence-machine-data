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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B003.C004
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
# A053302: Largest n-digit prime at the start of a record in the RECORDS transform of the prime gaps.

The programs for A053302, there is no canonical definition to state claims against.
-/

/-! ## A053302.P14020298948854597642

`or(ceil(acot(n))², A073861(n+1))`
-/

namespace A053302.P14020298948854597642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 2) (A073861 (n + 1))

end

end A053302.P14020298948854597642

/-! ## A053302.P5120993334477873516

`A000230(A053303(n+1)/2)`
-/

namespace A053302.P5120993334477873516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A053303 (n + 1) : ℚ) / 2)).toNat

end

end A053302.P5120993334477873516

/-! ## A053302.P1738004413909411072

`A073861(n+1)+A000038(n)²`
-/

namespace A053302.P1738004413909411072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073861 (n + 1) + A000038 n ^ 2

end

end A053302.P1738004413909411072

/-! ## A053302.P29770864026665593

`or(A010106(n)², A073861(n+1))`
-/

namespace A053302.P29770864026665593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010106 n ^ 2) (A073861 (n + 1))

end

end A053302.P29770864026665593

/-! ## A053302.P5871160808619881100

`or(A054977(n)², A073861(n+1))`
-/

namespace A053302.P5871160808619881100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054977 n ^ 2) (A073861 (n + 1))

end

end A053302.P5871160808619881100

/-!
# A053303: Length of maximal prime gap p_{k+1} - p_k with starting prime p_k < 10^n.

The programs for A053303, there is no canonical definition to state claims against.
-/

/-! ## A053303.P4948791473737594732

`2*A213949(n+1)*ceil(acot(n))`
-/

namespace A053303.P4948791473737594732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213949 (n + 1) * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A053303.P4948791473737594732

/-! ## A053303.P10713911717955583726

`A038460(n+1)+A000038(n)`
-/

namespace A053303.P10713911717955583726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038460 (n + 1) + A000038 n

end

end A053303.P10713911717955583726

/-! ## A053303.P15464812853260272927

`A038460(n+1)*A054977(n)`
-/

namespace A053303.P15464812853260272927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038460 (n + 1) * A054977 n

end

end A053303.P15464812853260272927

/-!
# A053304: Number of 7 X 7 binary matrices with n=0..49 ones up to row and column permutations.

The programs for A053304, there is no canonical definition to state claims against.
-/

/-! ## A053304.P3614457092837470581

`A052371(n+98)`
-/

namespace A053304.P3614457092837470581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052371 (n + 98)

end

end A053304.P3614457092837470581

/-! ## A053304.P10288674437850772791

`∏{e}[7^n, A049311(#)]`
-/

namespace A053304.P10288674437850772791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A049311 (Nat.factorization (f1 n) p)

end

end A053304.P10288674437850772791

/-! ## A053304.P8584606570478793657

`A049311(n^floor(n^(1/3))^3)`
-/

namespace A053304.P8584606570478793657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3 : ℤ))).toNat

end

end A053304.P8584606570478793657

/-! ## A053304.P13950887407794707390

`A053305(A024649(n))`
-/

namespace A053304.P13950887407794707390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053305 (A024649 n).toNat

end

end A053304.P13950887407794707390

/-!
# A053305: Number of 8 X 8 binary matrices with n=0..64 ones up to row and column permutations.

The programs for A053305, there is no canonical definition to state claims against.
-/

/-! ## A053305.P1843676160987802559

`∏{e}[5^n, A049311(#)]`
-/

namespace A053305.P1843676160987802559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A049311 (Nat.factorization (f1 n) p)

end

end A053305.P1843676160987802559

/-! ## A053305.P1190270831667352813

`A049311(A274708(n²))`
-/

namespace A053305.P1190270831667352813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (A274708 (n ^ 2)).toNat

end

end A053305.P1190270831667352813

/-! ## A053305.P17001975683678800438

`A049311(A246616(n)+n)`
-/

namespace A053305.P17001975683678800438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (A246616 n + (n : ℤ)).toNat

end

end A053305.P17001975683678800438

/-! ## A053305.P2627315339648838539

`A049311(gcd(n, A239769(n)))`
-/

namespace A053305.P2627315339648838539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (Int.gcd (n : ℤ) (A239769 n))

end

end A053305.P2627315339648838539

/-! ## A053305.P12199415276607963686

`A049311(A244106(n+9)+n)`
-/

namespace A053305.P12199415276607963686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (A244106 (n + 9) + (n : ℤ)).toNat

end

end A053305.P12199415276607963686

/-!
# A053307: Number of nonnegative integer 2 X 2 matrices with sum of elements equal to n, under row and column permutations.

The programs for A053307, the canonical program `A053307.P13921910780332070041` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053307 has offset 0).

The definition of A053307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053307.P13921910780332070041

`(n+2)*(2*n²+8*n+15+9*(-1)^n)/48`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053307

/-- `(n+2)*(2*n²+8*n+15+9*(-1)^n)/48` -/
def P13921910780332070041.Spec : Prop :=
  ∀ n, P13921910780332070041.a n = (A053307 n : ℚ)

end A053307

/-! ## A053307.P18134689997884070922

`∑[C(∑[gcd(2, n)²-2], 2)]`
-/

namespace A053307.P18134689997884070922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053307.P18134689997884070922

namespace A053307

/-- `∑[C(∑[gcd(2, n)²-2], 2)]` -/
def P18134689997884070922.Spec : Prop :=
  ∀ n, (P18134689997884070922.a n : ℤ) = A053307 n

end A053307

/-! ## A053307.P15024710725708379255

`∑[C(∑[1-a(n-1)], 2)]` with `a(0)=2`
-/

namespace A053307.P15024710725708379255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053307.P15024710725708379255

namespace A053307

/-- `∑[C(∑[1-a(n-1)], 2)]` -/
def P15024710725708379255.Spec : Prop :=
  ∀ n, (P15024710725708379255.a n : ℤ) = A053307 n

end A053307

/-! ## A053307.P10048588365471939326

`∑[∑[∑[-n]/a(n-1)]]` with `a(0)=1`
-/

namespace A053307.P10048588365471939326
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053307.P10048588365471939326

namespace A053307

/-- `∑[∑[∑[-n]/a(n-1)]]` -/
def P10048588365471939326.Spec : Prop :=
  ∀ n, P10048588365471939326.a n = (A053307 n : ℚ)

end A053307

/-! ## A053307.P15849251962371798302

`∑[a(n-2)+n]-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A053307.P15849251962371798302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A053307.P15849251962371798302

namespace A053307

/-- `∑[a(n-2)+n]-a(n-1)` -/
def P15849251962371798302.Spec : Prop :=
  ∀ n, P15849251962371798302.a n = A053307 n

end A053307

/-! ## A053307.P13621335996048129342

`∑[∑[n-a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A053307.P13621335996048129342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053307.P13621335996048129342

namespace A053307

/-- `∑[∑[n-a(n-1)]-a(n-1)]` -/
def P13621335996048129342.Spec : Prop :=
  ∀ n, P13621335996048129342.a n = A053307 n

end A053307

/-! ## A053307.P4773659896753781629

`∑[A008795(n)]`
-/

namespace A053307.P4773659896753781629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053307.P4773659896753781629

namespace A053307

/-- `∑[A008795(n)]` -/
def P4773659896753781629.Spec : Prop :=
  ∀ n, P4773659896753781629.a n = A053307 n

end A053307

/-! ## A053307.P9909181441002814364

`A030533(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A053307.P9909181441002814364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A030533 n - a (n - 2)

end

end A053307.P9909181441002814364

namespace A053307

/-- `A030533(n)-a(n-2)` -/
def P9909181441002814364.Spec : Prop :=
  ∀ n, P9909181441002814364.a n = A053307 n

end A053307

/-! ## A053307.P8832075252134436680

`A175287(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A053307.P8832075252134436680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175287 (n + 1) - a (n - 1)

end

end A053307.P8832075252134436680

namespace A053307

/-- `A175287(n+1)-a(n-1)` -/
def P8832075252134436680.Spec : Prop :=
  ∀ n, P8832075252134436680.a n = A053307 n

end A053307

/-! ## A053307.P6823961686750379618

`A004657(n)+A001971(n)`
-/

namespace A053307.P6823961686750379618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004657 n + A001971 n

end

end A053307.P6823961686750379618

namespace A053307

/-- `A004657(n)+A001971(n)` -/
def P6823961686750379618.Spec : Prop :=
  ∀ n, P6823961686750379618.a n = A053307 n

end A053307

/-! ## A053307.P3402947137075958916

`A027656(n)+A006918(n)`
-/

namespace A053307.P3402947137075958916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A006918 n

end

end A053307.P3402947137075958916

namespace A053307

/-- `A027656(n)+A006918(n)` -/
def P3402947137075958916.Spec : Prop :=
  ∀ n, P3402947137075958916.a n = A053307 n

end A053307

/-! ## A053307.P2485117279757712079

`A005993(n)-A006918(n)`
-/

namespace A053307.P2485117279757712079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - A006918 n

end

end A053307.P2485117279757712079

namespace A053307

/-- `A005993(n)-A006918(n)` -/
def P2485117279757712079.Spec : Prop :=
  ∀ n, P2485117279757712079.a n = A053307 n

end A053307

/-! ## A053307.P4394019307632571137

`A006414(n)%A168380(n+1)`
-/

namespace A053307.P4394019307632571137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006414 n) (A168380 (n + 1))

end

end A053307.P4394019307632571137

namespace A053307

/-- `A006414(n)%A168380(n+1)` -/
def P4394019307632571137.Spec : Prop :=
  ∀ n, P4394019307632571137.a n = A053307 n

end A053307

/-! ## A053307.P10030679256359883611

`∑[A008619(n)²]-A006918(n)`
-/

namespace A053307.P10030679256359883611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006918 n

end

end A053307.P10030679256359883611

namespace A053307

/-- `∑[A008619(n)²]-A006918(n)` -/
def P10030679256359883611.Spec : Prop :=
  ∀ n, P10030679256359883611.a n = A053307 n

end A053307

/-! ## A053307.P9807852913132102918

`∑[∑[A059841(n)]²]-A006918(n)`
-/

namespace A053307.P9807852913132102918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006918 n

end

end A053307.P9807852913132102918

namespace A053307

/-- `∑[∑[A059841(n)]²]-A006918(n)` -/
def P9807852913132102918.Spec : Prop :=
  ∀ n, P9807852913132102918.a n = A053307 n

end A053307

/-! ## A053307.P10835898551672280047

`A206806(n+2)-A394293(n+1)`
-/

namespace A053307.P10835898551672280047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206806 (n + 2) - A394293 (n + 1)

end

end A053307.P10835898551672280047

namespace A053307

/-- `A206806(n+2)-A394293(n+1)` -/
def P10835898551672280047.Spec : Prop :=
  ∀ n, P10835898551672280047.a n = A053307 n

end A053307

/-! ## A053307.P16684835803723497365

`A168380(n+1)/2-A006918(n)`
-/

namespace A053307.P16684835803723497365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168380 (n + 1) : ℚ) / 2 - (A006918 n : ℚ)

end

end A053307.P16684835803723497365

namespace A053307

/-- `A168380(n+1)/2-A006918(n)` -/
def P16684835803723497365.Spec : Prop :=
  ∀ n, P16684835803723497365.a n = (A053307 n : ℚ)

end A053307

/-! ## A053307.P9275865926485733372

`∑[∑[A176447(n+1)]]`
-/

namespace A053307.P9275865926485733372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053307.P9275865926485733372

namespace A053307

/-- `∑[∑[A176447(n+1)]]` -/
def P9275865926485733372.Spec : Prop :=
  ∀ n, P9275865926485733372.a n = A053307 n

end A053307

/-! ## A053307.P14545435115645811747

`Δ[A002624(n)-A005993(n)]`
-/

namespace A053307.P14545435115645811747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 n - A005993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053307.P14545435115645811747

namespace A053307

/-- `Δ[A002624(n)-A005993(n)]` -/
def P14545435115645811747.Spec : Prop :=
  ∀ n, P14545435115645811747.a n = A053307 n

end A053307

/-! ## A053307.P7827808619134478295

`A029262(6*n)`
-/

namespace A053307.P7827808619134478295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 (6 * n)

end

end A053307.P7827808619134478295

namespace A053307

/-- `A029262(6*n)` -/
def P7827808619134478295.Spec : Prop :=
  ∀ n, P7827808619134478295.a n = A053307 n

end A053307

/-!
# A053308: Partial sums of A053296.

The programs for A053308, the canonical program `A053308.P9553699303775393873` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053308 has offset 0).

The definition of A053308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053308.P9553699303775393873

`a(n-1)+a(n-2)+C(n+7, 7)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053308

/-- `a(n-1)+a(n-2)+C(n+7, 7)` -/
def P9553699303775393873.Spec : Prop :=
  ∀ n, (P9553699303775393873.a n : ℤ) = A053308 n

theorem P9553699303775393873.correct : P9553699303775393873.Spec := by
  intro n
  simp only [A053308]

end A053308

/-! ## A053308.P547296992148986449

`∑[A053296(n)]`
-/

namespace A053308.P547296992148986449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053308.P547296992148986449

namespace A053308

/-- `∑[A053296(n)]` -/
def P547296992148986449.Spec : Prop :=
  ∀ n, P547296992148986449.a n = A053308 n

end A053308

/-! ## A053308.P5752503172481829089

`∑[∑[A053295(n)]]`
-/

namespace A053308.P5752503172481829089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053308.P5752503172481829089

namespace A053308

/-- `∑[∑[A053295(n)]]` -/
def P5752503172481829089.Spec : Prop :=
  ∀ n, P5752503172481829089.a n = A053308 n

end A053308

/-! ## A053308.P3538414369469515531

`∑[∑[∑[A053739(n)]]]`
-/

namespace A053308.P3538414369469515531
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053308.P3538414369469515531

namespace A053308

/-- `∑[∑[∑[A053739(n)]]]` -/
def P3538414369469515531.Spec : Prop :=
  ∀ n, P3538414369469515531.a n = A053308 n

end A053308

/-! ## A053308.P8014682449905898545

`∑[∑[∑[∑[∑[∑[∑[∑[A000045(n+1)]]]]]]]]`
-/

namespace A053308.P8014682449905898545
noncomputable section

def f8 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053308.P8014682449905898545

namespace A053308

/-- `∑[∑[∑[∑[∑[∑[∑[∑[A000045(n+1)]]]]]]]]` -/
def P8014682449905898545.Spec : Prop :=
  ∀ n, P8014682449905898545.a n = A053308 n

end A053308

/-! ## A053308.P3169491665531579853

`∪[A027956(n+3), A027940(n+4)]`
-/

namespace A053308.P3169491665531579853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027956 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027940 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053308.P3169491665531579853

namespace A053308

/-- `∪[A027956(n+3), A027940(n+4)]` -/
def P3169491665531579853.Spec : Prop :=
  ∀ n, (P3169491665531579853.a n : ℤ) = A053308 n

end A053308

/-! ## A053308.P15057555152535707114

`A053309(n+1)-(A053309(n)+A053296(n+1))`
-/

namespace A053308.P15057555152535707114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053309 (n + 1) - (A053309 n + A053296 (n + 1))

end

end A053308.P15057555152535707114

namespace A053308

/-- `A053309(n+1)-(A053309(n)+A053296(n+1))` -/
def P15057555152535707114.Spec : Prop :=
  ∀ n, P15057555152535707114.a n = A053308 n

end A053308

/-!
# A053309: Partial sums of A053308.

The programs for A053309, the canonical program `A053309.P6690617712502021607` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053309 has offset 0).

The definition of A053309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053309.P6690617712502021607

`a(n-1)+a(n-2)+C(n+8, 8)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053309

/-- `a(n-1)+a(n-2)+C(n+8, 8)` -/
def P6690617712502021607.Spec : Prop :=
  ∀ n, (P6690617712502021607.a n : ℤ) = A053309 n

theorem P6690617712502021607.correct : P6690617712502021607.Spec := by
  intro n
  simp only [A053309]

end A053309

/-! ## A053309.P10600181619937881038

`∑[A053308(n)]`
-/

namespace A053309.P10600181619937881038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053309.P10600181619937881038

namespace A053309

/-- `∑[A053308(n)]` -/
def P10600181619937881038.Spec : Prop :=
  ∀ n, P10600181619937881038.a n = A053309 n

end A053309

/-! ## A053309.P11846772938415552369

`∑[∑[A053296(n)]]`
-/

namespace A053309.P11846772938415552369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053309.P11846772938415552369

namespace A053309

/-- `∑[∑[A053296(n)]]` -/
def P11846772938415552369.Spec : Prop :=
  ∀ n, P11846772938415552369.a n = A053309 n

end A053309

/-! ## A053309.P4654818947515668619

`∑[∑[∑[A053295(n)]]]`
-/

namespace A053309.P4654818947515668619
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053309.P4654818947515668619

namespace A053309

/-- `∑[∑[∑[A053295(n)]]]` -/
def P4654818947515668619.Spec : Prop :=
  ∀ n, P4654818947515668619.a n = A053309 n

end A053309

/-! ## A053309.P12258218839522078933

`∑[∑[∑[∑[A053739(n)]]]]`
-/

namespace A053309.P12258218839522078933
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053309.P12258218839522078933

namespace A053309

/-- `∑[∑[∑[∑[A053739(n)]]]]` -/
def P12258218839522078933.Spec : Prop :=
  ∀ n, P12258218839522078933.a n = A053309 n

end A053309

/-! ## A053309.P5488968532311201292

`A053308(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A053309.P5488968532311201292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053308 (n % (n + 1)) + a (n - 1)

end

end A053309.P5488968532311201292

namespace A053309

/-- `A053308(n%(n+1))+a(n-1)` -/
def P5488968532311201292.Spec : Prop :=
  ∀ n, P5488968532311201292.a n = A053309 n

end A053309

/-! ## A053309.P1001350259122659066

`∑[A027926((n+9)²-(n+1))]`
-/

namespace A053309.P1001350259122659066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n + 9) ^ 2 - (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053309.P1001350259122659066

namespace A053309

/-- `∑[A027926((n+9)²-(n+1))]` -/
def P1001350259122659066.Spec : Prop :=
  ∀ n, P1001350259122659066.a n = A053309 n

end A053309

/-!
# A053310: a(n) = (n+3)*binomial(n+8, 8)/3.

The programs for A053310, the canonical program `A053310.P18227198859901366220` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053310 has offset 0).

The definition of A053310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)*C(n+8, 8)/3` (program `A053310.P9635986366084052670`, by `A053310.P9635986366084052670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053310.P9635986366084052670

`(n+3)*C(n+8, 8)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053310.P9635986366084052670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.choose (n + 8) 8 : ℚ) / 3

end

end A053310.P9635986366084052670

namespace A053310

/-- `(n+3)*C(n+8, 8)/3` -/
def P9635986366084052670.Spec : Prop :=
  ∀ n, P9635986366084052670.a n = (A053310 n : ℚ)

theorem P9635986366084052670.correct : P9635986366084052670.Spec := by
  intro n
  simp only [A053310, Nat.add_sub_cancel, A053310.P9635986366084052670.a, A053310.P18227198859901366220.a, A055843, A055843.P13673213389990630587.a, A055844, A055844.P3977546084257467032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053310

/-! ## A053310.P2197490528585494852

`∑[∑[∑[∑[∑[∑[∑[∑[3*n+1]]]]]]]]`
-/

namespace A053310.P2197490528585494852
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053310.P2197490528585494852

namespace A053310

/-- `∑[∑[∑[∑[∑[∑[∑[∑[3*n+1]]]]]]]]` -/
def P2197490528585494852.Spec : Prop :=
  ∀ n, (P2197490528585494852.a n : ℤ) = A053310 n

end A053310

/-! ## A053310.P17123734170183215623

`A104671(n)/∑[n+1]`
-/

namespace A053310.P17123734170183215623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104671 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A053310.P17123734170183215623

namespace A053310

/-- `A104671(n)/∑[n+1]` -/
def P17123734170183215623.Spec : Prop :=
  ∀ n, P17123734170183215623.a n = (A053310 n : ℚ)

end A053310

/-! ## A053310.P12076641656915434100

`A053367(n)+a(n-1)` with `a(0)=1`
-/

namespace A053310.P12076641656915434100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053367 n + a (n - 1)

end

end A053310.P12076641656915434100

namespace A053310

/-- `A053367(n)+a(n-1)` -/
def P12076641656915434100.Spec : Prop :=
  ∀ n, P12076641656915434100.a n = A053310 n

end A053310

/-! ## A053310.P5831986904880142061

`(n+3)*A000581(n+8)/3`
-/

namespace A053310.P5831986904880142061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((A000581 (n + 8) : ℚ) / 3)

end

end A053310.P5831986904880142061

namespace A053310

/-- `(n+3)*A000581(n+8)/3` -/
def P5831986904880142061.Spec : Prop :=
  ∀ n, P5831986904880142061.a n = (A053310 n : ℚ)

theorem P5831986904880142061.correct : P5831986904880142061.Spec := by
  intro n
  simp only [A053310, Nat.add_sub_cancel, A053310.P5831986904880142061.a, A053310.P18227198859901366220.a, A000581, A000581.P12083568850536544774.a, A055843, A055843.P13673213389990630587.a, A055844, A055844.P3977546084257467032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053310

/-! ## A053310.P3879318671362441439

`lcm(∑[A053367(n)], A033999(n))`
-/

namespace A053310.P3879318671362441439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053367 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A053310.P3879318671362441439

namespace A053310

/-- `lcm(∑[A053367(n)], A033999(n))` -/
def P3879318671362441439.Spec : Prop :=
  ∀ n, (P3879318671362441439.a n : ℤ) = A053310 n

end A053310

/-! ## A053310.P9988484525923074412

`or(∑[A053367(n)], A000007(n))`
-/

namespace A053310.P9988484525923074412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A053310.P9988484525923074412

namespace A053310

/-- `or(∑[A053367(n)], A000007(n))` -/
def P9988484525923074412.Spec : Prop :=
  ∀ n, P9988484525923074412.a n = A053310 n

end A053310

/-! ## A053310.P18227198859901366220

`2*A055843(n)-A055844(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053310

/-- `2*A055843(n)-A055844(n)` -/
def P18227198859901366220.Spec : Prop :=
  ∀ n, P18227198859901366220.a n = A053310 n

theorem P18227198859901366220.correct : P18227198859901366220.Spec := by
  intro n
  simp only [A053310]

end A053310

/-! ## A053310.P13587706705910103035

`A065357(n)²*∑[A053367(n)]`
-/

namespace A053310.P13587706705910103035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053310.P13587706705910103035

namespace A053310

/-- `A065357(n)²*∑[A053367(n)]` -/
def P13587706705910103035.Spec : Prop :=
  ∀ n, P13587706705910103035.a n = A053310 n

end A053310

/-! ## A053310.P8472333374401608931

`A055843(n)+A055844(n)-A055848(n)`
-/

namespace A053310.P8472333374401608931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055843 n + (A055844 n - A055848 n)

end

end A053310.P8472333374401608931

namespace A053310

/-- `A055843(n)+A055844(n)-A055848(n)` -/
def P8472333374401608931.Spec : Prop :=
  ∀ n, P8472333374401608931.a n = A053310 n

end A053310

/-! ## A053310.P14642280860906821897

`∑[A053367(n)]^A003557(A100484(n+1))`
-/

namespace A053310.P14642280860906821897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053367 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A003557 (A100484 (n + 1)).toNat : ℤ)

end

end A053310.P14642280860906821897

namespace A053310

/-- `∑[A053367(n)]^A003557(A100484(n+1))` -/
def P14642280860906821897.Spec : Prop :=
  ∀ n, P14642280860906821897.a n = (A053310 n : ℚ)

end A053310

/-! ## A053310.P2483067726872173064

`A095660(A000124(n+10)-11)`
-/

namespace A053310.P2483067726872173064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A000124 (n + 10) - 11).toNat

end

end A053310.P2483067726872173064

namespace A053310

/-- `A095660(A000124(n+10)-11)` -/
def P2483067726872173064.Spec : Prop :=
  ∀ n, P2483067726872173064.a n = A053310 n

end A053310

/-! ## A053310.P2820347238362218284

`A093560(A167499(n+8)+4)`
-/

namespace A053310.P2820347238362218284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A167499 (n + 8) + 4).toNat

end

end A053310.P2820347238362218284

namespace A053310

/-- `A093560(A167499(n+8)+4)` -/
def P2820347238362218284.Spec : Prop :=
  ∀ n, P2820347238362218284.a n = A053310 n

end A053310

/-!
# A053311: Partial sums of A000285.

The programs for A053311, the canonical program `A053311.P9778916155767506881` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053311 has offset 0).

The definition of A053311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053311.P9778916155767506881

`a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053311

/-- `a(n-1)+a(n-2)+4` -/
def P9778916155767506881.Spec : Prop :=
  ∀ n, (P9778916155767506881.a n : ℤ) = A053311 n

theorem P9778916155767506881.correct : P9778916155767506881.Spec := by
  intro n
  simp only [A053311]

end A053311

/-! ## A053311.P8601536963776625937

`A000285(n+2)-4`
-/

namespace A053311.P8601536963776625937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 2) - 4

end

end A053311.P8601536963776625937

namespace A053311

/-- `A000285(n+2)-4` -/
def P8601536963776625937.Spec : Prop :=
  ∀ n, P8601536963776625937.a n = A053311 n

end A053311

/-! ## A053311.P2985961570615611526

`A000071(n+3)+3*A000071(n+2)`
-/

namespace A053311.P2985961570615611526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + 3 * A000071 (n + 2)

end

end A053311.P2985961570615611526

namespace A053311

/-- `A000071(n+3)+3*A000071(n+2)` -/
def P2985961570615611526.Spec : Prop :=
  ∀ n, P2985961570615611526.a n = A053311 n

end A053311

/-! ## A053311.P17475667265400656407

`4*A000045(n+2)+A000045(n+1)-4`
-/

namespace A053311.P17475667265400656407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) + A000045 (n + 1) - 4

end

end A053311.P17475667265400656407

namespace A053311

/-- `4*A000045(n+2)+A000045(n+1)-4` -/
def P17475667265400656407.Spec : Prop :=
  ∀ n, P17475667265400656407.a n = A053311 n

end A053311

/-! ## A053311.P3536888932072701334

`ogf((1+3x)/(1-2x+x^3))`
-/

namespace A053311.P3536888932072701334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, 0, 1] n

end

end A053311.P3536888932072701334

namespace A053311

/-- `ogf((1+3x)/(1-2x+x^3))` -/
def P3536888932072701334.Spec : Prop :=
  ∀ n, P3536888932072701334.a n = A053311 n

end A053311

/-! ## A053311.P11323309131749964425

`∑[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A053311.P11323309131749964425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053311.P11323309131749964425

namespace A053311

/-- `∑[a(n-1)+a(n-2)]` -/
def P11323309131749964425.Spec : Prop :=
  ∀ n, (P11323309131749964425.a n : ℤ) = A053311 n

end A053311

/-! ## A053311.P15763652496323842736

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=10`
-/

namespace A053311.P15763652496323842736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A053311.P15763652496323842736

namespace A053311

/-- `2*a(n-1)-a(n-3)` -/
def P15763652496323842736.Spec : Prop :=
  ∀ n, P15763652496323842736.a n = A053311 n

end A053311

/-! ## A053311.P7640105942322511363

`5-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A053311.P7640105942322511363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 - (1 - a (n - 1) - a (n - 2))

end

end A053311.P7640105942322511363

namespace A053311

/-- `5-floor(1-a(n-1)-a(n-2))` -/
def P7640105942322511363.Spec : Prop :=
  ∀ n, P7640105942322511363.a n = A053311 n

end A053311

/-! ## A053311.P15391430662658331767

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A053311.P15391430662658331767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053311.P15391430662658331767

namespace A053311

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P15391430662658331767.Spec : Prop :=
  ∀ n, P15391430662658331767.a n = A053311 n

end A053311

/-! ## A053311.P2188476817327290185

`∑[A000285(n)]`
-/

namespace A053311.P2188476817327290185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053311.P2188476817327290185

namespace A053311

/-- `∑[A000285(n)]` -/
def P2188476817327290185.Spec : Prop :=
  ∀ n, P2188476817327290185.a n = A053311 n

end A053311

/-! ## A053311.P13101734562253447570

`∑[A022308(n)+1]`
-/

namespace A053311.P13101734562253447570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053311.P13101734562253447570

namespace A053311

/-- `∑[A022308(n)+1]` -/
def P13101734562253447570.Spec : Prop :=
  ∀ n, P13101734562253447570.a n = A053311 n

end A053311

/-! ## A053311.P3458471670273329996

`∑[A104449(n+1)]`
-/

namespace A053311.P3458471670273329996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053311.P3458471670273329996

namespace A053311

/-- `∑[A104449(n+1)]` -/
def P3458471670273329996.Spec : Prop :=
  ∀ n, P3458471670273329996.a n = A053311 n

end A053311

/-! ## A053311.P3660949373113550104

`∑[A294157(n)/2]`
-/

namespace A053311.P3660949373113550104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294157 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053311.P3660949373113550104

namespace A053311

/-- `∑[A294157(n)/2]` -/
def P3660949373113550104.Spec : Prop :=
  ∀ n, P3660949373113550104.a n = (A053311 n : ℚ)

end A053311

/-! ## A053311.P4247325556658941541

`∑[A022380(n)/3]`
-/

namespace A053311.P4247325556658941541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022380 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053311.P4247325556658941541

namespace A053311

/-- `∑[A022380(n)/3]` -/
def P4247325556658941541.Spec : Prop :=
  ∀ n, P4247325556658941541.a n = (A053311 n : ℚ)

end A053311

/-! ## A053311.P13413452507582381029

`∑[abs(Δ[A171516(n)])]`
-/

namespace A053311.P13413452507582381029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053311.P13413452507582381029

namespace A053311

/-- `∑[abs(Δ[A171516(n)])]` -/
def P13413452507582381029.Spec : Prop :=
  ∀ n, P13413452507582381029.a n = A053311 n

end A053311

/-! ## A053311.P14948721818805888822

`A171516(n+1)-1`
-/

namespace A053311.P14948721818805888822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 (n + 1) - 1

end

end A053311.P14948721818805888822

namespace A053311

/-- `A171516(n+1)-1` -/
def P14948721818805888822.Spec : Prop :=
  ∀ n, P14948721818805888822.a n = A053311 n

end A053311

/-! ## A053311.P7059615703287241231

`A022308(n+2)-3`
-/

namespace A053311.P7059615703287241231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 2) - 3

end

end A053311.P7059615703287241231

namespace A053311

/-- `A022308(n+2)-3` -/
def P7059615703287241231.Spec : Prop :=
  ∀ n, P7059615703287241231.a n = A053311 n

end A053311

/-! ## A053311.P16512088635542909696

`A104449(n+3)-4`
-/

namespace A053311.P16512088635542909696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 3) - 4

end

end A053311.P16512088635542909696

namespace A053311

/-- `A104449(n+3)-4` -/
def P16512088635542909696.Spec : Prop :=
  ∀ n, P16512088635542909696.a n = A053311 n

end A053311

/-! ## A053311.P7199227492690951663

`A030119(n+1)+n`
-/

namespace A053311.P7199227492690951663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 (n + 1) + (n : ℤ)

end

end A053311.P7199227492690951663

namespace A053311

/-- `A030119(n+1)+n` -/
def P7199227492690951663.Spec : Prop :=
  ∀ n, P7199227492690951663.a n = A053311 n

end A053311

/-! ## A053311.P10462491181699224317

`∑[record[A104449(n)]]-2`
-/

namespace A053311.P10462491181699224317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A053311.P10462491181699224317

namespace A053311

/-- `∑[record[A104449(n)]]-2` -/
def P10462491181699224317.Spec : Prop :=
  ∀ n, P10462491181699224317.a n = A053311 n

end A053311

/-!
# A053312: a(n) contains n digits (either '1' or '2') and is divisible by 2^n.

The programs for A053312, the canonical program `A053312.P11267632743771748433` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053312 has offset 1).

The definition of A053312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053312.P11267632743771748433

`a(n-1)+10^n*(2-(a(n-1)/2^n)%2)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053312

/-- `a(n-1)+10^n*(2-(a(n-1)/2^n)%2)` -/
def P11267632743771748433.Spec : Prop :=
  ∀ n, P11267632743771748433.a n = A053312 (n + 1)

theorem P11267632743771748433.correct : P11267632743771748433.Spec := by
  intro n
  simp only [A053312, Nat.add_sub_cancel]

end A053312

/-! ## A053312.P5521937402753250552

`A053335(n+1)/3`
-/

namespace A053312.P5521937402753250552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053335 (n + 1) : ℚ) / 3

end

end A053312.P5521937402753250552

namespace A053312

/-- `A053335(n+1)/3` -/
def P5521937402753250552.Spec : Prop :=
  ∀ n, P5521937402753250552.a n = (A053312 (n + 1) : ℚ)

theorem P5521937402753250552.correct : P5521937402753250552.Spec := by
  intro n
  simp only [A053312, Nat.add_sub_cancel, A053312.P5521937402753250552.a, A053312.P11267632743771748433.a, A053335, A053335.P4748056852846106201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053312

/-! ## A053312.P2375115867302410742

`∑[A011557(n)*A023396(n+1)]`
-/

namespace A053312.P2375115867302410742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053312.P2375115867302410742

namespace A053312

/-- `∑[A011557(n)*A023396(n+1)]` -/
def P2375115867302410742.Spec : Prop :=
  ∀ n, P2375115867302410742.a n = A053312 (n + 1)

end A053312

/-! ## A053312.P5841177069774433560

`Δ[A126646(n)]*A126933(n+1)`
-/

namespace A053312.P5841177069774433560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A126933 (n + 1)

end

end A053312.P5841177069774433560

namespace A053312

/-- `Δ[A126646(n)]*A126933(n+1)` -/
def P5841177069774433560.Spec : Prop :=
  ∀ n, P5841177069774433560.a n = A053312 (n + 1)

end A053312

/-! ## A053312.P8167435910819270207

`A000079(n+1)*A126933(n+1)`
-/

namespace A053312.P8167435910819270207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A126933 (n + 1)

end

end A053312.P8167435910819270207

namespace A053312

/-- `A000079(n+1)*A126933(n+1)` -/
def P8167435910819270207.Spec : Prop :=
  ∀ n, P8167435910819270207.a n = A053312 (n + 1)

end A053312

/-! ## A053312.P6996778550716235197

`∑[A023407(n+1)/3*A011557(n)]`
-/

namespace A053312.P6996778550716235197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023407 (n + 1) : ℚ) / 3 * (A011557 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053312.P6996778550716235197

namespace A053312

/-- `∑[A023407(n+1)/3*A011557(n)]` -/
def P6996778550716235197.Spec : Prop :=
  ∀ n, P6996778550716235197.a n = (A053312 (n + 1) : ℚ)

end A053312

/-! ## A053312.P1897139149841775050

`record[A053335(A008619(n))/A174971(n)]`
-/

namespace A053312.P1897139149841775050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053335 (A008619 n).toNat : ℚ) / (A174971 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053312.P1897139149841775050

namespace A053312

/-- `record[A053335(A008619(n))/A174971(n)]` -/
def P1897139149841775050.Spec : Prop :=
  ∀ n, P1897139149841775050.a n = (A053312 (n + 1) : ℚ)

end A053312

/-! ## A053312.P9171990131072998585

`∑[A018005(A016777(n))*A023396(n+1)]`
-/

namespace A053312.P9171990131072998585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053312.P9171990131072998585

namespace A053312

/-- `∑[A018005(A016777(n))*A023396(n+1)]` -/
def P9171990131072998585.Spec : Prop :=
  ∀ n, P9171990131072998585.a n = A053312 (n + 1)

end A053312

/-!
# A053313: a(n) contains n digits (either '2' or '9') and is divisible by 2^n.

The programs for A053313, there is no canonical definition to state claims against.
-/

/-! ## A053313.P17988766874064734079

`∑[A011557(n)*A023400(n+1)]`
-/

namespace A053313.P17988766874064734079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053313.P17988766874064734079

/-! ## A053313.P675473211534871788

`∑[A017934(2*n)*A023400(n+1)]`
-/

namespace A053313.P675473211534871788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n) * A023400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053313.P675473211534871788

/-! ## A053313.P10494756909862028921

`a(A023443(n))+A011557(n)*A023400(n+1)` with `a(0)=2`
-/

namespace A053313.P10494756909862028921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (A023443 n).toNat + A011557 n * A023400 (n + 1)

end

end A053313.P10494756909862028921

/-! ## A053313.P6755038322377624399

`∩[A241882(n+1), A284923(n+1)]`
-/

namespace A053313.P6755038322377624399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053313.P6755038322377624399

/-!
# A053314: a(n) contains n digits '1' or '4' and is divisible by 2^n.

The programs for A053314, there is no canonical definition to state claims against.
-/

/-! ## A053314.P5401566808233937244

`∑[A011557(n)*A023401(n+1)]`
-/

namespace A053314.P5401566808233937244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053314.P5401566808233937244

/-! ## A053314.P12302464349710064877

`∑[A017934(2*n)*A023401(n+1)]`
-/

namespace A053314.P12302464349710064877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n) * A023401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053314.P12302464349710064877

/-! ## A053314.P12836078269502626209

`∩[A032822(n+1), A241882(n+1)]`
-/

namespace A053314.P12836078269502626209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053314.P12836078269502626209

/-! ## A053314.P5478083908766493595

`A053338(n+1)-A053317(A056525(n+1))`
-/

namespace A053314.P5478083908766493595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053338 (n + 1) - A053317 (A056525 (n + 1)).toNat

end

end A053314.P5478083908766493595

/-!
# A053315: a(n) contains n digits (either '4' or '5') and is divisible by 2^n.

The programs for A053315, there is no canonical definition to state claims against.
-/

/-! ## A053315.P10967617558030210957

`∑[10^n*A023403(n+1)]`
-/

namespace A053315.P10967617558030210957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A023403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053315.P10967617558030210957

/-! ## A053315.P2488700330540746712

`∑[A023403(n+1)*A011557(n)]`
-/

namespace A053315.P2488700330540746712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023403 (n + 1) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053315.P2488700330540746712

/-! ## A053315.P16325041741958202105

`∑[(5-A004547(A168335(n+1)))*A011557(n)]`
-/

namespace A053315.P16325041741958202105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A004547 (A168335 (n + 1)).toNat) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053315.P16325041741958202105

/-! ## A053315.P14588968383712983270

`∑[A011557(n)*A117768(A094791(n)+36)]`
-/

namespace A053315.P14588968383712983270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A117768 (A094791 n + 36).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053315.P14588968383712983270

/-! ## A053315.P3933035047225246963

`∩[A241882(n+1), A256290(n+1)]`
-/

namespace A053315.P3933035047225246963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053315.P3933035047225246963

/-!
# A053316: a(n) contains n digits (either '2' or '3') and is divisible by 2^n.

The programs for A053316, there is no canonical definition to state claims against.
-/

/-! ## A053316.P6209134192566391366

`A053338(n+1)/3`
-/

namespace A053316.P6209134192566391366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053338 (n + 1) : ℚ) / 3

end

end A053316.P6209134192566391366

/-! ## A053316.P5010716034167001453

`∑[A011557(n)*A023397(n+1)]`
-/

namespace A053316.P5010716034167001453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053316.P5010716034167001453

/-! ## A053316.P900053227778580777

`∑[A011557(n)*A023410(n+1)/3]`
-/

namespace A053316.P900053227778580777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n * A023410 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053316.P900053227778580777

/-! ## A053316.P329653163412528365

`record[A053338(A008619(n*n%2))/3]`
-/

namespace A053316.P329653163412528365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053338 (A008619 (n * (n % 2))).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053316.P329653163412528365

/-! ## A053316.P7866405993212532203

`∑[A018005(A016777(n))*A023397(n+1)]`
-/

namespace A053316.P7866405993212532203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053316.P7866405993212532203

/-!
# A053317: a(n) contains n digits (either '2' or '5') and is divisible by 2^n.

The programs for A053317, there is no canonical definition to state claims against.
-/

/-! ## A053317.P9917276638839846309

`∑[A011557(n)*A023398(n+1)]`
-/

namespace A053317.P9917276638839846309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053317.P9917276638839846309

/-! ## A053317.P10635889093358458857

`Δ[A126646(n)]*A055880(n+1)`
-/

namespace A053317.P10635889093358458857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055880 (n + 1)

end

end A053317.P10635889093358458857

/-! ## A053317.P15322791828756200651

`A000079(n+1)*A055880(n+1)`
-/

namespace A053317.P15322791828756200651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A055880 (n + 1)

end

end A053317.P15322791828756200651

/-! ## A053317.P773159997448380687

`(A000225(n)+A000051(n))*A055880(n+1)`
-/

namespace A053317.P773159997448380687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + A000051 n) * A055880 (n + 1)

end

end A053317.P773159997448380687

/-! ## A053317.P14684868927182991332

`A050621(n+1)/A034478(n)*A055880(n+1)`
-/

namespace A053317.P14684868927182991332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050621 (n + 1) : ℚ) / (A034478 n : ℚ) * (A055880 (n + 1) : ℚ)

end

end A053317.P14684868927182991332

/-! ## A053317.P7226455074841135879

`A035014(n+1)/A050620(n+1)*A055880(n+1)`
-/

namespace A053317.P7226455074841135879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035014 (n + 1) : ℚ) / (A050620 (n + 1) : ℚ) * (A055880 (n + 1) : ℚ)

end

end A053317.P7226455074841135879

/-!
# A053318: a(n) contains n digits (either '2' or '7') and is divisible by 2^n.

The programs for A053318, there is no canonical definition to state claims against.
-/

/-! ## A053318.P12496962468261448242

`∑[A011557(n)*A023399(n+1)]`
-/

namespace A053318.P12496962468261448242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053318.P12496962468261448242

/-! ## A053318.P8902350064619040092

`∑[Δ[A002275(n)]*A023399(n+1)]`
-/

namespace A053318.P8902350064619040092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A023399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053318.P8902350064619040092

/-! ## A053318.P4119458887677736168

`∑[A017934(2*n)*A023399(n+1)]`
-/

namespace A053318.P4119458887677736168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n) * A023399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053318.P4119458887677736168

/-! ## A053318.P13102162071455832991

`∑[A018005(A016777(n))*A023399(n+1)]`
-/

namespace A053318.P13102162071455832991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053318.P13102162071455832991

/-! ## A053318.P9149834216226716816

`∑[7%A256970(A325013(n+1))*A011557(n)]`
-/

namespace A053318.P9149834216226716816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A256970 (A325013 (n + 1)).toNat) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053318.P9149834216226716816

/-!
# A053319: Distance between the smaller members of successive twin prime pairs.

The programs for A053319, the canonical program `A053319.P1938654990887452238` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053319 has offset 1).

The definition of A053319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053319.P1938654990887452238

`Δ[A001359(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A053319

/-- `Δ[A001359(n+1)]` -/
def P1938654990887452238.Spec : Prop :=
  ∀ n, P1938654990887452238.a n = A053319 (n + 1)

theorem P1938654990887452238.correct : P1938654990887452238.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel]

end A053319

/-! ## A053319.P12159961139666202035

`A167132(n+1)+2`
-/

namespace A053319.P12159961139666202035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) + 2

end

end A053319.P12159961139666202035

namespace A053319

/-- `A167132(n+1)+2` -/
def P12159961139666202035.Spec : Prop :=
  ∀ n, P12159961139666202035.a n = A053319 (n + 1)

theorem P12159961139666202035.correct : P12159961139666202035.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel, A053319.P12159961139666202035.a, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A001359, A001359.P8865495035699438537.a, A167132, A167132.P340755037681699501.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053319

/-! ## A053319.P1128506648569723716

`Δ[2*A040040(n+1)]`
-/

namespace A053319.P1128506648569723716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P1128506648569723716

namespace A053319

/-- `Δ[2*A040040(n+1)]` -/
def P1128506648569723716.Spec : Prop :=
  ∀ n, P1128506648569723716.a n = A053319 (n + 1)

end A053319

/-! ## A053319.P5990671578543201199

`A321220(A167132(n+1))`
-/

namespace A053319.P5990671578543201199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (A167132 (n + 1)).toNat

end

end A053319.P5990671578543201199

namespace A053319

/-- `A321220(A167132(n+1))` -/
def P5990671578543201199.Spec : Prop :=
  ∀ n, P5990671578543201199.a n = A053319 (n + 1)

end A053319

/-! ## A053319.P17305771666650110211

`A014681(A204099(n+1))+2`
-/

namespace A053319.P17305771666650110211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A204099 (n + 1)).toNat + 2

end

end A053319.P17305771666650110211

namespace A053319

/-- `A014681(A204099(n+1))+2` -/
def P17305771666650110211.Spec : Prop :=
  ∀ n, P17305771666650110211.a n = A053319 (n + 1)

end A053319

/-! ## A053319.P3360367809221473989

`A204099(n+1)+A157532(n+1)`
-/

namespace A053319.P3360367809221473989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1) + A157532 (n + 1)

end

end A053319.P3360367809221473989

namespace A053319

/-- `A204099(n+1)+A157532(n+1)` -/
def P3360367809221473989.Spec : Prop :=
  ∀ n, P3360367809221473989.a n = A053319 (n + 1)

end A053319

/-! ## A053319.P7921027636559370670

`A006512(n+1)-A135284(n+1)`
-/

namespace A053319.P7921027636559370670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - A135284 (n + 1)

end

end A053319.P7921027636559370670

namespace A053319

/-- `A006512(n+1)-A135284(n+1)` -/
def P7921027636559370670.Spec : Prop :=
  ∀ n, P7921027636559370670.a n = A053319 (n + 1)

end A053319

/-! ## A053319.P437498168394294505

`A172057(n+1)-A006512(n+1)`
-/

namespace A053319.P437498168394294505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) - A006512 (n + 1)

end

end A053319.P437498168394294505

namespace A053319

/-- `A172057(n+1)-A006512(n+1)` -/
def P437498168394294505.Spec : Prop :=
  ∀ n, P437498168394294505.a n = A053319 (n + 1)

theorem P437498168394294505.correct : P437498168394294505.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel, A053319.P437498168394294505.a, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A172057, A172057.P13327719943038495945.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053319

/-! ## A053319.P17259531206311509610

`A001359(n+2)-A001359(n+1)`
-/

namespace A053319.P17259531206311509610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - A001359 (n + 1)

end

end A053319.P17259531206311509610

namespace A053319

/-- `A001359(n+2)-A001359(n+1)` -/
def P17259531206311509610.Spec : Prop :=
  ∀ n, P17259531206311509610.a n = A053319 (n + 1)

theorem P17259531206311509610.correct : P17259531206311509610.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel, A053319.P17259531206311509610.a, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, SequenceMachineLib.memo_apply]

end A053319

/-! ## A053319.P7731664453191528595

`A135286(n+1)%A108605(n+1)`
-/

namespace A053319.P7731664453191528595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135286 (n + 1)) (A108605 (n + 1))

end

end A053319.P7731664453191528595

namespace A053319

/-- `A135286(n+1)%A108605(n+1)` -/
def P7731664453191528595.Spec : Prop :=
  ∀ n, P7731664453191528595.a n = A053319 (n + 1)

end A053319

/-! ## A053319.P7509681740175904535

`Δ[A006512(n+1)]`
-/

namespace A053319.P7509681740175904535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P7509681740175904535

namespace A053319

/-- `Δ[A006512(n+1)]` -/
def P7509681740175904535.Spec : Prop :=
  ∀ n, P7509681740175904535.a n = A053319 (n + 1)

theorem P7509681740175904535.correct : P7509681740175904535.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel, A053319.P7509681740175904535.f1, A053319.P7509681740175904535.a, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053319

/-! ## A053319.P3622907571932103177

`Δ[A014574(n+1)]`
-/

namespace A053319.P3622907571932103177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P3622907571932103177

namespace A053319

/-- `Δ[A014574(n+1)]` -/
def P3622907571932103177.Spec : Prop :=
  ∀ n, P3622907571932103177.a n = A053319 (n + 1)

end A053319

/-! ## A053319.P14424980230695826465

`Δ[A144834(n+1)]`
-/

namespace A053319.P14424980230695826465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P14424980230695826465

namespace A053319

/-- `Δ[A144834(n+1)]` -/
def P14424980230695826465.Spec : Prop :=
  ∀ n, P14424980230695826465.a n = A053319 (n + 1)

theorem P14424980230695826465.correct : P14424980230695826465.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel, A053319.P14424980230695826465.f1, A053319.P14424980230695826465.a, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A001359, A001359.P8865495035699438537.a, A144834, A144834.P8121320371945032170.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053319

/-! ## A053319.P4186696663346613546

`Δ[sqrt(A075369(n+1))]`
-/

namespace A053319.P4186696663346613546
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P4186696663346613546

namespace A053319

/-- `Δ[sqrt(A075369(n+1))]` -/
def P4186696663346613546.Spec : Prop :=
  ∀ n, P4186696663346613546.a n = (A053319 (n + 1) : ℝ)

end A053319

/-! ## A053319.P16954428428425008166

`Δ[sqrt(A108604(n+1))]`
-/

namespace A053319.P16954428428425008166
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108604 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P16954428428425008166

namespace A053319

/-- `Δ[sqrt(A108604(n+1))]` -/
def P16954428428425008166.Spec : Prop :=
  ∀ n, P16954428428425008166.a n = (A053319 (n + 1) : ℝ)

end A053319

/-! ## A053319.P11976275537105098477

`Δ[2*A243811(n+1)]`
-/

namespace A053319.P11976275537105098477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P11976275537105098477

namespace A053319

/-- `Δ[2*A243811(n+1)]` -/
def P11976275537105098477.Spec : Prop :=
  ∀ n, P11976275537105098477.a n = A053319 (n + 1)

end A053319

/-! ## A053319.P9285549863098401058

`Δ[A054735(n+1)/2]`
-/

namespace A053319.P9285549863098401058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P9285549863098401058

namespace A053319

/-- `Δ[A054735(n+1)/2]` -/
def P9285549863098401058.Spec : Prop :=
  ∀ n, P9285549863098401058.a n = (A053319 (n + 1) : ℚ)

end A053319

/-! ## A053319.P10948038503297498529

`Δ[A082496(n+1)/2]`
-/

namespace A053319.P10948038503297498529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082496 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P10948038503297498529

namespace A053319

/-- `Δ[A082496(n+1)/2]` -/
def P10948038503297498529.Spec : Prop :=
  ∀ n, P10948038503297498529.a n = (A053319 (n + 1) : ℚ)

theorem P10948038503297498529.correct : P10948038503297498529.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel, A053319.P10948038503297498529.f1, A053319.P10948038503297498529.a, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A001359, A001359.P8865495035699438537.a, A082496, A082496.P17448569529172864271.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053319

/-! ## A053319.P12736174864107967201

`Δ[A108605(n+1)/2]`
-/

namespace A053319.P12736174864107967201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108605 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P12736174864107967201

namespace A053319

/-- `Δ[A108605(n+1)/2]` -/
def P12736174864107967201.Spec : Prop :=
  ∀ n, P12736174864107967201.a n = (A053319 (n + 1) : ℚ)

theorem P12736174864107967201.correct : P12736174864107967201.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel, A053319.P12736174864107967201.f1, A053319.P12736174864107967201.a, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A001359, A001359.P8865495035699438537.a, A108605, A108605.P8129486271106036592.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053319

/-! ## A053319.P9781158325772816157

`Δ[A176810(n+1)/2]`
-/

namespace A053319.P9781158325772816157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176810 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053319.P9781158325772816157

namespace A053319

/-- `Δ[A176810(n+1)/2]` -/
def P9781158325772816157.Spec : Prop :=
  ∀ n, P9781158325772816157.a n = (A053319 (n + 1) : ℚ)

theorem P9781158325772816157.correct : P9781158325772816157.Spec := by
  intro n
  simp only [A053319, Nat.add_sub_cancel, A053319.P9781158325772816157.f1, A053319.P9781158325772816157.a, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A001359, A001359.P8865495035699438537.a, A176810, A176810.P15699924405240602414.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053319

/-!
# A053320: Distance between pairs of primes differing by 4.

The programs for A053320, there is no canonical definition to state claims against.
-/

/-! ## A053320.P1283653554422907542

`A029710(n+1)-A015913(n+1)`
-/

namespace A053320.P1283653554422907542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1) - A015913 (n + 1)

end

end A053320.P1283653554422907542

/-! ## A053320.P9755817454990944977

`A031505(n+1)-A046132(n+1)`
-/

namespace A053320.P9755817454990944977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1) - A046132 (n + 1)

end

end A053320.P9755817454990944977

/-! ## A053320.P8230260306666167767

`A029708(n+1)-A087679(n+1)`
-/

namespace A053320.P8230260306666167767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1) - A087679 (n + 1)

end

end A053320.P8230260306666167767

/-! ## A053320.P5264750126095756784

`2*(A111981(n+1)-A088762(n+1))`
-/

namespace A053320.P5264750126095756784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A111981 (n + 1) - A088762 (n + 1))

end

end A053320.P5264750126095756784

/-! ## A053320.P13132076148671225178

`A005843(A111981(n+1)-A088762(n+1))`
-/

namespace A053320.P13132076148671225178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A111981 (n + 1) - A088762 (n + 1)).toNat

end

end A053320.P13132076148671225178

/-! ## A053320.P145935260589790038

`Δ[A015913(n+1)]`
-/

namespace A053320.P145935260589790038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P145935260589790038

/-! ## A053320.P2935031812153666472

`Δ[A046132(n+1)]`
-/

namespace A053320.P2935031812153666472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P2935031812153666472

/-! ## A053320.P6725999062401826385

`Δ[A087679(n+1)]`
-/

namespace A053320.P6725999062401826385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P6725999062401826385

/-! ## A053320.P4274606625018958073

`Δ[2*A047847(n+1)]`
-/

namespace A053320.P4274606625018958073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P4274606625018958073

/-! ## A053320.P11291626866641387498

`Δ[2*A088762(n+1)]`
-/

namespace A053320.P11291626866641387498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P11291626866641387498

/-! ## A053320.P12133415056688508580

`Δ[A165986(n+1)/2]`
-/

namespace A053320.P12133415056688508580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P12133415056688508580

/-! ## A053320.P1623010636913796345

`A015913(n+2)-A015913(n+1)`
-/

namespace A053320.P1623010636913796345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 2) - A015913 (n + 1)

end

end A053320.P1623010636913796345

/-! ## A053320.P9071620660364854018

`A046132(n+2)-A046132(n+1)`
-/

namespace A053320.P9071620660364854018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 2) - A046132 (n + 1)

end

end A053320.P9071620660364854018

/-! ## A053320.P8679499600644491653

`A031505(n+1)-A067830(n+2)`
-/

namespace A053320.P8679499600644491653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1) - A067830 (n + 2)

end

end A053320.P8679499600644491653

/-! ## A053320.P1606341226970023688

`A087679(n+2)-A087679(n+1)`
-/

namespace A053320.P1606341226970023688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 2) - A087679 (n + 1)

end

end A053320.P1606341226970023688

/-! ## A053320.P14103975831923295621

`Δ[A067830(n+2)]`
-/

namespace A053320.P14103975831923295621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P14103975831923295621

/-! ## A053320.P14338495043833994896

`Δ[A172238(n+2)]`
-/

namespace A053320.P14338495043833994896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P14338495043833994896

/-! ## A053320.P4976166604835344798

`A067830(n+3)-A067830(n+2)`
-/

namespace A053320.P4976166604835344798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 3) - A067830 (n + 2)

end

end A053320.P4976166604835344798

/-! ## A053320.P10187152474498287366

`A172238(n+3)-A172238(n+2)`
-/

namespace A053320.P10187152474498287366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 3) - A172238 (n + 2)

end

end A053320.P10187152474498287366

/-! ## A053320.P12260134987074114300

`Δ[p?[A056772(n+1)]]`
-/

namespace A053320.P12260134987074114300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053320.P12260134987074114300

/-!
# A053321: First differences of A031924.

The programs for A053321, the canonical program `A053321.P8026973044884624945` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053321 has offset 1).

The definition of A053321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053321.P8026973044884624945

`Δ[A031924(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053321

/-- `Δ[A031924(n+1)]` -/
def P8026973044884624945.Spec : Prop :=
  ∀ n, P8026973044884624945.a n = A053321 (n + 1)

theorem P8026973044884624945.correct : P8026973044884624945.Spec := by
  intro n
  simp only [A053321, Nat.add_sub_cancel]

end A053321

/-! ## A053321.P11642311427379268214

`Δ[A031925(n+1)]`
-/

namespace A053321.P11642311427379268214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P11642311427379268214

namespace A053321

/-- `Δ[A031925(n+1)]` -/
def P11642311427379268214.Spec : Prop :=
  ∀ n, P11642311427379268214.a n = A053321 (n + 1)

theorem P11642311427379268214.correct : P11642311427379268214.Spec := by
  intro n
  simp only [A053321, Nat.add_sub_cancel, A053321.P11642311427379268214.f1, A053321.P11642311427379268214.a, A053321.P8026973044884624945.f1, A053321.P8026973044884624945.a, A031924, A031924.P13407024209646525674.f1, A031924.P13407024209646525674.a, A031925, A031925.P10904826335426229622.a, A072571, A072571.P12820443273534986484.f1, A072571.P12820443273534986484.a, A024675, A024675.P1773648843625354992.a, A120325, A120325.P1187024358318604852.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053321

/-! ## A053321.P17330314472395766365

`A031924(n+2)-A031924(n+1)`
-/

namespace A053321.P17330314472395766365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 2) - A031924 (n + 1)

end

end A053321.P17330314472395766365

namespace A053321

/-- `A031924(n+2)-A031924(n+1)` -/
def P17330314472395766365.Spec : Prop :=
  ∀ n, P17330314472395766365.a n = A053321 (n + 1)

theorem P17330314472395766365.correct : P17330314472395766365.Spec := by
  intro n
  simp only [A053321, Nat.add_sub_cancel, A053321.P17330314472395766365.a, A053321.P8026973044884624945.f1, A053321.P8026973044884624945.a, SequenceMachineLib.memo_apply]

end A053321

/-! ## A053321.P9014933975103580988

`A031925(n+2)-A031925(n+1)`
-/

namespace A053321.P9014933975103580988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 2) - A031925 (n + 1)

end

end A053321.P9014933975103580988

namespace A053321

/-- `A031925(n+2)-A031925(n+1)` -/
def P9014933975103580988.Spec : Prop :=
  ∀ n, P9014933975103580988.a n = A053321 (n + 1)

theorem P9014933975103580988.correct : P9014933975103580988.Spec := by
  intro n
  simp only [A053321, Nat.add_sub_cancel, A053321.P9014933975103580988.a, A053321.P8026973044884624945.f1, A053321.P8026973044884624945.a, A031924, A031924.P13407024209646525674.f1, A031924.P13407024209646525674.a, A031925, A031925.P10904826335426229622.a, A072571, A072571.P12820443273534986484.f1, A072571.P12820443273534986484.a, A024675, A024675.P1773648843625354992.a, A120325, A120325.P1187024358318604852.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053321

/-! ## A053321.P9416825179357620190

`A031925(A020725(n+1))%A031925(n+1)`
-/

namespace A053321.P9416825179357620190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031925 (A020725 (n + 1)).toNat) (A031925 (n + 1))

end

end A053321.P9416825179357620190

namespace A053321

/-- `A031925(A020725(n+1))%A031925(n+1)` -/
def P9416825179357620190.Spec : Prop :=
  ∀ n, P9416825179357620190.a n = A053321 (n + 1)

end A053321

/-! ## A053321.P1628702494114658876

`Δ[∩[A124590(n+1), A258578(n+1)]]`
-/

namespace A053321.P1628702494114658876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053321.P1628702494114658876

namespace A053321

/-- `Δ[∩[A124590(n+1), A258578(n+1)]]` -/
def P1628702494114658876.Spec : Prop :=
  ∀ n, P1628702494114658876.a n = A053321 (n + 1)

end A053321

/-! ## A053321.P8730220848054657750

`Δ[A000040(A320701(n+1))]`
-/

namespace A053321.P8730220848054657750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320701 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P8730220848054657750

namespace A053321

/-- `Δ[A000040(A320701(n+1))]` -/
def P8730220848054657750.Spec : Prop :=
  ∀ n, P8730220848054657750.a n = A053321 (n + 1)

end A053321

/-! ## A053321.P7113904632289968718

`Δ[A000040(eq[6, A001223(n+1)]+1)]`
-/

namespace A053321.P7113904632289968718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P7113904632289968718

namespace A053321

/-- `Δ[A000040(eq[6, A001223(n+1)]+1)]` -/
def P7113904632289968718.Spec : Prop :=
  ∀ n, P7113904632289968718.a n = A053321 (n + 1)

end A053321

/-! ## A053321.P4545520237868105756

`Δ[eq[6, A347378(n+1)]]`
-/

namespace A053321.P4545520237868105756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053321.P4545520237868105756

namespace A053321

/-- `Δ[eq[6, A347378(n+1)]]` -/
def P4545520237868105756.Spec : Prop :=
  ∀ n, P4545520237868105756.a n = A053321 (n + 1)

end A053321

/-! ## A053321.P18155391332149027488

`A258576(A320701(n+1))`
-/

namespace A053321.P18155391332149027488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258576 (A320701 (n + 1)).toNat

end

end A053321.P18155391332149027488

namespace A053321

/-- `A258576(A320701(n+1))` -/
def P18155391332149027488.Spec : Prop :=
  ∀ n, P18155391332149027488.a n = A053321 (n + 1)

end A053321

/-! ## A053321.P1767361787234744410

`Δ[A174350(A167614(n+1))]`
-/

namespace A053321.P1767361787234744410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P1767361787234744410

namespace A053321

/-- `Δ[A174350(A167614(n+1))]` -/
def P1767361787234744410.Spec : Prop :=
  ∀ n, P1767361787234744410.a n = A053321 (n + 1)

end A053321

/-! ## A053321.P3566308962559524778

`Δ[A174350(A167499(n)+n)]`
-/

namespace A053321.P3566308962559524778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P3566308962559524778

namespace A053321

/-- `Δ[A174350(A167499(n)+n)]` -/
def P3566308962559524778.Spec : Prop :=
  ∀ n, P3566308962559524778.a n = A053321 (n + 1)

end A053321

/-!
# A053322: First differences of A031926.

The programs for A053322, there is no canonical definition to state claims against.
-/

/-! ## A053322.P12292620399939537394

`Δ[A031927(n)]`
-/

namespace A053322.P12292620399939537394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053322.P12292620399939537394

/-! ## A053322.P10729378247165557498

`Δ[A031926(n+1)]`
-/

namespace A053322.P10729378247165557498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053322.P10729378247165557498

/-! ## A053322.P2970418315043153718

`A031927(n+1)-A031927(n)`
-/

namespace A053322.P2970418315043153718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031927 (n + 1) - A031927 n

end

end A053322.P2970418315043153718

/-! ## A053322.P5184620008201349470

`A031926(n+2)-A031926(n+1)`
-/

namespace A053322.P5184620008201349470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 2) - A031926 (n + 1)

end

end A053322.P5184620008201349470

/-! ## A053322.P8098788365515220716

`Δ[∩[A121764(n+1), A243155(n+1)]]`
-/

namespace A053322.P8098788365515220716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053322.P8098788365515220716

/-! ## A053322.P12597294213721102267

`Δ[A000040(A320702(n+1))]`
-/

namespace A053322.P12597294213721102267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320702 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053322.P12597294213721102267

/-! ## A053322.P2275054612544147840

`Δ[A000040(eq[8, A054541(n+1)]+1)]`
-/

namespace A053322.P2275054612544147840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053322.P2275054612544147840

/-! ## A053322.P11498955406805427099

`Δ[A174350(A167614(n+2)+1)]`
-/

namespace A053322.P11498955406805427099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053322.P11498955406805427099

/-! ## A053322.P4011480768771453838

`A258576(A320702(n+1))`
-/

namespace A053322.P4011480768771453838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258576 (A320702 (n + 1)).toNat

end

end A053322.P4011480768771453838

/-!
# A053323: First differences of A031928.

The programs for A053323, the canonical program `A053323.P4529439221988552431` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053323 has offset 1).

The definition of A053323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053323.P4529439221988552431

`Δ[A031929(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053323

/-- `Δ[A031929(n)]` -/
def P4529439221988552431.Spec : Prop :=
  ∀ n, P4529439221988552431.a n = A053323 (n + 1)

theorem P4529439221988552431.correct : P4529439221988552431.Spec := by
  intro n
  simp only [A053323, Nat.add_sub_cancel]

end A053323

/-! ## A053323.P4069908152972239242

`Δ[A031928(n+1)]`
-/

namespace A053323.P4069908152972239242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053323.P4069908152972239242

namespace A053323

/-- `Δ[A031928(n+1)]` -/
def P4069908152972239242.Spec : Prop :=
  ∀ n, P4069908152972239242.a n = A053323 (n + 1)

theorem P4069908152972239242.correct : P4069908152972239242.Spec := by
  intro n
  simp only [A053323, Nat.add_sub_cancel, A053323.P4069908152972239242.f1, A053323.P4069908152972239242.a, A053323.P4529439221988552431.f1, A053323.P4529439221988552431.a, A031928, A031928.P11672901129551717801.a, A031929, A031929.P6327147624434897438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A320703, A320703.P14247558582401174259.f1, A320703.P14247558582401174259.f2, A320703.P14247558582401174259.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053323

/-! ## A053323.P3775666267557993090

`A031929(n+1)-A031929(n)`
-/

namespace A053323.P3775666267557993090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031929 (n + 1) - A031929 n

end

end A053323.P3775666267557993090

namespace A053323

/-- `A031929(n+1)-A031929(n)` -/
def P3775666267557993090.Spec : Prop :=
  ∀ n, P3775666267557993090.a n = A053323 (n + 1)

theorem P3775666267557993090.correct : P3775666267557993090.Spec := by
  intro n
  simp only [A053323, Nat.add_sub_cancel, A053323.P3775666267557993090.a, A053323.P4529439221988552431.f1, A053323.P4529439221988552431.a, SequenceMachineLib.memo_apply]

end A053323

/-! ## A053323.P6219712915449995157

`A031928(n+2)-A031928(n+1)`
-/

namespace A053323.P6219712915449995157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 2) - A031928 (n + 1)

end

end A053323.P6219712915449995157

namespace A053323

/-- `A031928(n+2)-A031928(n+1)` -/
def P6219712915449995157.Spec : Prop :=
  ∀ n, P6219712915449995157.a n = A053323 (n + 1)

theorem P6219712915449995157.correct : P6219712915449995157.Spec := by
  intro n
  simp only [A053323, Nat.add_sub_cancel, A053323.P6219712915449995157.a, A053323.P4529439221988552431.f1, A053323.P4529439221988552431.a, A031928, A031928.P11672901129551717801.a, A031929, A031929.P6327147624434897438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A320703, A320703.P14247558582401174259.f1, A320703.P14247558582401174259.f2, A320703.P14247558582401174259.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053323

/-! ## A053323.P428559535738756125

`A201629(A031928(n+2)%A031928(n+1))`
-/

namespace A053323.P428559535738756125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (Int.tmod (A031928 (n + 2)) (A031928 (n + 1))).toNat

end

end A053323.P428559535738756125

namespace A053323

/-- `A201629(A031928(n+2)%A031928(n+1))` -/
def P428559535738756125.Spec : Prop :=
  ∀ n, P428559535738756125.a n = A053323 (n + 1)

end A053323

/-! ## A053323.P1411458158318069780

`Δ[A000040(A320703(n+1))]`
-/

namespace A053323.P1411458158318069780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320703 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053323.P1411458158318069780

namespace A053323

/-- `Δ[A000040(A320703(n+1))]` -/
def P1411458158318069780.Spec : Prop :=
  ∀ n, P1411458158318069780.a n = A053323 (n + 1)

theorem P1411458158318069780.correct : P1411458158318069780.Spec := by
  intro n
  simp only [A053323, Nat.add_sub_cancel, A053323.P1411458158318069780.f1, A053323.P1411458158318069780.a, A053323.P4529439221988552431.f1, A053323.P4529439221988552431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031929, A031929.P6327147624434897438.a, A320703, A320703.P14247558582401174259.f1, A320703.P14247558582401174259.f2, A320703.P14247558582401174259.a, A001223, A001223.P5034056745985311719.a, A031928, A031928.P11672901129551717801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053323

/-! ## A053323.P7704952792628289189

`Δ[A008578(A320703(n+1)+1)]`
-/

namespace A053323.P7704952792628289189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320703 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053323.P7704952792628289189

namespace A053323

/-- `Δ[A008578(A320703(n+1)+1)]` -/
def P7704952792628289189.Spec : Prop :=
  ∀ n, P7704952792628289189.a n = A053323 (n + 1)

end A053323

/-! ## A053323.P2199475426327456408

`Δ[A001747(A320703(n+1)+1)/2]`
-/

namespace A053323.P2199475426327456408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A320703 (n + 1) + 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053323.P2199475426327456408

namespace A053323

/-- `Δ[A001747(A320703(n+1)+1)/2]` -/
def P2199475426327456408.Spec : Prop :=
  ∀ n, P2199475426327456408.a n = (A053323 (n + 1) : ℚ)

end A053323

/-! ## A053323.P13670781661415508805

`Δ[A174350(A167499(n+3))]`
-/

namespace A053323.P13670781661415508805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A167499 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053323.P13670781661415508805

namespace A053323

/-- `Δ[A174350(A167499(n+3))]` -/
def P13670781661415508805.Spec : Prop :=
  ∀ n, P13670781661415508805.a n = A053323 (n + 1)

end A053323

/-! ## A053323.P18117145493798649433

`A258576(A320703(n+1))`
-/

namespace A053323.P18117145493798649433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258576 (A320703 (n + 1)).toNat

end

end A053323.P18117145493798649433

namespace A053323

/-- `A258576(A320703(n+1))` -/
def P18117145493798649433.Spec : Prop :=
  ∀ n, P18117145493798649433.a n = A053323 (n + 1)

end A053323

/-!
# A053324: First differences of A031930.

The programs for A053324, the canonical program `A053324.P2910710581834118285` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053324 has offset 1).

The definition of A053324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053324.P2910710581834118285

`Δ[A031930(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053324

/-- `Δ[A031930(n+1)]` -/
def P2910710581834118285.Spec : Prop :=
  ∀ n, P2910710581834118285.a n = A053324 (n + 1)

theorem P2910710581834118285.correct : P2910710581834118285.Spec := by
  intro n
  simp only [A053324, Nat.add_sub_cancel]

end A053324

/-! ## A053324.P16672325313919493668

`Δ[A031931(n+1)]`
-/

namespace A053324.P16672325313919493668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053324.P16672325313919493668

namespace A053324

/-- `Δ[A031931(n+1)]` -/
def P16672325313919493668.Spec : Prop :=
  ∀ n, P16672325313919493668.a n = A053324 (n + 1)

theorem P16672325313919493668.correct : P16672325313919493668.Spec := by
  intro n
  simp only [A053324, Nat.add_sub_cancel, A053324.P16672325313919493668.f1, A053324.P16672325313919493668.a, A053324.P2910710581834118285.f1, A053324.P2910710581834118285.a, A031930, A031930.P14447064096362393253.a, A031931, A031931.P18381565241977592668.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A320704, A320704.P1487663062350906858.f1, A320704.P1487663062350906858.f2, A320704.P1487663062350906858.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053324

/-! ## A053324.P5632718638575467437

`A031930(n+2)-A031930(n+1)`
-/

namespace A053324.P5632718638575467437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 2) - A031930 (n + 1)

end

end A053324.P5632718638575467437

namespace A053324

/-- `A031930(n+2)-A031930(n+1)` -/
def P5632718638575467437.Spec : Prop :=
  ∀ n, P5632718638575467437.a n = A053324 (n + 1)

theorem P5632718638575467437.correct : P5632718638575467437.Spec := by
  intro n
  simp only [A053324, Nat.add_sub_cancel, A053324.P5632718638575467437.a, A053324.P2910710581834118285.f1, A053324.P2910710581834118285.a, SequenceMachineLib.memo_apply]

end A053324

/-! ## A053324.P14506389416297878156

`A031931(n+2)-A031931(n+1)`
-/

namespace A053324.P14506389416297878156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 2) - A031931 (n + 1)

end

end A053324.P14506389416297878156

namespace A053324

/-- `A031931(n+2)-A031931(n+1)` -/
def P14506389416297878156.Spec : Prop :=
  ∀ n, P14506389416297878156.a n = A053324 (n + 1)

theorem P14506389416297878156.correct : P14506389416297878156.Spec := by
  intro n
  simp only [A053324, Nat.add_sub_cancel, A053324.P14506389416297878156.a, A053324.P2910710581834118285.f1, A053324.P2910710581834118285.a, A031930, A031930.P14447064096362393253.a, A031931, A031931.P18381565241977592668.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A320704, A320704.P1487663062350906858.f1, A320704.P1487663062350906858.f2, A320704.P1487663062350906858.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053324

/-! ## A053324.P17404867585140693923

`Δ[A000040(A320704(n+1))]`
-/

namespace A053324.P17404867585140693923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320704 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053324.P17404867585140693923

namespace A053324

/-- `Δ[A000040(A320704(n+1))]` -/
def P17404867585140693923.Spec : Prop :=
  ∀ n, P17404867585140693923.a n = A053324 (n + 1)

end A053324

/-! ## A053324.P3904518603606792139

`A258576(A320704(n+1))`
-/

namespace A053324.P3904518603606792139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258576 (A320704 (n + 1)).toNat

end

end A053324.P3904518603606792139

namespace A053324

/-- `A258576(A320704(n+1))` -/
def P3904518603606792139.Spec : Prop :=
  ∀ n, P3904518603606792139.a n = A053324 (n + 1)

end A053324

/-!
# A053325: First differences of A031932.

The programs for A053325, there is no canonical definition to state claims against.
-/

/-! ## A053325.P9066142641362425330

`Δ[A031933(n)]`
-/

namespace A053325.P9066142641362425330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053325.P9066142641362425330

/-! ## A053325.P11320175467160819130

`Δ[A031932(n+1)]`
-/

namespace A053325.P11320175467160819130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053325.P11320175467160819130

/-! ## A053325.P17700766419221327513

`A031933(n+1)-A031933(n)`
-/

namespace A053325.P17700766419221327513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031933 (n + 1) - A031933 n

end

end A053325.P17700766419221327513

/-! ## A053325.P4619816972301694403

`A031932(n+2)-A031932(n+1)`
-/

namespace A053325.P4619816972301694403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 2) - A031932 (n + 1)

end

end A053325.P4619816972301694403

/-! ## A053325.P5233036002019518888

`Δ[∩[A124586(n+1), A153417(n+1)]]`
-/

namespace A053325.P5233036002019518888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124586 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053325.P5233036002019518888

/-! ## A053325.P9634768737616102368

`Δ[A000040(A320705(n+1))]`
-/

namespace A053325.P9634768737616102368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320705 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053325.P9634768737616102368

/-!
# A053326: First differences of A031934.

The programs for A053326, there is no canonical definition to state claims against.
-/

/-! ## A053326.P14026873747282226867

`Δ[A031935(n)]`
-/

namespace A053326.P14026873747282226867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053326.P14026873747282226867

/-! ## A053326.P8121278413565499949

`Δ[A031934(n+1)]`
-/

namespace A053326.P8121278413565499949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053326.P8121278413565499949

/-! ## A053326.P12305858922887630270

`A031935(n+1)-A031935(n)`
-/

namespace A053326.P12305858922887630270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031935 (n + 1) - A031935 n

end

end A053326.P12305858922887630270

/-! ## A053326.P6474250494466038721

`A031934(n+2)-A031934(n+1)`
-/

namespace A053326.P6474250494466038721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 2) - A031934 (n + 1)

end

end A053326.P6474250494466038721

/-! ## A053326.P18215633884610596826

`A031935(A000027(n+1))%A031935(n)`
-/

namespace A053326.P18215633884610596826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031935 (A000027 (n + 1)).toNat) (A031935 n)

end

end A053326.P18215633884610596826

/-! ## A053326.P15891588805604171178

`Δ[A055670(A320706(n+1))]`
-/

namespace A053326.P15891588805604171178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053326.P15891588805604171178

/-! ## A053326.P10771505684170782452

`Δ[A065091(A320706(n+1)-1)]`
-/

namespace A053326.P10771505684170782452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320706 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053326.P10771505684170782452

/-! ## A053326.P3642340730399268528

`Δ[A000040(A320706(n+1)+1)]`
-/

namespace A053326.P3642340730399268528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320706 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053326.P3642340730399268528

/-! ## A053326.P3494161873270174171

`Δ[A174350(A167499(n+6)+3)]`
-/

namespace A053326.P3494161873270174171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A167499 (n + 6) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053326.P3494161873270174171

/-!
# A053327: First differences of A031936.

The programs for A053327, there is no canonical definition to state claims against.
-/

/-! ## A053327.P14972499488544788980

`Δ[A031937(n)]`
-/

namespace A053327.P14972499488544788980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053327.P14972499488544788980

/-! ## A053327.P344522132189422326

`Δ[A031936(n+1)]`
-/

namespace A053327.P344522132189422326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053327.P344522132189422326

/-! ## A053327.P7026037889129174536

`A031937(n+1)-A031937(n)`
-/

namespace A053327.P7026037889129174536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031937 (n + 1) - A031937 n

end

end A053327.P7026037889129174536

/-! ## A053327.P10992279373295832088

`A031936(n+2)-A031936(n+1)`
-/

namespace A053327.P10992279373295832088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 2) - A031936 (n + 1)

end

end A053327.P10992279373295832088

/-! ## A053327.P14118413193686673888

`Δ[A000040(A320707(n+1))]`
-/

namespace A053327.P14118413193686673888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053327.P14118413193686673888

/-!
# A053328: Discriminants of real quadratic fields of ERD-type having no split primes less than the Minkowski bound sqrt(Delta)/2.

The programs for A053328, there is no canonical definition to state claims against.
-/

/-! ## A053328.P12231705935434435976

`A053329(n+1)-A352514(A266309(n+1))`
-/

namespace A053328.P12231705935434435976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053329 (n + 1) - A352514 (A266309 (n + 1)).toNat

end

end A053328.P12231705935434435976

/-! ## A053328.P1036088328980565564

`A308420(n+1)-A352514(A266309(n+1))`
-/

namespace A053328.P1036088328980565564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308420 (n + 1) - A352514 (A266309 (n + 1)).toNat

end

end A053328.P1036088328980565564

/-! ## A053328.P5664075497245787261

`A342392(A342382(n+1)%A342431(n+2))`
-/

namespace A053328.P5664075497245787261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342392 (Int.tmod (A342382 (n + 1)) (A342431 (n + 2))).toNat

end

end A053328.P5664075497245787261

/-! ## A053328.P15083395580048720001

`A342392(A342382(n+1))%A342364(3*n+4)`
-/

namespace A053328.P15083395580048720001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342392 (A342382 (n + 1)).toNat) (A342364 (3 * n + 4))

end

end A053328.P15083395580048720001

/-!
# A053329: Discriminants of real quadratic fields with class number 1 and nonzero n_Delta.

The programs for A053329, there is no canonical definition to state claims against.
-/

/-! ## A053329.P6534299513380779441

`A308420(n+1)-A093313(A125165(n))`
-/

namespace A053329.P6534299513380779441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308420 (n + 1) - A093313 (A125165 n).toNat

end

end A053329.P6534299513380779441

/-! ## A053329.P13820371490587025371

`A308420(A043320(n+1))`
-/

namespace A053329.P13820371490587025371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308420 (A043320 (n + 1)).toNat

end

end A053329.P13820371490587025371

/-! ## A053329.P9361735737941565137

`A308420(A044917(n+1))`
-/

namespace A053329.P9361735737941565137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308420 (A044917 (n + 1)).toNat

end

end A053329.P9361735737941565137

/-! ## A053329.P8234566255610225957

`A308420(A055645(n+1))`
-/

namespace A053329.P8234566255610225957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308420 (A055645 (n + 1)).toNat

end

end A053329.P8234566255610225957

/-! ## A053329.P4364325194758809045

`A308420(A161953(n+1))`
-/

namespace A053329.P4364325194758809045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308420 (A161953 (n + 1)).toNat

end

end A053329.P4364325194758809045

/-!
# A053330: Discriminants of real quadratic fields of ERD-type with class number 2.

The programs for A053330, there is no canonical definition to state claims against.
-/

/-! ## A053330.P18210504267754061768

`∩[A029702(n+1), A171508(n+1)]`
-/

namespace A053330.P18210504267754061768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053330.P18210504267754061768

/-! ## A053330.P2413140326737028707

`∩[A146209(n+1), A171508(n+1)]`
-/

namespace A053330.P2413140326737028707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053330.P2413140326737028707

/-! ## A053330.P14382024352452346685

`A029702(∑[A354849(C(n, 9)+1)])`
-/

namespace A053330.P14382024352452346685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354849 (Nat.choose n 9 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029702 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053330.P14382024352452346685

/-! ## A053330.P10091753730567340537

`A146209(A342951(n+1)^A196933(n))`
-/

namespace A053330.P10091753730567340537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (SequenceMachineLib.roundAway ((A342951 (n + 1) : ℚ) ^ (A196933 n : ℤ))).toNat

end

end A053330.P10091753730567340537

/-! ## A053330.P11541055333808546259

`A146209(C(A342951(n+1), A196933(n)))`
-/

namespace A053330.P11541055333808546259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (Nat.choose (A342951 (n + 1)).toNat (A196933 n).toNat)

end

end A053330.P11541055333808546259

/-!
# A053331: First differences of A031938.

The programs for A053331, there is no canonical definition to state claims against.
-/

/-! ## A053331.P14368744439406869226

`Δ[A031938(n+1)]`
-/

namespace A053331.P14368744439406869226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053331.P14368744439406869226

/-! ## A053331.P7208356232503032865

`Δ[A031939(n+1)]`
-/

namespace A053331.P7208356232503032865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053331.P7208356232503032865

/-! ## A053331.P17346273269658120964

`A031938(n+2)-A031938(n+1)`
-/

namespace A053331.P17346273269658120964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031938 (n + 2) - A031938 (n + 1)

end

end A053331.P17346273269658120964

/-! ## A053331.P16121622000988565126

`A031939(n+2)-A031939(n+1)`
-/

namespace A053331.P16121622000988565126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031939 (n + 2) - A031939 (n + 1)

end

end A053331.P16121622000988565126

/-! ## A053331.P9170794504009677219

`Δ[A055670(A320708(n+1))]`
-/

namespace A053331.P9170794504009677219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053331.P9170794504009677219

/-! ## A053331.P8142799123722915068

`A000040(A320708(n+2))-A000040(A320708(n+1))`
-/

namespace A053331.P8142799123722915068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320708 (n + 2)).toNat - A000040 (A320708 (n + 1)).toNat

end

end A053331.P8142799123722915068

/-! ## A053331.P17274421288772272446

`Δ[A073846(2*A320708(n+1))]`
-/

namespace A053331.P17274421288772272446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A320708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053331.P17274421288772272446

/-!
# A053332: a(n) contains n digits (either '4' or '7') and is divisible by 2^n.

The programs for A053332, there is no canonical definition to state claims against.
-/

/-! ## A053332.P4476484959665671390

`∑[A011557(n)*A023404(n+1)]`
-/

namespace A053332.P4476484959665671390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053332.P4476484959665671390

/-! ## A053332.P14454840144816392542

`∑[A018005(A016777(n))*A023404(n+1)]`
-/

namespace A053332.P14454840144816392542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053332.P14454840144816392542

/-! ## A053332.P2399577815703422002

`∩[A241882(n+1), A284971(n+1)]`
-/

namespace A053332.P2399577815703422002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053332.P2399577815703422002

/-!
# A053333: a(n) contains n digits (either '4' or '9') and is divisible by 2^n.

The programs for A053333, there is no canonical definition to state claims against.
-/

/-! ## A053333.P14441299941314577654

`∑[gcd(36, A023415(n+2))*A011557(n)]`
-/

namespace A053333.P14441299941314577654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 36 (A023415 (n + 2)) : ℤ) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053333.P14441299941314577654

/-! ## A053333.P7508352765553645449

`∑[(3-A145679(n+2))²*A011557(n)]`
-/

namespace A053333.P7508352765553645449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A145679 (n + 2)) ^ 2 * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053333.P7508352765553645449

/-! ## A053333.P12094874183954106509

`∑[A023415(n+2)/(A145679(n+2)+1)*A011557(n)]`
-/

namespace A053333.P12094874183954106509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023415 (n + 2) : ℚ) / (A145679 (n + 2) + 1 : ℚ) * (A011557 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053333.P12094874183954106509

/-! ## A053333.P17490490849232756328

`∑[A020639((2*n+1)*A023415(n+2))²*A011557(n)]`
-/

namespace A053333.P17490490849232756328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n + 1 : ℤ) * A023415 (n + 2)).toNat ^ 2 * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053333.P17490490849232756328

/-! ## A053333.P2416187627727796761

`∑[Δ[(10^n+17)/9]*A023405(n+1)]`
-/

namespace A053333.P2416187627727796761
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 17 : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * (A023405 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053333.P2416187627727796761

/-!
# A053334: a(n) contains n digits (either '1' or '6') and is divisible by 2^n.

The programs for A053334, there is no canonical definition to state claims against.
-/

/-! ## A053334.P1988959023629198102

`∑[10^n*A023406(n+1)]`
-/

namespace A053334.P1988959023629198102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A023406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053334.P1988959023629198102

/-! ## A053334.P2028040267431423295

`∑[(A023397(n+2)²-3)*A011557(n)]`
-/

namespace A053334.P2028040267431423295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023397 (n + 2) ^ 2 - 3) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053334.P2028040267431423295

/-! ## A053334.P14170294429557037042

`∑[((A023410(n+2)/3)²-3)*A011557(n)]`
-/

namespace A053334.P14170294429557037042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A023410 (n + 2) : ℚ) / 3) ^ 2 - 3) * (A011557 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053334.P14170294429557037042

/-! ## A053334.P17376312227586105750

`∩[A241882(n+1), A284293(n+1)]`
-/

namespace A053334.P17376312227586105750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053334.P17376312227586105750

/-!
# A053335: a(n) contains n digits (either '3' or '6') and is divisible by 2^n.

The programs for A053335, the canonical program `A053335.P4748056852846106201` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053335 has offset 1).

The definition of A053335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053335.P4748056852846106201

`3*A053312(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053335

/-- `3*A053312(n+1)` -/
def P4748056852846106201.Spec : Prop :=
  ∀ n, P4748056852846106201.a n = A053335 (n + 1)

theorem P4748056852846106201.correct : P4748056852846106201.Spec := by
  intro n
  simp only [A053335, Nat.add_sub_cancel]

end A053335

/-! ## A053335.P1633809479903948770

`∑[A011557(n)*A023407(n+1)]`
-/

namespace A053335.P1633809479903948770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053335.P1633809479903948770

namespace A053335

/-- `∑[A011557(n)*A023407(n+1)]` -/
def P1633809479903948770.Spec : Prop :=
  ∀ n, P1633809479903948770.a n = A053335 (n + 1)

end A053335

/-! ## A053335.P17388731941342276271

`A007283(n+1)*A126933(n+1)`
-/

namespace A053335.P17388731941342276271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 1) * A126933 (n + 1)

end

end A053335.P17388731941342276271

namespace A053335

/-- `A007283(n+1)*A126933(n+1)` -/
def P17388731941342276271.Spec : Prop :=
  ∀ n, P17388731941342276271.a n = A053335 (n + 1)

end A053335

/-! ## A053335.P13423420300465609002

`∑[3*A023396(n+1)*A011557(n)]`
-/

namespace A053335.P13423420300465609002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023396 (n + 1) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053335.P13423420300465609002

namespace A053335

/-- `∑[3*A023396(n+1)*A011557(n)]` -/
def P13423420300465609002.Spec : Prop :=
  ∀ n, P13423420300465609002.a n = A053335 (n + 1)

end A053335

/-! ## A053335.P18426083562579506049

`record[3*A053312(A008619(n*n%2))]`
-/

namespace A053335.P18426083562579506049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053312 (A008619 (n * (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053335.P18426083562579506049

namespace A053335

/-- `record[3*A053312(A008619(n*n%2))]` -/
def P18426083562579506049.Spec : Prop :=
  ∀ n, P18426083562579506049.a n = A053335 (n + 1)

end A053335

/-!
# A053336: a(n) contains n digits (either '5' or '6') and is divisible by 2^n.

The programs for A053336, the canonical program `A053336.P2907877663529464855` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053336 has offset 1).

The definition of A053336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053336.P2907877663529464855

`10^(n+1)-A035014(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053336

/-- `10^(n+1)-A035014(n+1)` -/
def P2907877663529464855.Spec : Prop :=
  ∀ n, P2907877663529464855.a n = A053336 (n + 1)

theorem P2907877663529464855.correct : P2907877663529464855.Spec := by
  intro n
  simp only [A053336, Nat.add_sub_cancel]

end A053336

/-! ## A053336.P10997916015273967059

`∑[A011557(n)*A023408(n+1)]`
-/

namespace A053336.P10997916015273967059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053336.P10997916015273967059

namespace A053336

/-- `∑[A011557(n)*A023408(n+1)]` -/
def P10997916015273967059.Spec : Prop :=
  ∀ n, P10997916015273967059.a n = A053336 (n + 1)

end A053336

/-! ## A053336.P12984944818668248684

`∑[A004655(4*n)*A023408(n+1)]`
-/

namespace A053336.P12984944818668248684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (4 * n) * A023408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053336.P12984944818668248684

namespace A053336

/-- `∑[A004655(4*n)*A023408(n+1)]` -/
def P12984944818668248684.Spec : Prop :=
  ∀ n, P12984944818668248684.a n = A053336 (n + 1)

end A053336

/-! ## A053336.P7950546520755810778

`∑[A018005(A016777(n))*A023408(n+1)]`
-/

namespace A053336.P7950546520755810778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053336.P7950546520755810778

namespace A053336

/-- `∑[A018005(A016777(n))*A023408(n+1)]` -/
def P7950546520755810778.Spec : Prop :=
  ∀ n, P7950546520755810778.a n = A053336 (n + 1)

end A053336

/-! ## A053336.P2142264978091168029

`A053312(n+1)+A053379(n+1)-A035014(n+1)`
-/

namespace A053336.P2142264978091168029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053312 (n + 1) + (A053379 (n + 1) - A035014 (n + 1))

end

end A053336.P2142264978091168029

namespace A053336

/-- `A053312(n+1)+A053379(n+1)-A035014(n+1)` -/
def P2142264978091168029.Spec : Prop :=
  ∀ n, P2142264978091168029.a n = A053336 (n + 1)

theorem P2142264978091168029.correct : P2142264978091168029.Spec := by
  intro n
  simp only [A053336, Nat.add_sub_cancel, A053336.P2142264978091168029.a, A053336.P2907877663529464855.a, A035014, A035014.P1017373101291084189.f1, A035014.P1017373101291084189.a, A053312, A053312.P11267632743771748433.a, A053379, A053379.P10810913634548379691.a, A011557, A011557.P11220211478167790856.a, A050620, A050620.P108835308460644639.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053336

/-!
# A053337: a(n) contains n digits (either '6' or '7') and is divisible by 2^n.

The programs for A053337, there is no canonical definition to state claims against.
-/

/-! ## A053337.P16775773867653692385

`∑[A011557(n)*A023409(n)]`
-/

namespace A053337.P16775773867653692385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053337.P16775773867653692385

/-! ## A053337.P5742219913376302501

`∑[Δ[A002275(n)]*A023409(n)]`
-/

namespace A053337.P5742219913376302501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A023409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053337.P5742219913376302501

/-! ## A053337.P14991200538876711516

`∑[A017934(2*n)*A023409(n)]`
-/

namespace A053337.P14991200538876711516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n) * A023409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053337.P14991200538876711516

/-! ## A053337.P15592325669773073826

`∑[A018005(A016777(n))*A023409(n)]`
-/

namespace A053337.P15592325669773073826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053337.P15592325669773073826

/-! ## A053337.P15521955790888347251

`∩[A241882(n+1), A256292(n+1)]`
-/

namespace A053337.P15521955790888347251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053337.P15521955790888347251

/-!
# A053338: a(n) contains n digits (either '6' or '9') and is divisible by 2^n.

The programs for A053338, there is no canonical definition to state claims against.
-/

/-! ## A053338.P7972840763909256483

`3*A053316(n+1)`
-/

namespace A053338.P7972840763909256483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053316 (n + 1)

end

end A053338.P7972840763909256483

/-! ## A053338.P5699978934379580800

`∑[A011557(n)*A023410(n+1)]`
-/

namespace A053338.P5699978934379580800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053338.P5699978934379580800

/-! ## A053338.P17782716566708346537

`∑[A017934(2*n)*A023410(n+1)]`
-/

namespace A053338.P17782716566708346537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n) * A023410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053338.P17782716566708346537

/-! ## A053338.P17379817570521398481

`∑[3*A011557(n)*A023397(n+1)]`
-/

namespace A053338.P17379817570521398481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A011557 n * A023397 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053338.P17379817570521398481

/-! ## A053338.P14157894291859825109

`3*∑[A018005(A016777(n))*A023397(n+1)]`
-/

namespace A053338.P14157894291859825109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053338.P14157894291859825109

/-!
# A053339: Squarefree terms of A050530 with 3 prime divisors.

The programs for A053339, the canonical program `A053339.P2634023277679372817` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053339 has offset 1).

The definition of A053339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053339.P2634023277679372817

`∩[A046389(n+1), A050530(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A053339

/-- `∩[A046389(n+1), A050530(n+1)]` -/
def P2634023277679372817.Spec : Prop :=
  ∀ n, (P2634023277679372817.a n : ℤ) = A053339 (n + 1)

theorem P2634023277679372817.correct : P2634023277679372817.Spec := by
  intro n
  simp only [A053339, Nat.add_sub_cancel]

end A053339

/-! ## A053339.P4646252752444771800

`∩[A046316(n+1), A050530(n+1)]`
-/

namespace A053339.P4646252752444771800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P4646252752444771800

namespace A053339

/-- `∩[A046316(n+1), A050530(n+1)]` -/
def P4646252752444771800.Spec : Prop :=
  ∀ n, (P4646252752444771800.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P1860150280570252395

`∩[A050530(n+1), A278569(n+1)]`
-/

namespace A053339.P1860150280570252395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P1860150280570252395

namespace A053339

/-- `∩[A050530(n+1), A278569(n+1)]` -/
def P1860150280570252395.Spec : Prop :=
  ∀ n, (P1860150280570252395.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P2816016184440547653

`∩[A046340(n+1), A050530(n+1)]`
-/

namespace A053339.P2816016184440547653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P2816016184440547653

namespace A053339

/-- `∩[A046340(n+1), A050530(n+1)]` -/
def P2816016184440547653.Spec : Prop :=
  ∀ n, (P2816016184440547653.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P6747383317644156061

`∩[A050530(n+1), A257411(n+1)]`
-/

namespace A053339.P6747383317644156061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P6747383317644156061

namespace A053339

/-- `∩[A050530(n+1), A257411(n+1)]` -/
def P6747383317644156061.Spec : Prop :=
  ∀ n, (P6747383317644156061.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P5002506523999427997

`∩[A050530(n+1), A378480(n+1)]`
-/

namespace A053339.P5002506523999427997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P5002506523999427997

namespace A053339

/-- `∩[A050530(n+1), A378480(n+1)]` -/
def P5002506523999427997.Spec : Prop :=
  ∀ n, (P5002506523999427997.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P16410525451512407799

`∩[A007304(n+1), A050530(n+1)]`
-/

namespace A053339.P16410525451512407799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P16410525451512407799

namespace A053339

/-- `∩[A007304(n+1), A050530(n+1)]` -/
def P16410525451512407799.Spec : Prop :=
  ∀ n, (P16410525451512407799.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P13536438111628404355

`∩[A050530(n+1), A345382(n+1)]`
-/

namespace A053339.P13536438111628404355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P13536438111628404355

namespace A053339

/-- `∩[A050530(n+1), A345382(n+1)]` -/
def P13536438111628404355.Spec : Prop :=
  ∀ n, (P13536438111628404355.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P12350433350252782022

`∩[A050530(n+1), A267891(n+1)]`
-/

namespace A053339.P12350433350252782022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P12350433350252782022

namespace A053339

/-- `∩[A050530(n+1), A267891(n+1)]` -/
def P12350433350252782022.Spec : Prop :=
  ∀ n, (P12350433350252782022.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P17971694004181997422

`∩[A050530(n+1), A056912(n+1)]`
-/

namespace A053339.P17971694004181997422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P17971694004181997422

namespace A053339

/-- `∩[A050530(n+1), A056912(n+1)]` -/
def P17971694004181997422.Spec : Prop :=
  ∀ n, (P17971694004181997422.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P7961723098069587797

`∩[A050530(n+1), A225228(n+1)]`
-/

namespace A053339.P7961723098069587797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P7961723098069587797

namespace A053339

/-- `∩[A050530(n+1), A225228(n+1)]` -/
def P7961723098069587797.Spec : Prop :=
  ∀ n, (P7961723098069587797.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P15548326132840123086

`∩[A050530(n+1), A381218(n+1)]`
-/

namespace A053339.P15548326132840123086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P15548326132840123086

namespace A053339

/-- `∩[A050530(n+1), A381218(n+1)]` -/
def P15548326132840123086.Spec : Prop :=
  ∀ n, (P15548326132840123086.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P8142651290455754484

`∩[A030626(n+1), A050530(n+1)]`
-/

namespace A053339.P8142651290455754484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P8142651290455754484

namespace A053339

/-- `∩[A030626(n+1), A050530(n+1)]` -/
def P8142651290455754484.Spec : Prop :=
  ∀ n, (P8142651290455754484.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P8288092085226508461

`∩[A050530(n+1), A111398(n+1)]`
-/

namespace A053339.P8288092085226508461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P8288092085226508461

namespace A053339

/-- `∩[A050530(n+1), A111398(n+1)]` -/
def P8288092085226508461.Spec : Prop :=
  ∀ n, (P8288092085226508461.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P1449439856115557757

`∩[A050530(n+1), A386606(n+1)]`
-/

namespace A053339.P1449439856115557757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P1449439856115557757

namespace A053339

/-- `∩[A050530(n+1), A386606(n+1)]` -/
def P1449439856115557757.Spec : Prop :=
  ∀ n, (P1449439856115557757.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P17008627612491775780

`∩[A050530(n+1), A067019(n+1)]`
-/

namespace A053339.P17008627612491775780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P17008627612491775780

namespace A053339

/-- `∩[A050530(n+1), A067019(n+1)]` -/
def P17008627612491775780.Spec : Prop :=
  ∀ n, (P17008627612491775780.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P5993302135593675903

`∩[A050530(n+1), A358774(n+1)]`
-/

namespace A053339.P5993302135593675903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P5993302135593675903

namespace A053339

/-- `∩[A050530(n+1), A358774(n+1)]` -/
def P5993302135593675903.Spec : Prop :=
  ∀ n, (P5993302135593675903.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P13408849859018788055

`∩[A014612(n+1), A050530(n+1)]`
-/

namespace A053339.P13408849859018788055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P13408849859018788055

namespace A053339

/-- `∩[A014612(n+1), A050530(n+1)]` -/
def P13408849859018788055.Spec : Prop :=
  ∀ n, (P13408849859018788055.a n : ℤ) = A053339 (n + 1)

end A053339

/-! ## A053339.P13726666113989912719

`∩[A050530(n+1), A217856(n+1)]`
-/

namespace A053339.P13726666113989912719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P13726666113989912719

namespace A053339

/-- `∩[A050530(n+1), A217856(n+1)]` -/
def P13726666113989912719.Spec : Prop :=
  ∀ n, (P13726666113989912719.a n : ℤ) = A053339 (n + 1)

end A053339

/-!
# A053341: Euclid-Pocklington primes: primes of the form Product_{i=1..k} prime(i) * prime(k+1)^m + 1 where prime(r) is the r-th prime and Product_{i=1..k} prime(i) < prime(k+1)^m.

The programs for A053341, there is no canonical definition to state claims against.
-/

/-! ## A053341.P16909776228818560748

`∩[A108222(n+1), record[A169757(n)]]`
-/

namespace A053341.P16909776228818560748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108222 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053341.P16909776228818560748

/-! ## A053341.P10045719741271886746

`A131200(A051896(n+1))`
-/

namespace A053341.P10045719741271886746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131200 (A051896 (n + 1)).toNat

end

end A053341.P10045719741271886746

/-!
# A053343: Semiprimes of the form pq where p < q and p + q - 1 is prime.

The programs for A053343, the canonical program `A053343.P17206480047150833733` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053343 has offset 1).

The definition of A053343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053343.P17206480047150833733

`A050530(eq[2, ∑{e}[A050530(n+1), #²]]+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A053343

/-- `A050530(eq[2, ∑{e}[A050530(n+1), #²]]+1)` -/
def P17206480047150833733.Spec : Prop :=
  ∀ n, P17206480047150833733.a n = A053343 (n + 1)

theorem P17206480047150833733.correct : P17206480047150833733.Spec := by
  intro n
  simp only [A053343, Nat.add_sub_cancel]

end A053343

/-! ## A053343.P8317497482486656294

`filter[A291318(n+1), A008966(#)]`
-/

namespace A053343.P8317497482486656294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A053343.P8317497482486656294

namespace A053343

/-- `filter[A291318(n+1), A008966(#)]` -/
def P8317497482486656294.Spec : Prop :=
  ∀ n, P8317497482486656294.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P83973419305363344

`filter[A050530(n+1), A354927(#)]`
-/

namespace A053343.P83973419305363344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A053343.P83973419305363344

namespace A053343

/-- `filter[A050530(n+1), A354927(#)]` -/
def P83973419305363344.Spec : Prop :=
  ∀ n, P83973419305363344.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P4326440782999836380

`filter[A291318(n+1), A324903(#)]`
-/

namespace A053343.P4326440782999836380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A053343.P4326440782999836380

namespace A053343

/-- `filter[A291318(n+1), A324903(#)]` -/
def P4326440782999836380.Spec : Prop :=
  ∀ n, P4326440782999836380.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P13369157146401390538

`filter[A050530(n+2), A374128(#)]`
-/

namespace A053343.P13369157146401390538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A053343.P13369157146401390538

namespace A053343

/-- `filter[A050530(n+2), A374128(#)]` -/
def P13369157146401390538.Spec : Prop :=
  ∀ n, P13369157146401390538.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P9483227606965473832

`filter[A306490(n+2), A374128(#)]`
-/

namespace A053343.P9483227606965473832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306490 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A053343.P9483227606965473832

namespace A053343

/-- `filter[A306490(n+2), A374128(#)]` -/
def P9483227606965473832.Spec : Prop :=
  ∀ n, P9483227606965473832.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P15629062838184011257

`filter[A306490(n+3), A359828(#)]`
-/

namespace A053343.P15629062838184011257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306490 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A053343.P15629062838184011257

namespace A053343

/-- `filter[A306490(n+3), A359828(#)]` -/
def P15629062838184011257.Spec : Prop :=
  ∀ n, P15629062838184011257.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P6654432497576532467

`∩[A005117(n+1), A291318(n+1)]`
-/

namespace A053343.P6654432497576532467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053343.P6654432497576532467

namespace A053343

/-- `∩[A005117(n+1), A291318(n+1)]` -/
def P6654432497576532467.Spec : Prop :=
  ∀ n, (P6654432497576532467.a n : ℤ) = A053343 (n + 1)

end A053343

/-! ## A053343.P16298522546460466087

`filter[A050530(n+1), A280710(#)]`
-/

namespace A053343.P16298522546460466087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A053343.P16298522546460466087

namespace A053343

/-- `filter[A050530(n+1), A280710(#)]` -/
def P16298522546460466087.Spec : Prop :=
  ∀ n, P16298522546460466087.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P12434144560932680467

`filter[A291318(n+1), A049240(#)]`
-/

namespace A053343.P12434144560932680467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A053343.P12434144560932680467

namespace A053343

/-- `filter[A291318(n+1), A049240(#)]` -/
def P12434144560932680467.Spec : Prop :=
  ∀ n, P12434144560932680467.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P13378070160123407726

`filter[A050530(n+1), A340370(#)]`
-/

namespace A053343.P13378070160123407726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A053343.P13378070160123407726

namespace A053343

/-- `filter[A050530(n+1), A340370(#)]` -/
def P13378070160123407726.Spec : Prop :=
  ∀ n, P13378070160123407726.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P11277108653406375036

`filter[A050530(n+1), A353471(#)]`
-/

namespace A053343.P11277108653406375036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A053343.P11277108653406375036

namespace A053343

/-- `filter[A050530(n+1), A353471(#)]` -/
def P11277108653406375036.Spec : Prop :=
  ∀ n, P11277108653406375036.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P5412441796647097573

`filter[A050530(n+1), A353481(#)]`
-/

namespace A053343.P5412441796647097573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A053343.P5412441796647097573

namespace A053343

/-- `filter[A050530(n+1), A353481(#)]` -/
def P5412441796647097573.Spec : Prop :=
  ∀ n, P5412441796647097573.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P11081355228843223874

`filter[A050530(n+1), A353676(#)]`
-/

namespace A053343.P11081355228843223874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A053343.P11081355228843223874

namespace A053343

/-- `filter[A050530(n+1), A353676(#)]` -/
def P11081355228843223874.Spec : Prop :=
  ∀ n, P11081355228843223874.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P6809446481638009753

`filter[A050530(n+1), A353788(#)]`
-/

namespace A053343.P6809446481638009753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A053343.P6809446481638009753

namespace A053343

/-- `filter[A050530(n+1), A353788(#)]` -/
def P6809446481638009753.Spec : Prop :=
  ∀ n, P6809446481638009753.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P14350693479223128405

`filter[A291318(n+1), A181183(#)]`
-/

namespace A053343.P14350693479223128405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A053343.P14350693479223128405

namespace A053343

/-- `filter[A291318(n+1), A181183(#)]` -/
def P14350693479223128405.Spec : Prop :=
  ∀ n, P14350693479223128405.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P15847251424354578411

`filter[A291318(n+1), A262684(#)]`
-/

namespace A053343.P15847251424354578411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A053343.P15847251424354578411

namespace A053343

/-- `filter[A291318(n+1), A262684(#)]` -/
def P15847251424354578411.Spec : Prop :=
  ∀ n, P15847251424354578411.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P17259302883685120152

`filter[A291318(n+1), A280710(#)]`
-/

namespace A053343.P17259302883685120152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A053343.P17259302883685120152

namespace A053343

/-- `filter[A291318(n+1), A280710(#)]` -/
def P17259302883685120152.Spec : Prop :=
  ∀ n, P17259302883685120152.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P18384271407958749984

`filter[A291318(n+1), A295316(#)]`
-/

namespace A053343.P18384271407958749984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A053343.P18384271407958749984

namespace A053343

/-- `filter[A291318(n+1), A295316(#)]` -/
def P18384271407958749984.Spec : Prop :=
  ∀ n, P18384271407958749984.a n = A053343 (n + 1)

end A053343

/-! ## A053343.P17974242766587465493

`filter[A306490(n+1), A280710(#)]`
-/

namespace A053343.P17974242766587465493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A053343.P17974242766587465493

namespace A053343

/-- `filter[A306490(n+1), A280710(#)]` -/
def P17974242766587465493.Spec : Prop :=
  ∀ n, P17974242766587465493.a n = A053343 (n + 1)

end A053343

/-!
# A053344: Minimal number of coins needed to pay n cents using coins of denominations 1, 5, 10, 25 cents.

The programs for A053344, the canonical program `A053344.P8859789379505194863` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053344 has offset 1).

The definition of A053344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053344.P8859789379505194863

`floor((n+1)/25)+floor((n+1)%25/10)+floor(((n+1)%25)%10/5)+(((n+1)%25)%10)%5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053344

/-- `floor((n+1)/25)+floor((n+1)%25/10)+floor(((n+1)%25)%10/5)+(((n+1)%25)%10)%5` -/
def P8859789379505194863.Spec : Prop :=
  ∀ n, P8859789379505194863.a n = A053344 (n + 1)

theorem P8859789379505194863.correct : P8859789379505194863.Spec := by
  intro n
  simp only [A053344, Nat.add_sub_cancel]

end A053344

/-! ## A053344.P7269917815633209338

`A011542(n+1)+A059995(A002266(n+1))`
-/

namespace A053344.P7269917815633209338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 (n + 1) + A059995 (A002266 (n + 1)).toNat

end

end A053344.P7269917815633209338

namespace A053344

/-- `A011542(n+1)+A059995(A002266(n+1))` -/
def P7269917815633209338.Spec : Prop :=
  ∀ n, P7269917815633209338.a n = A053344 (n + 1)

end A053344

/-! ## A053344.P2665215535955133760

`A053837(A080897(n+1))`
-/

namespace A053344.P2665215535955133760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A080897 (n + 1)).toNat

end

end A053344.P2665215535955133760

namespace A053344

/-- `A053837(A080897(n+1))` -/
def P2665215535955133760.Spec : Prop :=
  ∀ n, P2665215535955133760.a n = A053344 (n + 1)

end A053344

/-!
# A053346: a(n) = solution to the postage stamp problem with 7 denominations and n stamps.

The programs for A053346, there is no canonical definition to state claims against.
-/

/-! ## A053346.P5337691303436822018

`A084192(C(n+7, 2)+n)`
-/

namespace A053346.P5337691303436822018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (Nat.choose (n + 7) 2 + n)

end

end A053346.P5337691303436822018

/-!
# A053347: a(n) = binomial(n+7, 7)*(n+4)/4.

The programs for A053347, the canonical program `A053347.P9328606196330463444` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053347 has offset 0).

The definition of A053347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*(n+4)/4` (program `A053347.P11539297145728074118`, by `A053347.P11539297145728074118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053347.P11539297145728074118

`C(n+7, 7)*(n+4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053347.P11539297145728074118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 * (n + 4) : ℚ) / 4

end

end A053347.P11539297145728074118

namespace A053347

/-- `C(n+7, 7)*(n+4)/4` -/
def P11539297145728074118.Spec : Prop :=
  ∀ n, P11539297145728074118.a n = (A053347 n : ℚ)

theorem P11539297145728074118.correct : P11539297145728074118.Spec := by
  intro n
  simp only [A053347, Nat.add_sub_cancel, A053347.P11539297145728074118.a, A053347.P9328606196330463444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053347

/-! ## A053347.P9328606196330463444

`C(n+7, 7)+2*C(n+7, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053347

/-- `C(n+7, 7)+2*C(n+7, 8)` -/
def P9328606196330463444.Spec : Prop :=
  ∀ n, (P9328606196330463444.a n : ℤ) = A053347 n

theorem P9328606196330463444.correct : P9328606196330463444.Spec := by
  intro n
  simp only [A053347]

end A053347

/-! ## A053347.P9466974894539893485

`∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]`
-/

namespace A053347.P9466974894539893485
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053347.P9466974894539893485

namespace A053347

/-- `∑[∑[∑[∑[∑[∑[(n+1)²]]]]]]` -/
def P9466974894539893485.Spec : Prop :=
  ∀ n, (P9466974894539893485.a n : ℤ) = A053347 n

end A053347

/-! ## A053347.P15310689391601112555

`C(n+7, 8)+C(n+8, 8)`
-/

namespace A053347.P15310689391601112555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 8 + Nat.choose (n + 8) 8

end

end A053347.P15310689391601112555

namespace A053347

/-- `C(n+7, 8)+C(n+8, 8)` -/
def P15310689391601112555.Spec : Prop :=
  ∀ n, (P15310689391601112555.a n : ℤ) = A053347 n

theorem P15310689391601112555.correct : P15310689391601112555.Spec := by
  intro n
  simp only [A053347, Nat.add_sub_cancel, A053347.P15310689391601112555.a, A053347.P9328606196330463444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053347

/-! ## A053347.P4730104605081456990

`A050486(n)+a(n-1)` with `a(0)=1`
-/

namespace A053347.P4730104605081456990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050486 n + a (n - 1)

end

end A053347.P4730104605081456990

namespace A053347

/-- `A050486(n)+a(n-1)` -/
def P4730104605081456990.Spec : Prop :=
  ∀ n, P4730104605081456990.a n = A053347 n

end A053347

/-! ## A053347.P1638611711461909785

`A107419(n)/A000292(n+1)`
-/

namespace A053347.P1638611711461909785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107419 n : ℚ) / (A000292 (n + 1) : ℚ)

end

end A053347.P1638611711461909785

namespace A053347

/-- `A107419(n)/A000292(n+1)` -/
def P1638611711461909785.Spec : Prop :=
  ∀ n, P1638611711461909785.a n = (A053347 n : ℚ)

end A053347

/-! ## A053347.P12502736502907894986

`gcd(A027803(n+3), A138332(n))`
-/

namespace A053347.P12502736502907894986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027803 (n + 3)) (A138332 n)

end

end A053347.P12502736502907894986

namespace A053347

/-- `gcd(A027803(n+3), A138332(n))` -/
def P12502736502907894986.Spec : Prop :=
  ∀ n, (P12502736502907894986.a n : ℤ) = A053347 n

end A053347

/-! ## A053347.P9310793239916204858

`(A053367(n)+A000581(n+8))/2`
-/

namespace A053347.P9310793239916204858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053367 n + A000581 (n + 8) : ℚ) / 2

end

end A053347.P9310793239916204858

namespace A053347

/-- `(A053367(n)+A000581(n+8))/2` -/
def P9310793239916204858.Spec : Prop :=
  ∀ n, P9310793239916204858.a n = (A053347 n : ℚ)

end A053347

/-! ## A053347.P16930914282835868720

`2*A000581(n+8)-A000580(n+7)`
-/

namespace A053347.P16930914282835868720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000581 (n + 8) - A000580 (n + 7)

end

end A053347.P16930914282835868720

namespace A053347

/-- `2*A000581(n+8)-A000580(n+7)` -/
def P16930914282835868720.Spec : Prop :=
  ∀ n, P16930914282835868720.a n = A053347 n

theorem P16930914282835868720.correct : P16930914282835868720.Spec := by
  intro n
  simp only [A053347, Nat.add_sub_cancel, A053347.P16930914282835868720.a, A053347.P9328606196330463444.a, A000580, A000580.P16667415707980948191.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053347

/-! ## A053347.P16328948845455302715

`A000580(n+7)/A053136(n)*A053137(n)`
-/

namespace A053347.P16328948845455302715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) : ℚ) / (A053136 n : ℚ) * (A053137 n : ℚ)

end

end A053347.P16328948845455302715

namespace A053347

/-- `A000580(n+7)/A053136(n)*A053137(n)` -/
def P16328948845455302715.Spec : Prop :=
  ∀ n, P16328948845455302715.a n = (A053347 n : ℚ)

end A053347

/-! ## A053347.P16166358814505747228

`A000581(n+8)+A165618(n)-A124090(n+7)`
-/

namespace A053347.P16166358814505747228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + (A165618 n - A124090 (n + 7))

end

end A053347.P16166358814505747228

namespace A053347

/-- `A000581(n+8)+A165618(n)-A124090(n+7)` -/
def P16166358814505747228.Spec : Prop :=
  ∀ n, P16166358814505747228.a n = A053347 n

theorem P16166358814505747228.correct : P16166358814505747228.Spec := by
  intro n
  simp only [A053347, Nat.add_sub_cancel, A053347.P16166358814505747228.a, A053347.P9328606196330463444.a, A000581, A000581.P12083568850536544774.a, A124090, A124090.P5259538866810562984.a, A165618, A165618.P15483055962896292448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053347

/-! ## A053347.P3635655219943543912

`A095665(n)-(A000582(n+9)+A000580(n+7))`
-/

namespace A053347.P3635655219943543912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095665 n - (A000582 (n + 9) + A000580 (n + 7))

end

end A053347.P3635655219943543912

namespace A053347

/-- `A095665(n)-(A000582(n+9)+A000580(n+7))` -/
def P3635655219943543912.Spec : Prop :=
  ∀ n, P3635655219943543912.a n = A053347 n

end A053347

/-! ## A053347.P2068751052060831973

`A054333(n+1)-(A054333(n)+A050486(n+1))`
-/

namespace A053347.P2068751052060831973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054333 (n + 1) - (A054333 n + A050486 (n + 1))

end

end A053347.P2068751052060831973

namespace A053347

/-- `A054333(n+1)-(A054333(n)+A050486(n+1))` -/
def P2068751052060831973.Spec : Prop :=
  ∀ n, P2068751052060831973.a n = A053347 n

theorem P2068751052060831973.correct : P2068751052060831973.Spec := by
  intro n
  simp only [A053347, Nat.add_sub_cancel, A053347.P2068751052060831973.a, A053347.P9328606196330463444.a, A050486, A050486.P713696247884620416.a, A054333, A054333.P12017629139080086520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053347

/-! ## A053347.P14639991694330037343

`A000581(n+8)+A000581(n+9)-A050486(n+1)`
-/

namespace A053347.P14639991694330037343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + (A000581 (n + 9) - A050486 (n + 1))

end

end A053347.P14639991694330037343

namespace A053347

/-- `A000581(n+8)+A000581(n+9)-A050486(n+1)` -/
def P14639991694330037343.Spec : Prop :=
  ∀ n, P14639991694330037343.a n = A053347 n

theorem P14639991694330037343.correct : P14639991694330037343.Spec := by
  intro n
  simp only [A053347, Nat.add_sub_cancel, A053347.P14639991694330037343.a, A053347.P9328606196330463444.a, A000581, A000581.P12083568850536544774.a, A050486, A050486.P713696247884620416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053347

/-! ## A053347.P17772292250308069876

`A178440(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A053347.P17772292250308069876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178440 (2 * n) + a (n - 1)

end

end A053347.P17772292250308069876

namespace A053347

/-- `A178440(2*n)+a(n-1)` -/
def P17772292250308069876.Spec : Prop :=
  ∀ n, P17772292250308069876.a n = A053347 n

end A053347

/-!
# A053348: a(n) = solution to the postage stamp problem with 8 denominations and n stamps.

The programs for A053348, there is no canonical definition to state claims against.
-/

/-! ## A053348.P859156465480946319

`A084192(A155212(n+4))`
-/

namespace A053348.P859156465480946319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (A155212 (n + 4)).toNat

end

end A053348.P859156465480946319

/-!
# A053351: Numbers k such that 269*2^k + 1 is prime.

The programs for A053351, there is no canonical definition to state claims against.
-/

/-! ## A053351.P4691265842398085582

`A121047(A212058(n)+2)`
-/

namespace A053351.P4691265842398085582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 (A212058 n + 2).toNat

end

end A053351.P4691265842398085582

/-! ## A053351.P2656796424574877639

`A121047(or(2, A212058(n)))`
-/

namespace A053351.P2656796424574877639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 (Int.lor 2 (A212058 n)).toNat

end

end A053351.P2656796424574877639

/-!
# A053361: Numbers k such that 289*2^k + 1 is prime.

The programs for A053361, there is no canonical definition to state claims against.
-/

/-! ## A053361.P961321836535068077

`A000010(A173817((n+3)²))+2`
-/

namespace A053361.P961321836535068077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A173817 ((n + 3) ^ 2)).toNat + 2

end

end A053361.P961321836535068077

/-!
# A053364: Numbers k such that 295*2^k + 1 is prime.

The programs for A053364, there is no canonical definition to state claims against.
-/

/-! ## A053364.P17177708786228722351

`record[2*A061901(A330331(n+1))]`
-/

namespace A053364.P17177708786228722351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061901 (A330331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053364.P17177708786228722351

/-!
# A053367: Partial sums of A050494.

The programs for A053367, the canonical program `A053367.P12668982603479795435` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053367 has offset 0).

The definition of A053367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053367.P12668982603479795435

`(3*n+8)*C(n+7, 7)/8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053367

/-- `(3*n+8)*C(n+7, 7)/8` -/
def P12668982603479795435.Spec : Prop :=
  ∀ n, P12668982603479795435.a n = (A053367 n : ℚ)

end A053367

/-! ## A053367.P12928043775032908449

`∑[∑[∑[∑[∑[∑[∑[3*n+1]]]]]]]`
-/

namespace A053367.P12928043775032908449
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053367.P12928043775032908449

namespace A053367

/-- `∑[∑[∑[∑[∑[∑[∑[3*n+1]]]]]]]` -/
def P12928043775032908449.Spec : Prop :=
  ∀ n, (P12928043775032908449.a n : ℤ) = A053367 n

end A053367

/-! ## A053367.P10311225875751752662

`A050494(n)+a(n-1)` with `a(0)=1`
-/

namespace A053367.P10311225875751752662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050494 n + a (n - 1)

end

end A053367.P10311225875751752662

namespace A053367

/-- `A050494(n)+a(n-1)` -/
def P10311225875751752662.Spec : Prop :=
  ∀ n, P10311225875751752662.a n = A053367 n

end A053367

/-! ## A053367.P10645759253016278768

`∑[∑[A027801(n+1)]]/5`
-/

namespace A053367.P10645759253016278768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027801 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A053367.P10645759253016278768

namespace A053367

/-- `∑[∑[A027801(n+1)]]/5` -/
def P10645759253016278768.Spec : Prop :=
  ∀ n, P10645759253016278768.a n = (A053367 n : ℚ)

end A053367

/-! ## A053367.P2688109924636820806

`2*A053347(n)-A000581(n+8)`
-/

namespace A053367.P2688109924636820806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053347 n - A000581 (n + 8)

end

end A053367.P2688109924636820806

namespace A053367

/-- `2*A053347(n)-A000581(n+8)` -/
def P2688109924636820806.Spec : Prop :=
  ∀ n, P2688109924636820806.a n = A053367 n

end A053367

/-! ## A053367.P10930313530945890245

`A000581(n+8)+n/4*A000580(n+7)`
-/

namespace A053367.P10930313530945890245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) + (n : ℚ) / 4 * (A000580 (n + 7) : ℚ)

end

end A053367.P10930313530945890245

namespace A053367

/-- `A000581(n+8)+n/4*A000580(n+7)` -/
def P10930313530945890245.Spec : Prop :=
  ∀ n, P10930313530945890245.a n = (A053367 n : ℚ)

end A053367

/-! ## A053367.P8975119549112921479

`A053310(n+1)-(A053310(n)+A050494(n+1))`
-/

namespace A053367.P8975119549112921479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053310 (n + 1) - (A053310 n + A050494 (n + 1))

end

end A053367.P8975119549112921479

namespace A053367

/-- `A053310(n+1)-(A053310(n)+A050494(n+1))` -/
def P8975119549112921479.Spec : Prop :=
  ∀ n, P8975119549112921479.a n = A053367 n

end A053367

/-! ## A053367.P17827199888316961989

`A053347(n+1)+A000581(n+8)-A050494(n+1)`
-/

namespace A053367.P17827199888316961989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 (n + 1) + (A000581 (n + 8) - A050494 (n + 1))

end

end A053367.P17827199888316961989

namespace A053367

/-- `A053347(n+1)+A000581(n+8)-A050494(n+1)` -/
def P17827199888316961989.Spec : Prop :=
  ∀ n, P17827199888316961989.a n = A053367 n

end A053367

/-! ## A053367.P16589282406354767279

`A095660(A000217(n+9)-9)`
-/

namespace A053367.P16589282406354767279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A000217 (n + 9) - 9).toNat

end

end A053367.P16589282406354767279

namespace A053367

/-- `A095660(A000217(n+9)-9)` -/
def P16589282406354767279.Spec : Prop :=
  ∀ n, P16589282406354767279.a n = A053367 n

end A053367

/-! ## A053367.P13583935054458883023

`A125232(A000217(n+6)+7)`
-/

namespace A053367.P13583935054458883023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125232 (A000217 (n + 6) + 7).toNat

end

end A053367.P13583935054458883023

namespace A053367

/-- `A125232(A000217(n+6)+7)` -/
def P13583935054458883023.Spec : Prop :=
  ∀ n, P13583935054458883023.a n = A053367 n

end A053367

/-! ## A053367.P12493632348896807225

`A125232(A000096(n+6)-(n-1))`
-/

namespace A053367.P12493632348896807225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125232 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A053367.P12493632348896807225

namespace A053367

/-- `A125232(A000096(n+6)-(n-1))` -/
def P12493632348896807225.Spec : Prop :=
  ∀ n, P12493632348896807225.a n = A053367 n

end A053367

/-! ## A053367.P106704288525231838

`A093560(A000096(n+7)+9)`
-/

namespace A053367.P106704288525231838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000096 (n + 7) + 9).toNat

end

end A053367.P106704288525231838

namespace A053367

/-- `A093560(A000096(n+7)+9)` -/
def P106704288525231838.Spec : Prop :=
  ∀ n, P106704288525231838.a n = A053367 n

end A053367

/-!
# A053368: a(n) = (5n+2)*C(n) where C(n) = Catalan numbers (A000108).

The programs for A053368, the canonical program `A053368.P260773696375420905` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053368 has offset 0).

The definition of A053368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053368.P11825892130367674310

`(5*n+2)*A000108(n)`
-/

namespace A053368.P11825892130367674310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) * A000108 n

end

end A053368.P11825892130367674310

namespace A053368

/-- `(5*n+2)*A000108(n)` -/
def P11825892130367674310.Spec : Prop :=
  ∀ n, P11825892130367674310.a n = A053368 n

end A053368

/-! ## A053368.P260773696375420905

`(5*n+2)/(n+1)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053368

/-- `(5*n+2)/(n+1)*C(2*n, n)` -/
def P260773696375420905.Spec : Prop :=
  ∀ n, P260773696375420905.a n = (A053368 n : ℚ)

end A053368

/-! ## A053368.P14836533887631484726

`Δ[(4-2/n)*a(n-1)]+∏[4-2/(n+1)]/2` with `a(0)=1`
-/

namespace A053368.P14836533887631484726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A053368.P14836533887631484726

namespace A053368

/-- `Δ[(4-2/n)*a(n-1)]+∏[4-2/(n+1)]/2` -/
def P14836533887631484726.Spec : Prop :=
  ∀ n, P14836533887631484726.a n = (A053368 n : ℚ)

end A053368

/-! ## A053368.P7199965368617045198

`(5*n+2)*A208355(2*n)`
-/

namespace A053368.P7199965368617045198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) * A208355 (2 * n)

end

end A053368.P7199965368617045198

namespace A053368

/-- `(5*n+2)*A208355(2*n)` -/
def P7199965368617045198.Spec : Prop :=
  ∀ n, P7199965368617045198.a n = A053368 n

end A053368

/-! ## A053368.P9413359512541507994

`(4*n+n+2)*A120588(n+1)`
-/

namespace A053368.P9413359512541507994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + (n + 2) : ℤ) * A120588 (n + 1)

end

end A053368.P9413359512541507994

namespace A053368

/-- `(4*n+n+2)*A120588(n+1)` -/
def P9413359512541507994.Spec : Prop :=
  ∀ n, P9413359512541507994.a n = A053368 n

end A053368

/-! ## A053368.P1928800558632168993

`Δ[A000984(n)]+∏[4-2/(n+1)]/2`
-/

namespace A053368.P1928800558632168993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A053368.P1928800558632168993

namespace A053368

/-- `Δ[A000984(n)]+∏[4-2/(n+1)]/2` -/
def P1928800558632168993.Spec : Prop :=
  ∀ n, P1928800558632168993.a n = (A053368 n : ℚ)

end A053368

/-! ## A053368.P17285792094002960345

`Δ[A051920(2*n)]+∏[4-2/(n+1)]/2`
-/

namespace A053368.P17285792094002960345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (2 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A053368.P17285792094002960345

namespace A053368

/-- `Δ[A051920(2*n)]+∏[4-2/(n+1)]/2` -/
def P17285792094002960345.Spec : Prop :=
  ∀ n, P17285792094002960345.a n = (A053368 n : ℚ)

end A053368

/-! ## A053368.P5818334044124194149

`Δ[A129383(2*n)]+∏[4-2/(n+1)]/2`
-/

namespace A053368.P5818334044124194149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (2 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A053368.P5818334044124194149

namespace A053368

/-- `Δ[A129383(2*n)]+∏[4-2/(n+1)]/2` -/
def P5818334044124194149.Spec : Prop :=
  ∀ n, P5818334044124194149.a n = (A053368 n : ℚ)

end A053368

/-! ## A053368.P15895946525049620394

`A062561(n)+record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=2`
-/

namespace A053368.P15895946525049620394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062561 n : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053368.P15895946525049620394

namespace A053368

/-- `A062561(n)+record[a(n-1)/(floor(n/2)/n-1)]` -/
def P15895946525049620394.Spec : Prop :=
  ∀ n, P15895946525049620394.a n = (A053368 n : ℚ)

end A053368

/-! ## A053368.P1857857668093864954

`A051945(n)+A000108(n)`
-/

namespace A053368.P1857857668093864954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + A000108 n

end

end A053368.P1857857668093864954

namespace A053368

/-- `A051945(n)+A000108(n)` -/
def P1857857668093864954.Spec : Prop :=
  ∀ n, P1857857668093864954.a n = A053368 n

end A053368

/-! ## A053368.P4344848974804479615

`A051944(n)+A000984(n)`
-/

namespace A053368.P4344848974804479615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n + A000984 n

end

end A053368.P4344848974804479615

namespace A053368

/-- `A051944(n)+A000984(n)` -/
def P4344848974804479615.Spec : Prop :=
  ∀ n, P4344848974804479615.a n = A053368 n

end A053368

/-! ## A053368.P7637013150146746104

`A062561(n)+A028329(n)`
-/

namespace A053368.P7637013150146746104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A028329 n

end

end A053368.P7637013150146746104

namespace A053368

/-- `A062561(n)+A028329(n)` -/
def P7637013150146746104.Spec : Prop :=
  ∀ n, P7637013150146746104.a n = A053368 n

end A053368

/-! ## A053368.P10982033341156114095

`A162551(n)+A051960(n)`
-/

namespace A053368.P10982033341156114095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A051960 n

end

end A053368.P10982033341156114095

namespace A053368

/-- `A162551(n)+A051960(n)` -/
def P10982033341156114095.Spec : Prop :=
  ∀ n, P10982033341156114095.a n = A053368 n

end A053368

/-! ## A053368.P2329819652396250510

`A050476(n)-A276666(n)`
-/

namespace A053368.P2329819652396250510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n - A276666 n

end

end A053368.P2329819652396250510

namespace A053368

/-- `A050476(n)-A276666(n)` -/
def P2329819652396250510.Spec : Prop :=
  ∀ n, P2329819652396250510.a n = A053368 n

end A053368

/-! ## A053368.P16148011862598744863

`A000108(n)*A016873(n)`
-/

namespace A053368.P16148011862598744863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A016873 n

end

end A053368.P16148011862598744863

namespace A053368

/-- `A000108(n)*A016873(n)` -/
def P16148011862598744863.Spec : Prop :=
  ∀ n, P16148011862598744863.a n = A053368 n

end A053368

/-! ## A053368.P13168211258966289712

`A001700(n)+Δ[A000984(n)]`
-/

namespace A053368.P13168211258966289712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (f1 (n + 1) - f1 n)

end

end A053368.P13168211258966289712

namespace A053368

/-- `A001700(n)+Δ[A000984(n)]` -/
def P13168211258966289712.Spec : Prop :=
  ∀ n, P13168211258966289712.a n = A053368 n

end A053368

/-! ## A053368.P2846861016047482793

`A001791(n)+A000984(n+1)`
-/

namespace A053368.P2846861016047482793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + A000984 (n + 1)

end

end A053368.P2846861016047482793

namespace A053368

/-- `A001791(n)+A000984(n+1)` -/
def P2846861016047482793.Spec : Prop :=
  ∀ n, P2846861016047482793.a n = A053368 n

end A053368

/-! ## A053368.P13913297559489948901

`A051924(n+1)+A001700(n)`
-/

namespace A053368.P13913297559489948901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) + A001700 n

end

end A053368.P13913297559489948901

namespace A053368

/-- `A051924(n+1)+A001700(n)` -/
def P13913297559489948901.Spec : Prop :=
  ∀ n, P13913297559489948901.a n = A053368 n

end A053368

/-! ## A053368.P2666383497529663361

`A184937(n)+A129869(n+1)`
-/

namespace A053368.P2666383497529663361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184937 n + A129869 (n + 1)

end

end A053368.P2666383497529663361

namespace A053368

/-- `A184937(n)+A129869(n+1)` -/
def P2666383497529663361.Spec : Prop :=
  ∀ n, P2666383497529663361.a n = A053368 n

end A053368

/-! ## A053368.P15307041663133953531

`A323229(n)+A030662(n+1)`
-/

namespace A053368.P15307041663133953531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 n + A030662 (n + 1)

end

end A053368.P15307041663133953531

namespace A053368

/-- `A323229(n)+A030662(n+1)` -/
def P15307041663133953531.Spec : Prop :=
  ∀ n, P15307041663133953531.a n = A053368 n

end A053368

/-!
# A053369: Linear recursion with Catalan numbers.

The programs for A053369, the canonical program `A053369.P11018965887360865107` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053369 has offset 0).

The definition of A053369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053369.P5903315542100840557

`(7*n+2)*A000108(n)`
-/

namespace A053369.P5903315542100840557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 2 : ℤ) * A000108 n

end

end A053369.P5903315542100840557

namespace A053369

/-- `(7*n+2)*A000108(n)` -/
def P5903315542100840557.Spec : Prop :=
  ∀ n, P5903315542100840557.a n = A053369 n

end A053369

/-! ## A053369.P11018965887360865107

`(7*n+2)/(n+1)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053369

/-- `(7*n+2)/(n+1)*C(2*n, n)` -/
def P11018965887360865107.Spec : Prop :=
  ∀ n, P11018965887360865107.a n = (A053369 n : ℚ)

end A053369

/-! ## A053369.P4890991482832630467

`Δ[(4-2/n)*a(n-1)]-∏[4-2/(n+1)]/2` with `a(0)=3`
-/

namespace A053369.P4890991482832630467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A053369.P4890991482832630467

namespace A053369

/-- `Δ[(4-2/n)*a(n-1)]-∏[4-2/(n+1)]/2` -/
def P4890991482832630467.Spec : Prop :=
  ∀ n, P4890991482832630467.a n = (A053369 n : ℚ)

end A053369

/-! ## A053369.P5453835704634523082

`(n+2)*∑[A071735(n)]`
-/

namespace A053369.P5453835704634523082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053369.P5453835704634523082

namespace A053369

/-- `(n+2)*∑[A071735(n)]` -/
def P5453835704634523082.Spec : Prop :=
  ∀ n, P5453835704634523082.a n = A053369 n

end A053369

/-! ## A053369.P5866451683777517223

`(n+2)*Δ[A081293(n)]`
-/

namespace A053369.P5866451683777517223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A053369.P5866451683777517223

namespace A053369

/-- `(n+2)*Δ[A081293(n)]` -/
def P5866451683777517223.Spec : Prop :=
  ∀ n, P5866451683777517223.a n = A053369 n

end A053369

/-! ## A053369.P13270930282051676463

`(n+2)*A000782(n+1)`
-/

namespace A053369.P13270930282051676463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000782 (n + 1)

end

end A053369.P13270930282051676463

namespace A053369

/-- `(n+2)*A000782(n+1)` -/
def P13270930282051676463.Spec : Prop :=
  ∀ n, P13270930282051676463.a n = A053369 n

end A053369

/-! ## A053369.P15166681258866573702

`(n+2)*A005508(2*n)`
-/

namespace A053369.P15166681258866573702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A005508 (2 * n)

end

end A053369.P15166681258866573702

namespace A053369

/-- `(n+2)*A005508(2*n)` -/
def P15166681258866573702.Spec : Prop :=
  ∀ n, P15166681258866573702.a n = A053369 n

end A053369

/-! ## A053369.P5581495927657510649

`(7*n+2)*A000984(n)/(n+1)`
-/

namespace A053369.P5581495927657510649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n + 2 : ℚ) * ((A000984 n : ℚ) / (n + 1 : ℚ))

end

end A053369.P5581495927657510649

namespace A053369

/-- `(7*n+2)*A000984(n)/(n+1)` -/
def P5581495927657510649.Spec : Prop :=
  ∀ n, P5581495927657510649.a n = (A053369 n : ℚ)

end A053369

/-! ## A053369.P2561912068514844349

`A050477(n)+A000108(n)`
-/

namespace A053369.P2561912068514844349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050477 n + A000108 n

end

end A053369.P2561912068514844349

namespace A053369

/-- `A050477(n)+A000108(n)` -/
def P2561912068514844349.Spec : Prop :=
  ∀ n, P2561912068514844349.a n = A053369 n

end A053369

/-! ## A053369.P3755664737295728681

`A050476(n)+A000984(n)`
-/

namespace A053369.P3755664737295728681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n + A000984 n

end

end A053369.P3755664737295728681

namespace A053369

/-- `A050476(n)+A000984(n)` -/
def P3755664737295728681.Spec : Prop :=
  ∀ n, P3755664737295728681.a n = A053369 n

end A053369

/-! ## A053369.P12961666254069350368

`A051945(n)+A001700(n)`
-/

namespace A053369.P12961666254069350368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + A001700 n

end

end A053369.P12961666254069350368

namespace A053369

/-- `A051945(n)+A001700(n)` -/
def P12961666254069350368.Spec : Prop :=
  ∀ n, P12961666254069350368.a n = A053369 n

end A053369

/-! ## A053369.P2933997196818396532

`A162551(n)+A053368(n)`
-/

namespace A053369.P2933997196818396532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A053368 n

end

end A053369.P2933997196818396532

namespace A053369

/-- `A162551(n)+A053368(n)` -/
def P2933997196818396532.Spec : Prop :=
  ∀ n, P2933997196818396532.a n = A053369 n

end A053369

/-! ## A053369.P3876814913514451837

`A050478(n)-A276666(n)`
-/

namespace A053369.P3876814913514451837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050478 n - A276666 n

end

end A053369.P3876814913514451837

namespace A053369

/-- `A050478(n)-A276666(n)` -/
def P3876814913514451837.Spec : Prop :=
  ∀ n, P3876814913514451837.a n = A053369 n

end A053369

/-! ## A053369.P5781071281999006780

`A000108(n)*A017005(n)`
-/

namespace A053369.P5781071281999006780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A017005 n

end

end A053369.P5781071281999006780

namespace A053369

/-- `A000108(n)*A017005(n)` -/
def P5781071281999006780.Spec : Prop :=
  ∀ n, P5781071281999006780.a n = A053369 n

end A053369

/-! ## A053369.P9418382310082618557

`A062561(n)+A000984(n+1)`
-/

namespace A053369.P9418382310082618557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A000984 (n + 1)

end

end A053369.P9418382310082618557

namespace A053369

/-- `A062561(n)+A000984(n+1)` -/
def P9418382310082618557.Spec : Prop :=
  ∀ n, P9418382310082618557.a n = A053369 n

end A053369

/-! ## A053369.P8427040352034197318

`A071721(n)+A026617(n+1)`
-/

namespace A053369.P8427040352034197318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n + A026617 (n + 1)

end

end A053369.P8427040352034197318

namespace A053369

/-- `A071721(n)+A026617(n+1)` -/
def P8427040352034197318.Spec : Prop :=
  ∀ n, P8427040352034197318.a n = A053369 n

end A053369

/-! ## A053369.P14205132091779049190

`A051944(n)+A051924(n+1)`
-/

namespace A053369.P14205132091779049190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n + A051924 (n + 1)

end

end A053369.P14205132091779049190

namespace A053369

/-- `A051944(n)+A051924(n+1)` -/
def P14205132091779049190.Spec : Prop :=
  ∀ n, P14205132091779049190.a n = A053369 n

end A053369

/-! ## A053369.P12139774143578346985

`A276666(n)+A003409(n+1)`
-/

namespace A053369.P12139774143578346985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A003409 (n + 1)

end

end A053369.P12139774143578346985

namespace A053369

/-- `A276666(n)+A003409(n+1)` -/
def P12139774143578346985.Spec : Prop :=
  ∀ n, P12139774143578346985.a n = A053369 n

end A053369

/-! ## A053369.P17047516706292579582

`A276666(n)+A029651(n+1)`
-/

namespace A053369.P17047516706292579582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A029651 (n + 1)

end

end A053369.P17047516706292579582

namespace A053369

/-- `A276666(n)+A029651(n+1)` -/
def P17047516706292579582.Spec : Prop :=
  ∀ n, P17047516706292579582.a n = A053369 n

end A053369

/-! ## A053369.P460006062506310708

`A128650(n+2)+A051960(n)`
-/

namespace A053369.P460006062506310708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A051960 n

end

end A053369.P460006062506310708

namespace A053369

/-- `A128650(n+2)+A051960(n)` -/
def P460006062506310708.Spec : Prop :=
  ∀ n, P460006062506310708.a n = A053369 n

end A053369

/-!
# A053370: Write fundamental unit for real quadratic field of discriminant n as x + y*omega; sequence gives values of x for n == 1 mod 4.

The programs for A053370, there is no canonical definition to state claims against.
-/

/-! ## A053370.P14569511656188410201

`A014000(eq[A003658(n+2), A306300(n+2)]+2)`
-/

namespace A053370.P14569511656188410201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014000 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A053370.P14569511656188410201

/-! ## A053370.P5175477005939246677

`A077057(A167619(n+1))-A053373(n+1)`
-/

namespace A053370.P5175477005939246677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077057 (A167619 (n + 1)).toNat - A053373 (n + 1)

end

end A053370.P5175477005939246677

/-!
# A053371: Write fundamental unit for real quadratic field of discriminant n as x + y*omega; sequence gives values of x for n == 2 mod 4.

The programs for A053371, there is no canonical definition to state claims against.
-/

/-! ## A053371.P4498285272459156936

`A006702(A039956(n+1))`
-/

namespace A053371.P4498285272459156936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A039956 (n + 1)).toNat

end

end A053371.P4498285272459156936

/-! ## A053371.P15356180516288137660

`A006702(A081770(n+1)/2)`
-/

namespace A053371.P15356180516288137660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (SequenceMachineLib.roundAway ((A081770 (n + 1) : ℚ) / 2)).toNat

end

end A053371.P15356180516288137660

/-! ## A053371.P17701095396175389521

`A006702(record[A007913(2*(n+1))])`
-/

namespace A053371.P17701095396175389521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053371.P17701095396175389521

/-! ## A053371.P4232529652636943927

`A006704(record[A007913(2*(n+1))])`
-/

namespace A053371.P4232529652636943927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053371.P4232529652636943927

/-! ## A053371.P5504630149439911998

`A006702(record[A007947(2*(n+1))])`
-/

namespace A053371.P5504630149439911998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053371.P5504630149439911998

/-! ## A053371.P4811531768057627290

`A006704(record[A007947(2*(n+1))])`
-/

namespace A053371.P4811531768057627290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053371.P4811531768057627290

/-! ## A053371.P2175485218136864400

`A006704(record[A019554(2*(n+1))])`
-/

namespace A053371.P2175485218136864400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053371.P2175485218136864400

/-! ## A053371.P1937924673871731729

`A006704(record[A019555(2*(n+1))])`
-/

namespace A053371.P1937924673871731729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053371.P1937924673871731729

/-!
# A053372: Write fundamental unit for real quadratic field of discriminant n as x + y*omega; sequence gives values of x for n == 3 mod 4.

The programs for A053372, there is no canonical definition to state claims against.
-/

/-! ## A053372.P17063034685844103535

`A006702(A039957(n+1))`
-/

namespace A053372.P17063034685844103535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A039957 (n + 1)).toNat

end

end A053372.P17063034685844103535

/-! ## A053372.P17695783091369133506

`A006704(or(1, A039957(n+1)))`
-/

namespace A053372.P17695783091369133506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (Int.lor 1 (A039957 (n + 1))).toNat

end

end A053372.P17695783091369133506

/-! ## A053372.P17361599036364357303

`A006702(record[A007913(A004767(n))])`
-/

namespace A053372.P17361599036364357303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053372.P17361599036364357303

/-! ## A053372.P14398318419718222758

`A006704(record[A007913(A004767(n))])`
-/

namespace A053372.P14398318419718222758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053372.P14398318419718222758

/-! ## A053372.P14226012058770288722

`A006704(record[A019555(A004767(n))])`
-/

namespace A053372.P14226012058770288722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053372.P14226012058770288722

/-!
# A053373: Write fundamental unit for real quadratic field of discriminant n as x + y*omega; sequence gives values of y for n == 1 (mod 4).

The programs for A053373, there is no canonical definition to state claims against.
-/

/-! ## A053373.P13954914445481271850

`A077058(A242474(n+1)+A102684(n))`
-/

namespace A053373.P13954914445481271850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077058 (A242474 (n + 1) + A102684 n).toNat

end

end A053373.P13954914445481271850

/-! ## A053373.P14818191596928930832

`A077058(A242474(n+1)+A004216(n+1))`
-/

namespace A053373.P14818191596928930832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077058 (A242474 (n + 1) + A004216 (n + 1)).toNat

end

end A053373.P14818191596928930832

/-! ## A053373.P4339748905922484912

`A077058(A167619(n+1))`
-/

namespace A053373.P4339748905922484912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077058 (A167619 (n + 1)).toNat

end

end A053373.P4339748905922484912

/-! ## A053373.P7780241405409633654

`A077058(∑[A144150(A008949(n))])`
-/

namespace A053373.P7780241405409633654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A008949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077058 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053373.P7780241405409633654

/-! ## A053373.P16757992554154897077

`A077057(A167619(n+1))-A053370(n)`
-/

namespace A053373.P16757992554154897077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077057 (A167619 (n + 1)).toNat - A053370 n

end

end A053373.P16757992554154897077

/-!
# A053374: Write fundamental unit for real quadratic field of discriminant n as x + y*omega; sequence gives values of y for n == 2 mod 4.

The programs for A053374, there is no canonical definition to state claims against.
-/

/-! ## A053374.P1248143459680673471

`A006703(A039956(n+1))`
-/

namespace A053374.P1248143459680673471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A039956 (n + 1)).toNat

end

end A053374.P1248143459680673471

/-! ## A053374.P18306537173887684362

`A006703(eq[0, A105234(n)])`
-/

namespace A053374.P18306537173887684362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053374.P18306537173887684362

/-! ## A053374.P9207955312105894923

`A006703(2*A056911(n+1))`
-/

namespace A053374.P9207955312105894923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (2 * A056911 (n + 1)).toNat

end

end A053374.P9207955312105894923

/-! ## A053374.P1599914613531217358

`A006703(record[A007913(2*(n+1))])`
-/

namespace A053374.P1599914613531217358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P1599914613531217358

/-! ## A053374.P15800551659064079836

`A006705(record[A007913(2*(n+1))])`
-/

namespace A053374.P15800551659064079836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P15800551659064079836

/-! ## A053374.P17386198328950380446

`A006703(record[A007947(2*(n+1))])`
-/

namespace A053374.P17386198328950380446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P17386198328950380446

/-! ## A053374.P15446956432948282654

`A006705(record[A007947(2*(n+1))])`
-/

namespace A053374.P15446956432948282654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P15446956432948282654

/-! ## A053374.P16743768859489927148

`A006703(record[A015052(2*(n+1))])`
-/

namespace A053374.P16743768859489927148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P16743768859489927148

/-! ## A053374.P1530852508680834089

`A006705(record[A015052(2*(n+1))])`
-/

namespace A053374.P1530852508680834089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P1530852508680834089

/-! ## A053374.P2786672975453425108

`A006705(record[A015053(2*(n+1))])`
-/

namespace A053374.P2786672975453425108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P2786672975453425108

/-! ## A053374.P10394361467768458834

`A006703(record[A055231(2*(n+1))])`
-/

namespace A053374.P10394361467768458834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P10394361467768458834

/-! ## A053374.P17975546191042350258

`A006705(record[A055231(2*(n+1))])`
-/

namespace A053374.P17975546191042350258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P17975546191042350258

/-! ## A053374.P8510445224232264124

`A006703(record[2*A000026(2*n+1)])`
-/

namespace A053374.P8510445224232264124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000026 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053374.P8510445224232264124

/-!
# A053375: Write fundamental unit for real quadratic field of discriminant n as x + y*omega; sequence gives values of y for n == 3 mod 4.

The programs for A053375, there is no canonical definition to state claims against.
-/

/-! ## A053375.P5399174741687877810

`A006703(A039957(n+1))`
-/

namespace A053375.P5399174741687877810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A039957 (n + 1)).toNat

end

end A053375.P5399174741687877810

/-! ## A053375.P6746589372329649688

`A006705(∩[A003657(n+1), Δ[n²]])`
-/

namespace A053375.P6746589372329649688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A053375.P6746589372329649688

/-! ## A053375.P12676113285054445916

`A006703(record[A055231(A004767(n))])`
-/

namespace A053375.P12676113285054445916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053375.P12676113285054445916

/-! ## A053375.P17063520903761504194

`A006703(record[A000026(A168269(n+1))])`
-/

namespace A053375.P17063520903761504194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A168269 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053375.P17063520903761504194

/-! ## A053375.P12899700197782807616

`A006703(∩[A003657(n+1), A004273(n)])`
-/

namespace A053375.P12899700197782807616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A053375.P12899700197782807616

/-! ## A053375.P17456556067595980133

`A006703(∩[A003657(n+1), A004767(n)])`
-/

namespace A053375.P17456556067595980133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A053375.P17456556067595980133

/-! ## A053375.P4886862603424497376

`A006703(∩[A056911(n+1), A004767(n)])`
-/

namespace A053375.P4886862603424497376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A053375.P4886862603424497376

/-!
# A053376: a(n) contains n digits (either '1' or '8') and is divisible by 2^n.

The programs for A053376, there is no canonical definition to state claims against.
-/

/-! ## A053376.P4609909078927956543

`∑[10^n*A023411(n+1)]`
-/

namespace A053376.P4609909078927956543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A023411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053376.P4609909078927956543

/-! ## A053376.P3869984102745697323

`∑[A246127(A190812(n+1))^3*A011557(n)]`
-/

namespace A053376.P3869984102745697323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246127 (A190812 (n + 1)).toNat ^ 3 * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053376.P3869984102745697323

/-! ## A053376.P18301343907352256847

`∑[A011557(n)*A031176(32*A207682(n+1))]`
-/

namespace A053376.P18301343907352256847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A031176 (32 * A207682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053376.P18301343907352256847

/-! ## A053376.P14883200985262304917

`∩[A213084(n+1), A241882(n+1)]`
-/

namespace A053376.P14883200985262304917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053376.P14883200985262304917

/-!
# A053377: a(n) contains n digits '3' or '8' and is divisible by 2^n.

The programs for A053377, there is no canonical definition to state claims against.
-/

/-! ## A053377.P6633018500629108525

`∑[10^n*A023412(n+1)]`
-/

namespace A053377.P6633018500629108525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A023412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053377.P6633018500629108525

/-! ## A053377.P5236043165288082693

`∑[dr(5*A023409(n+1))*A011557(n)]`
-/

namespace A053377.P5236043165288082693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (5 * A023409 (n + 1)) : ℤ) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053377.P5236043165288082693

/-! ## A053377.P12649805065111265529

`∩[A241882(n+1), A284963(n+1)]`
-/

namespace A053377.P12649805065111265529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053377.P12649805065111265529

/-!
# A053378: a(n) contains n digits (either '5' or '8') and is divisible by 2^n.

The programs for A053378, there is no canonical definition to state claims against.
-/

/-! ## A053378.P12856557489741349245

`∑[10^n*A023413(n+1)]`
-/

namespace A053378.P12856557489741349245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A023413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053378.P12856557489741349245

/-! ## A053378.P12636884760788309816

`∑[(9-A284532(A284563(2*n)))*A011557(n)]`
-/

namespace A053378.P12636884760788309816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A284532 (A284563 (2 * n)).toNat) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053378.P12636884760788309816

/-! ## A053378.P10715356140567289019

`∩[A241882(n+1), A284381(n+1)]`
-/

namespace A053378.P10715356140567289019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053378.P10715356140567289019

/-!
# A053379: a(n) contains n digits '7' or '8' and is divisible by 2^n.

The programs for A053379, the canonical program `A053379.P10810913634548379691` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053379 has offset 1).

The definition of A053379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053379.P1808713916173374589

`∑[A011557(n)*A023414(n+1)]`
-/

namespace A053379.P1808713916173374589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053379.P1808713916173374589

namespace A053379

/-- `∑[A011557(n)*A023414(n+1)]` -/
def P1808713916173374589.Spec : Prop :=
  ∀ n, P1808713916173374589.a n = A053379 (n + 1)

end A053379

/-! ## A053379.P10810913634548379691

`A011557(n+1)-A053312(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053379

/-- `A011557(n+1)-A053312(n+1)` -/
def P10810913634548379691.Spec : Prop :=
  ∀ n, P10810913634548379691.a n = A053379 (n + 1)

theorem P10810913634548379691.correct : P10810913634548379691.Spec := by
  intro n
  simp only [A053379, Nat.add_sub_cancel]

end A053379

/-! ## A053379.P16205173904327050095

`A178500(n+1)-A053312(n+1)`
-/

namespace A053379.P16205173904327050095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (n + 1) - A053312 (n + 1)

end

end A053379.P16205173904327050095

namespace A053379

/-- `A178500(n+1)-A053312(n+1)` -/
def P16205173904327050095.Spec : Prop :=
  ∀ n, P16205173904327050095.a n = A053379 (n + 1)

end A053379

/-! ## A053379.P4053393823743265023

`∑[A018005(A016777(n))*A023414(n+1)]`
-/

namespace A053379.P4053393823743265023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053379.P4053393823743265023

namespace A053379

/-- `∑[A018005(A016777(n))*A023414(n+1)]` -/
def P4053393823743265023.Spec : Prop :=
  ∀ n, P4053393823743265023.a n = A053379 (n + 1)

end A053379

/-! ## A053379.P10404943740027684552

`Δ[A000042(n+1)]-A053312(n+1)`
-/

namespace A053379.P10404943740027684552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A053312 (n + 1)

end

end A053379.P10404943740027684552

namespace A053379

/-- `Δ[A000042(n+1)]-A053312(n+1)` -/
def P10404943740027684552.Spec : Prop :=
  ∀ n, P10404943740027684552.a n = A053379 (n + 1)

end A053379

/-!
# A053380: a(n) contains n digits '8' or '9' and is divisible by 2^n.

The programs for A053380, there is no canonical definition to state claims against.
-/

/-! ## A053380.P9812877433809240255

`∑[10^n*A023415(n+1)]`
-/

namespace A053380.P9812877433809240255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A023415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053380.P9812877433809240255

/-! ## A053380.P15943648186346184935

`∑[(9-A145679(n+1)^n)*A011557(n)]`
-/

namespace A053380.P15943648186346184935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A145679 (n + 1) ^ n) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053380.P15943648186346184935

/-! ## A053380.P8776936780620990051

`∑[A011557(n)*A061601(A145679(n+1)^n)]`
-/

namespace A053380.P8776936780620990051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A061601 (A145679 (n + 1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053380.P8776936780620990051

/-! ## A053380.P5859979064503149340

`∑[A011557(n)*A020703(A145679(n+1)^n+5)]`
-/

namespace A053380.P5859979064503149340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A020703 (A145679 (n + 1) ^ n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053380.P5859979064503149340

/-! ## A053380.P17349142727310665210

`∑[(A000032(A145679(n+1)^n)+7)*A011557(n)]`
-/

namespace A053380.P17349142727310665210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (A145679 (n + 1) ^ n).toNat + 7) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053380.P17349142727310665210

/-!
# A053381: Maximal number of linearly independent smooth nowhere-zero vector fields on a (2n+1)-sphere.

The programs for A053381, the canonical program `A053381.P7424849021433620728` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053381 has offset 0).

The definition of A053381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053381.P7424849021433620728

`A209675(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A053381

/-- `A209675(n+1)-1` -/
def P7424849021433620728.Spec : Prop :=
  ∀ n, P7424849021433620728.a n = A053381 n

theorem P7424849021433620728.correct : P7424849021433620728.Spec := by
  intro n
  simp only [A053381]

end A053381

/-! ## A053381.P6476683045439044537

`A047530(A085058(n))`
-/

namespace A053381.P6476683045439044537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A085058 n).toNat

end

end A053381.P6476683045439044537

namespace A053381

/-- `A047530(A085058(n))` -/
def P6476683045439044537.Spec : Prop :=
  ∀ n, P6476683045439044537.a n = A053381 n

end A053381

/-! ## A053381.P7456127929449904248

`A047530(A089080(n+2))`
-/

namespace A053381.P7456127929449904248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A089080 (n + 2)).toNat

end

end A053381.P7456127929449904248

namespace A053381

/-- `A047530(A089080(n+2))` -/
def P7456127929449904248.Spec : Prop :=
  ∀ n, P7456127929449904248.a n = A053381 n

end A053381

/-! ## A053381.P8683197700323885424

`A047530(A001511(n+1)+1)`
-/

namespace A053381.P8683197700323885424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A001511 (n + 1) + 1).toNat

end

end A053381.P8683197700323885424

namespace A053381

/-- `A047530(A001511(n+1)+1)` -/
def P8683197700323885424.Spec : Prop :=
  ∀ n, P8683197700323885424.a n = A053381 n

end A053381

/-! ## A053381.P3673817010481060577

`A047530(A007814(n+1)+2)`
-/

namespace A053381.P3673817010481060577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A007814 (n + 1) + 2).toNat

end

end A053381.P3673817010481060577

namespace A053381

/-- `A047530(A007814(n+1)+2)` -/
def P3673817010481060577.Spec : Prop :=
  ∀ n, P3673817010481060577.a n = A053381 n

end A053381

/-! ## A053381.P5855787941691689377

`A047466(A085058(n)+1)-1`
-/

namespace A053381.P5855787941691689377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (A085058 n + 1).toNat - 1

end

end A053381.P5855787941691689377

namespace A053381

/-- `A047466(A085058(n)+1)-1` -/
def P5855787941691689377.Spec : Prop :=
  ∀ n, P5855787941691689377.a n = A053381 n

end A053381

/-! ## A053381.P3929828943306335798

`A003485(A007814(n+1)+1)-1`
-/

namespace A053381.P3929828943306335798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A007814 (n + 1) + 1).toNat - 1

end

end A053381.P3929828943306335798

namespace A053381

/-- `A003485(A007814(n+1)+1)-1` -/
def P3929828943306335798.Spec : Prop :=
  ∀ n, P3929828943306335798.a n = A053381 n

end A053381

/-! ## A053381.P3937829253692725747

`A034584(A047466(A003485(A034584(A003484(n+1)))))`
-/

namespace A053381.P3937829253692725747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A047466 (A003485 (A034584 (A003484 (n + 1)).toNat).toNat).toNat).toNat

end

end A053381.P3937829253692725747

namespace A053381

/-- `A034584(A047466(A003485(A034584(A003484(n+1)))))` -/
def P3937829253692725747.Spec : Prop :=
  ∀ n, P3937829253692725747.a n = A053381 n

end A053381

/-! ## A053381.P2784621425319099894

`A003484(A171977(n+1))-1`
-/

namespace A053381.P2784621425319099894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A171977 (n + 1)).toNat - 1

end

end A053381.P2784621425319099894

namespace A053381

/-- `A003484(A171977(n+1))-1` -/
def P2784621425319099894.Spec : Prop :=
  ∀ n, P2784621425319099894.a n = A053381 n

end A053381

/-! ## A053381.P10802114170367578597

`A003484(A068217(n+1))-1`
-/

namespace A053381.P10802114170367578597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A068217 (n + 1)).toNat - 1

end

end A053381.P10802114170367578597

namespace A053381

/-- `A003484(A068217(n+1))-1` -/
def P10802114170367578597.Spec : Prop :=
  ∀ n, P10802114170367578597.a n = A053381 n

end A053381

/-! ## A053381.P13124750647213209830

`A003484(2*(n+1))-1`
-/

namespace A053381.P13124750647213209830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (2 * (n + 1)) - 1

end

end A053381.P13124750647213209830

namespace A053381

/-- `A003484(2*(n+1))-1` -/
def P13124750647213209830.Spec : Prop :=
  ∀ n, P13124750647213209830.a n = A053381 n

end A053381

/-! ## A053381.P10127294480952998827

`A003485(log2(A006519(2*(n+1))))-1`
-/

namespace A053381.P10127294480952998827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (2 * (n + 1)) : ℝ))).toNat - 1

end

end A053381.P10127294480952998827

namespace A053381

/-- `A003485(log2(A006519(2*(n+1))))-1` -/
def P10127294480952998827.Spec : Prop :=
  ∀ n, P10127294480952998827.a n = A053381 n

end A053381

/-! ## A053381.P4727873185645667963

`A118830(2*n+1)+A003484(2*(n+1))`
-/

namespace A053381.P4727873185645667963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A003484 (2 * (n + 1))

end

end A053381.P4727873185645667963

namespace A053381

/-- `A118830(2*n+1)+A003484(2*(n+1))` -/
def P4727873185645667963.Spec : Prop :=
  ∀ n, P4727873185645667963.a n = A053381 n

end A053381

/-!
# A053382: Triangle T(n,k) giving numerator of coefficient of x^(n-k) in Bernoulli polynomial B(n, x), n >= 0, 0<=k<=n.

The programs for A053382, there is no canonical definition to state claims against.
-/

/-! ## A053382.P17330580562822806999

`A196838(A002378(n)%A080036(n))`
-/

namespace A053382.P17330580562822806999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A053382.P17330580562822806999

/-! ## A053382.P10512698652280642346

`A196838(char[A014132(n+1)]*A061579(n))`
-/

namespace A053382.P10512698652280642346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A053382.P10512698652280642346

/-! ## A053382.P18012900737110904998

`A196838(A061579(n))`
-/

namespace A053382.P18012900737110904998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (A061579 n).toNat

end

end A053382.P18012900737110904998

/-! ## A053382.P11134145681210097019

`A196838(A114327(n)+n)`
-/

namespace A053382.P11134145681210097019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (A114327 n + (n : ℤ)).toNat

end

end A053382.P11134145681210097019

/-! ## A053382.P15601101462581477952

`A196838(∑[A198954(n)-1])`
-/

namespace A053382.P15601101462581477952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053382.P15601101462581477952

/-! ## A053382.P10235290457788366045

`A196838(A038722(n+1)-1)`
-/

namespace A053382.P10235290457788366045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (A038722 (n + 1) - 1).toNat

end

end A053382.P10235290457788366045

/-! ## A053382.P9886940334128963992

`A196838(A057944(n)+A025581(n))`
-/

namespace A053382.P9886940334128963992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (A057944 n + A025581 n).toNat

end

end A053382.P9886940334128963992

/-! ## A053382.P2968542704243330680

`A196838(A005843(∑[n])%A080036(n))`
-/

namespace A053382.P2968542704243330680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (Int.tmod (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)) (A080036 n)).toNat

end

end A053382.P2968542704243330680

/-!
# A053383: Triangle T(n,k) giving denominator of coefficient of x^(n-k) in Bernoulli polynomial B(n, x), n >= 0, 0 <= k <= n.

The programs for A053383, there is no canonical definition to state claims against.
-/

/-! ## A053383.P10814809831576335661

`A196839((n²+n)%A080036(n))`
-/

namespace A053383.P10814809831576335661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n)).toNat

end

end A053383.P10814809831576335661

/-! ## A053383.P4011951873675351222

`A196839(char[A014132(n+1)]*A061579(n))`
-/

namespace A053383.P4011951873675351222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A053383.P4011951873675351222

/-! ## A053383.P5312729126965169467

`A196839(A061579(n))`
-/

namespace A053383.P5312729126965169467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (A061579 n).toNat

end

end A053383.P5312729126965169467

/-! ## A053383.P352447840778924857

`A196839(A114327(n)+n)`
-/

namespace A053383.P352447840778924857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (A114327 n + (n : ℤ)).toNat

end

end A053383.P352447840778924857

/-! ## A053383.P5630227001865891247

`A196839(A038722(n+1)-1)`
-/

namespace A053383.P5630227001865891247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (A038722 (n + 1) - 1).toNat

end

end A053383.P5630227001865891247

/-! ## A053383.P16898428088642192729

`A196839(abs(A024000(A038722(n+1))))`
-/

namespace A053383.P16898428088642192729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 |A024000 (A038722 (n + 1)).toNat|.toNat

end

end A053383.P16898428088642192729

/-!
# A053384: a(n) = A053398(4,n).

The programs for A053384, the canonical program `A053384.P11208946787078782555` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053384 has offset 1).

The definition of A053384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053384.P11208946787078782555

`val(or(3, n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053384

/-- `val(or(3, n)+1, 2)` -/
def P11208946787078782555.Spec : Prop :=
  ∀ n, (P11208946787078782555.a n : ℤ) = A053384 (n + 1)

theorem P11208946787078782555.correct : P11208946787078782555.Spec := by
  intro n
  simp only [A053384, Nat.add_sub_cancel]

end A053384

/-! ## A053384.P14201980541708749204

`val(and(n+4, -4), 2)`
-/

namespace A053384.P14201980541708749204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n + 4 : ℤ) (-4)).toNat 2

end

end A053384.P14201980541708749204

namespace A053384

/-- `val(and(n+4, -4), 2)` -/
def P14201980541708749204.Spec : Prop :=
  ∀ n, (P14201980541708749204.a n : ℤ) = A053384 (n + 1)

end A053384

/-! ## A053384.P8417900605308606800

`val(n-or(n, -4), 2)`
-/

namespace A053384.P8417900605308606800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n : ℤ) - Int.lor (n : ℤ) (-4)).toNat 2

end

end A053384.P8417900605308606800

namespace A053384

/-- `val(n-or(n, -4), 2)` -/
def P8417900605308606800.Spec : Prop :=
  ∀ n, (P8417900605308606800.a n : ℤ) = A053384 (n + 1)

end A053384

/-! ## A053384.P16517458466807674314

`val(ceil((n+1)/4), 2)+2`
-/

namespace A053384.P16517458466807674314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌈(n + 1 : ℚ) / 4⌉.toNat 2 + 2

end

end A053384.P16517458466807674314

namespace A053384

/-- `val(ceil((n+1)/4), 2)+2` -/
def P16517458466807674314.Spec : Prop :=
  ∀ n, (P16517458466807674314.a n : ℤ) = A053384 (n + 1)

end A053384

/-! ## A053384.P12952636104954993423

`val(4*round((n+2)/4), 2)`
-/

namespace A053384.P12952636104954993423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 * SequenceMachineLib.roundAway ((n + 2 : ℚ) / 4)).toNat 2

end

end A053384.P12952636104954993423

namespace A053384

/-- `val(4*round((n+2)/4), 2)` -/
def P12952636104954993423.Spec : Prop :=
  ∀ n, (P12952636104954993423.a n : ℤ) = A053384 (n + 1)

end A053384

/-! ## A053384.P4905186133604206327

`∑{e}[and(n+4, -(n+1)), #]`
-/

namespace A053384.P4905186133604206327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 4 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A053384.P4905186133604206327

namespace A053384

/-- `∑{e}[and(n+4, -(n+1)), #]` -/
def P4905186133604206327.Spec : Prop :=
  ∀ n, (P4905186133604206327.a n : ℤ) = A053384 (n + 1)

end A053384

/-! ## A053384.P3109256559209215946

`∏{e}[and(n+4, -(n+1)), #]`
-/

namespace A053384.P3109256559209215946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 4 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A053384.P3109256559209215946

namespace A053384

/-- `∏{e}[and(n+4, -(n+1)), #]` -/
def P3109256559209215946.Spec : Prop :=
  ∀ n, (P3109256559209215946.a n : ℤ) = A053384 (n + 1)

end A053384

/-! ## A053384.P13925478229064606254

`A050603(or(2, n))`
-/

namespace A053384.P13925478229064606254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (Nat.lor 2 n)

end

end A053384.P13925478229064606254

namespace A053384

/-- `A050603(or(2, n))` -/
def P13925478229064606254.Spec : Prop :=
  ∀ n, P13925478229064606254.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P1729084176307613740

`A050604(or(2, n))`
-/

namespace A053384.P1729084176307613740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050604 (Nat.lor 2 n)

end

end A053384.P1729084176307613740

namespace A053384

/-- `A050604(or(2, n))` -/
def P1729084176307613740.Spec : Prop :=
  ∀ n, P1729084176307613740.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P7914234353945672399

`A089309(or(3, n))`
-/

namespace A053384.P7914234353945672399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Nat.lor 3 n)

end

end A053384.P7914234353945672399

namespace A053384

/-- `A089309(or(3, n))` -/
def P7914234353945672399.Spec : Prop :=
  ∀ n, P7914234353945672399.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P7672568628253037193

`A136480(or(3, n))`
-/

namespace A053384.P7672568628253037193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (Nat.lor 3 n)

end

end A053384.P7672568628253037193

namespace A053384

/-- `A136480(or(3, n))` -/
def P7672568628253037193.Spec : Prop :=
  ∀ n, P7672568628253037193.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P13270327317052559909

`A228371(or(3, n))`
-/

namespace A053384.P13270327317052559909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (Nat.lor 3 n)

end

end A053384.P13270327317052559909

namespace A053384

/-- `A228371(or(3, n))` -/
def P13270327317052559909.Spec : Prop :=
  ∀ n, P13270327317052559909.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P5422153220630745092

`A324468(or(3, n))`
-/

namespace A053384.P5422153220630745092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (Nat.lor 3 n)

end

end A053384.P5422153220630745092

namespace A053384

/-- `A324468(or(3, n))` -/
def P5422153220630745092.Spec : Prop :=
  ∀ n, P5422153220630745092.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P17806488103252111366

`A053399(or(1, n)+1)`
-/

namespace A053384.P17806488103252111366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053399 (Nat.lor 1 n + 1)

end

end A053384.P17806488103252111366

namespace A053384

/-- `A053399(or(1, n)+1)` -/
def P17806488103252111366.Spec : Prop :=
  ∀ n, P17806488103252111366.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P4013077959991700032

`A275019(or(1, n)+1)`
-/

namespace A053384.P4013077959991700032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275019 (Nat.lor 1 n + 1)

end

end A053384.P4013077959991700032

namespace A053384

/-- `A275019(or(1, n)+1)` -/
def P4013077959991700032.Spec : Prop :=
  ∀ n, P4013077959991700032.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P10570549340193981398

`A050605(or(2, n))+1`
-/

namespace A053384.P10570549340193981398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (Nat.lor 2 n) + 1

end

end A053384.P10570549340193981398

namespace A053384

/-- `A050605(or(2, n))+1` -/
def P10570549340193981398.Spec : Prop :=
  ∀ n, P10570549340193981398.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P6298928740176270291

`A050606(or(2, n))+1`
-/

namespace A053384.P6298928740176270291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 (Nat.lor 2 n) + 1

end

end A053384.P6298928740176270291

namespace A053384

/-- `A050606(or(2, n))+1` -/
def P6298928740176270291.Spec : Prop :=
  ∀ n, P6298928740176270291.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P13436883868499843051

`A007814(or(3, n)+1)`
-/

namespace A053384.P13436883868499843051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.lor 3 n + 1)

end

end A053384.P13436883868499843051

namespace A053384

/-- `A007814(or(3, n)+1)` -/
def P13436883868499843051.Spec : Prop :=
  ∀ n, P13436883868499843051.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P17669551174158745608

`A001222(or(n, n+4)-n)`
-/

namespace A053384.P17669551174158745608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor n (n + 4) - n)

end

end A053384.P17669551174158745608

namespace A053384

/-- `A001222(or(n, n+4)-n)` -/
def P17669551174158745608.Spec : Prop :=
  ∀ n, P17669551174158745608.a n = A053384 (n + 1)

end A053384

/-! ## A053384.P8683216881226110472

`A001222(and(n+4, -(n+1)))`
-/

namespace A053384.P8683216881226110472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 4 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A053384.P8683216881226110472

namespace A053384

/-- `A001222(and(n+4, -(n+1)))` -/
def P8683216881226110472.Spec : Prop :=
  ∀ n, P8683216881226110472.a n = A053384 (n + 1)

end A053384

/-!
# A053385: A053398(5, n).

The programs for A053385, the canonical program `A053385.P15581570953858865456` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053385 has offset 1).

The definition of A053385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053385.P15581570953858865456

`val(or(4, n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053385

/-- `val(or(4, n)+1, 2)` -/
def P15581570953858865456.Spec : Prop :=
  ∀ n, (P15581570953858865456.a n : ℤ) = A053385 (n + 1)

theorem P15581570953858865456.correct : P15581570953858865456.Spec := by
  intro n
  simp only [A053385, Nat.add_sub_cancel]

end A053385

/-! ## A053385.P16644760687397072305

`val(and(n+5, -5), 2)`
-/

namespace A053385.P16644760687397072305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n + 5 : ℤ) (-5)).toNat 2

end

end A053385.P16644760687397072305

namespace A053385

/-- `val(and(n+5, -5), 2)` -/
def P16644760687397072305.Spec : Prop :=
  ∀ n, (P16644760687397072305.a n : ℤ) = A053385 (n + 1)

end A053385

/-! ## A053385.P13844029585263348766

`val(5-or(4, -n), 2)`
-/

namespace A053385.P13844029585263348766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (5 - Int.lor 4 (-(n : ℤ))).toNat 2

end

end A053385.P13844029585263348766

namespace A053385

/-- `val(5-or(4, -n), 2)` -/
def P13844029585263348766.Spec : Prop :=
  ∀ n, (P13844029585263348766.a n : ℤ) = A053385 (n + 1)

end A053385

/-! ## A053385.P12938631818140665596

`val(lcm(n+1, n+5), 2)`
-/

namespace A053385.P12938631818140665596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lcm (n + 1) (n + 5)) 2

end

end A053385.P12938631818140665596

namespace A053385

/-- `val(lcm(n+1, n+5), 2)` -/
def P12938631818140665596.Spec : Prop :=
  ∀ n, (P12938631818140665596.a n : ℤ) = A053385 (n + 1)

end A053385

/-! ## A053385.P17029000460205822914

`val(and(4, n+1)+n+1, 2)`
-/

namespace A053385.P17029000460205822914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.land 4 (n + 1) + (n + 1)) 2

end

end A053385.P17029000460205822914

namespace A053385

/-- `val(and(4, n+1)+n+1, 2)` -/
def P17029000460205822914.Spec : Prop :=
  ∀ n, (P17029000460205822914.a n : ℤ) = A053385 (n + 1)

end A053385

/-! ## A053385.P15240784468632793803

`val(A244586(n)+1, 2)`
-/

namespace A053385.P15240784468632793803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A244586 n + 1).toNat 2

end

end A053385.P15240784468632793803

namespace A053385

/-- `val(A244586(n)+1, 2)` -/
def P15240784468632793803.Spec : Prop :=
  ∀ n, (P15240784468632793803.a n : ℤ) = A053385 (n + 1)

end A053385

/-! ## A053385.P1254585009667400947

`A007814(or(4, n)+1)`
-/

namespace A053385.P1254585009667400947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.lor 4 n + 1)

end

end A053385.P1254585009667400947

namespace A053385

/-- `A007814(or(4, n)+1)` -/
def P1254585009667400947.Spec : Prop :=
  ∀ n, P1254585009667400947.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P9530852938065354169

`and(1, n)*A053386(n+1)`
-/

namespace A053385.P9530852938065354169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A053386 (n + 1)

end

end A053385.P9530852938065354169

namespace A053385

/-- `and(1, n)*A053386(n+1)` -/
def P9530852938065354169.Spec : Prop :=
  ∀ n, P9530852938065354169.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P13610341637796630625

`A000035(n)*A053386(n+1)`
-/

namespace A053385.P13610341637796630625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A053386 (n + 1)

end

end A053385.P13610341637796630625

namespace A053385

/-- `A000035(n)*A053386(n+1)` -/
def P13610341637796630625.Spec : Prop :=
  ∀ n, P13610341637796630625.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P11740275811412098411

`lcm(A053386(n+1), A091337(n))`
-/

namespace A053385.P11740275811412098411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053386 (n + 1)) (A091337 n)

end

end A053385.P11740275811412098411

namespace A053385

/-- `lcm(A053386(n+1), A091337(n))` -/
def P11740275811412098411.Spec : Prop :=
  ∀ n, (P11740275811412098411.a n : ℤ) = A053385 (n + 1)

end A053385

/-! ## A053385.P15411694565767482926

`and(A053386(n+1), A097262(n))`
-/

namespace A053385.P15411694565767482926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053386 (n + 1)) (A097262 n)

end

end A053385.P15411694565767482926

namespace A053385

/-- `and(A053386(n+1), A097262(n))` -/
def P15411694565767482926.Spec : Prop :=
  ∀ n, P15411694565767482926.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P3111201983968405225

`and(A053386(n+1), A101455(n))`
-/

namespace A053385.P3111201983968405225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053386 (n + 1)) (A101455 n)

end

end A053385.P3111201983968405225

namespace A053385

/-- `and(A053386(n+1), A101455(n))` -/
def P3111201983968405225.Spec : Prop :=
  ∀ n, P3111201983968405225.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P7325033187618299594

`and(A053386(n+1), A168364(n))`
-/

namespace A053385.P7325033187618299594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053386 (n + 1)) (A168364 n)

end

end A053385.P7325033187618299594

namespace A053385

/-- `and(A053386(n+1), A168364(n))` -/
def P7325033187618299594.Spec : Prop :=
  ∀ n, P7325033187618299594.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P3336744638267868504

`and(A053386(n+1), A170784(n))`
-/

namespace A053385.P3336744638267868504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053386 (n + 1)) (A170784 n)

end

end A053385.P3336744638267868504

namespace A053385

/-- `and(A053386(n+1), A170784(n))` -/
def P3336744638267868504.Spec : Prop :=
  ∀ n, P3336744638267868504.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P11521387531682461725

`and(A053386(n+1), A123865(n+1))`
-/

namespace A053385.P11521387531682461725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053386 (n + 1)) (A123865 (n + 1))

end

end A053385.P11521387531682461725

namespace A053385

/-- `and(A053386(n+1), A123865(n+1))` -/
def P11521387531682461725.Spec : Prop :=
  ∀ n, P11521387531682461725.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P3069968093890481720

`A053386(n+1)%A053387(n+1)!`
-/

namespace A053385.P3069968093890481720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053386 (n + 1)) (Nat.factorial (A053387 (n + 1)).toNat : ℤ)

end

end A053385.P3069968093890481720

namespace A053385

/-- `A053386(n+1)%A053387(n+1)!` -/
def P3069968093890481720.Spec : Prop :=
  ∀ n, P3069968093890481720.a n = A053385 (n + 1)

end A053385

/-! ## A053385.P5700745308661155335

`A007814(n+1)*A053386(n+1)/A050603(n)`
-/

namespace A053385.P5700745308661155335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) * A053386 (n + 1) : ℚ) / (A050603 n : ℚ)

end

end A053385.P5700745308661155335

namespace A053385

/-- `A007814(n+1)*A053386(n+1)/A050603(n)` -/
def P5700745308661155335.Spec : Prop :=
  ∀ n, P5700745308661155335.a n = (A053385 (n + 1) : ℚ)

end A053385

/-! ## A053385.P1723309004472091522

`A053386(n+1)/A053384(n+1)*A053399(n+1)`
-/

namespace A053385.P1723309004472091522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053386 (n + 1) : ℚ) / (A053384 (n + 1) : ℚ) * (A053399 (n + 1) : ℚ)

end

end A053385.P1723309004472091522

namespace A053385

/-- `A053386(n+1)/A053384(n+1)*A053399(n+1)` -/
def P1723309004472091522.Spec : Prop :=
  ∀ n, P1723309004472091522.a n = (A053385 (n + 1) : ℚ)

end A053385

/-! ## A053385.P15953843646556155010

`A053387(n+1)/A053386(n+2)`
-/

namespace A053385.P15953843646556155010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053387 (n + 1) : ℚ) / (A053386 (n + 2) : ℚ)

end

end A053385.P15953843646556155010

namespace A053385

/-- `A053387(n+1)/A053386(n+2)` -/
def P15953843646556155010.Spec : Prop :=
  ∀ n, P15953843646556155010.a n = (A053385 (n + 1) : ℚ)

end A053385

/-! ## A053385.P1455902477634345248

`C(A053386(n+1), A053387(n+2)!)`
-/

namespace A053385.P1455902477634345248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053386 (n + 1)).toNat (Nat.factorial (A053387 (n + 2)).toNat)

end

end A053385.P1455902477634345248

namespace A053385

/-- `C(A053386(n+1), A053387(n+2)!)` -/
def P1455902477634345248.Spec : Prop :=
  ∀ n, (P1455902477634345248.a n : ℤ) = A053385 (n + 1)

end A053385

/-!
# A053386: A053398(6, n).

The programs for A053386, the canonical program `A053386.P11001422989390475897` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053386 has offset 1).

The definition of A053386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053386.P11001422989390475897

`val(or(5, n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053386

/-- `val(or(5, n)+1, 2)` -/
def P11001422989390475897.Spec : Prop :=
  ∀ n, (P11001422989390475897.a n : ℤ) = A053386 (n + 1)

theorem P11001422989390475897.correct : P11001422989390475897.Spec := by
  intro n
  simp only [A053386, Nat.add_sub_cancel]

end A053386

/-! ## A053386.P1741308302575450319

`val(and(5, n+3)+n+1, 2)`
-/

namespace A053386.P1741308302575450319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.land 5 (n + 3) + (n + 1)) 2

end

end A053386.P1741308302575450319

namespace A053386

/-- `val(and(5, n+3)+n+1, 2)` -/
def P1741308302575450319.Spec : Prop :=
  ∀ n, (P1741308302575450319.a n : ℤ) = A053386 (n + 1)

end A053386

/-! ## A053386.P18036663277693943749

`A050603(or(4, n))`
-/

namespace A053386.P18036663277693943749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (Nat.lor 4 n)

end

end A053386.P18036663277693943749

namespace A053386

/-- `A050603(or(4, n))` -/
def P18036663277693943749.Spec : Prop :=
  ∀ n, P18036663277693943749.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P4372168374911160606

`A089309(or(5, n))`
-/

namespace A053386.P4372168374911160606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Nat.lor 5 n)

end

end A053386.P4372168374911160606

namespace A053386

/-- `A089309(or(5, n))` -/
def P4372168374911160606.Spec : Prop :=
  ∀ n, P4372168374911160606.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P13006560244303282671

`A136480(or(5, n))`
-/

namespace A053386.P13006560244303282671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (Nat.lor 5 n)

end

end A053386.P13006560244303282671

namespace A053386

/-- `A136480(or(5, n))` -/
def P13006560244303282671.Spec : Prop :=
  ∀ n, P13006560244303282671.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P13327467925738051031

`A228371(or(5, n))`
-/

namespace A053386.P13327467925738051031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (Nat.lor 5 n)

end

end A053386.P13327467925738051031

namespace A053386

/-- `A228371(or(5, n))` -/
def P13327467925738051031.Spec : Prop :=
  ∀ n, P13327467925738051031.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P3449077135824399251

`A324468(or(5, n))`
-/

namespace A053386.P3449077135824399251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (Nat.lor 5 n)

end

end A053386.P3449077135824399251

namespace A053386

/-- `A324468(or(5, n))` -/
def P3449077135824399251.Spec : Prop :=
  ∀ n, P3449077135824399251.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P17196266045080221677

`A053385(or(1, n)+1)`
-/

namespace A053386.P17196266045080221677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (Nat.lor 1 n + 1)

end

end A053386.P17196266045080221677

namespace A053386

/-- `A053385(or(1, n)+1)` -/
def P17196266045080221677.Spec : Prop :=
  ∀ n, P17196266045080221677.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P17568597429153692649

`A007814(or(5, n)+1)`
-/

namespace A053386.P17568597429153692649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.lor 5 n + 1)

end

end A053386.P17568597429153692649

namespace A053386

/-- `A007814(or(5, n)+1)` -/
def P17568597429153692649.Spec : Prop :=
  ∀ n, P17568597429153692649.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P9456533483292841367

`A053385(gcd(2, n)+n)`
-/

namespace A053386.P9456533483292841367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (Nat.gcd 2 n + n)

end

end A053386.P9456533483292841367

namespace A053386

/-- `A053385(gcd(2, n)+n)` -/
def P9456533483292841367.Spec : Prop :=
  ∀ n, P9456533483292841367.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P2363344925922054530

`A050603(A244586(n))`
-/

namespace A053386.P2363344925922054530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A244586 n).toNat

end

end A053386.P2363344925922054530

namespace A053386

/-- `A050603(A244586(n))` -/
def P2363344925922054530.Spec : Prop :=
  ∀ n, P2363344925922054530.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P5090407986359574809

`A050603(A244587(n))`
-/

namespace A053386.P5090407986359574809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A244587 n).toNat

end

end A053386.P5090407986359574809

namespace A053386

/-- `A050603(A244587(n))` -/
def P5090407986359574809.Spec : Prop :=
  ∀ n, P5090407986359574809.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P7213396484302913329

`A007814(A244587(n)+1)`
-/

namespace A053386.P7213396484302913329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A244587 n + 1).toNat

end

end A053386.P7213396484302913329

namespace A053386

/-- `A007814(A244587(n)+1)` -/
def P7213396484302913329.Spec : Prop :=
  ∀ n, P7213396484302913329.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P8457452500857490328

`gcd(A053388(n+1), A128130(n))`
-/

namespace A053386.P8457452500857490328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053388 (n + 1)) (A128130 n)

end

end A053386.P8457452500857490328

namespace A053386

/-- `gcd(A053388(n+1), A128130(n))` -/
def P8457452500857490328.Spec : Prop :=
  ∀ n, (P8457452500857490328.a n : ℤ) = A053386 (n + 1)

end A053386

/-! ## A053386.P10420574083119861204

`abs(Δ[A053385(n+1)])`
-/

namespace A053386.P10420574083119861204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053386.P10420574083119861204

namespace A053386

/-- `abs(Δ[A053385(n+1)])` -/
def P10420574083119861204.Spec : Prop :=
  ∀ n, P10420574083119861204.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P17582605044373813373

`A053385(A131055(n+2))`
-/

namespace A053386.P17582605044373813373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (A131055 (n + 2)).toNat

end

end A053386.P17582605044373813373

namespace A053386

/-- `A053385(A131055(n+2))` -/
def P17582605044373813373.Spec : Prop :=
  ∀ n, P17582605044373813373.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P17533283052502290203

`A053385(n+1)+A053385(n+2)`
-/

namespace A053386.P17533283052502290203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (n + 1) + A053385 (n + 2)

end

end A053386.P17533283052502290203

namespace A053386

/-- `A053385(n+1)+A053385(n+2)` -/
def P17533283052502290203.Spec : Prop :=
  ∀ n, P17533283052502290203.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P11107616997583775197

`A050605(n)*A050606(n+4)+1`
-/

namespace A053386.P11107616997583775197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n * A050606 (n + 4) + 1

end

end A053386.P11107616997583775197

namespace A053386

/-- `A050605(n)*A050606(n+4)+1` -/
def P11107616997583775197.Spec : Prop :=
  ∀ n, P11107616997583775197.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P10791793733156651294

`A053384(2*A244587(n))-1`
-/

namespace A053386.P10791793733156651294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053384 (2 * A244587 n).toNat - 1

end

end A053386.P10791793733156651294

namespace A053386

/-- `A053384(2*A244587(n))-1` -/
def P10791793733156651294.Spec : Prop :=
  ∀ n, P10791793733156651294.a n = A053386 (n + 1)

end A053386

/-! ## A053386.P565592395368911714

`abs(Δ[A053390(Δ[n²])])`
-/

namespace A053386.P565592395368911714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053390 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053386.P565592395368911714

namespace A053386

/-- `abs(Δ[A053390(Δ[n²])])` -/
def P565592395368911714.Spec : Prop :=
  ∀ n, P565592395368911714.a n = A053386 (n + 1)

end A053386

/-!
# A053387: A053398(7, n).

The programs for A053387, the canonical program `A053387.P9377817174585322384` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053387 has offset 1).

The definition of A053387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053387.P9377817174585322384

`val(or(6, n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053387

/-- `val(or(6, n)+1, 2)` -/
def P9377817174585322384.Spec : Prop :=
  ∀ n, (P9377817174585322384.a n : ℤ) = A053387 (n + 1)

theorem P9377817174585322384.correct : P9377817174585322384.Spec := by
  intro n
  simp only [A053387, Nat.add_sub_cancel]

end A053387

/-! ## A053387.P15728040808344262882

`val(and(n+7, -(n+1)), 2)`
-/

namespace A053387.P15728040808344262882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n + 7 : ℤ) (-(n + 1 : ℤ))).toNat 2

end

end A053387.P15728040808344262882

namespace A053387

/-- `val(and(n+7, -(n+1)), 2)` -/
def P15728040808344262882.Spec : Prop :=
  ∀ n, (P15728040808344262882.a n : ℤ) = A053387 (n + 1)

end A053387

/-! ## A053387.P4964852240536136708

`val(and(6, 2*n+3+n)+n+1, 2)`
-/

namespace A053387.P4964852240536136708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.land 6 (2 * n + 3 + n) + n + 1) 2

end

end A053387.P4964852240536136708

namespace A053387

/-- `val(and(6, 2*n+3+n)+n+1, 2)` -/
def P4964852240536136708.Spec : Prop :=
  ∀ n, (P4964852240536136708.a n : ℤ) = A053387 (n + 1)

end A053387

/-! ## A053387.P3507792018531651852

`A053385(or(2, n)+1)`
-/

namespace A053387.P3507792018531651852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (Nat.lor 2 n + 1)

end

end A053387.P3507792018531651852

namespace A053387

/-- `A053385(or(2, n)+1)` -/
def P3507792018531651852.Spec : Prop :=
  ∀ n, P3507792018531651852.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P1444198264410663324

`A053399(or(4, n)+1)`
-/

namespace A053387.P1444198264410663324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053399 (Nat.lor 4 n + 1)

end

end A053387.P1444198264410663324

namespace A053387

/-- `A053399(or(4, n)+1)` -/
def P1444198264410663324.Spec : Prop :=
  ∀ n, P1444198264410663324.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P16539844868730557629

`A007814(or(6, n)+1)`
-/

namespace A053387.P16539844868730557629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.lor 6 n + 1)

end

end A053387.P16539844868730557629

namespace A053387

/-- `A007814(or(6, n)+1)` -/
def P16539844868730557629.Spec : Prop :=
  ∀ n, P16539844868730557629.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P12244500429852285926

`and(1, n)*A053388(n+1)`
-/

namespace A053387.P12244500429852285926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A053388 (n + 1)

end

end A053387.P12244500429852285926

namespace A053387

/-- `and(1, n)*A053388(n+1)` -/
def P12244500429852285926.Spec : Prop :=
  ∀ n, P12244500429852285926.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P4358830600993228089

`A001222(and(n%2*or(6, n)+1, -(n+1)))`
-/

namespace A053387.P4358830600993228089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land ((n % 2 * Nat.lor 6 n + 1 : ℕ) : ℤ) (-(n + 1 : ℤ))).toNat

end

end A053387.P4358830600993228089

namespace A053387

/-- `A001222(and(n%2*or(6, n)+1, -(n+1)))` -/
def P4358830600993228089.Spec : Prop :=
  ∀ n, P4358830600993228089.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P1306837797205786972

`A000035(n)*A053388(n+1)`
-/

namespace A053387.P1306837797205786972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A053388 (n + 1)

end

end A053387.P1306837797205786972

namespace A053387

/-- `A000035(n)*A053388(n+1)` -/
def P1306837797205786972.Spec : Prop :=
  ∀ n, P1306837797205786972.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P5736304627896311607

`lcm(A053388(n+1), A091337(n))`
-/

namespace A053387.P5736304627896311607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053388 (n + 1)) (A091337 n)

end

end A053387.P5736304627896311607

namespace A053387

/-- `lcm(A053388(n+1), A091337(n))` -/
def P5736304627896311607.Spec : Prop :=
  ∀ n, (P5736304627896311607.a n : ℤ) = A053387 (n + 1)

end A053387

/-! ## A053387.P15044607186421325448

`and(A053388(n+1), A097262(n))`
-/

namespace A053387.P15044607186421325448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053388 (n + 1)) (A097262 n)

end

end A053387.P15044607186421325448

namespace A053387

/-- `and(A053388(n+1), A097262(n))` -/
def P15044607186421325448.Spec : Prop :=
  ∀ n, P15044607186421325448.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P17672229025710770263

`and(A053388(n+1), A123865(n+1))`
-/

namespace A053387.P17672229025710770263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053388 (n + 1)) (A123865 (n + 1))

end

end A053387.P17672229025710770263

namespace A053387

/-- `and(A053388(n+1), A123865(n+1))` -/
def P17672229025710770263.Spec : Prop :=
  ∀ n, P17672229025710770263.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P15929593058665012921

`and(A053388(n+1), A258809(n+1))`
-/

namespace A053387.P15929593058665012921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053388 (n + 1)) (A258809 (n + 1))

end

end A053387.P15929593058665012921

namespace A053387

/-- `and(A053388(n+1), A258809(n+1))` -/
def P15929593058665012921.Spec : Prop :=
  ∀ n, P15929593058665012921.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P11034266715688212687

`A053388(n+1)/A053384(n+1)*A053399(n+1)`
-/

namespace A053387.P11034266715688212687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053388 (n + 1) : ℚ) / (A053384 (n + 1) : ℚ) * (A053399 (n + 1) : ℚ)

end

end A053387.P11034266715688212687

namespace A053387

/-- `A053388(n+1)/A053384(n+1)*A053399(n+1)` -/
def P11034266715688212687.Spec : Prop :=
  ∀ n, P11034266715688212687.a n = (A053387 (n + 1) : ℚ)

end A053387

/-! ## A053387.P5323199419519517024

`A053388(n+1)*A053389(n+1)/A053390(n+1)`
-/

namespace A053387.P5323199419519517024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053388 (n + 1) * A053389 (n + 1) : ℚ) / (A053390 (n + 1) : ℚ)

end

end A053387.P5323199419519517024

namespace A053387

/-- `A053388(n+1)*A053389(n+1)/A053390(n+1)` -/
def P5323199419519517024.Spec : Prop :=
  ∀ n, P5323199419519517024.a n = (A053387 (n + 1) : ℚ)

end A053387

/-! ## A053387.P4195351850298736297

`A053385(n+1)*A053386(n+2)`
-/

namespace A053387.P4195351850298736297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (n + 1) * A053386 (n + 2)

end

end A053387.P4195351850298736297

namespace A053387

/-- `A053385(n+1)*A053386(n+2)` -/
def P4195351850298736297.Spec : Prop :=
  ∀ n, P4195351850298736297.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P8610915653588441041

`A053385(n+1)*A053385(A131055(n+1)+2)`
-/

namespace A053387.P8610915653588441041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (n + 1) * A053385 (A131055 (n + 1) + 2).toNat

end

end A053387.P8610915653588441041

namespace A053387

/-- `A053385(n+1)*A053385(A131055(n+1)+2)` -/
def P8610915653588441041.Spec : Prop :=
  ∀ n, P8610915653588441041.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P4750171827949985294

`A053385(n+1)*A053385(n+3)`
-/

namespace A053387.P4750171827949985294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053385 (n + 1) * A053385 (n + 3)

end

end A053387.P4750171827949985294

namespace A053387

/-- `A053385(n+1)*A053385(n+3)` -/
def P4750171827949985294.Spec : Prop :=
  ∀ n, P4750171827949985294.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P17241200129017053355

`and(A047521(A047521(n+1)+1), A053388(n+1))`
-/

namespace A053387.P17241200129017053355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047521 (A047521 (n + 1) + 1).toNat) (A053388 (n + 1))

end

end A053387.P17241200129017053355

namespace A053387

/-- `and(A047521(A047521(n+1)+1), A053388(n+1))` -/
def P17241200129017053355.Spec : Prop :=
  ∀ n, P17241200129017053355.a n = A053387 (n + 1)

end A053387

/-! ## A053387.P9708452687855982259

`A053388(n+1)%A174501(n+1)`
-/

namespace A053387.P9708452687855982259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053388 (n + 1)) (A174501 (n + 1))

end

end A053387.P9708452687855982259

namespace A053387

/-- `A053388(n+1)%A174501(n+1)` -/
def P9708452687855982259.Spec : Prop :=
  ∀ n, P9708452687855982259.a n = A053387 (n + 1)

end A053387

/-!
# A053388: a(n) = A053398(8, n).

The programs for A053388, the canonical program `A053388.P9980245438550973825` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053388 has offset 1).

The definition of A053388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053388.P9980245438550973825

`val(or(7, n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053388

/-- `val(or(7, n)+1, 2)` -/
def P9980245438550973825.Spec : Prop :=
  ∀ n, (P9980245438550973825.a n : ℤ) = A053388 (n + 1)

theorem P9980245438550973825.correct : P9980245438550973825.Spec := by
  intro n
  simp only [A053388, Nat.add_sub_cancel]

end A053388

/-! ## A053388.P13946774841234501761

`A053386(or(3, n))`
-/

namespace A053388.P13946774841234501761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053386 (Nat.lor 3 n)

end

end A053388.P13946774841234501761

namespace A053388

/-- `A053386(or(3, n))` -/
def P13946774841234501761.Spec : Prop :=
  ∀ n, P13946774841234501761.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P16392497202631931088

`A053384(or(5, n))`
-/

namespace A053388.P16392497202631931088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053384 (Nat.lor 5 n)

end

end A053388.P16392497202631931088

namespace A053388

/-- `A053384(or(5, n))` -/
def P16392497202631931088.Spec : Prop :=
  ∀ n, P16392497202631931088.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P15085351765815962066

`A050603(or(6, n))`
-/

namespace A053388.P15085351765815962066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (Nat.lor 6 n)

end

end A053388.P15085351765815962066

namespace A053388

/-- `A050603(or(6, n))` -/
def P15085351765815962066.Spec : Prop :=
  ∀ n, P15085351765815962066.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P13302435805937314069

`A050604(or(6, n))`
-/

namespace A053388.P13302435805937314069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050604 (Nat.lor 6 n)

end

end A053388.P13302435805937314069

namespace A053388

/-- `A050604(or(6, n))` -/
def P13302435805937314069.Spec : Prop :=
  ∀ n, P13302435805937314069.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P896486573695984543

`A089309(or(7, n))`
-/

namespace A053388.P896486573695984543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Nat.lor 7 n)

end

end A053388.P896486573695984543

namespace A053388

/-- `A089309(or(7, n))` -/
def P896486573695984543.Spec : Prop :=
  ∀ n, P896486573695984543.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P12392103688943741515

`A136480(or(7, n))`
-/

namespace A053388.P12392103688943741515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (Nat.lor 7 n)

end

end A053388.P12392103688943741515

namespace A053388

/-- `A136480(or(7, n))` -/
def P12392103688943741515.Spec : Prop :=
  ∀ n, P12392103688943741515.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P1460996689222222523

`A228371(or(7, n))`
-/

namespace A053388.P1460996689222222523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (Nat.lor 7 n)

end

end A053388.P1460996689222222523

namespace A053388

/-- `A228371(or(7, n))` -/
def P1460996689222222523.Spec : Prop :=
  ∀ n, P1460996689222222523.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P12608402988751982251

`A324468(or(7, n))`
-/

namespace A053388.P12608402988751982251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (Nat.lor 7 n)

end

end A053388.P12608402988751982251

namespace A053388

/-- `A324468(or(7, n))` -/
def P12608402988751982251.Spec : Prop :=
  ∀ n, P12608402988751982251.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P3298009398030422250

`A053387(or(1, n)+1)`
-/

namespace A053388.P3298009398030422250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (Nat.lor 1 n + 1)

end

end A053388.P3298009398030422250

namespace A053388

/-- `A053387(or(1, n)+1)` -/
def P3298009398030422250.Spec : Prop :=
  ∀ n, P3298009398030422250.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P17362134132655007519

`A053387(gcd(2, n)+n)`
-/

namespace A053388.P17362134132655007519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (Nat.gcd 2 n + n)

end

end A053388.P17362134132655007519

namespace A053388

/-- `A053387(gcd(2, n)+n)` -/
def P17362134132655007519.Spec : Prop :=
  ∀ n, P17362134132655007519.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P1053012008922172228

`A001222(and(n+8, -(n+1)))`
-/

namespace A053388.P1053012008922172228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 8 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A053388.P1053012008922172228

namespace A053388

/-- `A001222(and(n+8, -(n+1)))` -/
def P1053012008922172228.Spec : Prop :=
  ∀ n, P1053012008922172228.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P6477812641212269036

`A050603(A244588(n))`
-/

namespace A053388.P6477812641212269036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A244588 n).toNat

end

end A053388.P6477812641212269036

namespace A053388

/-- `A050603(A244588(n))` -/
def P6477812641212269036.Spec : Prop :=
  ∀ n, P6477812641212269036.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P11490829622295521428

`A053386(A244584(n))`
-/

namespace A053388.P11490829622295521428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053386 (A244584 n).toNat

end

end A053388.P11490829622295521428

namespace A053388

/-- `A053386(A244584(n))` -/
def P11490829622295521428.Spec : Prop :=
  ∀ n, P11490829622295521428.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P5389968984630499463

`A053384(A244587(n))`
-/

namespace A053388.P5389968984630499463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053384 (A244587 n).toNat

end

end A053388.P5389968984630499463

namespace A053388

/-- `A053384(A244587(n))` -/
def P5389968984630499463.Spec : Prop :=
  ∀ n, P5389968984630499463.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P15925369861414104274

`A324468(∑[C(2, A324468(n+1)²)])`
-/

namespace A053388.P15925369861414104274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A324468 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053388.P15925369861414104274

namespace A053388

/-- `A324468(∑[C(2, A324468(n+1)²)])` -/
def P15925369861414104274.Spec : Prop :=
  ∀ n, P15925369861414104274.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P12003432412675344684

`abs(Δ[A053387(n+1)])`
-/

namespace A053388.P12003432412675344684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053388.P12003432412675344684

namespace A053388

/-- `abs(Δ[A053387(n+1)])` -/
def P12003432412675344684.Spec : Prop :=
  ∀ n, P12003432412675344684.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P5078235182393836367

`A090739(A110656(n+1))`
-/

namespace A053388.P5078235182393836367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (A110656 (n + 1)).toNat

end

end A053388.P5078235182393836367

namespace A053388

/-- `A090739(A110656(n+1))` -/
def P5078235182393836367.Spec : Prop :=
  ∀ n, P5078235182393836367.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P8597337905499780115

`A053387(A131055(n+2))`
-/

namespace A053388.P8597337905499780115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (A131055 (n + 2)).toNat

end

end A053388.P8597337905499780115

namespace A053388

/-- `A053387(A131055(n+2))` -/
def P8597337905499780115.Spec : Prop :=
  ∀ n, P8597337905499780115.a n = A053388 (n + 1)

end A053388

/-! ## A053388.P17397418209129669759

`A053387(n+1)+A053387(n+2)`
-/

namespace A053388.P17397418209129669759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (n + 1) + A053387 (n + 2)

end

end A053388.P17397418209129669759

namespace A053388

/-- `A053387(n+1)+A053387(n+2)` -/
def P17397418209129669759.Spec : Prop :=
  ∀ n, P17397418209129669759.a n = A053388 (n + 1)

end A053388

/-!
# A053389: A053398(9, n).

The programs for A053389, the canonical program `A053389.P5275518288129646180` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053389 has offset 1).

The definition of A053389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053389.P5275518288129646180

`val(or(8, n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053389

/-- `val(or(8, n)+1, 2)` -/
def P5275518288129646180.Spec : Prop :=
  ∀ n, (P5275518288129646180.a n : ℤ) = A053389 (n + 1)

theorem P5275518288129646180.correct : P5275518288129646180.Spec := by
  intro n
  simp only [A053389, Nat.add_sub_cancel]

end A053389

/-! ## A053389.P11616652071422108447

`val(lcm(n+1, n+9), 2)`
-/

namespace A053389.P11616652071422108447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lcm (n + 1) (n + 9)) 2

end

end A053389.P11616652071422108447

namespace A053389

/-- `val(lcm(n+1, n+9), 2)` -/
def P11616652071422108447.Spec : Prop :=
  ∀ n, (P11616652071422108447.a n : ℤ) = A053389 (n + 1)

end A053389

/-! ## A053389.P18397885034740632620

`val(and(n+9, -(n+1)), 2)`
-/

namespace A053389.P18397885034740632620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n + 9 : ℤ) (-(n + 1 : ℤ))).toNat 2

end

end A053389.P18397885034740632620

namespace A053389

/-- `val(and(n+9, -(n+1)), 2)` -/
def P18397885034740632620.Spec : Prop :=
  ∀ n, (P18397885034740632620.a n : ℤ) = A053389 (n + 1)

end A053389

/-! ## A053389.P17014770112675733892

`val(and(8, n+1)+n+1, 2)`
-/

namespace A053389.P17014770112675733892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.land 8 (n + 1) + (n + 1)) 2

end

end A053389.P17014770112675733892

namespace A053389

/-- `val(and(8, n+1)+n+1, 2)` -/
def P17014770112675733892.Spec : Prop :=
  ∀ n, (P17014770112675733892.a n : ℤ) = A053389 (n + 1)

end A053389

/-! ## A053389.P7425952768597345088

`A007814(or(8, n)+1)`
-/

namespace A053389.P7425952768597345088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.lor 8 n + 1)

end

end A053389.P7425952768597345088

namespace A053389

/-- `A007814(or(8, n)+1)` -/
def P7425952768597345088.Spec : Prop :=
  ∀ n, P7425952768597345088.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P1424962694755395659

`and(1, n)*A053390(n+1)`
-/

namespace A053389.P1424962694755395659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A053390 (n + 1)

end

end A053389.P1424962694755395659

namespace A053389

/-- `and(1, n)*A053390(n+1)` -/
def P1424962694755395659.Spec : Prop :=
  ∀ n, P1424962694755395659.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P10540216903136664536

`A007814(abs(and(n+9, -(n+1))-1)+1)`
-/

namespace A053389.P10540216903136664536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (|Int.land (n + 9 : ℤ) (-(n + 1 : ℤ)) - 1| + 1).toNat

end

end A053389.P10540216903136664536

namespace A053389

/-- `A007814(abs(and(n+9, -(n+1))-1)+1)` -/
def P10540216903136664536.Spec : Prop :=
  ∀ n, P10540216903136664536.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P8675444897092877378

`A000035(n)*A053390(n+1)`
-/

namespace A053389.P8675444897092877378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A053390 (n + 1)

end

end A053389.P8675444897092877378

namespace A053389

/-- `A000035(n)*A053390(n+1)` -/
def P8675444897092877378.Spec : Prop :=
  ∀ n, P8675444897092877378.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P3374840875649642151

`lcm(A053390(n+1), A091337(n))`
-/

namespace A053389.P3374840875649642151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053390 (n + 1)) (A091337 n)

end

end A053389.P3374840875649642151

namespace A053389

/-- `lcm(A053390(n+1), A091337(n))` -/
def P3374840875649642151.Spec : Prop :=
  ∀ n, (P3374840875649642151.a n : ℤ) = A053389 (n + 1)

end A053389

/-! ## A053389.P17960923000347301416

`and(A005563(n), A053390(n+1))`
-/

namespace A053389.P17960923000347301416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005563 n) (A053390 (n + 1))

end

end A053389.P17960923000347301416

namespace A053389

/-- `and(A005563(n), A053390(n+1))` -/
def P17960923000347301416.Spec : Prop :=
  ∀ n, P17960923000347301416.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P14960496744915612216

`and(A053390(n+1), A168412(n))`
-/

namespace A053389.P14960496744915612216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053390 (n + 1)) (A168412 n)

end

end A053389.P14960496744915612216

namespace A053389

/-- `and(A053390(n+1), A168412(n))` -/
def P14960496744915612216.Spec : Prop :=
  ∀ n, P14960496744915612216.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P13867234327433537925

`and(A053390(n+1), A170784(n))`
-/

namespace A053389.P13867234327433537925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053390 (n + 1)) (A170784 n)

end

end A053389.P13867234327433537925

namespace A053389

/-- `and(A053390(n+1), A170784(n))` -/
def P13867234327433537925.Spec : Prop :=
  ∀ n, P13867234327433537925.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P1331740801152049120

`and(A053390(n+1), A123867(n+1))`
-/

namespace A053389.P1331740801152049120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053390 (n + 1)) (A123867 (n + 1))

end

end A053389.P1331740801152049120

namespace A053389

/-- `and(A053390(n+1), A123867(n+1))` -/
def P1331740801152049120.Spec : Prop :=
  ∀ n, P1331740801152049120.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P10127517083086888090

`A053390(n+1)/A053384(n+1)*A053399(n+1)`
-/

namespace A053389.P10127517083086888090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053390 (n + 1) : ℚ) / (A053384 (n + 1) : ℚ) * (A053399 (n + 1) : ℚ)

end

end A053389.P10127517083086888090

namespace A053389

/-- `A053390(n+1)/A053384(n+1)*A053399(n+1)` -/
def P10127517083086888090.Spec : Prop :=
  ∀ n, P10127517083086888090.a n = (A053389 (n + 1) : ℚ)

end A053389

/-! ## A053389.P17914610092122926163

`A007814(n+1)+A007814(A274611(n+1)+1)`
-/

namespace A053389.P17914610092122926163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (A274611 (n + 1) + 1).toNat

end

end A053389.P17914610092122926163

namespace A053389

/-- `A007814(n+1)+A007814(A274611(n+1)+1)` -/
def P17914610092122926163.Spec : Prop :=
  ∀ n, P17914610092122926163.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P10651543123573380191

`C(A053390(n+1), A053390(2*(n+2))²)`
-/

namespace A053389.P10651543123573380191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053390 (n + 1)).toNat (A053390 (2 * (n + 2)) ^ 2).toNat

end

end A053389.P10651543123573380191

namespace A053389

/-- `C(A053390(n+1), A053390(2*(n+2))²)` -/
def P10651543123573380191.Spec : Prop :=
  ∀ n, (P10651543123573380191.a n : ℤ) = A053389 (n + 1)

end A053389

/-! ## A053389.P10592414583011699128

`A053390(n+1)%A221365(n)`
-/

namespace A053389.P10592414583011699128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053390 (n + 1)) (A221365 n)

end

end A053389.P10592414583011699128

namespace A053389

/-- `A053390(n+1)%A221365(n)` -/
def P10592414583011699128.Spec : Prop :=
  ∀ n, P10592414583011699128.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P12644687035279236085

`and(A053390(n+1), A183114(n))`
-/

namespace A053389.P12644687035279236085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053390 (n + 1)) (A183114 n)

end

end A053389.P12644687035279236085

namespace A053389

/-- `and(A053390(n+1), A183114(n))` -/
def P12644687035279236085.Spec : Prop :=
  ∀ n, P12644687035279236085.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P7968057318041039623

`and(A032096(n+1), A053390(n+1))`
-/

namespace A053389.P7968057318041039623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032096 (n + 1)) (A053390 (n + 1))

end

end A053389.P7968057318041039623

namespace A053389

/-- `and(A032096(n+1), A053390(n+1))` -/
def P7968057318041039623.Spec : Prop :=
  ∀ n, P7968057318041039623.a n = A053389 (n + 1)

end A053389

/-! ## A053389.P8902968061633633051

`and(A053390(n+1), A199109(n))`
-/

namespace A053389.P8902968061633633051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053390 (n + 1)) (A199109 n)

end

end A053389.P8902968061633633051

namespace A053389

/-- `and(A053390(n+1), A199109(n))` -/
def P8902968061633633051.Spec : Prop :=
  ∀ n, P8902968061633633051.a n = A053389 (n + 1)

end A053389

/-!
# A053390: a(n) = A053398(10, n).

The programs for A053390, the canonical program `A053390.P298210059975080750` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053390 has offset 1).

The definition of A053390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053390.P298210059975080750

`val(or(9, n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053390

/-- `val(or(9, n)+1, 2)` -/
def P298210059975080750.Spec : Prop :=
  ∀ n, (P298210059975080750.a n : ℤ) = A053390 (n + 1)

theorem P298210059975080750.correct : P298210059975080750.Spec := by
  intro n
  simp only [A053390, Nat.add_sub_cancel]

end A053390

/-! ## A053390.P13809570120107348841

`val(and(n+10, -(n+1)), 2)`
-/

namespace A053390.P13809570120107348841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n + 10 : ℤ) (-(n + 1 : ℤ))).toNat 2

end

end A053390.P13809570120107348841

namespace A053390

/-- `val(and(n+10, -(n+1)), 2)` -/
def P13809570120107348841.Spec : Prop :=
  ∀ n, (P13809570120107348841.a n : ℤ) = A053390 (n + 1)

end A053390

/-! ## A053390.P3590227294294572609

`val(and(9, n+3)+n+1, 2)`
-/

namespace A053390.P3590227294294572609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.land 9 (n + 3) + (n + 1)) 2

end

end A053390.P3590227294294572609

namespace A053390

/-- `val(and(9, n+3)+n+1, 2)` -/
def P3590227294294572609.Spec : Prop :=
  ∀ n, (P3590227294294572609.a n : ℤ) = A053390 (n + 1)

end A053390

/-! ## A053390.P18416243384293961305

`A050603(or(8, n))`
-/

namespace A053390.P18416243384293961305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (Nat.lor 8 n)

end

end A053390.P18416243384293961305

namespace A053390

/-- `A050603(or(8, n))` -/
def P18416243384293961305.Spec : Prop :=
  ∀ n, P18416243384293961305.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P3470570255740092629

`A089309(or(9, n))`
-/

namespace A053390.P3470570255740092629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Nat.lor 9 n)

end

end A053390.P3470570255740092629

namespace A053390

/-- `A089309(or(9, n))` -/
def P3470570255740092629.Spec : Prop :=
  ∀ n, P3470570255740092629.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P11795045868212451605

`A136480(or(9, n))`
-/

namespace A053390.P11795045868212451605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (Nat.lor 9 n)

end

end A053390.P11795045868212451605

namespace A053390

/-- `A136480(or(9, n))` -/
def P11795045868212451605.Spec : Prop :=
  ∀ n, P11795045868212451605.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P8251330467356384194

`A228371(or(9, n))`
-/

namespace A053390.P8251330467356384194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (Nat.lor 9 n)

end

end A053390.P8251330467356384194

namespace A053390

/-- `A228371(or(9, n))` -/
def P8251330467356384194.Spec : Prop :=
  ∀ n, P8251330467356384194.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P194152495604306937

`A324468(or(9, n))`
-/

namespace A053390.P194152495604306937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (Nat.lor 9 n)

end

end A053390.P194152495604306937

namespace A053390

/-- `A324468(or(9, n))` -/
def P194152495604306937.Spec : Prop :=
  ∀ n, P194152495604306937.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P7384089673629171459

`A007814(or(9, n)+1)`
-/

namespace A053390.P7384089673629171459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.lor 9 n + 1)

end

end A053390.P7384089673629171459

namespace A053390

/-- `A007814(or(9, n)+1)` -/
def P7384089673629171459.Spec : Prop :=
  ∀ n, P7384089673629171459.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P18251505843493774809

`A053389(gcd(2, n)+n)`
-/

namespace A053390.P18251505843493774809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053389 (Nat.gcd 2 n + n)

end

end A053390.P18251505843493774809

namespace A053390

/-- `A053389(gcd(2, n)+n)` -/
def P18251505843493774809.Spec : Prop :=
  ∀ n, P18251505843493774809.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P12597363156278655572

`A007814(and(9, -(n+1))+n+1)`
-/

namespace A053390.P12597363156278655572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.land 9 (-(n + 1 : ℤ)) + (n : ℤ) + 1).toNat

end

end A053390.P12597363156278655572

namespace A053390

/-- `A007814(and(9, -(n+1))+n+1)` -/
def P12597363156278655572.Spec : Prop :=
  ∀ n, P12597363156278655572.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P18164085243906369877

`abs(Δ[A053389(n+1)])`
-/

namespace A053390.P18164085243906369877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053390.P18164085243906369877

namespace A053390

/-- `abs(Δ[A053389(n+1)])` -/
def P18164085243906369877.Spec : Prop :=
  ∀ n, P18164085243906369877.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P12345690513787997673

`A053389(A131055(n+2))`
-/

namespace A053390.P12345690513787997673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053389 (A131055 (n + 2)).toNat

end

end A053390.P12345690513787997673

namespace A053390

/-- `A053389(A131055(n+2))` -/
def P12345690513787997673.Spec : Prop :=
  ∀ n, P12345690513787997673.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P8793596278527236039

`A053389(n+1)+A053389(n+2)`
-/

namespace A053390.P8793596278527236039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053389 (n + 1) + A053389 (n + 2)

end

end A053390.P8793596278527236039

namespace A053390

/-- `A053389(n+1)+A053389(n+2)` -/
def P8793596278527236039.Spec : Prop :=
  ∀ n, P8793596278527236039.a n = A053390 (n + 1)

end A053390

/-! ## A053390.P15018691343266534752

`A053398(A374011(n+1))`
-/

namespace A053390.P15018691343266534752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (A374011 (n + 1)).toNat

end

end A053390.P15018691343266534752

namespace A053390

/-- `A053398(A374011(n+1))` -/
def P15018691343266534752.Spec : Prop :=
  ∀ n, P15018691343266534752.a n = A053390 (n + 1)

end A053390

/-!
# A053391: Number of cycle types of direct products of two degree-n permutations.

The programs for A053391, there is no canonical definition to state claims against.
-/

/-! ## A053391.P15666354556761578455

`A002478(n)-A204016(A000142(n))`
-/

namespace A053391.P15666354556761578455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n - A204016 (A000142 n).toNat

end

end A053391.P15666354556761578455

/-! ## A053391.P8195971594266025742

`A137791(A027750(n+1)+A001764(n))`
-/

namespace A053391.P8195971594266025742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137791 (A027750 (n + 1) + A001764 n).toNat

end

end A053391.P8195971594266025742

/-!
# A053392: a(n) is the concatenation of the sums of every pair of consecutive digits of n (with a(n) = 0 for 0 <= n <= 9).

The programs for A053392, the canonical program `A053392.P13449363349587833560` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053392 has offset 0).

The definition of A053392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053392.P12009341683389407411

`A025456(A059268(n))+n-A329623(n)`
-/

namespace A053392.P12009341683389407411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A059268 n).toNat + ((n : ℤ) - A329623 n)

end

end A053392.P12009341683389407411

namespace A053392

/-- `A025456(A059268(n))+n-A329623(n)` -/
def P12009341683389407411.Spec : Prop :=
  ∀ n, P12009341683389407411.a n = A053392 n

end A053392

/-! ## A053392.P13306262762366909545

`A000038(A270301(2*(n+1)))+n-A329623(n)`
-/

namespace A053392.P13306262762366909545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A270301 (2 * (n + 1))).toNat + ((n : ℤ) - A329623 n)

end

end A053392.P13306262762366909545

namespace A053392

/-- `A000038(A270301(2*(n+1)))+n-A329623(n)` -/
def P13306262762366909545.Spec : Prop :=
  ∀ n, P13306262762366909545.a n = A053392 n

end A053392

/-! ## A053392.P12225249137939997165

`A000038(Δ[A044819(n+1)²])+n-A329623(n)`
-/

namespace A053392.P12225249137939997165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044819 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (f1 (n + 1) - f1 n).toNat + ((n : ℤ) - A329623 n)

end

end A053392.P12225249137939997165

namespace A053392

/-- `A000038(Δ[A044819(n+1)²])+n-A329623(n)` -/
def P12225249137939997165.Spec : Prop :=
  ∀ n, P12225249137939997165.a n = A053392 n

end A053392

/-! ## A053392.P15278664112037280686

`A000038(∑[n*gcd(2, n)]+1)+n-A329623(n)`
-/

namespace A053392.P15278664112037280686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((n : ℤ) - A329623 n)

end

end A053392.P15278664112037280686

namespace A053392

/-- `A000038(∑[n*gcd(2, n)]+1)+n-A329623(n)` -/
def P15278664112037280686.Spec : Prop :=
  ∀ n, P15278664112037280686.a n = A053392 n

end A053392

/-! ## A053392.P14794920563412805531

`(n-9*floor(n/10))%A216556((n-∑{digits}[n, #])²)`
-/

namespace A053392.P14794920563412805531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋) (A216556 (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)) ^ 2).toNat)

end

end A053392.P14794920563412805531

namespace A053392

/-- `(n-9*floor(n/10))%A216556((n-∑{digits}[n, #])²)` -/
def P14794920563412805531.Spec : Prop :=
  ∀ n, P14794920563412805531.a n = A053392 n

end A053392

/-! ## A053392.P3611497762412596899

`A007953(A307560(A093882(n)))`
-/

namespace A053392.P3611497762412596899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A307560 (A093882 n).toNat).toNat

end

end A053392.P3611497762412596899

namespace A053392

/-- `A007953(A307560(A093882(n)))` -/
def P3611497762412596899.Spec : Prop :=
  ∀ n, P3611497762412596899.a n = A053392 n

end A053392

/-! ## A053392.P11482240792698586904

`(A328680(n+1)+n)%(A329623(n)+A328680(n+1))`
-/

namespace A053392.P11482240792698586904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328680 (n + 1) + (n : ℤ)) (A329623 n + A328680 (n + 1))

end

end A053392.P11482240792698586904

namespace A053392

/-- `(A328680(n+1)+n)%(A329623(n)+A328680(n+1))` -/
def P11482240792698586904.Spec : Prop :=
  ∀ n, P11482240792698586904.a n = A053392 n

end A053392

/-! ## A053392.P13449363349587833560

`A062329(A051022(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053392

/-- `A062329(A051022(n))` -/
def P13449363349587833560.Spec : Prop :=
  ∀ n, P13449363349587833560.a n = A053392 n

theorem P13449363349587833560.correct : P13449363349587833560.Spec := by
  intro n
  simp only [A053392]

end A053392

/-! ## A053392.P1017590615242637432

`A093882(A064876(n²))`
-/

namespace A053392.P1017590615242637432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 (A064876 (n ^ 2)).toNat

end

end A053392.P1017590615242637432

namespace A053392

/-- `A093882(A064876(n²))` -/
def P1017590615242637432.Spec : Prop :=
  ∀ n, P1017590615242637432.a n = A053392 n

end A053392

/-! ## A053392.P15619196011763922805

`A138953(n)%p?[A138987(3*(n+1))]`
-/

namespace A053392.P15619196011763922805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138953 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A053392.P15619196011763922805

namespace A053392

/-- `A138953(n)%p?[A138987(3*(n+1))]` -/
def P15619196011763922805.Spec : Prop :=
  ∀ n, P15619196011763922805.a n = A053392 n

end A053392

/-!
# A053395: Complete list of 4-Kaprekar numbers.

The programs for A053395, there is no canonical definition to state claims against.
-/

/-! ## A053395.P631603280277484122

`A053816(A060009(n+1))`
-/

namespace A053395.P631603280277484122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (A060009 (n + 1)).toNat

end

end A053395.P631603280277484122

/-! ## A053395.P11192825954098467964

`A053816(A115843(n+1))`
-/

namespace A053395.P11192825954098467964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (A115843 (n + 1)).toNat

end

end A053395.P11192825954098467964

/-! ## A053395.P3031793529739667688

`A053816(A250042(n+1))`
-/

namespace A053395.P3031793529739667688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (A250042 (n + 1)).toNat

end

end A053395.P3031793529739667688

/-! ## A053395.P15816673547367636589

`A053816(A171892(n+2))`
-/

namespace A053395.P15816673547367636589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (A171892 (n + 2)).toNat

end

end A053395.P15816673547367636589

/-!
# A053398: Nim-values from game of Kopper's Nim.

The programs for A053398, the canonical program `A053398.P10674164959808445662` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053398 has offset 1).

The definition of A053398 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053398.P10674164959808445662

`A007814(A003986(n)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053398

/-- `A007814(A003986(n)+1)` -/
def P10674164959808445662.Spec : Prop :=
  ∀ n, P10674164959808445662.a n = A053398 (n + 1)

theorem P10674164959808445662.correct : P10674164959808445662.Spec := by
  intro n
  simp only [A053398, Nat.add_sub_cancel]

end A053398

/-! ## A053398.P15560820901757707083

`A001511(A003986(n)+1)-1`
-/

namespace A053398.P15560820901757707083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003986 n + 1).toNat - 1

end

end A053398.P15560820901757707083

namespace A053398

/-- `A001511(A003986(n)+1)-1` -/
def P15560820901757707083.Spec : Prop :=
  ∀ n, P15560820901757707083.a n = A053398 (n + 1)

end A053398

/-! ## A053398.P5368624853289176023

`val(A003987(n)+A004198(n)+1, 2)`
-/

namespace A053398.P5368624853289176023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003987 n + (A004198 n + 1)).toNat 2

end

end A053398.P5368624853289176023

namespace A053398

/-- `val(A003987(n)+A004198(n)+1, 2)` -/
def P5368624853289176023.Spec : Prop :=
  ∀ n, (P5368624853289176023.a n : ℤ) = A053398 (n + 1)

end A053398

/-! ## A053398.P9538731030197575018

`A050606(A003987(n)+A003056(n))`
-/

namespace A053398.P9538731030197575018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 (A003987 n + A003056 n).toNat

end

end A053398.P9538731030197575018

namespace A053398

/-- `A050606(A003987(n)+A003056(n))` -/
def P9538731030197575018.Spec : Prop :=
  ∀ n, P9538731030197575018.a n = A053398 (n + 1)

end A053398

/-! ## A053398.P3463230191389100438

`A007814(or(A002262(n), A025581(n))+1)`
-/

namespace A053398.P3463230191389100438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A002262 n) (A025581 n) + 1).toNat

end

end A053398.P3463230191389100438

namespace A053398

/-- `A007814(or(A002262(n), A025581(n))+1)` -/
def P3463230191389100438.Spec : Prop :=
  ∀ n, P3463230191389100438.a n = A053398 (n + 1)

end A053398

/-! ## A053398.P262583286785783154

`A001511(A003987(n)+A004198(n)+1)-1`
-/

namespace A053398.P262583286785783154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003987 n + (A004198 n + 1)).toNat - 1

end

end A053398.P262583286785783154

namespace A053398

/-- `A001511(A003987(n)+A004198(n)+1)-1` -/
def P262583286785783154.Spec : Prop :=
  ∀ n, P262583286785783154.a n = A053398 (n + 1)

theorem P262583286785783154.correct : P262583286785783154.Spec := by
  intro n
  simp only [A053398, Nat.add_sub_cancel, A053398.P262583286785783154.a, A053398.P10674164959808445662.a, A001511, A001511.P17146462531039486101.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A004198, A004198.P12357337643379645634.a, A007814, A007814.P13537437864234730737.a, A002262, A002262.P17823619022233514403.a, A006519, A006519.P10435570611646570274.a, A025581, A025581.P16112744757063613497.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053398

/-! ## A053398.P11657186315279119671

`A215879(A374560(n))`
-/

namespace A053398.P11657186315279119671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A374560 n).toNat

end

end A053398.P11657186315279119671

namespace A053398

/-- `A215879(A374560(n))` -/
def P11657186315279119671.Spec : Prop :=
  ∀ n, P11657186315279119671.a n = A053398 (n + 1)

end A053398

/-! ## A053398.P18052075770219118197

`A215883(A054238(n))`
-/

namespace A053398.P18052075770219118197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215883 (A054238 n).toNat

end

end A053398.P18052075770219118197

namespace A053398

/-- `A215883(A054238(n))` -/
def P18052075770219118197.Spec : Prop :=
  ∀ n, P18052075770219118197.a n = A053398 (n + 1)

end A053398

/-! ## A053398.P2038618354097849721

`A215883(A346453(n))`
-/

namespace A053398.P2038618354097849721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215883 (A346453 n).toNat

end

end A053398.P2038618354097849721

namespace A053398

/-- `A215883(A346453(n))` -/
def P2038618354097849721.Spec : Prop :=
  ∀ n, P2038618354097849721.a n = A053398 (n + 1)

end A053398

/-! ## A053398.P409042422201302669

`val(A000005(2^A003986(n)), 2)`
-/

namespace A053398.P409042422201302669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003986 n : ℤ))).toNat).toNat 2

end

end A053398.P409042422201302669

namespace A053398

/-- `val(A000005(2^A003986(n)), 2)` -/
def P409042422201302669.Spec : Prop :=
  ∀ n, (P409042422201302669.a n : ℤ) = A053398 (n + 1)

end A053398

/-!
# A053399: A053398(3, n).

The programs for A053399, the canonical program `A053399.P6114799699603418301` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053399 has offset 1).

The definition of A053399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053399.P6114799699603418301

`val(or(2, n)+1, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053399

/-- `val(or(2, n)+1, 2)` -/
def P6114799699603418301.Spec : Prop :=
  ∀ n, (P6114799699603418301.a n : ℤ) = A053399 (n + 1)

theorem P6114799699603418301.correct : P6114799699603418301.Spec := by
  intro n
  simp only [A053399, Nat.add_sub_cancel]

end A053399

/-! ## A053399.P2230375981318081368

`val(and(n+3, -3), 2)`
-/

namespace A053399.P2230375981318081368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n + 3 : ℤ) (-3)).toNat 2

end

end A053399.P2230375981318081368

namespace A053399

/-- `val(and(n+3, -3), 2)` -/
def P2230375981318081368.Spec : Prop :=
  ∀ n, (P2230375981318081368.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P3381979349009828077

`val(3-or(2, -n), 2)`
-/

namespace A053399.P3381979349009828077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 - Int.lor 2 (-(n : ℤ))).toNat 2

end

end A053399.P3381979349009828077

namespace A053399

/-- `val(3-or(2, -n), 2)` -/
def P3381979349009828077.Spec : Prop :=
  ∀ n, (P3381979349009828077.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P12637097513596088116

`val(lcm(n+1, n+3), 2)`
-/

namespace A053399.P12637097513596088116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lcm (n + 1) (n + 3)) 2

end

end A053399.P12637097513596088116

namespace A053399

/-- `val(lcm(n+1, n+3), 2)` -/
def P12637097513596088116.Spec : Prop :=
  ∀ n, (P12637097513596088116.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P6775996805298747893

`val(C((n+2)²-1, 2), 2)`
-/

namespace A053399.P6775996805298747893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose (((n + 2) ^ 2 : ℤ) - 1).toNat 2) 2

end

end A053399.P6775996805298747893

namespace A053399

/-- `val(C((n+2)²-1, 2), 2)` -/
def P6775996805298747893.Spec : Prop :=
  ∀ n, (P6775996805298747893.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P6820579223358763395

`val(∑[n%2+1+n], 2)`
-/

namespace A053399.P6820579223358763395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A053399.P6820579223358763395

namespace A053399

/-- `val(∑[n%2+1+n], 2)` -/
def P6820579223358763395.Spec : Prop :=
  ∀ n, (P6820579223358763395.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P4773459425486522872

`val(∑[gcd(2, n+1)+n], 2)`
-/

namespace A053399.P4773459425486522872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A053399.P4773459425486522872

namespace A053399

/-- `val(∑[gcd(2, n+1)+n], 2)` -/
def P4773459425486522872.Spec : Prop :=
  ∀ n, (P4773459425486522872.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P1137042827278616385

`val(∑[and(1, n)+1+n], 2)`
-/

namespace A053399.P1137042827278616385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A053399.P1137042827278616385

namespace A053399

/-- `val(∑[and(1, n)+1+n], 2)` -/
def P1137042827278616385.Spec : Prop :=
  ∀ n, (P1137042827278616385.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P12040844191316275872

`val(∑[a(n-2)+2], 2)` with `a(0)=1, a(1)=3`
-/

namespace A053399.P12040844191316275872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A053399.P12040844191316275872

namespace A053399

/-- `val(∑[a(n-2)+2], 2)` -/
def P12040844191316275872.Spec : Prop :=
  ∀ n, (P12040844191316275872.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P13423392907957741489

`val(∑[2-a(n-2)], 2)` with `a(0)=1, a(1)=3`
-/

namespace A053399.P13423392907957741489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A053399.P13423392907957741489

namespace A053399

/-- `val(∑[2-a(n-2)], 2)` -/
def P13423392907957741489.Spec : Prop :=
  ∀ n, (P13423392907957741489.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P8701699085882628939

`val(and(2, n+1)+n+1, 2)`
-/

namespace A053399.P8701699085882628939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.land 2 (n + 1) + (n + 1)) 2

end

end A053399.P8701699085882628939

namespace A053399

/-- `val(and(2, n+1)+n+1, 2)` -/
def P8701699085882628939.Spec : Prop :=
  ∀ n, (P8701699085882628939.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P9713028188697815985

`val(n+1, 2)*val(n+3, 2)`
-/

namespace A053399.P9713028188697815985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 * SequenceMachineLib.valuation (n + 3) 2

end

end A053399.P9713028188697815985

namespace A053399

/-- `val(n+1, 2)*val(n+3, 2)` -/
def P9713028188697815985.Spec : Prop :=
  ∀ n, (P9713028188697815985.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P4224452637272834965

`val((n+1)^val(n+3, 2), 2)`
-/

namespace A053399.P4224452637272834965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ SequenceMachineLib.valuation (n + 3) 2) 2

end

end A053399.P4224452637272834965

namespace A053399

/-- `val((n+1)^val(n+3, 2), 2)` -/
def P4224452637272834965.Spec : Prop :=
  ∀ n, (P4224452637272834965.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P3135988940774358382

`val(∑[∑[2*or(1, n)]-1], 2)`
-/

namespace A053399.P3135988940774358382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A053399.P3135988940774358382

namespace A053399

/-- `val(∑[∑[2*or(1, n)]-1], 2)` -/
def P3135988940774358382.Spec : Prop :=
  ∀ n, (P3135988940774358382.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P18323066972811288011

`val((or(2, n-3)-2*n)², 4)`
-/

namespace A053399.P18323066972811288011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Int.lor 2 ((n : ℤ) - 3) - (2 * n : ℤ)) ^ 2).toNat 4

end

end A053399.P18323066972811288011

namespace A053399

/-- `val((or(2, n-3)-2*n)², 4)` -/
def P18323066972811288011.Spec : Prop :=
  ∀ n, (P18323066972811288011.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P11095476856425882605

`val(∑[(n+2)²²+n+1], 2)`
-/

namespace A053399.P11095476856425882605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2) ^ 2 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A053399.P11095476856425882605

namespace A053399

/-- `val(∑[(n+2)²²+n+1], 2)` -/
def P11095476856425882605.Spec : Prop :=
  ∀ n, (P11095476856425882605.a n : ℤ) = A053399 (n + 1)

end A053399

/-! ## A053399.P4725080749876362965

`A007814(or(2, n)+1)`
-/

namespace A053399.P4725080749876362965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.lor 2 n + 1)

end

end A053399.P4725080749876362965

namespace A053399

/-- `A007814(or(2, n)+1)` -/
def P4725080749876362965.Spec : Prop :=
  ∀ n, P4725080749876362965.a n = A053399 (n + 1)

end A053399

/-! ## A053399.P2767835635594342474

`A001222(and(n+3, n+3-lcm(2, n+2)))`
-/

namespace A053399.P2767835635594342474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 3 : ℤ) ((n + 3 : ℤ) - (Nat.lcm 2 (n + 2) : ℤ))).toNat

end

end A053399.P2767835635594342474

namespace A053399

/-- `A001222(and(n+3, n+3-lcm(2, n+2)))` -/
def P2767835635594342474.Spec : Prop :=
  ∀ n, P2767835635594342474.a n = A053399 (n + 1)

end A053399

/-! ## A053399.P10463154578413161754

`A001222(and(n+3, 2*and(1, n)-(n+3)))`
-/

namespace A053399.P10463154578413161754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 3 : ℤ) ((2 * Nat.land 1 n : ℤ) - (n + 3 : ℤ))).toNat

end

end A053399.P10463154578413161754

namespace A053399

/-- `A001222(and(n+3, 2*and(1, n)-(n+3)))` -/
def P10463154578413161754.Spec : Prop :=
  ∀ n, P10463154578413161754.a n = A053399 (n + 1)

end A053399

/-! ## A053399.P10896401745055058641

`A001222(n+3-and(n+3, n-1))-a(n-1)` with `a(0)=0`
-/

namespace A053399.P10896401745055058641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 ((n + 3 : ℤ) - Int.land (n + 3 : ℤ) ((n : ℤ) - 1)).toNat - a (n - 1)

end

end A053399.P10896401745055058641

namespace A053399

/-- `A001222(n+3-and(n+3, n-1))-a(n-1)` -/
def P10896401745055058641.Spec : Prop :=
  ∀ n, P10896401745055058641.a n = A053399 (n + 1)

end A053399

