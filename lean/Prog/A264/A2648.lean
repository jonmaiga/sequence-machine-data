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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A264800: Nearly-Fibonacci sequence.

The programs for A264800, the canonical program `A264800.P16919660047580095093` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264800 has offset 1).

The definition of A264800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264800.P7441779043599677256

`ogf((-1-x^3+x^4+x^5)/(-1+x+x^2))`
-/

namespace A264800.P7441779043599677256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1, -1, -1] [1, -1, -1] n

end

end A264800.P7441779043599677256

namespace A264800

/-- `ogf((-1-x^3+x^4+x^5)/(-1+x+x^2))` -/
def P7441779043599677256.Spec : Prop :=
  ∀ n, P7441779043599677256.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P16919660047580095093

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=5, a(5)=8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264800

/-- `a(n-1)+a(n-2)` -/
def P16919660047580095093.Spec : Prop :=
  ∀ n, (P16919660047580095093.a n : ℤ) = A264800 (n + 1)

theorem P16919660047580095093.correct : P16919660047580095093.Spec := by
  intro n
  simp only [A264800, Nat.add_sub_cancel]

end A264800

/-! ## A264800.P1407587816008051853

`char[3]+∑[A212804(n)]`
-/

namespace A264800.P1407587816008051853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A264800.P1407587816008051853

namespace A264800

/-- `char[3]+∑[A212804(n)]` -/
def P1407587816008051853.Spec : Prop :=
  ∀ n, P1407587816008051853.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P7222664998833800975

`char[3]+A000045(n+1)`
-/

namespace A264800.P7222664998833800975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000045 (n + 1)

end

end A264800.P7222664998833800975

namespace A264800

/-- `char[3]+A000045(n+1)` -/
def P7222664998833800975.Spec : Prop :=
  ∀ n, P7222664998833800975.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P163936403093226999

`A212804(n+2)+char[3]`
-/

namespace A264800.P163936403093226999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264800.P163936403093226999

namespace A264800

/-- `A212804(n+2)+char[3]` -/
def P163936403093226999.Spec : Prop :=
  ∀ n, P163936403093226999.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P16245629678588238976

`A000071(n+1)+char[3]+1`
-/

namespace A264800.P16245629678588238976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A264800.P16245629678588238976

namespace A264800

/-- `A000071(n+1)+char[3]+1` -/
def P16245629678588238976.Spec : Prop :=
  ∀ n, P16245629678588238976.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P10495701119889999221

`A103609(2*(n+1))+char[3]`
-/

namespace A264800.P10495701119889999221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264800.P10495701119889999221

namespace A264800

/-- `A103609(2*(n+1))+char[3]` -/
def P10495701119889999221.Spec : Prop :=
  ∀ n, P10495701119889999221.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P1543811686991281127

`A129982(2*n+3)+char[3]`
-/

namespace A264800.P1543811686991281127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264800.P1543811686991281127

namespace A264800

/-- `A129982(2*n+3)+char[3]` -/
def P1543811686991281127.Spec : Prop :=
  ∀ n, P1543811686991281127.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P12499883782122331810

`A000045(n+1)+C(n+1, A000010(n+3)²)`
-/

namespace A264800.P12499883782122331810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (Nat.choose (n + 1) (A000010 (n + 3) ^ 2).toNat : ℤ)

end

end A264800.P12499883782122331810

namespace A264800

/-- `A000045(n+1)+C(n+1, A000010(n+3)²)` -/
def P12499883782122331810.Spec : Prop :=
  ∀ n, P12499883782122331810.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P15712181073129923616

`A008620(2*n)+A000045(n+1)-A274616(n+1)`
-/

namespace A264800.P15712181073129923616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n) + (A000045 (n + 1) - A274616 (n + 1))

end

end A264800.P15712181073129923616

namespace A264800

/-- `A008620(2*n)+A000045(n+1)-A274616(n+1)` -/
def P15712181073129923616.Spec : Prop :=
  ∀ n, P15712181073129923616.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P9023782191323079716

`A000045(n+1)+C(A025581(2*n), A000045(n+1))`
-/

namespace A264800.P9023782191323079716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (Nat.choose (A025581 (2 * n)).toNat (A000045 (n + 1)).toNat : ℤ)

end

end A264800.P9023782191323079716

namespace A264800

/-- `A000045(n+1)+C(A025581(2*n), A000045(n+1))` -/
def P9023782191323079716.Spec : Prop :=
  ∀ n, P9023782191323079716.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P16578246177203879866

`A000045(n+1)+C(A025669(2*n+1), A000045(n+1))`
-/

namespace A264800.P16578246177203879866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (Nat.choose (A025669 (2 * n + 1)).toNat (A000045 (n + 1)).toNat : ℤ)

end

end A264800.P16578246177203879866

namespace A264800

/-- `A000045(n+1)+C(A025669(2*n+1), A000045(n+1))` -/
def P16578246177203879866.Spec : Prop :=
  ∀ n, P16578246177203879866.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P2688214752520119517

`A000045(n+1)+C(A062707(2*n+1), A000045(n+1))`
-/

namespace A264800.P2688214752520119517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (Nat.choose (A062707 (2 * n + 1)).toNat (A000045 (n + 1)).toNat : ℤ)

end

end A264800.P2688214752520119517

namespace A264800

/-- `A000045(n+1)+C(A062707(2*n+1), A000045(n+1))` -/
def P2688214752520119517.Spec : Prop :=
  ∀ n, P2688214752520119517.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P13238670923775286317

`A163227(A326494(n))`
-/

namespace A264800.P13238670923775286317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (A326494 n).toNat

end

end A264800.P13238670923775286317

namespace A264800

/-- `A163227(A326494(n))` -/
def P13238670923775286317.Spec : Prop :=
  ∀ n, P13238670923775286317.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P3515840089988305039

`A000045(n+1)+C(2*n, A000032(n)+2)`
-/

namespace A264800.P3515840089988305039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (Nat.choose (2 * n) (A000032 n + 2).toNat : ℤ)

end

end A264800.P3515840089988305039

namespace A264800

/-- `A000045(n+1)+C(2*n, A000032(n)+2)` -/
def P3515840089988305039.Spec : Prop :=
  ∀ n, P3515840089988305039.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P10720980579934620253

`Δ[A000045(n+2)-C(2, (n-1)*(n-2))]`
-/

namespace A264800.P10720980579934620253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - (Nat.choose 2 (((n : ℤ) - 1) * ((n : ℤ) - 2)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264800.P10720980579934620253

namespace A264800

/-- `Δ[A000045(n+2)-C(2, (n-1)*(n-2))]` -/
def P10720980579934620253.Spec : Prop :=
  ∀ n, P10720980579934620253.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P1522747819244222211

`floor(sqrt(∑[A001654(n)+n]+1))`
-/

namespace A264800.P1522747819244222211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264800.P1522747819244222211

namespace A264800

/-- `floor(sqrt(∑[A001654(n)+n]+1))` -/
def P1522747819244222211.Spec : Prop :=
  ∀ n, P1522747819244222211.a n = A264800 (n + 1)

end A264800

/-! ## A264800.P12264407924223807268

`A000045(n+1)+A000007(A132823(n+1))`
-/

namespace A264800.P12264407924223807268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000007 (A132823 (n + 1)).toNat

end

end A264800.P12264407924223807268

namespace A264800

/-- `A000045(n+1)+A000007(A132823(n+1))` -/
def P12264407924223807268.Spec : Prop :=
  ∀ n, P12264407924223807268.a n = A264800 (n + 1)

end A264800

/-!
# A264801: Number of essentially different seating arrangements for 2n couples around a circular table with 4n seats such that no spouses are neighbors, the neighbors of each person have opposite gender and no person's neighbors belong to the same couple.

The programs for A264801, there is no canonical definition to state claims against.
-/

/-! ## A264801.P13629913154079598055

`(2*(n+1)-1)!*A000183(2*(n+1))`
-/

namespace A264801.P13629913154079598055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((2 * (n + 1) : ℤ) - 1).toNat : ℤ) * A000183 (2 * (n + 1))

end

end A264801.P13629913154079598055

/-! ## A264801.P1520776979981650190

`A000142(2*n+1)*A000183(2*(n+1))`
-/

namespace A264801.P1520776979981650190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n + 1) * A000183 (2 * (n + 1))

end

end A264801.P1520776979981650190

/-!
# A264802: Position of the n largest occurrences of a shortest addition chain of length n in A003313, written as a triangle.

The programs for A264802, the canonical program `A264802.P4268355736184422513` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264802 has offset 1).

The definition of A264802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264802.P7295398367237637687

`2^(row(n)-col(n))+2^row(n)`
-/

namespace A264802.P7295398367237637687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + (2 ^ SequenceMachineLib.triRow n : ℚ)

end

end A264802.P7295398367237637687

namespace A264802

/-- `2^(row(n)-col(n))+2^row(n)` -/
def P7295398367237637687.Spec : Prop :=
  ∀ n, P7295398367237637687.a n = (A264802 (n + 1) : ℚ)

end A264802

/-! ## A264802.P5120891864687131527

`A130321(n)+∏[char[∑[n+1]]+1]`
-/

namespace A264802.P5120891864687131527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A264802.P5120891864687131527

namespace A264802

/-- `A130321(n)+∏[char[∑[n+1]]+1]` -/
def P5120891864687131527.Spec : Prop :=
  ∀ n, P5120891864687131527.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P18218609442651674043

`∏[char[∑[n+1]]+1]+2^A025581(n)`
-/

namespace A264802.P18218609442651674043
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (2 : ℚ) ^ (A025581 n : ℤ)

end

end A264802.P18218609442651674043

namespace A264802

/-- `∏[char[∑[n+1]]+1]+2^A025581(n)` -/
def P18218609442651674043.Spec : Prop :=
  ∀ n, P18218609442651674043.a n = (A264802 (n + 1) : ℚ)

end A264802

/-! ## A264802.P4268355736184422513

