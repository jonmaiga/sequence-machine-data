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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

/-!
# A360600: Inverse permutation to A360599.

The programs for A360600, there is no canonical definition to state claims against.
-/

/-! ## A360600.P9592430371760606689

`A209260(n+1)+A189632(A210592(n))`
-/

namespace A360600.P9592430371760606689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209260 (n + 1) + A189632 (A210592 n).toNat

end

end A360600.P9592430371760606689

/-!
# A360601: E.g.f. satisfies A(x) = exp(x*A(x)^2) / (1-x).

The programs for A360601, there is no canonical definition to state claims against.
-/

/-! ## A360601.P12930802477329309306

`A362776(n)+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A360601.P12930802477329309306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A362776 n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A360601.P12930802477329309306

/-!
# A360602: a(n) = ((2*n + 1)! / n!)^2 / (n + 1).

The programs for A360602, the canonical program `A360602.P4220017568410159478` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360602 has offset 0).

The definition of A360602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360602.P4220017568410159478

`((2*n+1)!/n!)²/(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360602

/-- `((2*n+1)!/n!)²/(n+1)` -/
def P4220017568410159478.Spec : Prop :=
  ∀ n, P4220017568410159478.a n = (A360602 n : ℚ)

end A360602

/-! ## A360602.P9775092592258104229

`(2*n+1)!*C(Δ[n²], n)`
-/

namespace A360602.P9775092592258104229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1) * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n

end

end A360602.P9775092592258104229

namespace A360602

/-- `(2*n+1)!*C(Δ[n²], n)` -/
def P9775092592258104229.Spec : Prop :=
  ∀ n, (P9775092592258104229.a n : ℤ) = A360602 n

end A360602

/-! ## A360602.P15906982030770734083

`∑{d}[2*n+1, #!*C(#, n+1)]`
-/

namespace A360602.P15906982030770734083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial d * Nat.choose d (n + 1)

end

end A360602.P15906982030770734083

namespace A360602

/-- `∑{d}[2*n+1, #!*C(#, n+1)]` -/
def P15906982030770734083.Spec : Prop :=
  ∀ n, (P15906982030770734083.a n : ℤ) = A360602 n

end A360602

/-! ## A360602.P4995593827407724442

`(2*n+1)*C(2*n+1, n)*(2*n)!`
-/

namespace A360602.P4995593827407724442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (2 * n + 1) n * Nat.factorial (2 * n)

end

end A360602.P4995593827407724442

namespace A360602

/-- `(2*n+1)*C(2*n+1, n)*(2*n)!` -/
def P4995593827407724442.Spec : Prop :=
  ∀ n, (P4995593827407724442.a n : ℤ) = A360602 n

end A360602

/-! ## A360602.P16973662286624021901

`A059837(2*(n+1))`
-/

namespace A360602.P16973662286624021901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059837 (2 * (n + 1))

end

end A360602.P16973662286624021901

namespace A360602

/-- `A059837(2*(n+1))` -/
def P16973662286624021901.Spec : Prop :=
  ∀ n, P16973662286624021901.a n = A360602 n

end A360602

/-!
# A360603: Triangle read by rows. T(n, k) = A360604(n, k) * A001187(k) for 0 <= k <= n.

The programs for A360603, there is no canonical definition to state claims against.
-/

/-! ## A360603.P11724988210206747927

`A112310(A262372(n)^A182710(2*n+1))`
-/

namespace A360603.P11724988210206747927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (SequenceMachineLib.roundAway ((A262372 n : ℚ) ^ (A182710 (2 * n + 1) : ℤ))).toNat

end

end A360603.P11724988210206747927

/-! ## A360603.P11101761903826854552

`A243822(A005177(n))+A084938(n)`
-/

namespace A360603.P11101761903826854552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (A005177 n).toNat + A084938 n

end

end A360603.P11101761903826854552

/-! ## A360603.P16924182726901159432

`A050433(A006130(n))*A339780(n)`
-/

namespace A360603.P16924182726901159432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A006130 n).toNat * A339780 n

end

end A360603.P16924182726901159432

/-! ## A360603.P10248153334508569286

`A048766(A324244(n+1)^A045828(n))`
-/

namespace A360603.P10248153334508569286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A324244 (n + 1) : ℚ) ^ (A045828 n : ℤ))).toNat

end

end A360603.P10248153334508569286

/-!
# A360604: Triangle read by rows. T(n, k) = 2^binomial(n - k, 2) * binomial(n - 1, k - 1).

The programs for A360604, there is no canonical definition to state claims against.
-/

/-! ## A360604.P4764879061802340004

`A006125(A025581(n))*A097805(n)`
-/

namespace A360604.P4764879061802340004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (A025581 n).toNat * A097805 n

end

end A360604.P4764879061802340004

/-! ## A360604.P13734370288160296619

`A034968(A114153(n))`
-/

namespace A360604.P13734370288160296619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A114153 n).toNat

end

end A360604.P13734370288160296619

/-! ## A360604.P1864645935013129666

`A213623(A084938(n))`
-/

namespace A360604.P1864645935013129666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213623 (A084938 n).toNat

end

end A360604.P1864645935013129666

/-! ## A360604.P14035041644937516032

`A115727(A265606(n))`
-/

namespace A360604.P14035041644937516032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (A265606 n).toNat

end

end A360604.P14035041644937516032

/-! ## A360604.P17503783634778072747

`A068063(A368602(n))`
-/

namespace A360604.P17503783634778072747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A368602 n).toNat

end

end A360604.P17503783634778072747

/-!
# A360605: The polygonal polynomials evaluated at x = -1/2 and normalized with (-2)^n.

The programs for A360605, the canonical program `A360605.P14620184116724351100` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360605 has offset 0).

The definition of A360605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360605.P14620184116724351100

`(4-n)*(3*n+2+(-2)^(n+1))/27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360605

/-- `(4-n)*(3*n+2+(-2)^(n+1))/27` -/
def P14620184116724351100.Spec : Prop :=
  ∀ n, P14620184116724351100.a n = (A360605 n : ℚ)

end A360605

/-!
# A360606: The polygonal polynomials evaluated at x = 1/2 and normalized with 2^n.

The programs for A360606, the canonical program `A360606.P14808680459708010105` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360606 has offset 0).

The definition of A360606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360606.P14808680459708010105

`8+4*n+n²+(n-4)*2^(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360606

/-- `8+4*n+n²+(n-4)*2^(n+1)` -/
def P14808680459708010105.Spec : Prop :=
  ∀ n, P14808680459708010105.a n = A360606 n

theorem P14808680459708010105.correct : P14808680459708010105.Spec := by
  intro n
  simp only [A360606]

end A360606

/-! ## A360606.P13071711122952840114

`∑[2^n-2*n+2*a(n-1)+1]` with `a(0)=0`
-/

namespace A360606.P13071711122952840114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 ^ n : ℤ) - (2 * n : ℤ) + (2 * f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360606.P13071711122952840114

namespace A360606

/-- `∑[2^n-2*n+2*a(n-1)+1]` -/
def P13071711122952840114.Spec : Prop :=
  ∀ n, P13071711122952840114.a n = A360606 n

end A360606

/-! ## A360606.P17525420187764646302

`∑[A260006(n)-A213387(n+1)]`
-/

namespace A360606.P17525420187764646302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260006 n - A213387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360606.P17525420187764646302

namespace A360606

/-- `∑[A260006(n)-A213387(n+1)]` -/
def P17525420187764646302.Spec : Prop :=
  ∀ n, P17525420187764646302.a n = A360606 n

end A360606

/-! ## A360606.P8604606387923527112

`∑[A048481(n)]%A048481(n)`
-/

namespace A360606.P8604606387923527112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A048481 n)

end

end A360606.P8604606387923527112

namespace A360606

/-- `∑[A048481(n)]%A048481(n)` -/
def P8604606387923527112.Spec : Prop :=
  ∀ n, P8604606387923527112.a n = A360606 n

end A360606

/-! ## A360606.P9399515812763778381

`A078501(n+1)%A003469(n+1)`
-/

namespace A360606.P9399515812763778381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078501 (n + 1)) (A003469 (n + 1))

end

end A360606.P9399515812763778381

namespace A360606

/-- `A078501(n+1)%A003469(n+1)` -/
def P9399515812763778381.Spec : Prop :=
  ∀ n, P9399515812763778381.a n = A360606 n

end A360606

/-!
# A360607: a(n) = (n + 1/3) * (3*n + 3)! / ((n + 1)!)^3.

The programs for A360607, the canonical program `A360607.P1191871637765203635` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360607 has offset 0).

The definition of A360607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360607.P1191871637765203635

