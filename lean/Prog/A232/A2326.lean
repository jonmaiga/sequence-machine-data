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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

/-!
# A232600: a(n) = Sum_{k=0..n} k^p*q^k, where p=1, q=-2.

The programs for A232600, the canonical program `A232600.P3720344291566753920` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232600 has offset 0).

The definition of A232600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232600.P3720344291566753920

`2*(-1)^n*A045883(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232600

/-- `2*(-1)^n*A045883(n)` -/
def P3720344291566753920.Spec : Prop :=
  ∀ n, P3720344291566753920.a n = A232600 n

theorem P3720344291566753920.correct : P3720344291566753920.Spec := by
  intro n
  simp only [A232600]

end A232600

/-! ## A232600.P12697853217424048566

`2*((-2)^n*(3*n+1)-1)/9`
-/

namespace A232600.P12697853217424048566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((-2) ^ n * (3 * n + 1 : ℤ) - 1) : ℚ) / 9

end

end A232600.P12697853217424048566

namespace A232600

/-- `2*((-2)^n*(3*n+1)-1)/9` -/
def P12697853217424048566.Spec : Prop :=
  ∀ n, P12697853217424048566.a n = (A232600 n : ℚ)

end A232600

/-! ## A232600.P9652764438287555310

`ogf(-2x/(1+3x-4x^3))`
-/

namespace A232600.P9652764438287555310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -2] [1, 3, 0, -4] n

end

end A232600.P9652764438287555310

namespace A232600

/-- `ogf(-2x/(1+3x-4x^3))` -/
def P9652764438287555310.Spec : Prop :=
  ∀ n, P9652764438287555310.a n = A232600 n

end A232600

/-! ## A232600.P11413780753545280393

`A045883(n)*A280560(n)`
-/

namespace A232600.P11413780753545280393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n * A280560 n

end

end A232600.P11413780753545280393

namespace A232600

/-- `A045883(n)*A280560(n)` -/
def P11413780753545280393.Spec : Prop :=
  ∀ n, P11413780753545280393.a n = A232600 n

end A232600

/-! ## A232600.P3637467841221586673

`(A078008(n)-A001045(n))*A140960(n+1)`
-/

namespace A232600.P3637467841221586673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078008 n - A001045 n) * A140960 (n + 1)

end

end A232600.P3637467841221586673

namespace A232600

/-- `(A078008(n)-A001045(n))*A140960(n+1)` -/
def P3637467841221586673.Spec : Prop :=
  ∀ n, P3637467841221586673.a n = A232600 n

end A232600

/-! ## A232600.P17527181665125655762

`a(n-1)+n*(-2)^n` with `a(0)=0`
-/

namespace A232600.P17527181665125655762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * (-2) ^ n

end

end A232600.P17527181665125655762

namespace A232600

/-- `a(n-1)+n*(-2)^n` -/
def P17527181665125655762.Spec : Prop :=
  ∀ n, P17527181665125655762.a n = A232600 n

end A232600

/-! ## A232600.P16619855137365350331

`∑[(-2)^n-a(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A232600.P16619855137365350331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (-2) ^ n - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232600.P16619855137365350331

namespace A232600

/-- `∑[(-2)^n-a(n-1)-a(n-1)]` -/
def P16619855137365350331.Spec : Prop :=
  ∀ n, P16619855137365350331.a n = A232600 n

end A232600

/-! ## A232600.P6222500754786160372

`∑[n*A122803(n)]`
-/

namespace A232600.P6222500754786160372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232600.P6222500754786160372

namespace A232600

/-- `∑[n*A122803(n)]` -/
def P6222500754786160372.Spec : Prop :=
  ∀ n, P6222500754786160372.a n = A232600 n

end A232600

/-! ## A232600.P2134314779689770695

`∑[2*A085750(n+1)]`
-/

namespace A232600.P2134314779689770695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232600.P2134314779689770695

namespace A232600

/-- `∑[2*A085750(n+1)]` -/
def P2134314779689770695.Spec : Prop :=
  ∀ n, P2134314779689770695.a n = A232600 n

end A232600

/-! ## A232600.P8698728729789927169

`∑[n*A123344(n+1)]`
-/

namespace A232600.P8698728729789927169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232600.P8698728729789927169

namespace A232600

/-- `∑[n*A123344(n+1)]` -/
def P8698728729789927169.Spec : Prop :=
  ∀ n, P8698728729789927169.a n = A232600 n

end A232600

/-!
# A232601: a(n) = Sum_{k=0..n} k^p*q^k for p = 2 and q = -2.

The programs for A232601, the canonical program `A232601.P8061294854309729203` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232601 has offset 0).

The definition of A232601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232601.P8061294854309729203

`2*((-2)^n*(9*n²+6*n-1)+1)/27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232601

/-- `2*((-2)^n*(9*n²+6*n-1)+1)/27` -/
def P8061294854309729203.Spec : Prop :=
  ∀ n, P8061294854309729203.a n = (A232601 n : ℚ)

end A232601

/-! ## A232601.P12509360794181255807

`(n+1)*A232600(n)-∑[A232600(n)]`
-/

namespace A232601.P12509360794181255807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A232600 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232601.P12509360794181255807

namespace A232601

/-- `(n+1)*A232600(n)-∑[A232600(n)]` -/
def P12509360794181255807.Spec : Prop :=
  ∀ n, P12509360794181255807.a n = A232601 n

end A232601

/-! ## A232601.P11223432878588081321

`a(n-1)+n²*(-2)^n` with `a(0)=0`
-/

namespace A232601.P11223432878588081321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 2 : ℤ) * (-2) ^ n

end

end A232601.P11223432878588081321

namespace A232601

/-- `a(n-1)+n²*(-2)^n` -/
def P11223432878588081321.Spec : Prop :=
  ∀ n, P11223432878588081321.a n = A232601 n

end A232601

/-! ## A232601.P11787790826079189788

`∑[n²*A122803(n)]`
-/

namespace A232601.P11787790826079189788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232601.P11787790826079189788

namespace A232601

/-- `∑[n²*A122803(n)]` -/
def P11787790826079189788.Spec : Prop :=
  ∀ n, P11787790826079189788.a n = A232601 n

end A232601

/-! ## A232601.P96292212372698892

`∑[n²*A123344(n+1)]`
-/

namespace A232601.P96292212372698892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A123344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232601.P96292212372698892

namespace A232601

/-- `∑[n²*A123344(n+1)]` -/
def P96292212372698892.Spec : Prop :=
  ∀ n, P96292212372698892.a n = A232601 n

end A232601

/-!
# A232602: a(n) = Sum_{k=0..n} k^p*q^k, where p=3, q=-2.

The programs for A232602, the canonical program `A232602.P888860108697352256` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232602 has offset 0).

The definition of A232602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232602.P888860108697352256

`2*(1-(-2)^n*(1+3*n-9*n²-9*n^3))/27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232602

/-- `2*(1-(-2)^n*(1+3*n-9*n²-9*n^3))/27` -/
def P888860108697352256.Spec : Prop :=
  ∀ n, P888860108697352256.a n = (A232602 n : ℚ)

end A232602

/-! ## A232602.P4348651901884972894

`a(n-1)+n^3*(-2)^n` with `a(0)=0`
-/

namespace A232602.P4348651901884972894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 3 : ℤ) * (-2) ^ n

end

end A232602.P4348651901884972894

namespace A232602

/-- `a(n-1)+n^3*(-2)^n` -/
def P4348651901884972894.Spec : Prop :=
  ∀ n, P4348651901884972894.a n = A232602 n

end A232602

/-! ## A232602.P4907872751556904500

`2*∑[n²*A085750(n+1)]`
-/

namespace A232602.P4907872751556904500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A085750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232602.P4907872751556904500

namespace A232602

/-- `2*∑[n²*A085750(n+1)]` -/
def P4907872751556904500.Spec : Prop :=
  ∀ n, P4907872751556904500.a n = A232602 n

end A232602

/-! ## A232602.P2143255451421642660

`∑[A000578(n)*A122803(n)]`
-/

namespace A232602.P2143255451421642660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232602.P2143255451421642660

namespace A232602

/-- `∑[A000578(n)*A122803(n)]` -/
def P2143255451421642660.Spec : Prop :=
  ∀ n, P2143255451421642660.a n = A232602 n

end A232602

/-! ## A232602.P15574159206559520962

`∑[A128790(n)/A122803(n)]`
-/

namespace A232602.P15574159206559520962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128790 n : ℚ) / (A122803 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232602.P15574159206559520962

namespace A232602

/-- `∑[A128790(n)/A122803(n)]` -/
def P15574159206559520962.Spec : Prop :=
  ∀ n, P15574159206559520962.a n = (A232602 n : ℚ)

end A232602

/-!
# A232603: a(n) = 2^n * Sum_{k=0..n} k^p*q^k, where p=2, q=-1/2.

The programs for A232603, the canonical program `A232603.P12358692576893911985` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232603 has offset 0).

The definition of A232603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232603.P12358692576893911985

`((-1)^n*(2+12*n+9*n²)-2^(n+1))/27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232603

/-- `((-1)^n*(2+12*n+9*n²)-2^(n+1))/27` -/
def P12358692576893911985.Spec : Prop :=
  ∀ n, P12358692576893911985.a n = (A232603 n : ℚ)

end A232603

/-! ## A232603.P16313090786756850643

`ogf((x-x^2)/(-1-x+3x^2+5x^3+2x^4))`
-/

namespace A232603.P16313090786756850643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 1] [1, 1, -3, -5, -2] n

end

end A232603.P16313090786756850643

namespace A232603

/-- `ogf((x-x^2)/(-1-x+3x^2+5x^3+2x^4))` -/
def P16313090786756850643.Spec : Prop :=
  ∀ n, P16313090786756850643.a n = A232603 n

end A232603

/-! ## A232603.P7312536982532902816

`2*a(n-1)+n²*(-1)^n` with `a(0)=0`
-/

namespace A232603.P7312536982532902816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (n ^ 2 : ℤ) * (-1) ^ n

end

end A232603.P7312536982532902816

namespace A232603

/-- `2*a(n-1)+n²*(-1)^n` -/
def P7312536982532902816.Spec : Prop :=
  ∀ n, P7312536982532902816.a n = A232603 n

end A232603

/-! ## A232603.P17527518785753192145

`a(n-1)+a(n-1)+n²/(-1)^n` with `a(0)=0`
-/

namespace A232603.P17527518785753192145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (n ^ 2 : ℚ) / ((-1) ^ n : ℚ))

end

end A232603.P17527518785753192145

namespace A232603

/-- `a(n-1)+a(n-1)+n²/(-1)^n` -/
def P17527518785753192145.Spec : Prop :=
  ∀ n, P17527518785753192145.a n = (A232603 n : ℚ)

end A232603

/-! ## A232603.P3034694210999680331

`a(n-1)-(n²/(-1)^a(n-1)-a(n-1))` with `a(0)=0`
-/

namespace A232603.P3034694210999680331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((n ^ 2 : ℝ) / (-1 : ℝ) ^ (a (n - 1)) - a (n - 1))

end

end A232603.P3034694210999680331

namespace A232603

/-- `a(n-1)-(n²/(-1)^a(n-1)-a(n-1))` -/
def P3034694210999680331.Spec : Prop :=
  ∀ n, P3034694210999680331.a n = (A232603 n : ℝ)

end A232603

/-! ## A232603.P3557499045733896917

`∑[A140962(n)]*A033999(n+1)`
-/

namespace A232603.P3557499045733896917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 1)

end

end A232603.P3557499045733896917

namespace A232603

/-- `∑[A140962(n)]*A033999(n+1)` -/
def P3557499045733896917.Spec : Prop :=
  ∀ n, P3557499045733896917.a n = A232603 n

end A232603

/-! ## A232603.P7482304005533643444

`∑[n²/(-2)^n]*A000079(n)`
-/

namespace A232603.P7482304005533643444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / ((-2) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A232603.P7482304005533643444

namespace A232603

/-- `∑[n²/(-2)^n]*A000079(n)` -/
def P7482304005533643444.Spec : Prop :=
  ∀ n, P7482304005533643444.a n = (A232603 n : ℚ)

end A232603

/-!
# A232604: a(n) = 2^n * Sum_{k=0..n} k^p*q^k, where p=3, q=-1/2.

The programs for A232604, the canonical program `A232604.P6518372462813266683` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232604 has offset 0).

The definition of A232604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232604.P6518372462813266683

`(2^(n+1)+(-1)^n*(9*n^3+18*n²+6*n-2))/27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232604

/-- `(2^(n+1)+(-1)^n*(9*n^3+18*n²+6*n-2))/27` -/
def P6518372462813266683.Spec : Prop :=
  ∀ n, P6518372462813266683.a n = (A232604 n : ℚ)

end A232604

/-!
# A232605: Number of compositions of 2n into parts with multiplicity <= n.

The programs for A232605, there is no canonical definition to state claims against.
-/

/-! ## A232605.P3262418625586438279

`A243081(A062728(n))`
-/

namespace A232605.P3262418625586438279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A062728 n).toNat

end

end A232605.P3262418625586438279

/-! ## A232605.P407257498697317659

`A243081(A195160(2*n))`
-/

namespace A232605.P407257498697317659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A195160 (2 * n)).toNat

end

end A232605.P407257498697317659

/-! ## A232605.P2518237066695898311

`A243081(A027468(n)-n)`
-/

namespace A232605.P2518237066695898311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A027468 n - (n : ℤ)).toNat

end

end A232605.P2518237066695898311

/-! ## A232605.P13818512528521925455

`A243081(A081266(n)+2*n)`
-/

namespace A232605.P13818512528521925455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A081266 n + (2 * n : ℤ)).toNat

end

end A232605.P13818512528521925455

/-! ## A232605.P3846437415654147160

`A243081(A081266(n)+n+n)`
-/

namespace A232605.P3846437415654147160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A081266 n + (n : ℤ) + (n : ℤ)).toNat

end

end A232605.P3846437415654147160

/-!
# A232606: G.f. A(x) satisfies: the sum of the coefficients of x^k, k=0..n, in A(x)^n equals (2*n)!^2/n!^4, the square of the central binomial coefficients (A000984), for n>=0.

The programs for A232606, there is no canonical definition to state claims against.
-/

/-! ## A232606.P3248296177847215577

`A019446(Δ[n*(1-floor(-a(n-1)))])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A232606.P3248296177847215577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (1 - (-f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (f1 (n + 1) - f1 n).toNat

end

end A232606.P3248296177847215577

/-! ## A232606.P16309340501416617743

`A019446(Δ[n*(1-ceil(-a(n-1)))])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A232606.P16309340501416617743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (1 - (-f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (f1 (n + 1) - f1 n).toNat

end

end A232606.P16309340501416617743

/-!
# A232607: G.f. A(x) satisfies: (A(x) + x*A'(x)) / (A(x) - x*A(x)^2) = Sum_{n>=0} binomial(2*n,n)^2*x^n.

The programs for A232607, there is no canonical definition to state claims against.
-/

/-! ## A232607.P723622235905545677

`A172475(A131763(n)+1)`
-/

namespace A232607.P723622235905545677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A131763 n + 1).toNat

end

end A232607.P723622235905545677

/-!
# A232608: Triangular numbers t such that distances from t to three nearest squares are three triangular numbers.

The programs for A232608, there is no canonical definition to state claims against.
-/

/-! ## A232608.P13714066552605595765

`∩[A232501(n+1), ∑[n]]`
-/

namespace A232608.P13714066552605595765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232501 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A232608.P13714066552605595765

/-! ## A232608.P17329022516237603390

`∩[A000217(n), A232501(n+1)]`
-/

namespace A232608.P17329022516237603390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232608.P17329022516237603390

/-! ## A232608.P10819092233165117449

`∩[A001972(n), A232501(n+1)]`
-/

namespace A232608.P10819092233165117449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232608.P10819092233165117449

/-!
# A232609: Number of (n+1)X(1+1) 0..2 arrays x(i,j) with every row sum{j*x(i,j), j=1..1+1} equal, and every column sum{i*x(i,j), i=1..n+1} equal.

The programs for A232609, there is no canonical definition to state claims against.
-/

/-! ## A232609.P8139926413855372792

`A232523(n+1)+1`
-/

namespace A232609.P8139926413855372792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232523 (n + 1) + 1

end

end A232609.P8139926413855372792

/-! ## A232609.P3009609884733022189

`2*A113035(n+2)+3`
-/

namespace A232609.P3009609884733022189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113035 (n + 2) + 3

end

end A232609.P3009609884733022189

/-! ## A232609.P7553494299198380260

`or(1, A232523(A222257(n)))`
-/

namespace A232609.P7553494299198380260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232523 (A222257 n).toNat)

end

end A232609.P7553494299198380260

/-! ## A232609.P8243911724528996805

`A141310(A232523(n+1))`
-/

namespace A232609.P8243911724528996805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A232523 (n + 1)).toNat

end

end A232609.P8243911724528996805

/-! ## A232609.P9119164421900019918

`A144396(A113035(n+2)+1)`
-/

namespace A232609.P9119164421900019918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A113035 (n + 2) + 1).toNat

end

end A232609.P9119164421900019918

/-!
# A232610: Number of (n+1)X(2+1) 0..2 arrays x(i,j) with every row sum{j*x(i,j), j=1..2+1} equal, and every column sum{i*x(i,j), i=1..n+1} equal.

The programs for A232610, there is no canonical definition to state claims against.
-/

/-! ## A232610.P2518562558904628837

`A232614(∑[n+1]+2)`
-/

namespace A232610.P2518562558904628837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232610.P2518562558904628837

/-! ## A232610.P11175093852243895594

`A028310(A232614(∑[n+2]))`
-/

namespace A232610.P11175093852243895594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A232614 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232610.P11175093852243895594

/-!
# A232611: Number of (n+1)X(3+1) 0..2 arrays x(i,j) with every row sum{j*x(i,j), j=1..3+1} equal, and every column sum{i*x(i,j), i=1..n+1} equal.

The programs for A232611, there is no canonical definition to state claims against.
-/

/-! ## A232611.P1250242314552873983

`A232614(∑[n+2]+4)`
-/

namespace A232611.P1250242314552873983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232611.P1250242314552873983

/-! ## A232611.P4908152996719500223

`or(1, A232614(A167614(n+1)))`
-/

namespace A232611.P4908152996719500223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232614 (A167614 (n + 1)).toNat)

end

end A232611.P4908152996719500223

/-! ## A232611.P15094020434696157688

`or(1, A232614(A167499(n)+n))`
-/

namespace A232611.P15094020434696157688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232614 (A167499 n + (n : ℤ)).toNat)

end

end A232611.P15094020434696157688

/-! ## A232611.P14361196640705936538