`A137688(n)+A130321(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A264802

/-- `A137688(n)+A130321(n)` -/
def P4268355736184422513.Spec : Prop :=
  ∀ n, P4268355736184422513.a n = A264802 (n + 1)

theorem P4268355736184422513.correct : P4268355736184422513.Spec := by
  intro n
  simp only [A264802, Nat.add_sub_cancel]

end A264802

/-! ## A264802.P16348981358803447744

`A176224(n)+A130328(n)`
-/

namespace A264802.P16348981358803447744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 n + A130328 n

end

end A264802.P16348981358803447744

namespace A264802

/-- `A176224(n)+A130328(n)` -/
def P16348981358803447744.Spec : Prop :=
  ∀ n, P16348981358803447744.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P7634694308155300228

`A271709(n)+A173787(n)`
-/

namespace A264802.P7634694308155300228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A173787 n

end

end A264802.P7634694308155300228

namespace A264802

/-- `A271709(n)+A173787(n)` -/
def P7634694308155300228.Spec : Prop :=
  ∀ n, P7634694308155300228.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P11232573632301666580

`A143038(n)+A130452(n+1)`
-/

namespace A264802.P11232573632301666580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143038 n + A130452 (n + 1)

end

end A264802.P11232573632301666580

namespace A264802

/-- `A143038(n)+A130452(n+1)` -/
def P11232573632301666580.Spec : Prop :=
  ∀ n, P11232573632301666580.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P13232322809573407188

`A131816(n)+A173787(n)+1`
-/

namespace A264802.P13232322809573407188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (A173787 n + 1)

end

end A264802.P13232322809573407188

namespace A264802

/-- `A131816(n)+A173787(n)+1` -/
def P13232322809573407188.Spec : Prop :=
  ∀ n, P13232322809573407188.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P13799071105148298657

`(A059268(n)+1)*A130321(n)`
-/

namespace A264802.P13799071105148298657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 n + 1) * A130321 n

end

end A264802.P13799071105148298657

namespace A264802

/-- `(A059268(n)+1)*A130321(n)` -/
def P13799071105148298657.Spec : Prop :=
  ∀ n, P13799071105148298657.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P3436004919170244046

`A140513(n)+A271709(n)-A173786(n)`
-/

namespace A264802.P3436004919170244046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + (A271709 n - A173786 n)

end

end A264802.P3436004919170244046

namespace A264802

/-- `A140513(n)+A271709(n)-A173786(n)` -/
def P3436004919170244046.Spec : Prop :=
  ∀ n, P3436004919170244046.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P7173706345883359466

`A137688(n)+A137688(n)/A059268(n)`
-/

namespace A264802.P7173706345883359466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) + (A137688 n : ℚ) / (A059268 n : ℚ)

end

end A264802.P7173706345883359466

namespace A264802

/-- `A137688(n)+A137688(n)/A059268(n)` -/
def P7173706345883359466.Spec : Prop :=
  ∀ n, P7173706345883359466.a n = (A264802 (n + 1) : ℚ)

end A264802

/-! ## A264802.P12789487248299308512

`A173786(∑[2*n]%comp[∑[n]])`
-/

namespace A264802.P12789487248299308512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A264802.P12789487248299308512

namespace A264802

/-- `A173786(∑[2*n]%comp[∑[n]])` -/
def P12789487248299308512.Spec : Prop :=
  ∀ n, P12789487248299308512.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P15428256091045502795

`A048645(∑[char[∑[n]]]²+1-n)`
-/

namespace A264802.P15428256091045502795
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - (n : ℤ))).toNat

end

end A264802.P15428256091045502795

namespace A264802

/-- `A048645(∑[char[∑[n]]]²+1-n)` -/
def P15428256091045502795.Spec : Prop :=
  ∀ n, P15428256091045502795.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P16631215678931792818

`A173786(∑[char[∑[n]]]²-(n+1))`
-/

namespace A264802.P16631215678931792818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A264802.P16631215678931792818

namespace A264802

/-- `A173786(∑[char[∑[n]]]²-(n+1))` -/
def P16631215678931792818.Spec : Prop :=
  ∀ n, P16631215678931792818.a n = A264802 (n + 1)

end A264802

/-! ## A264802.P6269914717616905577

`A099627(A061579(n))+1`
-/

namespace A264802.P6269914717616905577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A061579 n).toNat + 1

end

end A264802.P6269914717616905577

namespace A264802

/-- `A099627(A061579(n))+1` -/
def P6269914717616905577.Spec : Prop :=
  ∀ n, P6269914717616905577.a n = A264802 (n + 1)

end A264802

/-!
# A264803: Numbers with largest ratio A003313(k)/log_2(k) in the range 2^n < k < 2^(n+1).

The programs for A264803, there is no canonical definition to state claims against.
-/

/-! ## A264803.P8210827403704585848

`A003064(comp[∑[n]]^A140437(n+2))`
-/

namespace A264803.P8210827403704585848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A140437 (n + 2) : ℤ))).toNat

end

end A264803.P8210827403704585848

/-! ## A264803.P4279432410749516823

`A003064(A003057(n+2)+A002998(n))`
-/

namespace A264803.P4279432410749516823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 (A003057 (n + 2) + A002998 n).toNat

end

end A264803.P4279432410749516823

/-! ## A264803.P14978878415103773879

`A003064(lcm(A014132(n+1), A115205(n)))`
-/

namespace A264803.P14978878415103773879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 (Int.lcm (A014132 (n + 1)) (A115205 n))

end

end A264803.P14978878415103773879

/-! ## A264803.P5758195968290250256

`A003064(A043315(n+1)+A002024(n+1))`
-/

namespace A264803.P5758195968290250256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 (A043315 (n + 1) + A002024 (n + 1)).toNat

end

end A264803.P5758195968290250256

/-!
# A264810: Number of numbers k <= n such that phi(m) = k for some m.

The programs for A264810, the canonical program `A264810.P5749480952070146331` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264810 has offset 1).

The definition of A264810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264810.P5749480952070146331

`∑[A264739(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A264810

/-- `∑[A264739(n+1)]` -/
def P5749480952070146331.Spec : Prop :=
  ∀ n, P5749480952070146331.a n = A264810 (n + 1)

theorem P5749480952070146331.correct : P5749480952070146331.Spec := by
  intro n
  simp only [A264810, Nat.add_sub_cancel]

end A264810

/-! ## A264810.P16090759477906335170

`∑[A049283(n+1)%2]`
-/

namespace A264810.P16090759477906335170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049283 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P16090759477906335170

namespace A264810

/-- `∑[A049283(n+1)%2]` -/
def P16090759477906335170.Spec : Prop :=
  ∀ n, P16090759477906335170.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P7344963065186739989

`∑[A323169(n+1)%2]`
-/

namespace A264810.P7344963065186739989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323169 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P7344963065186739989

namespace A264810

/-- `∑[A323169(n+1)%2]` -/
def P7344963065186739989.Spec : Prop :=
  ∀ n, P7344963065186739989.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P1150186314778757105

`∑[floor(atan(A014197(n+1)))]`
-/

namespace A264810.P1150186314778757105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A014197 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P1150186314778757105

namespace A264810

/-- `∑[floor(atan(A014197(n+1)))]` -/
def P1150186314778757105.Spec : Prop :=
  ∀ n, P1150186314778757105.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P13088295923996552394

`1-A180639(n+1)+n`
-/

namespace A264810.P13088295923996552394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A180639 (n + 1) + (n : ℤ)

end

end A264810.P13088295923996552394

namespace A264810

/-- `1-A180639(n+1)+n` -/
def P13088295923996552394.Spec : Prop :=
  ∀ n, P13088295923996552394.a n = A264810 (n + 1)

theorem P13088295923996552394.correct : P13088295923996552394.Spec := by
  intro n
  simp only [A264810, Nat.add_sub_cancel, A264810.P13088295923996552394.a, A264810.P5749480952070146331.f1, A264810.P5749480952070146331.a, A180639, A180639.P15369991327257143544.a, A264739, A264739.P12611076801907111291.f1, A264739.P12611076801907111291.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A264810

/-! ## A264810.P12413973048517342387

`∑[char[A000010(n+1)-1]]`
-/

namespace A264810.P12413973048517342387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P12413973048517342387

namespace A264810

/-- `∑[char[A000010(n+1)-1]]` -/
def P12413973048517342387.Spec : Prop :=
  ∀ n, (P12413973048517342387.a n : ℤ) = A264810 (n + 1)

end A264810

/-! ## A264810.P6364063672361986602

`∑[char[A002202(n+1)-1]]`
-/

namespace A264810.P6364063672361986602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P6364063672361986602

namespace A264810

/-- `∑[char[A002202(n+1)-1]]` -/
def P6364063672361986602.Spec : Prop :=
  ∀ n, (P6364063672361986602.a n : ℤ) = A264810 (n + 1)

end A264810

/-! ## A264810.P5830572778261013493

`∑[1-C(n, A057635(n+1))]`
-/

namespace A264810.P5830572778261013493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n (A057635 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P5830572778261013493

namespace A264810

/-- `∑[1-C(n, A057635(n+1))]` -/
def P5830572778261013493.Spec : Prop :=
  ∀ n, P5830572778261013493.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P9610203049608288267

`∑[char[∑[A083533(n+1)]]]+1`
-/

namespace A264810.P9610203049608288267
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A264810.P9610203049608288267

namespace A264810

/-- `∑[char[∑[A083533(n+1)]]]+1` -/
def P9610203049608288267.Spec : Prop :=
  ∀ n, (P9610203049608288267.a n : ℤ) = A264810 (n + 1)

end A264810

/-! ## A264810.P325467353028020514

`∑[1-floor(acot(A215240(n+1)))]`
-/

namespace A264810.P325467353028020514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A215240 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P325467353028020514

namespace A264810

/-- `∑[1-floor(acot(A215240(n+1)))]` -/
def P325467353028020514.Spec : Prop :=
  ∀ n, P325467353028020514.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P18150976112818070643

`∑[A010051(A322310(A014197(n+1)²+1)+1)]`
-/

namespace A264810.P18150976112818070643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A322310 (A014197 (n + 1) ^ 2 + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P18150976112818070643

namespace A264810

/-- `∑[A010051(A322310(A014197(n+1)²+1)+1)]` -/
def P18150976112818070643.Spec : Prop :=
  ∀ n, P18150976112818070643.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P15591867831908378469

`∑[char[A319997(n+1)-1]]`
-/

namespace A264810.P15591867831908378469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P15591867831908378469

namespace A264810

/-- `∑[char[A319997(n+1)-1]]` -/
def P15591867831908378469.Spec : Prop :=
  ∀ n, (P15591867831908378469.a n : ℤ) = A264810 (n + 1)

end A264810

/-! ## A264810.P16179499096977762636

`∑[A076826(A049283(n+1))]`
-/

namespace A264810.P16179499096977762636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A049283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P16179499096977762636

namespace A264810

/-- `∑[A076826(A049283(n+1))]` -/
def P16179499096977762636.Spec : Prop :=
  ∀ n, P16179499096977762636.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P5824132656922043385

`∑[A059841(A049283(n+1)+1)]`
-/

namespace A264810.P5824132656922043385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A049283 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P5824132656922043385

namespace A264810

/-- `∑[A059841(A049283(n+1)+1)]` -/
def P5824132656922043385.Spec : Prop :=
  ∀ n, P5824132656922043385.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P18282556994250246499

`∑[A019425(A057635(n+1))]`
-/

namespace A264810.P18282556994250246499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A057635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P18282556994250246499

namespace A264810

/-- `∑[A019425(A057635(n+1))]` -/
def P18282556994250246499.Spec : Prop :=
  ∀ n, P18282556994250246499.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P3723860239543004501

`∑[char[A109606(n+1)]]`
-/

namespace A264810.P3723860239543004501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P3723860239543004501

namespace A264810

/-- `∑[char[A109606(n+1)]]` -/
def P3723860239543004501.Spec : Prop :=
  ∀ n, (P3723860239543004501.a n : ℤ) = A264810 (n + 1)

end A264810

/-! ## A264810.P3152351177045232532

`∑[A056926(A215240(n+1))]`
-/

namespace A264810.P3152351177045232532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A215240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P3152351177045232532

namespace A264810

/-- `∑[A056926(A215240(n+1))]` -/
def P3152351177045232532.Spec : Prop :=
  ∀ n, P3152351177045232532.a n = A264810 (n + 1)

end A264810

/-! ## A264810.P5647070938322568487

`∑[A049046(A322310(n+1))]`
-/

namespace A264810.P5647070938322568487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A322310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P5647070938322568487

namespace A264810

/-- `∑[A049046(A322310(n+1))]` -/
def P5647070938322568487.Spec : Prop :=
  ∀ n, P5647070938322568487.a n = A264810 (n + 1)

end A264810

/-!
# A264812: Number of tilings of a 5 X n rectangle using n pentominoes of shapes P, I, X.

The programs for A264812, there is no canonical definition to state claims against.
-/

/-! ## A264812.P14540937156362688754

`A002635(A116396(n+1))`
-/

namespace A264812.P14540937156362688754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A116396 (n + 1)).toNat

end

end A264812.P14540937156362688754

/-! ## A264812.P11751043479857314778

`A134478(A162973(n+1)+n-char[1])`
-/

namespace A264812.P11751043479857314778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A162973 (n + 1) + ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A264812.P11751043479857314778

/-! ## A264812.P15579381044432691287

`A342585(A127127(n))+A000085(n)`
-/

namespace A264812.P15579381044432691287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (A127127 n).toNat + A000085 n

end

end A264812.P15579381044432691287

/-!
# A264813: Number of permutations of 3 indistinguishable copies of 1,...,n such that the first and second copies of j are adjacent and there are exactly j numbers between the second and the third copy of j.

The programs for A264813, there is no canonical definition to state claims against.
-/

/-! ## A264813.P3559217722859849580

`A334997(A014602(n+1))-A027349(n+5)`
-/

namespace A264813.P3559217722859849580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (A014602 (n + 1)).toNat - A027349 (n + 5)

end

end A264813.P3559217722859849580

/-!
# A264814: Numbers k such that concatenate(k,k+1,k) is prime.

The programs for A264814, there is no canonical definition to state claims against.
-/

/-! ## A264814.P2065309628884500005

`A162308(eq[A280831(n), A291624(n+1)]+1)`
-/

namespace A264814.P2065309628884500005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280831 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A264814.P2065309628884500005

/-!
# A264815: Semirps: a semirp (or semi-r-p) is a semiprime r*p with r and p both reversed primes.

The programs for A264815, there is no canonical definition to state claims against.
-/

/-! ## A264815.P16518767165667028286

`eq[A151764(n+1), A179312(n+1)]+1`
-/

namespace A264815.P16518767165667028286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A264815.P16518767165667028286

/-! ## A264815.P16082620280865344748

`eq[A064911(n+1)+n, A151764(n+1)]+1`
-/

namespace A264815.P16082620280865344748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A264815.P16082620280865344748

/-! ## A264815.P3454686501686888075

`A179464(eq[A151764(n+1), A179312(n+1)])`
-/

namespace A264815.P3454686501686888075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179464 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A264815.P3454686501686888075

/-! ## A264815.P8709901738254258511

`eq[A106325(n+1), A151764(n+1)]+1`
-/

namespace A264815.P8709901738254258511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A264815.P8709901738254258511

/-! ## A264815.P12257504130397457641

`A001358(∑[A002033(A304334(n))])`
-/

namespace A264815.P12257504130397457641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A304334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A264815.P12257504130397457641

/-!
# A264816: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 7.

The programs for A264816, there is no canonical definition to state claims against.
-/

/-! ## A264816.P1803401116539989784

`A264818(∑[n+2])`
-/

namespace A264816.P1803401116539989784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264816.P1803401116539989784

/-! ## A264816.P10214833357737771486

`A264818(A212342(n+2))*A275062(n)`
-/

namespace A264816.P10214833357737771486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264818 (A212342 (n + 2)).toNat * A275062 n

end

end A264816.P10214833357737771486

/-! ## A264816.P8758735213150258736

`or(A204690(n), A264818(A212342(n+2)))`
-/

namespace A264816.P8758735213150258736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204690 n) (A264818 (A212342 (n + 2)).toNat)

end

end A264816.P8758735213150258736

/-!
# A264817: Number of n X 3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 7.

The programs for A264817, there is no canonical definition to state claims against.
-/

/-! ## A264817.P12482517259453254261

`A264818(∑[n+3]+1)`
-/

namespace A264817.P12482517259453254261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264818 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264817.P12482517259453254261

/-! ## A264817.P6052579237794504038

`record[A264818(A101881(n))]`
-/

namespace A264817.P6052579237794504038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264818 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264817.P6052579237794504038

/-!
# A264818: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 7.

The programs for A264818, there is no canonical definition to state claims against.
-/

/-! ## A264818.P2997863831222557468

`A049269(A264709(n+1))`
-/

namespace A264818.P2997863831222557468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049269 (A264709 (n + 1)).toNat

end

end A264818.P2997863831222557468

/-! ## A264818.P4270034446651765824

`A277824(ceil(sqrt(A179079(n+1))))`
-/

namespace A264818.P4270034446651765824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 ⌈Real.sqrt (A179079 (n + 1) : ℝ)⌉.toNat

end

end A264818.P4270034446651765824

/-! ## A264818.P17142959620612795310

`gcd(A005676(n), A126294(A000009(n)))`
-/

namespace A264818.P17142959620612795310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005676 n) (A126294 (A000009 n).toNat)

end

end A264818.P17142959620612795310

/-!
# A264819: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 7.

The programs for A264819, there is no canonical definition to state claims against.
-/

/-! ## A264819.P12862062696347922769

`A264818(∑[n+1]+2)`
-/

namespace A264819.P12862062696347922769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264818 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264819.P12862062696347922769

/-!
# A264820: a(n) is the number of 3 X n arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 7.

The programs for A264820, there is no canonical definition to state claims against.
-/

/-! ## A264820.P10489976945186941726

`A264818(∑[n+2]+4)`
-/

namespace A264820.P10489976945186941726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264818 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264820.P10489976945186941726

/-! ## A264820.P15276733543687708857

`record[A264818(n+4)/A039757(n)]`
-/

namespace A264820.P15276733543687708857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264818 (n + 4) : ℚ) / (A039757 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264820.P15276733543687708857

/-! ## A264820.P2279378742629138504

`A264818(A167614(n+1))^ceil(acot(n))`
-/

namespace A264820.P2279378742629138504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264818 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A264820.P2279378742629138504

/-!
# A264821: Centered 14-gonal (or tetradecagonal) primes.

The programs for A264821, there is no canonical definition to state claims against.
-/

/-! ## A264821.P18201187077822841724

`∩[A124826(n+1), A195041(n)]`
-/

namespace A264821.P18201187077822841724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264821.P18201187077822841724

/-! ## A264821.P9062720422345743137

`∩[A069127(n+1), A124826(n+1)]`
-/

namespace A264821.P9062720422345743137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264821.P9062720422345743137

/-! ## A264821.P14116063098036531489

`p?[14*C(n, 2)+1]`
-/

namespace A264821.P14116063098036531489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264821.P14116063098036531489

/-! ## A264821.P17914953728789694599

`p?[or(1, 14*C(n, 2))]`
-/

namespace A264821.P17914953728789694599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (14 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264821.P17914953728789694599

/-! ## A264821.P5110517167376736518

`p?[xor(1, 14*C(n, 2))]`
-/

namespace A264821.P5110517167376736518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (14 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264821.P5110517167376736518

/-! ## A264821.P6194648114603769069

`or(1, p?[∑[14*n]+1])`
-/

namespace A264821.P6194648114603769069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A264821.P6194648114603769069

/-! ## A264821.P5865232653747873558

`p?[7*(n²+n)+1]`
-/

namespace A264821.P5865232653747873558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n ^ 2 + n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264821.P5865232653747873558

/-! ## A264821.P3259859681640881187

`∩[A140444(n+1), A195041(n)]`
-/

namespace A264821.P3259859681640881187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264821.P3259859681640881187

/-! ## A264821.P14269002060490431071

`∩[A045465(n+1), A069127(n+1)]`
-/

namespace A264821.P14269002060490431071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264821.P14269002060490431071

/-!
# A264822: Centered 15-gonal (or pentadecagonal) primes.

The programs for A264822, the canonical program `A264822.P10679971076099386625` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264822 has offset 1).

The definition of A264822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264822.P10679971076099386625

`∩[A030430(n+1), A194275(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A264822

/-- `∩[A030430(n+1), A194275(n)]` -/
def P10679971076099386625.Spec : Prop :=
  ∀ n, (P10679971076099386625.a n : ℤ) = A264822 (n + 1)

theorem P10679971076099386625.correct : P10679971076099386625.Spec := by
  intro n
  simp only [A264822, Nat.add_sub_cancel]

end A264822

/-! ## A264822.P15199847911937350643

`∩[A030430(n+1), A069128(n+1)]`
-/

namespace A264822.P15199847911937350643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264822.P15199847911937350643

namespace A264822

/-- `∩[A030430(n+1), A069128(n+1)]` -/
def P15199847911937350643.Spec : Prop :=
  ∀ n, (P15199847911937350643.a n : ℤ) = A264822 (n + 1)

end A264822

/-! ## A264822.P12948882415218651992

`p?[15*C(n, 2)+1]`
-/

namespace A264822.P12948882415218651992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264822.P12948882415218651992

namespace A264822

/-- `p?[15*C(n, 2)+1]` -/
def P12948882415218651992.Spec : Prop :=
  ∀ n, (P12948882415218651992.a n : ℤ) = A264822 (n + 1)

end A264822

/-! ## A264822.P14056253159964671398

`p?[or(1, 15*C(n, 2))]`
-/

namespace A264822.P14056253159964671398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (15 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264822.P14056253159964671398

namespace A264822

/-- `p?[or(1, 15*C(n, 2))]` -/
def P14056253159964671398.Spec : Prop :=
  ∀ n, (P14056253159964671398.a n : ℤ) = A264822 (n + 1)

end A264822

/-! ## A264822.P13456982149616824518

`p?[xor(1, 15*C(n, 2))]`
-/

namespace A264822.P13456982149616824518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (15 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264822.P13456982149616824518

namespace A264822

/-- `p?[xor(1, 15*C(n, 2))]` -/
def P13456982149616824518.Spec : Prop :=
  ∀ n, (P13456982149616824518.a n : ℤ) = A264822 (n + 1)

end A264822

/-! ## A264822.P13266777119367848442

`or(1, p?[∑[15*n]+1])`
-/

namespace A264822.P13266777119367848442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A264822.P13266777119367848442

namespace A264822

/-- `or(1, p?[∑[15*n]+1])` -/
def P13266777119367848442.Spec : Prop :=
  ∀ n, (P13266777119367848442.a n : ℤ) = A264822 (n + 1)

end A264822

/-! ## A264822.P14295125208387682875

`p?[a(n-1)+15*n]` with `a(0)=1`
-/

namespace A264822.P14295125208387682875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 15 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264822.P14295125208387682875

namespace A264822

/-- `p?[a(n-1)+15*n]` -/
def P14295125208387682875.Spec : Prop :=
  ∀ n, (P14295125208387682875.a n : ℤ) = A264822 (n + 1)

end A264822

/-!
# A264823: Centered 16-gonal (or hexadecagonal) primes.

The programs for A264823, the canonical program `A264823.P5478907989442003670` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264823 has offset 1).

The definition of A264823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3674 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264823.P1820162145744211031

`∩[A066436(n+1), a(n-1)+16*n]` with `a(0)=1`
-/

namespace A264823.P1820162145744211031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 16 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A264823.P1820162145744211031

namespace A264823

/-- `∩[A066436(n+1), a(n-1)+16*n]` -/
def P1820162145744211031.Spec : Prop :=
  ∀ n, (P1820162145744211031.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P5478907989442003670

`∩[A256917(n+1), a(n-1)+16*n]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A264823

/-- `∩[A256917(n+1), a(n-1)+16*n]` -/
def P5478907989442003670.Spec : Prop :=
  ∀ n, (P5478907989442003670.a n : ℤ) = A264823 (n + 1)

theorem P5478907989442003670.correct : P5478907989442003670.Spec := by
  intro n
  simp only [A264823, Nat.add_sub_cancel]

end A264823

/-! ## A264823.P4616984409317036314

`∩[A066436(n+1), A069129(n+1)]`
-/

namespace A264823.P4616984409317036314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P4616984409317036314

namespace A264823

/-- `∩[A066436(n+1), A069129(n+1)]` -/
def P4616984409317036314.Spec : Prop :=
  ∀ n, (P4616984409317036314.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P833075829844749495

`∩[A069129(n+1), A256917(n+1)]`
-/

namespace A264823.P833075829844749495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P833075829844749495

namespace A264823

/-- `∩[A069129(n+1), A256917(n+1)]` -/
def P833075829844749495.Spec : Prop :=
  ∀ n, (P833075829844749495.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P16044713115095478133

`∩[2*A066049(n+1)²-1, A069129(n+1)]`
-/

namespace A264823.P16044713115095478133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066049 (n + 1) ^ 2 - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P16044713115095478133

namespace A264823

/-- `∩[2*A066049(n+1)²-1, A069129(n+1)]` -/
def P16044713115095478133.Spec : Prop :=
  ∀ n, (P16044713115095478133.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P9734187926501881940

`∩[A066436(n+1), A077221(n)]`
-/

namespace A264823.P9734187926501881940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P9734187926501881940

namespace A264823

/-- `∩[A066436(n+1), A077221(n)]` -/
def P9734187926501881940.Spec : Prop :=
  ∀ n, (P9734187926501881940.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P8346357486289315560

`∩[A256917(n+1), A077221(n)]`
-/

namespace A264823.P8346357486289315560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P8346357486289315560

namespace A264823

/-- `∩[A256917(n+1), A077221(n)]` -/
def P8346357486289315560.Spec : Prop :=
  ∀ n, (P8346357486289315560.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P6782643984364914711

`∩[A066436(n+1), A249356(n+1)]`
-/

namespace A264823.P6782643984364914711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P6782643984364914711

namespace A264823

/-- `∩[A066436(n+1), A249356(n+1)]` -/
def P6782643984364914711.Spec : Prop :=
  ∀ n, (P6782643984364914711.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P16389491934387831514

`∩[A066436(n+1), A195605(n)-1]`
-/

namespace A264823.P16389491934387831514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P16389491934387831514

namespace A264823

/-- `∩[A066436(n+1), A195605(n)-1]` -/
def P16389491934387831514.Spec : Prop :=
  ∀ n, (P16389491934387831514.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P13021377587973793409

`∩[A056220(2*n+1), A256917(n+2)]`
-/

namespace A264823.P13021377587973793409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P13021377587973793409

namespace A264823

/-- `∩[A056220(2*n+1), A256917(n+2)]` -/
def P13021377587973793409.Spec : Prop :=
  ∀ n, (P13021377587973793409.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P3423235866073961039

`∩[A058331(2*n+1)-2, A256917(n+2)]`
-/

namespace A264823.P3423235866073961039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P3423235866073961039

namespace A264823

/-- `∩[A058331(2*n+1)-2, A256917(n+2)]` -/
def P3423235866073961039.Spec : Prop :=
  ∀ n, (P3423235866073961039.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P12464341594866620950

`∩[A056220(A066049(n+1)), A069129(n+1)]`
-/

namespace A264823.P12464341594866620950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A066049 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P12464341594866620950

namespace A264823

/-- `∩[A056220(A066049(n+1)), A069129(n+1)]` -/
def P12464341594866620950.Spec : Prop :=
  ∀ n, (P12464341594866620950.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P13305825907940960216

`∩[A069129(n+1), A056220(A160697(n+2))]`
-/

namespace A264823.P13305825907940960216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A160697 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P13305825907940960216

namespace A264823

/-- `∩[A069129(n+1), A056220(A160697(n+2))]` -/
def P13305825907940960216.Spec : Prop :=
  ∀ n, (P13305825907940960216.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P15977434862798176060

`record[A059772((n+1)/(1-3/4)+2)]`
-/

namespace A264823.P15977434862798176060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 - (3 : ℚ) / 4) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264823.P15977434862798176060

namespace A264823

/-- `record[A059772((n+1)/(1-3/4)+2)]` -/
def P15977434862798176060.Spec : Prop :=
  ∀ n, P15977434862798176060.a n = A264823 (n + 1)

end A264823

/-! ## A264823.P15894942591569340083

`record[A164314(A016825(n+1))]`
-/

namespace A264823.P15894942591569340083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (A016825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264823.P15894942591569340083

namespace A264823

/-- `record[A164314(A016825(n+1))]` -/
def P15894942591569340083.Spec : Prop :=
  ∀ n, P15894942591569340083.a n = A264823 (n + 1)

end A264823

/-! ## A264823.P16845763325308143311

`∩[A066436(n+1), A194274(n)]`
-/

namespace A264823.P16845763325308143311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P16845763325308143311

namespace A264823

/-- `∩[A066436(n+1), A194274(n)]` -/
def P16845763325308143311.Spec : Prop :=
  ∀ n, (P16845763325308143311.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P4407596679749026299

`∩[A256917(n+1), A194274(n)]`
-/

namespace A264823.P4407596679749026299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P4407596679749026299

namespace A264823

/-- `∩[A256917(n+1), A194274(n)]` -/
def P4407596679749026299.Spec : Prop :=
  ∀ n, (P4407596679749026299.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P12335548407282847081

`∩[A069129(n+1), A047838(A090697(n+1))]`
-/

namespace A264823.P12335548407282847081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A090697 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P12335548407282847081

namespace A264823

/-- `∩[A069129(n+1), A047838(A090697(n+1))]` -/
def P12335548407282847081.Spec : Prop :=
  ∀ n, (P12335548407282847081.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P11470319936231103975

`∩[A243009(n+1), A077221(n)]`
-/

namespace A264823.P11470319936231103975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P11470319936231103975

namespace A264823

/-- `∩[A243009(n+1), A077221(n)]` -/
def P11470319936231103975.Spec : Prop :=
  ∀ n, (P11470319936231103975.a n : ℤ) = A264823 (n + 1)

end A264823

/-! ## A264823.P6228631224422288328

`∩[A243009(n+1), A194274(n)]`
-/

namespace A264823.P6228631224422288328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264823.P6228631224422288328

namespace A264823

/-- `∩[A243009(n+1), A194274(n)]` -/
def P6228631224422288328.Spec : Prop :=
  ∀ n, (P6228631224422288328.a n : ℤ) = A264823 (n + 1)

end A264823

/-!
# A264824: Centered 17-gonal (or heptadecagonal) primes.

The programs for A264824, there is no canonical definition to state claims against.
-/

/-! ## A264824.P18013507458227017845

`∩[A069130(n+1), A142476(n+1)]`
-/

namespace A264824.P18013507458227017845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264824.P18013507458227017845

/-! ## A264824.P9416455150648864874

`∩[A069130(n+1), A129484(n+1)]`
-/

namespace A264824.P9416455150648864874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264824.P9416455150648864874

/-! ## A264824.P14686685071820664679

`∩[A069130(n+1), A215165(n+1)]`
-/

namespace A264824.P14686685071820664679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264824.P14686685071820664679

/-! ## A264824.P12480353368458518452

`∩[A069130(n+1), A215392(n+1)]`
-/

namespace A264824.P12480353368458518452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264824.P12480353368458518452

/-! ## A264824.P9673941667148339339

`p?[∑[17*n]+1]`
-/

namespace A264824.P9673941667148339339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264824.P9673941667148339339

/-!
# A264825: Centered 18-gonal (or octadecagonal) primes.

The programs for A264825, there is no canonical definition to state claims against.
-/

/-! ## A264825.P5811962014978377549

`∩[A002327(n+1), A069131(n+1)]`
-/

namespace A264825.P5811962014978377549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P5811962014978377549

/-! ## A264825.P1449571495697238394

`∩[A069131(n+1), A084720(n+1)]`
-/

namespace A264825.P1449571495697238394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P1449571495697238394

/-! ## A264825.P6872538937515253102

`∩[A069131(n+1), A179273(n+1)]`
-/

namespace A264825.P6872538937515253102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P6872538937515253102

/-! ## A264825.P3920981625553405401

`∩[A069131(n+1), A239709(n+1)]`
-/

namespace A264825.P3920981625553405401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P3920981625553405401

/-! ## A264825.P13474451580126027567

`∩[A002327(n+1), A195042(n)]`
-/

namespace A264825.P13474451580126027567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P13474451580126027567

/-! ## A264825.P1850782345023224623

`∩[A084720(n+1), A195042(n)]`
-/

namespace A264825.P1850782345023224623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P1850782345023224623

/-! ## A264825.P16781330164835942985

`∩[A179273(n+1), A195042(n)]`
-/

namespace A264825.P16781330164835942985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P16781330164835942985

/-! ## A264825.P13898636740672658107

`∩[A239709(n+1), A195042(n)]`
-/

namespace A264825.P13898636740672658107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P13898636740672658107

/-! ## A264825.P18028748414872874577

`record[A108151(3*(n+1))]`
-/

namespace A264825.P18028748414872874577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264825.P18028748414872874577

/-! ## A264825.P8528119301566087164

`∩[A161550(n+1), A195042(n)]`
-/

namespace A264825.P8528119301566087164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P8528119301566087164

/-! ## A264825.P15786089498679445345

`∩[A069131(n+1), A161550(n+1)]`
-/

namespace A264825.P15786089498679445345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P15786089498679445345

/-! ## A264825.P14317345341035046430

`∩[A002327(n+1), A194273(n)]`
-/

namespace A264825.P14317345341035046430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P14317345341035046430

/-! ## A264825.P10267463372268000787

`∩[A084720(n+1), A194273(n)]`
-/

namespace A264825.P10267463372268000787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P10267463372268000787

/-! ## A264825.P17752564469467389749

`∩[A161550(n+1), A194273(n)]`
-/

namespace A264825.P17752564469467389749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P17752564469467389749

/-! ## A264825.P11866830430083994083

`∩[A179273(n+1), A194273(n)]`
-/

namespace A264825.P11866830430083994083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P11866830430083994083

/-! ## A264825.P14536292932319598471

`∩[A239709(n+1), A194273(n)]`
-/

namespace A264825.P14536292932319598471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P14536292932319598471

/-! ## A264825.P7873344262230243132

`∩[A152900(n+1), A195042(n)]`
-/

namespace A264825.P7873344262230243132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P7873344262230243132

/-! ## A264825.P2898624771264100103

`∩[A069131(n+1), A152900(n+1)]`
-/

namespace A264825.P2898624771264100103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264825.P2898624771264100103

/-!
# A264828: Nonprimes that are not twice a prime.

The programs for A264828, the canonical program `A264828.P8600560789045602649` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264828 has offset 1).

The definition of A264828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264828.P8600560789045602649

`comp[A001751(n+1)-1]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A264828

/-- `comp[A001751(n+1)-1]+1` -/
def P8600560789045602649.Spec : Prop :=
  ∀ n, (P8600560789045602649.a n : ℤ) = A264828 (n + 1)

theorem P8600560789045602649.correct : P8600560789045602649.Spec := by
  intro n
  simp only [A264828, Nat.add_sub_cancel]

end A264828

/-! ## A264828.P12362455074361621325

`comp[3*A006530(n+1)-(n+1)]`
-/

namespace A264828.P12362455074361621325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006530 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A264828.P12362455074361621325

namespace A264828

/-- `comp[3*A006530(n+1)-(n+1)]` -/
def P12362455074361621325.Spec : Prop :=
  ∀ n, (P12362455074361621325.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P5755783214434550933

`lt[gcd(3, a(n-2)), A074206(n)]` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=4, a(4)=6`
-/

namespace A264828.P5755783214434550933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 4, 6] fun n f1 =>
  (Int.gcd 3 (f1 (n - 2)) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264828.P5755783214434550933

namespace A264828

/-- `lt[gcd(3, a(n-2)), A074206(n)]` -/
def P5755783214434550933.Spec : Prop :=
  ∀ n, (P5755783214434550933.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P957957667255023949

`∪[A009188(n+1), A008412(n)]`
-/

namespace A264828.P957957667255023949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P957957667255023949

namespace A264828

/-- `∪[A009188(n+1), A008412(n)]` -/
def P957957667255023949.Spec : Prop :=
  ∀ n, (P957957667255023949.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P16079820813461651853

`∪[A009188(n+1), A014477(n)]`
-/

namespace A264828.P16079820813461651853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P16079820813461651853

namespace A264828

/-- `∪[A009188(n+1), A014477(n)]` -/
def P16079820813461651853.Spec : Prop :=
  ∀ n, (P16079820813461651853.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P1045755778394015066

`∪[A009188(n+1), A014820(n)]`
-/

namespace A264828.P1045755778394015066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P1045755778394015066

namespace A264828

/-- `∪[A009188(n+1), A014820(n)]` -/
def P1045755778394015066.Spec : Prop :=
  ∀ n, (P1045755778394015066.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P17328304188206040065

`∪[A009188(n+1), A014969(n)]`
-/

namespace A264828.P17328304188206040065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P17328304188206040065

namespace A264828

/-- `∪[A009188(n+1), A014969(n)]` -/
def P17328304188206040065.Spec : Prop :=
  ∀ n, (P17328304188206040065.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P13622869223884372758

`∪[A009188(n+1), A016208(n)]`
-/

namespace A264828.P13622869223884372758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016208 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P13622869223884372758

namespace A264828

/-- `∪[A009188(n+1), A016208(n)]` -/
def P13622869223884372758.Spec : Prop :=
  ∀ n, (P13622869223884372758.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P13893074187782431997

`∪[A009188(n+1), A018200(n)]`
-/

namespace A264828.P13893074187782431997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P13893074187782431997

namespace A264828

/-- `∪[A009188(n+1), A018200(n)]` -/
def P13893074187782431997.Spec : Prop :=
  ∀ n, (P13893074187782431997.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P13199114683818944392

`∪[A009188(n+1), A018839(n)]`
-/

namespace A264828.P13199114683818944392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P13199114683818944392

namespace A264828

/-- `∪[A009188(n+1), A018839(n)]` -/
def P13199114683818944392.Spec : Prop :=
  ∀ n, (P13199114683818944392.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P5624718974450681270

`∪[A009188(n+1), A018842(n)]`
-/

namespace A264828.P5624718974450681270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018842 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P5624718974450681270

namespace A264828

/-- `∪[A009188(n+1), A018842(n)]` -/
def P5624718974450681270.Spec : Prop :=
  ∀ n, (P5624718974450681270.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P10269321374343224331

`∪[A009188(n+1), A022144(n)]`
-/

namespace A264828.P10269321374343224331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P10269321374343224331

namespace A264828

/-- `∪[A009188(n+1), A022144(n)]` -/
def P10269321374343224331.Spec : Prop :=
  ∀ n, (P10269321374343224331.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P10352533235533891197

`∪[A009188(n+1), A022636(n)]`
-/

namespace A264828.P10352533235533891197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P10352533235533891197

namespace A264828

/-- `∪[A009188(n+1), A022636(n)]` -/
def P10352533235533891197.Spec : Prop :=
  ∀ n, (P10352533235533891197.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P10415852477883305662

`∪[A009188(n+1), A022732(n)]`
-/

namespace A264828.P10415852477883305662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022732 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P10415852477883305662

namespace A264828

/-- `∪[A009188(n+1), A022732(n)]` -/
def P10415852477883305662.Spec : Prop :=
  ∀ n, (P10415852477883305662.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P860145431185975993

`∪[A009188(n+1), A023007(n)]`
-/

namespace A264828.P860145431185975993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P860145431185975993

namespace A264828

/-- `∪[A009188(n+1), A023007(n)]` -/
def P860145431185975993.Spec : Prop :=
  ∀ n, (P860145431185975993.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P17628818827086135270

`∪[A009188(n+1), A033463(n)]`
-/

namespace A264828.P17628818827086135270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P17628818827086135270

namespace A264828

/-- `∪[A009188(n+1), A033463(n)]` -/
def P17628818827086135270.Spec : Prop :=
  ∀ n, (P17628818827086135270.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P12961069975607190550

`∪[A009188(n+1), A035471(n)]`
-/

namespace A264828.P12961069975607190550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P12961069975607190550

namespace A264828

/-- `∪[A009188(n+1), A035471(n)]` -/
def P12961069975607190550.Spec : Prop :=
  ∀ n, (P12961069975607190550.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P17243133785420590578

`∪[A009188(n+1), A038578(n)]`
-/

namespace A264828.P17243133785420590578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P17243133785420590578

namespace A264828

/-- `∪[A009188(n+1), A038578(n)]` -/
def P17243133785420590578.Spec : Prop :=
  ∀ n, (P17243133785420590578.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P684171890861671584

`∪[A009188(n+1), A040977(n)]`
-/

namespace A264828.P684171890861671584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P684171890861671584

namespace A264828

/-- `∪[A009188(n+1), A040977(n)]` -/
def P684171890861671584.Spec : Prop :=
  ∀ n, (P684171890861671584.a n : ℤ) = A264828 (n + 1)

end A264828

/-! ## A264828.P12815024859376640632

`∪[A009188(n+1), A053717(n)]`
-/

namespace A264828.P12815024859376640632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264828.P12815024859376640632

namespace A264828

/-- `∪[A009188(n+1), A053717(n)]` -/
def P12815024859376640632.Spec : Prop :=
  ∀ n, (P12815024859376640632.a n : ℤ) = A264828 (n + 1)

end A264828

/-!
# A264829: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 7.

The programs for A264829, there is no canonical definition to state claims against.
-/

/-! ## A264829.P5469576682996180884

`A264831(∑[n+2])`
-/

namespace A264829.P5469576682996180884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264831 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264829.P5469576682996180884

/-! ## A264829.P15466368720586749457

`record[A264831(∑[A152271(n)])]`
-/

namespace A264829.P15466368720586749457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264831 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264829.P15466368720586749457

/-! ## A264829.P271307743773666197

`record[A264831(A117142(n+1))]`
-/

namespace A264829.P271307743773666197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264831 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264829.P271307743773666197

/-!
# A264830: Number of n X 3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 7.

The programs for A264830, there is no canonical definition to state claims against.
-/

/-! ## A264830.P7417126188141049269

`A264831(∑[n+3]+1)`
-/

namespace A264830.P7417126188141049269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264830.P7417126188141049269

/-! ## A264830.P13732044767781236819

`or(char[2], A264831(A034856(n+2)))`
-/

namespace A264830.P13732044767781236819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A264831 (A034856 (n + 2)).toNat)

end

end A264830.P13732044767781236819

/-!
# A264831: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 7.

The programs for A264831, there is no canonical definition to state claims against.
-/

/-! ## A264831.P4081372236874584354

`A329563(A264728(n+1))`
-/

namespace A264831.P4081372236874584354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329563 (A264728 (n + 1)).toNat

end

end A264831.P4081372236874584354

/-!
# A264832: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 7.

The programs for A264832, there is no canonical definition to state claims against.
-/

/-! ## A264832.P15588983809306230359

`A264831(∑[n+1]+2)`
-/

namespace A264832.P15588983809306230359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264831 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264832.P15588983809306230359

/-! ## A264832.P3673201480715214290

`record[A264831(n+1)/A092107(n)]`
-/

namespace A264832.P3673201480715214290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264831 (n + 1) : ℚ) / (A092107 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264832.P3673201480715214290

/-! ## A264832.P16174520833584144359

`record[A264831(n+1)/A271206(n)]`
-/

namespace A264832.P16174520833584144359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264831 (n + 1) : ℚ) / (A271206 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264832.P16174520833584144359

/-! ## A264832.P10432535603493539232

`record[A264831(n+1)/A294585(n)]`
-/

namespace A264832.P10432535603493539232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264831 (n + 1) : ℚ) / (A294585 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264832.P10432535603493539232

/-!
# A264833: Number of 3 X n arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 7.

The programs for A264833, there is no canonical definition to state claims against.
-/

/-! ## A264833.P17203887531685286480

`A264831(∑[n+2]+4)`
-/

namespace A264833.P17203887531685286480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264831 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264833.P17203887531685286480

/-! ## A264833.P8935359044985145235

`A264831(A167614(n+1))+char[7]`
-/

namespace A264833.P8935359044985145235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264831 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264833.P8935359044985145235

/-! ## A264833.P15370613574646225129

`record[A010054(n)*A264831(n+3)]`
-/

namespace A264833.P15370613574646225129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264831 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264833.P15370613574646225129

/-!
# A264835: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 7.

The programs for A264835, there is no canonical definition to state claims against.
-/

/-! ## A264835.P7137438861878596585

`A264837(∑[n+2])`
-/

namespace A264835.P7137438861878596585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264837 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264835.P7137438861878596585

/-! ## A264835.P6192744472359848373

`A264837(A212342(n+2))*A275062(n)`
-/

namespace A264835.P6192744472359848373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264837 (A212342 (n + 2)).toNat * A275062 n

end

end A264835.P6192744472359848373

/-! ## A264835.P13126820419184205

`or(A204696(n), A264837(A212342(n+2)))`
-/

namespace A264835.P13126820419184205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204696 n) (A264837 (A212342 (n + 2)).toNat)

end

end A264835.P13126820419184205

/-!
# A264836: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 7.

The programs for A264836, there is no canonical definition to state claims against.
-/

/-! ## A264836.P8599207441433772624

`A264837(∑[n+3]+1)`
-/

namespace A264836.P8599207441433772624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264837 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264836.P8599207441433772624

/-! ## A264836.P10248285159859997108

`record[A264837(A101881(n))]`
-/

namespace A264836.P10248285159859997108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264837 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264836.P10248285159859997108

/-!
# A264838: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 7.

The programs for A264838, there is no canonical definition to state claims against.
-/

/-! ## A264838.P7653048952487773155

`A264837(∑[n+1]+2)`
-/

namespace A264838.P7653048952487773155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264837 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264838.P7653048952487773155

/-! ## A264838.P15367893422072031326

`A141494(n+1)-xor(1, A029016(n))`
-/

namespace A264838.P15367893422072031326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141494 (n + 1) - Int.xor 1 (A029016 n)

end

end A264838.P15367893422072031326

/-!
# A264839: Number of 3 X n arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 7.

The programs for A264839, there is no canonical definition to state claims against.
-/

/-! ## A264839.P110378301442409085

`A264837(∑[n+2]+4)`
-/

namespace A264839.P110378301442409085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264837 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264839.P110378301442409085

/-! ## A264839.P3914632597233305713

`record[A010054(n)*A264837(n+3)]`
-/

namespace A264839.P3914632597233305713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264837 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264839.P3914632597233305713

/-! ## A264839.P16843329514197563825

`record[gcd(A048993(n), A264837(n+3))]`
-/

namespace A264839.P16843329514197563825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A264837 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264839.P16843329514197563825

/-!
# A264840: Consider the sequence {3k, k >= 1}, and write down the numbers of consecutive terms that are squarefree.

The programs for A264840, there is no canonical definition to state claims against.
-/

/-! ## A264840.P15358991611680333228

`A014709((n+3)*A088608(2*(n+1)))`
-/

namespace A264840.P15358991611680333228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 ((n + 3 : ℤ) * A088608 (2 * (n + 1))).toNat

end

end A264840.P15358991611680333228

/-! ## A264840.P3254458288513084749

`2-A267269(A152767(n+4))`
-/

namespace A264840.P3254458288513084749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267269 (A152767 (n + 4)).toNat

end

end A264840.P3254458288513084749

/-! ## A264840.P16387663666569310552

`ceil(ratio[A276166(A000326(3*n+4))])`
-/

namespace A264840.P16387663666569310552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276166 (A000326 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A264840.P16387663666569310552

/-!
# A264843: Maximal numbers of consecutive positive integers congruent to 1 modulo 3 that are all squarefree.

The programs for A264843, there is no canonical definition to state claims against.
-/

/-! ## A264843.P877422115635267674

`A061336(∑[A152048(A064957(n+1))])`
-/

namespace A264843.P877422115635267674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152048 (A064957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A264843.P877422115635267674

/-! ## A264843.P11463936591571115026

`A151925(A338484(n+1)+A132769(n))`
-/

namespace A264843.P11463936591571115026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (A338484 (n + 1) + A132769 n).toNat

end

end A264843.P11463936591571115026

/-! ## A264843.P6150614192471914429

`A036585(A263111(n+13)+A154617(n+1))`
-/

namespace A264843.P6150614192471914429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (A263111 (n + 13) + A154617 (n + 1)).toNat

end

end A264843.P6150614192471914429

/-! ## A264843.P12674031382211920847

`or(A332447(A055018(n+1)), A341945(n+2))`
-/

namespace A264843.P12674031382211920847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A332447 (A055018 (n + 1)).toNat) (A341945 (n + 2))

end

end A264843.P12674031382211920847

/-!
# A264844: Centered 19-gonal (or nonadecagonal) primes.

The programs for A264844, there is no canonical definition to state claims against.
-/

/-! ## A264844.P7184279471738255420

`∩[A069132(n+1), A141868(n+1)]`
-/

namespace A264844.P7184279471738255420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264844.P7184279471738255420

/-! ## A264844.P1208030597944904575

`∩[A069132(n+1), A215166(n+1)]`
-/

namespace A264844.P1208030597944904575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264844.P1208030597944904575

/-! ## A264844.P16792417906630309188

`∩[A069132(n+1), A215393(n+1)]`
-/

namespace A264844.P16792417906630309188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264844.P16792417906630309188

/-! ## A264844.P7454427156316018188

`p?[∑[19*n]+1]`
-/

namespace A264844.P7454427156316018188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264844.P7454427156316018188

/-! ## A264844.P3803763438155883353

`or(1, p?[A069132(n+1)])`
-/

namespace A264844.P3803763438155883353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A264844.P3803763438155883353

/-!
# A264845: Centered 20-gonal (or icosagonal) primes.

The programs for A264845, there is no canonical definition to state claims against.
-/

/-! ## A264845.P14231031207381143336

`∩[A030430(n+1), A195142(n)]`
-/

namespace A264845.P14231031207381143336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264845.P14231031207381143336

/-! ## A264845.P6050746298944636533

`∩[A030430(n+1), A069133(n+1)]`
-/

namespace A264845.P6050746298944636533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264845.P6050746298944636533

/-! ## A264845.P11813533071381657275

`∩[A088955(n+1), A195142(n)]`
-/

namespace A264845.P11813533071381657275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264845.P11813533071381657275

/-! ## A264845.P13423228498399435070

`∩[A088955(n+1), A269132(n)]`
-/

namespace A264845.P13423228498399435070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269132 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264845.P13423228498399435070

/-! ## A264845.P7913103111933044632

`∩[A069133(n+1), A088955(n+1)]`
-/

namespace A264845.P7913103111933044632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264845.P7913103111933044632

/-! ## A264845.P2324186380338416504

`p?[20*C(n, 2)+1]`
-/

namespace A264845.P2324186380338416504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264845.P2324186380338416504

/-! ## A264845.P2662135553783807527

`p?[or(1, 20*C(n, 2))]`
-/

namespace A264845.P2662135553783807527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (20 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264845.P2662135553783807527

/-! ## A264845.P7496256405115953289

`p?[xor(1, 20*C(n, 2))]`
-/

namespace A264845.P7496256405115953289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (20 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264845.P7496256405115953289

/-! ## A264845.P5667734533012752299

`p?[10*(n²+n)+1]`
-/

namespace A264845.P5667734533012752299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n ^ 2 + n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264845.P5667734533012752299

/-!
# A264846: Irregular triangle read by rows where row n lists the least members of the equivalence classes of the equivalence relation xRy defined by floor(n/x) = floor(n/y) with n, x and y in N*.

The programs for A264846, there is no canonical definition to state claims against.
-/

/-! ## A264846.P3983846494067027515

`A002260(lt[A359901(2*(n+1)), A260885(n+1)])`
-/

namespace A264846.P3983846494067027515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359901 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264846.P3983846494067027515

/-! ## A264846.P723780756518298286

`A265691(A205542(∑[n]))`
-/

namespace A264846.P723780756518298286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (A205542 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A264846.P723780756518298286

/-! ## A264846.P16836776197542324068

`A265691(A328617(n+2))`
-/

namespace A264846.P16836776197542324068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (A328617 (n + 2)).toNat

end

end A264846.P16836776197542324068

/-! ## A264846.P15427392183890595512

`A265691(n+2)%A103843(2*n+5)`
-/

namespace A264846.P15427392183890595512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265691 (n + 2)) (A103843 (2 * n + 5))

end

end A264846.P15427392183890595512

/-! ## A264846.P8623118236546673117

`A265691(n+2)*A334032(A000040(n+1))`
-/

namespace A264846.P8623118236546673117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (n + 2) * A334032 (A000040 (n + 1)).toNat

end

end A264846.P8623118236546673117

/-!
# A264847: Pluritriangular numbers: a(0) = 0; a(n+1) = a(n) + the number of digits in terms a(0)..a(n).

The programs for A264847, the canonical program `A264847.P10430912638818153852` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264847 has offset 0).

The definition of A264847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264847.P1630718141148326710

`∑[∑[A000195(A084116(n+1))]]`
-/

namespace A264847.P1630718141148326710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A084116 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264847.P1630718141148326710

namespace A264847

/-- `∑[∑[A000195(A084116(n+1))]]` -/
def P1630718141148326710.Spec : Prop :=
  ∀ n, P1630718141148326710.a n = A264847 n

end A264847

/-! ## A264847.P936222582926313765

`∑[∑[A000195(A316413(n+1))]]`
-/

namespace A264847.P936222582926313765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A316413 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264847.P936222582926313765

namespace A264847

/-- `∑[∑[A000195(A316413(n+1))]]` -/
def P936222582926313765.Spec : Prop :=
  ∀ n, P936222582926313765.a n = A264847 n

end A264847

/-! ## A264847.P10430912638818153852

`∑[∑[A059939(A080686(n+2))]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A264847

/-- `∑[∑[A059939(A080686(n+2))]]` -/
def P10430912638818153852.Spec : Prop :=
  ∀ n, P10430912638818153852.a n = A264847 n

theorem P10430912638818153852.correct : P10430912638818153852.Spec := by
  intro n
  simp only [A264847]

end A264847

/-! ## A264847.P14968056750857691166

`∑[∑[A004218(A177805(n+1))]]`
-/

namespace A264847.P14968056750857691166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A177805 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264847.P14968056750857691166

namespace A264847

/-- `∑[∑[A004218(A177805(n+1))]]` -/
def P14968056750857691166.Spec : Prop :=
  ∀ n, P14968056750857691166.a n = A264847 n

end A264847

/-! ## A264847.P8438890128350250666

`∑[∑[A111972(A190269(n+3))]]`
-/

namespace A264847.P8438890128350250666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A190269 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264847.P8438890128350250666

namespace A264847

/-- `∑[∑[A111972(A190269(n+3))]]` -/
def P8438890128350250666.Spec : Prop :=
  ∀ n, P8438890128350250666.a n = A264847 n

end A264847

/-!
# A264850: a(n) = n*(n + 1)*(n + 2)*(7*n - 5)/12.

The programs for A264850, the canonical program `A264850.P16140112067947886919` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264850 has offset 0).

The definition of A264850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)*(7*n-5)/12` (program `A264850.P5516930121314446539`, by `A264850.P5516930121314446539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264850.P5516930121314446539

`n*(n+1)*(n+2)*(7*n-5)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264850.P5516930121314446539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) * (n + 2) : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 12

end

end A264850.P5516930121314446539

namespace A264850

/-- `n*(n+1)*(n+2)*(7*n-5)/12` -/
def P5516930121314446539.Spec : Prop :=
  ∀ n, P5516930121314446539.a n = (A264850 n : ℚ)

theorem P5516930121314446539.correct : P5516930121314446539.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A264850, Nat.add_sub_cancel, A264850.P5516930121314446539.a, A264850.P16140112067947886919.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A264850, Nat.add_sub_cancel, A264850.P5516930121314446539.a, A264850.P16140112067947886919.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264850

/-! ## A264850.P16140112067947886919

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=80, a(4)=230`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264850

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16140112067947886919.Spec : Prop :=
  ∀ n, P16140112067947886919.a n = A264850 n

theorem P16140112067947886919.correct : P16140112067947886919.Spec := by
  intro n
  simp only [A264850]

end A264850

/-! ## A264850.P12068628907070352047

`∑[A172076(n)]`
-/

namespace A264850.P12068628907070352047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264850.P12068628907070352047

namespace A264850

/-- `∑[A172076(n)]` -/
def P12068628907070352047.Spec : Prop :=
  ∀ n, P12068628907070352047.a n = A264850 n

end A264850

/-! ## A264850.P8181468000102444149

`∑[∑[A051868(n)]]`
-/

namespace A264850.P8181468000102444149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264850.P8181468000102444149

namespace A264850

/-- `∑[∑[A051868(n)]]` -/
def P8181468000102444149.Spec : Prop :=
  ∀ n, P8181468000102444149.a n = A264850 n

end A264850

/-! ## A264850.P17142265024193750509

`∑[A063522(n)]-∑[C(n, 3)]`
-/

namespace A264850.P17142265024193750509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A264850.P17142265024193750509

namespace A264850

/-- `∑[A063522(n)]-∑[C(n, 3)]` -/
def P17142265024193750509.Spec : Prop :=
  ∀ n, P17142265024193750509.a n = A264850 n

end A264850

/-! ## A264850.P8292424560357657161

`∑[A063521(n)]+C(n+1, 3)`
-/

namespace A264850.P8292424560357657161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 1) 3 : ℤ)

end

end A264850.P8292424560357657161

namespace A264850

/-- `∑[A063521(n)]+C(n+1, 3)` -/
def P8292424560357657161.Spec : Prop :=
  ∀ n, P8292424560357657161.a n = A264850 n

end A264850

/-! ## A264850.P10710435348434102840

`A390922(n)+A007588(n)`
-/

namespace A264850.P10710435348434102840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390922 n + A007588 n

end

end A264850.P10710435348434102840

namespace A264850

/-- `A390922(n)+A007588(n)` -/
def P10710435348434102840.Spec : Prop :=
  ∀ n, P10710435348434102840.a n = A264850 n

end A264850

/-! ## A264850.P7493220889713588022

`A213827(n)-A006484(n)`
-/

namespace A264850.P7493220889713588022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213827 n - A006484 n

end

end A264850.P7493220889713588022

namespace A264850

/-- `A213827(n)-A006484(n)` -/
def P7493220889713588022.Spec : Prop :=
  ∀ n, P7493220889713588022.a n = A264850 n

end A264850

/-! ## A264850.P7160583511557586900

`∑[A063523(n)]-A002415(n)`
-/

namespace A264850.P7160583511557586900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002415 n

end

end A264850.P7160583511557586900

namespace A264850

/-- `∑[A063523(n)]-A002415(n)` -/
def P7160583511557586900.Spec : Prop :=
  ∀ n, P7160583511557586900.a n = A264850 n

end A264850

/-! ## A264850.P2187454577524605311

`A185505(n+1)-A081437(n)`
-/

namespace A264850.P2187454577524605311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185505 (n + 1) - A081437 n

end

end A264850.P2187454577524605311

namespace A264850

/-- `A185505(n+1)-A081437(n)` -/
def P2187454577524605311.Spec : Prop :=
  ∀ n, P2187454577524605311.a n = A264850 n

end A264850

/-! ## A264850.P15810271907640447728

`2*A264851(n)-A264852(n)`
-/

namespace A264850.P15810271907640447728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264851 n - A264852 n

end

end A264850.P15810271907640447728

namespace A264850

/-- `2*A264851(n)-A264852(n)` -/
def P15810271907640447728.Spec : Prop :=
  ∀ n, P15810271907640447728.a n = A264850 n

end A264850

/-! ## A264850.P16432768077832742646

`∑[2*A007584(n)]-A000292(n)`
-/

namespace A264850.P16432768077832742646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000292 n

end

end A264850.P16432768077832742646

namespace A264850

/-- `∑[2*A007584(n)]-A000292(n)` -/
def P16432768077832742646.Spec : Prop :=
  ∀ n, P16432768077832742646.a n = A264850 n

end A264850

/-! ## A264850.P9193718473366663220

`A002418(n)+A220212(n)-A001296(n)`
-/

namespace A264850.P9193718473366663220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n + (A220212 n - A001296 n)

end

end A264850.P9193718473366663220

namespace A264850

/-- `A002418(n)+A220212(n)-A001296(n)` -/
def P9193718473366663220.Spec : Prop :=
  ∀ n, P9193718473366663220.a n = A264850 n

end A264850

/-! ## A264850.P7897629449983602596

`A220212(n)+A264852(n)-A264851(n)`
-/

namespace A264850.P7897629449983602596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 n + (A264852 n - A264851 n)

end

end A264850.P7897629449983602596

namespace A264850

/-- `A220212(n)+A264852(n)-A264851(n)` -/
def P7897629449983602596.Spec : Prop :=
  ∀ n, P7897629449983602596.a n = A264850 n

end A264850

/-! ## A264850.P16584772845371835233

`A117662(n+1)+C(n²+n, 2)`
-/

namespace A264850.P16584772845371835233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 (n + 1) + (Nat.choose (n ^ 2 + n) 2 : ℤ)

end

end A264850.P16584772845371835233

namespace A264850

/-- `A117662(n+1)+C(n²+n, 2)` -/
def P16584772845371835233.Spec : Prop :=
  ∀ n, P16584772845371835233.a n = A264850 n

end A264850

/-! ## A264850.P11723840111749282881

`A002415(n+1)+A062392(n)-A000217(n)`
-/

namespace A264850.P11723840111749282881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A062392 n - A000217 n)

end

end A264850.P11723840111749282881

namespace A264850

/-- `A002415(n+1)+A062392(n)-A000217(n)` -/
def P11723840111749282881.Spec : Prop :=
  ∀ n, P11723840111749282881.a n = A264850 n

end A264850

/-!
# A264851: a(n) = n*(n + 1)*(n + 2)*(4*n - 3)/6.

The programs for A264851, the canonical program `A264851.P6408629881334645745` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264851 has offset 0).

The definition of A264851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)*(4*n-3)/6` (program `A264851.P15407534894695461009`, by `A264851.P15407534894695461009.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264851.P15407534894695461009

`n*(n+1)*(n+2)*(4*n-3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264851.P15407534894695461009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) * (n + 2) : ℤ) * ((4 * n : ℤ) - 3) : ℚ) / 6

end

end A264851.P15407534894695461009

namespace A264851

/-- `n*(n+1)*(n+2)*(4*n-3)/6` -/
def P15407534894695461009.Spec : Prop :=
  ∀ n, P15407534894695461009.a n = (A264851 n : ℚ)

theorem P15407534894695461009.correct : P15407534894695461009.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A264851, Nat.add_sub_cancel, A264851.P15407534894695461009.a, A264851.P6408629881334645745.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A264851, Nat.add_sub_cancel, A264851.P15407534894695461009.a, A264851.P6408629881334645745.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264851

/-! ## A264851.P6408629881334645745

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=20, a(3)=90, a(4)=260`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264851

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6408629881334645745.Spec : Prop :=
  ∀ n, P6408629881334645745.a n = A264851 n

theorem P6408629881334645745.correct : P6408629881334645745.Spec := by
  intro n
  simp only [A264851]

end A264851

/-! ## A264851.P7583001594181664779

`∑[∑[n²+14*C(n, 2)]]`
-/

namespace A264851.P7583001594181664779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 14 * Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264851.P7583001594181664779

namespace A264851

/-- `∑[∑[n²+14*C(n, 2)]]` -/
def P7583001594181664779.Spec : Prop :=
  ∀ n, (P7583001594181664779.a n : ℤ) = A264851 n

end A264851

/-! ## A264851.P1890437219455972001

`∑[∑[16*C(n, 2)]+∑[n]]`
-/

namespace A264851.P1890437219455972001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264851.P1890437219455972001

namespace A264851

/-- `∑[∑[16*C(n, 2)]+∑[n]]` -/
def P1890437219455972001.Spec : Prop :=
  ∀ n, (P1890437219455972001.a n : ℤ) = A264851 n

end A264851

/-! ## A264851.P15543930794010910

`∑[∑[∑[a(n-1)+16]]]` with `a(0)=0, a(1)=1`
-/

namespace A264851.P15543930794010910
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (n - 1) + 16

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264851.P15543930794010910

namespace A264851

/-- `∑[∑[∑[a(n-1)+16]]]` -/
def P15543930794010910.Spec : Prop :=
  ∀ n, (P15543930794010910.a n : ℤ) = A264851 n

end A264851

/-! ## A264851.P11402862253190366211

`lcm(n, (4*n-3)*C(n+2, 3))`
-/

namespace A264851.P11402862253190366211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((4 * n : ℤ) - 3) * (Nat.choose (n + 2) 3 : ℤ))

end

end A264851.P11402862253190366211

namespace A264851

/-- `lcm(n, (4*n-3)*C(n+2, 3))` -/
def P11402862253190366211.Spec : Prop :=
  ∀ n, (P11402862253190366211.a n : ℤ) = A264851 n

end A264851

/-! ## A264851.P3869798157380089393

`∑[A172078(n)]`
-/

namespace A264851.P3869798157380089393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264851.P3869798157380089393

namespace A264851

/-- `∑[A172078(n)]` -/
def P3869798157380089393.Spec : Prop :=
  ∀ n, P3869798157380089393.a n = A264851 n

end A264851

/-! ## A264851.P12760585251194041628

`∑[∑[A051870(n)]]`
-/

namespace A264851.P12760585251194041628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264851.P12760585251194041628

namespace A264851

/-- `∑[∑[A051870(n)]]` -/
def P12760585251194041628.Spec : Prop :=
  ∀ n, P12760585251194041628.a n = A264851 n

end A264851

/-! ## A264851.P13841803156674336131

`∑[∑[A139271(n)-n]]`
-/

namespace A264851.P13841803156674336131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264851.P13841803156674336131

namespace A264851

/-- `∑[∑[A139271(n)-n]]` -/
def P13841803156674336131.Spec : Prop :=
  ∀ n, P13841803156674336131.a n = A264851 n

end A264851

/-! ## A264851.P12188779393846356699

`∑[∑[A152995(n)-n²]]`
-/

namespace A264851.P12188779393846356699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264851.P12188779393846356699

namespace A264851

/-- `∑[∑[A152995(n)-n²]]` -/
def P12188779393846356699.Spec : Prop :=
  ∀ n, P12188779393846356699.a n = A264851 n

end A264851

/-! ## A264851.P15284479097008269754

`n*(A016061(n)-(n+1))`
-/

namespace A264851.P15284479097008269754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A016061 n - (n + 1 : ℤ))

end

end A264851.P15284479097008269754

namespace A264851

/-- `n*(A016061(n)-(n+1))` -/
def P15284479097008269754.Spec : Prop :=
  ∀ n, P15284479097008269754.a n = A264851 n

end A264851

/-! ## A264851.P1383220505445726640

`A072819(n)+A007586(n)`
-/

namespace A264851.P1383220505445726640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n + A007586 n

end

end A264851.P1383220505445726640

namespace A264851

/-- `A072819(n)+A007586(n)` -/
def P1383220505445726640.Spec : Prop :=
  ∀ n, P1383220505445726640.a n = A264851 n

end A264851

/-! ## A264851.P8784726504807495661

`2*A264850(n)-A220212(n)`
-/

namespace A264851.P8784726504807495661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264850 n - A220212 n

end

end A264851.P8784726504807495661

namespace A264851

/-- `2*A264850(n)-A220212(n)` -/
def P8784726504807495661.Spec : Prop :=
  ∀ n, P8784726504807495661.a n = A264851 n

end A264851

/-! ## A264851.P725347982484185913

`n*A016061(n)-A002378(n)`
-/

namespace A264851.P725347982484185913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016061 n - A002378 n

end

end A264851.P725347982484185913

namespace A264851

/-- `n*A016061(n)-A002378(n)` -/
def P725347982484185913.Spec : Prop :=
  ∀ n, P725347982484185913.a n = A264851 n

end A264851

/-! ## A264851.P17135184157164291359

`n*A210440(n)-A027480(n)`
-/

namespace A264851.P17135184157164291359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210440 n - A027480 n

end

end A264851.P17135184157164291359

namespace A264851

/-- `n*A210440(n)-A027480(n)` -/
def P17135184157164291359.Spec : Prop :=
  ∀ n, P17135184157164291359.a n = A264851 n

end A264851

/-! ## A264851.P1892388086262163734

`n*∑[A033537(n)]-A055112(n)`
-/

namespace A264851.P1892388086262163734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A055112 n

end

end A264851.P1892388086262163734

namespace A264851

/-- `n*∑[A033537(n)]-A055112(n)` -/
def P1892388086262163734.Spec : Prop :=
  ∀ n, P1892388086262163734.a n = A264851 n

end A264851

/-! ## A264851.P17069641659954092593

`A007587(n)+A172047(n)-A264850(n)`
-/

namespace A264851.P17069641659954092593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007587 n + (A172047 n - A264850 n)

end

end A264851.P17069641659954092593

namespace A264851

/-- `A007587(n)+A172047(n)-A264850(n)` -/
def P17069641659954092593.Spec : Prop :=
  ∀ n, P17069641659954092593.a n = A264851 n

end A264851

/-! ## A264851.P9409468154849741339

`A220212(n)+A264852(n)-A264850(n)`
-/

namespace A264851.P9409468154849741339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 n + (A264852 n - A264850 n)

end

end A264851.P9409468154849741339

namespace A264851

/-- `A220212(n)+A264852(n)-A264850(n)` -/
def P9409468154849741339.Spec : Prop :=
  ∀ n, P9409468154849741339.a n = A264851 n

end A264851

/-! ## A264851.P5890496255757895174

`A389090(n+1)+A000292(n)-A014820(n)`
-/

namespace A264851.P5890496255757895174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389090 (n + 1) + (A000292 n - A014820 n)

end

end A264851.P5890496255757895174

namespace A264851

/-- `A389090(n+1)+A000292(n)-A014820(n)` -/
def P5890496255757895174.Spec : Prop :=
  ∀ n, P5890496255757895174.a n = A264851 n

end A264851

/-! ## A264851.P7269991938637618988

`n*∑[A014107(n+1)]`
-/

namespace A264851.P7269991938637618988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264851.P7269991938637618988

namespace A264851

/-- `n*∑[A014107(n+1)]` -/
def P7269991938637618988.Spec : Prop :=
  ∀ n, P7269991938637618988.a n = A264851 n

end A264851

/-!
# A264852: a(n) = n*(n + 1)*(n + 2)*(9*n - 7)/12.

The programs for A264852, the canonical program `A264852.P9857269522530241047` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264852 has offset 0).

The definition of A264852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)*(9*n-7)/12` (program `A264852.P17816375787101772866`, by `A264852.P17816375787101772866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264852.P17816375787101772866

`n*(n+1)*(n+2)*(9*n-7)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264852.P17816375787101772866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) * (n + 2) : ℤ) * ((9 * n : ℤ) - 7) : ℚ) / 12

end

end A264852.P17816375787101772866

namespace A264852

/-- `n*(n+1)*(n+2)*(9*n-7)/12` -/
def P17816375787101772866.Spec : Prop :=
  ∀ n, P17816375787101772866.a n = (A264852 n : ℚ)

theorem P17816375787101772866.correct : P17816375787101772866.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A264852, Nat.add_sub_cancel, A264852.P17816375787101772866.a, A264852.P9857269522530241047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A264852, Nat.add_sub_cancel, A264852.P17816375787101772866.a, A264852.P9857269522530241047.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264852

/-! ## A264852.P9857269522530241047

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=22, a(3)=100, a(4)=290`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264852

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9857269522530241047.Spec : Prop :=
  ∀ n, P9857269522530241047.a n = A264852 n

theorem P9857269522530241047.correct : P9857269522530241047.Spec := by
  intro n
  simp only [A264852]

end A264852

/-! ## A264852.P6266964723403606337

`∑[A172082(n)]`
-/

namespace A264852.P6266964723403606337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264852.P6266964723403606337

namespace A264852

/-- `∑[A172082(n)]` -/
def P6266964723403606337.Spec : Prop :=
  ∀ n, P6266964723403606337.a n = A264852 n

end A264852

/-! ## A264852.P12414384258865039224

`∑[∑[A051872(n)]]`
-/

namespace A264852.P12414384258865039224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264852.P12414384258865039224

namespace A264852

/-- `∑[∑[A051872(n)]]` -/
def P12414384258865039224.Spec : Prop :=
  ∀ n, P12414384258865039224.a n = A264852 n

end A264852

/-! ## A264852.P952487275033735152

`∑[∑[A154254(n)-2]]`
-/

namespace A264852.P952487275033735152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154254 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264852.P952487275033735152

namespace A264852

/-- `∑[∑[A154254(n)-2]]` -/
def P952487275033735152.Spec : Prop :=
  ∀ n, P952487275033735152.a n = A264852 n

end A264852

/-! ## A264852.P13962327375797802784

`∑[∑[A152995(n)-n]]`
-/

namespace A264852.P13962327375797802784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264852.P13962327375797802784

namespace A264852

/-- `∑[∑[A152995(n)-n]]` -/
def P13962327375797802784.Spec : Prop :=
  ∀ n, P13962327375797802784.a n = A264852 n

end A264852

/-! ## A264852.P8464323778979694309

`∑[∑[A152965(n)-n²]]`
-/

namespace A264852.P8464323778979694309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264852.P8464323778979694309

namespace A264852

/-- `∑[∑[A152965(n)-n²]]` -/
def P8464323778979694309.Spec : Prop :=
  ∀ n, P8464323778979694309.a n = A264852 n

end A264852

/-! ## A264852.P7700247583629068467

`A272378(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A264852.P7700247583629068467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A272378 n + a (n - 2)

end

end A264852.P7700247583629068467

namespace A264852

/-- `A272378(n)+a(n-2)` -/
def P7700247583629068467.Spec : Prop :=
  ∀ n, P7700247583629068467.a n = A264852 n

end A264852

/-! ## A264852.P8110357242097603680

`2*A264851(n)-A264850(n)`
-/

namespace A264852.P8110357242097603680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264851 n - A264850 n

end

end A264852.P8110357242097603680

namespace A264852

/-- `2*A264851(n)-A264850(n)` -/
def P8110357242097603680.Spec : Prop :=
  ∀ n, P8110357242097603680.a n = A264852 n

end A264852

/-! ## A264852.P17061176515783827963

`∑[2*A007586(n)]-A000292(n)`
-/

namespace A264852.P17061176515783827963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000292 n

end

end A264852.P17061176515783827963

namespace A264852

/-- `∑[2*A007586(n)]-A000292(n)` -/
def P17061176515783827963.Spec : Prop :=
  ∀ n, P17061176515783827963.a n = A264852 n

end A264852

/-! ## A264852.P16168189354363852908

`A007587(n)+A172047(n)-A220212(n)`
-/

namespace A264852.P16168189354363852908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007587 n + (A172047 n - A220212 n)

end

end A264852.P16168189354363852908

namespace A264852

/-- `A007587(n)+A172047(n)-A220212(n)` -/
def P16168189354363852908.Spec : Prop :=
  ∀ n, P16168189354363852908.a n = A264852 n

end A264852

/-! ## A264852.P14186599924711954663

`A264850(n)+A264851(n)-A220212(n)`
-/

namespace A264852.P14186599924711954663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264850 n + (A264851 n - A220212 n)

end

end A264852.P14186599924711954663

namespace A264852

/-- `A264850(n)+A264851(n)-A220212(n)` -/
def P14186599924711954663.Spec : Prop :=
  ∀ n, P14186599924711954663.a n = A264852 n

end A264852

/-! ## A264852.P6050630741653956150

`A000567(∑[n])+∑[C(n, 2)]`
-/

namespace A264852.P6050630741653956150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A264852.P6050630741653956150

namespace A264852

/-- `A000567(∑[n])+∑[C(n, 2)]` -/
def P6050630741653956150.Spec : Prop :=
  ∀ n, P6050630741653956150.a n = A264852 n

end A264852

/-! ## A264852.P8687178396782925102

`A176060(n)+A014107(A000217(n))`
-/

namespace A264852.P8687178396782925102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n + A014107 (A000217 n).toNat

end

end A264852.P8687178396782925102

namespace A264852

/-- `A176060(n)+A014107(A000217(n))` -/
def P8687178396782925102.Spec : Prop :=
  ∀ n, P8687178396782925102.a n = A264852 n

end A264852

/-!
# A264853: a(n) = n*(n + 1)*(5*n^2 + 5*n - 4)/12.

The programs for A264853, the canonical program `A264853.P4598499000152569101` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264853 has offset 0).

The definition of A264853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(5*n²+5*n-4)/12` (program `A264853.P15048219394403304540`, by `A264853.P15048219394403304540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264853.P9737413231267427179

`10*C(n+2, 4)+C(n+1, 2)`
-/

namespace A264853.P9737413231267427179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (n + 2) 4 + Nat.choose (n + 1) 2

end

end A264853.P9737413231267427179

namespace A264853

/-- `10*C(n+2, 4)+C(n+1, 2)` -/
def P9737413231267427179.Spec : Prop :=
  ∀ n, (P9737413231267427179.a n : ℤ) = A264853 n

end A264853

/-! ## A264853.P15048219394403304540

`n*(n+1)*(5*n²+5*n-4)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264853.P15048219394403304540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((5 * n ^ 2 + 5 * n : ℤ) - 4) : ℚ) / 12

end

end A264853.P15048219394403304540

namespace A264853

/-- `n*(n+1)*(5*n²+5*n-4)/12` -/
def P15048219394403304540.Spec : Prop :=
  ∀ n, P15048219394403304540.a n = (A264853 n : ℚ)

theorem P15048219394403304540.correct : P15048219394403304540.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A264853, Nat.add_sub_cancel, A264853.P15048219394403304540.a, A264853.P4598499000152569101.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A264853, Nat.add_sub_cancel, A264853.P15048219394403304540.a, A264853.P4598499000152569101.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264853

/-! ## A264853.P4598499000152569101

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=56, a(4)=160`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264853

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4598499000152569101.Spec : Prop :=
  ∀ n, P4598499000152569101.a n = A264853 n

theorem P4598499000152569101.correct : P4598499000152569101.Spec := by
  intro n
  simp only [A264853]

end A264853

/-! ## A264853.P6189296964584955760

`∑[∑[10*C(n, 2)]+n]`
-/

namespace A264853.P6189296964584955760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264853.P6189296964584955760

namespace A264853

/-- `∑[∑[10*C(n, 2)]+n]` -/
def P6189296964584955760.Spec : Prop :=
  ∀ n, (P6189296964584955760.a n : ℤ) = A264853 n

end A264853

/-! ## A264853.P8004827126064408569

`∑[n^5]-C(n²+n, 3)`
-/

namespace A264853.P8004827126064408569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (n ^ 2 + n) 3 : ℤ)

end

end A264853.P8004827126064408569

namespace A264853

/-- `∑[n^5]-C(n²+n, 3)` -/
def P8004827126064408569.Spec : Prop :=
  ∀ n, P8004827126064408569.a n = A264853 n

end A264853

/-! ## A264853.P5726087854191576608

`∑[A004466(n)]`
-/

namespace A264853.P5726087854191576608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264853.P5726087854191576608

namespace A264853

/-- `∑[A004466(n)]` -/
def P5726087854191576608.Spec : Prop :=
  ∀ n, P5726087854191576608.a n = A264853 n

end A264853

/-! ## A264853.P1531056627985286484

`∑[A259110(n)]-∑[n]²`
-/

namespace A264853.P1531056627985286484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A264853.P1531056627985286484

namespace A264853

/-- `∑[A259110(n)]-∑[n]²` -/
def P1531056627985286484.Spec : Prop :=
  ∀ n, P1531056627985286484.a n = A264853 n

end A264853

/-! ## A264853.P4097507598228588007

`A008354(n)-a(n-1)` with `a(0)=0`
-/

namespace A264853.P4097507598228588007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008354 n - a (n - 1)

end

end A264853.P4097507598228588007

namespace A264853

/-- `A008354(n)-a(n-1)` -/
def P4097507598228588007.Spec : Prop :=
  ∀ n, P4097507598228588007.a n = A264853 n

end A264853

/-! ## A264853.P12869381705563377100

`n*A004068(n)-a(n-1)` with `a(0)=0`
-/

namespace A264853.P12869381705563377100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * A004068 n - a (n - 1)

end

end A264853.P12869381705563377100

namespace A264853

/-- `n*A004068(n)-a(n-1)` -/
def P12869381705563377100.Spec : Prop :=
  ∀ n, P12869381705563377100.a n = A264853 n

end A264853

/-! ## A264853.P10842909448464320845

`lcm(∑[∑[n*2*(n-1)]+n^3], A057077(n))`
-/

namespace A264853.P10842909448464320845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * ((n : ℤ) - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A057077 n)

end

end A264853.P10842909448464320845

namespace A264853

/-- `lcm(∑[∑[n*2*(n-1)]+n^3], A057077(n))` -/
def P10842909448464320845.Spec : Prop :=
  ∀ n, (P10842909448464320845.a n : ℤ) = A264853 n

end A264853

/-! ## A264853.P9809846640866504990

`A212246(n)+A002418(n)`
-/

namespace A264853.P9809846640866504990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212246 n + A002418 n

end

end A264853.P9809846640866504990

namespace A264853

/-- `A212246(n)+A002418(n)` -/
def P9809846640866504990.Spec : Prop :=
  ∀ n, P9809846640866504990.a n = A264853 n

end A264853

/-! ## A264853.P559526669011206585

`A163102(n)-A006007(n)`
-/

namespace A264853.P559526669011206585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A006007 n

end

end A264853.P559526669011206585

namespace A264853

/-- `A163102(n)-A006007(n)` -/
def P559526669011206585.Spec : Prop :=
  ∀ n, P559526669011206585.a n = A264853 n

end A264853

/-! ## A264853.P14576533987708082913

`A180324(n)-A001621(n)`
-/

namespace A264853.P14576533987708082913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n - A001621 n

end

end A264853.P14576533987708082913

namespace A264853

/-- `A180324(n)-A001621(n)` -/
def P14576533987708082913.Spec : Prop :=
  ∀ n, P14576533987708082913.a n = A264853 n

end A264853

/-! ## A264853.P8884838886420632566

`A172045(n)-A112742(n)`
-/

namespace A264853.P8884838886420632566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172045 n - A112742 n

end

end A264853.P8884838886420632566

namespace A264853

/-- `A172045(n)-A112742(n)` -/
def P8884838886420632566.Spec : Prop :=
  ∀ n, P8884838886420632566.a n = A264853 n

end A264853

/-! ## A264853.P11053158239499134834

`A002415(n)+∑[A007585(n)]`
-/

namespace A264853.P11053158239499134834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264853.P11053158239499134834

namespace A264853

/-- `A002415(n)+∑[A007585(n)]` -/
def P11053158239499134834.Spec : Prop :=
  ∀ n, P11053158239499134834.a n = A264853 n

end A264853

/-! ## A264853.P10604559249388879618

`A288961(n+1)+A014205(n)`
-/

namespace A264853.P10604559249388879618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) + A014205 n

end

end A264853.P10604559249388879618

namespace A264853

/-- `A288961(n+1)+A014205(n)` -/
def P10604559249388879618.Spec : Prop :=
  ∀ n, P10604559249388879618.a n = A264853 n

end A264853

/-! ## A264853.P311982448397867117

`A000330(n)+2*A212246(n)`
-/

namespace A264853.P311982448397867117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + 2 * A212246 n

end

end A264853.P311982448397867117

namespace A264853

/-- `A000330(n)+2*A212246(n)` -/
def P311982448397867117.Spec : Prop :=
  ∀ n, P311982448397867117.a n = A264853 n

end A264853

/-! ## A264853.P2509764966235095905

`A002412(n)+2*A212415(n)`
-/

namespace A264853.P2509764966235095905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n + 2 * A212415 n

end

end A264853.P2509764966235095905

namespace A264853

/-- `A002412(n)+2*A212415(n)` -/
def P2509764966235095905.Spec : Prop :=
  ∀ n, P2509764966235095905.a n = A264853 n

end A264853

/-! ## A264853.P5072076154448858894

`2*A002418(n)-A000330(n)`
-/

namespace A264853.P5072076154448858894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002418 n - A000330 n

end

end A264853.P5072076154448858894

namespace A264853

/-- `2*A002418(n)-A000330(n)` -/
def P5072076154448858894.Spec : Prop :=
  ∀ n, P5072076154448858894.a n = A264853 n

end A264853

/-! ## A264853.P18277702844055280603

`A000537(n)+A000537(n)-A006007(n)`
-/

namespace A264853.P18277702844055280603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (A000537 n - A006007 n)

end

end A264853.P18277702844055280603

namespace A264853

/-- `A000537(n)+A000537(n)-A006007(n)` -/
def P18277702844055280603.Spec : Prop :=
  ∀ n, P18277702844055280603.a n = A264853 n

end A264853

/-!
# A264854: a(n) = n*(n + 1)*(11*n^2 + 11*n - 10)/24.

The programs for A264854, the canonical program `A264854.P13806705136347477574` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264854 has offset 0).

The definition of A264854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(11*n²+11*n-10)/24` (program `A264854.P12313019322863535946`, by `A264854.P12313019322863535946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264854.P10534233084744797946

`11*C(n+2, 4)+C(n+1, 2)`
-/

namespace A264854.P10534233084744797946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose (n + 2) 4 + Nat.choose (n + 1) 2

end

end A264854.P10534233084744797946

namespace A264854

/-- `11*C(n+2, 4)+C(n+1, 2)` -/
def P10534233084744797946.Spec : Prop :=
  ∀ n, (P10534233084744797946.a n : ℤ) = A264854 n

end A264854

/-! ## A264854.P12313019322863535946

`n*(n+1)*(11*n²+11*n-10)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264854.P12313019322863535946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((11 * n ^ 2 + 11 * n : ℤ) - 10) : ℚ) / 24

end

end A264854.P12313019322863535946

namespace A264854

/-- `n*(n+1)*(11*n²+11*n-10)/24` -/
def P12313019322863535946.Spec : Prop :=
  ∀ n, P12313019322863535946.a n = (A264854 n : ℚ)

theorem P12313019322863535946.correct : P12313019322863535946.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A264854, Nat.add_sub_cancel, A264854.P12313019322863535946.a, A264854.P13806705136347477574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A264854, Nat.add_sub_cancel, A264854.P12313019322863535946.a, A264854.P13806705136347477574.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264854

/-! ## A264854.P13806705136347477574

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=61, a(4)=175`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264854

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13806705136347477574.Spec : Prop :=
  ∀ n, P13806705136347477574.a n = A264854 n

theorem P13806705136347477574.correct : P13806705136347477574.Spec := by
  intro n
  simp only [A264854]

end A264854

/-! ## A264854.P9287678870683611723

`∑[∑[11*C(n, 2)]+n]`
-/

namespace A264854.P9287678870683611723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264854.P9287678870683611723

namespace A264854

/-- `∑[∑[11*C(n, 2)]+n]` -/
def P9287678870683611723.Spec : Prop :=
  ∀ n, (P9287678870683611723.a n : ℤ) = A264854 n

end A264854

/-! ## A264854.P12900259995127977395

`∑[A004467(n)]`
-/

namespace A264854.P12900259995127977395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264854.P12900259995127977395

namespace A264854

/-- `∑[A004467(n)]` -/
def P12900259995127977395.Spec : Prop :=
  ∀ n, P12900259995127977395.a n = A264854 n

end A264854

/-! ## A264854.P15633140793957915413

`A062392(n)-C(n+2, 4)`
-/

namespace A264854.P15633140793957915413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - (Nat.choose (n + 2) 4 : ℤ)

end

end A264854.P15633140793957915413

namespace A264854

/-- `A062392(n)-C(n+2, 4)` -/
def P15633140793957915413.Spec : Prop :=
  ∀ n, P15633140793957915413.a n = A264854 n

end A264854

/-! ## A264854.P7163246950250060420

`A110450(n)-A318054(n)`
-/

namespace A264854.P7163246950250060420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n - A318054 n

end

end A264854.P7163246950250060420

namespace A264854

/-- `A110450(n)-A318054(n)` -/
def P7163246950250060420.Spec : Prop :=
  ∀ n, P7163246950250060420.a n = A264854 n

end A264854

/-! ## A264854.P17041147980884842577

`A212090(n)-A391092(n)`
-/

namespace A264854.P17041147980884842577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212090 n - A391092 n

end

end A264854.P17041147980884842577

namespace A264854

/-- `A212090(n)-A391092(n)` -/
def P17041147980884842577.Spec : Prop :=
  ∀ n, P17041147980884842577.a n = A264854 n

end A264854

/-! ## A264854.P15537564090393348004

`2*A264853(n)-A236770(n)`
-/

namespace A264854.P15537564090393348004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264853 n - A236770 n

end

end A264854.P15537564090393348004

namespace A264854

/-- `2*A264853(n)-A236770(n)` -/
def P15537564090393348004.Spec : Prop :=
  ∀ n, P15537564090393348004.a n = A264854 n

end A264854

/-! ## A264854.P4659654868674857588

`A006007(n)+A264888(n)-A006325(n+1)`
-/

namespace A264854.P4659654868674857588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + (A264888 n - A006325 (n + 1))

end

end A264854.P4659654868674857588

namespace A264854

/-- `A006007(n)+A264888(n)-A006325(n+1)` -/
def P4659654868674857588.Spec : Prop :=
  ∀ n, P4659654868674857588.a n = A264854 n

end A264854

/-! ## A264854.P5153035517419792963

`A062392(n)-A000332(n+2)`
-/

namespace A264854.P5153035517419792963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - A000332 (n + 2)

end

end A264854.P5153035517419792963

namespace A264854

/-- `A062392(n)-A000332(n+2)` -/
def P5153035517419792963.Spec : Prop :=
  ∀ n, P5153035517419792963.a n = A264854 n

end A264854

/-! ## A264854.P12358597758807859992

`A000217(n²+n)-A318054(n)`
-/

namespace A264854.P12358597758807859992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2 + n) - A318054 n

end

end A264854.P12358597758807859992

namespace A264854

/-- `A000217(n²+n)-A318054(n)` -/
def P12358597758807859992.Spec : Prop :=
  ∀ n, P12358597758807859992.a n = A264854 n

end A264854

/-! ## A264854.P9884816721987745843

`A000384(∑[n])-C(n+2, 4)`
-/

namespace A264854.P9884816721987745843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.choose (n + 2) 4 : ℤ)

end

end A264854.P9884816721987745843

namespace A264854

/-- `A000384(∑[n])-C(n+2, 4)` -/
def P9884816721987745843.Spec : Prop :=
  ∀ n, P9884816721987745843.a n = A264854 n

end A264854

/-! ## A264854.P6618685193559610108

`A161680(n²+n)-C(n+2, 4)`
-/

namespace A264854.P6618685193559610108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n ^ 2 + n) - (Nat.choose (n + 2) 4 : ℤ)

end

end A264854.P6618685193559610108

namespace A264854

/-- `A161680(n²+n)-C(n+2, 4)` -/
def P6618685193559610108.Spec : Prop :=
  ∀ n, P6618685193559610108.a n = A264854 n

end A264854

/-!
# A264855: Integers n such that A002110(n)^2 - A002110(n) + 1 is prime.

The programs for A264855, there is no canonical definition to state claims against.
-/

/-! ## A264855.P10416182082503911146

`record[A129305(n)-A002265(A156981(n+1))]`
-/

namespace A264855.P10416182082503911146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129305 n - A002265 (A156981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264855.P10416182082503911146

/-!
# A264857: Number of values of k, n included, such that the distinct prime divisors of k are the same as those of n and Omega(k) = Omega(n), where Omega(n) is the number of prime divisors of n with multiplicity (A001222); a(1) = 1.

The programs for A264857, the canonical program `A264857.P17166263267911544314` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264857 has offset 1).

The definition of A264857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264857.P17166263267911544314

`C(∑{e}[n+1, #]+abs(1-n)-n, ∑{e}[n+1, #-1])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264857

/-- `C(∑{e}[n+1, #]+abs(1-n)-n, ∑{e}[n+1, #-1])` -/
def P17166263267911544314.Spec : Prop :=
  ∀ n, (P17166263267911544314.a n : ℤ) = A264857 (n + 1)

theorem P17166263267911544314.correct : P17166263267911544314.Spec := by
  intro n
  simp only [A264857, Nat.add_sub_cancel]

end A264857

/-! ## A264857.P12529155065720464242

`C(A252736(n+1), log2(A162510(n+1)))`
-/

namespace A264857.P12529155065720464242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252736 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A162510 (n + 1) : ℝ))).toNat

end

end A264857.P12529155065720464242

namespace A264857

/-- `C(A252736(n+1), log2(A162510(n+1)))` -/
def P12529155065720464242.Spec : Prop :=
  ∀ n, (P12529155065720464242.a n : ℤ) = A264857 (n + 1)

end A264857

/-! ## A264857.P6296544450752023821

`C(A046660(A061142(n+1)), -∑{e}[2*n-(n-1), 1-#])`
-/

namespace A264857.P6296544450752023821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046660 (A061142 (n + 1)).toNat).toNat (-(∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ)))).toNat

end

end A264857.P6296544450752023821

namespace A264857

/-- `C(A046660(A061142(n+1)), -∑{e}[2*n-(n-1), 1-#])` -/
def P6296544450752023821.Spec : Prop :=
  ∀ n, (P6296544450752023821.a n : ℤ) = A264857 (n + 1)

end A264857

/-! ## A264857.P7079846523009425666

`C(A046660(A061142(n+1)), A046660(n+1))`
-/

namespace A264857.P7079846523009425666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046660 (A061142 (n + 1)).toNat).toNat (A046660 (n + 1)).toNat

end

end A264857.P7079846523009425666

namespace A264857

/-- `C(A046660(A061142(n+1)), A046660(n+1))` -/
def P7079846523009425666.Spec : Prop :=
  ∀ n, (P7079846523009425666.a n : ℤ) = A264857 (n + 1)

end A264857

/-! ## A264857.P12376739201474933108

`C(A252736(n+1), A252736(A007947(n+1)))`
-/

namespace A264857.P12376739201474933108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252736 (n + 1)).toNat (A252736 (A007947 (n + 1)).toNat).toNat

end

end A264857.P12376739201474933108

namespace A264857

/-- `C(A252736(n+1), A252736(A007947(n+1)))` -/
def P12376739201474933108.Spec : Prop :=
  ∀ n, (P12376739201474933108.a n : ℤ) = A264857 (n + 1)

end A264857

/-! ## A264857.P4018169013562256047

`C(A252736(n+1), A252736(A181819(n+1)))`
-/

namespace A264857.P4018169013562256047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252736 (n + 1)).toNat (A252736 (A181819 (n + 1)).toNat).toNat

end

end A264857.P4018169013562256047

namespace A264857

/-- `C(A252736(n+1), A252736(A181819(n+1)))` -/
def P4018169013562256047.Spec : Prop :=
  ∀ n, (P4018169013562256047.a n : ℤ) = A264857 (n + 1)

end A264857

/-! ## A264857.P16432898228953751102

`C(A252736(n+1), A252736(A217434(n+1)))`
-/

namespace A264857.P16432898228953751102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252736 (n + 1)).toNat (A252736 (A217434 (n + 1)).toNat).toNat

end

end A264857.P16432898228953751102

namespace A264857

/-- `C(A252736(n+1), A252736(A217434(n+1)))` -/
def P16432898228953751102.Spec : Prop :=
  ∀ n, (P16432898228953751102.a n : ℤ) = A264857 (n + 1)

end A264857

/-! ## A264857.P16634579808526598220

`C(A252736(n+1), A252736(A329607(n+1)))`
-/

namespace A264857.P16634579808526598220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252736 (n + 1)).toNat (A252736 (A329607 (n + 1)).toNat).toNat

end

end A264857.P16634579808526598220

namespace A264857

/-- `C(A252736(n+1), A252736(A329607(n+1)))` -/
def P16634579808526598220.Spec : Prop :=
  ∀ n, (P16634579808526598220.a n : ℤ) = A264857 (n + 1)

end A264857

/-! ## A264857.P14446501378931304624

`C(A001222(1-A171462(n+1)+n), A297155(n+1))`
-/

namespace A264857.P14446501378931304624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (1 - A171462 (n + 1) + (n : ℤ)).toNat).toNat (A297155 (n + 1)).toNat

end

end A264857.P14446501378931304624

namespace A264857

/-- `C(A001222(1-A171462(n+1)+n), A297155(n+1))` -/
def P14446501378931304624.Spec : Prop :=
  ∀ n, (P14446501378931304624.a n : ℤ) = A264857 (n + 1)

end A264857

/-! ## A264857.P16458183179267787576

`A073093(n+1)-A304464(A071364(n+1))`
-/

namespace A264857.P16458183179267787576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A304464 (A071364 (n + 1)).toNat

end

end A264857.P16458183179267787576

namespace A264857

/-- `A073093(n+1)-A304464(A071364(n+1))` -/
def P16458183179267787576.Spec : Prop :=
  ∀ n, P16458183179267787576.a n = A264857 (n + 1)

end A264857

/-!
# A264859: a(n) is the denominator of c(n), where c(n) is calculated from Product_{i>=1}(1-c(i)*x^i) = exp(-(x^2)/(1-x))*(1-x).

The programs for A264859, there is no canonical definition to state claims against.
-/

/-! ## A264859.P17162770869518591460

`A062759(gcd(A062763(n+1), A081123(n+1)))`
-/

namespace A264859.P17162770869518591460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (Int.gcd (A062763 (n + 1)) (A081123 (n + 1)))

end

end A264859.P17162770869518591460

/-! ## A264859.P13383845864819050754

`A062759(gcd(A067911(n+1), A081123(n+2)))`
-/

namespace A264859.P13383845864819050754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (Int.gcd (A067911 (n + 1)) (A081123 (n + 2)))

end

end A264859.P13383845864819050754

/-! ## A264859.P7139903689206516266

`gcd(∏{d}[n+1, #]/(n+1), record[A131105(n+2)])`
-/

namespace A264859.P7139903689206516266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131105 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A264859.P7139903689206516266

/-! ## A264859.P11773101829155027465

`A007956(A187829(n+1))%54`
-/

namespace A264859.P11773101829155027465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (A187829 (n + 1)).toNat) 54

end

end A264859.P11773101829155027465

/-! ## A264859.P3862834411553986467

`(∏{d}[n+1, #]/(n+1))%A164014(A047994(n+1))`
-/

namespace A264859.P3862834411553986467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (A164014 (A047994 (n + 1)).toNat)

end

end A264859.P3862834411553986467

/-!
# A264860: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 6 and columns nondecreasing modulo 7.

The programs for A264860, there is no canonical definition to state claims against.
-/

/-! ## A264860.P4886186209137274869

`A264862(∑[n+2])`
-/

namespace A264860.P4886186209137274869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264860.P4886186209137274869

/-! ## A264860.P14295345207737472930

`record[A264862(∑[A152271(n)])]`
-/

namespace A264860.P14295345207737472930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264860.P14295345207737472930

/-! ## A264860.P10417152749362306870

`record[A264862(∑[A158821(n)])]`
-/

namespace A264860.P10417152749362306870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264860.P10417152749362306870

/-!
# A264861: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 6 and columns nondecreasing modulo 7.

The programs for A264861, there is no canonical definition to state claims against.
-/

/-! ## A264861.P6004785554721049783

`A264862(∑[n+3]+1)`
-/

namespace A264861.P6004785554721049783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264861.P6004785554721049783

/-! ## A264861.P5143149965388102105

`record[A264862(record[A343382(n)])]`
-/

namespace A264861.P5143149965388102105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264861.P5143149965388102105

/-!
# A264863: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 6 and columns nondecreasing modulo 7.

The programs for A264863, there is no canonical definition to state claims against.
-/

/-! ## A264863.P14729116286436987923

`A264862(∑[n+1]+2)`
-/

namespace A264863.P14729116286436987923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264863.P14729116286436987923

/-! ## A264863.P13352352080084385658

`record[A264862(A252460(n+1))]`
-/

namespace A264863.P13352352080084385658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264863.P13352352080084385658

/-! ## A264863.P13881259438329193386

`record[A264862(A226444(n)+n)]`
-/

namespace A264863.P13881259438329193386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (A226444 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264863.P13881259438329193386

/-! ## A264863.P18399838713934068893

`record[A264862(gcd(n, A303913(n)))]`
-/

namespace A264863.P18399838713934068893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264863.P18399838713934068893

/-!
# A264864: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 6 and columns nondecreasing modulo 7.

The programs for A264864, there is no canonical definition to state claims against.
-/

/-! ## A264864.P1857623887546066466

`A264862(∑[n+2]+4)`
-/

namespace A264864.P1857623887546066466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264864.P1857623887546066466

/-! ## A264864.P10612496779446250268

`record[gcd(A264862(n+1), A303913(n))]`
-/

namespace A264864.P10612496779446250268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264862 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264864.P10612496779446250268

/-! ## A264864.P13170152404113045839

`gcd(floor(acot(n)), A264862(A167614(n+1)))`
-/

namespace A264864.P13170152404113045839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A264862 (A167614 (n + 1)).toNat)

end

end A264864.P13170152404113045839

/-!
# A264866: Primes of the form 2^x + y (x >= 0 and 0 <= y < 2^x) such that all the numbers 2^(x+a) + (y-a) (0 < a <= y) are composite.

The programs for A264866, there is no canonical definition to state claims against.
-/

/-! ## A264866.P7112169914381549976

`p?[lt[ceil(3*n/2), A023899(n+1)]]`
-/

namespace A264866.P7112169914381549976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023899 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264866.P7112169914381549976

/-! ## A264866.P4638569517886949007

`p?[∑[A182220(A010323(n))]]`
-/

namespace A264866.P4638569517886949007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A010323 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264866.P4638569517886949007

/-! ## A264866.P9469170239031180093

`p?[∑[A055980(A141412(n))]]`
-/

namespace A264866.P9469170239031180093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A141412 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264866.P9469170239031180093

/-! ## A264866.P7776496402430687289

`p?[∑[A281715(A027907(n))]]`
-/

namespace A264866.P7776496402430687289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A027907 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264866.P7776496402430687289

/-! ## A264866.P14967043569523217295

`p?[A135660(∑[A294398(n)])]`
-/

namespace A264866.P14967043569523217295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264866.P14967043569523217295

/-!
# A264868: Number of rooted tandem duplication trees on n gene segments.

The programs for A264868, there is no canonical definition to state claims against.
-/

/-! ## A264868.P4366286695162632874

`A263791(∑[n+2]-1)`
-/

namespace A264868.P4366286695162632874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263791 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A264868.P4366286695162632874

/-! ## A264868.P16576511257767271444

`A263791(A034856(n+1))+char[12]`
-/

namespace A264868.P16576511257767271444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263791 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264868.P16576511257767271444

/-! ## A264868.P5968256191851123416

`A214249(n)*A263791(A034856(n+1))`
-/

namespace A264868.P5968256191851123416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 n * A263791 (A034856 (n + 1)).toNat

end

end A264868.P5968256191851123416

/-! ## A264868.P1224781632696277666

`A263791(A034856(n+1))*A347621(n)`
-/

namespace A264868.P1224781632696277666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263791 (A034856 (n + 1)).toNat * A347621 n

end

end A264868.P1224781632696277666

/-! ## A264868.P5049817283747301223

`A263791(A034856(n+1))%A026387(n)`
-/

namespace A264868.P5049817283747301223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263791 (A034856 (n + 1)).toNat) (A026387 n)

end

end A264868.P5049817283747301223

/-!
# A264869: Triangular array: For n >= 2 and 0 <= k <= n - 2, T(n, k) equals the number of rooted duplication trees on n gene segments whose leftmost visible duplication event is (k, r), for 1 <= r <= (n - k)/2.

The programs for A264869, there is no canonical definition to state claims against.
-/

/-! ## A264869.P1646413707660076097

`A004277(A264870(n)%A036624(n))`
-/

namespace A264869.P1646413707660076097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A264870 n) (A036624 n)).toNat

end

end A264869.P1646413707660076097

/-!
# A264870: Triangular array: For n >= 2 and 0 < k <= n - 2, T(n, k) equals the number of (unrooted) duplication trees on n gene segments that are canonical and whose leftmost visible duplication event is (k, r), for 1 <= r <= (n - k)/2.

The programs for A264870, there is no canonical definition to state claims against.
-/

/-! ## A264870.P10721815902603231588

`ceil((A264869(n+2)-char[1])/2)`
-/

namespace A264870.P10721815902603231588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A264869 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / 2⌉

end

end A264870.P10721815902603231588

/-! ## A264870.P13749549150195225389

`A273943(A264869(n+2)-char[1])`
-/

namespace A264870.P13749549150195225389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A264869 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A264870.P13749549150195225389

/-! ## A264870.P5438540023745193595

`A273943(xor(char[1], A264869(n+2)))`
-/

namespace A264870.P5438540023745193595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A264869 (n + 2))).toNat

end

end A264870.P5438540023745193595

/-! ## A264870.P9653510779206560200

`ceil(A264869(n+2)/2*A060576(n))`
-/

namespace A264870.P9653510779206560200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A264869 (n + 2) : ℚ) / 2 * (A060576 n : ℚ)⌉

end

end A264870.P9653510779206560200

/-! ## A264870.P14690142343943595142

`floor((A264869(n+2)+A000035(n+1))/2)`
-/

namespace A264870.P14690142343943595142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264869 (n + 2) + A000035 (n + 1) : ℚ) / 2⌋

end

end A264870.P14690142343943595142

/-! ## A264870.P3111709419279295592

`floor((A264869(n+2)+A010054(n+1))/2)`
-/

namespace A264870.P3111709419279295592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264869 (n + 2) + A010054 (n + 1) : ℚ) / 2⌋

end

end A264870.P3111709419279295592

/-! ## A264870.P13069914082738313108

`floor((A264869(n+2)+A010060(n+2))/2)`
-/

namespace A264870.P13069914082738313108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264869 (n + 2) + A010060 (n + 2) : ℚ) / 2⌋

end

end A264870.P13069914082738313108

/-! ## A264870.P7546541087395351713

`floor((A264869(n+2)-A022300(n+4))/2)+1`
-/

namespace A264870.P7546541087395351713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264869 (n + 2) - A022300 (n + 4) : ℚ) / 2⌋ + 1

end

end A264870.P7546541087395351713

/-! ## A264870.P5826669480245360870

`A273943(A060576(n)*A264869(n+2))`
-/

namespace A264870.P5826669480245360870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A060576 n * A264869 (n + 2)).toNat

end

end A264870.P5826669480245360870

/-! ## A264870.P373627605214056292

`A273943(A264869(n+2)%A000032(n))`
-/

namespace A264870.P373627605214056292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A264869 (n + 2)) (A000032 n)).toNat