`(n+1/3)*(3*n+3)!/(n+1)!^3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360607

/-- `(n+1/3)*(3*n+3)!/(n+1)!^3` -/
def P1191871637765203635.Spec : Prop :=
  ∀ n, P1191871637765203635.a n = (A360607 n : ℚ)

end A360607

/-! ## A360607.P9610642816619535952

`(3*n+1)*A208881(n+1)`
-/

namespace A360607.P9610642816619535952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A208881 (n + 1)

end

end A360607.P9610642816619535952

namespace A360607

/-- `(3*n+1)*A208881(n+1)` -/
def P9610642816619535952.Spec : Prop :=
  ∀ n, P9610642816619535952.a n = A360607 n

end A360607

/-! ## A360607.P2749564311248551670

`(6*n+2)*A060542(n+1)`
-/

namespace A360607.P2749564311248551670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) * A060542 (n + 1)

end

end A360607.P2749564311248551670

namespace A360607

/-- `(6*n+2)*A060542(n+1)` -/
def P2749564311248551670.Spec : Prop :=
  ∀ n, P2749564311248551670.a n = A360607 n

end A360607

/-! ## A360607.P17132461670868685738

`A016777(n)*A022916(A016789(n))`
-/

namespace A360607.P17132461670868685738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A022916 (A016789 n).toNat

end

end A360607.P17132461670868685738

namespace A360607

/-- `A016777(n)*A022916(A016789(n))` -/
def P17132461670868685738.Spec : Prop :=
  ∀ n, P17132461670868685738.a n = A360607 n

end A360607

/-! ## A360607.P16023794380635555544

`A007318(A034856(3*n+1))*A022916(3*n+2)`
-/

namespace A360607.P16023794380635555544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A034856 (3 * n + 1)).toNat * A022916 (3 * n + 2)

end

end A360607.P16023794380635555544

namespace A360607

/-- `A007318(A034856(3*n+1))*A022916(3*n+2)` -/
def P16023794380635555544.Spec : Prop :=
  ∀ n, P16023794380635555544.a n = A360607 n

end A360607

/-!
# A360609: E.g.f. satisfies A(x) = exp(x*A(x)^3) / (1-x).

The programs for A360609, there is no canonical definition to state claims against.
-/

/-! ## A360609.P10476432143686855559

`A288992(A012821(2*n)+A012814(n))`
-/

namespace A360609.P10476432143686855559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288992 (A012821 (2 * n) + A012814 n).toNat

end

end A360609.P10476432143686855559

/-!
# A360610: Triangle read by rows: T(n,k) is the number of squares of side length k that can be placed inside a square of side length n without overlap, 1 <= k <= n.

The programs for A360610, the canonical program `A360610.P9311282744771957275` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360610 has offset 1).

The definition of A360610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360610.P2965631813621649581

`A010766(n+1)²`
-/

namespace A360610.P2965631813621649581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) ^ 2

end

end A360610.P2965631813621649581

namespace A360610

/-- `A010766(n+1)²` -/
def P2965631813621649581.Spec : Prop :=
  ∀ n, P2965631813621649581.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P2522030267592517251

`A174557(n+1)²`
-/

namespace A360610.P2522030267592517251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174557 (n + 1) ^ 2

end

end A360610.P2522030267592517251

namespace A360610

/-- `A174557(n+1)²` -/
def P2522030267592517251.Spec : Prop :=
  ∀ n, P2522030267592517251.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P9311282744771957275

`ceil(ratio[A074909(n)])²`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360610

/-- `ceil(ratio[A074909(n)])²` -/
def P9311282744771957275.Spec : Prop :=
  ∀ n, P9311282744771957275.a n = A360610 (n + 1)

theorem P9311282744771957275.correct : P9311282744771957275.Spec := by
  intro n
  simp only [A360610, Nat.add_sub_cancel]

end A360610

/-! ## A360610.P13531049393385289943

`ceil(ratio[A181971(n)])²`
-/

namespace A360610.P13531049393385289943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 2

end

end A360610.P13531049393385289943

namespace A360610

/-- `ceil(ratio[A181971(n)])²` -/
def P13531049393385289943.Spec : Prop :=
  ∀ n, P13531049393385289943.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P17297520553064049035

`(1-A050206(n+2))²`
-/

namespace A360610.P17297520553064049035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A050206 (n + 2)) ^ 2

end

end A360610.P17297520553064049035

namespace A360610

/-- `(1-A050206(n+2))²` -/
def P17297520553064049035.Spec : Prop :=
  ∀ n, P17297520553064049035.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P9855930321663704524

`floor(sqrt(A085383(n+1)))²`
-/

namespace A360610.P9855930321663704524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085383 (n + 1)) ^ 2

end

end A360610.P9855930321663704524

namespace A360610

/-- `floor(sqrt(A085383(n+1)))²` -/
def P9855930321663704524.Spec : Prop :=
  ∀ n, P9855930321663704524.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P3537041420100345680

`ceil(ratio[A029656(n+1)])²`
-/

namespace A360610.P3537041420100345680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 2

end

end A360610.P3537041420100345680

namespace A360610

/-- `ceil(ratio[A029656(n+1)])²` -/
def P3537041420100345680.Spec : Prop :=
  ∀ n, P3537041420100345680.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P12317943016379662384

`A358877(n+1)^(2/3)`
-/

namespace A360610.P12317943016379662384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A358877 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A360610.P12317943016379662384

namespace A360610

/-- `A358877(n+1)^(2/3)` -/
def P12317943016379662384.Spec : Prop :=
  ∀ n, P12317943016379662384.a n = (A360610 (n + 1) : ℝ)

end A360610

/-! ## A360610.P15247165956477399901

`A055461(A286235(n+1))`
-/

namespace A360610.P15247165956477399901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (A286235 (n + 1)).toNat

end

end A360610.P15247165956477399901

namespace A360610

/-- `A055461(A286235(n+1))` -/
def P15247165956477399901.Spec : Prop :=
  ∀ n, P15247165956477399901.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P6669055346195643826

`A055461(A286245(n+1))`
-/

namespace A360610.P6669055346195643826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (A286245 (n + 1)).toNat

end

end A360610.P6669055346195643826

namespace A360610

/-- `A055461(A286245(n+1))` -/
def P6669055346195643826.Spec : Prop :=
  ∀ n, P6669055346195643826.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P15174937296719263904

`A010783(A038722(n+1))²`
-/

namespace A360610.P15174937296719263904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A038722 (n + 1)).toNat ^ 2

end

end A360610.P15174937296719263904

namespace A360610

/-- `A010783(A038722(n+1))²` -/
def P15174937296719263904.Spec : Prop :=
  ∀ n, P15174937296719263904.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P12034546137772098251

`A010783(A061579(n)+1)²`
-/

namespace A360610.P12034546137772098251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A061579 n + 1).toNat ^ 2

end

end A360610.P12034546137772098251

namespace A360610

/-- `A010783(A061579(n)+1)²` -/
def P12034546137772098251.Spec : Prop :=
  ∀ n, P12034546137772098251.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P12336835728639916710

`A002260(A128489(n+1))²`
-/

namespace A360610.P12336835728639916710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A128489 (n + 1)).toNat ^ 2

end

end A360610.P12336835728639916710

namespace A360610

/-- `A002260(A128489(n+1))²` -/
def P12336835728639916710.Spec : Prop :=
  ∀ n, P12336835728639916710.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P16831010507812389483

`A123596(2*A010766(n+1))`
-/

namespace A360610.P16831010507812389483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (2 * A010766 (n + 1)).toNat

end

end A360610.P16831010507812389483

namespace A360610

/-- `A123596(2*A010766(n+1))` -/
def P16831010507812389483.Spec : Prop :=
  ∀ n, P16831010507812389483.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P2200541560503742883

`A358877(n+1)/A010766(n+1)`
-/

namespace A360610.P2200541560503742883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358877 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A360610.P2200541560503742883

namespace A360610

/-- `A358877(n+1)/A010766(n+1)` -/
def P2200541560503742883.Spec : Prop :=
  ∀ n, P2200541560503742883.a n = (A360610 (n + 1) : ℚ)

end A360610

/-! ## A360610.P12083179634771128911

`(A048158(n+1)-A234575(n+1))²`
-/

namespace A360610.P12083179634771128911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048158 (n + 1) - A234575 (n + 1)) ^ 2

end

end A360610.P12083179634771128911

namespace A360610

/-- `(A048158(n+1)-A234575(n+1))²` -/
def P12083179634771128911.Spec : Prop :=
  ∀ n, P12083179634771128911.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P14645618083336040652

`A242114(n+1)+A100613(A010766(n+1))`
-/

namespace A360610.P14645618083336040652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242114 (n + 1) + A100613 (A010766 (n + 1)).toNat

end

end A360610.P14645618083336040652

namespace A360610

/-- `A242114(n+1)+A100613(A010766(n+1))` -/
def P14645618083336040652.Spec : Prop :=
  ∀ n, P14645618083336040652.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P11999437379627161300

`(A234575(n+1)-A048158(n+1))*A010766(n+1)`
-/

namespace A360610.P11999437379627161300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A234575 (n + 1) - A048158 (n + 1)) * A010766 (n + 1)

end

end A360610.P11999437379627161300

namespace A360610

/-- `(A234575(n+1)-A048158(n+1))*A010766(n+1)` -/
def P11999437379627161300.Spec : Prop :=
  ∀ n, P11999437379627161300.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P13071415926024881771

`ceil(ratio[A029635(n)])²`
-/

namespace A360610.P13071415926024881771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 2

end

end A360610.P13071415926024881771

namespace A360610

/-- `ceil(ratio[A029635(n)])²` -/
def P13071415926024881771.Spec : Prop :=
  ∀ n, P13071415926024881771.a n = A360610 (n + 1)

end A360610

/-! ## A360610.P8363463303191362683

`A010766(n+1)*A010766(n+1)*A057427(n+1)`
-/

namespace A360610.P8363463303191362683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A010766 (n + 1) * A057427 (n + 1)

end

end A360610.P8363463303191362683

namespace A360610

/-- `A010766(n+1)*A010766(n+1)*A057427(n+1)` -/
def P8363463303191362683.Spec : Prop :=
  ∀ n, P8363463303191362683.a n = A360610 (n + 1)

end A360610

/-!
# A360611: Expansion of Sum_{k>=0} (k * x * (1 + x))^k.

The programs for A360611, there is no canonical definition to state claims against.
-/

/-! ## A360611.P16750819994031719185

`A001951(A052880(n))-A235682(n+1)`
-/

namespace A360611.P16750819994031719185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A052880 n).toNat - A235682 (n + 1)

end

end A360611.P16750819994031719185

/-!
# A360612: Number of binary operators defined on the finite chain L_n={0,1,...n}, C:L_n^2-> L_n, which are increasing in each argument, and satisfy the boundary conditions C(0,n)=C(n,0)=0 and C(n,n)=n.

The programs for A360612, there is no canonical definition to state claims against.
-/

/-! ## A360612.P14443320449524750338

`A008793(n+1)-A071095(n)`
-/

namespace A360612.P14443320449524750338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008793 (n + 1) - A071095 n

end

end A360612.P14443320449524750338

/-!
# A360613: Lexicographically earliest sequence of positive integers such that the products of the form a(2*u-1) * a(2*v) with u, v > 0 are all distinct.

The programs for A360613, there is no canonical definition to state claims against.
-/

/-! ## A360613.P10734910006567826735

`A360633(A055802(n+3))`
-/

namespace A360613.P10734910006567826735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360633 (A055802 (n + 3)).toNat

end

end A360613.P10734910006567826735

/-!
# A360614: Numerator of the average distance between consecutive 0-prepended prime indices of n; a(1) = 0.

The programs for A360614, there is no canonical definition to state claims against.
-/

/-! ## A360614.P8260431032007628295

`A360615(A122111(n+1))`
-/

namespace A360614.P8260431032007628295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A122111 (n + 1)).toNat

end

end A360614.P8260431032007628295

/-! ## A360614.P16425254158843864891

`A360615(A153212(n+1))`
-/

namespace A360614.P16425254158843864891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A153212 (n + 1)).toNat

end

end A360614.P16425254158843864891

/-! ## A360614.P9413591649148453907

`A360615(A241909(n+1))`
-/

namespace A360614.P9413591649148453907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A241909 (n + 1)).toNat

end

end A360614.P9413591649148453907

/-! ## A360614.P18103095069595582335

`A360615(n+1-A352491(n+1))`
-/

namespace A360614.P18103095069595582335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 ((n + 1 : ℤ) - A352491 (n + 1)).toNat

end

end A360614.P18103095069595582335

/-! ## A360614.P15761341907410966735

`A360615(A279356(n+1)%A316313(2*(n+2)))`
-/

namespace A360614.P15761341907410966735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (Int.tmod (A279356 (n + 1)) (A316313 (2 * (n + 2)))).toNat

end

end A360614.P15761341907410966735

/-!
# A360615: Denominator of the average distance between consecutive 0-prepended prime indices of n; a(1) = 0.

The programs for A360615, there is no canonical definition to state claims against.
-/

/-! ## A360615.P6267766685580490291

`A318573(A068795(n+1))`
-/

namespace A360615.P6267766685580490291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A068795 (n + 1)).toNat

end

end A360615.P6267766685580490291

/-! ## A360615.P13681371143858636821

`A360614(A122111(n+1))`
-/

namespace A360615.P13681371143858636821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A122111 (n + 1)).toNat

end

end A360615.P13681371143858636821

/-! ## A360615.P2065359110879171606

`A360614(A153212(n+1))`
-/

namespace A360615.P2065359110879171606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A153212 (n + 1)).toNat

end

end A360615.P2065359110879171606

/-! ## A360615.P2136303706675398416

`A360614(A241909(n+1))`
-/

namespace A360615.P2136303706675398416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A241909 (n + 1)).toNat

end

end A360615.P2136303706675398416

/-! ## A360615.P8527651235405182557

`A099245(2*A156552(n+1))`
-/

namespace A360615.P8527651235405182557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 (2 * A156552 (n + 1)).toNat

end

end A360615.P8527651235405182557

/-!
# A360616: Half the number of prime factors of n (counted with multiplicity, A001222), rounded down.

The programs for A360616, the canonical program `A360616.P10696445202273244239` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360616 has offset 1).

The definition of A360616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360616.P10696445202273244239

`floor(∑{e}[n+1, #/2])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360616

/-- `floor(∑{e}[n+1, #/2])` -/
def P10696445202273244239.Spec : Prop :=
  ∀ n, P10696445202273244239.a n = A360616 (n + 1)

theorem P10696445202273244239.correct : P10696445202273244239.Spec := by
  intro n
  simp only [A360616, Nat.add_sub_cancel]

end A360616

/-! ## A360616.P6945345706933056842

`val(2^∑{e}[n+1, #], 4)`
-/

namespace A360616.P6945345706933056842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 4

end

end A360616.P6945345706933056842

namespace A360616

/-- `val(2^∑{e}[n+1, #], 4)` -/
def P6945345706933056842.Spec : Prop :=
  ∀ n, (P6945345706933056842.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P72916978525530813

`val(∏{e}[n+1, 2^#], 4)`
-/

namespace A360616.P72916978525530813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 4

end

end A360616.P72916978525530813

namespace A360616

/-- `val(∏{e}[n+1, 2^#], 4)` -/
def P72916978525530813.Spec : Prop :=
  ∀ n, (P72916978525530813.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P17926064954980056936

`round(∑{e}[n+1, #]*acot(2))`
-/

namespace A360616.P17926064954980056936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) * SequenceMachineLib.acot (2 : ℝ))

end

end A360616.P17926064954980056936

namespace A360616

/-- `round(∑{e}[n+1, #]*acot(2))` -/
def P17926064954980056936.Spec : Prop :=
  ∀ n, P17926064954980056936.a n = A360616 (n + 1)

end A360616

/-! ## A360616.P4332490504391570345

`ceil((∑{e}[n+1, #]-1)/2)`
-/

namespace A360616.P4332490504391570345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℚ) / 2⌉

end

end A360616.P4332490504391570345

namespace A360616

/-- `ceil((∑{e}[n+1, #]-1)/2)` -/
def P4332490504391570345.Spec : Prop :=
  ∀ n, P4332490504391570345.a n = A360616 (n + 1)

end A360616

/-! ## A360616.P11570374727201417183

`floor(∑{e}[2*n-(n-1), #]/2)`
-/

namespace A360616.P11570374727201417183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 2⌋

end

end A360616.P11570374727201417183

namespace A360616

/-- `floor(∑{e}[2*n-(n-1), #]/2)` -/
def P11570374727201417183.Spec : Prop :=
  ∀ n, P11570374727201417183.a n = A360616 (n + 1)

end A360616

/-! ## A360616.P11695704259922922507

`val(A329602(n+1), 2)`
-/

namespace A360616.P11695704259922922507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329602 (n + 1)).toNat 2

end

end A360616.P11695704259922922507

namespace A360616

/-- `val(A329602(n+1), 2)` -/
def P11695704259922922507.Spec : Prop :=
  ∀ n, (P11695704259922922507.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P690818594850788055

`val(A061142(n+1), 4)`
-/

namespace A360616.P690818594850788055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061142 (n + 1)).toNat 4

end

end A360616.P690818594850788055

namespace A360616

/-- `val(A061142(n+1), 4)` -/
def P690818594850788055.Spec : Prop :=
  ∀ n, (P690818594850788055.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P5377973595482415790

`val(A124508(n+1), 4)`
-/

namespace A360616.P5377973595482415790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124508 (n + 1)).toNat 4

end

end A360616.P5377973595482415790

namespace A360616

/-- `val(A124508(n+1), 4)` -/
def P5377973595482415790.Spec : Prop :=
  ∀ n, (P5377973595482415790.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P873880463017635829

`val(A165827(n+1), 4)`
-/

namespace A360616.P873880463017635829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165827 (n + 1)).toNat 4

end

end A360616.P873880463017635829

namespace A360616

/-- `val(A165827(n+1), 4)` -/
def P873880463017635829.Spec : Prop :=
  ∀ n, (P873880463017635829.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P7344536613278005985

`val(A165831(n+1), 4)`
-/

namespace A360616.P7344536613278005985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165831 (n + 1)).toNat 4

end

end A360616.P7344536613278005985

namespace A360616

/-- `val(A165831(n+1), 4)` -/
def P7344536613278005985.Spec : Prop :=
  ∀ n, (P7344536613278005985.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P7434059571298728244

`val(A165835(n+1), 4)`
-/

namespace A360616.P7434059571298728244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165835 (n + 1)).toNat 4

end

end A360616.P7434059571298728244

namespace A360616