`record[A232614(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A232611.P14361196640705936538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232611.P14361196640705936538

/-! ## A232611.P11061102873312373683

`A308978(n)+A232614(A167614(n+1))`
-/

namespace A232611.P11061102873312373683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308978 n + A232614 (A167614 (n + 1)).toNat

end

end A232611.P11061102873312373683

/-!
# A232612: Number of (n+1)X(4+1) 0..2 arrays x(i,j) with every row sum{j*x(i,j), j=1..4+1} equal, and every column sum{i*x(i,j), i=1..n+1} equal.

The programs for A232612, there is no canonical definition to state claims against.
-/

/-! ## A232612.P11033640482069990621

`A232614(A374004(n+1))`
-/

namespace A232612.P11033640482069990621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (A374004 (n + 1)).toNat

end

end A232612.P11033640482069990621

/-! ## A232612.P12668137329240921824

`A232614(A141214(n)+7)`
-/

namespace A232612.P12668137329240921824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (A141214 n + 7).toNat

end

end A232612.P12668137329240921824

/-! ## A232612.P14779703513154787441

`A232614(A052905(n)+9)`
-/

namespace A232612.P14779703513154787441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (A052905 n + 9).toNat

end

end A232612.P14779703513154787441

/-! ## A232612.P11990801486890413410

`A232614(A055999(n)+10)`
-/

namespace A232612.P11990801486890413410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (A055999 n + 10).toNat

end

end A232612.P11990801486890413410

/-! ## A232612.P977143685283050675

`A232614(eq[5, A066657(n)])`
-/

namespace A232612.P977143685283050675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232612.P977143685283050675

/-!
# A232613: Number of (n+1)X(5+1) 0..2 arrays x(i,j) with every row sum{j*x(i,j), j=1..5+1} equal, and every column sum{i*x(i,j), i=1..n+1} equal.

The programs for A232613, there is no canonical definition to state claims against.
-/

/-! ## A232613.P7964410384431381509

`A232614(∑[n+4]+11)`
-/

namespace A232613.P7964410384431381509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232614 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A232613.P7964410384431381509

/-! ## A232613.P14510395952917081329

`A232614(A374005(n+1))%A073519(n+1)`
-/

namespace A232613.P14510395952917081329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232614 (A374005 (n + 1)).toNat) (A073519 (n + 1))

end

end A232613.P14510395952917081329

/-!
# A232615: Variant of the Chandra-sutra (A014701) using 3 instead of 2, and a mod argument using residues 1 and 2.

The programs for A232615, there is no canonical definition to state claims against.
-/

/-! ## A232615.P10596999554563976179

`floor(∑{digits}[A118594(n+1), A329048(#)]/2)`
-/

namespace A232615.P10596999554563976179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329048 x).sum : ℤ) : ℚ) / 2⌋

end

end A232615.P10596999554563976179

/-! ## A232615.P11792362746457777270

`A160384(n+1)+A163291(n+2)-2`
-/

namespace A232615.P11792362746457777270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (n + 1) + (A163291 (n + 2) - 2)

end

end A232615.P11792362746457777270

/-! ## A232615.P12552452534382135311

`A053735(2*n+1-A372783(n+1))`
-/

namespace A232615.P12552452534382135311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 ((2 * n + 1 : ℤ) - A372783 (n + 1)).toNat

end

end A232615.P12552452534382135311

/-! ## A232615.P3417144811025942814

`A004526(∑{digits}[A118594(n+1), A329048(#)])`
-/

namespace A232615.P3417144811025942814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329048 x).sum.toNat

end

end A232615.P3417144811025942814

/-! ## A232615.P16475320722250562774

`A123108(∑{digits}[A118594(n+1), A329048(#)])`
-/

namespace A232615.P16475320722250562774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329048 x).sum.toNat

end

end A232615.P16475320722250562774

/-! ## A232615.P8143434657121550230

`A008619(∑{digits}[A118594(n+1), A329048(#)])-1`
-/

namespace A232615.P8143434657121550230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329048 x).sum.toNat - 1

end

end A232615.P8143434657121550230

/-! ## A232615.P6015744734906309920

`A110654(∑{digits}[A118594(n+1), A329048(#)]-1)`
-/

namespace A232615.P6015744734906309920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329048 x).sum - 1).toNat

end

end A232615.P6015744734906309920

/-! ## A232615.P3844539924551134323

`A329199(A118089(n+1))`
-/

namespace A232615.P3844539924551134323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (A118089 (n + 1)).toNat

end

end A232615.P3844539924551134323

/-! ## A232615.P2813848655915583169

`A329199(A362089(n+1))`
-/

namespace A232615.P2813848655915583169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (A362089 (n + 1)).toNat

end

end A232615.P2813848655915583169

/-!
# A232617: Product of first n odd numbers plus product of first n even numbers: (2n-1)!! + (2n)!!, where k!! = A006882(k).

The programs for A232617, the canonical program `A232617.P5588073349614195493` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232617 has offset 1).

The definition of A232617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232617.P5588073349614195493

`A001147(n+1)+A000165(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232617

/-- `A001147(n+1)+A000165(n+1)` -/
def P5588073349614195493.Spec : Prop :=
  ∀ n, P5588073349614195493.a n = A232617 (n + 1)

theorem P5588073349614195493.correct : P5588073349614195493.Spec := by
  intro n
  simp only [A232617, Nat.add_sub_cancel]

end A232617

/-! ## A232617.P15805232454859041615

`A006882(2*(n+1)-1)+A006882(2*(n+1))`
-/

namespace A232617.P15805232454859041615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * (n + 1) - 1) + A006882 (2 * (n + 1))

end

end A232617.P15805232454859041615

namespace A232617

/-- `A006882(2*(n+1)-1)+A006882(2*(n+1))` -/
def P15805232454859041615.Spec : Prop :=
  ∀ n, P15805232454859041615.a n = A232617 (n + 1)

end A232617

/-! ## A232617.P770151692393207142

`∏[2*(n+1)]+∏[2*n+1]`
-/

namespace A232617.P770151692393207142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ∏ j ∈ Finset.range (n + 1), f2 j

end

end A232617.P770151692393207142

namespace A232617

/-- `∏[2*(n+1)]+∏[2*n+1]` -/
def P770151692393207142.Spec : Prop :=
  ∀ n, (P770151692393207142.a n : ℤ) = A232617 (n + 1)

end A232617

/-! ## A232617.P4681602370952140044

`Δ[A129981(2*n)]`
-/

namespace A232617.P4681602370952140044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232617.P4681602370952140044

namespace A232617

/-- `Δ[A129981(2*n)]` -/
def P4681602370952140044.Spec : Prop :=
  ∀ n, P4681602370952140044.a n = A232617 (n + 1)

end A232617

/-! ## A232617.P6147472617066052765

`A076051(2*(n+1))`
-/

namespace A232617.P6147472617066052765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076051 (2 * (n + 1))

end

end A232617.P6147472617066052765

namespace A232617

/-- `A076051(2*(n+1))` -/
def P6147472617066052765.Spec : Prop :=
  ∀ n, P6147472617066052765.a n = A232617 (n + 1)

end A232617

/-! ## A232617.P7231738769120988741

`A060696(2*n+3)`
-/

namespace A232617.P7231738769120988741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060696 (2 * n + 3)

end

end A232617.P7231738769120988741

namespace A232617

/-- `A060696(2*n+3)` -/
def P7231738769120988741.Spec : Prop :=
  ∀ n, P7231738769120988741.a n = A232617 (n + 1)

end A232617

/-! ## A232617.P1651087671656205883

`(A046161(n+1)+A001790(n+1))*A049606(n+1)`
-/

namespace A232617.P1651087671656205883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046161 (n + 1) + A001790 (n + 1)) * A049606 (n + 1)

end

end A232617.P1651087671656205883

namespace A232617

/-- `(A046161(n+1)+A001790(n+1))*A049606(n+1)` -/
def P1651087671656205883.Spec : Prop :=
  ∀ n, P1651087671656205883.a n = A232617 (n + 1)

end A232617

/-!
# A232618: a(n) = (2n)!! mod (2n-1)!! where k!! = A006882(k).

The programs for A232618, the canonical program `A232618.P1310846779733969809` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232618 has offset 1).

The definition of A232618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232618.P1310846779733969809

`A006882(2*(n+1))%A006882(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232618

/-- `A006882(2*(n+1))%A006882(2*(n+1)-1)` -/
def P1310846779733969809.Spec : Prop :=
  ∀ n, P1310846779733969809.a n = A232618 (n + 1)

theorem P1310846779733969809.correct : P1310846779733969809.Spec := by
  intro n
  simp only [A232618, Nat.add_sub_cancel]

end A232618

/-! ## A232618.P7835739412531052857

`∏[2*(n+1)]%∏[2*n+1]`
-/

namespace A232618.P7835739412531052857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A232618.P7835739412531052857

namespace A232618

/-- `∏[2*(n+1)]%∏[2*n+1]` -/
def P7835739412531052857.Spec : Prop :=
  ∀ n, (P7835739412531052857.a n : ℤ) = A232618 (n + 1)

end A232618

/-! ## A232618.P18041029708897241640

`A227415(Δ[n²])`
-/

namespace A232618.P18041029708897241640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227415 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A232618.P18041029708897241640

namespace A232618

/-- `A227415(Δ[n²])` -/
def P18041029708897241640.Spec : Prop :=
  ∀ n, P18041029708897241640.a n = A232618 (n + 1)

end A232618

/-! ## A232618.P2367919740262245962

`2*A227415(2*n+1)-A227415(2*n+1)`
-/

namespace A232618.P2367919740262245962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227415 (2 * n + 1) - A227415 (2 * n + 1)

end

end A232618.P2367919740262245962

namespace A232618

/-- `2*A227415(2*n+1)-A227415(2*n+1)` -/
def P2367919740262245962.Spec : Prop :=
  ∀ n, P2367919740262245962.a n = A232618 (n + 1)

end A232618

/-! ## A232618.P16330819065404173106

`A057427(n)*A227415(A005408(n))`
-/

namespace A232618.P16330819065404173106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A227415 (A005408 n).toNat

end

end A232618.P16330819065404173106

namespace A232618

/-- `A057427(n)*A227415(A005408(n))` -/
def P16330819065404173106.Spec : Prop :=
  ∀ n, P16330819065404173106.a n = A232618 (n + 1)

end A232618

/-! ## A232618.P10324633159976813172

`A000108(C(2, n+2))*A227415(A005408(n))`
-/

namespace A232618.P10324633159976813172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A227415 (A005408 n).toNat

end

end A232618.P10324633159976813172

namespace A232618

/-- `A000108(C(2, n+2))*A227415(A005408(n))` -/
def P10324633159976813172.Spec : Prop :=
  ∀ n, P10324633159976813172.a n = A232618 (n + 1)

end A232618

/-!
# A232621: The number of vertically fault-free domino tilings of the 5 X (2n) board.

The programs for A232621, the canonical program `A232621.P9189827313755203955` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232621 has offset 0).

The definition of A232621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232621.P9189827313755203955

`6*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=8, a(2)=31, a(3)=175`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232621

/-- `6*a(n-1)-a(n-2)-4` -/
def P9189827313755203955.Spec : Prop :=
  ∀ n, P9189827313755203955.a n = A232621 n

theorem P9189827313755203955.correct : P9189827313755203955.Spec := by
  intro n
  simp only [A232621]

end A232621

/-!
# A232622: Number of incongruent domino tilings of the 3 X (2n) board.

The programs for A232622, the canonical program `A232622.P7750197207995084292` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232622 has offset 0).

The definition of A232622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232622.P7750197207995084292

`(A259592(n)+A101265(n+1))/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232622

/-- `(A259592(n)+A101265(n+1))/2` -/
def P7750197207995084292.Spec : Prop :=
  ∀ n, P7750197207995084292.a n = (A232622 n : ℚ)

end A232622

/-! ## A232622.P16378551252361797478

`(A259592(n)+A101265(n+1))*2^A008683(A181758(n+1))`
-/

namespace A232622.P16378551252361797478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259592 n + A101265 (n + 1) : ℚ) * (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ)

end

end A232622.P16378551252361797478

namespace A232622

/-- `(A259592(n)+A101265(n+1))*2^A008683(A181758(n+1))` -/
def P16378551252361797478.Spec : Prop :=
  ∀ n, P16378551252361797478.a n = (A232622 n : ℚ)

end A232622

/-! ## A232622.P3761330267847310671

`A014682(A259592(n)+A101265(n+1))`
-/

namespace A232622.P3761330267847310671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A259592 n + A101265 (n + 1)).toNat

end

end A232622.P3761330267847310671

namespace A232622

/-- `A014682(A259592(n)+A101265(n+1))` -/
def P3761330267847310671.Spec : Prop :=
  ∀ n, P3761330267847310671.a n = A232622 n

end A232622

/-! ## A232622.P664434821200315858

`A014682(A259592(n)+A101879(n+1))`
-/

namespace A232622.P664434821200315858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A259592 n + A101879 (n + 1)).toNat

end

end A232622.P664434821200315858

namespace A232622

/-- `A014682(A259592(n)+A101879(n+1))` -/
def P664434821200315858.Spec : Prop :=
  ∀ n, P664434821200315858.a n = A232622 n

end A232622

/-! ## A232622.P8674605294674871247

`A038572(A259592(n)+A101265(n+1))`
-/

namespace A232622.P8674605294674871247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A259592 n + A101265 (n + 1)).toNat

end

end A232622.P8674605294674871247

namespace A232622

/-- `A038572(A259592(n)+A101265(n+1))` -/
def P8674605294674871247.Spec : Prop :=
  ∀ n, P8674605294674871247.a n = A232622 n

end A232622

/-!
# A232623: Number of partitions of 2*n into parts with multiplicity <= n.

The programs for A232623, there is no canonical definition to state claims against.
-/

/-! ## A232623.P4960643587024188957

`A083690(A300576(n+2))`
-/

namespace A232623.P4960643587024188957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083690 (A300576 (n + 2)).toNat

end

end A232623.P4960643587024188957

/-! ## A232623.P7930583251696276990

`A182616(n)+A002865(n)`
-/

namespace A232623.P7930583251696276990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n + A002865 n

end

end A232623.P7930583251696276990

/-! ## A232623.P7582433703213751035

`A086543(2*n)+A002865(n)`
-/

namespace A232623.P7582433703213751035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (2 * n) + A002865 n

end

end A232623.P7582433703213751035

/-! ## A232623.P15093399567009018242

`A000041(2*n)-∑[A085811(n+2)]`
-/

namespace A232623.P15093399567009018242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232623.P15093399567009018242

/-! ## A232623.P747502637443740418

`∑[A027336(2*n)-A085811(n+2)]`
-/

namespace A232623.P747502637443740418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n) - A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232623.P747502637443740418

/-! ## A232623.P11935474263805314845

`A002865(n)+A058696(n)-A000041(n)`
-/

namespace A232623.P11935474263805314845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A058696 n - A000041 n)

end

end A232623.P11935474263805314845

/-! ## A232623.P2744536344391190591

`A120452(n+1)+A058696(n)-A000070(n)`
-/

namespace A232623.P2744536344391190591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (n + 1) + (A058696 n - A000070 n)

end

end A232623.P2744536344391190591

/-! ## A232623.P4117300142657113038

`A000041(2*n)+A002865(n)-A000041(n)`
-/

namespace A232623.P4117300142657113038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) + (A002865 n - A000041 n)

end

end A232623.P4117300142657113038

/-! ## A232623.P6367754449890049977

`A000041(2*n)+A027336(n+1)-A000041(n+1)`
-/

namespace A232623.P6367754449890049977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) + (A027336 (n + 1) - A000041 (n + 1))

end

end A232623.P6367754449890049977

/-! ## A232623.P2792392810585610910

`A000065(2*n)+A027336(n+1)-A000065(n+1)`
-/

namespace A232623.P2792392810585610910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n) + (A027336 (n + 1) - A000065 (n + 1))

end

end A232623.P2792392810585610910

/-! ## A232623.P1714620410127126500

`A002865(n)+A000041(A005843(n))-A000041(n)`
-/

namespace A232623.P1714620410127126500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A000041 (A005843 n).toNat - A000041 n)

end

end A232623.P1714620410127126500

/-!
# A232624: Coefficient array for the minimal polynomials of 2*cos(2*Pi/n) for n >= 1.

The programs for A232624, there is no canonical definition to state claims against.
-/

/-! ## A232624.P4129662677071925422

`A008683(lcm(A001359(n+1), A286514(n+1)))*A091090(A003959(n+2))`
-/

namespace A232624.P4129662677071925422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lcm (A001359 (n + 1)) (A286514 (n + 1))) * A091090 (A003959 (n + 2)).toNat

end

end A232624.P4129662677071925422

/-! ## A232624.P12210844591285008866

`A181875(n+1)+A010815(A014210(n))`
-/

namespace A232624.P12210844591285008866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181875 (n + 1) + A010815 (A014210 n).toNat

end

end A232624.P12210844591285008866

/-! ## A232624.P7842746531989474959

`A181875(n+1)+A010815(A283706(n))`
-/

namespace A232624.P7842746531989474959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181875 (n + 1) + A010815 (A283706 n).toNat

end

end A232624.P7842746531989474959

/-! ## A232624.P14808396203512664953

`A181875(n+1)+A010815(A103204(n+1))`
-/

namespace A232624.P14808396203512664953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181875 (n + 1) + A010815 (A103204 (n + 1)).toNat

end

end A232624.P14808396203512664953

/-!
# A232625: Denominators of abs(n-8)/(2*n), n >= 1.

The programs for A232625, the canonical program `A232625.P14304359734144954747` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232625 has offset 1).

The definition of A232625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232625.P14304359734144954747

`2*(n+1)/gcd(n-7, 16)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232625

/-- `2*(n+1)/gcd(n-7, 16)` -/
def P14304359734144954747.Spec : Prop :=
  ∀ n, P14304359734144954747.a n = (A232625 (n + 1) : ℚ)

end A232625

/-! ## A232625.P10349689000663117910

`lcm(n+9, 2*(n+1))/(n+9)`
-/

namespace A232625.P10349689000663117910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 9) (2 * (n + 1)) : ℚ) / (n + 9 : ℚ)

end

end A232625.P10349689000663117910

namespace A232625

/-- `lcm(n+9, 2*(n+1))/(n+9)` -/
def P10349689000663117910.Spec : Prop :=
  ∀ n, P10349689000663117910.a n = (A232625 (n + 1) : ℚ)

end A232625

/-! ## A232625.P6713494132729002429

`A225975(A026741(n+1))`
-/

namespace A232625.P6713494132729002429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A026741 (n + 1)).toNat

end

end A232625.P6713494132729002429

namespace A232625

/-- `A225975(A026741(n+1))` -/
def P6713494132729002429.Spec : Prop :=
  ∀ n, P6713494132729002429.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P4237489728599563250