end

end A264870.P373627605214056292

/-!
# A264871: Array read by antidiagonals: T(n,m) = (1+2^n)^m; n,m>=0.

The programs for A264871, the canonical program `A264871.P12005455986275505222` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264871 has offset 0).

The definition of A264871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264871.P12005455986275505222

`(1+2^col(n))^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264871

/-- `(1+2^col(n))^(row(n)-col(n))` -/
def P12005455986275505222.Spec : Prop :=
  ∀ n, P12005455986275505222.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P6594831533941438870

`(A059268(n)+1)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P6594831533941438870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n + 1 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P6594831533941438870

namespace A264871

/-- `(A059268(n)+1)^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P6594831533941438870.Spec : Prop :=
  ∀ n, P6594831533941438870.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P7159538848409850347

`(A140531(n+1)+1)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P7159538848409850347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140531 (n + 1) + 1 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P7159538848409850347

namespace A264871

/-- `(A140531(n+1)+1)^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P7159538848409850347.Spec : Prop :=
  ∀ n, P7159538848409850347.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P14386969955893350531

`(2^A002262(n)+1)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P14386969955893350531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A002262 n : ℤ) + 1) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P14386969955893350531

namespace A264871

/-- `(2^A002262(n)+1)^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P14386969955893350531.Spec : Prop :=
  ∀ n, P14386969955893350531.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P3681216253209849300

`A000051(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P3681216253209849300
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P3681216253209849300

namespace A264871

/-- `A000051(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P3681216253209849300.Spec : Prop :=
  ∀ n, P3681216253209849300.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P11518721881671620669

`A094373(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P11518721881671620669
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094373 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P11518721881671620669

namespace A264871

/-- `A094373(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P11518721881671620669.Spec : Prop :=
  ∀ n, P11518721881671620669.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P2277579180657682780

`A020725(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P2277579180657682780
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P2277579180657682780

namespace A264871

/-- `A020725(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P2277579180657682780.Spec : Prop :=
  ∀ n, P2277579180657682780.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P15056007751178861681

`A055944(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P15056007751178861681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P15056007751178861681

namespace A264871

/-- `A055944(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P15056007751178861681.Spec : Prop :=
  ∀ n, P15056007751178861681.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P193493984437718500

`A126441(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P193493984437718500
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126441 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P193493984437718500

namespace A264871

/-- `A126441(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P193493984437718500.Spec : Prop :=
  ∀ n, P193493984437718500.a n = (A264871 n : ℚ)

end A264871

/-! ## A264871.P5814841351518991865

`A141310(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264871.P5814841351518991865
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A264871.P5814841351518991865

namespace A264871

/-- `A141310(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P5814841351518991865.Spec : Prop :=
  ∀ n, P5814841351518991865.a n = (A264871 n : ℚ)

end A264871

/-!
# A264872: Array read by antidiagonals: T(n,m) = 2^n*(1+2^n)^m; n,m >= 0.

The programs for A264872, the canonical program `A264872.P2207374828017841380` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264872 has offset 0).

The definition of A264872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264872.P2207374828017841380

`2^col(n)*(1+2^col(n))^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264872

/-- `2^col(n)*(1+2^col(n))^(row(n)-col(n))` -/
def P2207374828017841380.Spec : Prop :=
  ∀ n, P2207374828017841380.a n = (A264872 n : ℚ)

end A264872

/-! ## A264872.P7212037815440706598

`2^(n-C(∑[char[∑[n]]], 2))*A264871(n)`
-/

namespace A264872.P7212037815440706598
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A264871 n : ℚ)

end

end A264872.P7212037815440706598

namespace A264872

/-- `2^(n-C(∑[char[∑[n]]], 2))*A264871(n)` -/
def P7212037815440706598.Spec : Prop :=
  ∀ n, P7212037815440706598.a n = (A264872 n : ℚ)

end A264872

/-! ## A264872.P14338532755032935594

`A059268(n)*A264871(n)`
-/

namespace A264872.P14338532755032935594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A264871 n

end

end A264872.P14338532755032935594

namespace A264872

/-- `A059268(n)*A264871(n)` -/
def P14338532755032935594.Spec : Prop :=
  ∀ n, P14338532755032935594.a n = A264872 n

end A264872

/-! ## A264872.P15852530808199903428

`2^A002262(n)*A264871(n)`
-/

namespace A264872.P15852530808199903428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A264871 n : ℚ)

end

end A264872.P15852530808199903428

namespace A264872

/-- `2^A002262(n)*A264871(n)` -/
def P15852530808199903428.Spec : Prop :=
  ∀ n, P15852530808199903428.a n = (A264872 n : ℚ)

end A264872

/-! ## A264872.P11810560477667495527

`A000079(A002262(n))*A264871(n)`
-/

namespace A264872.P11810560477667495527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A264871 n

end

end A264872.P11810560477667495527

namespace A264872

/-- `A000079(A002262(n))*A264871(n)` -/
def P11810560477667495527.Spec : Prop :=
  ∀ n, P11810560477667495527.a n = A264872 n

end A264872

/-!
# A264873: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264873, there is no canonical definition to state claims against.
-/

/-! ## A264873.P12583552776717413082

`A264878(∑[4*n]+1)`
-/

namespace A264873.P12583552776717413082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264873.P12583552776717413082

/-! ## A264873.P5729843344249526326

`A264878(A001844(n))+char[9]`
-/

namespace A264873.P5729843344249526326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264873.P5729843344249526326

/-! ## A264873.P7558019048761740820

`and(-1, A264878(A000982(2*n+1)))`
-/

namespace A264873.P7558019048761740820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A264878 (A000982 (2 * n + 1)).toNat)

end

end A264873.P7558019048761740820

/-! ## A264873.P15646771514544132066

`A027828(n)*A264878(A001844(n))`
-/

namespace A264873.P15646771514544132066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n * A264878 (A001844 n).toNat

end

end A264873.P15646771514544132066

/-! ## A264873.P3050762654751599797

`or(A185264(n), A264878(A001844(n)))`
-/

namespace A264873.P3050762654751599797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185264 n) (A264878 (A001844 n).toNat)

end

end A264873.P3050762654751599797

/-!
# A264874: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264874, there is no canonical definition to state claims against.
-/

/-! ## A264874.P4370776098391402209

`A264878(∑[n+3]+1)`
-/

namespace A264874.P4370776098391402209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264874.P4370776098391402209

/-! ## A264874.P11096081243946358851

`A264878(A055999(n)+4)+char[17]`
-/

namespace A264874.P11096081243946358851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A055999 n + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264874.P11096081243946358851

/-! ## A264874.P6042287138372225462

`A264878(A055999(n)+4)/A007318(C(2, n))`
-/

namespace A264874.P6042287138372225462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264878 (A055999 n + 4).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A264874.P6042287138372225462

/-! ## A264874.P17221909653087934195

`A000041(floor(n/8))*A264878(A055999(n)+4)`
-/

namespace A264874.P17221909653087934195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 8⌋.toNat * A264878 (A055999 n + 4).toNat

end

end A264874.P17221909653087934195

/-! ## A264874.P17654610000478125413

`A264878(A055999(n)+4)%∏[A006530(n+2)]`
-/

namespace A264874.P17654610000478125413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264878 (A055999 n + 4).toNat) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A264874.P17654610000478125413

/-!
# A264875: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264875, there is no canonical definition to state claims against.
-/

/-! ## A264875.P9734096811956529845

`record[A264878(abs(∑[n+2]-3))]`
-/

namespace A264875.P9734096811956529845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264875.P9734096811956529845

/-! ## A264875.P7752979384153611214

`A264878(Δ[A264443(n)])`
-/

namespace A264875.P7752979384153611214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (f1 (n + 1) - f1 n).toNat

end

end A264875.P7752979384153611214

/-! ## A264875.P6630320449246873582

`A264878(A046691(n+3))`
-/

namespace A264875.P6630320449246873582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A046691 (n + 3)).toNat