/-- `val(A165835(n+1), 4)` -/
def P7434059571298728244.Spec : Prop :=
  ∀ n, (P7434059571298728244.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P15956941436558213665

`val(A165839(n+1), 4)`
-/

namespace A360616.P15956941436558213665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165839 (n + 1)).toNat 4

end

end A360616.P15956941436558213665

namespace A360616

/-- `val(A165839(n+1), 4)` -/
def P15956941436558213665.Spec : Prop :=
  ∀ n, (P15956941436558213665.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P17214285766037293993

`val(A165843(n+1), 4)`
-/

namespace A360616.P17214285766037293993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165843 (n + 1)).toNat 4

end

end A360616.P17214285766037293993

namespace A360616

/-- `val(A165843(n+1), 4)` -/
def P17214285766037293993.Spec : Prop :=
  ∀ n, (P17214285766037293993.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P983082503861060629

`val(A165847(n+1), 4)`
-/

namespace A360616.P983082503861060629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165847 (n + 1)).toNat 4

end

end A360616.P983082503861060629

namespace A360616

/-- `val(A165847(n+1), 4)` -/
def P983082503861060629.Spec : Prop :=
  ∀ n, (P983082503861060629.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P5729742158184331404

`val(A165851(n+1), 4)`
-/

namespace A360616.P5729742158184331404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165851 (n + 1)).toNat 4

end

end A360616.P5729742158184331404

namespace A360616

/-- `val(A165851(n+1), 4)` -/
def P5729742158184331404.Spec : Prop :=
  ∀ n, (P5729742158184331404.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P18341289236730755937

`val(A165855(n+1), 4)`
-/

namespace A360616.P18341289236730755937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165855 (n + 1)).toNat 4

end

end A360616.P18341289236730755937

namespace A360616

/-- `val(A165855(n+1), 4)` -/
def P18341289236730755937.Spec : Prop :=
  ∀ n, (P18341289236730755937.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P8502393851201106616

`val(A165859(n+1), 4)`
-/

namespace A360616.P8502393851201106616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165859 (n + 1)).toNat 4

end

end A360616.P8502393851201106616

namespace A360616

/-- `val(A165859(n+1), 4)` -/
def P8502393851201106616.Spec : Prop :=
  ∀ n, (P8502393851201106616.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P12438820620868682234

`val(A165863(n+1), 4)`
-/

namespace A360616.P12438820620868682234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165863 (n + 1)).toNat 4

end

end A360616.P12438820620868682234

namespace A360616

/-- `val(A165863(n+1), 4)` -/
def P12438820620868682234.Spec : Prop :=
  ∀ n, (P12438820620868682234.a n : ℤ) = A360616 (n + 1)

end A360616

/-! ## A360616.P10369837226555483620

`val(A165867(n+1), 4)`
-/

namespace A360616.P10369837226555483620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165867 (n + 1)).toNat 4

end

end A360616.P10369837226555483620

namespace A360616

/-- `val(A165867(n+1), 4)` -/
def P10369837226555483620.Spec : Prop :=
  ∀ n, (P10369837226555483620.a n : ℤ) = A360616 (n + 1)

end A360616

/-!
# A360617: Half the number of prime factors of n (counted with multiplicity, A001222), rounded up.

The programs for A360617, there is no canonical definition to state claims against.
-/

/-! ## A360617.P12966670039649608098

`ceil(∑{e}[n+1, #/2])`
-/

namespace A360617.P12966670039649608098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / 2⌉

end

end A360617.P12966670039649608098

/-! ## A360617.P13258035926561074296

`round(∑{e}[n+1, #/2])`
-/

namespace A360617.P13258035926561074296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / 2)

end

end A360617.P13258035926561074296

/-! ## A360617.P1582510782764765190

`round(γ*∑{e}[n+1, #])`
-/

namespace A360617.P1582510782764765190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant * ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))

end

end A360617.P1582510782764765190

/-! ## A360617.P3999992208886027864

`round(∑{e}[n+1, #]^γ)`
-/

namespace A360617.P3999992208886027864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) ^ Real.eulerMascheroniConstant)

end

end A360617.P3999992208886027864

/-! ## A360617.P8785587843915424717

`floor(∑{e}[n+1, #]^log(2))`
-/

namespace A360617.P8785587843915424717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) ^ (Real.log (2 : ℝ))⌋

end

end A360617.P8785587843915424717

/-! ## A360617.P4148236445747260305

`round(∑{e}[n+1, #]*cos(1))`
-/

namespace A360617.P4148236445747260305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) * Real.cos (1 : ℝ))

end

end A360617.P4148236445747260305

/-! ## A360617.P12313443984685922726

`ceil(∑{e}[n+1, #]*acot(2))`
-/

namespace A360617.P12313443984685922726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) * SequenceMachineLib.acot (2 : ℝ)⌉

end

end A360617.P12313443984685922726

/-! ## A360617.P10990408802350242896

`floor((∑{e}[n+1, #]+1)/2)`
-/

namespace A360617.P10990408802350242896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℚ) / 2⌋

end

end A360617.P10990408802350242896

/-! ## A360617.P12165129917161028935

`val((∑{e}[n+1, #]+3)!, 4)`
-/

namespace A360617.P12165129917161028935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 3)) 4

end

end A360617.P12165129917161028935

/-! ## A360617.P8887349743631326578

`ceil(∑{e}[2*n-(n-1), #]/2)`
-/

namespace A360617.P8887349743631326578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 2⌉

end

end A360617.P8887349743631326578

/-!
# A360618: Expansion of Sum_{k>=0} (k * x * (1 + k*x))^k.

The programs for A360618, there is no canonical definition to state claims against.
-/

/-! ## A360618.P17514819487667479311

`A106249(n^(n+1)+n)`
-/

namespace A360618.P17514819487667479311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (n ^ (n + 1) + n)

end

end A360618.P17514819487667479311

/-!
# A360620: Number of basic cyclotomic generating functions of degree n.

The programs for A360620, there is no canonical definition to state claims against.
-/

/-! ## A360620.P4124221066246617727

`A362553(n)%A179793(2*(n+1))`
-/

namespace A360620.P4124221066246617727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362553 n) (A179793 (2 * (n + 1)))

end

end A360620.P4124221066246617727

/-! ## A360620.P10581039559679425784

`A362553(n)+A097806(A083575(n))`
-/

namespace A360620.P10581039559679425784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362553 n + A097806 (A083575 n).toNat

end

end A360620.P10581039559679425784

/-! ## A360620.P14213817687970766350

`A362553(n)%A006889(A006456(n))`
-/

namespace A360620.P14213817687970766350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362553 n) (A006889 (A006456 n).toNat)

end

end A360620.P14213817687970766350

/-! ## A360620.P4755879929514817167

`lcm(A008683(A362525(n)), A362553(n))`
-/

namespace A360620.P4755879929514817167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A362525 n).toNat) (A362553 n)

end

end A360620.P4755879929514817167

/-! ## A360620.P8038956847401322628

`A362553(n)+A341995(A080567(n+1))`
-/

namespace A360620.P8038956847401322628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362553 n + A341995 (A080567 (n + 1)).toNat

end

end A360620.P8038956847401322628

/-!
# A360621: Number of basic unimodal cyclotomic generating functions of degree n.

The programs for A360621, there is no canonical definition to state claims against.
-/

/-! ## A360621.P6395845762743142709

`A328960(n)+A101888(A000041(n))`
-/

namespace A360621.P6395845762743142709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328960 n + A101888 (A000041 n).toNat

end

end A360621.P6395845762743142709

/-! ## A360621.P6005875385965867781

`A306202(A004101(n))-A326594(n)`
-/

namespace A360621.P6005875385965867781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A004101 n).toNat - A326594 n

end

end A360621.P6005875385965867781

/-! ## A360621.P14760977415620154650

`A259899(A116383(n))`
-/

namespace A360621.P14760977415620154650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A116383 n).toNat

end

end A360621.P14760977415620154650

/-! ## A360621.P9138710149950000293

`A368728(A066815(n))`
-/

namespace A360621.P9138710149950000293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A066815 n).toNat

end

end A360621.P9138710149950000293

/-! ## A360621.P5245888475699329620

`A364274(A097097(n))`
-/

namespace A360621.P5245888475699329620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364274 (A097097 n).toNat

end

end A360621.P5245888475699329620

/-!
# A360622: Number of basic log-concave (with no internal zeros) cyclotomic generating functions of degree n.

The programs for A360622, there is no canonical definition to state claims against.
-/

/-! ## A360622.P13088129614620246261

`A328335(A008633(n))`
-/

namespace A360622.P13088129614620246261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A008633 n).toNat

end

end A360622.P13088129614620246261

/-! ## A360622.P10261523114682498230

`A328335(A008639(n))`
-/

namespace A360622.P10261523114682498230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A008639 n).toNat

end

end A360622.P10261523114682498230

/-! ## A360622.P9322550430515374729

`A328335(A035999(n))`
-/

namespace A360622.P9322550430515374729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A035999 n).toNat

end

end A360622.P9322550430515374729

/-! ## A360622.P9181516790351478402

`A328335(A218510(n))`
-/

namespace A360622.P9181516790351478402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A218510 n).toNat

end

end A360622.P9181516790351478402

/-! ## A360622.P8095576177549202403

`A328335(A238868(n))`
-/

namespace A360622.P8095576177549202403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A238868 n).toNat

end

end A360622.P8095576177549202403

/-!
# A360624: Number of strong dichotomy patterns in Z/2nZ, i.e., bicolor patterns of Z/2nZ with respect to the action of Aff(Z/2nZ) with trivial isotropy group.

The programs for A360624, there is no canonical definition to state claims against.
-/

/-! ## A360624.P7016272737386087725

`A352745(A120517(2-(4/2-a(n-1)-a(n-2))))` with `a(0)=1, a(1)=0`
-/

namespace A360624.P7016272737386087725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A352745 (A120517 (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))).toNat).toNat

end

end A360624.P7016272737386087725

/-! ## A360624.P2620737105456674707

`A285108(A337516(n+2)+A024629(n))`
-/

namespace A360624.P2620737105456674707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285108 (A337516 (n + 2) + A024629 n).toNat

end

end A360624.P2620737105456674707

/-!
# A360626: Number of multisets of nonempty words over binary alphabet where each letter occurs n times.

The programs for A360626, there is no canonical definition to state claims against.
-/

/-! ## A360626.P1989519177988798374

`A055375(∑[4*n])`
-/

namespace A360626.P1989519177988798374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055375 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360626.P1989519177988798374

/-! ## A360626.P1783903150203708525

`record[A003982(n)*A055375(n)]`
-/

namespace A360626.P1783903150203708525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A055375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360626.P1783903150203708525

/-! ## A360626.P16052749106379114911

`or(A000007(n), A055375(A046092(n)))`
-/

namespace A360626.P16052749106379114911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055375 (A046092 n).toNat)

end

end A360626.P16052749106379114911

/-! ## A360626.P14520843479425021691

`A055375(A046092(n))+A000038(3*n+4)`
-/

namespace A360626.P14520843479425021691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055375 (A046092 n).toNat + A000038 (3 * n + 4)

end

end A360626.P14520843479425021691

/-! ## A360626.P17151937261213151626

`A055375(A046092(n))%A309056(3*n+2)`
-/

namespace A360626.P17151937261213151626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055375 (A046092 n).toNat) (A309056 (3 * n + 2))

end

end A360626.P17151937261213151626

/-!
# A360627: Odd bisection of A360613: a(n) = A360613(2*n-1).

The programs for A360627, there is no canonical definition to state claims against.
-/

/-! ## A360627.P15332875541653204616