`A225975(A186646(n+1))`
-/

namespace A232625.P4237489728599563250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A186646 (n + 1)).toNat

end

end A232625.P4237489728599563250

namespace A232625

/-- `A225975(A186646(n+1))` -/
def P4237489728599563250.Spec : Prop :=
  ∀ n, P4237489728599563250.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P32819827277489047

`A225975(A065423(n+1)+1)`
-/

namespace A232625.P32819827277489047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A065423 (n + 1) + 1).toNat

end

end A232625.P32819827277489047

namespace A232625

/-- `A225975(A065423(n+1)+1)` -/
def P32819827277489047.Spec : Prop :=
  ∀ n, P32819827277489047.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P8995404336014473201

`A225975((n+1)/A000034(n))`
-/

namespace A232625.P8995404336014473201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A232625.P8995404336014473201

namespace A232625

/-- `A225975((n+1)/A000034(n))` -/
def P8995404336014473201.Spec : Prop :=
  ∀ n, P8995404336014473201.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P11739027955518679680

`2/A060819(n+1)*A251091(A060819(n+1))`
-/

namespace A232625.P11739027955518679680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A060819 (n + 1) : ℚ) * (A251091 (A060819 (n + 1)).toNat : ℚ)

end

end A232625.P11739027955518679680

namespace A232625

/-- `2/A060819(n+1)*A251091(A060819(n+1))` -/
def P11739027955518679680.Spec : Prop :=
  ∀ n, P11739027955518679680.a n = (A232625 (n + 1) : ℚ)

end A232625

/-! ## A232625.P7172251412229673615

`A225975(gcd((n+1)², A225975(n+1)))`
-/

namespace A232625.P7172251412229673615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (Int.gcd ((n + 1) ^ 2 : ℤ) (A225975 (n + 1)))

end

end A232625.P7172251412229673615

namespace A232625

/-- `A225975(gcd((n+1)², A225975(n+1)))` -/
def P7172251412229673615.Spec : Prop :=
  ∀ n, P7172251412229673615.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P4805947152986802790

`A225975(A062828(n+1))`
-/

namespace A232625.P4805947152986802790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A062828 (n + 1)).toNat

end

end A232625.P4805947152986802790

namespace A232625

/-- `A225975(A062828(n+1))` -/
def P4805947152986802790.Spec : Prop :=
  ∀ n, P4805947152986802790.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P16943355874734480287

`A225975(A008619(A022998(n)))`
-/

namespace A232625.P16943355874734480287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A008619 (A022998 n).toNat).toNat

end

end A232625.P16943355874734480287

namespace A232625

/-- `A225975(A008619(A022998(n)))` -/
def P16943355874734480287.Spec : Prop :=
  ∀ n, P16943355874734480287.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P11377054432139758637

`A225975(A064680(n+1))`
-/

namespace A232625.P11377054432139758637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A064680 (n + 1)).toNat

end

end A232625.P11377054432139758637

namespace A232625

/-- `A225975(A064680(n+1))` -/
def P11377054432139758637.Spec : Prop :=
  ∀ n, P11377054432139758637.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P3104661118755619515

`A225975(A225975(n+1))`
-/

namespace A232625.P3104661118755619515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A225975 (n + 1)).toNat

end

end A232625.P3104661118755619515

namespace A232625

/-- `A225975(A225975(n+1))` -/
def P3104661118755619515.Spec : Prop :=
  ∀ n, P3104661118755619515.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P8927953215932297374

`sqrt(A226008(sqrt(A226008(n+1))))`
-/

namespace A232625.P8927953215932297374
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A226008 (SequenceMachineLib.roundAway (Real.sqrt (A226008 (n + 1) : ℝ))).toNat : ℝ)

end

end A232625.P8927953215932297374

namespace A232625

/-- `sqrt(A226008(sqrt(A226008(n+1))))` -/
def P8927953215932297374.Spec : Prop :=
  ∀ n, P8927953215932297374.a n = (A232625 (n + 1) : ℝ)

end A232625

/-! ## A232625.P17674492620851753697

`A146307(A068219(n+1))`
-/

namespace A232625.P17674492620851753697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (A068219 (n + 1)).toNat

end

end A232625.P17674492620851753697

namespace A232625

/-- `A146307(A068219(n+1))` -/
def P17674492620851753697.Spec : Prop :=
  ∀ n, P17674492620851753697.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P11612656128974487107

`A146307(3*A060819(n+1))`
-/

namespace A232625.P11612656128974487107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (3 * A060819 (n + 1)).toNat

end

end A232625.P11612656128974487107

namespace A232625

/-- `A146307(3*A060819(n+1))` -/
def P11612656128974487107.Spec : Prop :=
  ∀ n, P11612656128974487107.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P331265946981232866

`A146307(gcd(A050534(n), A262343(n+3)))`
-/

namespace A232625.P331265946981232866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (Int.gcd (A050534 n) (A262343 (n + 3)))

end

end A232625.P331265946981232866

namespace A232625

/-- `A146307(gcd(A050534(n), A262343(n+3)))` -/
def P331265946981232866.Spec : Prop :=
  ∀ n, P331265946981232866.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P4061476435968229269

`A146307(3*A051724(3*(n+1)))`
-/

namespace A232625.P4061476435968229269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (3 * A051724 (3 * (n + 1))).toNat

end

end A232625.P4061476435968229269

namespace A232625

/-- `A146307(3*A051724(3*(n+1)))` -/
def P4061476435968229269.Spec : Prop :=
  ∀ n, P4061476435968229269.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P2390841508911434145

`A146307(A106609(6*(n+1)))`
-/

namespace A232625.P2390841508911434145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (A106609 (6 * (n + 1))).toNat

end

end A232625.P2390841508911434145

namespace A232625

/-- `A146307(A106609(6*(n+1)))` -/
def P2390841508911434145.Spec : Prop :=
  ∀ n, P2390841508911434145.a n = A232625 (n + 1)

end A232625

/-! ## A232625.P550039400919014585

`A267864(A060577(n))`
-/

namespace A232625.P550039400919014585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267864 (A060577 n).toNat

end

end A232625.P550039400919014585

namespace A232625

/-- `A267864(A060577(n))` -/
def P550039400919014585.Spec : Prop :=
  ∀ n, P550039400919014585.a n = A232625 (n + 1)

end A232625

/-!
# A232626: Degree of the algebraic number 2*sin(4*Pi/n).

The programs for A232626, the canonical program `A232626.P4533820239225470968` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232626 has offset 1).

The definition of A232626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232626.P4533820239225470968

`A055035(A060819(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A232626

/-- `A055035(A060819(n+1))` -/
def P4533820239225470968.Spec : Prop :=
  ∀ n, P4533820239225470968.a n = A232626 (n + 1)

theorem P4533820239225470968.correct : P4533820239225470968.Spec := by
  intro n
  simp only [A232626, Nat.add_sub_cancel]

end A232626

/-! ## A232626.P17738462987865250792

`A055034(2*(n+1)/gcd(16, 7-n))`
-/

namespace A232626.P17738462987865250792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Int.gcd 16 (7 - (n : ℤ)) : ℚ))).toNat

end

end A232626.P17738462987865250792

namespace A232626

/-- `A055034(2*(n+1)/gcd(16, 7-n))` -/
def P17738462987865250792.Spec : Prop :=
  ∀ n, P17738462987865250792.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P11397878123029304684

`A055034(lcm(n+9, 2*(n+1))/(n+9))`
-/

namespace A232626.P11397878123029304684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (SequenceMachineLib.roundAway ((Nat.lcm (n + 9) (2 * (n + 1)) : ℚ) / (n + 9 : ℚ))).toNat

end

end A232626.P11397878123029304684

namespace A232626

/-- `A055034(lcm(n+9, 2*(n+1))/(n+9))` -/
def P11397878123029304684.Spec : Prop :=
  ∀ n, P11397878123029304684.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P13236175426989157270

`A055034(A232625(n+1))`
-/

namespace A232626.P13236175426989157270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A232625 (n + 1)).toNat

end

end A232626.P13236175426989157270

namespace A232626

/-- `A055034(A232625(n+1))` -/
def P13236175426989157270.Spec : Prop :=
  ∀ n, P13236175426989157270.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P2061965406641586407

`A023022(2*A232625(n+1))`
-/

namespace A232626.P2061965406641586407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (2 * A232625 (n + 1)).toNat

end

end A232626.P2061965406641586407

namespace A232626

/-- `A023022(2*A232625(n+1))` -/
def P2061965406641586407.Spec : Prop :=
  ∀ n, P2061965406641586407.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P10001288464629560357

`A055034(A225975(A225975(A178182(n+1))))`
-/

namespace A232626.P10001288464629560357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A225975 (A225975 (A178182 (n + 1)).toNat).toNat).toNat

end

end A232626.P10001288464629560357

namespace A232626

/-- `A055034(A225975(A225975(A178182(n+1))))` -/
def P10001288464629560357.Spec : Prop :=
  ∀ n, P10001288464629560357.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P2975731909056654219

`A093819(gcd(n+1, ∑[n]))`
-/

namespace A232626.P2975731909056654219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A232626.P2975731909056654219

namespace A232626

/-- `A093819(gcd(n+1, ∑[n]))` -/
def P2975731909056654219.Spec : Prop :=
  ∀ n, P2975731909056654219.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P16520514200110073263

`A093819(lcm(2, n+1)/2)`
-/

namespace A232626.P16520514200110073263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A232626.P16520514200110073263

namespace A232626

/-- `A093819(lcm(2, n+1)/2)` -/
def P16520514200110073263.Spec : Prop :=
  ∀ n, P16520514200110073263.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P17708138121369799097

`A093819(floor(n/(n%2+1))+1)`
-/

namespace A232626.P17708138121369799097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A232626.P17708138121369799097

namespace A232626

/-- `A093819(floor(n/(n%2+1))+1)` -/
def P17708138121369799097.Spec : Prop :=
  ∀ n, P17708138121369799097.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P5356105617895370500

`A093819(ceil(n/2)+∑[n+1]%(n+2))`
-/

namespace A232626.P5356105617895370500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (⌈(n : ℚ) / 2⌉ + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℤ)).toNat

end

end A232626.P5356105617895370500

namespace A232626

/-- `A093819(ceil(n/2)+∑[n+1]%(n+2))` -/
def P5356105617895370500.Spec : Prop :=
  ∀ n, P5356105617895370500.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P14120382176909749533

`A093819(ceil(C(or(1, n), n)/2)+floor(n/2))`
-/

namespace A232626.P14120382176909749533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ + ⌊(n : ℚ) / 2⌋).toNat

end

end A232626.P14120382176909749533

namespace A232626

/-- `A093819(ceil(C(or(1, n), n)/2)+floor(n/2))` -/
def P14120382176909749533.Spec : Prop :=
  ∀ n, P14120382176909749533.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P12355315094591150597

`A093819(xor(1, n)+1-gcd(1-n, floor(n/2)))`
-/

namespace A232626.P12355315094591150597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (Nat.xor 1 n + 1 - Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A232626.P12355315094591150597

namespace A232626

/-- `A093819(xor(1, n)+1-gcd(1-n, floor(n/2)))` -/
def P12355315094591150597.Spec : Prop :=
  ∀ n, P12355315094591150597.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P11028661443131732015

`A093819(abs(A030640(n)))`
-/

namespace A232626.P11028661443131732015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 |A030640 n|.toNat

end

end A232626.P11028661443131732015

namespace A232626

/-- `A093819(abs(A030640(n)))` -/
def P11028661443131732015.Spec : Prop :=
  ∀ n, P11028661443131732015.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P15104661538167157837

`A093819(Δ[A001318(n)])`
-/

namespace A232626.P15104661538167157837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (f1 (n + 1) - f1 n).toNat

end

end A232626.P15104661538167157837

namespace A232626

/-- `A093819(Δ[A001318(n)])` -/
def P15104661538167157837.Spec : Prop :=
  ∀ n, P15104661538167157837.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P6164303733200386921

`A093819(Δ[A319390(n)])`
-/

namespace A232626.P6164303733200386921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (f1 (n + 1) - f1 n).toNat

end

end A232626.P6164303733200386921

namespace A232626

/-- `A093819(Δ[A319390(n)])` -/
def P6164303733200386921.Spec : Prop :=
  ∀ n, P6164303733200386921.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P11384571996274039987

`A093819(A026741(n+1))`
-/

namespace A232626.P11384571996274039987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (A026741 (n + 1)).toNat

end

end A232626.P11384571996274039987

namespace A232626

/-- `A093819(A026741(n+1))` -/
def P11384571996274039987.Spec : Prop :=
  ∀ n, P11384571996274039987.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P12394756990921344188

`A093819(A186646(n+1))`
-/

namespace A232626.P12394756990921344188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (A186646 (n + 1)).toNat

end

end A232626.P12394756990921344188

namespace A232626

/-- `A093819(A186646(n+1))` -/
def P12394756990921344188.Spec : Prop :=
  ∀ n, P12394756990921344188.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P609958546501391656

`A093819(A062828(n+1))`
-/

namespace A232626.P609958546501391656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (A062828 (n + 1)).toNat

end

end A232626.P609958546501391656

namespace A232626

/-- `A093819(A062828(n+1))` -/
def P609958546501391656.Spec : Prop :=
  ∀ n, P609958546501391656.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P8564982025818749299

`A093819(A064680(n+1))`
-/

namespace A232626.P8564982025818749299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (A064680 (n + 1)).toNat

end

end A232626.P8564982025818749299

namespace A232626

/-- `A093819(A064680(n+1))` -/
def P8564982025818749299.Spec : Prop :=
  ∀ n, P8564982025818749299.a n = A232626 (n + 1)

end A232626

/-! ## A232626.P3927234328768103323

`A093819(A225975(n+1))`
-/

namespace A232626.P3927234328768103323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (A225975 (n + 1)).toNat

end

end A232626.P3927234328768103323

namespace A232626

/-- `A093819(A225975(n+1))` -/
def P3927234328768103323.Spec : Prop :=
  ∀ n, P3927234328768103323.a n = A232626 (n + 1)

end A232626

/-!
# A232627: Discriminants of the minimal polynomials of 2*sin(2*Pi/n) for n >= 1.

The programs for A232627, there is no canonical definition to state claims against.
-/

/-! ## A232627.P7337343410774226411

`A193681(A225975(n+1))`
-/

namespace A232627.P7337343410774226411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193681 (A225975 (n + 1)).toNat

end

end A232627.P7337343410774226411

/-! ## A232627.P12781187820066841381

`A193681(A232625(2*(n+1)))`
-/

namespace A232627.P12781187820066841381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193681 (A232625 (2 * (n + 1))).toNat

end

end A232627.P12781187820066841381

/-!
# A232628: Denominators of the triangle of polynomial coefficients P(0,x)=1, 2*P(n)=(1+x)*((1+x)^(n-1)+x^(n-1)).

The programs for A232628, there is no canonical definition to state claims against.
-/

/-! ## A232628.P7305337119759755702

`gcd(2, A131398(n))`
-/

namespace A232628.P7305337119759755702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A131398 n)

end

end A232628.P7305337119759755702

/-! ## A232628.P15576721586261763467

`and(2, A131108(n))!`
-/

namespace A232628.P15576721586261763467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (A131108 n)).toNat

end

end A232628.P15576721586261763467

/-! ## A232628.P9788372653292852700

`A133138(n)%2+1`
-/

namespace A232628.P9788372653292852700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133138 n) 2 + 1

end

end A232628.P9788372653292852700

/-! ## A232628.P12852078512530751127

`A210381(n+1)%2+1`
-/

namespace A232628.P12852078512530751127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210381 (n + 1)) 2 + 1

end

end A232628.P12852078512530751127

/-! ## A232628.P614055513673949402

`A212362(n+1)%2+1`
-/

namespace A232628.P614055513673949402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212362 (n + 1)) 2 + 1

end

end A232628.P614055513673949402

/-! ## A232628.P11680473346789276760

`A209687(n+2)%2+1`
-/

namespace A232628.P11680473346789276760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209687 (n + 2)) 2 + 1

end

end A232628.P11680473346789276760

/-! ## A232628.P18229107035558526315

`A000034(A133138(n))`
-/

namespace A232628.P18229107035558526315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A133138 n).toNat

end

end A232628.P18229107035558526315

/-! ## A232628.P16671999693956204999

`A010126(A131398(n))`
-/

namespace A232628.P16671999693956204999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 (A131398 n).toNat

end

end A232628.P16671999693956204999

/-! ## A232628.P3811418085973934094

`A130658(A131108(n))`
-/

namespace A232628.P3811418085973934094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (A131108 n).toNat

end

end A232628.P3811418085973934094

/-! ## A232628.P17045282304283352709

`A135265(A131129(n))`
-/

namespace A232628.P17045282304283352709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135265 (A131129 n).toNat

end

end A232628.P17045282304283352709

/-!
# A232629: Coefficients of the algebraic number 2*sin(4*Pi/n) in the power basis of Q(2*cos(Pi/q(2,n))), with q(2,n) = A232625(n), n >= 1.

The programs for A232629, there is no canonical definition to state claims against.
-/

/-! ## A232629.P15999485389517771550

`A214665(A214703(n+1))%A214714(n+1)`
-/

namespace A232629.P15999485389517771550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214665 (A214703 (n + 1)).toNat) (A214714 (n + 1))

end

end A232629.P15999485389517771550

/-! ## A232629.P2117054244337611294

`A156064(A250243(3*n+2)-A156098(n+7))`
-/

namespace A232629.P2117054244337611294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156064 (A250243 (3 * n + 2) - A156098 (n + 7)).toNat

end

end A232629.P2117054244337611294

/-! ## A232629.P5954320065844534397

`A195470(n+1)-A195470(A373638(n))`
-/

namespace A232629.P5954320065844534397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (n + 1) - A195470 (A373638 n).toNat

end

end A232629.P5954320065844534397

/-! ## A232629.P15577628197433981976

`A324692(A256580(n+1)*A328596(n+1))`
-/

namespace A232629.P15577628197433981976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A256580 (n + 1) * A328596 (n + 1)).toNat

end

end A232629.P15577628197433981976

/-! ## A232629.P13756082525526859364

`A225230(eq[A078572(n+4), A086291(n+1)])`
-/

namespace A232629.P13756082525526859364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078572 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A232629.P13756082525526859364

/-!
# A232630: Coefficient table for the minimal polynomials of 2*sin(4*Pi/n). Rising powers of x.

The programs for A232630, there is no canonical definition to state claims against.
-/

/-! ## A232630.P9527947081402320443

`A231188(n+1)%A390629(n+1)`
-/

namespace A232630.P9527947081402320443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231188 (n + 1)) (A390629 (n + 1))

end

end A232630.P9527947081402320443

/-! ## A232630.P3655404714253550264

`A097805(A353846(3*(n+1)))*A231188(n+1)`
-/

namespace A232630.P3655404714253550264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A353846 (3 * (n + 1))).toNat * A231188 (n + 1)

end

end A232630.P3655404714253550264

/-! ## A232630.P2793869746454359511

`A231188(n+1)*A343097(A343097(n))`
-/

namespace A232630.P2793869746454359511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231188 (n + 1) * A343097 (A343097 n).toNat

end

end A232630.P2793869746454359511

/-! ## A232630.P12955395634447232474

`A231188(n+1)%A094501(A219651(n))`
-/

namespace A232630.P12955395634447232474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231188 (n + 1)) (A094501 (A219651 n).toNat)

end

end A232630.P12955395634447232474

/-! ## A232630.P16065282720112199427

`A231188(n+1)*A267537(A131354(n))`
-/

namespace A232630.P16065282720112199427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231188 (n + 1) * A267537 (A131354 n).toNat

end

end A232630.P16065282720112199427

/-!
# A232634: Ramanujan primes of the form 3*k + 1.

The programs for A232634, there is no canonical definition to state claims against.
-/

/-! ## A232634.P16610311649255489966

`filter[A104272(n+1), A070563(#)]`
-/

namespace A232634.P16610311649255489966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A232634.P16610311649255489966

/-! ## A232634.P10987146169816026839

`filter[A104272(n+1), A135461(#)]`
-/

namespace A232634.P10987146169816026839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A232634.P10987146169816026839

/-! ## A232634.P2344830596988474656

`filter[A104272(n+1), A319691(#)]`
-/

namespace A232634.P2344830596988474656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A232634.P2344830596988474656

/-! ## A232634.P5090509352248146885

`filter[A104272(n+1), A353815(#)]`
-/

namespace A232634.P5090509352248146885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A232634.P5090509352248146885

/-! ## A232634.P2015395647548704406

`filter[A104272(n+1), A353816(#)]`
-/

namespace A232634.P2015395647548704406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A232634.P2015395647548704406

/-! ## A232634.P1713682103519731405

`filter[A104272(n+1), A354982(#)]`
-/

namespace A232634.P1713682103519731405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A232634.P1713682103519731405

/-! ## A232634.P8984235815005400739

`∩[A104272(n+1), A016921(n)]`
-/

namespace A232634.P8984235815005400739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P8984235815005400739

/-! ## A232634.P17317947808789182477

`∩[A104272(n+1), A308196(n)]`
-/

namespace A232634.P17317947808789182477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P17317947808789182477

/-! ## A232634.P15758068682927846957

`∩[A001074(n+1), A104272(n+1)]`
-/

namespace A232634.P15758068682927846957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P15758068682927846957

/-! ## A232634.P17914214366025666510

`∩[A002476(n+1), A104272(n+1)]`
-/

namespace A232634.P17914214366025666510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P17914214366025666510

/-! ## A232634.P2709644749998410621

`∩[A003136(n+1), A104272(n+1)]`
-/

namespace A232634.P2709644749998410621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P2709644749998410621

/-! ## A232634.P9763617021526378262

`∩[A004611(n+1), A104272(n+1)]`
-/

namespace A232634.P9763617021526378262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P9763617021526378262

/-! ## A232634.P12565670954927086265

`∩[A007645(n+1), A104272(n+1)]`
-/

namespace A232634.P12565670954927086265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P12565670954927086265

/-! ## A232634.P1819086570125382775

`∩[A024614(n+1), A104272(n+1)]`
-/

namespace A232634.P1819086570125382775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P1819086570125382775

/-! ## A232634.P9029263899893879586

`∩[A034017(n+1), A104272(n+1)]`
-/

namespace A232634.P9029263899893879586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P9029263899893879586

/-! ## A232634.P6676853339128742717

`∩[A034021(n+1), A104272(n+1)]`
-/

namespace A232634.P6676853339128742717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P6676853339128742717

/-! ## A232634.P5408091263150433396

`∩[A034022(n+1), A104272(n+1)]`
-/

namespace A232634.P5408091263150433396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P5408091263150433396

/-! ## A232634.P2311462170472543374

`∩[A055664(n+1), A104272(n+1)]`
-/

namespace A232634.P2311462170472543374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P2311462170472543374

/-! ## A232634.P2432379974001466503

`∩[A056991(n+1), A104272(n+1)]`
-/

namespace A232634.P2432379974001466503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232634.P2432379974001466503

/-!
# A232635: Expansion of psi(x) * phi(x^2)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A232635, there is no canonical definition to state claims against.
-/

/-! ## A232635.P2044044364479098334

`(A213022(n)+A010816(n))/2`
-/

namespace A232635.P2044044364479098334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213022 n + A010816 n : ℚ) / 2

end

end A232635.P2044044364479098334

/-! ## A232635.P15300218565051591006

`A001281(A213022(n)+A010816(n))`
-/

namespace A232635.P15300218565051591006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A213022 n + A010816 n).toNat