end

end A264875.P6630320449246873582

/-! ## A264875.P6650973287986492024

`A264878(A056115(n)+11)`
-/

namespace A264875.P6650973287986492024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A056115 n + 11).toNat

end

end A264875.P6650973287986492024

/-! ## A264875.P14954900264403525035

`A264878(eq[2, A092921(n)])`
-/

namespace A264875.P14954900264403525035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264875.P14954900264403525035

/-!
# A264876: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264876, there is no canonical definition to state claims against.
-/

/-! ## A264876.P14334014621327749591

`A264878(A052905(n+3))`
-/

namespace A264876.P14334014621327749591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A052905 (n + 3)).toNat

end

end A264876.P14334014621327749591

/-! ## A264876.P5043999504322204384

`A264878(A302537(n)+15)`
-/

namespace A264876.P5043999504322204384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A302537 n + 15).toNat

end

end A264876.P5043999504322204384

/-! ## A264876.P17169103238744085044

`A264878(A056119(n)+16)`
-/

namespace A264876.P17169103238744085044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A056119 n + 16).toNat

end

end A264876.P17169103238744085044

/-! ## A264876.P16036526933521933609

`A264878(eq[3, A219347(n)])`
-/

namespace A264876.P16036526933521933609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264876.P16036526933521933609