`A360613(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360627.P15332875541653204616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (2 * n + 1)

end

end A360627.P15332875541653204616

/-! ## A360627.P6343499752646288484

`A360633(∑[n]+1)`
-/

namespace A360627.P6343499752646288484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360633 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A360627.P6343499752646288484

/-! ## A360627.P894532795581867899

`record[A360613(n+1)/(-1)^n]`
-/

namespace A360627.P894532795581867899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360613 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360627.P894532795581867899

/-! ## A360627.P10688139805519344305

`record[A360613(A029579(n))]`
-/

namespace A360627.P10688139805519344305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360627.P10688139805519344305

/-! ## A360627.P12165868077215431795

`record[A360613(A141310(n))]`
-/

namespace A360627.P12165868077215431795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360627.P12165868077215431795

/-! ## A360627.P6628244966845840997

`record[A360613(A000265(n+1))]`
-/

namespace A360627.P6628244966845840997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360627.P6628244966845840997

/-! ## A360627.P7778815182376417349

`record[A360613(A028234(n+1))]`
-/

namespace A360627.P7778815182376417349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360627.P7778815182376417349

/-! ## A360627.P17887914105869213781

`record[A360613(gcd(n, A035363(n)))]`
-/

namespace A360627.P17887914105869213781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (Int.gcd (n : ℤ) (A035363 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360627.P17887914105869213781

/-! ## A360627.P2965761329123446923

`A059252(A062880(A360613(n+1+n)))`
-/

namespace A360627.P2965761329123446923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A062880 (A360613 (n + 1 + n)).toNat).toNat

end

end A360627.P2965761329123446923

/-!
# A360628: Even bisection of A360613: a(n) = A360613(2*n).

The programs for A360628, there is no canonical definition to state claims against.
-/

/-! ## A360628.P18123615734258263245

`A360633(∑[n+1])`
-/

namespace A360628.P18123615734258263245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360628.P18123615734258263245

/-! ## A360628.P15671037339809158399

`A360613(2*(n+1))`
-/

namespace A360628.P15671037339809158399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (2 * (n + 1))

end

end A360628.P15671037339809158399

/-! ## A360628.P18012676480849058943

`record[A360613(2^(log2(n+1)-val(n+1, 2))+1)]`
-/

namespace A360628.P18012676480849058943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360628.P18012676480849058943

/-! ## A360628.P16570982679068971900

`A000027(A360633(C(n+2, 2)))`
-/

namespace A360628.P16570982679068971900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A360633 (Nat.choose (n + 2) 2)).toNat

end

end A360628.P16570982679068971900

/-! ## A360628.P9522214257956127743

`A028310(A360613(Δ[n²]+1))`
-/

namespace A360628.P9522214257956127743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A360613 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A360628.P9522214257956127743

/-! ## A360628.P17954644438515322692

`record[A360613(A000265(n+1)+1)]`
-/

namespace A360628.P17954644438515322692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360628.P17954644438515322692

/-! ## A360628.P17160816903955801707

`record[A360613(A028234(n+1)+1)]`
-/

namespace A360628.P17160816903955801707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (A028234 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360628.P17160816903955801707

/-! ## A360628.P4431842668161632104

`record[A360613(n+3)-A035363(n)]`
-/

namespace A360628.P4431842668161632104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360613 (n + 3) - A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360628.P4431842668161632104

/-! ## A360628.P8407524554863860600

`record[A360613(n+1)/A040001(n)]`
-/

namespace A360628.P8407524554863860600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360613 (n + 1) : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360628.P8407524554863860600

/-! ## A360628.P8520327798400230400

`record[gcd(A035363(n), A360613(n+1))]`
-/

namespace A360628.P8520327798400230400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A360613 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360628.P8520327798400230400

/-!
# A360629: Triangle read by rows: T(n,k) is the number of sets of integer-sided rectangular pieces that can tile an n X k rectangle, 1 <= k <= n.

The programs for A360629, there is no canonical definition to state claims against.
-/

/-! ## A360629.P8354102326572875517

`A349575(n+1)+A327695(A306847(n))`
-/

namespace A360629.P8354102326572875517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349575 (n + 1) + A327695 (A306847 n).toNat

end

end A360629.P8354102326572875517

/-! ## A360629.P2156934903813743075

`A349575(A082743(n))`
-/

namespace A360629.P2156934903813743075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349575 (A082743 n).toNat

end

end A360629.P2156934903813743075

/-! ## A360629.P17960771973782047973

`A349575(A381225(n))`
-/

namespace A360629.P17960771973782047973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349575 (A381225 n).toNat

end

end A360629.P17960771973782047973

/-! ## A360629.P14896551704013711815

`A349575(A001104(n+1))`
-/

namespace A360629.P14896551704013711815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349575 (A001104 (n + 1)).toNat

end

end A360629.P14896551704013711815

/-! ## A360629.P231874745259666475

`A349575(A002998(n+1))`
-/

namespace A360629.P231874745259666475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349575 (A002998 (n + 1)).toNat

end

end A360629.P231874745259666475

/-!
# A360630: Number of sets of integer-sided rectangular pieces that can tile an n X n square.

The programs for A360630, there is no canonical definition to state claims against.
-/

/-! ## A360630.P1805505213944004027

`A360629(∑[n+1])`
-/

namespace A360630.P1805505213944004027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360630.P1805505213944004027

/-! ## A360630.P6619218093268461764

`record[A360629(A061579(n)+1)]`
-/

namespace A360630.P6619218093268461764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360629 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360630.P6619218093268461764

/-! ## A360630.P13520319439272706274

`record[A360629(n+1)/A104709(n)]`
-/

namespace A360630.P13520319439272706274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360629 (n + 1) : ℚ) / (A104709 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360630.P13520319439272706274

/-!
# A360631: Number of sets of integer-sided rectangular pieces that can tile a 2 X n rectangle.

The programs for A360631, there is no canonical definition to state claims against.
-/

/-! ## A360631.P14173996483525029167

`A349575(A089071(n+1))`
-/

namespace A360631.P14173996483525029167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349575 (A089071 (n + 1)).toNat

end

end A360631.P14173996483525029167

/-! ## A360631.P14025432942273758578

`A360629(A133263(n)-n)`
-/

namespace A360631.P14025432942273758578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360629 (A133263 n - (n : ℤ)).toNat

end

end A360631.P14025432942273758578

/-!
# A360632: Number of sets of integer-sided rectangular pieces that can tile a 3 X n rectangle.

The programs for A360632, there is no canonical definition to state claims against.
-/

/-! ## A360632.P16313189510673819930

`A185958(A285927(n)-A065199(n+1))`
-/

namespace A360632.P16313189510673819930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185958 (A285927 n - A065199 (n + 1)).toNat

end

end A360632.P16313189510673819930

/-!
# A360633: Square array A(n, k), n, k > 0, read by antidiagonals upwards; A(n, k) = A360613(2*n-1) * A360613(2*k).

The programs for A360633, there is no canonical definition to state claims against.
-/

/-! ## A360633.P6596091955449304743

`A129258(A008554(n+1)+1)`
-/

namespace A360633.P6596091955449304743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129258 (A008554 (n + 1) + 1).toNat

end

end A360633.P6596091955449304743

/-! ## A360633.P5218580722072498003

`A129258(A229621(n+1)+1)`
-/

namespace A360633.P5218580722072498003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129258 (A229621 (n + 1) + 1).toNat

end

end A360633.P5218580722072498003

/-! ## A360633.P15122568579641861153

`A129258(n+1)+A000007(A000032(n))`
-/

namespace A360633.P15122568579641861153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129258 (n + 1) + A000007 (A000032 n).toNat

end

end A360633.P15122568579641861153

/-! ## A360633.P11276459551790202961

`A129258(n+1)+A129251(A001845(n))`
-/

namespace A360633.P11276459551790202961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129258 (n + 1) + A129251 (A001845 n).toNat

end

end A360633.P11276459551790202961

/-!
# A360635: a(n) is the smallest nonnegative integer that satisfies p(a(n)+1) - p(a(n)) >= n, where p denotes the number partition function.

The programs for A360635, there is no canonical definition to state claims against.
-/

/-! ## A360635.P245114649742193959

`comp[A002865(n)+n]-n`
-/

namespace A360635.P245114649742193959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P245114649742193959

/-! ## A360635.P12465011948852364791

`comp[A240019(n)+n]-n`
-/

namespace A360635.P12465011948852364791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240019 (n + 10) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P12465011948852364791

/-! ## A360635.P15293219285470040175

`comp[A240017(n+8)+n]-n`
-/

namespace A360635.P15293219285470040175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240017 (n + 8) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P15293219285470040175

/-! ## A360635.P11900248334035313368

`comp[A240018(n+9)+n]-n`
-/

namespace A360635.P11900248334035313368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240018 (n + 9) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P11900248334035313368

/-! ## A360635.P934421601251287721

`comp[∑[Δ[A232697(n)]+1]]-n`
-/

namespace A360635.P934421601251287721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P934421601251287721

/-! ## A360635.P12361620210914843221

`comp[Δ[A000041(n)+∑[n]]]-n`
-/

namespace A360635.P12361620210914843221
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P12361620210914843221

/-! ## A360635.P9512733781830136298

`comp[Δ[A000065(n)]+n+1]-n`
-/

namespace A360635.P9512733781830136298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P9512733781830136298

/-! ## A360635.P16723225798478713019

`comp[A036000(n+1)+n+1]-n`
-/

namespace A360635.P16723225798478713019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036000 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P16723225798478713019

/-! ## A360635.P11139106256849600524

`comp[A222730(A001844(n))+n-1]-n`
-/

namespace A360635.P11139106256849600524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A001844 n).toNat + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360635.P11139106256849600524

/-!
# A360638: Number of sets of nonempty words over binary alphabet where each letter occurs n times.

The programs for A360638, there is no canonical definition to state claims against.
-/

/-! ## A360638.P11827844842502633331

`A360634(∑[4*n])`
-/

namespace A360638.P11827844842502633331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360638.P11827844842502633331

/-! ## A360638.P17999509484106672972

`record[A360634((n+2)*floor(n/2))]`
-/

namespace A360638.P17999509484106672972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360634 ((n + 2 : ℤ) * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360638.P17999509484106672972

/-! ## A360638.P6044690321939714620

`record[A360634(2*n)/A325008(n+1)]`
-/

namespace A360638.P6044690321939714620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360634 (2 * n) : ℚ) / (A325008 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360638.P6044690321939714620

/-! ## A360638.P13720110460114795714

`record[A360634(n)/A055151(2*n+1)]`
-/

namespace A360638.P13720110460114795714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360634 n : ℚ) / (A055151 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360638.P13720110460114795714

/-!
# A360639: Numbers k such that k and k+2 are both A000120-perfect numbers (A175522).

The programs for A360639, the canonical program `A360639.P11777009454422486410` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360639 has offset 1).

The definition of A360639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360639.P11777009454422486410

`∩[A175522(n+1)-2, A175522(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360639

/-- `∩[A175522(n+1)-2, A175522(n+1)]` -/
def P11777009454422486410.Spec : Prop :=
  ∀ n, (P11777009454422486410.a n : ℤ) = A360639 (n + 1)

theorem P11777009454422486410.correct : P11777009454422486410.Spec := by
  intro n
  simp only [A360639, Nat.add_sub_cancel]

end A360639

/-!
# A360641: Numbers k where A093653(k)/A000120(k) sets a new record.

The programs for A360641, there is no canonical definition to state claims against.
-/

/-! ## A360641.P8038515625414710314

`record[A103684(n+1)*A206941(A325798(n+1))]`
-/

namespace A360641.P8038515625414710314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103684 (n + 1) * A206941 (A325798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360641.P8038515625414710314

/-! ## A360641.P2763833039818928156

`A222639(n²)+A139250(n)`
-/

namespace A360641.P2763833039818928156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222639 (n ^ 2) + A139250 n

end

end A360641.P2763833039818928156

/-! ## A360641.P10995544129320861299

`A196879(A072346(n))+A139250(n)`
-/

namespace A360641.P10995544129320861299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A072346 n).toNat + A139250 n

end

end A360641.P10995544129320861299

/-! ## A360641.P10394742640868565810

`A375732(A005220(n))+A139250(n)`
-/

namespace A360641.P10394742640868565810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375732 (A005220 n).toNat + A139250 n

end

end A360641.P10394742640868565810

/-! ## A360641.P4370335974831071530

`A382216(A006820(n))+A139250(n)`
-/

namespace A360641.P4370335974831071530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382216 (A006820 n).toNat + A139250 n

end

end A360641.P4370335974831071530

/-!
# A360643: a(n) is the least A000120-perfect number (A175522) whose binary weight (A000120) is n, or 0 if no such number exists.

The programs for A360643, there is no canonical definition to state claims against.
-/

/-! ## A360643.P11720384228248188639

`A000040(A000523(a(n-1)+10^(n-1)))²` with `a(0)=2, a(1)=0`
-/

namespace A360643.P11720384228248188639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  A000040 (A000523 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat).toNat ^ 2

end

end A360643.P11720384228248188639

/-!
# A360645: Number of 4-dimensional tilings of a 2 X 2 X 2 X n box with 2 X 2 X 1 X 1 plates.

The programs for A360645, the canonical program `A360645.P7777961560816828292` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360645 has offset 0).

The definition of A360645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360645.P7777961560816828292

`5*a(n-1)+15*a(n-2)-18*a(n-3)` with `a(0)=1, a(1)=3, a(2)=30`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360645

/-- `5*a(n-1)+15*a(n-2)-18*a(n-3)` -/
def P7777961560816828292.Spec : Prop :=
  ∀ n, P7777961560816828292.a n = A360645 n

theorem P7777961560816828292.correct : P7777961560816828292.Spec := by
  intro n
  simp only [A360645]

end A360645

/-!
# A360648: Fully multiplicative with a(A027697(k)) = A027699(k) and a(A027699(k)) = A027697(k) for any k > 0.

The programs for A360648, there is no canonical definition to state claims against.
-/

/-! ## A360648.P12822070240937899403

`A359677(A007775(2*n+1))+A061898(n+1)`
-/

namespace A360648.P12822070240937899403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359677 (A007775 (2 * n + 1)).toNat + A061898 (n + 1)

end

end A360648.P12822070240937899403

/-! ## A360648.P8062559060689679737

`A234743(A234743(A234840(A234743(A064614(n+1)))))`
-/

namespace A360648.P8062559060689679737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234743 (A234743 (A234840 (A234743 (A064614 (n + 1)).toNat).toNat).toNat).toNat

end

end A360648.P8062559060689679737

/-!
# A360649: The exponents that occur in the greedy representation of 1/2 as a sum of powers of 2/3.

The programs for A360649, there is no canonical definition to state claims against.
-/

/-! ## A360649.P16664146987068405735

`A077468(n+2)-1`
-/

namespace A360649.P16664146987068405735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (n + 2) - 1

end

end A360649.P16664146987068405735

/-! ## A360649.P17287290218159463632

`eq[1, Δ[A058840(n)]]`
-/

namespace A360649.P17287290218159463632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360649.P17287290218159463632

/-! ## A360649.P9352755137665420149

`A073536(n+1)-1`
-/

namespace A360649.P9352755137665420149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073536 (n + 1) - 1

end

end A360649.P9352755137665420149

/-! ## A360649.P7797093914140601302

`∑[A058841(n+1)+1]`
-/

namespace A360649.P7797093914140601302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058841 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360649.P7797093914140601302

/-! ## A360649.P12724211227539420017

`∑[abs(Δ[A077468(n+1)])]`
-/

namespace A360649.P12724211227539420017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360649.P12724211227539420017

/-! ## A360649.P10260817587541132316

`lt[acot(n), A058840(n+1)]`
-/

namespace A360649.P10260817587541132316
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A360649.P10260817587541132316

/-! ## A360649.P18364348811349250027

`A023443(A073536(n+1))`
-/

namespace A360649.P18364348811349250027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073536 (n + 1)).toNat