end

end A232635.P15300218565051591006

/-! ## A232635.P9444500621003489239

`A004526(A213022(n)+A010816(n))`
-/

namespace A232635.P9444500621003489239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213022 n + A010816 n).toNat

end

end A232635.P9444500621003489239

/-! ## A232635.P15388963848926762135

`A025480(A213022(n)+A010816(n))`
-/

namespace A232635.P15388963848926762135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A213022 n + A010816 n).toNat

end

end A232635.P15388963848926762135

/-! ## A232635.P12459015317249912657

`A026741(A213022(n)+A010816(n))`
-/

namespace A232635.P12459015317249912657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213022 n + A010816 n).toNat

end

end A232635.P12459015317249912657

/-! ## A232635.P11867891059923917700

`A064680(A213022(n)+A010816(n))`
-/

namespace A232635.P11867891059923917700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A213022 n + A010816 n).toNat

end

end A232635.P11867891059923917700

/-! ## A232635.P2008508790690511702

`A213022(n)-A004526(A213022(n)-A010816(n))`
-/

namespace A232635.P2008508790690511702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213022 n - A004526 (A213022 n - A010816 n).toNat

end

end A232635.P2008508790690511702

/-!
# A232637: Odious numbers of order 2: a(n) = A000069(A000069(n)).

The programs for A232637, the canonical program `A232637.P15784883994947189699` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232637 has offset 1).

The definition of A232637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232637.P15784883994947189699

`A000069(A000069(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232637

/-- `A000069(A000069(n+1))` -/
def P15784883994947189699.Spec : Prop :=
  ∀ n, P15784883994947189699.a n = A232637 (n + 1)

theorem P15784883994947189699.correct : P15784883994947189699.Spec := by
  intro n
  simp only [A232637, Nat.add_sub_cancel]

end A232637

/-! ## A232637.P9160059626690712062

`A000069(comp[xor(n, 2*n)])`
-/

namespace A232637.P9160059626690712062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A232637.P9160059626690712062

namespace A232637

/-- `A000069(comp[xor(n, 2*n)])` -/
def P9160059626690712062.Spec : Prop :=
  ∀ n, P9160059626690712062.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P6684007240857752165

`xor(1, A001969(comp[xor(n, 2*n)]))`
-/

namespace A232637.P6684007240857752165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001969 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A232637.P6684007240857752165

namespace A232637

/-- `xor(1, A001969(comp[xor(n, 2*n)]))` -/
def P6684007240857752165.Spec : Prop :=
  ∀ n, P6684007240857752165.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P14227430366667336080

`A000069(lt[-a(and(n, n-1)), 0])` with `a(0)=1`
-/

namespace A232637.P14227430366667336080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A232637.P14227430366667336080

namespace A232637

/-- `A000069(lt[-a(and(n, n-1)), 0])` -/
def P14227430366667336080.Spec : Prop :=
  ∀ n, P14227430366667336080.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P12692729643198682533

`A000069(eq[1, -a(and(n, n-1))])` with `a(0)=-1`
-/

namespace A232637.P12692729643198682533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232637.P12692729643198682533

namespace A232637

/-- `A000069(eq[1, -a(and(n, n-1))])` -/
def P12692729643198682533.Spec : Prop :=
  ∀ n, P12692729643198682533.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P4280724807315987402

`A000069(eq[0, 1-a(and(n, n-1))])` with `a(0)=1`
-/

namespace A232637.P4280724807315987402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232637.P4280724807315987402

namespace A232637

/-- `A000069(eq[0, 1-a(and(n, n-1))])` -/
def P4280724807315987402.Spec : Prop :=
  ∀ n, P4280724807315987402.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P15096367591960475024

`A000069(eq[0, (n-a(floor(n/2)))%2])` with `a(0)=1`
-/

namespace A232637.P15096367591960475024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod ((n : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232637.P15096367591960475024

namespace A232637

/-- `A000069(eq[0, (n-a(floor(n/2)))%2])` -/
def P15096367591960475024.Spec : Prop :=
  ∀ n, P15096367591960475024.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P17209024121157404427

`xor(1, A001969(char[xor(n, 2*n)]+2*n))`
-/

namespace A232637.P17209024121157404427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001969 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n))

end

end A232637.P17209024121157404427

namespace A232637

/-- `xor(1, A001969(char[xor(n, 2*n)]+2*n))` -/
def P17209024121157404427.Spec : Prop :=
  ∀ n, P17209024121157404427.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P5324223901855824316

`A000069(lt[0, A005590(n)])`
-/

namespace A232637.P5324223901855824316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A232637.P5324223901855824316

namespace A232637

/-- `A000069(lt[0, A005590(n)])` -/
def P5324223901855824316.Spec : Prop :=
  ∀ n, P5324223901855824316.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P725839879415214757

`A000069(lt[0, A010060(n)])`
-/

namespace A232637.P725839879415214757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A232637.P725839879415214757

namespace A232637

/-- `A000069(lt[0, A010060(n)])` -/
def P725839879415214757.Spec : Prop :=
  ∀ n, P725839879415214757.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P3419644760873333673

`A000069(eq[2, A001285(n)])`
-/

namespace A232637.P3419644760873333673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232637.P3419644760873333673

namespace A232637

/-- `A000069(eq[2, A001285(n)])` -/
def P3419644760873333673.Spec : Prop :=
  ∀ n, P3419644760873333673.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P11106649405999490575

`A000069(eq[1, 1-A010059(n)])`
-/

namespace A232637.P11106649405999490575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232637.P11106649405999490575

namespace A232637

/-- `A000069(eq[1, 1-A010059(n)])` -/
def P11106649405999490575.Spec : Prop :=
  ∀ n, P11106649405999490575.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P12306088240160119866

`A000069(eq[1, and(1, A000120(n))])`
-/

namespace A232637.P12306088240160119866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000120 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232637.P12306088240160119866

namespace A232637

/-- `A000069(eq[1, and(1, A000120(n))])` -/
def P12306088240160119866.Spec : Prop :=
  ∀ n, P12306088240160119866.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P9931581997787966488

`A000069(eq[1, xor(1, A010059(n))])`
-/

namespace A232637.P9931581997787966488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A010059 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232637.P9931581997787966488

namespace A232637

/-- `A000069(eq[1, xor(1, A010059(n))])` -/
def P9931581997787966488.Spec : Prop :=
  ∀ n, P9931581997787966488.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P15649539406808646749

`xor(1, A001969(lt[0, A010060(n)]))`
-/

namespace A232637.P15649539406808646749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A232637.P15649539406808646749

namespace A232637

/-- `xor(1, A001969(lt[0, A010060(n)]))` -/
def P15649539406808646749.Spec : Prop :=
  ∀ n, P15649539406808646749.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P5542811254290438251

`A000069(xor(2*n, A010059(n)))`
-/

namespace A232637.P5542811254290438251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (Int.xor (2 * n : ℤ) (A010059 n)).toNat

end

end A232637.P5542811254290438251

namespace A232637

/-- `A000069(xor(2*n, A010059(n)))` -/
def P5542811254290438251.Spec : Prop :=
  ∀ n, P5542811254290438251.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P16641397106656852628

`A000069(Δ[n²]-A010060(n))`
-/

namespace A232637.P16641397106656852628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A010060 n).toNat

end

end A232637.P16641397106656852628

namespace A232637

/-- `A000069(Δ[n²]-A010060(n))` -/
def P16641397106656852628.Spec : Prop :=
  ∀ n, P16641397106656852628.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P17237716173663086367

`A000069(A143579(2*n))`
-/

namespace A232637.P17237716173663086367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A143579 (2 * n)).toNat

end

end A232637.P17237716173663086367

namespace A232637

/-- `A000069(A143579(2*n))` -/
def P17237716173663086367.Spec : Prop :=
  ∀ n, P17237716173663086367.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P8717667434232803314

`filter[A073074(n+1), A010060(#)]`
-/

namespace A232637.P8717667434232803314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A232637.P8717667434232803314

namespace A232637

/-- `filter[A073074(n+1), A010060(#)]` -/
def P8717667434232803314.Spec : Prop :=
  ∀ n, P8717667434232803314.a n = A232637 (n + 1)

end A232637

/-! ## A232637.P10501018520057315753

`A065621(A066194(A065621(A066194(n+1))))`
-/

namespace A232637.P10501018520057315753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (A066194 (A065621 (A066194 (n + 1)).toNat).toNat).toNat

end

end A232637.P10501018520057315753

namespace A232637

/-- `A065621(A066194(A065621(A066194(n+1))))` -/
def P10501018520057315753.Spec : Prop :=
  ∀ n, P10501018520057315753.a n = A232637 (n + 1)

end A232637

/-!
# A232638: Sequence (or tree) generated by these rules: 1 is in S, and if x is in S, then x + 1 and 2*x - 1 are in S, and duplicates are deleted as they occur.

The programs for A232638, there is no canonical definition to state claims against.
-/

/-! ## A232638.P11018094048487978156

`ceil(A232559(A026352(n))/2)`
-/

namespace A232638.P11018094048487978156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232559 (A026352 n).toNat : ℚ) / 2⌉

end

end A232638.P11018094048487978156

/-! ## A232638.P4340330877643588213

`floor(A232559(A026351(n))/2)+1`
-/

namespace A232638.P4340330877643588213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232559 (A026351 n).toNat : ℚ) / 2⌋ + 1

end

end A232638.P4340330877643588213

/-! ## A232638.P10652613178999503223

`A232559(A028310(n))+A057427(n)`
-/

namespace A232638.P10652613178999503223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (A028310 n).toNat + A057427 n

end

end A232638.P10652613178999503223

/-! ## A232638.P7545819357482691840

`A232559(A028310(n))-A057428(n)`
-/

namespace A232638.P7545819357482691840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (A028310 n).toNat - A057428 n

end

end A232638.P7545819357482691840

/-! ## A232638.P17712727440815466933

`A232559(n)+a(A243745(A340673(n)))` with `a(0)=1`
-/

namespace A232638.P17712727440815466933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A232559 n + a (A243745 ((A340673 n).toNat + 10)).toNat

end

end A232638.P17712727440815466933

/-! ## A232638.P17701131372299908805

`A232559(A000007(n)+n)+A057427(n)`
-/

namespace A232638.P17701131372299908805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (A000007 n + (n : ℤ)).toNat + A057427 n

end

end A232638.P17701131372299908805

/-! ## A232638.P17699985028171209179

`A232559(A000007(n)+n)+A001222(A008578(n+1))`
-/

namespace A232638.P17699985028171209179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (A000007 n + (n : ℤ)).toNat + A001222 (A008578 (n + 1)).toNat

end

end A232638.P17699985028171209179

/-! ## A232638.P15918546302966077363

`A019446(A054089(A232559(A026352(n))))`
-/

namespace A232638.P15918546302966077363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A054089 (A232559 (A026352 n).toNat).toNat).toNat

end

end A232638.P15918546302966077363

/-! ## A232638.P17465055419573823

`A000720(p?[A129767(A232559(n+1))])`
-/

namespace A232638.P17465055419573823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (A232559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A232638.P17465055419573823

/-! ## A232638.P5290813113285803945

`A008621(A232559(A007066(n+1)))`
-/

namespace A232638.P5290813113285803945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A232559 (A007066 (n + 1)).toNat).toNat

end

end A232638.P5290813113285803945

/-!
# A232639: Inverse permutation of the sequence of positive integers at A232638.

The programs for A232639, there is no canonical definition to state claims against.
-/

/-! ## A232639.P14640643099831258091

`A083662(A088698(n))-A048680(n)`
-/

namespace A232639.P14640643099831258091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A088698 n).toNat - A048680 n

end

end A232639.P14640643099831258091

/-! ## A232639.P2661984803109700718

`A083662(A124108(n))-A048680(n)`
-/

namespace A232639.P2661984803109700718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A124108 n).toNat - A048680 n

end

end A232639.P2661984803109700718

/-! ## A232639.P14715421178070341394

`A232560(n^A178334(n))+ceil(sin(n)²)`
-/

namespace A232639.P14715421178070341394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A232639.P14715421178070341394

/-! ## A232639.P11342612015110518132

`A232560(n^A178334(n))+A057427(n)`
-/

namespace A232639.P11342612015110518132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + A057427 n

end

end A232639.P11342612015110518132

/-! ## A232639.P6694328601272752493

`A232560(n^A178334(n))-A057428(n)`
-/

namespace A232639.P6694328601272752493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A057428 n

end

end A232639.P6694328601272752493

/-! ## A232639.P11485064530909883621

`A232560(n^A178334(n))+char[A052938(n)]`
-/

namespace A232639.P11485064530909883621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232639.P11485064530909883621

/-! ## A232639.P12594775293094613713

`A232560(n^A178334(n))+1-A000007(n)`
-/

namespace A232639.P12594775293094613713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + (1 - A000007 n)

end

end A232639.P12594775293094613713

/-! ## A232639.P5927862157350749225

`gcd(2, A000010(n+2))+A232560(n^A178334(n))-1`
-/

namespace A232639.P5927862157350749225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) + (A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - 1)

end

end A232639.P5927862157350749225

/-! ## A232639.P16299685998405475472

`A232560(n^A178334(n))+A001221(A000961(n+1))`
-/

namespace A232639.P16299685998405475472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + A001221 (A000961 (n + 1)).toNat

end

end A232639.P16299685998405475472

/-! ## A232639.P5927964141694004969

`A232560(n^A178334(n))+A001221(A165826(n+1))`
-/

namespace A232639.P5927964141694004969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + A001221 (A165826 (n + 1)).toNat

end

end A232639.P5927964141694004969

/-! ## A232639.P12334029511975741294

`A232560(n^A178334(n))+A008683(2*A000040(n+1))`
-/

namespace A232639.P12334029511975741294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + A008683 (2 * A000040 (n + 1)).toNat

end

end A232639.P12334029511975741294

/-! ## A232639.P12542867390379459629