/-! ## A264876.P6515912352448138867

`A264878(eq[5, A193592(n)])`
-/

namespace A264876.P6515912352448138867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264876.P6515912352448138867

/-!
# A264877: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264877, there is no canonical definition to state claims against.
-/

/-! ## A264877.P3603945041948771817

`A264878(A055999(n+4))`
-/

namespace A264877.P3603945041948771817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A055999 (n + 4)).toNat

end

end A264877.P3603945041948771817

/-! ## A264877.P2819157540257703520

`A264878(eq[4, A219347(n)])`
-/

namespace A264877.P2819157540257703520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264877.P2819157540257703520

/-! ## A264877.P4270683497963169288

`A264878(eq[6, A193592(n)])`
-/

namespace A264877.P4270683497963169288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264877.P4270683497963169288

/-! ## A264877.P18398823806480707639

`A264878(Δ[A023551(n+2)])`
-/

namespace A264877.P18398823806480707639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (f1 (n + 1) - f1 n).toNat

end

end A264877.P18398823806480707639

/-! ## A264877.P14085999266833815822

`A264878(A052905(n+4)-1)`
-/

namespace A264877.P14085999266833815822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A052905 (n + 4) - 1).toNat

end

end A264877.P14085999266833815822

/-!
# A264878: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264878, there is no canonical definition to state claims against.
-/