end

end A360649.P18364348811349250027

/-! ## A360649.P11769684243022516959

`A023443(A077468(n+2))`
-/

namespace A360649.P11769684243022516959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077468 (n + 2)).toNat

end

end A360649.P11769684243022516959

/-! ## A360649.P5499614247293555937

`∑[A005496(A058841(n+1))]`
-/

namespace A360649.P5499614247293555937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A058841 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360649.P5499614247293555937

/-! ## A360649.P11996492562958994637

`eq[A054977(n), A058840(n+1)]`
-/

namespace A360649.P11996492562958994637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360649.P11996492562958994637

/-!
# A360650: Number of sets of nonempty words over binary alphabet with a total of n letters of which 2 are the first letter.

The programs for A360650, there is no canonical definition to state claims against.
-/

/-! ## A360650.P13169380796528586856

`∑[A347609(∑[A138366(2*n+3)])-1]`
-/

namespace A360650.P13169380796528586856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138366 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360650.P13169380796528586856

/-! ## A360650.P15331948956826180761

`A366971(n+1)+A124760(A000142(n))`
-/

namespace A360650.P15331948956826180761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366971 (n + 1) + A124760 (A000142 n).toNat

end

end A360650.P15331948956826180761

/-! ## A360650.P10407199845509834416

`A366971(n+1)+A360678(A301700(n+1))`
-/

namespace A360650.P10407199845509834416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366971 (n + 1) + A360678 (A301700 (n + 1)).toNat

end

end A360650.P10407199845509834416

/-!
# A360651: Triangle T(n, m) = (n - m + 1)*C(2*n + 1, m)*C(2*n - m + 2, n - m + 1)/(2*n - m + 2).

The programs for A360651, there is no canonical definition to state claims against.
-/

/-! ## A360651.P15355366148867118947

`(∑[2*char[∑[n]]]-1)*A085880(n)`
-/

namespace A360651.P15355366148867118947
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A085880 n

end

end A360651.P15355366148867118947

/-! ## A360651.P5245389152869303525

`A085880(n)*A131507(n)`
-/

namespace A360651.P5245389152869303525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 n * A131507 n

end

end A360651.P5245389152869303525

/-! ## A360651.P12018466986428138329

`A091042(n)*A135573(n)`
-/

namespace A360651.P12018466986428138329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n * A135573 n

end

end A360651.P12018466986428138329

/-! ## A360651.P8344315577130821061

`A122366(n)*A176992(n)`
-/

namespace A360651.P8344315577130821061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 n * A176992 n

end

end A360651.P8344315577130821061

/-! ## A360651.P4918268857477604263

`A132775(n)*A168256(n)`
-/

namespace A360651.P4918268857477604263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132775 n * A168256 n

end

end A360651.P4918268857477604263

/-!
# A360652: Primes of the form x^2 + 432*y^2.

The programs for A360652, there is no canonical definition to state claims against.
-/

/-! ## A360652.P16570252570784771388

`∩[A014752(n+1), A107008(n+1)]`
-/

namespace A360652.P16570252570784771388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P16570252570784771388

/-! ## A360652.P10511593755293949372

`∩[A016108(n+1), A107008(n+1)]`
-/

namespace A360652.P10511593755293949372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P10511593755293949372

/-! ## A360652.P8572608447972526639

`∩[A014752(n+1), A332227(n+1)]`
-/

namespace A360652.P8572608447972526639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P8572608447972526639

/-! ## A360652.P11740620721005870546

`∩[A007519(n+1), A014752(n+1)]`
-/

namespace A360652.P11740620721005870546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P11740620721005870546

/-! ## A360652.P14037751815805000231

`∩[A007519(n+1), A016108(n+1)]`
-/

namespace A360652.P14037751815805000231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P14037751815805000231

/-! ## A360652.P4695751081270482991

`∩[A014752(n+1), A045390(n+1)]`
-/

namespace A360652.P4695751081270482991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P4695751081270482991

/-! ## A360652.P4760217996128082516

`∩[A016108(n+1), A045390(n+1)]`
-/

namespace A360652.P4760217996128082516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P4760217996128082516

/-! ## A360652.P14660523384219491022

`∩[A014752(n+1), A209544(n+1)]`
-/

namespace A360652.P14660523384219491022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P14660523384219491022

/-! ## A360652.P11875535944127210927

`∩[A016108(n+1), A209544(n+1)]`
-/

namespace A360652.P11875535944127210927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P11875535944127210927

/-! ## A360652.P17306625111279398732

`∩[A014752(n+1), A130063(n+1)]`
-/

namespace A360652.P17306625111279398732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P17306625111279398732

/-! ## A360652.P9687229464750573310

`∩[A016108(n+1), A130063(n+1)]`
-/

namespace A360652.P9687229464750573310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P9687229464750573310

/-! ## A360652.P11954987237354150398

`∩[A014752(n+1), A354084(n+1)]`
-/

namespace A360652.P11954987237354150398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P11954987237354150398

/-! ## A360652.P9921762989559580545

`∩[A016108(n+1), A354084(n+1)]`
-/

namespace A360652.P9921762989559580545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P9921762989559580545

/-! ## A360652.P4925973934101487847

`∩[A004625(n+1), A014752(n+1)]`
-/

namespace A360652.P4925973934101487847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P4925973934101487847

/-! ## A360652.P911948117959949074

`∩[A016108(n+1), A332227(n+1)]`
-/

namespace A360652.P911948117959949074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P911948117959949074

/-! ## A360652.P15828157158156231069

`∩[A014752(n+1), A332226(n+1)]`
-/

namespace A360652.P15828157158156231069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P15828157158156231069

/-! ## A360652.P13332565285259575187

`∩[A040992(n+1), A068228(n+1)]`
-/

namespace A360652.P13332565285259575187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P13332565285259575187

/-! ## A360652.P12281073411000014497

`∩[A040992(n+1), A106950(n+1)]`
-/

namespace A360652.P12281073411000014497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P12281073411000014497

/-! ## A360652.P1758745355803358678

`∩[A040992(n+1), A107008(n+1)]`
-/

namespace A360652.P1758745355803358678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P1758745355803358678

/-! ## A360652.P16523185610997941019

`∩[A040992(n+1), A141170(n+1)]`
-/

namespace A360652.P16523185610997941019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360652.P16523185610997941019

/-!
# A360653: Irregular table read by rows; the first row contains the value 1, and for n > 1, the n-th row lists the numbers of the form binomial(m-1, k) such that binomial(m, k) = n.

The programs for A360653, there is no canonical definition to state claims against.
-/

/-! ## A360653.P5947351863114128936

`A302045(A008578(3*n+5)*A353383(n))`
-/

namespace A360653.P5947351863114128936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A008578 (3 * n + 5) * A353383 n).toNat

end

end A360653.P5947351863114128936

/-! ## A360653.P4155008807967138296

`A043555(A053121(n)*A080014(n))`
-/

namespace A360653.P4155008807967138296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (A053121 n * A080014 n).toNat

end

end A360653.P4155008807967138296

/-! ## A360653.P6160374585874272561

`A000120(gcd(A002531(n), A319797(n+1)))`
-/

namespace A360653.P6160374585874272561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.gcd (A002531 n) (A319797 (n + 1)))

end

end A360653.P6160374585874272561

/-! ## A360653.P17738406355373214720

`A243613(A031121(A243614(A000045(n+2))))`
-/

namespace A360653.P17738406355373214720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243613 (A031121 (A243614 (A000045 (n + 2)).toNat).toNat).toNat

end

end A360653.P17738406355373214720

/-! ## A360653.P6733126801100774673

`gcd(A000537(A000537(n)), A026233(n+1))`
-/

namespace A360653.P6733126801100774673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000537 (A000537 n).toNat) (A026233 (n + 1))

end

end A360653.P6733126801100774673

/-!
# A360654: Irregular table read by rows; for n > 1, the n-th row lists the numbers of the form binomial(m, k-1) such that binomial(m, k) = n.

The programs for A360654, there is no canonical definition to state claims against.
-/

/-! ## A360654.P5775660456059473317

`A360655(n+2)-A024745(n+1)`
-/

namespace A360654.P5775660456059473317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360655 (n + 2) - A024745 (n + 1)

end

end A360654.P5775660456059473317

/-! ## A360654.P15000539109926441439

`A360655(n+2)-A007318(A128373(n+2))`
-/

namespace A360654.P15000539109926441439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360655 (n + 2) - A007318 (A128373 (n + 2)).toNat

end

end A360654.P15000539109926441439

/-! ## A360654.P9605267596058356983

`A360655(n+2)-A135227(A128373(10/5+n))`
-/

namespace A360654.P9605267596058356983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360655 (n + 2) - A135227 (A128373 (SequenceMachineLib.roundAway ((10 : ℚ) / 5 + (n : ℚ))).toNat).toNat

end

end A360654.P9605267596058356983

/-! ## A360654.P9060009359702242029

`A360655(n+2)-A135227(A128373(n+2))%A017449(n)`
-/

namespace A360654.P9060009359702242029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360655 (n + 2) - Int.tmod (A135227 (A128373 (n + 2)).toNat) (A017449 n)

end

end A360654.P9060009359702242029

/-! ## A360654.P8809570205209558097

`A360655(n+2)-A033999(n)²*A135227(A128373(n+2))`
-/

namespace A360654.P8809570205209558097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360655 (n + 2) - A033999 n ^ 2 * A135227 (A128373 (n + 2)).toNat

end

end A360654.P8809570205209558097

/-!
# A360655: Irregular table read by rows; for n > 1, the n-th row lists the numbers of the form binomial(m+1, k) such that binomial(m, k) = n.

The programs for A360655, there is no canonical definition to state claims against.
-/

/-! ## A360655.P784274663410291372

`A360654(n+2)+A024745(n+1)`
-/

namespace A360655.P784274663410291372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360654 (n + 2) + A024745 (n + 1)

end

end A360655.P784274663410291372

/-! ## A360655.P4702012255087352513

`A360654(n+2)+A007318(A128373(n+2))`
-/

namespace A360655.P4702012255087352513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360654 (n + 2) + A007318 (A128373 (n + 2)).toNat

end

end A360655.P4702012255087352513

/-! ## A360655.P4984168803968258955

`A360654(n+2)+A135227(A128373(10/5+n))`
-/

namespace A360655.P4984168803968258955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360654 (n + 2) + A135227 (A128373 (SequenceMachineLib.roundAway ((10 : ℚ) / 5 + (n : ℚ))).toNat).toNat

end

end A360655.P4984168803968258955

/-! ## A360655.P10266343417062916092

`A360654(n+2)+A135227(A128373(n+2))%A017449(n)`
-/

namespace A360655.P10266343417062916092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360654 (n + 2) + Int.tmod (A135227 (A128373 (n + 2)).toNat) (A017449 n)

end

end A360655.P10266343417062916092

/-! ## A360655.P6504399420152534690

`A360654(n+2)+A033999(n)²*A135227(A128373(n+2))`
-/

namespace A360655.P6504399420152534690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360654 (n + 2) + A033999 n ^ 2 * A135227 (A128373 (n + 2)).toNat

end

end A360655.P6504399420152534690

/-!
# A360657: Number triangle T associated with 2-Stirling numbers and Lehmer-Comtet numbers (see Comments and Formula section).

The programs for A360657, there is no canonical definition to state claims against.
-/

/-! ## A360657.P4605179155610745696

`A378294(A122538(n))`
-/

namespace A360657.P4605179155610745696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378294 (A122538 n).toNat

end

end A360657.P4605179155610745696

/-! ## A360657.P3326009147166318961

`∑{e}[A068991(A183244(n+1)), #]^A025581(n)`
-/

namespace A360657.P3326009147166318961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068991 (A183244 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) ^ (A025581 n : ℤ)

end

end A360657.P3326009147166318961

/-! ## A360657.P9968592320264680210

`A000272(A001055(n+1))*A325678(A187557(n))`
-/

namespace A360657.P9968592320264680210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (A001055 (n + 1)).toNat * A325678 (A187557 n).toNat

end

end A360657.P9968592320264680210

/-! ## A360657.P10194305361317807969

`(A343996(A119165(n+1))%A046899(n))^A025581(n)`
-/

namespace A360657.P10194305361317807969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A343996 (A119165 (n + 1)).toNat) (A046899 n) : ℚ) ^ (A025581 n : ℤ)

end

end A360657.P10194305361317807969

/-!
# A360658: a(1) = 1; a(n) = -Sum_{k=2..n} k^3 * a(floor(n/k)).

The programs for A360658, the canonical program `A360658.P8856125276444949721` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360658 has offset 1).

The definition of A360658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360658.P8856125276444949721