`A232560(A137735(n²))-A057428(n)`
-/

namespace A232639.P12542867390379459629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A137735 (n ^ 2)).toNat - A057428 n

end

end A232639.P12542867390379459629

/-! ## A232639.P13595249104549775682

`A232560(A137735(n²))+A011605(n²)`
-/

namespace A232639.P13595249104549775682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A137735 (n ^ 2)).toNat + A011605 (n ^ 2)

end

end A232639.P13595249104549775682

/-! ## A232639.P15671865173380790791

`A232560(A137735(n²))+1-A000007(n)`
-/

namespace A232639.P15671865173380790791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A137735 (n ^ 2)).toNat + (1 - A000007 n)

end

end A232639.P15671865173380790791

/-! ## A232639.P7087626831142355849

`A232560(A137735(n²))+char[A324932(n+1)]`
-/

namespace A232639.P7087626831142355849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A137735 (n ^ 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232639.P7087626831142355849

/-! ## A232639.P17429404701107111552

`A232560(A137735(n²))+A048766(A048766(n))`
-/

namespace A232639.P17429404701107111552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A137735 (n ^ 2)).toNat + A048766 (A048766 n).toNat

end

end A232639.P17429404701107111552

/-!
# A232640: Sequence (or tree) generated by these rules: 1 is in S, and if x is in S, then x + 1 and 2*x + 1 are in S, and duplicates are deleted as they occur.

The programs for A232640, the canonical program `A232640.P5870212637481075355` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232640 has offset 1).

The definition of A232640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232640.P6565713396087310367

`A232559(n+2)-1`
-/

namespace A232640.P6565713396087310367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (n + 2) - 1

end

end A232640.P6565713396087310367

namespace A232640

/-- `A232559(n+2)-1` -/
def P6565713396087310367.Spec : Prop :=
  ∀ n, P6565713396087310367.a n = A232640 (n + 1)

end A232640

/-! ## A232640.P12245182647101188758

`∑[-Δ[-A232559(n+1)]]`
-/

namespace A232640.P12245182647101188758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A232559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232640.P12245182647101188758

namespace A232640

/-- `∑[-Δ[-A232559(n+1)]]` -/
def P12245182647101188758.Spec : Prop :=
  ∀ n, P12245182647101188758.a n = A232640 (n + 1)

end A232640

/-! ## A232640.P5451390268344857371

`A023443(A232559(n+2))`
-/

namespace A232640.P5451390268344857371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A232559 (n + 2)).toNat

end

end A232640.P5451390268344857371

namespace A232640

/-- `A023443(A232559(n+2))` -/
def P5451390268344857371.Spec : Prop :=
  ∀ n, P5451390268344857371.a n = A232640 (n + 1)

end A232640

/-! ## A232640.P13479282049447312910

`∑[Δ[A232559(n+1)]%A026351(n+1)²]`
-/

namespace A232640.P13479282049447312910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A026351 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232640.P13479282049447312910

namespace A232640

/-- `∑[Δ[A232559(n+1)]%A026351(n+1)²]` -/
def P13479282049447312910.Spec : Prop :=
  ∀ n, P13479282049447312910.a n = A232640 (n + 1)

end A232640

/-! ## A232640.P3681469452488445418

`A232638(n+3)-2`
-/

namespace A232640.P3681469452488445418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232638 (n + 3) - 2

end

end A232640.P3681469452488445418

namespace A232640

/-- `A232638(n+3)-2` -/
def P3681469452488445418.Spec : Prop :=
  ∀ n, P3681469452488445418.a n = A232640 (n + 1)

end A232640

/-! ## A232640.P5870212637481075355

`A135533(A003754(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A232640

/-- `A135533(A003754(n+2))` -/
def P5870212637481075355.Spec : Prop :=
  ∀ n, P5870212637481075355.a n = A232640 (n + 1)

theorem P5870212637481075355.correct : P5870212637481075355.Spec := by
  intro n
  simp only [A232640, Nat.add_sub_cancel]

end A232640

/-! ## A232640.P15415753398204363468

`A004525(∑[2*Δ[A232559(n+1)]])`
-/

namespace A232640.P15415753398204363468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232640.P15415753398204363468

namespace A232640

/-- `A004525(∑[2*Δ[A232559(n+1)]])` -/
def P15415753398204363468.Spec : Prop :=
  ∀ n, P15415753398204363468.a n = A232640 (n + 1)

end A232640

/-!
# A232641: Inverse permutation of the sequence of positive integers at A232640.

The programs for A232641, there is no canonical definition to state claims against.
-/

/-! ## A232641.P3544477446300079688

`A000071(n+1)+A232560(n+2)-A000045(n+1)`
-/

namespace A232641.P3544477446300079688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A232560 (n + 2) - A000045 (n + 1))

end

end A232641.P3544477446300079688

/-! ## A232641.P16008623118959836926

`∑[Δ[A232560(n+1)]%A022112(n)]`
-/

namespace A232641.P16008623118959836926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A022112 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232641.P16008623118959836926

/-! ## A232641.P17983419663418353456

`A307445(A031369(n+2))+A232560(n+2)`
-/

namespace A232641.P17983419663418353456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A031369 (n + 2)).toNat + A232560 (n + 2)

end

end A232641.P17983419663418353456

/-! ## A232641.P12740463455096458933

`A095903(A232640(A095903(n+1)))`
-/

namespace A232641.P12740463455096458933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A232640 (A095903 (n + 1)).toNat).toNat

end

end A232641.P12740463455096458933

/-! ## A232641.P5414116495014894757

`A232639(n+3)-A001511(A112772(n+1))`
-/

namespace A232641.P5414116495014894757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232639 (n + 3) - A001511 (A112772 (n + 1)).toNat

end

end A232641.P5414116495014894757

/-! ## A232641.P10232863749169995697

`A055396(p?[A008578(A232560(n+1))])`
-/

namespace A232641.P10232863749169995697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A232560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A232641.P10232863749169995697

/-! ## A232641.P5765833250145586400

`A307445(A007522(n+2))+A232560(n+2)`
-/

namespace A232641.P5765833250145586400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A007522 (n + 2)).toNat + A232560 (n + 2)

end

end A232641.P5765833250145586400

/-! ## A232641.P3126801874859626801

`A307445(A122869(n+2))+A232560(n+2)`
-/

namespace A232641.P3126801874859626801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A122869 (n + 2)).toNat + A232560 (n + 2)

end

end A232641.P3126801874859626801

/-! ## A232641.P4121069189288620755

`A232560(n+2)-A001221(A165826(n+2))`
-/

namespace A232641.P4121069189288620755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (n + 2) - A001221 (A165826 (n + 2)).toNat

end

end A232641.P4121069189288620755

/-! ## A232641.P1205772541306860022

`A356874(A370762(n+1)-1)`
-/

namespace A232641.P1205772541306860022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A370762 (n + 1) - 1).toNat

end

end A232641.P1205772541306860022

/-! ## A232641.P5419995084791757331

`A321800(A059268(n))+A232560(n+2)`
-/

namespace A232641.P5419995084791757331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A059268 n).toNat + A232560 (n + 2)

end

end A232641.P5419995084791757331

/-!
# A232642: Sequence (or tree) generated by these rules: 1 is in S, and if x is in S, then x + 1 and 2*x + 2 are in S, and duplicates are deleted as they occur.

The programs for A232642, there is no canonical definition to state claims against.
-/

/-! ## A232642.P507612385882938472

`A232559(n+3)-2`
-/

namespace A232642.P507612385882938472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (n + 3) - 2

end

end A232642.P507612385882938472

/-! ## A232642.P13924110403880455601

`∑[Δ[A232559(n+2)]%A026351(n+1)²]`
-/

namespace A232642.P13924110403880455601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A026351 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232642.P13924110403880455601

/-! ## A232642.P18380774913196579305

`A232640(n+2)-1`
-/

namespace A232642.P18380774913196579305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232640 (n + 2) - 1

end

end A232642.P18380774913196579305

/-! ## A232642.P10746165024063425280

`A023443(A232640(n+2))`
-/

namespace A232642.P10746165024063425280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A232640 (n + 2)).toNat

end

end A232642.P10746165024063425280

/-! ## A232642.P17781382238830358729

`∑[Δ[A232640(n+1)]%A036331(n+1)]`
-/

namespace A232642.P17781382238830358729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232640 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A036331 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232642.P17781382238830358729

/-! ## A232642.P17928526234772622448

`A232638(n+4)-3`
-/

namespace A232642.P17928526234772622448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232638 (n + 4) - 3

end

end A232642.P17928526234772622448

/-!
# A232643: Inverse permutation of the sequence of positive integers at A232642.

The programs for A232643, there is no canonical definition to state claims against.
-/

/-! ## A232643.P6425994689732738662

`A232560(n+3)-2`
-/

namespace A232643.P6425994689732738662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (n + 3) - 2

end

end A232643.P6425994689732738662

/-! ## A232643.P1437520230015628488

`A280560(2*n+1)+A232560(n+3)`
-/

namespace A232643.P1437520230015628488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + A232560 (n + 3)

end

end A232643.P1437520230015628488

/-! ## A232643.P1127670897263593106

`A095903(A081241(n+2))-1`
-/

namespace A232643.P1127670897263593106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A081241 (n + 2)).toNat - 1

end

end A232643.P1127670897263593106

/-! ## A232643.P2544664713015325110

`A344682(A095903(n+2))-1`
-/

namespace A232643.P2544664713015325110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (A095903 (n + 2)).toNat - 1

end

end A232643.P2544664713015325110

/-! ## A232643.P9668500644652192393

`A232641(A232640(a(n-1)+1)+1)-1` with `a(0)=1`
-/

namespace A232643.P9668500644652192393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A232641 (A232640 (a (n - 1) + 1).toNat + 1).toNat - 1

end

end A232643.P9668500644652192393

/-! ## A232643.P12106827495576581456

`A345253(A059893(n+3))-2`
-/

namespace A232643.P12106827495576581456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (A059893 (n + 3)).toNat - 2

end

end A232643.P12106827495576581456

/-!
# A232646: Sequence (or tree or triangle) generated by these rules: 1 is in S, and if x is in S, then 2*x and 5*x are in S, and duplicates are deleted as they occur.

The programs for A232646, the canonical program `A232646.P5976019983787370768` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232646 has offset 1).

The definition of A232646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232646.P10747558555883719024

`2^(row(n)-col(n))*5^col(n)`
-/

namespace A232646.P10747558555883719024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (5 ^ SequenceMachineLib.triCol n : ℚ)

end

end A232646.P10747558555883719024

namespace A232646

/-- `2^(row(n)-col(n))*5^col(n)` -/
def P10747558555883719024.Spec : Prop :=
  ∀ n, P10747558555883719024.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P16115349192927376363

`A013621(n)/A007318(n)`
-/

namespace A232646.P16115349192927376363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013621 n : ℚ) / (A007318 n : ℚ)

end

end A232646.P16115349192927376363

namespace A232646

/-- `A013621(n)/A007318(n)` -/
def P16115349192927376363.Spec : Prop :=
  ∀ n, P16115349192927376363.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P18238183934179597056

`A013628(n)/A038207(n)`
-/

namespace A232646.P18238183934179597056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013628 n : ℚ) / (A038207 n : ℚ)

end

end A232646.P18238183934179597056

namespace A232646

/-- `A013628(n)/A038207(n)` -/
def P18238183934179597056.Spec : Prop :=
  ∀ n, P18238183934179597056.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P5976019983787370768

`A000351(A002262(n))*A130321(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232646

/-- `A000351(A002262(n))*A130321(n)` -/
def P5976019983787370768.Spec : Prop :=
  ∀ n, P5976019983787370768.a n = A232646 (n + 1)

theorem P5976019983787370768.correct : P5976019983787370768.Spec := by
  intro n
  simp only [A232646, Nat.add_sub_cancel]

end A232646

/-! ## A232646.P6900858718286607563

`A013612(n)/A013610(n)*A036561(n)`
-/

namespace A232646.P6900858718286607563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A013610 n : ℚ) * (A036561 n : ℚ)

end

end A232646.P6900858718286607563

namespace A232646

/-- `A013612(n)/A013610(n)*A036561(n)` -/
def P6900858718286607563.Spec : Prop :=
  ∀ n, P6900858718286607563.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P8962605811976689876

`A013612(n)/A007318(n)*A130321(n)`
-/

namespace A232646.P8962605811976689876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A007318 n : ℚ) * (A130321 n : ℚ)

end

end A232646.P8962605811976689876

namespace A232646

/-- `A013612(n)/A007318(n)*A130321(n)` -/
def P8962605811976689876.Spec : Prop :=
  ∀ n, P8962605811976689876.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P14768848459248988793

`A013628(n)/gcd(A013623(n), A013628(n))`
-/

namespace A232646.P14768848459248988793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013628 n : ℚ) / (Int.gcd (A013623 n) (A013628 n) : ℚ)

end

end A232646.P14768848459248988793

namespace A232646

/-- `A013628(n)/gcd(A013623(n), A013628(n))` -/
def P14768848459248988793.Spec : Prop :=
  ∀ n, P14768848459248988793.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P8150094910970601496

`lcm(A013612(n), A038207(n))/A007318(n)`
-/

namespace A232646.P8150094910970601496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013612 n) (A038207 n) : ℚ) / (A007318 n : ℚ)

end

end A232646.P8150094910970601496

namespace A232646

/-- `lcm(A013612(n), A038207(n))/A007318(n)` -/
def P8150094910970601496.Spec : Prop :=
  ∀ n, P8150094910970601496.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P9630103799443971922

`A013611(n)/A013609(n)²*A013621(n)`
-/

namespace A232646.P9630103799443971922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (A013609 n ^ 2 : ℚ) * (A013621 n : ℚ)

end

end A232646.P9630103799443971922

namespace A232646

/-- `A013611(n)/A013609(n)²*A013621(n)` -/
def P9630103799443971922.Spec : Prop :=
  ∀ n, P9630103799443971922.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P14181076044936097257

`A038259(n)/A027465(n)`
-/

namespace A232646.P14181076044936097257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / (A027465 n : ℚ)

end

end A232646.P14181076044936097257

namespace A232646

/-- `A038259(n)/A027465(n)` -/
def P14181076044936097257.Spec : Prop :=
  ∀ n, P14181076044936097257.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P17603274046312742624

`A038259(n)/A013610(A061579(n))`
-/

namespace A232646.P17603274046312742624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / (A013610 (A061579 n).toNat : ℚ)

end

end A232646.P17603274046312742624

namespace A232646

/-- `A038259(n)/A013610(A061579(n))` -/
def P17603274046312742624.Spec : Prop :=
  ∀ n, P17603274046312742624.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P11068525555507598085

`A038259(n)/gcd(A038259(n), A038291(n))`
-/

namespace A232646.P11068525555507598085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / (Int.gcd (A038259 n) (A038291 n) : ℚ)

end

end A232646.P11068525555507598085

namespace A232646

/-- `A038259(n)/gcd(A038259(n), A038291(n))` -/
def P11068525555507598085.Spec : Prop :=
  ∀ n, P11068525555507598085.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P832672935617051342

`A038216(n)/A013609(n)`
-/

namespace A232646.P832672935617051342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038216 n : ℚ) / (A013609 n : ℚ)

end

end A232646.P832672935617051342

namespace A232646

/-- `A038216(n)/A013609(n)` -/
def P832672935617051342.Spec : Prop :=
  ∀ n, P832672935617051342.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P16482015380462571937

`A038283(n)/A038231(n)`
-/

namespace A232646.P16482015380462571937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038283 n : ℚ) / (A038231 n : ℚ)

end

end A232646.P16482015380462571937

namespace A232646

/-- `A038283(n)/A038231(n)` -/
def P16482015380462571937.Spec : Prop :=
  ∀ n, P16482015380462571937.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P2229477246105004376

`A038240(n)/A038208(n)`
-/

namespace A232646.P2229477246105004376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n : ℚ) / (A038208 n : ℚ)

end

end A232646.P2229477246105004376

namespace A232646

/-- `A038240(n)/A038208(n)` -/
def P2229477246105004376.Spec : Prop :=
  ∀ n, P2229477246105004376.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P3487479278419515355

`A038307(n)/A038243(n)`
-/

namespace A232646.P3487479278419515355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038307 n : ℚ) / (A038243 n : ℚ)

end

end A232646.P3487479278419515355

namespace A232646

/-- `A038307(n)/A038243(n)` -/
def P3487479278419515355.Spec : Prop :=
  ∀ n, P3487479278419515355.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P14567800198022348978

`A038264(n)/A038220(n)`
-/

namespace A232646.P14567800198022348978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A038220 n : ℚ)

end

end A232646.P14567800198022348978

namespace A232646

/-- `A038264(n)/A038220(n)` -/
def P14567800198022348978.Spec : Prop :=
  ∀ n, P14567800198022348978.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P10324588681130826210

`A038331(n)/A038255(n)`
-/

namespace A232646.P10324588681130826210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038331 n : ℚ) / (A038255 n : ℚ)

end

end A232646.P10324588681130826210

namespace A232646

/-- `A038331(n)/A038255(n)` -/
def P10324588681130826210.Spec : Prop :=
  ∀ n, P10324588681130826210.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P3679857075879129509

`A038288(n)/A038232(n)`
-/

namespace A232646.P3679857075879129509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038288 n : ℚ) / (A038232 n : ℚ)

end

end A232646.P3679857075879129509

namespace A232646

/-- `A038288(n)/A038232(n)` -/
def P3679857075879129509.Spec : Prop :=
  ∀ n, P3679857075879129509.a n = (A232646 (n + 1) : ℚ)

end A232646

/-! ## A232646.P1272415654590857820

`A038312(n)/A038244(n)`
-/

namespace A232646.P1272415654590857820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038312 n : ℚ) / (A038244 n : ℚ)

end

end A232646.P1272415654590857820

namespace A232646

/-- `A038312(n)/A038244(n)` -/
def P1272415654590857820.Spec : Prop :=
  ∀ n, P1272415654590857820.a n = (A232646 (n + 1) : ℚ)

end A232646

/-!
# A232647: Number of (n+2) X (n+2) 0..1 arrays x(i,j) with Sum_{j=1..n+2} j*x(i,j) equal for every row, Sum{i=1..n+2} i*x(i,j) equal for every column, and upper left element zero.

The programs for A232647, there is no canonical definition to state claims against.
-/

/-! ## A232647.P16468046179874179978

`A232654(∑[4*n]+1)`
-/

namespace A232647.P16468046179874179978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232647.P16468046179874179978

/-! ## A232647.P612580362334270

`A232654(A001844(n))+char[19]`
-/

namespace A232647.P612580362334270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A232647.P612580362334270

/-! ## A232647.P12188995338884388968

`gcd(A025444(n), A232654(A001844(n)))`
-/