/-! ## A264878.P686626916339318804

`and(A213257(A276086(n)), A328901(n))`
-/

namespace A264878.P686626916339318804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213257 (A276086 n).toNat) (A328901 n)

end

end A264878.P686626916339318804

/-! ## A264878.P15708595151484898232

`A174793(A074781(n+2)+1)`
-/

namespace A264878.P15708595151484898232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174793 (A074781 (n + 2) + 1).toNat

end

end A264878.P15708595151484898232

/-! ## A264878.P17216349131723643586

`A174793(A147545(n+2)+1)`
-/

namespace A264878.P17216349131723643586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174793 (A147545 (n + 2) + 1).toNat

end

end A264878.P17216349131723643586

/-! ## A264878.P4615387616520594627

`and(Δ[A028260(n+1)], A182585(2*(n+2)))`
-/

namespace A264878.P4615387616520594627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A182585 (2 * (n + 2)))

end

end A264878.P4615387616520594627

/-! ## A264878.P10465925944015040452

`A033932(n)%A093560(A077168(n))`
-/

namespace A264878.P10465925944015040452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033932 n) (A093560 (A077168 n).toNat)

end

end A264878.P10465925944015040452

/-!
# A264879: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264879, there is no canonical definition to state claims against.
-/

/-! ## A264879.P10105963152066976622