`∑[A359531(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A360658

/-- `∑[A359531(n+1)]` -/
def P8856125276444949721.Spec : Prop :=
  ∀ n, P8856125276444949721.a n = A360658 (n + 1)

theorem P8856125276444949721.correct : P8856125276444949721.Spec := by
  intro n
  simp only [A360658, Nat.add_sub_cancel]

end A360658

/-! ## A360658.P16942042956121084465

`A359531(A000027(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A360658.P16942042956121084465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A359531 (A000027 (n + 1)).toNat + a (n - 1)

end

end A360658.P16942042956121084465

namespace A360658

/-- `A359531(A000027(n+1))+a(n-1)` -/
def P16942042956121084465.Spec : Prop :=
  ∀ n, P16942042956121084465.a n = A360658 (n + 1)

end A360658

/-! ## A360658.P17617255469153247121

`A359531(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A360658.P17617255469153247121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A359531 (A028310 n + 1).toNat + a (n - 1)

end

end A360658.P17617255469153247121

namespace A360658

/-- `A359531(A028310(n)+1)+a(n-1)` -/
def P17617255469153247121.Spec : Prop :=
  ∀ n, P17617255469153247121.a n = A360658 (n + 1)

end A360658

/-! ## A360658.P5526744207956579780

`∑[∑{d}[n+1, A063453(#)*A092673((n+1)/#)]]`
-/

namespace A360658.P5526744207956579780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A063453 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360658.P5526744207956579780

namespace A360658

/-- `∑[∑{d}[n+1, A063453(#)*A092673((n+1)/#)]]` -/
def P5526744207956579780.Spec : Prop :=
  ∀ n, P5526744207956579780.a n = A360658 (n + 1)

end A360658

/-!
# A360659: a(n) is the minimum sum of a completely multiplicative sign sequence of length n.

The programs for A360659, there is no canonical definition to state claims against.
-/

/-! ## A360659.P5029205319929756576

`A002819(n)-A316828(A185274(n))`
-/

namespace A360659.P5029205319929756576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n - A316828 (A185274 n).toNat

end

end A360659.P5029205319929756576

/-!
# A360660: Number of inequivalent n X n {0,1} matrices modulo permutation of the rows, with exactly n 1's.

The programs for A360660, there is no canonical definition to state claims against.
-/

/-! ## A360660.P4834142972614057512

`A220886(∑[n²])`
-/

namespace A360660.P4834142972614057512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360660.P4834142972614057512

/-! ## A360660.P17669048487867677549

`A220886(A000330(n))*A330098(n+1)`
-/

namespace A360660.P17669048487867677549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220886 (A000330 n).toNat * A330098 (n + 1)

end

end A360660.P17669048487867677549

/-! ## A360660.P10854861781467054138

`A220886(A000330(n))%A110259(n+1)`
-/

namespace A360660.P10854861781467054138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220886 (A000330 n).toNat) (A110259 (n + 1))

end

end A360660.P10854861781467054138

/-! ## A360660.P14514698115608951994

`A341825(2*n+3)+A220886(A000330(n))`
-/

namespace A360660.P14514698115608951994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341825 (2 * n + 3) + A220886 (A000330 n).toNat

end

end A360660.P14514698115608951994

/-!
# A360661: Number of factorizations of n into a prime number of factors > 1.

The programs for A360661, there is no canonical definition to state claims against.
-/

/-! ## A360661.P12866451519404793679

`A057357(A370814(n+1)+A001055(n+1))`
-/

namespace A360661.P12866451519404793679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A370814 (n + 1) + A001055 (n + 1)).toNat

end

end A360661.P12866451519404793679

/-! ## A360661.P10671592341805933131

`A028422(n+1)-A101638(A137509(n+1))`
-/

namespace A360661.P10671592341805933131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) - A101638 (A137509 (n + 1)).toNat

end

end A360661.P10671592341805933131

/-! ## A360661.P12892905229972188733

`A034836(n+1)-A285305(A165826(n+1))`
-/

namespace A360661.P12892905229972188733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A285305 (A165826 (n + 1)).toNat

end

end A360661.P12892905229972188733

/-! ## A360661.P13607263949068670867

`A028422(A137509(n+1))-A321379(n+1)`
-/

namespace A360661.P13607263949068670867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A137509 (n + 1)).toNat - A321379 (n + 1)

end

end A360661.P13607263949068670867

/-! ## A360661.P13458324248132625877

`A062571(A002033(n))-1`
-/

namespace A360661.P13458324248132625877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A002033 n).toNat - 1

end

end A360661.P13458324248132625877

/-!
# A360664: Number of inequivalent n X n matrices using exactly n different symbols, where equivalence means permutations of rows or columns or the symbol set.

The programs for A360664, there is no canonical definition to state claims against.
-/

/-! ## A360664.P5940204261915114428

`A242106(A000041(n*(and(2, a(n-1))²+2)))` with `a(0)=1`
-/

namespace A360664.P5940204261915114428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242106 (A000041 ((n : ℤ) * (Int.land 2 (a (n - 1)) ^ 2 + 2)).toNat).toNat

end

end A360664.P5940204261915114428

/-!
# A360665: Square array T(n, k) = k*((2*n-1)*k+1)/2 read by rising antidiagonals.

The programs for A360665, there is no canonical definition to state claims against.
-/

/-! ## A360665.P15753543680037165718

`A002262(n)+A361226(n)-A143844(n)`
-/

namespace A360665.P15753543680037165718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A361226 n - A143844 n)

end

end A360665.P15753543680037165718

/-!
# A360666: Semiprimes k such that k+4, k+6, k+9, k+10 and k+14 are also semiprimes.

The programs for A360666, there is no canonical definition to state claims against.
-/

/-! ## A360666.P5486326756900289493

`filter[A365240(n+2), A354927(#)]`
-/

namespace A360666.P5486326756900289493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A360666.P5486326756900289493

/-! ## A360666.P146085464577251517

`filter[A365240(n+2), A359156(#)]`
-/

namespace A360666.P146085464577251517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A360666.P146085464577251517

/-! ## A360666.P3345956057186700814

`filter[A365240(n+2), A359465(#)]`
-/

namespace A360666.P3345956057186700814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A360666.P3345956057186700814

/-! ## A360666.P3165436378007864847

`filter[A365240(n+2), A359828(#)]`
-/

namespace A360666.P3165436378007864847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A360666.P3165436378007864847

/-! ## A360666.P2610683232089831177

`filter[A365240(n+1), A353495(#)]`
-/

namespace A360666.P2610683232089831177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A360666.P2610683232089831177

/-!
# A360668: Numbers > 1 whose greatest prime index is not divisible by their number of prime factors (bigomega).

The programs for A360668, there is no canonical definition to state claims against.
-/

/-! ## A360668.P5071347170733781990

`lt[1, A360615(n+1)]+1`
-/

namespace A360668.P5071347170733781990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360668.P5071347170733781990

/-! ## A360668.P12463487862792812079

`eq[C(2, n²), char[A340610(n+1)]]`
-/

namespace A360668.P12463487862792812079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360668.P12463487862792812079

/-! ## A360668.P15832666502601179627

`lt[1, A360615(A028310(n))]`
-/

namespace A360668.P15832666502601179627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A360668.P15832666502601179627

/-! ## A360668.P16159280200498914713

`lt[1, A360615(A233583(n+1))]`
-/

namespace A360668.P16159280200498914713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A360668.P16159280200498914713

/-! ## A360668.P5210903314080826539

`eq[char[A340610(n+2)], A033324(n+2)]`
-/

namespace A360668.P5210903314080826539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033324 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A360668.P5210903314080826539

/-!
# A360669: Nonprime numbers > 1 for which the prime indices have the same mean as their first differences.

The programs for A360669, there is no canonical definition to state claims against.
-/

/-! ## A360669.P13186342522923390573

`A358675(3*A250120(n))`
-/

namespace A360669.P13186342522923390573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358675 (3 * A250120 n).toNat

end

end A360669.P13186342522923390573

/-!
# A360670: Number of integer partitions of n whose parts have the same mean as their negated first differences.

The programs for A360670, there is no canonical definition to state claims against.
-/

/-! ## A360670.P1871166670213026189

`A341999(A001045(n))+A121262(n)`
-/

namespace A360670.P1871166670213026189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A001045 n).toNat + A121262 n

end

end A360670.P1871166670213026189

/-! ## A360670.P10717186883651022352

`and(A001961(A001037(n)), A053694(n))`
-/

namespace A360670.P10717186883651022352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001961 (A001037 n).toNat) (A053694 n)

end

end A360670.P10717186883651022352

/-! ## A360670.P10615363393715312778

`and(A038826(A095667(n)), A212219(n))`
-/

namespace A360670.P10615363393715312778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038826 (A095667 n).toNat) (A212219 n)

end

end A360670.P10615363393715312778

/-! ## A360670.P3356036153541640531

`A083889(A130809(n+3)+A074206(n))`
-/

namespace A360670.P3356036153541640531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083889 (A130809 (n + 3) + A074206 n).toNat

end

end A360670.P3356036153541640531

/-! ## A360670.P16695063403226738380

`A196564(A017898(n)*A203070(n+1))`
-/

namespace A360670.P16695063403226738380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A017898 n * A203070 (n + 1)).toNat

end

end A360670.P16695063403226738380

/-!
# A360672: Triangle read by rows where T(n,k) is the number of integer partitions of n whose left half (exclusive) sums to k, where k ranges from 0 to n.

The programs for A360672, there is no canonical definition to state claims against.
-/

/-! ## A360672.P8897320839995345718

`A159195(A320253(n))`
-/

namespace A360672.P8897320839995345718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159195 (A320253 n).toNat

end

end A360672.P8897320839995345718

/-! ## A360672.P8259480829239262675

`A331416(or(2, A320253(n)))`
-/

namespace A360672.P8259480829239262675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (Int.lor 2 (A320253 n)).toNat

end

end A360672.P8259480829239262675

/-! ## A360672.P2573344789065265109

`A293960(n)-A125005(A078760(n))`
-/

namespace A360672.P2573344789065265109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 n - A125005 (A078760 n).toNat

end

end A360672.P2573344789065265109

/-! ## A360672.P16113873603933354035

`A226873(n)-A361165(A104778(n))`
-/

namespace A360672.P16113873603933354035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 n - A361165 (A104778 n).toNat

end

end A360672.P16113873603933354035

/-! ## A360672.P11923327570717425297

`A226873(n)-A011655(A337885(n+2))`
-/

namespace A360672.P11923327570717425297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 n - A011655 (A337885 (n + 2)).toNat

end

end A360672.P11923327570717425297

/-!
# A360675: Triangle read by rows where T(n,k) is the number of integer partitions of n whose right half (exclusive) sums to k, where k ranges from 0 to n.

The programs for A360675, there is no canonical definition to state claims against.
-/

/-! ## A360675.P6112040105049070088

`A102669(5^A217593(n))`
-/

namespace A360675.P6112040105049070088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A217593 n : ℤ))).toNat

end

end A360675.P6112040105049070088

/-! ## A360675.P12091779059313524420

`A007302((2*A089627(n))²)`
-/

namespace A360675.P12091779059313524420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 ((2 * A089627 n) ^ 2).toNat

end

end A360675.P12091779059313524420

/-! ## A360675.P8178786200566665217

`A007302(lcm(8, A089627(n)²))`
-/

namespace A360675.P8178786200566665217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (Int.lcm 8 (A089627 n ^ 2))

end

end A360675.P8178786200566665217

/-! ## A360675.P16814553259519464636

`∑{e}[A000011(A144299(n)+1), #]`
-/

namespace A360675.P16814553259519464636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A144299 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A360675.P16814553259519464636

/-! ## A360675.P3063528930669931403

`A357621(A217315(n)%A351009(2*(n+1)))`
-/

namespace A360675.P3063528930669931403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (Int.tmod (A217315 n) (A351009 (2 * (n + 1)))).toNat

end

end A360675.P3063528930669931403

/-!
# A360676: Sum of the left half (exclusive) of the prime indices of n.

The programs for A360676, there is no canonical definition to state claims against.
-/

/-! ## A360676.P14132811676730407544

`A056239((n+1)/A347044(n+1))`
-/

namespace A360676.P14132811676730407544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A347044 (n + 1) : ℚ))).toNat

end

end A360676.P14132811676730407544

/-! ## A360676.P2537385049769350030

`A056239(n+1)-A056239(A347044(n+1))`
-/

namespace A360676.P2537385049769350030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A347044 (n + 1)).toNat

end

end A360676.P2537385049769350030

/-! ## A360676.P14516990977532988481

`A056239(A347043(2*(n+1)))-1`
-/

namespace A360676.P14516990977532988481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A347043 (2 * (n + 1))).toNat - 1

end

end A360676.P14516990977532988481

/-! ## A360676.P9637186015953670088

`A056239(A347043(2*(n+1))/2)`
-/

namespace A360676.P9637186015953670088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A347043 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A360676.P9637186015953670088

/-! ## A360676.P6113525058652212643

`A360678(A052126(n+1))`
-/

namespace A360676.P6113525058652212643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (A052126 (n + 1)).toNat

end

end A360676.P6113525058652212643

/-! ## A360676.P424094720630611022

`A360678((n+1)/A006530(n+1))`
-/

namespace A360676.P424094720630611022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A360676.P424094720630611022

/-! ## A360676.P12430763948474937921

`A360678(gcd(n+1, A252462(n+1)))`
-/

namespace A360676.P12430763948474937921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (Int.gcd (n + 1 : ℤ) (A252462 (n + 1)))

end

end A360676.P12430763948474937921

/-! ## A360676.P2750645294387511701

`A346698(A347045((n+1)²))`
-/

namespace A360676.P2750645294387511701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A347045 ((n + 1) ^ 2)).toNat

end

end A360676.P2750645294387511701

/-! ## A360676.P2107446788736593792

`A360678((n+1)/A085392((n+1)²))`
-/

namespace A360676.P2107446788736593792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A085392 ((n + 1) ^ 2) : ℚ))).toNat

end

end A360676.P2107446788736593792

/-! ## A360676.P12407896953942842903

`A056239(n+1)-A360679(n+1)`
-/

namespace A360676.P12407896953942842903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A360679 (n + 1)

end

end A360676.P12407896953942842903

/-!
# A360677: Sum of the right half (exclusive) of the prime indices of n.

The programs for A360677, there is no canonical definition to state claims against.
-/

/-! ## A360677.P18095754766423345353

`A360679(A032742(n+1))`
-/

namespace A360677.P18095754766423345353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (A032742 (n + 1)).toNat

end

end A360677.P18095754766423345353