namespace A232647.P12188995338884388968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025444 n) (A232654 (A001844 n).toNat)

end

end A232647.P12188995338884388968

/-! ## A232647.P8636927880762801996

`A047726(n+1)*A232654(A001844(n))`
-/

namespace A232647.P8636927880762801996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1) * A232654 (A001844 n).toNat

end

end A232647.P8636927880762801996

/-!
# A232648: Number of (n+2)X(1+2) 0..1 arrays x(i,j) with every row sum{j*x(i,j), j=1..1+2} equal, and every column sum{i*x(i,j), i=1..n+2} equal, with upper left element zero.

The programs for A232648, there is no canonical definition to state claims against.
-/

/-! ## A232648.P4857488043717080078

`A058377(n+3)+1`
-/

namespace A232648.P4857488043717080078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (n + 3) + 1

end

end A232648.P4857488043717080078

/-! ## A232648.P6917609720245822381

`A063865(n+3)/2+1`
-/

namespace A232648.P6917609720245822381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063865 (n + 3) : ℚ) / 2 + 1

end

end A232648.P6917609720245822381

/-! ## A232648.P7714229434500177669

`A069918(n+3)*A133872(n)+1`
-/

namespace A232648.P7714229434500177669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069918 (n + 3) * A133872 n + 1

end

end A232648.P7714229434500177669

/-! ## A232648.P10571992993911509335

`A059529(n+3)-Δ[A125128(n+1)]`
-/

namespace A232648.P10571992993911509335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059529 (n + 3) - (f1 (n + 1) - f1 n)

end

end A232648.P10571992993911509335

/-! ## A232648.P16139524657865904091

`(A063865(n+3)+2)*2^A008683(A038888(n+1))`
-/

namespace A232648.P16139524657865904091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063865 (n + 3) + 2 : ℚ) * (2 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ)

end

end A232648.P16139524657865904091

/-!
# A232649: Number of (n+2)X(3+2) 0..1 arrays x(i,j) with every row sum{j*x(i,j), j=1..3+2} equal, and every column sum{i*x(i,j), i=1..n+2} equal, with upper left element zero.

The programs for A232649, there is no canonical definition to state claims against.
-/

/-! ## A232649.P14873647009944145867

`A317577(n+3)+1`
-/

namespace A232649.P14873647009944145867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317577 (n + 3) + 1

end

end A232649.P14873647009944145867

/-! ## A232649.P11150169833194578706

`A232654(∑[n+2]+4)`
-/

namespace A232649.P11150169833194578706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232649.P11150169833194578706

/-! ## A232649.P5632815896307972761

`A008588(A112972(n+3))+1`
-/

namespace A232649.P5632815896307972761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A112972 (n + 3)).toNat + 1

end

end A232649.P5632815896307972761

/-! ## A232649.P1574473228342703461

`or(1, A232654(A167614(n+1)))`
-/

namespace A232649.P1574473228342703461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232654 (A167614 (n + 1)).toNat)

end

end A232649.P1574473228342703461

/-! ## A232649.P6719432234487847987

`A232654(A167614(n+1))+A011744(n)`
-/

namespace A232649.P6719432234487847987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A167614 (n + 1)).toNat + A011744 n

end

end A232649.P6719432234487847987

/-!
# A232650: Number of (n+2)X(4+2) 0..1 arrays x(i,j) with every row sum{j*x(i,j), j=1..4+2} equal, and every column sum{i*x(i,j), i=1..n+2} equal, with upper left element zero.

The programs for A232650, there is no canonical definition to state claims against.
-/

/-! ## A232650.P17296790717157106488

`A232654(A374004(n+1))`
-/

namespace A232650.P17296790717157106488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A374004 (n + 1)).toNat

end

end A232650.P17296790717157106488

/-! ## A232650.P12744431700168006559

`A232654(A141214(n)+7)`
-/

namespace A232650.P12744431700168006559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A141214 n + 7).toNat

end

end A232650.P12744431700168006559

/-! ## A232650.P6881801817957914030

`A232654(A052905(n)+9)`
-/

namespace A232650.P6881801817957914030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A052905 n + 9).toNat

end

end A232650.P6881801817957914030

/-! ## A232650.P4230909531616968929

`A232654(A055999(n)+10)`
-/

namespace A232650.P4230909531616968929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A055999 n + 10).toNat

end

end A232650.P4230909531616968929

/-! ## A232650.P13761468351698789152

`A232654(eq[5, A066657(n)])`
-/

namespace A232650.P13761468351698789152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232650.P13761468351698789152

/-!
# A232651: Number of (n+2)X(5+2) 0..1 arrays x(i,j) with every row sum{j*x(i,j), j=1..5+2} equal, and every column sum{i*x(i,j), i=1..n+2} equal, with upper left element zero.

The programs for A232651, there is no canonical definition to state claims against.
-/

/-! ## A232651.P7800129120476804200

`A232654(A374005(n+1))`
-/

namespace A232651.P7800129120476804200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A374005 (n + 1)).toNat

end

end A232651.P7800129120476804200

/-! ## A232651.P9300138142731234971

`A232654(A167499(n+3))`
-/

namespace A232651.P9300138142731234971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A167499 (n + 3)).toNat

end

end A232651.P9300138142731234971

/-! ## A232651.P9093326555152600458

`A232654(A155212(n)+13)`
-/

namespace A232651.P9093326555152600458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A155212 n + 13).toNat

end

end A232651.P9093326555152600458

/-! ## A232651.P5904810001264824682

`A232654(A056000(n)+15)`
-/

namespace A232651.P5904810001264824682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A056000 n + 15).toNat

end

end A232651.P5904810001264824682

/-! ## A232651.P14919055483656144873

`A232654(eq[7, A066657(n)])`
-/

namespace A232651.P14919055483656144873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232651.P14919055483656144873

/-!
# A232652: Number of (n+2)X(6+2) 0..1 arrays x(i,j) with every row sum{j*x(i,j), j=1..6+2} equal, and every column sum{i*x(i,j), i=1..n+2} equal, with upper left element zero.

The programs for A232652, there is no canonical definition to state claims against.
-/

/-! ## A232652.P8941722350650029630

`A232654(A374007(n+1))`
-/

namespace A232652.P8941722350650029630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A374007 (n + 1)).toNat

end

end A232652.P8941722350650029630

/-! ## A232652.P9117024419583187504

`A232654(A056115(n)+21)`
-/

namespace A232652.P9117024419583187504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A056115 n + 21).toNat

end

end A232652.P9117024419583187504

/-! ## A232652.P13590518134026114772

`A232654(A167499(n+4)+1)`
-/

namespace A232652.P13590518134026114772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A167499 (n + 4) + 1).toNat

end

end A232652.P13590518134026114772

/-! ## A232652.P11182378341468354081

`A232654(A167614(n+4)+3)`
-/

namespace A232652.P11182378341468354081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A167614 (n + 4) + 3).toNat

end

end A232652.P11182378341468354081

/-! ## A232652.P4844833336304814397

`A232654(A000124(n+5)+5)`
-/

namespace A232652.P4844833336304814397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A000124 (n + 5) + 5).toNat

end

end A232652.P4844833336304814397

/-!
# A232653: Number of (n+2)X(7+2) 0..1 arrays x(i,j) with every row sum{j*x(i,j), j=1..7+2} equal, and every column sum{i*x(i,j), i=1..n+2} equal, with upper left element zero.

The programs for A232653, there is no canonical definition to state claims against.
-/

/-! ## A232653.P16950738133398526700

`A232654(A374008(n+1))`
-/

namespace A232653.P16950738133398526700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A374008 (n + 1)).toNat

end

end A232653.P16950738133398526700

/-! ## A232653.P13357378464366916555

`A232654(A055999(n+4))`
-/

namespace A232653.P13357378464366916555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (A055999 (n + 4)).toNat

end

end A232653.P13357378464366916555

/-! ## A232653.P12493456742533877023

`A232654(eq[4, A219347(n)])`
-/

namespace A232653.P12493456742533877023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232653.P12493456742533877023

/-! ## A232653.P16256376858732719063

`A232654(eq[6, A193592(n)])`
-/

namespace A232653.P16256376858732719063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232653.P16256376858732719063

/-! ## A232653.P11014372095031576477

`A232654(eq[11, A066657(n)])`
-/

namespace A232653.P11014372095031576477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232653.P11014372095031576477

/-!
# A232655: Primes p such that reversal (p^2+p) is also prime.

The programs for A232655, there is no canonical definition to state claims against.
-/

/-! ## A232655.P8752699728169731181

`A101635(A337617(n))`
-/

namespace A232655.P8752699728169731181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101635 (A337617 n).toNat

end

end A232655.P8752699728169731181

/-! ## A232655.P4955917511258633636

`A006512(eq[A341977(n), A343023(n+2)])`
-/

namespace A232655.P4955917511258633636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341977 (n + 29)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A232655.P4955917511258633636

/-!
# A232656: The number of pairs of numbers below n that, when generating a Fibonacci-like sequence modulo n, contain zeros.

The programs for A232656, there is no canonical definition to state claims against.
-/

/-! ## A232656.P16233723202859701269

`(n+1)²-A232357(n+1)`
-/

namespace A232656.P16233723202859701269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A232357 (n + 1)

end

end A232656.P16233723202859701269

/-! ## A232656.P11767447262191927750

`A028387(n)-(A232357(n+1)+n)`
-/

namespace A232656.P11767447262191927750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - (A232357 (n + 1) + (n : ℤ))

end

end A232656.P11767447262191927750

/-! ## A232656.P11817707421204997129

`∑[A004277(n)]-A232357(n+1)+n`
-/

namespace A232656.P11817707421204997129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A232357 (n + 1) + (n : ℤ)

end

end A232656.P11817707421204997129

/-! ## A232656.P8925455371101735778

`abs(∑[A004273(n+1)]-A232357(n+1))`
-/

namespace A232656.P8925455371101735778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A232357 (n + 1)|

end

end A232656.P8925455371101735778

/-! ## A232656.P14848777256677441401

`A000217(n)+∑[n+1]-A232357(n+1)`
-/

namespace A232656.P14848777256677441401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A232357 (n + 1))

end

end A232656.P14848777256677441401

/-! ## A232656.P6206388000389743672

`A000027(∑[2*n]-A232357(n+1)+1)+n`
-/

namespace A232656.P6206388000389743672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A232357 (n + 1) + 1).toNat + (n : ℤ)

end

end A232656.P6206388000389743672

/-!
# A232658: Numbers that are factors of Lucas numbers, whose multiples do not appear in some other Fibonacci-like sequence.

The programs for A232658, there is no canonical definition to state claims against.
-/

/-! ## A232658.P15767200083977424603

`∩[A065156(n+1), A230457(n+1)]`
-/

namespace A232658.P15767200083977424603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232658.P15767200083977424603

/-! ## A232658.P17527728215033316320

`∩[comp[A064414(n+1)], A065156(n+1)]`
-/

namespace A232658.P17527728215033316320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A232658.P17527728215033316320

/-! ## A232658.P16399869297113033155

`∩[comp[A064362(n+1)], A230457(n+1)]`
-/

namespace A232658.P16399869297113033155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064362 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A232658.P16399869297113033155

/-! ## A232658.P17655062070625249532

`∩[lt[-1, A223486(n+1)]+1, A230457(n+1)]`
-/

namespace A232658.P17655062070625249532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A232658.P17655062070625249532

/-!
# A232663: Number of permutations of order n such that no proper partial sum is zero modulo n.

The programs for A232663, there is no canonical definition to state claims against.
-/

/-! ## A232663.P10948034787449016869

`lcm(A006530(A000142(n)), A232664(n+1))`
-/

namespace A232663.P10948034787449016869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A000142 n).toNat) (A232664 (n + 1))

end

end A232663.P10948034787449016869

/-! ## A232663.P3034192382330700196

`A128716(A071726(n))`
-/

namespace A232663.P3034192382330700196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128716 (A071726 n).toNat

end

end A232663.P3034192382330700196

/-!
# A232664: Number of permutations of order n-1 such that no proper partial sum is zero modulo n.

The programs for A232664, there is no canonical definition to state claims against.
-/

/-! ## A232664.P7302542388656754620

`floor(A005185(A008438(n!))/2)`
-/

namespace A232664.P7302542388656754620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005185 (A008438 (Nat.factorial n)).toNat : ℚ) / 2⌋

end

end A232664.P7302542388656754620

/-! ## A232664.P6105330300562030911

`ceil(A066304(n)/sqrt(5))*A136343(n)`
-/

namespace A232664.P6105330300562030911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066304 n : ℝ) / Real.sqrt (5 : ℝ)⌉ * A136343 n

end

end A232664.P6105330300562030911

/-! ## A232664.P791556338138825304

`A016116(n)*A127286(A127782(n))`
-/

namespace A232664.P791556338138825304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A127286 (A127782 n).toNat

end

end A232664.P791556338138825304

/-!
# A232665: Number of compositions of 2n such that the largest multiplicity of parts equals n.

The programs for A232665, the canonical program `A232665.P5891118158449811280` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232665 has offset 0).

The definition of A232665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232665.P8048775890176220147

`A222763(A028310(n))+1`
-/

namespace A232665.P8048775890176220147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222763 (A028310 n).toNat + 1

end

end A232665.P8048775890176220147

namespace A232665

/-- `A222763(A028310(n))+1` -/
def P8048775890176220147.Spec : Prop :=
  ∀ n, P8048775890176220147.a n = A232665 n

end A232665

/-! ## A232665.P4244399368655365597

`A222763(n)+A057427(n)`
-/

namespace A232665.P4244399368655365597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222763 n + A057427 n

end

end A232665.P4244399368655365597

namespace A232665

/-- `A222763(n)+A057427(n)` -/
def P4244399368655365597.Spec : Prop :=
  ∀ n, P4244399368655365597.a n = A232665 n

end A232665

/-! ## A232665.P1922826425829831202

`A222763(n)-A057428(n)`
-/

namespace A232665.P1922826425829831202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222763 n - A057428 n

end

end A232665.P1922826425829831202

namespace A232665

/-- `A222763(n)-A057428(n)` -/
def P1922826425829831202.Spec : Prop :=
  ∀ n, P1922826425829831202.a n = A232665 n

end A232665

/-! ## A232665.P5891118158449811280