`A079982(3*(n+2))`
-/

namespace A264879.P10105963152066976622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079982 (3 * (n + 2))

end

end A264879.P10105963152066976622

/-! ## A264879.P3335860149167126254

`A264878(∑[n+1]+2)`
-/

namespace A264879.P3335860149167126254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264879.P3335860149167126254

/-! ## A264879.P5295610619302712642

`A264878(A133263(n+1))+char[19]`
-/

namespace A264879.P5295610619302712642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264879.P5295610619302712642

/-! ## A264879.P5540659575833831488

`A264878(A133263(n+1))%A000108(n+2)`
-/

namespace A264879.P5540659575833831488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264878 (A133263 (n + 1)).toNat) (A000108 (n + 2))

end

end A264879.P5540659575833831488

/-! ## A264879.P13632649954653671136

`A264878(A133263(n+1))^A007318(C(n, 2))`
-/

namespace A264879.P13632649954653671136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264878 (A133263 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A264879.P13632649954653671136

/-!
# A264880: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264880, there is no canonical definition to state claims against.
-/

/-! ## A264880.P12477966871654697496

`A264878(∑[n+2]+4)`
-/

namespace A264880.P12477966871654697496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264880.P12477966871654697496

/-! ## A264880.P9237298109014077620

`and(-3, A264878(A167614(n+1)))`
-/

namespace A264880.P9237298109014077620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A264878 (A167614 (n + 1)).toNat)

end

end A264880.P9237298109014077620

/-! ## A264880.P6039812992313170626

`A264878(A167614(n+1))+A178798(n)`
-/

namespace A264880.P6039812992313170626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A167614 (n + 1)).toNat + A178798 n

end

end A264880.P6039812992313170626

/-! ## A264880.P4425168706694478073

`A264878(A167614(n+1))%A254366(n)`
-/

namespace A264880.P4425168706694478073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264878 (A167614 (n + 1)).toNat) (A254366 n)

end

end A264880.P4425168706694478073

/-! ## A264880.P281157237145105674

`gcd(A000038(n), A264878(A167614(n+1)))`
-/

namespace A264880.P281157237145105674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A264878 (A167614 (n + 1)).toNat)

end

end A264880.P281157237145105674

/-!
# A264881: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264881, there is no canonical definition to state claims against.
-/

/-! ## A264881.P413608843616124613

`A264878(A141214(n)+7)`
-/

namespace A264881.P413608843616124613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A141214 n + 7).toNat

end

end A264881.P413608843616124613

/-! ## A264881.P12377554685994433516

`A264878(A052905(n)+9)`
-/

namespace A264881.P12377554685994433516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A052905 n + 9).toNat

end

end A264881.P12377554685994433516

/-! ## A264881.P15368108495574387795

`A264878(A055999(n)+10)`
-/

namespace A264881.P15368108495574387795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A055999 n + 10).toNat

end

end A264881.P15368108495574387795

/-! ## A264881.P9350541562728897596

`A264878(Δ[A008778(n)]+6)`
-/

namespace A264881.P9350541562728897596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (f1 (n + 1) - f1 n + 6).toNat

end

end A264881.P9350541562728897596

/-! ## A264881.P14357139406987439019

`A264878(A167614(n+2)+1)`
-/

namespace A264881.P14357139406987439019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A167614 (n + 2) + 1).toNat

end

end A264881.P14357139406987439019

/-!
# A264882: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264882, there is no canonical definition to state claims against.
-/

/-! ## A264882.P2611402762014289934

`A264878(∑[n+4]+11)`
-/

namespace A264882.P2611402762014289934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A264882.P2611402762014289934

/-! ## A264882.P17224757605738896165

`A264878(A167499(n+3))+char[19]`
-/

namespace A264882.P17224757605738896165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264882.P17224757605738896165

/-! ## A264882.P4324342450847630300

`A264878(A055998(n+2)+8)+char[22]`
-/

namespace A264882.P4324342450847630300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A055998 (n + 2) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264882.P4324342450847630300

/-! ## A264882.P9088150360269263882

`A014963(4*n+6)*A264878(A167499(n+3))`
-/

namespace A264882.P9088150360269263882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A264878 (A167499 (n + 3)).toNat

end

end A264882.P9088150360269263882

/-! ## A264882.P8605500611949534790

`A000041(C(3, n²))*A264878(A055998(n+2)+8)`
-/

namespace A264882.P8605500611949534790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 3 (n ^ 2)) * A264878 (A055998 (n + 2) + 8).toNat

end

end A264882.P8605500611949534790

/-!
# A264883: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264883, there is no canonical definition to state claims against.
-/

/-! ## A264883.P13460289155320932497

`A264878(A166136(n+4))`
-/

namespace A264883.P13460289155320932497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A166136 (n + 4)).toNat

end

end A264883.P13460289155320932497

/-! ## A264883.P18271836828831720492

`A264878(A056115(n)+21)`
-/

namespace A264883.P18271836828831720492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A056115 n + 21).toNat

end

end A264883.P18271836828831720492

/-! ## A264883.P12162118937965941847

`A264878(A167499(n+4)+1)`
-/

namespace A264883.P12162118937965941847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A167499 (n + 4) + 1).toNat

end

end A264883.P12162118937965941847

/-! ## A264883.P13041400568615685180

`A264878(A167614(n+4)+3)`
-/

namespace A264883.P13041400568615685180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A167614 (n + 4) + 3).toNat

end

end A264883.P13041400568615685180

/-! ## A264883.P6983421646061745528

`A264878(A000124(n+5)+5)`
-/

namespace A264883.P6983421646061745528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A000124 (n + 5) + 5).toNat

end

end A264883.P6983421646061745528

/-!
# A264884: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,1 0,-1 -2,0 or 1,1.

The programs for A264884, there is no canonical definition to state claims against.
-/

/-! ## A264884.P10308230721582550574

`A264878(eq[11, A066657(n)])`
-/

namespace A264884.P10308230721582550574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264884.P10308230721582550574

/-! ## A264884.P4605206020669286793

`A264878(A166136(n+5)+1)`
-/

namespace A264884.P4605206020669286793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A166136 (n + 5) + 1).toNat

end

end A264884.P4605206020669286793

/-! ## A264884.P5746216565572388075

`A264878(A000217(n+6)+7)`
-/

namespace A264884.P5746216565572388075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (A000217 (n + 6) + 7).toNat

end

end A264884.P5746216565572388075

/-! ## A264884.P16563598931607224024

`A264878(eq[8, A131818(n+1)])`
-/

namespace A264884.P16563598931607224024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264884.P16563598931607224024

/-! ## A264884.P17017019641511418315

`A264878(eq[6, A144328(n+1)]+1)`
-/

namespace A264884.P17017019641511418315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264884.P17017019641511418315

/-!
# A264885: Numbers in A007504 such that omega(a(n)) = Omega(a(n)) = 3.

The programs for A264885, there is no canonical definition to state claims against.
-/

/-! ## A264885.P14654730935268577910

`filter[A007504(n+1), A354926(#)]`
-/

namespace A264885.P14654730935268577910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A264885.P14654730935268577910

/-! ## A264885.P6108930275383273206

`filter[A053790(n+1), A354926(#)]`
-/

namespace A264885.P6108930275383273206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A264885.P6108930275383273206

/-! ## A264885.P15097616936116739341

`filter[A160793(2*(n+1)), A354926(#)]`
-/

namespace A264885.P15097616936116739341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A264885.P15097616936116739341

/-! ## A264885.P450129892923687266

`filter[A053790(n+1), A252233(#)]`
-/

namespace A264885.P450129892923687266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A264885.P450129892923687266

/-! ## A264885.P11267362033183177521

`∩[A007304(n+1), A007504(n)]`
-/

namespace A264885.P11267362033183177521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264885.P11267362033183177521

/-!
# A264886: Integers n such that A061720(n-1) + 1 or A061720(n-1) - 1 is prime.

The programs for A264886, there is no canonical definition to state claims against.
-/

/-! ## A264886.P5230323624941662807

`A226066(A054762(n+1))`
-/

namespace A264886.P5230323624941662807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226066 (A054762 (n + 1)).toNat

end

end A264886.P5230323624941662807

/-! ## A264886.P16311928430632762002

`record[gcd(A111706(n+1), A115895(n+1))]`
-/

namespace A264886.P16311928430632762002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111706 (n + 1)) (A115895 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264886.P16311928430632762002

/-! ## A264886.P15667321150446571092

`eq[A007318(A153152(n)), A092695(n)]`
-/

namespace A264886.P15667321150446571092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A153152 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264886.P15667321150446571092

/-! ## A264886.P14030140555818922498

`lt[A330609(n), A107760(A240203(n))]`
-/

namespace A264886.P14030140555818922498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 (A240203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264886.P14030140555818922498

/-! ## A264886.P12625557555874490676

`A181810(A324943(n+1))+A000045(n)`
-/

namespace A264886.P12625557555874490676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181810 (A324943 (n + 1)).toNat + A000045 n

end

end A264886.P12625557555874490676

/-!
# A264887: Numbers in A007504 such that omega(a(n)) = Omega(a(n)) = 4.

The programs for A264887, there is no canonical definition to state claims against.
-/

/-! ## A264887.P15063189217253158085

`filter[A140763(n+1), A379958(#)]`
-/

namespace A264887.P15063189217253158085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A264887.P15063189217253158085

/-! ## A264887.P13939337008741365090

`filter[A140763(n+1), A101637(#)]`
-/

namespace A264887.P13939337008741365090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A264887.P13939337008741365090

/-!
# A264888: a(n) = n*(n + 1)*(13*n^2 + 13*n - 14)/24.

The programs for A264888, the canonical program `A264888.P3827907142989884868` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264888 has offset 0).

The definition of A264888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(13*n²+13*n-14)/24` (program `A264888.P14349673857896382467`, by `A264888.P14349673857896382467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264888.P3731861002221038860

`13*C(n+2, 4)+C(n+1, 2)`
-/

namespace A264888.P3731861002221038860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * Nat.choose (n + 2) 4 + Nat.choose (n + 1) 2

end

end A264888.P3731861002221038860

namespace A264888

/-- `13*C(n+2, 4)+C(n+1, 2)` -/
def P3731861002221038860.Spec : Prop :=
  ∀ n, (P3731861002221038860.a n : ℤ) = A264888 n

end A264888

/-! ## A264888.P14349673857896382467

`n*(n+1)*(13*n²+13*n-14)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264888.P14349673857896382467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((13 * n ^ 2 + 13 * n : ℤ) - 14) : ℚ) / 24

end

end A264888.P14349673857896382467

namespace A264888

/-- `n*(n+1)*(13*n²+13*n-14)/24` -/
def P14349673857896382467.Spec : Prop :=
  ∀ n, P14349673857896382467.a n = (A264888 n : ℚ)

theorem P14349673857896382467.correct : P14349673857896382467.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A264888, Nat.add_sub_cancel, A264888.P14349673857896382467.a, A264888.P3827907142989884868.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A264888, Nat.add_sub_cancel, A264888.P14349673857896382467.a, A264888.P3827907142989884868.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264888

/-! ## A264888.P3827907142989884868

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=71, a(4)=205`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264888

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3827907142989884868.Spec : Prop :=
  ∀ n, P3827907142989884868.a n = A264888 n

theorem P3827907142989884868.correct : P3827907142989884868.Spec := by
  intro n
  simp only [A264888]

end A264888

/-! ## A264888.P13341742552718219373

`∑[∑[13*C(n, 2)]+n]`
-/

namespace A264888.P13341742552718219373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264888.P13341742552718219373

namespace A264888

/-- `∑[∑[13*C(n, 2)]+n]` -/
def P13341742552718219373.Spec : Prop :=
  ∀ n, (P13341742552718219373.a n : ℤ) = A264888 n

end A264888

/-! ## A264888.P4016133863975778672

`∑[A062025(n)]`
-/

namespace A264888.P4016133863975778672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264888.P4016133863975778672

namespace A264888

/-- `∑[A062025(n)]` -/
def P4016133863975778672.Spec : Prop :=
  ∀ n, P4016133863975778672.a n = A264888 n

end A264888

/-! ## A264888.P15647554288476737859

`(n+1)²²-A055268(n)`
-/

namespace A264888.P15647554288476737859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A055268 n

end

end A264888.P15647554288476737859

namespace A264888

/-- `(n+1)²²-A055268(n)` -/
def P15647554288476737859.Spec : Prop :=
  ∀ n, P15647554288476737859.a n = A264888 n

end A264888

/-! ## A264888.P2136948797872505974

`∑[n]+∑[∑[A051867(n)-n]]`
-/

namespace A264888.P2136948797872505974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A264888.P2136948797872505974

namespace A264888

/-- `∑[n]+∑[∑[A051867(n)-n]]` -/
def P2136948797872505974.Spec : Prop :=
  ∀ n, P2136948797872505974.a n = A264888 n

end A264888

/-! ## A264888.P6196133383463280976

`2*A264854(n)-A236770(n)`
-/

namespace A264888.P6196133383463280976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264854 n - A236770 n

end

end A264888.P6196133383463280976

namespace A264888

/-- `2*A264854(n)-A236770(n)` -/
def P6196133383463280976.Spec : Prop :=
  ∀ n, P6196133383463280976.a n = A264888 n

end A264888

/-! ## A264888.P12096778724752700625

`A000537(n)+A264853(n)-A002817(n)`
-/

namespace A264888.P12096778724752700625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (A264853 n - A002817 n)

end

end A264888.P12096778724752700625

namespace A264888

/-- `A000537(n)+A264853(n)-A002817(n)` -/
def P12096778724752700625.Spec : Prop :=
  ∀ n, P12096778724752700625.a n = A264888 n

end A264888

/-! ## A264888.P1204931629662540969

`A236770(n)+A264853(n)-A000537(n)`
-/

namespace A264888.P1204931629662540969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236770 n + (A264853 n - A000537 n)

end

end A264888.P1204931629662540969

namespace A264888

/-- `A236770(n)+A264853(n)-A000537(n)` -/
def P1204931629662540969.Spec : Prop :=
  ∀ n, P1204931629662540969.a n = A264888 n

end A264888

/-! ## A264888.P9776852576895281804

`A220212(n)+A000332(n+1)`
-/

namespace A264888.P9776852576895281804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 n + A000332 (n + 1)

end

end A264888.P9776852576895281804

namespace A264888

/-- `A220212(n)+A000332(n+1)` -/
def P9776852576895281804.Spec : Prop :=
  ∀ n, P9776852576895281804.a n = A264888 n

end A264888

/-! ## A264888.P15567230708404659831

`A006325(n+1)+A264854(n)-A006007(n)`
-/

namespace A264888.P15567230708404659831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + (A264854 n - A006007 n)

end

end A264888.P15567230708404659831

namespace A264888

/-- `A006325(n+1)+A264854(n)-A006007(n)` -/
def P15567230708404659831.Spec : Prop :=
  ∀ n, P15567230708404659831.a n = A264888 n

end A264888

/-! ## A264888.P12389078103354400502

`A062392(n)+A000332(n+2)`
-/

namespace A264888.P12389078103354400502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + A000332 (n + 2)

end

end A264888.P12389078103354400502

namespace A264888

/-- `A062392(n)+A000332(n+2)` -/
def P12389078103354400502.Spec : Prop :=
  ∀ n, P12389078103354400502.a n = A264888 n

end A264888

/-! ## A264888.P16383276906251546980

`A180324(n)-(A000217(n)+A000217(A000217(n)))`
-/

namespace A264888.P16383276906251546980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n - (A000217 n + A000217 (A000217 n).toNat)

end

end A264888.P16383276906251546980

namespace A264888

/-- `A180324(n)-(A000217(n)+A000217(A000217(n)))` -/
def P16383276906251546980.Spec : Prop :=
  ∀ n, P16383276906251546980.a n = A264888 n

end A264888

/-! ## A264888.P1937980186926657053

`A000384(∑[n])+C(n+2, 4)`
-/

namespace A264888.P1937980186926657053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.choose (n + 2) 4 : ℤ)

end

end A264888.P1937980186926657053

namespace A264888

/-- `A000384(∑[n])+C(n+2, 4)` -/
def P1937980186926657053.Spec : Prop :=
  ∀ n, P1937980186926657053.a n = A264888 n

end A264888

/-! ## A264888.P18370154114811356936

`A180324(n)-A000096(A000217(n))`
-/

namespace A264888.P18370154114811356936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n - A000096 (A000217 n).toNat

end

end A264888.P18370154114811356936

namespace A264888

/-- `A180324(n)-A000096(A000217(n))` -/
def P18370154114811356936.Spec : Prop :=
  ∀ n, P18370154114811356936.a n = A264888 n

end A264888

/-! ## A264888.P13154010464337475767

`A180324(n)-A000096(A000096(n)-n)`
-/

namespace A264888.P13154010464337475767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n - A000096 (A000096 n - (n : ℤ)).toNat

end

end A264888.P13154010464337475767

namespace A264888

/-- `A180324(n)-A000096(A000096(n)-n)` -/
def P13154010464337475767.Spec : Prop :=
  ∀ n, P13154010464337475767.a n = A264888 n

end A264888

/-!
# A264889: Partial sums of hyperfactorials (A002109).