/-! ## A360677.P12147166991140843524

`A360679(A079880(n+1))`
-/

namespace A360677.P12147166991140843524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (A079880 (n + 1)).toNat

end

end A360677.P12147166991140843524

/-! ## A360677.P15229921189236433198

`A360679((n+1)/A020639(n+1))`
-/

namespace A360677.P15229921189236433198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A360677.P15229921189236433198

/-! ## A360677.P9959805594000957816

`A056239((n+1)/A347043(n+1))`
-/

namespace A360677.P9959805594000957816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A347043 (n + 1) : ℚ))).toNat

end

end A360677.P9959805594000957816

/-! ## A360677.P7244336570441718030

`A056239(A033676(A347046((n+1)²)))`
-/

namespace A360677.P7244336570441718030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A033676 (A347046 ((n + 1) ^ 2)).toNat).toNat

end

end A360677.P7244336570441718030

/-! ## A360677.P11742420105990052178

`A056239(n+1)-A056239(A347043(n+1))`
-/

namespace A360677.P11742420105990052178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A347043 (n + 1)).toNat

end

end A360677.P11742420105990052178

/-! ## A360677.P18275989079928884146

`A360679(gcd(A005451(n+1), A117818(n+1)))`
-/

namespace A360677.P18275989079928884146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (Int.gcd (A005451 (n + 1)) (A117818 (n + 1)))

end

end A360677.P18275989079928884146

/-! ## A360677.P11428636749322814966

`A056239(n+1)-A360678(n+1)`
-/

namespace A360677.P11428636749322814966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A360678 (n + 1)

end

end A360677.P11428636749322814966

/-!
# A360678: Sum of the left half (inclusive) of the prime indices of n.

The programs for A360678, there is no canonical definition to state claims against.
-/

/-! ## A360678.P7377610669069732489

`A360676(A013636(n+1))`
-/

namespace A360678.P7377610669069732489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A013636 (n + 1)).toNat

end

end A360678.P7377610669069732489

/-! ## A360678.P5138077482983631981

`A360676(A020338(n+1))`
-/

namespace A360678.P5138077482983631981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A020338 (n + 1)).toNat

end

end A360678.P5138077482983631981

/-! ## A360678.P18206378556508701540

`A056239(A347043(n+1))`
-/

namespace A360678.P18206378556508701540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A347043 (n + 1)).toNat

end

end A360678.P18206378556508701540

/-! ## A360678.P4191866027780289913

`A360676(A053024(n+1))`
-/

namespace A360678.P4191866027780289913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A053024 (n + 1)).toNat

end

end A360678.P4191866027780289913

/-! ## A360678.P332468992458712097

`A360676(A119416(n+1))`
-/

namespace A360678.P332468992458712097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A119416 (n + 1)).toNat

end

end A360678.P332468992458712097

/-! ## A360678.P7532787613729228479

`A360676(A129598(n+1))`
-/

namespace A360678.P7532787613729228479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A129598 (n + 1)).toNat

end

end A360678.P7532787613729228479

/-! ## A360678.P406678932995117307

`A360676(A134297(n+1))`
-/

namespace A360678.P406678932995117307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A134297 (n + 1)).toNat

end

end A360678.P406678932995117307

/-! ## A360678.P8448041966311542605

`A360676(A253560(n+1))`
-/

namespace A360678.P8448041966311542605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A253560 (n + 1)).toNat

end

end A360678.P8448041966311542605

/-! ## A360678.P11482976152083052272

`A360676(A256017(n+1))`
-/

namespace A360678.P11482976152083052272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A256017 (n + 1)).toNat

end

end A360678.P11482976152083052272

/-! ## A360678.P7273200124392654000

`A056239(n+1)-A360677(n+1)`
-/

namespace A360678.P7273200124392654000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A360677 (n + 1)

end

end A360678.P7273200124392654000

/-!
# A360679: Sum of the right half (inclusive) of the prime indices of n.

The programs for A360679, there is no canonical definition to state claims against.
-/

/-! ## A360679.P14457985113206717761

`A056239(A347044(n+1))`
-/

namespace A360679.P14457985113206717761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A347044 (n + 1)).toNat

end

end A360679.P14457985113206717761

/-! ## A360679.P15021126657629781126

`A056239(A361201(2*(n+1)))`
-/

namespace A360679.P15021126657629781126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A361201 (2 * (n + 1))).toNat

end

end A360679.P15021126657629781126

/-! ## A360679.P13913736983704016968

`A056239(n+1)-A360676(n+1)`
-/

namespace A360679.P13913736983704016968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A360676 (n + 1)

end

end A360679.P13913736983704016968

/-! ## A360679.P16235475613013334788

`n+1-A178503(n+1)-A360676(n+1)`
-/

namespace A360679.P16235475613013334788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A178503 (n + 1) - A360676 (n + 1)

end

end A360679.P16235475613013334788

/-! ## A360679.P10987626852164997263

`A056239(n+1)-A360678(A052126(n+1))`
-/

namespace A360679.P10987626852164997263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A360678 (A052126 (n + 1)).toNat

end

end A360679.P10987626852164997263

/-! ## A360679.P15517770675049342261

`A304739(A064664(n+1))-A360676(n+1)`
-/

namespace A360679.P15517770675049342261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat - A360676 (n + 1)

end

end A360679.P15517770675049342261

/-! ## A360679.P1058553608701409815

`A316436(2*(n+1))-1-A360678(A052126(n+1))`
-/

namespace A360679.P1058553608701409815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A360678 (A052126 (n + 1)).toNat

end

end A360679.P1058553608701409815

/-! ## A360679.P3068300127774264872

`A056239(2*(n+1))-A056239(A347043(2*(n+1)))`
-/

namespace A360679.P3068300127774264872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * (n + 1)) - A056239 (A347043 (2 * (n + 1))).toNat

end

end A360679.P3068300127774264872

/-! ## A360679.P10835340337304100046

`A297113(n+1)+A325166(n+1)-A360676(n+1)`
-/

namespace A360679.P10835340337304100046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) + (A325166 (n + 1) - A360676 (n + 1))

end

end A360679.P10835340337304100046

/-! ## A360679.P12499852430598511637

`1-A178503(n+1)+n-A360678(A052126(n+1))`
-/

namespace A360679.P12499852430598511637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178503 (n + 1) + (n : ℤ) - A360678 (A052126 (n + 1)).toNat

end

end A360679.P12499852430598511637

/-!
# A360680: Numbers for which the prime signature has the same mean as the first differences of 0-prepended prime indices.

The programs for A360680, there is no canonical definition to state claims against.
-/

/-! ## A360680.P12244995614317455237

`A094688(n)+A062789(A005121(n+1))`
-/

namespace A360680.P12244995614317455237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094688 n + A062789 (A005121 (n + 1)).toNat

end

end A360680.P12244995614317455237

/-!
# A360684: Expansion of Sum_{k>=0} (x * (1 + k^2 * x))^k.

The programs for A360684, there is no canonical definition to state claims against.
-/

/-! ## A360684.P1551406571323378770

`A347778(A003430(n))`
-/

namespace A360684.P1551406571323378770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 (A003430 n).toNat

end

end A360684.P1551406571323378770

/-! ## A360684.P7277766567718033042

`A232639(A144164(n))`
-/

namespace A360684.P7277766567718033042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232639 (A144164 n).toNat

end

end A360684.P7277766567718033042

/-!
# A360685: Number of maximum independent vertex sets in the n-halved cube graph Q_n/2.

The programs for A360685, there is no canonical definition to state claims against.
-/

/-! ## A360685.P15971744277109932474

`A355226(∑[A005864(n+1)+1])`
-/

namespace A360685.P15971744277109932474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005864 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355226 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360685.P15971744277109932474

/-! ## A360685.P2329644141123540175

`∏[gcd(A006193(2*n+1), A056962(2*(n+1)))]`
-/

namespace A360685.P2329644141123540175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006193 (2 * n + 1)) (A056962 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360685.P2329644141123540175

/-! ## A360685.P18377268845309403421

`A355226(A164523(n+2)+A060233(n+1))`
-/

namespace A360685.P18377268845309403421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355226 (A164523 (n + 2) + A060233 (n + 1)).toNat

end

end A360685.P18377268845309403421

/-!
# A360686: Number of integer partitions of n whose distinct parts have integer median.

The programs for A360686, there is no canonical definition to state claims against.
-/

/-! ## A360686.P2660901077032044407

`A000041(n+1)-A360689(n+1)`
-/

namespace A360686.P2660901077032044407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A360689 (n + 1)

end

end A360686.P2660901077032044407

/-! ## A360686.P8448025045387323640

`A213598(n+1)-A360689(n+1)`
-/

namespace A360686.P8448025045387323640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (n + 1) - A360689 (n + 1)

end

end A360686.P8448025045387323640

/-! ## A360686.P4323878771978282626

`∑[A187219(n+1)]-A360689(n+1)`
-/

namespace A360686.P4323878771978282626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360689 (n + 1)

end

end A360686.P4323878771978282626

/-! ## A360686.P15695257298431980307

`A299200(A000040(n+1))-A360689(n+1)`
-/

namespace A360686.P15695257298431980307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A000040 (n + 1)).toNat - A360689 (n + 1)

end

end A360686.P15695257298431980307

/-! ## A360686.P7036142150777542495

`A067538(n+1)+A349156(n+1)-A360689(n+1)`
-/

namespace A360686.P7036142150777542495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (n + 1) + (A349156 (n + 1) - A360689 (n + 1))

end

end A360686.P7036142150777542495

/-!
# A360687: Number of integer partitions of n whose multiplicities have integer median.

The programs for A360687, there is no canonical definition to state claims against.
-/

/-! ## A360687.P11346683793311067095

`record[A035363(n)]-A360690(n+1)`
-/

namespace A360687.P11346683793311067095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360690 (n + 1)

end

end A360687.P11346683793311067095

/-! ## A360687.P16401551005497969693

`A000041(n+1)-A360690(n+1)`
-/

namespace A360687.P16401551005497969693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A360690 (n + 1)

end

end A360687.P16401551005497969693

/-! ## A360687.P1727457282447743292

`A318284(A000040(n+1))-A360690(n+1)`
-/

namespace A360687.P1727457282447743292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A000040 (n + 1)).toNat - A360690 (n + 1)

end

end A360687.P1727457282447743292

/-! ## A360687.P12267339598015035802

`A241274(n+1)+A330147(n+1)-A360690(n+1)`
-/

namespace A360687.P12267339598015035802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241274 (n + 1) + (A330147 (n + 1) - A360690 (n + 1))

end

end A360687.P12267339598015035802

/-! ## A360687.P13425184294319424756

`A329976(n+1)+A330146(n+1)-A360690(n+1)`
-/

namespace A360687.P13425184294319424756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329976 (n + 1) + (A330146 (n + 1) - A360690 (n + 1))

end

end A360687.P13425184294319424756

/-!
# A360688: Number of integer partitions of n with integer median of 0-appended first differences.

The programs for A360688, there is no canonical definition to state claims against.
-/

/-! ## A360688.P17906373501286483591

`A000041(n+1)-A360691(n+1)`
-/

namespace A360688.P17906373501286483591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A360691 (n + 1)

end

end A360688.P17906373501286483591

/-! ## A360688.P14877391825657754048

`A213598(n+1)-A360691(n+1)`
-/

namespace A360688.P14877391825657754048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (n + 1) - A360691 (n + 1)

end

end A360688.P14877391825657754048

/-! ## A360688.P2033256338689695244

`∑[A187219(n+1)]-A360691(n+1)`
-/

namespace A360688.P2033256338689695244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360691 (n + 1)

end

end A360688.P2033256338689695244

/-! ## A360688.P3707547435769482185

`A119620(2*(n+1))-A360691(n+1)`
-/

namespace A360688.P3707547435769482185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * (n + 1)) - A360691 (n + 1)

end

end A360688.P3707547435769482185

/-! ## A360688.P9962805263450213925

`A237363(n+1)+A237365(n+1)-A360691(n+1)`
-/

namespace A360688.P9962805263450213925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237363 (n + 1) + (A237365 (n + 1) - A360691 (n + 1))

end

end A360688.P9962805263450213925

/-!
# A360689: Number of integer partitions of n whose distinct parts have non-integer median.

The programs for A360689, there is no canonical definition to state claims against.
-/

/-! ## A360689.P13409314484014026114

`Δ[A000070(n)]-A360686(n+1)`
-/

namespace A360689.P13409314484014026114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A360686 (n + 1)

end

end A360689.P13409314484014026114

/-! ## A360689.P2969094585471385072

`record[A124094(n)]-A360686(n+1)`
-/

namespace A360689.P2969094585471385072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360686 (n + 1)

end

end A360689.P2969094585471385072

/-! ## A360689.P15988251735593291421

`A000041(n+1)-A360686(n+1)`
-/

namespace A360689.P15988251735593291421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A360686 (n + 1)

end

end A360689.P15988251735593291421

/-! ## A360689.P7743903624891098312

`record[A300383(n+1)]-A360686(n+1)`
-/

namespace A360689.P7743903624891098312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360686 (n + 1)

end

end A360689.P7743903624891098312

/-! ## A360689.P8311133939727319375

`A239830(A000217(n+1))-A360686(n+1)`
-/

namespace A360689.P8311133939727319375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000217 (n + 1)).toNat - A360686 (n + 1)

end

end A360689.P8311133939727319375

/-!
# A360690: Number of integer partitions of n with non-integer median of multiplicities.

The programs for A360690, there is no canonical definition to state claims against.
-/

/-! ## A360690.P17383215947577301350

`Δ[A000070(n)]-A360687(n+1)`
-/

namespace A360690.P17383215947577301350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A360687 (n + 1)

end