`A222283(2*A028310(n))+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A232665

/-- `A222283(2*A028310(n))+1` -/
def P5891118158449811280.Spec : Prop :=
  ∀ n, P5891118158449811280.a n = A232665 n

theorem P5891118158449811280.correct : P5891118158449811280.Spec := by
  intro n
  simp only [A232665]

end A232665

/-! ## A232665.P615349830944253145

`A222283(A004277(n))+A057427(n)`
-/

namespace A232665.P615349830944253145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (A004277 n).toNat + A057427 n

end

end A232665.P615349830944253145

namespace A232665

/-- `A222283(A004277(n))+A057427(n)` -/
def P615349830944253145.Spec : Prop :=
  ∀ n, P615349830944253145.a n = A232665 n

end A232665

/-! ## A232665.P16667346162675750061

`A222763(n)+A051903(A005117(n+1))`
-/

namespace A232665.P16667346162675750061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222763 n + A051903 (A005117 (n + 1)).toNat

end

end A232665.P16667346162675750061

namespace A232665

/-- `A222763(n)+A051903(A005117(n+1))` -/
def P16667346162675750061.Spec : Prop :=
  ∀ n, P16667346162675750061.a n = A232665 n

end A232665

/-! ## A232665.P2014588182488566161

`A222283(A004277(n))+A073424(∑[n])`
-/

namespace A232665.P2014588182488566161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (A004277 n).toNat + A073424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232665.P2014588182488566161

namespace A232665

/-- `A222283(A004277(n))+A073424(∑[n])` -/
def P2014588182488566161.Spec : Prop :=
  ∀ n, P2014588182488566161.a n = A232665 n

end A232665

/-! ## A232665.P2283999980759203012

`A331332(A184636(n+1))+1`
-/

namespace A232665.P2283999980759203012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (A184636 (n + 1)).toNat + 1

end

end A232665.P2283999980759203012

namespace A232665

/-- `A331332(A184636(n+1))+1` -/
def P2283999980759203012.Spec : Prop :=
  ∀ n, P2283999980759203012.a n = A232665 n

end A232665

/-! ## A232665.P948773128833131426

`A331332(2*(n+1)²)+char[A003602(n+1)]`
-/

namespace A232665.P948773128833131426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (2 * (n + 1) ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232665.P948773128833131426

namespace A232665

/-- `A331332(2*(n+1)²)+char[A003602(n+1)]` -/
def P948773128833131426.Spec : Prop :=
  ∀ n, P948773128833131426.a n = A232665 n

end A232665

/-! ## A232665.P10095520492037607186

`A331332(2*(n+1)²)+char[A050873(n+1)]`
-/

namespace A232665.P10095520492037607186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (2 * (n + 1) ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232665.P10095520492037607186

namespace A232665

/-- `A331332(2*(n+1)²)+char[A050873(n+1)]` -/
def P10095520492037607186.Spec : Prop :=
  ∀ n, P10095520492037607186.a n = A232665 n

end A232665

/-!
# A232666: 6-free Fibonacci numbers.

The programs for A232666, there is no canonical definition to state claims against.
-/

/-! ## A232666.P7890387560042479495

`A000045(n)%A222300(A255622(n+1))`
-/

namespace A232666.P7890387560042479495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A222300 (A255622 (n + 1)).toNat)

end

end A232666.P7890387560042479495

/-! ## A232666.P7882849380231022750

`gcd(A185284(3*n)², A000045(n))`
-/

namespace A232666.P7882849380231022750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 (3 * n) ^ 2) (A000045 n)

end

end A232666.P7882849380231022750

/-! ## A232666.P9599723019861501740

`A000045(n)/A040327(A282514(n))`
-/

namespace A232666.P9599723019861501740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A040327 (A282514 n).toNat : ℚ)

end

end A232666.P9599723019861501740

/-! ## A232666.P2893378807684948171

`A000045(n)%A002144(A010928(n))`
-/

namespace A232666.P2893378807684948171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A002144 (A010928 n).toNat)

end

end A232666.P2893378807684948171

/-! ## A232666.P574748588093833846

`A274163(n)%A112060(A250120(n))`
-/

namespace A232666.P574748588093833846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274163 n) (A112060 (A250120 n).toNat)

end

end A232666.P574748588093833846

/-!
# A232667: Primes p such that the p-th odious number is prime; odious primes p such that 2p-1 is prime.

The programs for A232667, the canonical program `A232667.P15325416728092359477` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232667 has offset 1).

The definition of A232667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232667.P8574151316761208058

`∩[A005382(n+1), A027697(n+1)]`
-/

namespace A232667.P8574151316761208058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P8574151316761208058

namespace A232667

/-- `∩[A005382(n+1), A027697(n+1)]` -/
def P8574151316761208058.Spec : Prop :=
  ∀ n, (P8574151316761208058.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P5150146172572461593

`∩[A027697(n+1), A174568(n+1)]`
-/

namespace A232667.P5150146172572461593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P5150146172572461593

namespace A232667

/-- `∩[A027697(n+1), A174568(n+1)]` -/
def P5150146172572461593.Spec : Prop :=
  ∀ n, (P5150146172572461593.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P1413220291100168369

`∩[A027697(n+1), A265394(n+1)]`
-/

namespace A232667.P1413220291100168369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P1413220291100168369

namespace A232667

/-- `∩[A027697(n+1), A265394(n+1)]` -/
def P1413220291100168369.Spec : Prop :=
  ∀ n, (P1413220291100168369.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P11156624908820070803

`∩[A027697(n+1), A384020(n+1)]`
-/

namespace A232667.P11156624908820070803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P11156624908820070803

namespace A232667

/-- `∩[A027697(n+1), A384020(n+1)]` -/
def P11156624908820070803.Spec : Prop :=
  ∀ n, (P11156624908820070803.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P15325416728092359477

`∩[A027697(n+1), A068080(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A232667

/-- `∩[A027697(n+1), A068080(n+1)]` -/
def P15325416728092359477.Spec : Prop :=
  ∀ n, (P15325416728092359477.a n : ℤ) = A232667 (n + 1)

theorem P15325416728092359477.correct : P15325416728092359477.Spec := by
  intro n
  simp only [A232667, Nat.add_sub_cancel]

end A232667

/-! ## A232667.P350731585520126910

`filter[A005382(n+1), A361018(#)]`
-/

namespace A232667.P350731585520126910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A232667.P350731585520126910

namespace A232667

/-- `filter[A005382(n+1), A361018(#)]` -/
def P350731585520126910.Spec : Prop :=
  ∀ n, P350731585520126910.a n = A232667 (n + 1)

end A232667

/-! ## A232667.P14405346575912288266

`filter[A265394(n+2), A361018(#)]`
-/

namespace A232667.P14405346575912288266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A232667.P14405346575912288266

namespace A232667

/-- `filter[A265394(n+2), A361018(#)]` -/
def P14405346575912288266.Spec : Prop :=
  ∀ n, P14405346575912288266.a n = A232667 (n + 1)

end A232667

/-! ## A232667.P8929493882141218708

`∩[A005382(n+1), A093696(n+1)]`
-/

namespace A232667.P8929493882141218708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P8929493882141218708

namespace A232667

/-- `∩[A005382(n+1), A093696(n+1)]` -/
def P8929493882141218708.Spec : Prop :=
  ∀ n, (P8929493882141218708.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P4864156416147753300

`∩[A006254(n+1), A027697(n+1)]`
-/

namespace A232667.P4864156416147753300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P4864156416147753300

namespace A232667

/-- `∩[A006254(n+1), A027697(n+1)]` -/
def P4864156416147753300.Spec : Prop :=
  ∀ n, (P4864156416147753300.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P3531972612414955446

`∩[A027697(n+1), A111333(n+1)]`
-/

namespace A232667.P3531972612414955446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P3531972612414955446

namespace A232667

/-- `∩[A027697(n+1), A111333(n+1)]` -/
def P3531972612414955446.Spec : Prop :=
  ∀ n, (P3531972612414955446.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P1778102196861367463

`record[A006530(xor(3, A176620(n+1)))]`
-/

namespace A232667.P1778102196861367463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 3 (A176620 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232667.P1778102196861367463

namespace A232667

/-- `record[A006530(xor(3, A176620(n+1)))]` -/
def P1778102196861367463.Spec : Prop :=
  ∀ n, P1778102196861367463.a n = A232667 (n + 1)

end A232667

/-! ## A232667.P8197800058801619968

`∩[A005382(n+1), A230048(n+1)]`
-/

namespace A232667.P8197800058801619968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P8197800058801619968

namespace A232667

/-- `∩[A005382(n+1), A230048(n+1)]` -/
def P8197800058801619968.Spec : Prop :=
  ∀ n, (P8197800058801619968.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P3851063429919133554

`∩[A005382(n+1), A238989(n+1)]`
-/

namespace A232667.P3851063429919133554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P3851063429919133554

namespace A232667

/-- `∩[A005382(n+1), A238989(n+1)]` -/
def P3851063429919133554.Spec : Prop :=
  ∀ n, (P3851063429919133554.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P9128749361685687182

`p?[A000069(A005098(n+1)+1)]`
-/

namespace A232667.P9128749361685687182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A005098 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232667.P9128749361685687182

namespace A232667

/-- `p?[A000069(A005098(n+1)+1)]` -/
def P9128749361685687182.Spec : Prop :=
  ∀ n, P9128749361685687182.a n = A232667 (n + 1)

end A232667

/-! ## A232667.P15292510361535900033

`p?[A000069(A111215(n+1)+2)]`
-/

namespace A232667.P15292510361535900033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A111215 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232667.P15292510361535900033

namespace A232667

/-- `p?[A000069(A111215(n+1)+2)]` -/
def P15292510361535900033.Spec : Prop :=
  ∀ n, P15292510361535900033.a n = A232667 (n + 1)

end A232667

/-! ## A232667.P621017244519305643

`∩[A000069(n+1), A005382(n+1)]`
-/

namespace A232667.P621017244519305643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232667.P621017244519305643

namespace A232667

/-- `∩[A000069(n+1), A005382(n+1)]` -/
def P621017244519305643.Spec : Prop :=
  ∀ n, (P621017244519305643.a n : ℤ) = A232667 (n + 1)

end A232667

/-! ## A232667.P5800834369927793554

`p?[A000069(ceil(A005383(n+1)/4))]`
-/

namespace A232667.P5800834369927793554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 ⌈(A005383 (n + 1) : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232667.P5800834369927793554

namespace A232667

/-- `p?[A000069(ceil(A005383(n+1)/4))]` -/
def P5800834369927793554.Spec : Prop :=
  ∀ n, P5800834369927793554.a n = A232667 (n + 1)

end A232667

/-! ## A232667.P2185106253430968633

`p?[A000069(n*A101264(2*n)+1)]`
-/

namespace A232667.P2185106253430968633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 ((n : ℤ) * A101264 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232667.P2185106253430968633

namespace A232667

/-- `p?[A000069(n*A101264(2*n)+1)]` -/
def P2185106253430968633.Spec : Prop :=
  ∀ n, P2185106253430968633.a n = A232667 (n + 1)

end A232667

/-! ## A232667.P17685181872908870026

`record[A277812(A005382(n+1))]`
-/

namespace A232667.P17685181872908870026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277812 (A005382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232667.P17685181872908870026

namespace A232667

/-- `record[A277812(A005382(n+1))]` -/
def P17685181872908870026.Spec : Prop :=
  ∀ n, P17685181872908870026.a n = A232667 (n + 1)

end A232667

/-! ## A232667.P6323023047048724999

`filter[A005382(n+1), A010060(#)]`
-/

namespace A232667.P6323023047048724999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A232667.P6323023047048724999

namespace A232667

/-- `filter[A005382(n+1), A010060(#)]` -/
def P6323023047048724999.Spec : Prop :=
  ∀ n, P6323023047048724999.a n = A232667 (n + 1)

end A232667

/-!
# A232668: Natural numbers that are not (primes, 11-smooth, perfect powers or base-10 palindromes).

The programs for A232668, there is no canonical definition to state claims against.
-/

/-! ## A232668.P6268292670412551756

`lt[A087999(n+1), A085392(n+1)]+1`
-/

namespace A232668.P6268292670412551756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A232668.P6268292670412551756

/-! ## A232668.P2279097628879924250

`eq[A055671(n), A338565(A028310(n))]`
-/

namespace A232668.P2279097628879924250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338565 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232668.P2279097628879924250

/-! ## A232668.P13082197695859101201

`filter[A334392(n+1), A341642(#)]`
-/

namespace A232668.P13082197695859101201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A232668.P13082197695859101201

/-! ## A232668.P13895199078024434866

`∩[A046064(n+1), A334392(n+1)]`
-/

namespace A232668.P13895199078024434866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232668.P13895199078024434866

/-! ## A232668.P6715679829919075440

`∩[A063763(n+1), A334392(n+1)]`
-/

namespace A232668.P6715679829919075440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232668.P6715679829919075440

/-!
# A232669: Number of (n+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232669, there is no canonical definition to state claims against.
-/

/-! ## A232669.P7824795464507614246

`A232677((n+1)²+n²)`
-/

namespace A232669.P7824795464507614246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 ((n + 1) ^ 2 + n ^ 2)

end

end A232669.P7824795464507614246

/-!
# A232670: Number of (n+1) X (1+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232670, there is no canonical definition to state claims against.
-/

/-! ## A232670.P12714682128996773943

`A232677(∑[n]+1)`
-/

namespace A232670.P12714682128996773943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232670.P12714682128996773943

/-! ## A232670.P9822686697849256478

`lcm(2, A232677(A000124(n)))`
-/

namespace A232670.P9822686697849256478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232677 (A000124 n).toNat)

end

end A232670.P9822686697849256478

/-! ## A232670.P10592294219068715739

`record[A232677(A114091(n+1))]`
-/

namespace A232670.P10592294219068715739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232670.P10592294219068715739

/-! ## A232670.P11963025070270558400

`record[A232677(n+1)/A034802(n)]`
-/

namespace A232670.P11963025070270558400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232677 (n + 1) : ℚ) / (A034802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232670.P11963025070270558400

/-! ## A232670.P17900556596836607491

`record[root(A232677(n+1), A062344(n))]`
-/

namespace A232670.P17900556596836607491
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232677 (n + 1) : ℝ) ^ (1 / (A062344 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232670.P17900556596836607491

/-!
# A232671: Number of (n+1)X(2+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232671, there is no canonical definition to state claims against.
-/

/-! ## A232671.P14043784809130109895

`A232677(∑[n+1]+2)`
-/

namespace A232671.P14043784809130109895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232671.P14043784809130109895

/-! ## A232671.P163988929757208888

`record[A232677(A114091(n+1)+1)]`
-/

namespace A232671.P163988929757208888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232671.P163988929757208888

/-! ## A232671.P13671348275636108716

`record[root(A232677(n+2), A062344(n))]`
-/

namespace A232671.P13671348275636108716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232677 (n + 2) : ℝ) ^ (1 / (A062344 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232671.P13671348275636108716

/-! ## A232671.P15070398507600773888

`record[A232677(Δ[A003453(n+5)])]`
-/

namespace A232671.P15070398507600773888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232671.P15070398507600773888

/-! ## A232671.P15230237608705156971

`record[gcd(A232677(n+2), A306548(n+1))]`
-/

namespace A232671.P15230237608705156971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232677 (n + 2)) (A306548 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232671.P15230237608705156971

/-!
# A232672: Number of (n+1)X(3+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232672, there is no canonical definition to state claims against.
-/

/-! ## A232672.P9700038001643848049

`A232677(∑[n+2]+4)`
-/

namespace A232672.P9700038001643848049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232672.P9700038001643848049

/-! ## A232672.P1623924207540343635

`lcm(2, A232677(A167614(n+1)))`
-/

namespace A232672.P1623924207540343635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232677 (A167614 (n + 1)).toNat)

end

end A232672.P1623924207540343635

/-! ## A232672.P8914354915971226770

`A127836(n)*A232677(A167614(n+1))`
-/

namespace A232672.P8914354915971226770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127836 n * A232677 (A167614 (n + 1)).toNat

end

end A232672.P8914354915971226770

/-! ## A232672.P8332652345286794884

`A151935(n)!*A232677(A167614(n+1))`
-/

namespace A232672.P8332652345286794884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151935 n).toNat : ℤ) * A232677 (A167614 (n + 1)).toNat

end

end A232672.P8332652345286794884

/-! ## A232672.P4118233281778688205

`A232677(A167614(n+1))+A151935(n+2)`
-/

namespace A232672.P4118233281778688205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (A167614 (n + 1)).toNat + A151935 (n + 2)

end

end A232672.P4118233281778688205

/-!
# A232673: Number of (n+1)X(4+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232673, there is no canonical definition to state claims against.
-/

/-! ## A232673.P17816465828913510804

`A232677(A167614(n+2)+1)`
-/

namespace A232673.P17816465828913510804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (A167614 (n + 2) + 1).toNat

end

end A232673.P17816465828913510804

/-! ## A232673.P18292506185949558619

`A232677(Δ[A264443(n)-n²])`
-/

namespace A232673.P18292506185949558619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (f1 (n + 1) - f1 n).toNat

end

end A232673.P18292506185949558619

/-!
# A232674: Number of (n+1)X(5+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232674, there is no canonical definition to state claims against.
-/

/-! ## A232674.P8039413043032340429

`A232677(Δ[A264443(n)])`
-/

namespace A232674.P8039413043032340429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (f1 (n + 1) - f1 n).toNat

end

end A232674.P8039413043032340429

/-! ## A232674.P8387459185233973646

`A232677(A374005(n+1))`
-/

namespace A232674.P8387459185233973646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (A374005 (n + 1)).toNat

end

end A232674.P8387459185233973646

/-! ## A232674.P9044134506139638594

`A232677(A264443(n+1)-A264443(n))`
-/

namespace A232674.P9044134506139638594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232677 (A264443 (n + 1) - A264443 n).toNat

end

end A232674.P9044134506139638594

/-!
# A232678: Number of (n+1)X(1+1) 0..3 arrays x(i,j) with row sums sum{j*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232678, there is no canonical definition to state claims against.
-/

/-! ## A232678.P4650931180093813821

`A232680(∑[n]+1)`
-/

namespace A232678.P4650931180093813821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232680 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232678.P4650931180093813821

/-! ## A232678.P5765970361877776185

`A232680(A000124(n))+char[8]`
-/

namespace A232678.P5765970361877776185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232680 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A232678.P5765970361877776185

/-! ## A232678.P17828348979938525355

`record[A010054(n)*A232680(n+1)]`
-/

namespace A232678.P17828348979938525355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232678.P17828348979938525355

/-! ## A232678.P5097776587065036017

`record[root(A232680(n+1), A026714(n+1))]`
-/

namespace A232678.P5097776587065036017
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232680 (n + 1) : ℝ) ^ (1 / (A026714 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232678.P5097776587065036017

/-!
# A232679: Number of (n+1)X(2+1) 0..3 arrays x(i,j) with row sums sum{j*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232679, there is no canonical definition to state claims against.
-/

/-! ## A232679.P13612228304383164230

`A232680(∑[n+1]+2)`
-/

namespace A232679.P13612228304383164230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232680 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232679.P13612228304383164230

/-! ## A232679.P2251555325055541529

`record[A232680(A184905(n+1))]`
-/

namespace A232679.P2251555325055541529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232680 (A184905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232679.P2251555325055541529

/-! ## A232679.P7362528743879308324

`record[A010054(n)*A232680(n+2)]`
-/

namespace A232679.P7362528743879308324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232679.P7362528743879308324

/-!
# A232681: Numbers n such that the equation a^2 + 5*n*b^2 = 5*c^2 + n*d^2 has no solutions in positive integers for a, b, c, d.

The programs for A232681, the canonical program `A232681.P310737984204774536` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232681 has offset 1).

The definition of A232681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232681.P310737984204774536

`comp[n²%floor(ϕ*n+n+1)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232681

/-- `comp[n²%floor(ϕ*n+n+1)]` -/
def P310737984204774536.Spec : Prop :=
  ∀ n, (P310737984204774536.a n : ℤ) = A232681 (n + 1)

theorem P310737984204774536.correct : P310737984204774536.Spec := by
  intro n
  simp only [A232681, Nat.add_sub_cancel]

end A232681

/-! ## A232681.P804412093757562546

`comp[n²-floor(ϕ*n)*floor(n/ϕ)]`
-/

namespace A232681.P804412093757562546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊Real.goldenRatio * (n : ℝ)⌋ * ⌊(n : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232681.P804412093757562546

namespace A232681

/-- `comp[n²-floor(ϕ*n)*floor(n/ϕ)]` -/
def P804412093757562546.Spec : Prop :=
  ∀ n, (P804412093757562546.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P9968198281091557635

`comp[A031363(n+1)-1]+1`
-/

namespace A232681.P9968198281091557635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A232681.P9968198281091557635

namespace A232681

/-- `comp[A031363(n+1)-1]+1` -/
def P9968198281091557635.Spec : Prop :=
  ∀ n, (P9968198281091557635.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P3332255822492827732

`eq[0, A263850(n)]`
-/

namespace A232681.P3332255822492827732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P3332255822492827732

namespace A232681

/-- `eq[0, A263850(n)]` -/
def P3332255822492827732.Spec : Prop :=
  ∀ n, (P3332255822492827732.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P11390456951894183060

`eq[0, A374276(n)]`
-/

namespace A232681.P11390456951894183060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P11390456951894183060

namespace A232681

/-- `eq[0, A374276(n)]` -/
def P11390456951894183060.Spec : Prop :=
  ∀ n, (P11390456951894183060.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P15642039281688352443

`eq[0, A035187(n+1)]+1`
-/

namespace A232681.P15642039281688352443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232681.P15642039281688352443

namespace A232681

/-- `eq[0, A035187(n+1)]+1` -/
def P15642039281688352443.Spec : Prop :=
  ∀ n, (P15642039281688352443.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P9588493020264101889

`lt[A078473(n+1), 1]+1`
-/

namespace A232681.P9588493020264101889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A232681.P9588493020264101889

namespace A232681

/-- `lt[A078473(n+1), 1]+1` -/
def P9588493020264101889.Spec : Prop :=
  ∀ n, (P9588493020264101889.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P1431861438945177543

`eq[2, 2-a(A035187(n))]` with `a(0)=0, a(1)=3`
-/

namespace A232681.P1431861438945177543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  2 - f2 (A035187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P1431861438945177543

namespace A232681

/-- `eq[2, 2-a(A035187(n))]` -/
def P1431861438945177543.Spec : Prop :=
  ∀ n, (P1431861438945177543.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P15977336872819744850

`eq[A010052(n), A374089(n)]`
-/

namespace A232681.P15977336872819744850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232681.P15977336872819744850

namespace A232681

/-- `eq[A010052(n), A374089(n)]` -/
def P15977336872819744850.Spec : Prop :=
  ∀ n, (P15977336872819744850.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P4409764820743131751

`eq[0, A035187(A143051(n+1))]`
-/

namespace A232681.P4409764820743131751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A143051 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P4409764820743131751

namespace A232681

/-- `eq[0, A035187(A143051(n+1))]` -/
def P4409764820743131751.Spec : Prop :=
  ∀ n, (P4409764820743131751.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P7641469171143222109

`eq[0, A035187(A000007(n)+n)]`
-/

namespace A232681.P7641469171143222109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P7641469171143222109

namespace A232681

/-- `eq[0, A035187(A000007(n)+n)]` -/
def P7641469171143222109.Spec : Prop :=
  ∀ n, (P7641469171143222109.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P13471968052725315840

`eq[2, 2*A000285(a(A035187(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A232681.P13471968052725315840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  2 * A000285 (f2 (A035187 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P13471968052725315840

namespace A232681

/-- `eq[2, 2*A000285(a(A035187(n)))]` -/
def P13471968052725315840.Spec : Prop :=
  ∀ n, (P13471968052725315840.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P10634855346231916772

`comp[A022344(n)-1]+1`
-/

namespace A232681.P10634855346231916772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A232681.P10634855346231916772

namespace A232681

/-- `comp[A022344(n)-1]+1` -/
def P10634855346231916772.Spec : Prop :=
  ∀ n, (P10634855346231916772.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P12429518273369406968

`eq[0, A031366(n+1)]+1`
-/

namespace A232681.P12429518273369406968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232681.P12429518273369406968

namespace A232681

/-- `eq[0, A031366(n+1)]+1` -/
def P12429518273369406968.Spec : Prop :=
  ∀ n, (P12429518273369406968.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P3500012293915216294

`lt[A031364(n+1), 1]+1`
-/

namespace A232681.P3500012293915216294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A232681.P3500012293915216294

namespace A232681

/-- `lt[A031364(n+1), 1]+1` -/
def P3500012293915216294.Spec : Prop :=
  ∀ n, (P3500012293915216294.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P5120861331039286971

`eq[1, A057427(n)-char[A005752(n)]]`
-/

namespace A232681.P5120861331039286971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P5120861331039286971

namespace A232681

/-- `eq[1, A057427(n)-char[A005752(n)]]` -/
def P5120861331039286971.Spec : Prop :=
  ∀ n, (P5120861331039286971.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P9009281025475078588

`eq[0, A035187(A123108(2*n))]`
-/

namespace A232681.P9009281025475078588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P9009281025475078588

namespace A232681

/-- `eq[0, A035187(A123108(2*n))]` -/
def P9009281025475078588.Spec : Prop :=
  ∀ n, (P9009281025475078588.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P8403048396911421285

`eq[0, A035187(A008574(n))]`
-/

namespace A232681.P8403048396911421285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P8403048396911421285

namespace A232681

/-- `eq[0, A035187(A008574(n))]` -/
def P8403048396911421285.Spec : Prop :=
  ∀ n, (P8403048396911421285.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P6195224344825217467

`eq[0, A035187(A008706(n))]`
-/

namespace A232681.P6195224344825217467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P6195224344825217467

namespace A232681

/-- `eq[0, A035187(A008706(n))]` -/
def P6195224344825217467.Spec : Prop :=
  ∀ n, (P6195224344825217467.a n : ℤ) = A232681 (n + 1)

end A232681

/-! ## A232681.P17855524291577870887

`eq[2, A000031(a(A035187(n))²)]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A232681.P17855524291577870887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f2 =>
  A000031 (f2 (A035187 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232681.P17855524291577870887

namespace A232681

/-- `eq[2, A000031(a(A035187(n))²)]` -/
def P17855524291577870887.Spec : Prop :=
  ∀ n, (P17855524291577870887.a n : ℤ) = A232681 (n + 1)

end A232681

/-!
# A232682: Numbers n such that the equation a^2 + 7*n*b^2 = 7*c^2 + n*d^2 has no solutions in positive integers for a, b, c, d.

The programs for A232682, there is no canonical definition to state claims against.
-/

/-! ## A232682.P8406237885388439542

`comp[A242662(n)]`
-/

namespace A232682.P8406237885388439542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232682.P8406237885388439542

/-! ## A232682.P13071869830361709636

`lt[char[A242662(n)], A010176(3*n+4)]`
-/

namespace A232682.P13071869830361709636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010176 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A232682.P13071869830361709636

/-! ## A232682.P16693198640747137791

`A028983(lt[A071321(2*(n+1)), A188416(3*(n+1))])`
-/

namespace A232682.P16693198640747137791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232682.P16693198640747137791

/-! ## A232682.P7183311960253151685

`A028983(A374249(n+1)+A255852(2*(n+1)))`
-/

namespace A232682.P7183311960253151685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (A374249 (n + 1) + A255852 (2 * (n + 1))).toNat

end

end A232682.P7183311960253151685

/-! ## A232682.P2809755665851821714

`∪[A028741(A028749(n+1)), A028795(n+1)]`
-/

namespace A232682.P2809755665851821714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028741 (A028749 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232682.P2809755665851821714

/-!
# A232683: G.f. A(x) satisfies: the sum of the coefficients of x^k, k=0..n, in A(x)^n equals (3*n)!/n!^3, which is de Bruijn's sequence S(3,n) (A006480), for n>=0.

The programs for A232683, there is no canonical definition to state claims against.
-/

/-! ## A232683.P480136890217260390

`A308334(∑[∑[A120021(n+1)]])`
-/

namespace A232683.P480136890217260390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120021 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308334 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232683.P480136890217260390

/-!
# A232684: Number of tilings of a 6 X 2n rectangle with 3n tetrominoes of any shape.

The programs for A232684, there is no canonical definition to state claims against.
-/

/-! ## A232684.P4246132650355109603

`record[A230031(A155212(n)+1)]`
-/

namespace A232684.P4246132650355109603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (A155212 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232684.P4246132650355109603

/-! ## A232684.P13114836348289075202

`record[A230031(A166136(n+1))]`
-/

namespace A232684.P13114836348289075202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (A166136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232684.P13114836348289075202

/-! ## A232684.P9982324970920103016

`A230031(A155212(2*n+3)+1)`
-/

namespace A232684.P9982324970920103016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (A155212 (2 * n + 3) + 1).toNat

end

end A232684.P9982324970920103016

/-! ## A232684.P8311936651117622366

`record[A230031(∑[A064524(n)])]`
-/

namespace A232684.P8311936651117622366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232684.P8311936651117622366

/-!
# A232685: G.f. A(x) = Sum_{n>=0} A_{2*n}(x)^(n+1) where A_{n+1}(x) = A_n(A(x)) with A_0(x)=x and A(0)=0.

The programs for A232685, there is no canonical definition to state claims against.
-/

/-! ## A232685.P6845721864778568476

`A182243(A346258(n)-A182538(n))`
-/

namespace A232685.P6845721864778568476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182243 (A346258 n - A182538 n).toNat

end

end A232685.P6845721864778568476

/-! ## A232685.P7328884357397065240

`A182243(A346258(n)-A182560(n))`
-/

namespace A232685.P7328884357397065240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182243 (A346258 n - A182560 n).toNat

end

end A232685.P7328884357397065240

/-!
# A232686: E.g.f. A(x) satisfies: A'(x) = A(x*A'(x))^2.

The programs for A232686, there is no canonical definition to state claims against.
-/

/-! ## A232686.P16025964932073782819

`A111195(n)-A331471(A103194(n))`
-/

namespace A232686.P16025964932073782819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111195 n - A331471 (A103194 n).toNat

end

end A232686.P16025964932073782819

/-! ## A232686.P1859827878063778177

`A237270(A014068(n))*A259805(n+1)`
-/

namespace A232686.P1859827878063778177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A014068 n).toNat * A259805 (n + 1)

end

end A232686.P1859827878063778177

/-!
# A232687: G.f. A(x) satisfies: the sum of the coefficients of x^k, k=0..n, in A(x)^n equals Sum_{k=0..n} C(n,k)^3 = A000172(n) (Franel numbers), for n>=0.

The programs for A232687, there is no canonical definition to state claims against.
-/

/-! ## A232687.P8090486902417636141

`A001462(A278644(n))`
-/

namespace A232687.P8090486902417636141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A278644 n).toNat

end

end A232687.P8090486902417636141

/-! ## A232687.P11019354567386042544

`A236362(A150445(n+1))`
-/

namespace A232687.P11019354567386042544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (A150445 (n + 1)).toNat

end

end A232687.P11019354567386042544

/-! ## A232687.P16674822501359030676

`A046155(∑[∑[A205572(n)]])`
-/

namespace A232687.P16674822501359030676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205572 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232687.P16674822501359030676

/-!
# A232688: Expansion of 1/(1-x)^(1+2*x).

The programs for A232688, there is no canonical definition to state claims against.
-/

/-! ## A232688.P289388209379323225

`A053489(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A232688.P289388209379323225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053489 n + (n : ℤ) * a (n - 1)

end

end A232688.P289388209379323225

/-! ## A232688.P9855779110023534912

`A246601(A054366(n)-A325535(n))`
-/

namespace A232688.P9855779110023534912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246601 (A054366 n - A325535 n).toNat

end

end A232688.P9855779110023534912

/-!
# A232689: G.f. A(x) satisfies: the sum of the coefficients of x^k, k=0..n, in A(x)^n equals 2^(n^2) for n>=0.

The programs for A232689, there is no canonical definition to state claims against.
-/

/-! ## A232689.P4536449192675263919

`A000010(n+1)*A036897(A000178(n))`
-/

namespace A232689.P4536449192675263919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A036897 (A000178 n).toNat

end

end A232689.P4536449192675263919

/-!
# A232690: E.g.f. satisfies: A(x) = exp( 1/A(x) * Integral A(x)^3 dx ).

The programs for A232690, there is no canonical definition to state claims against.
-/

/-! ## A232690.P17741599343700615933

`A110654(A134184(n)+A052571(n))`
-/

namespace A232690.P17741599343700615933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A134184 n + A052571 n).toNat

end

end A232690.P17741599343700615933

/-! ## A232690.P2426618747656221426

`A028310(or(A112006(n), A230621(n)))`
-/

namespace A232690.P2426618747656221426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A112006 n) (A230621 n)).toNat

end

end A232690.P2426618747656221426

/-! ## A232690.P385633764896686782

`A050294(A000828(n)+∑[A088809(n)])`
-/

namespace A232690.P385633764896686782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050294 (A000828 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232690.P385633764896686782

/-!
# A232691: E.g.f. satisfies: A(x) = exp( 1/A(x)^2 * Integral A(x)^6 dx ).

The programs for A232691, there is no canonical definition to state claims against.
-/

/-! ## A232691.P9785484677933000016

`A240864(A190770(n+1)+∑[∑[n+1]])`
-/

namespace A232691.P9785484677933000016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240864 (A190770 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A232691.P9785484677933000016

/-! ## A232691.P12587478476343201437

`A028310(A000378(A143924(n)+n))`
-/

namespace A232691.P12587478476343201437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000378 (A143924 n + (n : ℤ)).toNat).toNat

end

end A232691.P12587478476343201437

/-!
# A232692: E.g.f. satisfies: A(x) = exp( 1/A(x)^3 * Integral A(x)^8 dx ).

The programs for A232692, there is no canonical definition to state claims against.
-/

/-! ## A232692.P3287938133804975915

`A175176(n)+A005069(A003046(n))`
-/

namespace A232692.P3287938133804975915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175176 n + A005069 (A003046 n).toNat

end

end A232692.P3287938133804975915

/-!
# A232693: E.g.f.: A(x) = Series_Reversion( x - 3*Sum_{n>=2} (-x)^n/(n*(n-1)) ).

The programs for A232693, there is no canonical definition to state claims against.
-/

/-! ## A232693.P11651949840276096107

`A285594(A395093(n))`
-/

namespace A232693.P11651949840276096107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285594 (A395093 n).toNat

end

end A232693.P11651949840276096107

/-!
# A232694: E.g.f. A(x) satisfies: A'(x) = A(x*A'(x)^4) with A(0)=1.

The programs for A232694, there is no canonical definition to state claims against.
-/

/-! ## A232694.P897678025934824443

`A239701(3*(n+1)^n)`
-/

namespace A232694.P897678025934824443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239701 (3 * (n + 1) ^ n)

end

end A232694.P897678025934824443

/-!
# A232695: E.g.f. A(x) satisfies: A'(x) = A(x*A'(x)^5) with A(0)=1.

The programs for A232695, there is no canonical definition to state claims against.
-/

/-! ## A232695.P8365206737956399283

`A318812(C(2^n, n))`
-/

namespace A232695.P8365206737956399283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (Nat.choose (2 ^ n) n)

end

end A232695.P8365206737956399283

/-!
# A232696: E.g.f. A(x) satisfies: A'(x) = A(x/A'(x)) with A(0)=1.

The programs for A232696, there is no canonical definition to state claims against.
-/

/-! ## A232696.P4562150873467020824

`A137349(A002013(n))/A353382(n+1)`
-/

namespace A232696.P4562150873467020824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137349 (A002013 n).toNat : ℚ) / (A353382 (n + 1) : ℚ)

end

end A232696.P4562150873467020824

/-!
# A232697: Number of partitions of 2n into parts such that the largest multiplicity equals n.

The programs for A232697, there is no canonical definition to state claims against.
-/

/-! ## A232697.P4303869649110312914

`∑[A053445(abs(2-n))]`
-/

namespace A232697.P4303869649110312914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232697.P4303869649110312914

/-! ## A232697.P1685456336254230047

`A002865(n)+ceil(abs(sin(n)))`
-/

namespace A232697.P1685456336254230047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + ⌈|Real.sin (n : ℝ)|⌉

end

end A232697.P1685456336254230047

/-! ## A232697.P11435070458019164259

`A053445(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A232697.P11435070458019164259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A053445 (n - 2) + a (n - 1)

end

end A232697.P11435070458019164259

/-! ## A232697.P9851042153431557934

`A002865(A028310(n))+1`
-/

namespace A232697.P9851042153431557934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A028310 n).toNat + 1

end

end A232697.P9851042153431557934

/-! ## A232697.P9304200874328240461

`A057427(n)+A002865(n)`
-/

namespace A232697.P9304200874328240461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002865 n

end

end A232697.P9304200874328240461

/-! ## A232697.P7450136893738358788

`A002865(n)-A057428(n)`
-/

namespace A232697.P7450136893738358788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A057428 n

end

end A232697.P7450136893738358788

/-! ## A232697.P2720154694354007573

`A002865(A000007(n)+n)+1`
-/

namespace A232697.P2720154694354007573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A000007 n + (n : ℤ)).toNat + 1

end

end A232697.P2720154694354007573

/-! ## A232697.P8043090031202519219

`A157928(n+1)+A002865(n)`
-/

namespace A232697.P8043090031202519219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) + A002865 n

end

end A232697.P8043090031202519219

/-! ## A232697.P6904177053985561956

`A002865(A004277(n)-n)+1`
-/

namespace A232697.P6904177053985561956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A004277 n - (n : ℤ)).toNat + 1

end

end A232697.P6904177053985561956

/-! ## A232697.P9724220406166582372

`A179184(n+2)+A002865(n)`
-/

namespace A232697.P9724220406166582372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (n + 2) + A002865 n

end

end A232697.P9724220406166582372

/-! ## A232697.P17016015913832415759

`A002865(n)-(A000007(n)-1)`
-/

namespace A232697.P17016015913832415759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - (A000007 n - 1)

end

end A232697.P17016015913832415759

/-! ## A232697.P11959322059377470941

`A087156(n+1)+A002865(n)-n`
-/

namespace A232697.P11959322059377470941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + (A002865 n - (n : ℤ))

end

end A232697.P11959322059377470941

/-! ## A232697.P939457028708191054

`A166486(A006257(n))+A002865(n)`
-/

namespace A232697.P939457028708191054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A006257 n).toNat + A002865 n

end

end A232697.P939457028708191054

/-! ## A232697.P6815925887241391103

`A067029(A020639(n+1))+A002865(n)`
-/

namespace A232697.P6815925887241391103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A020639 (n + 1)).toNat + A002865 n

end

end A232697.P6815925887241391103

/-! ## A232697.P13801642960132452219

`A002865(n)+A001222(A129759(n+1))`
-/

namespace A232697.P13801642960132452219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + A001222 (A129759 (n + 1)).toNat

end

end A232697.P13801642960132452219

/-! ## A232697.P1890269276534702814

`A362611(A027746(n+1))+A002865(n)`
-/

namespace A232697.P1890269276534702814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A027746 (n + 1)).toNat + A002865 n

end

end A232697.P1890269276534702814

/-! ## A232697.P2706112946697832630

`A002865(n+1)+A002865(n)-A083751(n+1)`
-/

namespace A232697.P2706112946697832630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A002865 n - A083751 (n + 1))

end

end A232697.P2706112946697832630

/-! ## A232697.P4120767789782425051

`A002865(n)+A002865(n+1)/A187219(n+1)`
-/

namespace A232697.P4120767789782425051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002865 n : ℚ) + (A002865 (n + 1) : ℚ) / (A187219 (n + 1) : ℚ)

end

end A232697.P4120767789782425051

/-! ## A232697.P1409190823312108724

`A027336(n+1)-A083751(n+1)`
-/

namespace A232697.P1409190823312108724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) - A083751 (n + 1)

end

end A232697.P1409190823312108724

/-!
# A232698: Number of tilings of an 8 X n rectangle with 2n tetrominoes of any shape.

The programs for A232698, there is no canonical definition to state claims against.
-/

/-! ## A232698.P3705798245241112844

`A230031(eq[8, A002262(n)])`
-/

namespace A232698.P3705798245241112844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232698.P3705798245241112844

/-! ## A232698.P5406967529435986319

`A230031(eq[8, A025581(n)])`
-/

namespace A232698.P5406967529435986319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232698.P5406967529435986319

/-! ## A232698.P14726635803901893503

`A230031(eq[8, A144257(n+1)])`
-/

namespace A232698.P14726635803901893503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232698.P14726635803901893503

/-! ## A232698.P12335811407791672548

`A230031(eq[8, A144328(n+1)])`
-/

namespace A232698.P12335811407791672548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232698.P12335811407791672548

/-! ## A232698.P10586160728468205506

`A230031(eq[9, A002260(n+1)])`
-/

namespace A232698.P10586160728468205506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232698.P10586160728468205506

/-!
# A232699: Number of labeled point-determining bipartite graphs on n vertices.

The programs for A232699, there is no canonical definition to state claims against.
-/

/-! ## A232699.P1042644158125557402

`A339886(A027432(n))`
-/

namespace A232699.P1042644158125557402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339886 (A027432 n).toNat

end

end A232699.P1042644158125557402

/-! ## A232699.P12462378805093104931

`A339886(A124419(n))`
-/

namespace A232699.P12462378805093104931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339886 (A124419 n).toNat

end

end A232699.P12462378805093104931

/-! ## A232699.P13699491808218718946

`A285328(∏[A050822(n+1)])`
-/

namespace A232699.P13699491808218718946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232699.P13699491808218718946