The programs for A264889, there is no canonical definition to state claims against.
-/

/-! ## A264889.P5910882351190029564

`∑[∏[n^n]]`
-/

namespace A264889.P5910882351190029564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264889.P5910882351190029564

/-! ## A264889.P9990705653694153615

`∏[n^n]+a(n-1)` with `a(0)=1`
-/

namespace A264889.P9990705653694153615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A264889.P9990705653694153615

/-! ## A264889.P14039457855235534876

`abs(∑[n^n*a(n-1)])` with `a(0)=1`
-/

namespace A264889.P14039457855235534876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n ^ n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264889.P14039457855235534876

/-! ## A264889.P13198563264103639623

`floor(∑[n^n*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A264889.P13198563264103639623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n ^ n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264889.P13198563264103639623

/-! ## A264889.P4720368461604654593

`ceil(∑[n^n*a(n-1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A264889.P4720368461604654593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n ^ n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264889.P4720368461604654593

/-!
# A264891: a(n) = n*(5*n - 3)*(25*n^2 - 15*n - 6)/8.

The programs for A264891, the canonical program `A264891.P1113913307012413225` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264891 has offset 0).

The definition of A264891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264891.P14472380218226351815

`n*(5*n-3)*(25*n²-15*n-6)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264891.P14472380218226351815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((5 * n : ℤ) - 3) * ((25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 6) : ℚ) / 8

end

end A264891.P14472380218226351815

namespace A264891

/-- `n*(5*n-3)*(25*n²-15*n-6)/8` -/
def P14472380218226351815.Spec : Prop :=
  ∀ n, P14472380218226351815.a n = (A264891 n : ℚ)

end A264891

/-! ## A264891.P1113913307012413225

`A000566(A000566(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A264891

/-- `A000566(A000566(n))` -/
def P1113913307012413225.Spec : Prop :=
  ∀ n, P1113913307012413225.a n = A264891 n

theorem P1113913307012413225.correct : P1113913307012413225.Spec := by
  intro n
  simp only [A264891]

end A264891

/-! ## A264891.P1667127801425974376

`∑[A006003(A008851(A004277(n)))]`
-/

namespace A264891.P1667127801425974376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A008851 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264891.P1667127801425974376

namespace A264891

/-- `∑[A006003(A008851(A004277(n)))]` -/
def P1667127801425974376.Spec : Prop :=
  ∀ n, P1667127801425974376.a n = A264891 n

end A264891

/-! ## A264891.P16140354347244591544

`∑[A006003(A051624(n)/A028310(n))]`
-/

namespace A264891.P16140354347244591544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (SequenceMachineLib.roundAway ((A051624 n : ℚ) / (A028310 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264891.P16140354347244591544

namespace A264891

/-- `∑[A006003(A051624(n)/A028310(n))]` -/
def P16140354347244591544.Spec : Prop :=
  ∀ n, P16140354347244591544.a n = A264891 n

end A264891

/-! ## A264891.P15112503097318231156

`∑[A006003(5*n+1)]-A006003(5*n+1)`
-/

namespace A264891.P15112503097318231156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006003 (5 * n + 1)

end

end A264891.P15112503097318231156

namespace A264891

/-- `∑[A006003(5*n+1)]-A006003(5*n+1)` -/
def P15112503097318231156.Spec : Prop :=
  ∀ n, P15112503097318231156.a n = A264891 n

end A264891

/-! ## A264891.P15174630893917205594

`∑[A006003(record[A226784(n+1)])]`
-/

namespace A264891.P15174630893917205594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226784 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264891.P15174630893917205594

namespace A264891

/-- `∑[A006003(record[A226784(n+1)])]` -/
def P15174630893917205594.Spec : Prop :=
  ∀ n, P15174630893917205594.a n = A264891 n

end A264891

/-! ## A264891.P17276476943847387316

`A140066(A192136(n))-A192136(n)`
-/

namespace A264891.P17276476943847387316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140066 (A192136 n).toNat - A192136 n

end

end A264891.P17276476943847387316

namespace A264891

/-- `A140066(A192136(n))-A192136(n)` -/
def P17276476943847387316.Spec : Prop :=
  ∀ n, P17276476943847387316.a n = A264891 n

end A264891

/-!
# A264892: a(n) = n*(3*n - 2)*(9*n^2 - 6*n - 2).

The programs for A264892, the canonical program `A264892.P4357322633553267277` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264892 has offset 0).

The definition of A264892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n-2)*(9*n²-6*n-2)` (program `A264892.P4357322633553267277`, by `A264892.P4357322633553267277.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264892.P4357322633553267277

`n*(3*n-2)*(9*n²-6*n-2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264892

/-- `n*(3*n-2)*(9*n²-6*n-2)` -/
def P4357322633553267277.Spec : Prop :=
  ∀ n, P4357322633553267277.a n = A264892 n

theorem P4357322633553267277.correct : P4357322633553267277.Spec := by
  intro n
  simp only [A264892]

end A264892

/-! ## A264892.P14628759804289793238

`A000567(A000567(n))`
-/

namespace A264892.P14628759804289793238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A000567 n).toNat

end

end A264892.P14628759804289793238

namespace A264892

/-- `A000567(A000567(n))` -/
def P14628759804289793238.Spec : Prop :=
  ∀ n, P14628759804289793238.a n = A264892 n

end A264892

/-! ## A264892.P5724550218091400858

`A152729(A008486(n))`
-/

namespace A264892.P5724550218091400858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152729 (A008486 n).toNat

end

end A264892.P5724550218091400858

namespace A264892

/-- `A152729(A008486(n))` -/
def P5724550218091400858.Spec : Prop :=
  ∀ n, P5724550218091400858.a n = A264892 n

end A264892

/-! ## A264892.P4035225576165982583

`A152729(A004277(n)+n)`
-/

namespace A264892.P4035225576165982583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152729 (A004277 n + (n : ℤ)).toNat

end

end A264892.P4035225576165982583

namespace A264892

/-- `A152729(A004277(n)+n)` -/
def P4035225576165982583.Spec : Prop :=
  ∀ n, P4035225576165982583.a n = A264892 n

end A264892

/-! ## A264892.P14122166484646099533

`A152729(A008574(n)-n)`
-/

namespace A264892.P14122166484646099533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152729 (A008574 n - (n : ℤ)).toNat

end

end A264892.P14122166484646099533

namespace A264892

/-- `A152729(A008574(n)-n)` -/
def P14122166484646099533.Spec : Prop :=
  ∀ n, P14122166484646099533.a n = A264892 n

end A264892

/-! ## A264892.P4081443360077354091

`2*A006484(3*n)-A005900(3*n)`
-/

namespace A264892.P4081443360077354091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006484 (3 * n) - A005900 (3 * n)

end

end A264892.P4081443360077354091

namespace A264892

/-- `2*A006484(3*n)-A005900(3*n)` -/
def P4081443360077354091.Spec : Prop :=
  ∀ n, P4081443360077354091.a n = A264892 n

end A264892

/-! ## A264892.P5474847859797699963

`∑[A005917(3*n+1)]-A005917(3*n+1)`
-/

namespace A264892.P5474847859797699963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005917 (3 * n + 1)

end

end A264892.P5474847859797699963

namespace A264892

/-- `∑[A005917(3*n+1)]-A005917(3*n+1)` -/
def P5474847859797699963.Spec : Prop :=
  ∀ n, P5474847859797699963.a n = A264892 n

end A264892

/-! ## A264892.P4752614521343829111

`A152729(record[n+1-A000212(n+1)%(n+1)])`
-/

namespace A264892.P4752614521343829111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A000212 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152729 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A264892.P4752614521343829111

namespace A264892

/-- `A152729(record[n+1-A000212(n+1)%(n+1)])` -/
def P4752614521343829111.Spec : Prop :=
  ∀ n, P4752614521343829111.a n = A264892 n

end A264892

/-!
# A264893: First differences of A155043.

The programs for A264893, the canonical program `A264893.P17787265637205541` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264893 has offset 0).

The definition of A264893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264893.P14059623397412482726

`Δ[A155043(n)]`
-/

namespace A264893.P14059623397412482726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264893.P14059623397412482726

namespace A264893

/-- `Δ[A155043(n)]` -/
def P14059623397412482726.Spec : Prop :=
  ∀ n, P14059623397412482726.a n = A264893 n

end A264893

/-! ## A264893.P5366677530848658250

`Δ[abs(a(n-A000005(n))+1)]` with `a(0)=0`
-/

namespace A264893.P5366677530848658250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((n : ℤ) - A000005 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A264893.P5366677530848658250

namespace A264893

/-- `Δ[abs(a(n-A000005(n))+1)]` -/
def P5366677530848658250.Spec : Prop :=
  ∀ n, P5366677530848658250.a n = A264893 n

end A264893

/-! ## A264893.P5599598151274142064

`Δ[A263270(A263266(n))]`
-/

namespace A264893.P5599598151274142064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264893.P5599598151274142064

namespace A264893

/-- `Δ[A263270(A263266(n))]` -/
def P5599598151274142064.Spec : Prop :=
  ∀ n, P5599598151274142064.a n = A264893 n

end A264893

/-! ## A264893.P11377177548142953094

`Δ[A262677(n)+A262676(n)]`
-/

namespace A264893.P11377177548142953094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262677 n + A262676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264893.P11377177548142953094

namespace A264893

/-- `Δ[A262677(n)+A262676(n)]` -/
def P11377177548142953094.Spec : Prop :=
  ∀ n, P11377177548142953094.a n = A264893 n

end A264893

/-! ## A264893.P17551894842926075835

`Δ[A263254(n)+A262904(n)]`
-/

namespace A264893.P17551894842926075835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n + A262904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264893.P17551894842926075835

namespace A264893

/-- `Δ[A263254(n)+A262904(n)]` -/
def P17551894842926075835.Spec : Prop :=
  ∀ n, P17551894842926075835.a n = A264893 n

end A264893

/-! ## A264893.P2096712531700780835

`A155043(n+1)-A155043(n)`
-/

namespace A264893.P2096712531700780835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (n + 1) - A155043 n

end

end A264893.P2096712531700780835

namespace A264893

/-- `A155043(n+1)-A155043(n)` -/
def P2096712531700780835.Spec : Prop :=
  ∀ n, P2096712531700780835.a n = A264893 n

end A264893

/-! ## A264893.P17787265637205541

`Δ[abs(a(n-∏{e}[n, #+1])+1)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264893

/-- `Δ[abs(a(n-∏{e}[n, #+1])+1)]` -/
def P17787265637205541.Spec : Prop :=
  ∀ n, P17787265637205541.a n = A264893 n

theorem P17787265637205541.correct : P17787265637205541.Spec := by
  intro n
  simp only [A264893]

end A264893

/-! ## A264893.P3258401146333052308

`Δ[A263270(A263268(n))]`
-/

namespace A264893.P3258401146333052308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264893.P3258401146333052308

namespace A264893

/-- `Δ[A263270(A263268(n))]` -/
def P3258401146333052308.Spec : Prop :=
  ∀ n, P3258401146333052308.a n = A264893 n

end A264893

/-!
# A264894: a(n) = n*(7*n - 5)*(49*n^2 - 35*n - 10)/8.

The programs for A264894, the canonical program `A264894.P11466025763062126121` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264894 has offset 0).

The definition of A264894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264894.P6641214334512296496

`n*(7*n-5)*(49*n²-35*n-10)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264894.P6641214334512296496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n : ℤ) - 5) * ((49 * n ^ 2 : ℤ) - (35 * n : ℤ) - 10) : ℚ) / 8

end

end A264894.P6641214334512296496

namespace A264894

/-- `n*(7*n-5)*(49*n²-35*n-10)/8` -/
def P6641214334512296496.Spec : Prop :=
  ∀ n, P6641214334512296496.a n = (A264894 n : ℚ)

end A264894

/-! ## A264894.P11466025763062126121

`A001106(A001106(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A264894

/-- `A001106(A001106(n))` -/
def P11466025763062126121.Spec : Prop :=
  ∀ n, P11466025763062126121.a n = A264894 n

theorem P11466025763062126121.correct : P11466025763062126121.Spec := by
  intro n
  simp only [A264894]

end A264894

/-! ## A264894.P13746064010001058870

`∑[A006003(7*n+1)]-A006003(7*n+1)`
-/

namespace A264894.P13746064010001058870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006003 (7 * n + 1)

end

end A264894.P13746064010001058870

namespace A264894

/-- `∑[A006003(7*n+1)]-A006003(7*n+1)` -/
def P13746064010001058870.Spec : Prop :=
  ∀ n, P13746064010001058870.a n = A264894 n

end A264894

/-!
# A264895: a(n) = n*(4*n - 3)*(16*n^2 - 12*n - 3).

The programs for A264895, the canonical program `A264895.P11483955320297405688` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264895 has offset 0).

The definition of A264895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n-3)*(16*n²-12*n-3)` (program `A264895.P11483955320297405688`, by `A264895.P11483955320297405688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264895.P11483955320297405688

`n*(4*n-3)*(16*n²-12*n-3)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264895

/-- `n*(4*n-3)*(16*n²-12*n-3)` -/
def P11483955320297405688.Spec : Prop :=
  ∀ n, P11483955320297405688.a n = A264895 n

theorem P11483955320297405688.correct : P11483955320297405688.Spec := by
  intro n
  simp only [A264895]

end A264895

/-! ## A264895.P894101474982122313

`A001107(A001107(n))`
-/

namespace A264895.P894101474982122313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (A001107 n).toNat

end

end A264895.P894101474982122313

namespace A264895

/-- `A001107(A001107(n))` -/
def P894101474982122313.Spec : Prop :=
  ∀ n, P894101474982122313.a n = A264895 n

end A264895

/-! ## A264895.P9461144155040351937

`A139271(n)²-A152767(n)`
-/

namespace A264895.P9461144155040351937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n ^ 2 - A152767 n

end

end A264895.P9461144155040351937

namespace A264895

/-- `A139271(n)²-A152767(n)` -/
def P9461144155040351937.Spec : Prop :=
  ∀ n, P9461144155040351937.a n = A264895 n

theorem P9461144155040351937.correct : P9461144155040351937.Spec := by
  intro n
  simp only [A264895, Nat.add_sub_cancel, A264895.P9461144155040351937.a, A264895.P11483955320297405688.a, A139271, A139271.P9268409364969855600.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A264895

/-! ## A264895.P10689405784966680928

`A014107(2*n)²-A152767(n)`
-/

namespace A264895.P10689405784966680928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (2 * n) ^ 2 - A152767 n

end

end A264895.P10689405784966680928

namespace A264895

/-- `A014107(2*n)²-A152767(n)` -/
def P10689405784966680928.Spec : Prop :=
  ∀ n, P10689405784966680928.a n = A264895 n

theorem P10689405784966680928.correct : P10689405784966680928.Spec := by
  intro n
  simp only [A264895, Nat.add_sub_cancel, A264895.P10689405784966680928.a, A264895.P11483955320297405688.a, A014107, A014107.P7046062318563033165.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A264895

/-! ## A264895.P4933941256792817145

`∑[A005917(4*n+1)]-A005917(4*n+1)`
-/

namespace A264895.P4933941256792817145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005917 (4 * n + 1)

end

end A264895.P4933941256792817145

namespace A264895

/-- `∑[A005917(4*n+1)]-A005917(4*n+1)` -/
def P4933941256792817145.Spec : Prop :=
  ∀ n, P4933941256792817145.a n = A264895 n

end A264895

/-! ## A264895.P8716277202614631696

`A054552(8*C(n, 2)+n)-1`
-/

namespace A264895.P8716277202614631696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (8 * Nat.choose n 2 + n) - 1

end

end A264895.P8716277202614631696

namespace A264895

/-- `A054552(8*C(n, 2)+n)-1` -/
def P8716277202614631696.Spec : Prop :=
  ∀ n, P8716277202614631696.a n = A264895 n

theorem P8716277202614631696.correct : P8716277202614631696.Spec := by
  intro n
  simp only [A264895, Nat.add_sub_cancel, A264895.P8716277202614631696.a, A264895.P11483955320297405688.a, A054552, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A264895

/-! ## A264895.P5005846057120150639

`A152767(8*C(n, 2)+n)/3`
-/

namespace A264895.P5005846057120150639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152767 (8 * Nat.choose n 2 + n) : ℚ) / 3

end

end A264895.P5005846057120150639

namespace A264895

/-- `A152767(8*C(n, 2)+n)/3` -/
def P5005846057120150639.Spec : Prop :=
  ∀ n, P5005846057120150639.a n = (A264895 n : ℚ)

theorem P5005846057120150639.correct : P5005846057120150639.Spec := by
  intro n
  simp only [A264895, Nat.add_sub_cancel, A264895.P5005846057120150639.a, A264895.P11483955320297405688.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A264895

/-! ## A264895.P4914618593054734089

`A054554(A054552(n))-A054552(n)`
-/

namespace A264895.P4914618593054734089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (A054552 n).toNat - A054552 n

end

end A264895.P4914618593054734089

namespace A264895

/-- `A054554(A054552(n))-A054552(n)` -/
def P4914618593054734089.Spec : Prop :=
  ∀ n, P4914618593054734089.a n = A264895 n

end A264895

/-!
# A264896: Number of permutations of [n] with exactly one occurrence of the consecutive pattern 45321.

The programs for A264896, there is no canonical definition to state claims against.
-/

/-! ## A264896.P17114384041765626253

`A264781(A001972(n+3)+2)`
-/

namespace A264896.P17114384041765626253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264781 (A001972 (n + 3) + 2).toNat

end

end A264896.P17114384041765626253

/-!
# A264898: Numbers m such that A155043(n+1) = A155043(n).

The programs for A264898, the canonical program `A264898.P3004184521614351433` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264898 has offset 1).

The definition of A264898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264898.P3004184521614351433

`eq[A155043(n+1), A155043(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A264898

/-- `eq[A155043(n+1), A155043(n)]` -/
def P3004184521614351433.Spec : Prop :=
  ∀ n, (P3004184521614351433.a n : ℤ) = A264898 (n + 1)

theorem P3004184521614351433.correct : P3004184521614351433.Spec := by
  intro n
  simp only [A264898, Nat.add_sub_cancel]

end A264898

/-! ## A264898.P11938422996677435189

`eq[0, A264893(n)]`
-/

namespace A264898.P11938422996677435189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264898.P11938422996677435189

namespace A264898

/-- `eq[0, A264893(n)]` -/
def P11938422996677435189.Spec : Prop :=
  ∀ n, (P11938422996677435189.a n : ℤ) = A264898 (n + 1)

end A264898

/-! ## A264898.P7532659118635171870

`record[gcd(n+1, A264893(n+1))]`
-/

namespace A264898.P7532659118635171870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A264893 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264898.P7532659118635171870

namespace A264898

/-- `record[gcd(n+1, A264893(n+1))]` -/
def P7532659118635171870.Spec : Prop :=
  ∀ n, (P7532659118635171870.a n : ℤ) = A264898 (n + 1)

end A264898

/-! ## A264898.P2953846347432262898

`lt[A005408(lcm(2, A264893(n))), 2]`
-/

namespace A264898.P2953846347432262898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.lcm 2 (A264893 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A264898.P2953846347432262898

namespace A264898

/-- `lt[A005408(lcm(2, A264893(n))), 2]` -/
def P2953846347432262898.Spec : Prop :=
  ∀ n, (P2953846347432262898.a n : ℤ) = A264898 (n + 1)

end A264898

/-! ## A264898.P9597515826840481462

`lt[A005382(abs(A264893(n))+2)-3, 2]`
-/

namespace A264898.P9597515826840481462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (|A264893 n| + 2).toNat - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A264898.P9597515826840481462

namespace A264898

/-- `lt[A005382(abs(A264893(n))+2)-3, 2]` -/
def P9597515826840481462.Spec : Prop :=
  ∀ n, (P9597515826840481462.a n : ℤ) = A264898 (n + 1)

end A264898

/-! ## A264898.P5324209188490317790

`lt[(A005382(n+1)*A264893(n))², 1]`
-/

namespace A264898.P5324209188490317790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005382 (n + 1) * A264893 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A264898.P5324209188490317790

namespace A264898

/-- `lt[(A005382(n+1)*A264893(n))², 1]` -/
def P5324209188490317790.Spec : Prop :=
  ∀ n, (P5324209188490317790.a n : ℤ) = A264898 (n + 1)

end A264898

/-!
# A264899: Number of nonisomorphic n-element left regular bands.

The programs for A264899, there is no canonical definition to state claims against.
-/

/-! ## A264899.P1145281944723679364

`∑[A075254(A005144(n+2))]`
-/

namespace A264899.P1145281944723679364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (A005144 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264899.P1145281944723679364

/-! ## A264899.P15273016734011215876

`A255072(A078531(n)+n²)`
-/

namespace A264899.P15273016734011215876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A078531 n + (n ^ 2 : ℤ)).toNat

end

end A264899.P15273016734011215876