end A360690.P17383215947577301350

/-! ## A360690.P10220456410514164333

`record[A035363(n)]-A360687(n+1)`
-/

namespace A360690.P10220456410514164333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360687 (n + 1)

end

end A360690.P10220456410514164333

/-! ## A360690.P11468235094219060288

`A000041(n+1)-A360687(n+1)`
-/

namespace A360690.P11468235094219060288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A360687 (n + 1)

end

end A360690.P11468235094219060288

/-! ## A360690.P2115683240788848575

`∑[A187219(n+1)]-A360687(n+1)`
-/

namespace A360690.P2115683240788848575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360687 (n + 1)

end

end A360690.P2115683240788848575

/-! ## A360690.P3354733758270455380

`record[A026807(n+1)]-A360687(n+1)`
-/

namespace A360690.P3354733758270455380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360687 (n + 1)

end

end A360690.P3354733758270455380

/-!
# A360691: Number of integer partitions of n with non-integer median of 0-prepended first differences.

The programs for A360691, there is no canonical definition to state claims against.
-/

/-! ## A360691.P12330929273449899620

`Δ[A000070(n)]-A360688(n+1)`
-/

namespace A360691.P12330929273449899620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A360688 (n + 1)

end

end A360691.P12330929273449899620

/-! ## A360691.P3060248524420734036

`record[A035363(n)]-A360688(n+1)`
-/

namespace A360691.P3060248524420734036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360688 (n + 1)

end

end A360691.P3060248524420734036

/-! ## A360691.P13046853144088942701

`record[A035377(n)]-A360688(n+1)`
-/

namespace A360691.P13046853144088942701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360688 (n + 1)

end

end A360691.P13046853144088942701

/-! ## A360691.P13120612480476359507

`record[A035444(n)]-A360688(n+1)`
-/

namespace A360691.P13120612480476359507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360688 (n + 1)

end

end A360691.P13120612480476359507

/-! ## A360691.P15714559094792414759

`record[A114099(n)]-A360688(n+1)`
-/

namespace A360691.P15714559094792414759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A360688 (n + 1)

end

end A360691.P15714559094792414759

/-!
# A360692: a(0) = 0. Thereafter a(n+1) = a(a(n)) if a(n) has not occurred previously, otherwise a(n+1) = n - 1 - a(n-1).

The programs for A360692, the canonical program `A360692.P11101891494698958030` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360692 has offset 0).

The definition of A360692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360692.P11101891494698958030

`A101279(n+2)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360692

/-- `A101279(n+2)-1` -/
def P11101891494698958030.Spec : Prop :=
  ∀ n, P11101891494698958030.a n = A360692 n

theorem P11101891494698958030.correct : P11101891494698958030.Spec := by
  intro n
  simp only [A360692]

end A360692

/-! ## A360692.P4716542138794032552

`A065423(A322250(n+2))`
-/

namespace A360692.P4716542138794032552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A322250 (n + 2)).toNat

end

end A360692.P4716542138794032552

namespace A360692

/-- `A065423(A322250(n+2))` -/
def P4716542138794032552.Spec : Prop :=
  ∀ n, P4716542138794032552.a n = A360692 n

end A360692

/-! ## A360692.P6444952168143799835

`A028310(A025480(n+1))-1`
-/

namespace A360692.P6444952168143799835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A025480 (n + 1)).toNat - 1

end

end A360692.P6444952168143799835

namespace A360692

/-- `A028310(A025480(n+1))-1` -/
def P6444952168143799835.Spec : Prop :=
  ∀ n, P6444952168143799835.a n = A360692 n

end A360692

/-! ## A360692.P14691263692942295941

`A004524(n%A000265(n+2))`
-/

namespace A360692.P14691263692942295941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.tmod (n : ℤ) (A000265 (n + 2))).toNat

end

end A360692.P14691263692942295941

namespace A360692

/-- `A004524(n%A000265(n+2))` -/
def P14691263692942295941.Spec : Prop :=
  ∀ n, P14691263692942295941.a n = A360692 n

end A360692

/-! ## A360692.P14631975372681565229

`A025480(n+1)-A043545(n+1)`
-/

namespace A360692.P14631975372681565229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (n + 1) - A043545 (n + 1)

end

end A360692.P14631975372681565229

namespace A360692

/-- `A025480(n+1)-A043545(n+1)` -/
def P14631975372681565229.Spec : Prop :=
  ∀ n, P14631975372681565229.a n = A360692 n

end A360692

/-! ## A360692.P8578155281490283193

`A289207(A108715(n)+floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A360692.P8578155281490283193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A108715 n + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)).toNat

end

end A360692.P8578155281490283193

namespace A360692

/-- `A289207(A108715(n)+floor(n/(xor(n, n+1)+1))+1)` -/
def P8578155281490283193.Spec : Prop :=
  ∀ n, P8578155281490283193.a n = A360692 n

end A360692

/-! ## A360692.P17859080012040027345

`A289207(A108715(n)+lcm(n+1, and(n, n+1))/(2*(n+1))+1)`
-/

namespace A360692.P17859080012040027345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.roundAway ((A108715 n : ℚ) + ((Nat.lcm (n + 1) (Nat.land n (n + 1)) : ℚ) / (2 * (n + 1) : ℚ) + 1))).toNat

end

end A360692.P17859080012040027345

namespace A360692

/-- `A289207(A108715(n)+lcm(n+1, and(n, n+1))/(2*(n+1))+1)` -/
def P17859080012040027345.Spec : Prop :=
  ∀ n, P17859080012040027345.a n = A360692 n

end A360692

/-! ## A360692.P16998035282316044412

`A289207(A108715(n)+ceil(A000265(n+1)/2))`
-/

namespace A360692.P16998035282316044412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A108715 n + ⌈(A000265 (n + 1) : ℚ) / 2⌉).toNat

end

end A360692.P16998035282316044412

namespace A360692

/-- `A289207(A108715(n)+ceil(A000265(n+1)/2))` -/
def P16998035282316044412.Spec : Prop :=
  ∀ n, P16998035282316044412.a n = A360692 n

end A360692

/-! ## A360692.P3835591599643665008

`A140106(A000265(n+2))`
-/

namespace A360692.P3835591599643665008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A000265 (n + 2)).toNat

end

end A360692.P3835591599643665008

namespace A360692

/-- `A140106(A000265(n+2))` -/
def P3835591599643665008.Spec : Prop :=
  ∀ n, P3835591599643665008.a n = A360692 n

end A360692

/-! ## A360692.P7259570433297453553

`A289207(A003602(n+2))`
-/

namespace A360692.P7259570433297453553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A003602 (n + 2)).toNat

end

end A360692.P7259570433297453553

namespace A360692

/-- `A289207(A003602(n+2))` -/
def P7259570433297453553.Spec : Prop :=
  ∀ n, P7259570433297453553.a n = A360692 n

end A360692

/-! ## A360692.P4321041118194923584

`A065033(A153733(n+1))-1`
-/

namespace A360692.P4321041118194923584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A153733 (n + 1)).toNat - 1

end

end A360692.P4321041118194923584

namespace A360692

/-- `A065033(A153733(n+1))-1` -/
def P4321041118194923584.Spec : Prop :=
  ∀ n, P4321041118194923584.a n = A360692 n

end A360692

/-! ## A360692.P3879797645182599828

`A065033(A000265(n+2))-A043529(n+1)`
-/

namespace A360692.P3879797645182599828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000265 (n + 2)).toNat - A043529 (n + 1)

end

end A360692.P3879797645182599828

namespace A360692

/-- `A065033(A000265(n+2))-A043529(n+1)` -/
def P3879797645182599828.Spec : Prop :=
  ∀ n, P3879797645182599828.a n = A360692 n

end A360692

/-! ## A360692.P16756508293871946370

`A003602(n+2)+A023900(n+2)/A297381(n+2)`
-/

namespace A360692.P16756508293871946370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 2) : ℚ) + (A023900 (n + 2) : ℚ) / (A297381 (n + 2) : ℚ)

end

end A360692.P16756508293871946370

namespace A360692

/-- `A003602(n+2)+A023900(n+2)/A297381(n+2)` -/
def P16756508293871946370.Spec : Prop :=
  ∀ n, P16756508293871946370.a n = (A360692 n : ℚ)

end A360692

/-! ## A360692.P9303419918486238434

`A003602(n+2)-A023900(n+2)/A349431(n+2)`
-/

namespace A360692.P9303419918486238434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 2) : ℚ) - (A023900 (n + 2) : ℚ) / (A349431 (n + 2) : ℚ)

end

end A360692.P9303419918486238434

namespace A360692

/-- `A003602(n+2)-A023900(n+2)/A349431(n+2)` -/
def P9303419918486238434.Spec : Prop :=
  ∀ n, P9303419918486238434.a n = (A360692 n : ℚ)

end A360692

/-! ## A360692.P15047157628707621317

`A327883(2*A153733(n+1))`
-/

namespace A360692.P15047157628707621317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327883 (2 * A153733 (n + 1)).toNat

end

end A360692.P15047157628707621317

namespace A360692

/-- `A327883(2*A153733(n+1))` -/
def P15047157628707621317.Spec : Prop :=
  ∀ n, P15047157628707621317.a n = A360692 n

end A360692

/-! ## A360692.P4303798993838790200

`A084360(A382129(n+2))`
-/

namespace A360692.P4303798993838790200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A382129 (n + 2)).toNat

end

end A360692.P4303798993838790200

namespace A360692

/-- `A084360(A382129(n+2))` -/
def P4303798993838790200.Spec : Prop :=
  ∀ n, P4303798993838790200.a n = A360692 n

end A360692

/-! ## A360692.P14216137519899933793

`A082650(A181363(n+2)+1)`
-/

namespace A360692.P14216137519899933793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082650 (A181363 (n + 2) + 1).toNat

end

end A360692.P14216137519899933793

namespace A360692

/-- `A082650(A181363(n+2)+1)` -/
def P14216137519899933793.Spec : Prop :=
  ∀ n, P14216137519899933793.a n = A360692 n

end A360692

/-! ## A360692.P13298266340662225489

`A082650(A230593(A181363(n+2)))`
-/

namespace A360692.P13298266340662225489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082650 (A230593 (A181363 (n + 2)).toNat).toNat

end

end A360692.P13298266340662225489

namespace A360692

/-- `A082650(A230593(A181363(n+2)))` -/
def P13298266340662225489.Spec : Prop :=
  ∀ n, P13298266340662225489.a n = A360692 n

end A360692

/-! ## A360692.P124749911144951385

`A033270(A181363(n+2))`
-/

namespace A360692.P124749911144951385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A181363 (n + 2)).toNat

end

end A360692.P124749911144951385

namespace A360692

/-- `A033270(A181363(n+2))` -/
def P124749911144951385.Spec : Prop :=
  ∀ n, P124749911144951385.a n = A360692 n

end A360692

/-! ## A360692.P14228592624691210955

`A025480(n+1)-A055396(A164281(n+1))`
-/

namespace A360692.P14228592624691210955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (n + 1) - A055396 (A164281 (n + 1)).toNat

end

end A360692.P14228592624691210955

namespace A360692

/-- `A025480(n+1)-A055396(A164281(n+1))` -/
def P14228592624691210955.Spec : Prop :=
  ∀ n, P14228592624691210955.a n = A360692 n

end A360692

/-!
# A360694: Numbers whose divisors can be partitioned into two disjoint sets where the sum of both sets is prime.

The programs for A360694, there is no canonical definition to state claims against.
-/

/-! ## A360694.P6493049107487839737

`lt[A359410(n+1), A155121(A326842(n))]`
-/

namespace A360694.P6493049107487839737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155121 (A326842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360694.P6493049107487839737

/-! ## A360694.P1620026932702965829

`lt[A333257(A316413(n+1)), A353851(n)]`
-/

namespace A360694.P1620026932702965829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 (A316413 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360694.P1620026932702965829

/-! ## A360694.P2228065490813608172

`lt[A140947(n+4), A002721(A032741(n))]`
-/

namespace A360694.P2228065490813608172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140947 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002721 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360694.P2228065490813608172

/-! ## A360694.P13619911468993281043

`lt[2*n+1, A167242(A074206(n))]`
-/

namespace A360694.P13619911468993281043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167242 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A360694.P13619911468993281043

/-! ## A360694.P2949821797072195279

`lt[A003986(n), A136483(A353851(n))]`
-/

namespace A360694.P2949821797072195279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (A353851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360694.P2949821797072195279

/-!
# A360695: Total number of sets of k words of length k over binary alphabet with exactly n occurrences of the first letter in the set, summed over all k >= 0.

The programs for A360695, there is no canonical definition to state claims against.
-/

/-! ## A360695.P5112728611133257074

`A176747(A057711(n))+2`
-/

namespace A360695.P5112728611133257074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176747 (A057711 n).toNat + 2

end

end A360695.P5112728611133257074

/-! ## A360695.P12454760380992761767

`A111439(A006193(n)+4)`
-/

namespace A360695.P12454760380992761767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A006193 n + 4).toNat

end

end A360695.P12454760380992761767

/-!
# A360696: Expansion of Sum_{k>=0} (x * (1 + k^k * x))^k.

The programs for A360696, there is no canonical definition to state claims against.
-/

/-! ## A360696.P837909188431752153

`A098464(n*a(n-1))` with `a(0)=1`
-/

namespace A360696.P837909188431752153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098464 ((n : ℤ) * a (n - 1)).toNat

end

end A360696.P837909188431752153

/-! ## A360696.P15145737513004659138

`A098464(a(n-1)/n^(-1))` with `a(0)=1, a(1)=1`
-/

namespace A360696.P15145737513004659138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098464 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat

end

end A360696.P15145737513004659138

