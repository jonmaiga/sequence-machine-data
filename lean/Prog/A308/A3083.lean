import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A308302: Number of integer-sided triangles with perimeter n and at least one nonsquare side length.

The programs for A308302, there is no canonical definition to state claims against.
-/

/-! ## A308302.P10229931454215439935

`A005044(n+1)-A308064(n+1)`
-/

namespace A308302.P10229931454215439935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308064 (n + 1)

end

end A308302.P10229931454215439935

/-! ## A308302.P8565446588342632052

`A308066(2*(n+1))-A308064(n+1)`
-/

namespace A308302.P8565446588342632052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (2 * (n + 1)) - A308064 (n + 1)

end

end A308302.P8565446588342632052

/-! ## A308302.P12128489719285377176

`A308067(n+1)+A308068(n+1)-A308064(n+1)`
-/

namespace A308302.P12128489719285377176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (n + 1) + (A308068 (n + 1) - A308064 (n + 1))

end

end A308302.P12128489719285377176

/-!
# A308303: Number of integer-sided triangles with perimeter n and at least one even side length.

The programs for A308303, the canonical program `A308303.P1012122925679025049` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308303 has offset 1).

The definition of A308303 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308066, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308303.P1012122925679025049

`A005044(n+1)-A308066(n+4)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A308303

/-- `A005044(n+1)-A308066(n+4)` -/
def P1012122925679025049.Spec : Prop :=
  ∀ n, P1012122925679025049.a n = A308303 (n + 1)

theorem P1012122925679025049.correct : P1012122925679025049.Spec := by
  intro n
  simp only [A308303, Nat.add_sub_cancel]

end A308303

/-! ## A308303.P9990498970836018825

`A308066(n+1)+A002620(A008624(n))`
-/

namespace A308303.P9990498970836018825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (n + 1) + A002620 (A008624 n).toNat

end

end A308303.P9990498970836018825

namespace A308303

/-- `A308066(n+1)+A002620(A008624(n))` -/
def P9990498970836018825.Spec : Prop :=
  ∀ n, P9990498970836018825.a n = A308303 (n + 1)

end A308303

/-! ## A308303.P6045258042459833306

`A005044(n+1)-A005044(A027656(n)+1)`
-/

namespace A308303.P6045258042459833306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A005044 (A027656 n + 1).toNat

end

end A308303.P6045258042459833306

namespace A308303

/-- `A005044(n+1)-A005044(A027656(n)+1)` -/
def P6045258042459833306.Spec : Prop :=
  ∀ n, P6045258042459833306.a n = A308303 (n + 1)

end A308303

/-! ## A308303.P1320484811330388442

`A005044(n+1)-A005044(A110514(n)+1)`
-/

namespace A308303.P1320484811330388442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A005044 (A110514 n + 1).toNat

end

end A308303.P1320484811330388442

namespace A308303

/-- `A005044(n+1)-A005044(A110514(n)+1)` -/
def P1320484811330388442.Spec : Prop :=
  ∀ n, P1320484811330388442.a n = A308303 (n + 1)

end A308303

/-! ## A308303.P2996904359780702998

`A005044(n+1)-A005044(A142150(n)+2)`
-/

namespace A308303.P2996904359780702998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A005044 (A142150 n + 2).toNat

end

end A308303.P2996904359780702998

namespace A308303

/-- `A005044(n+1)-A005044(A142150(n)+2)` -/
def P2996904359780702998.Spec : Prop :=
  ∀ n, P2996904359780702998.a n = A308303 (n + 1)

end A308303

/-! ## A308303.P10033987842583705696

`A005044(n+1)-A005044(A152271(n+3))`
-/

namespace A308303.P10033987842583705696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A005044 (A152271 (n + 3)).toNat

end

end A308303.P10033987842583705696

namespace A308303

/-- `A005044(n+1)-A005044(A152271(n+3))` -/
def P10033987842583705696.Spec : Prop :=
  ∀ n, P10033987842583705696.a n = A308303 (n + 1)

end A308303

/-! ## A308303.P11869751400947476660

`A005044(n+1)-A005044(A057979(n+5))`
-/

namespace A308303.P11869751400947476660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A005044 (A057979 (n + 5)).toNat

end

end A308303.P11869751400947476660

namespace A308303

/-- `A005044(n+1)-A005044(A057979(n+5))` -/
def P11869751400947476660.Spec : Prop :=
  ∀ n, P11869751400947476660.a n = A308303 (n + 1)

end A308303

/-! ## A308303.P16762385804794002558

`Δ[A026810(n+1)-A026810(A004526(n+5))]`
-/

namespace A308303.P16762385804794002558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) - A026810 (A004526 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308303.P16762385804794002558

namespace A308303

/-- `Δ[A026810(n+1)-A026810(A004526(n+5))]` -/
def P16762385804794002558.Spec : Prop :=
  ∀ n, P16762385804794002558.a n = A308303 (n + 1)

end A308303

/-! ## A308303.P14911371109497118010

`A005044(A152271(n))+A002620(A008624(n))`
-/

namespace A308303.P14911371109497118010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A152271 n).toNat + A002620 (A008624 n).toNat

end

end A308303.P14911371109497118010

namespace A308303

/-- `A005044(A152271(n))+A002620(A008624(n))` -/
def P14911371109497118010.Spec : Prop :=
  ∀ n, P14911371109497118010.a n = A308303 (n + 1)

end A308303

/-!
# A308304: a(n) = (i^n)*Sum_{k=0..n} B_k*|s(n+1,k+1)|*(n+1)^k.

The programs for A308304, there is no canonical definition to state claims against.
-/

/-! ## A308304.P6322678945546739475

`abs(A339207(A000124(n+1)))`
-/

namespace A308304.P6322678945546739475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339207 (A000124 (n + 1)).toNat|

end

end A308304.P6322678945546739475

/-! ## A308304.P11495849551853485622

`A064770(A000272(n))*A386891(n)`
-/

namespace A308304.P11495849551853485622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A000272 n).toNat * A386891 n

end

end A308304.P11495849551853485622

/-!
# A308305: a(n) = s(n,n) + s(n,n-1) + s(n,n-2), where s(n,k) are the unsigned Stirling numbers of the first kind (see A132393).

The programs for A308305, the canonical program `A308305.P1502872551374991710` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308305 has offset 1).

The definition of A308305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308305.P14521722306890429665

`1/24*(24-14*(n+1)+21*(n+1)²-10*(n+1)^3+3*(n+1)^4)`
-/

namespace A308305.P14521722306890429665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (24 - (14 * (n + 1) : ℤ) + (21 * (n + 1) ^ 2 : ℤ) - (10 * (n + 1) ^ 3 : ℤ) + (3 * (n + 1) ^ 4 : ℤ) : ℚ)

end

end A308305.P14521722306890429665

namespace A308305

/-- `1/24*(24-14*(n+1)+21*(n+1)²-10*(n+1)^3+3*(n+1)^4)` -/
def P14521722306890429665.Spec : Prop :=
  ∀ n, P14521722306890429665.a n = (A308305 (n + 1) : ℚ)

theorem P14521722306890429665.correct : P14521722306890429665.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A308305, Nat.add_sub_cancel, A308305.P14521722306890429665.a, A308305.P1502872551374991710.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A308305, Nat.add_sub_cancel, A308305.P14521722306890429665.a, A308305.P1502872551374991710.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A308305

/-! ## A308305.P1502872551374991710

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=18, a(4)=46`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308305

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1502872551374991710.Spec : Prop :=
  ∀ n, P1502872551374991710.a n = A308305 (n + 1)

theorem P1502872551374991710.correct : P1502872551374991710.Spec := by
  intro n
  simp only [A308305, Nat.add_sub_cancel]

end A308305

/-! ## A308305.P1131434244042868463

`∑[n*C(n, 2)+n]+1`
-/

namespace A308305.P1131434244042868463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A308305.P1131434244042868463

namespace A308305

/-- `∑[n*C(n, 2)+n]+1` -/
def P1131434244042868463.Spec : Prop :=
  ∀ n, (P1131434244042868463.a n : ℤ) = A308305 (n + 1)

end A308305

/-! ## A308305.P9584159895618554261

`∑[A218152(n)]-n`
-/

namespace A308305.P9584159895618554261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A308305.P9584159895618554261

namespace A308305

/-- `∑[A218152(n)]-n` -/
def P9584159895618554261.Spec : Prop :=
  ∀ n, P9584159895618554261.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P15630789781594359489

`A144335(n+1)-∑[n²]`
-/

namespace A308305.P15630789781594359489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144335 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A308305.P15630789781594359489

namespace A308305

/-- `A144335(n+1)-∑[n²]` -/
def P15630789781594359489.Spec : Prop :=
  ∀ n, P15630789781594359489.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P16046831347712543215

`∑[(C(n, 2)+1)*A028310(n)]`
-/

namespace A308305.P16046831347712543215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1 : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308305.P16046831347712543215

namespace A308305

/-- `∑[(C(n, 2)+1)*A028310(n)]` -/
def P16046831347712543215.Spec : Prop :=
  ∀ n, P16046831347712543215.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P17580443449821843831

`(∑[(∑[n-1]+2)*A004277(n)]+1)/2`
-/

namespace A308305.P17580443449821843831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 2) * A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A308305.P17580443449821843831

namespace A308305

/-- `(∑[(∑[n-1]+2)*A004277(n)]+1)/2` -/
def P17580443449821843831.Spec : Prop :=
  ∀ n, P17580443449821843831.a n = (A308305 (n + 1) : ℚ)

end A308305

/-! ## A308305.P5959490556817828818

`A090809(n)+A000125(n)`
-/

namespace A308305.P5959490556817828818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 n + A000125 n

end

end A308305.P5959490556817828818

namespace A308305

/-- `A090809(n)+A000125(n)` -/
def P5959490556817828818.Spec : Prop :=
  ∀ n, P5959490556817828818.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P9991072384088564962

`A056520(n)+A050534(n)`
-/

namespace A308305.P9991072384088564962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n + A050534 n

end

end A308305.P9991072384088564962

namespace A308305

/-- `A056520(n)+A050534(n)` -/
def P9991072384088564962.Spec : Prop :=
  ∀ n, P9991072384088564962.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P1600274813033636907

`A145127(n)-A057703(n)`
-/

namespace A308305.P1600274813033636907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n - A057703 n

end

end A308305.P1600274813033636907

namespace A308305

/-- `A145127(n)-A057703(n)` -/
def P1600274813033636907.Spec : Prop :=
  ∀ n, P1600274813033636907.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P2770540424400598640

`A267707(n)-A000292(n)`
-/

namespace A308305.P2770540424400598640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n - A000292 n

end

end A308305.P2770540424400598640

namespace A308305

/-- `A267707(n)-A000292(n)` -/
def P2770540424400598640.Spec : Prop :=
  ∀ n, P2770540424400598640.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P17137664863661442435

`∑[A006000(A028310(n)-1)]`
-/

namespace A308305.P17137664863661442435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308305.P17137664863661442435

namespace A308305

/-- `∑[A006000(A028310(n)-1)]` -/
def P17137664863661442435.Spec : Prop :=
  ∀ n, P17137664863661442435.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P17973727883944213332

`∑[A341768(n)+A008486(n)]`
-/

namespace A308305.P17973727883944213332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341768 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308305.P17973727883944213332

namespace A308305

/-- `∑[A341768(n)+A008486(n)]` -/
def P17973727883944213332.Spec : Prop :=
  ∀ n, P17973727883944213332.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P6290101081734928889

`A004255(n+1)-A004006(n)`
-/

namespace A308305.P6290101081734928889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004255 (n + 1) - A004006 n

end

end A308305.P6290101081734928889

namespace A308305

/-- `A004255(n+1)-A004006(n)` -/
def P6290101081734928889.Spec : Prop :=
  ∀ n, P6290101081734928889.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P568934006319905729

`A027927(n+2)+A002415(n)`
-/

namespace A308305.P568934006319905729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2) + A002415 n

end

end A308305.P568934006319905729

namespace A308305

/-- `A027927(n+2)+A002415(n)` -/
def P568934006319905729.Spec : Prop :=
  ∀ n, P568934006319905729.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P2492424188033137259

`A130218(n+1)-A006527(n)`
-/

namespace A308305.P2492424188033137259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130218 (n + 1) - A006527 n

end

end A308305.P2492424188033137259

namespace A308305

/-- `A130218(n+1)-A006527(n)` -/
def P2492424188033137259.Spec : Prop :=
  ∀ n, P2492424188033137259.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P8467289864052146480

`A228394(n+1)-A050534(n)`
-/

namespace A308305.P8467289864052146480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228394 (n + 1) - A050534 n

end

end A308305.P8467289864052146480

namespace A308305

/-- `A228394(n+1)-A050534(n)` -/
def P8467289864052146480.Spec : Prop :=
  ∀ n, P8467289864052146480.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P16527299220727195869

`A241765(n)-A087908(n+1)`
-/

namespace A308305.P16527299220727195869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241765 n - A087908 (n + 1)

end

end A308305.P16527299220727195869

namespace A308305

/-- `A241765(n)-A087908(n+1)` -/
def P16527299220727195869.Spec : Prop :=
  ∀ n, P16527299220727195869.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P5678683039589633481

`abs(A144335(n+1)-A000330(n))`
-/

namespace A308305.P5678683039589633481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144335 (n + 1) - A000330 n|

end

end A308305.P5678683039589633481

namespace A308305

/-- `abs(A144335(n+1)-A000330(n))` -/
def P5678683039589633481.Spec : Prop :=
  ∀ n, P5678683039589633481.a n = A308305 (n + 1)

end A308305

/-! ## A308305.P10354775278936764877

`∑[A028310(n)*A152947(n+1)]`
-/

namespace A308305.P10354775278936764877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A152947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308305.P10354775278936764877

namespace A308305

/-- `∑[A028310(n)*A152947(n+1)]` -/
def P10354775278936764877.Spec : Prop :=
  ∀ n, P10354775278936764877.a n = A308305 (n + 1)

end A308305

/-!
# A308306: Boomerang numbers: their last digit "comes back" to occupy the place of their first digit (see the Comments section for the explanation).

The programs for A308306, there is no canonical definition to state claims against.
-/

/-! ## A308306.P7771255529451093560

`eq[1, A325775(A028310(n))+2]`
-/

namespace A308306.P7771255529451093560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325775 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308306.P7771255529451093560

/-! ## A308306.P15273292975773521154

`eq[A057428(n), A325775(n+1)]+1`
-/

namespace A308306.P15273292975773521154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A308306.P15273292975773521154

/-! ## A308306.P5314916440714774585

`eq[A057428(n), A325775(A028310(n))]`
-/

namespace A308306.P5314916440714774585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325775 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308306.P5314916440714774585

/-! ## A308306.P11071616189595659121

`eq[A057428(n), A325775(A233583(n+1))]`
-/

namespace A308306.P11071616189595659121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325775 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308306.P11071616189595659121

/-! ## A308306.P9184990714471016265

`A341012(A187829(n+1)+12)`
-/

namespace A308306.P9184990714471016265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341012 (A187829 (n + 1) + 12).toNat

end

end A308306.P9184990714471016265

/-!
# A308307: Number of integer-sided triangles with perimeter n and at least one side length that is not semiprime.

The programs for A308307, there is no canonical definition to state claims against.
-/

/-! ## A308307.P2339778564471583598

`A005044(n+1)-A308069(n+1)`
-/

namespace A308307.P2339778564471583598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308069 (n + 1)

end

end A308307.P2339778564471583598

/-! ## A308307.P4381129557938443833

`A308066(2*(n+1))-A308069(n+1)`
-/

namespace A308307.P4381129557938443833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (2 * (n + 1)) - A308069 (n + 1)

end

end A308307.P4381129557938443833

/-! ## A308307.P11382119832042710294

`A308089(n+1)/(n+1)-A308069(n+1)`
-/

namespace A308307.P11382119832042710294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308089 (n + 1) : ℚ) / (n + 1 : ℚ) - (A308069 (n + 1) : ℚ)

end

end A308307.P11382119832042710294

/-! ## A308307.P8451676863286443137

`A308067(n+1)+A308068(n+1)-A308069(n+1)`
-/

namespace A308307.P8451676863286443137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (n + 1) + (A308068 (n + 1) - A308069 (n + 1))

end

end A308307.P8451676863286443137

/-! ## A308307.P18387867668556538654

`A124748(A116901(n))`
-/

namespace A308307.P18387867668556538654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 (A116901 n).toNat

end

end A308307.P18387867668556538654

/-!
# A308308: Number of integer-sided triangles with perimeter n and at least one pair of side lengths that are not coprime.

The programs for A308308, there is no canonical definition to state claims against.
-/

/-! ## A308308.P17089977966515161649

`A005044(n+1)-A308074(n+1)`
-/

namespace A308308.P17089977966515161649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308074 (n + 1)

end

end A308308.P17089977966515161649

/-! ## A308308.P343352043634936147

`A005044(n+1)-(A024161(n+1)+char[2])`
-/

namespace A308308.P343352043634936147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A024161 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A308308.P343352043634936147

/-! ## A308308.P11039484521426592061

`A005044(n+1)-(A185012(n)+A024161(n+1))`
-/

namespace A308308.P11039484521426592061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A185012 n + A024161 (n + 1))

end

end A308308.P11039484521426592061

/-! ## A308308.P5353479444587936900

`A005044(n+1)-A024161(n+1)^dr(A288697(n))`
-/

namespace A308308.P5353479444587936900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A024161 (n + 1) ^ SequenceMachineLib.digitalRoot (A288697 n)

end

end A308308.P5353479444587936900

/-! ## A308308.P15273512995555472170

`Δ[A026810(n+1)]-A308074(n+1)`
-/

namespace A308308.P15273512995555472170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A308074 (n + 1)

end

end A308308.P15273512995555472170

/-! ## A308308.P16209076687858585744

`A308067(n+1)+A308068(n+1)-A308074(n+1)`
-/

namespace A308308.P16209076687858585744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (n + 1) + (A308068 (n + 1) - A308074 (n + 1))

end

end A308308.P16209076687858585744

/-!
# A308309: Number of maximal matchings in the n X n fiveleaper graph.

The programs for A308309, there is no canonical definition to state claims against.
-/

/-! ## A308309.P8944213992548037838

`A000010(A332930(C(n, 2)))`
-/

namespace A308309.P8944213992548037838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A332930 (Nat.choose n 2)).toNat

end

end A308309.P8944213992548037838

/-! ## A308309.P13810378426570250027

`A086247(or(A305923(n), A332711(n)))`
-/

namespace A308309.P13810378426570250027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086247 (Int.lor (A305923 n) (A332711 n)).toNat

end

end A308309.P13810378426570250027

/-!
# A308310: Number of maximum matchings in the n X n fiveleaper graph.

The programs for A308310, there is no canonical definition to state claims against.
-/

/-! ## A308310.P16990625587647114860

`∏[A091391(floor(6/7*C(n, 3)))]`
-/

namespace A308310.P16990625587647114860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091391 ⌊(6 : ℚ) / 7 * (Nat.choose n 3 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308310.P16990625587647114860

/-! ## A308310.P3486170620901961349

`∏[A189905(n+1)^floor(n/4)]`
-/

namespace A308310.P3486170620901961349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189905 (n + 1) : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308310.P3486170620901961349

/-! ## A308310.P2122795942855219339

`∏[C(A189161(n+1), floor(n/4))]`
-/

namespace A308310.P2122795942855219339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A189161 (n + 1)).toNat ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308310.P2122795942855219339

/-!
# A308313: a(n) = Sum_{k=1..n} (-1)^(n-k) * k^n * floor(n/k).

The programs for A308313, there is no canonical definition to state claims against.
-/

/-! ## A308313.P17104022686782450418

`abs(A366919(n+1))`
-/

namespace A308313.P17104022686782450418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A366919 (n + 1)|

end

end A308313.P17104022686782450418

/-! ## A308313.P9504730357682698096

`gcd((A005843(n)+n)%3, A366919(n+1))`
-/

namespace A308313.P9504730357682698096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A005843 n + (n : ℤ)) 3) (A366919 (n + 1))

end

end A308313.P9504730357682698096

/-! ## A308313.P5506582279112965806

`gcd(A357637(A000384(n)), A366919(n+1))`
-/

namespace A308313.P5506582279112965806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A357637 (A000384 n).toNat) (A366919 (n + 1))

end

end A308313.P5506582279112965806

/-!
# A308316: Numbers m such that q = 2^m - 1 and r = m^2 + m + 1 are both primes.

The programs for A308316, there is no canonical definition to state claims against.
-/

/-! ## A308316.P4899948406644177518

`∩[A000043(n+1), A342690(n+1)]`
-/

namespace A308316.P4899948406644177518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308316.P4899948406644177518

/-! ## A308316.P4249700400954124693

`filter[A000043(n+1), A355938(#)]`
-/

namespace A308316.P4249700400954124693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A308316.P4249700400954124693

/-! ## A308316.P1931509054303322911

`filter[A366029(n+1), A355938(#)]`
-/

namespace A308316.P1931509054303322911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A308316.P1931509054303322911

/-!
# A308317: Multiplicative with a(prime(k)^e) = A005117(e+1)^(2^(k-1)).

The programs for A308317, there is no canonical definition to state claims against.
-/

/-! ## A308317.P2161618645524081739

`A318363(n+1)-A001221(A008835(n+1))`
-/

namespace A308317.P2161618645524081739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318363 (n + 1) - A001221 (A008835 (n + 1)).toNat

end

end A308317.P2161618645524081739

/-! ## A308317.P12696151295911140724

`A318363(n+1)-A011371(A317946(n+1))`
-/

namespace A308317.P12696151295911140724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318363 (n + 1) - A011371 (A317946 (n + 1)).toNat

end

end A308317.P12696151295911140724

/-! ## A308317.P8449747088338300294

`A318363(n+1)-A011371(A318499(n+1))`
-/

namespace A308317.P8449747088338300294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318363 (n + 1) - A011371 (A318499 (n + 1)).toNat

end

end A308317.P8449747088338300294

/-! ## A308317.P3842759524708930933

`A318363(n+1)-A160086(A336321(n+1))`
-/

namespace A308317.P3842759524708930933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318363 (n + 1) - A160086 (A336321 (n + 1)).toNat

end

end A308317.P3842759524708930933

/-! ## A308317.P8694641326201014662

`A318363(n+1)-A318329(A318314(n+1))`
-/

namespace A308317.P8694641326201014662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318363 (n + 1) - A318329 (A318314 (n + 1)).toNat

end

end A308317.P8694641326201014662

/-!
# A308318: Number of integer-sided triangles with perimeter n and at least one nonprime side length.

The programs for A308318, there is no canonical definition to state claims against.
-/

/-! ## A308318.P559183387697791962

`A005044(n+1)-A070088(n+1)`
-/

namespace A308318.P559183387697791962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A070088 (n + 1)

end

end A308318.P559183387697791962

/-! ## A308318.P7281234908883939420

`A211540(A060762(n+2))-A070088(n+1)`
-/

namespace A308318.P7281234908883939420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A060762 (n + 2)).toNat - A070088 (n + 1)

end

end A308318.P7281234908883939420

/-! ## A308318.P2403305195042879718

`A005044(n+1)-(A070092(n+1)+A070090(n+1))`
-/

namespace A308318.P2403305195042879718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A070092 (n + 1) + A070090 (n + 1))

end

end A308318.P2403305195042879718

/-! ## A308318.P2102156119255383549

`A005044(n+1)-(A070103(n+1)+A070095(n+1))`
-/

namespace A308318.P2102156119255383549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A070103 (n + 1) + A070095 (n + 1))

end

end A308318.P2102156119255383549

/-! ## A308318.P5024693417948731970

`A005044(n+1)-(A070090(n+1)+A070108(n+1)+A070100(n+1))`
-/

namespace A308318.P5024693417948731970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A070090 (n + 1) + (A070108 (n + 1) + A070100 (n + 1)))

end

end A308318.P5024693417948731970

/-! ## A308318.P11482386188786078821

`A005044(n+1)-A308165(n+1)%A065033(2*n)`
-/

namespace A308318.P11482386188786078821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - Int.tmod (A308165 (n + 1)) (A065033 (2 * n))

end

end A308318.P11482386188786078821

/-! ## A308318.P6059677702707019671

`A337086(n+1)+A337087(n+1)-A070088(n+1)`
-/

namespace A308318.P6059677702707019671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337086 (n + 1) + (A337087 (n + 1) - A070088 (n + 1))

end

end A308318.P6059677702707019671

/-!
# A308323: a(n) = Sum_{i_1=0..n} Sum_{i_2=0..n} ... Sum_{i_n=0..n} (-1)^(i_1 + i_2 + ... + i_n) * multinomial(i_1 + i_2 + ... + i_n; i_1, i_2, ..., i_n).

The programs for A308323, there is no canonical definition to state claims against.
-/

/-! ## A308323.P14595055951622165664

`A308322(∑[4*n])`
-/

namespace A308323.P14595055951622165664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308323.P14595055951622165664

/-!
# A308324: Numbers which can be written in the form m^k - m with m an odd prime and k a positive integer.

The programs for A308324, there is no canonical definition to state claims against.
-/

/-! ## A308324.P442393997135491103

`record[A008475(2*n+3)-A286517(n+1)]`
-/

namespace A308324.P442393997135491103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (2 * n + 3) - A286517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308324.P442393997135491103

/-! ## A308324.P16924367195874233460

`A073759(A244623(n+1)%A223654(n+1))`
-/

namespace A308324.P16924367195874233460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073759 (Int.tmod (A244623 (n + 1)) (A223654 (n + 1))).toNat

end

end A308324.P16924367195874233460

/-! ## A308324.P12799236206638083253

`A331176(A244623(n+1))%A331706(n+3)`
-/

namespace A308324.P12799236206638083253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331176 (A244623 (n + 1)).toNat) (A331706 (n + 3))

end

end A308324.P12799236206638083253

/-! ## A308324.P3914381382528309073

`A073759(A000043(n+1))+A073759(A244623(n+1))`
-/

namespace A308324.P3914381382528309073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073759 (A000043 (n + 1)).toNat + A073759 (A244623 (n + 1)).toNat

end

end A308324.P3914381382528309073

/-! ## A308324.P10461349449111550225

`record[A343249(n+1)-A006530(n+1)]`
-/

namespace A308324.P10461349449111550225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343249 (n + 1) - A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308324.P10461349449111550225

/-!
# A308325: a(n) = Sum_{i=0..n} Sum_{j=0..n} Sum_{k=0..n} Sum_{l=0..n} Sum_{m=0..n} (-1)^(i+j+k+l+m) * (i+j+k+l+m)!/(i!*j!*k!*l!*m!).

The programs for A308325, there is no canonical definition to state claims against.
-/

/-! ## A308325.P1988240207741937249

`A308322(eq[5, A025581(n)])`
-/

namespace A308325.P1988240207741937249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308325.P1988240207741937249

/-!
# A308327: a(n) = (1/n!) * Sum_{i_1=1..n} Sum_{i_2=1..n} ... Sum_{i_n=1..n} (-1)^(i_1 + i_2 + ... + i_n) * multinomial(i_1 + i_2 + ... + i_n; i_1, i_2, ..., i_n).

The programs for A308327, there is no canonical definition to state claims against.
-/

/-! ## A308327.P2195028746534554652

`A308356(∑[4*n])`
-/

namespace A308327.P2195028746534554652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308327.P2195028746534554652

/-!
# A308328: Inverse permutation to A308317.

The programs for A308328, there is no canonical definition to state claims against.
-/

/-! ## A308328.P8548117638014407860

`A293442(n+1)^A046951(A225546(n+1))`
-/

namespace A308328.P8548117638014407860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293442 (n + 1) : ℚ) ^ (A046951 (A225546 (n + 1)).toNat : ℤ)

end

end A308328.P8548117638014407860

/-! ## A308328.P13988301064518176505

`A293442(n+1)^A102095(A181811(n+1))`
-/

namespace A308328.P13988301064518176505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293442 (n + 1) : ℚ) ^ (A102095 (A181811 (n + 1)).toNat : ℤ)

end

end A308328.P13988301064518176505

/-! ## A308328.P764189875426486221

`A318470(n+1)^A046951(A225546(n+1))`
-/

namespace A308328.P764189875426486221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318470 (n + 1) : ℚ) ^ (A046951 (A225546 (n + 1)).toNat : ℤ)

end

end A308328.P764189875426486221

/-! ## A308328.P451488560825944246

`A293442(n+1)^A046951(A318363(n+1))`
-/

namespace A308328.P451488560825944246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293442 (n + 1) : ℚ) ^ (A046951 (A318363 (n + 1)).toNat : ℤ)

end

end A308328.P451488560825944246

/-!
# A308329: Even moments of the trace of elements of the binary icosahedral group.

The programs for A308329, the canonical program `A308329.P6455693449482168076` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308329 has offset 0).

The definition of A308329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308329.P6455693449482168076

`8*a(n-1)-20*a(n-2)+17*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308329

/-- `8*a(n-1)-20*a(n-2)+17*a(n-3)-4*a(n-4)` -/
def P6455693449482168076.Spec : Prop :=
  ∀ n, P6455693449482168076.a n = A308329 n

theorem P6455693449482168076.correct : P6455693449482168076.Spec := by
  intro n
  simp only [A308329]

end A308329

/-! ## A308329.P781088336193905521

`A202061(n)+A178798(A073776(n))`
-/

namespace A308329.P781088336193905521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202061 n + A178798 (A073776 n).toNat

end

end A308329.P781088336193905521

namespace A308329

/-- `A202061(n)+A178798(A073776(n))` -/
def P781088336193905521.Spec : Prop :=
  ∀ n, P781088336193905521.a n = A308329 n

end A308329

/-! ## A308329.P5999293287489401889

`A202061(n)+A143067(A309861(n))`
-/

namespace A308329.P5999293287489401889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202061 n + A143067 (A309861 n).toNat

end

end A308329.P5999293287489401889

namespace A308329

/-- `A202061(n)+A143067(A309861(n))` -/
def P5999293287489401889.Spec : Prop :=
  ∀ n, P5999293287489401889.a n = A308329 n

end A308329

/-! ## A308329.P3568460490369682541

`A202061(n)-A082858(A001405(n))`
-/

namespace A308329.P3568460490369682541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202061 n - A082858 (A001405 n).toNat

end

end A308329.P3568460490369682541

namespace A308329

/-- `A202061(n)-A082858(A001405(n))` -/
def P3568460490369682541.Spec : Prop :=
  ∀ n, P3568460490369682541.a n = A308329 n

end A308329

/-! ## A308329.P15715545579029087567

`A202061(n)-A086011(A000110(n))`
-/

namespace A308329.P15715545579029087567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202061 n - A086011 (A000110 n).toNat

end

end A308329.P15715545579029087567

namespace A308329

/-- `A202061(n)-A086011(A000110(n))` -/
def P15715545579029087567.Spec : Prop :=
  ∀ n, P15715545579029087567.a n = A308329 n

end A308329

/-!
# A308331: a(n) = n! * [x^n] exp(exp(n*x)/(1 + x) - 1).

The programs for A308331, there is no canonical definition to state claims against.
-/

/-! ## A308331.P16376831843660617456

`A130497(A228277(n+1))-n`
-/

namespace A308331.P16376831843660617456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A228277 (n + 1)).toNat - (n : ℤ)

end

end A308331.P16376831843660617456

/-!
# A308332: a(n) = n! * [x^n] 1/(1 - x)^exp(n*x).

The programs for A308332, there is no canonical definition to state claims against.
-/

/-! ## A308332.P16418264105982350295

`n!*A112649(n!)`
-/

namespace A308332.P16418264105982350295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A112649 (Nat.factorial n)

end

end A308332.P16418264105982350295

/-!
# A308333: a(n) = n! * [x^n] (1 + x)^exp(n*x).

The programs for A308333, there is no canonical definition to state claims against.
-/

/-! ## A308333.P13197498626180329868

`A132857(n!²)`
-/

namespace A308333.P13197498626180329868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132857 (Nat.factorial n ^ 2)

end

end A308333.P13197498626180329868

/-!
# A308336: Expansion of e.g.f. exp(-1 + Product_{k>=1} (1 + x^k/k!)).

The programs for A308336, there is no canonical definition to state claims against.
-/

/-! ## A308336.P16642045484295635679

`A103221(or(A010842(n), A065342(3*n+1)))`
-/

namespace A308336.P16642045484295635679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor (A010842 n) (A065342 (3 * n + 1))).toNat

end

end A308336.P16642045484295635679

/-!
# A308337: Expansion of e.g.f. exp(-1 + Product_{k>=1} 1/(1 - x^k/k)).

The programs for A308337, there is no canonical definition to state claims against.
-/

/-! ## A308337.P11183298671992565888

`A121930(A323770(n))+1`
-/

namespace A308337.P11183298671992565888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121930 (A323770 n).toNat + 1

end

end A308337.P11183298671992565888

/-! ## A308337.P4804478818810790357

`A008611(A105217(n)+n)`
-/

namespace A308337.P4804478818810790357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A105217 n + (n : ℤ)).toNat

end

end A308337.P4804478818810790357

/-!
# A308338: Expansion of e.g.f. exp(-1 + Product_{k>=1} (1 + x^k/k)).

The programs for A308338, there is no canonical definition to state claims against.
-/

/-! ## A308338.P7205651809796772723

`n*A359908(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A308338.P7205651809796772723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) * A359908 (a (n - 1)).toNat

end

end A308338.P7205651809796772723

/-! ## A308338.P16676730557606560023

`A082583(A367236(n))`
-/

namespace A308338.P16676730557606560023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082583 (A367236 n).toNat

end

end A308338.P16676730557606560023

/-!
# A308339: Sphenic number indices of A215217.

The programs for A308339, the canonical program `A308339.P12363408473159488480` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308339 has offset 1).

The definition of A308339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308339.P12363408473159488480

`eq[1, A239656(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A308339

/-- `eq[1, A239656(n+1)]+1` -/
def P12363408473159488480.Spec : Prop :=
  ∀ n, (P12363408473159488480.a n : ℤ) = A308339 (n + 1)

theorem P12363408473159488480.correct : P12363408473159488480.Spec := by
  intro n
  simp only [A308339, Nat.add_sub_cancel]

end A308339

/-! ## A308339.P2759255774387942063

`A064839(A215217(n+1))`
-/

namespace A308339.P2759255774387942063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A215217 (n + 1)).toNat

end

end A308339.P2759255774387942063

namespace A308339

/-- `A064839(A215217(n+1))` -/
def P2759255774387942063.Spec : Prop :=
  ∀ n, P2759255774387942063.a n = A308339 (n + 1)

end A308339

/-! ## A308339.P11666601647779449795

`A065475(eq[1, A239656(n+1)])`
-/

namespace A308339.P11666601647779449795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308339.P11666601647779449795

namespace A308339

/-- `A065475(eq[1, A239656(n+1)])` -/
def P11666601647779449795.Spec : Prop :=
  ∀ n, P11666601647779449795.a n = A308339 (n + 1)

end A308339

/-! ## A308339.P11202962253909234130

`eq[13, A117621(A007304(n+1))]`
-/

namespace A308339.P11202962253909234130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (A007304 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308339.P11202962253909234130

namespace A308339

/-- `eq[13, A117621(A007304(n+1))]` -/
def P11202962253909234130.Spec : Prop :=
  ∀ n, (P11202962253909234130.a n : ℤ) = A308339 (n + 1)

end A308339

/-! ## A308339.P9419037138285280836

`eq[13, A117621(sqrt(A162143(n+1)))]`
-/

namespace A308339.P9419037138285280836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308339.P9419037138285280836

namespace A308339

/-- `eq[13, A117621(sqrt(A162143(n+1)))]` -/
def P9419037138285280836.Spec : Prop :=
  ∀ n, (P9419037138285280836.a n : ℤ) = A308339 (n + 1)

end A308339

/-! ## A308339.P9950556351826128825

`eq[13, A117621(root(A162144(n+1), 3))]`
-/

namespace A308339.P9950556351826128825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (SequenceMachineLib.roundAway ((A162144 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308339.P9950556351826128825

namespace A308339

/-- `eq[13, A117621(root(A162144(n+1), 3))]` -/
def P9950556351826128825.Spec : Prop :=
  ∀ n, (P9950556351826128825.a n : ℤ) = A308339 (n + 1)

end A308339

/-! ## A308339.P10032770148281669855

`eq[13, A117621(A162144(n+1)^(1/3))]`
-/

namespace A308339.P10032770148281669855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (SequenceMachineLib.roundAway ((A162144 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308339.P10032770148281669855

namespace A308339

/-- `eq[13, A117621(A162144(n+1)^(1/3))]` -/
def P10032770148281669855.Spec : Prop :=
  ∀ n, (P10032770148281669855.a n : ℤ) = A308339 (n + 1)

end A308339

/-! ## A308339.P16077072256200723545

`eq[A007304(n+1), A081761(A007304(n+1)-1)]`
-/

namespace A308339.P16077072256200723545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081761 (A007304 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308339.P16077072256200723545

namespace A308339

/-- `eq[A007304(n+1), A081761(A007304(n+1)-1)]` -/
def P16077072256200723545.Spec : Prop :=
  ∀ n, (P16077072256200723545.a n : ℤ) = A308339 (n + 1)

end A308339

/-! ## A308339.P12626342183073558361

`eq[13, A117621(A162144(n+1)/A162143(n+1))]`
-/

namespace A308339.P12626342183073558361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (SequenceMachineLib.roundAway ((A162144 (n + 1) : ℚ) / (A162143 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308339.P12626342183073558361

namespace A308339

/-- `eq[13, A117621(A162144(n+1)/A162143(n+1))]` -/
def P12626342183073558361.Spec : Prop :=
  ∀ n, (P12626342183073558361.a n : ℤ) = A308339 (n + 1)

end A308339

/-! ## A308339.P9236296336119749882

`eq[A007304(n+2), A007913(A007304(n+1)+1)]+1`
-/

namespace A308339.P9236296336119749882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007304 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A308339.P9236296336119749882

namespace A308339

/-- `eq[A007304(n+2), A007913(A007304(n+1)+1)]+1` -/
def P9236296336119749882.Spec : Prop :=
  ∀ n, (P9236296336119749882.a n : ℤ) = A308339 (n + 1)

end A308339

/-!
# A308340: Primes arising in A308334.

The programs for A308340, there is no canonical definition to state claims against.
-/

/-! ## A308340.P2229436962082464816

`or(A308334(n+1), A308334(n+2))`
-/

namespace A308340.P2229436962082464816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A308334 (n + 1)) (A308334 (n + 2))

end

end A308340.P2229436962082464816

/-!
# A308341: Hypotenuses of primitive Pythagorean triangles two sides of which are Pythagorean primes.

The programs for A308341, there is no canonical definition to state claims against.
-/

/-! ## A308341.P13982492504447870805

`record[A014442(A033205(n+1))]`
-/

namespace A308341.P13982492504447870805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A033205 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308341.P13982492504447870805

/-! ## A308341.P18042229318265661336

`record[A125256(A002144(n+1))]`
-/

namespace A308341.P18042229318265661336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A002144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308341.P18042229318265661336

/-! ## A308341.P4009432100700047337

`record[A125256(A172480(n+1))]`
-/

namespace A308341.P4009432100700047337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A172480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308341.P4009432100700047337

/-! ## A308341.P8504387539953408369

`record[A293958(A104636(n+1))]`
-/

namespace A308341.P8504387539953408369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A104636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308341.P8504387539953408369

/-! ## A308341.P17778275376066442264

`record[A125256(A002313(n+2))]`
-/

namespace A308341.P17778275376066442264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A002313 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308341.P17778275376066442264

/-!
# A308342: Number of ways to write 2*n as phi(x^2) + phi(y^2) + phi(z^2), where x,y,z are positive integers with x <= y <= z, and phi(.) is Euler's totient function (A000010).

The programs for A308342, there is no canonical definition to state claims against.
-/

/-! ## A308342.P11642899982065289651

`A001221(A205579(2*n)+A014192(n+1))`
-/

namespace A308342.P11642899982065289651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A205579 (2 * n) + A014192 (n + 1)).toNat

end

end A308342.P11642899982065289651

/-!
# A308343: a(n) is the difference between the number of zeros and the number of ones among the first n terms of the Ehrenfeucht-Mycielski sequence A038219.

The programs for A308343, there is no canonical definition to state claims against.
-/

/-! ## A308343.P6968556472358574771

`∑[or(1, -A038219(n+1))]`
-/

namespace A308343.P6968556472358574771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A038219 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308343.P6968556472358574771

/-! ## A308343.P7442466410305139067

`n+1-A005843(∑[A038219(n+1)])`
-/

namespace A308343.P7442466410305139067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308343.P7442466410305139067

/-! ## A308343.P9224735907168559708

`∑[round(cos(A007061(n+1)²))]`
-/

namespace A308343.P9224735907168559708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (A007061 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308343.P9224735907168559708

/-! ## A308343.P11904932920561765064

`∑[2-(A038219(n+1)+A007061(n+1))]`
-/

namespace A308343.P11904932920561765064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A038219 (n + 1) + A007061 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308343.P11904932920561765064

/-! ## A308343.P14826750197611421620

`∑[A033999(A099375(n)+A007061(n+1))]`
-/

namespace A308343.P14826750197611421620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A099375 n + A007061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308343.P14826750197611421620

/-! ## A308343.P14977054726526561531

`∑[A176040(2*n+1)-2*A038219(n+1)]`
-/

namespace A308343.P14977054726526561531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (2 * n + 1) - 2 * A038219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308343.P14977054726526561531

/-! ## A308343.P5634282682068084008

`A114327(∑[A007061(n+1)+n])`
-/

namespace A308343.P5634282682068084008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007061 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308343.P5634282682068084008

/-!
# A308344: a(n) = (A001359(n+1)^2 - 1)/24, where A001359 = lesser of twin primes; or: pentagonal numbers (A000326) whose indices are twin ranks (A002822).

The programs for A308344, the canonical program `A308344.P13252436012893602881` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308344 has offset 1).

The definition of A308344 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308344.P13243434998925949363

`(A001359(n+2)²-1)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A308344.P13243434998925949363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 2) ^ 2 - 1 : ℚ) / 24

end

end A308344.P13243434998925949363

namespace A308344

/-- `(A001359(n+2)²-1)/24` -/
def P13243434998925949363.Spec : Prop :=
  ∀ n, P13243434998925949363.a n = (A308344 (n + 1) : ℚ)

end A308344

/-! ## A308344.P13252436012893602881

`A000326(A002822(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A308344

/-- `A000326(A002822(n+1))` -/
def P13252436012893602881.Spec : Prop :=
  ∀ n, P13252436012893602881.a n = A308344 (n + 1)

theorem P13252436012893602881.correct : P13252436012893602881.Spec := by
  intro n
  simp only [A308344, Nat.add_sub_cancel]

end A308344

/-! ## A308344.P16356516247744216638

`A024702(A029707(n+2))`
-/

namespace A308344.P16356516247744216638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (A029707 (n + 2)).toNat

end

end A308344.P16356516247744216638

namespace A308344

/-- `A024702(A029707(n+2))` -/
def P16356516247744216638.Spec : Prop :=
  ∀ n, P16356516247744216638.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P7828487413168915502

`(A108570(n+2)-1)/24`
-/

namespace A308344.P7828487413168915502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108570 (n + 2) - 1 : ℚ) / 24

end

end A308344.P7828487413168915502

namespace A308344

/-- `(A108570(n+2)-1)/24` -/
def P7828487413168915502.Spec : Prop :=
  ∀ n, P7828487413168915502.a n = (A308344 (n + 1) : ℚ)

end A308344

/-! ## A308344.P6548261033140018287

`A134340(A153196(n+1))`
-/

namespace A308344.P6548261033140018287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134340 (A153196 (n + 1)).toNat

end

end A308344.P6548261033140018287

namespace A308344

/-- `A134340(A153196(n+1))` -/
def P6548261033140018287.Spec : Prop :=
  ∀ n, P6548261033140018287.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P2928212402436184874

`A245288(A167379(n+1))`
-/

namespace A308344.P2928212402436184874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (A167379 (n + 1)).toNat

end

end A308344.P2928212402436184874

namespace A308344

/-- `A245288(A167379(n+1))` -/
def P2928212402436184874.Spec : Prop :=
  ∀ n, P2928212402436184874.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P15661303175167582836

`A211538(A177139(n+1)+1)`
-/

namespace A308344.P15661303175167582836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (A177139 (n + 1) + 1).toNat

end

end A308344.P15661303175167582836

namespace A308344

/-- `A211538(A177139(n+1)+1)` -/
def P15661303175167582836.Spec : Prop :=
  ∀ n, P15661303175167582836.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P1895953123868080794

`A027626(A116958(n+1))`
-/

namespace A308344.P1895953123868080794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (A116958 (n + 1)).toNat

end

end A308344.P1895953123868080794

namespace A308344

/-- `A027626(A116958(n+1))` -/
def P1895953123868080794.Spec : Prop :=
  ∀ n, P1895953123868080794.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P5537119932161754569

`A087539(A040040(n+2))`
-/

namespace A308344.P5537119932161754569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087539 (A040040 (n + 2)).toNat

end

end A308344.P5537119932161754569

namespace A308344

/-- `A087539(A040040(n+2))` -/
def P5537119932161754569.Spec : Prop :=
  ∀ n, P5537119932161754569.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P956371489962651054

`A001840(A243811(n+2))`
-/

namespace A308344.P956371489962651054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A243811 (n + 2)).toNat

end

end A308344.P956371489962651054

namespace A308344

/-- `A001840(A243811(n+2))` -/
def P956371489962651054.Spec : Prop :=
  ∀ n, P956371489962651054.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P6193818388233798591

`A008799(A172057(n+1))`
-/

namespace A308344.P6193818388233798591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A172057 (n + 1)).toNat

end

end A308344.P6193818388233798591

namespace A308344

/-- `A008799(A172057(n+1))` -/
def P6193818388233798591.Spec : Prop :=
  ∀ n, P6193818388233798591.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P3143213914522538218

`A008742(A001359(n+2))`
-/

namespace A308344.P3143213914522538218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A001359 (n + 2)).toNat

end

end A308344.P3143213914522538218

namespace A308344

/-- `A008742(A001359(n+2))` -/
def P3143213914522538218.Spec : Prop :=
  ∀ n, P3143213914522538218.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P1633674684528468654

`A008799(A006512(n+2))`
-/

namespace A308344.P1633674684528468654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A006512 (n + 2)).toNat

end

end A308344.P1633674684528468654

namespace A308344

/-- `A008799(A006512(n+2))` -/
def P1633674684528468654.Spec : Prop :=
  ∀ n, P1633674684528468654.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P13269036779830793394

`A026923(A014574(n+2))`
-/

namespace A308344.P13269036779830793394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (A014574 (n + 2)).toNat

end

end A308344.P13269036779830793394

namespace A308344

/-- `A026923(A014574(n+2))` -/
def P13269036779830793394.Spec : Prop :=
  ∀ n, P13269036779830793394.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P1179876484232500683

`A008742(A111166(n+2))`
-/

namespace A308344.P1179876484232500683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A111166 (n + 2)).toNat

end

end A308344.P1179876484232500683

namespace A308344

/-- `A008742(A111166(n+2))` -/
def P1179876484232500683.Spec : Prop :=
  ∀ n, P1179876484232500683.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P1634798461970263324

`A026927(A144834(n+2))`
-/

namespace A308344.P1634798461970263324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026927 (A144834 (n + 2)).toNat

end

end A308344.P1634798461970263324

namespace A308344

/-- `A026927(A144834(n+2))` -/
def P1634798461970263324.Spec : Prop :=
  ∀ n, P1634798461970263324.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P2775910437947102682

`A308068(A054735(n+2))`
-/

namespace A308344.P2775910437947102682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308068 (A054735 (n + 2)).toNat

end

end A308344.P2775910437947102682

namespace A308344

/-- `A308068(A054735(n+2))` -/
def P2775910437947102682.Spec : Prop :=
  ∀ n, P2775910437947102682.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P18354275718329889616

`A308068(A082496(n+2))`
-/

namespace A308344.P18354275718329889616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308068 (A082496 (n + 2)).toNat

end

end A308344.P18354275718329889616

namespace A308344

/-- `A308068(A082496(n+2))` -/
def P18354275718329889616.Spec : Prop :=
  ∀ n, P18354275718329889616.a n = A308344 (n + 1)

end A308344

/-! ## A308344.P1412784053314886207

`A308067(A176810(n+2))`
-/

namespace A308344.P1412784053314886207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (A176810 (n + 2)).toNat

end

end A308344.P1412784053314886207

namespace A308344

/-- `A308067(A176810(n+2))` -/
def P1412784053314886207.Spec : Prop :=
  ∀ n, P1412784053314886207.a n = A308344 (n + 1)

end A308344

/-!
# A308345: Expansion of e.g.f. Sum_{k>=1} log(1/(1 - x^k/k)).

The programs for A308345, there is no canonical definition to state claims against.
-/

/-! ## A308345.P1778051763744223076

`A356661(n+1)/(n+1)`
-/

namespace A308345.P1778051763744223076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356661 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308345.P1778051763744223076

/-! ## A308345.P4191403358002377696

`∑[A300121(A052534(n))]`
-/

namespace A308345.P4191403358002377696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (A052534 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308345.P4191403358002377696

/-!
# A308347: n-th digit in the base-6 expansion of 1/n.

The programs for A308347, the canonical program `A308347.P169935265698401224` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308347 has offset 1).

The definition of A308347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308347.P169935265698401224

`floor(6^(n+1)/(n+1))%6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308347

/-- `floor(6^(n+1)/(n+1))%6` -/
def P169935265698401224.Spec : Prop :=
  ∀ n, P169935265698401224.a n = A308347 (n + 1)

theorem P169935265698401224.correct : P169935265698401224.Spec := by
  intro n
  simp only [A308347, Nat.add_sub_cancel]

end A308347

/-!
# A308349: Number of minimal unit-distance forbidden graph minors on n vertices.

The programs for A308349, there is no canonical definition to state claims against.
-/

/-! ## A308349.P5882557167780165639

`floor((∏[(n+1)/2]+12)/13)`
-/

namespace A308349.P5882557167780165639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∏ j ∈ Finset.range (n + 1), f1 j + 12) / 13⌋

end

end A308349.P5882557167780165639

/-! ## A308349.P5335099456493247515

`ogf((x^3-4x^4)/(1-5x+4x^2-2x^3))`
-/

namespace A308349.P5335099456493247515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, -4] [1, -5, 4, -2] n

end

end A308349.P5335099456493247515

/-! ## A308349.P7404585014380130717

`∑[4*a(n-1)+2]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0`
-/

namespace A308349.P7404585014380130717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 0, 0] fun n f1 =>
  4 * f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308349.P7404585014380130717

/-! ## A308349.P2912672575248932213

`ceil(A052703(n)/17)`
-/

namespace A308349.P2912672575248932213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052703 n : ℚ) / 17⌉

end

end A308349.P2912672575248932213

/-! ## A308349.P18030563221540533146

`∑[A284975(n²+2)]`
-/

namespace A308349.P18030563221540533146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284975 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308349.P18030563221540533146

/-!
# A308351: For n >= 2, a(n) = n*u(n-1) + n*(n-1)*u(n-2), where u = A292932; a(1)=1.

The programs for A308351, there is no canonical definition to state claims against.
-/

/-! ## A308351.P16330549801336659530

`A292933(n+1)+(n+1)*A292933(n)`
-/

namespace A308351.P16330549801336659530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292933 (n + 1) + (n + 1 : ℤ) * A292933 n

end

end A308351.P16330549801336659530

/-! ## A308351.P12789715657421273486

`A292934(n+1)+A292933(n+1)`
-/

namespace A308351.P12789715657421273486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292934 (n + 1) + A292933 (n + 1)

end

end A308351.P12789715657421273486

/-! ## A308351.P10140489318093217922

`(n+1)*(A292933(n)+A292932(n))`
-/

namespace A308351.P10140489318093217922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A292933 n + A292932 n)

end

end A308351.P10140489318093217922

/-! ## A308351.P15233831658029403285

`A292933(n+1)+A308354(n+1)+A308354(n+1)`
-/

namespace A308351.P15233831658029403285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292933 (n + 1) + (A308354 (n + 1) + A308354 (n + 1))

end

end A308351.P15233831658029403285

/-! ## A308351.P17937444430146826693

`A292932(n+1)+A292934(n+1)-A308352(n+1)`
-/

namespace A308351.P17937444430146826693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292932 (n + 1) + (A292934 (n + 1) - A308352 (n + 1))

end

end A308351.P17937444430146826693

/-! ## A308351.P17701885942564544140

`A308354(n+1)+A308362(n+1)-A308352(n+1)`
-/

namespace A308351.P17701885942564544140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308354 (n + 1) + (A308362 (n + 1) - A308352 (n + 1))

end

end A308351.P17701885942564544140

/-!
# A308352: Number of k-ary quasitrivial semigroups that have no neutral element on an n-element set.

The programs for A308352, there is no canonical definition to state claims against.
-/

/-! ## A308352.P9222474991580401176

`A292932(n+1)-A292933(n+1)`
-/

namespace A308352.P9222474991580401176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292932 (n + 1) - A292933 (n + 1)

end

end A308352.P9222474991580401176

/-! ## A308352.P12742087583802375810

`A292932(n+1)-(n+1)*A292932(n)`
-/

namespace A308352.P12742087583802375810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292932 (n + 1) - (n + 1 : ℤ) * A292932 n

end

end A308352.P12742087583802375810

/-! ## A308352.P10768677288953767073

`A292932(n+1)+A292934(n+1)-A308351(n+1)`
-/

namespace A308352.P10768677288953767073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292932 (n + 1) + (A292934 (n + 1) - A308351 (n + 1))

end

end A308352.P10768677288953767073

/-! ## A308352.P9161288983944978686

`A308362(n+1)-(A308354(n+1)+A292933(n+1))`
-/

namespace A308352.P9161288983944978686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308362 (n + 1) - (A308354 (n + 1) + A292933 (n + 1))

end

end A308352.P9161288983944978686

/-! ## A308352.P17850459594735522805

`A308354(n+1)+A308362(n+1)-A308351(n+1)`
-/

namespace A308352.P17850459594735522805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308354 (n + 1) + (A308362 (n + 1) - A308351 (n + 1))

end

end A308352.P17850459594735522805

/-!
# A308353: Minimal sum of integers filling an n X n square, as explained in the Comments and Example sections.

The programs for A308353, there is no canonical definition to state claims against.
-/

/-! ## A308353.P3241703224517453186

`∑[A056578(n)]-A373948(n+1)`
-/

namespace A308353.P3241703224517453186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A373948 (n + 1)

end

end A308353.P3241703224517453186

/-!
# A308354: Number of (2k+1)-ary quasitrivial semigroups that have two neutral elements on an n-element set.

The programs for A308354, there is no canonical definition to state claims against.
-/

/-! ## A308354.P5233973984231669601

`A292934(n+1)/2`
-/

namespace A308354.P5233973984231669601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292934 (n + 1) : ℚ) / 2

end

end A308354.P5233973984231669601

/-! ## A308354.P12278944949532120543

`(n+1)/2*A292933(n)`
-/

namespace A308354.P12278944949532120543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A292933 n : ℚ)

end

end A308354.P12278944949532120543

/-! ## A308354.P12804250568878131264

`record[A292934(A328628(n))/2]`
-/

namespace A308354.P12804250568878131264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292934 (A328628 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308354.P12804250568878131264

/-! ## A308354.P6699852548893577016

`∑[n]*A292932(abs(A023443(n)))`
-/

namespace A308354.P6699852548893577016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A292932 |A023443 n|.toNat

end

end A308354.P6699852548893577016

/-! ## A308354.P14710605126976348002

`A308362(n+1)-A292932(n+1)`
-/

namespace A308354.P14710605126976348002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308362 (n + 1) - A292932 (n + 1)

end

end A308354.P14710605126976348002

/-! ## A308354.P11815468035443160869

`A308362(n+1)-(A308352(n+1)+A292933(n+1))`
-/

namespace A308354.P11815468035443160869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308362 (n + 1) - (A308352 (n + 1) + A292933 (n + 1))

end

end A308354.P11815468035443160869

/-! ## A308354.P431901297811610813

`A308351(n+1)+A308352(n+1)-A308362(n+1)`
-/

namespace A308354.P431901297811610813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308351 (n + 1) + (A308352 (n + 1) - A308362 (n + 1))

end

end A308354.P431901297811610813

/-!
# A308355: Limiting row sequence of the array A128628.

The programs for A308355, there is no canonical definition to state claims against.
-/

/-! ## A308355.P13668765380737939794

`A238966(n)+1`
-/

namespace A308355.P13668765380737939794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 n + 1

end

end A308355.P13668765380737939794

/-! ## A308355.P4532908658766233300

`val(A062515(n), 2)+1`
-/

namespace A308355.P4532908658766233300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062515 n).toNat 2 + 1

end

end A308355.P4532908658766233300

/-! ## A308355.P12415302694111978933

`∑{e}[A129129(n), #]+1`
-/

namespace A308355.P12415302694111978933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A308355.P12415302694111978933

/-! ## A308355.P16802384901804229266

`A008619(2*A238966(n))`
-/

namespace A308355.P16802384901804229266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A238966 n).toNat

end

end A308355.P16802384901804229266

/-! ## A308355.P3175329211876034239

`A028242(2*A238966(n))`
-/

namespace A308355.P3175329211876034239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A238966 n).toNat

end

end A308355.P3175329211876034239

/-! ## A308355.P16096010991917353344

`A001222(A129129(n))+1`
-/

namespace A308355.P16096010991917353344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A129129 n).toNat + 1

end

end A308355.P16096010991917353344

/-! ## A308355.P13966536621592830811

`A000005(2^A238966(n))`
-/

namespace A308355.P13966536621592830811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A238966 n : ℤ))).toNat

end

end A308355.P13966536621592830811

/-! ## A308355.P11054243255858114698

`A001222(2*A129129(n))`
-/

namespace A308355.P11054243255858114698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A129129 n).toNat

end

end A308355.P11054243255858114698

/-! ## A308355.P4063717277681537546

`A001222(2*2^A238966(n))`
-/

namespace A308355.P4063717277681537546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A238966 n : ℤ))).toNat

end

end A308355.P4063717277681537546

/-! ## A308355.P15015202790358459583

`A073093(A129129(n))`
-/

namespace A308355.P15015202790358459583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A129129 n).toNat

end

end A308355.P15015202790358459583

/-! ## A308355.P2873950305011528863

`A000120(A114994(n))+1`
-/

namespace A308355.P2873950305011528863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A114994 n).toNat + 1

end

end A308355.P2873950305011528863

/-! ## A308355.P8750460265114504719

`A000120(lt[A124765(n), 2])+1`
-/

namespace A308355.P8750460265114504719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A308355.P8750460265114504719

/-!
# A308356: A(n,k) = (1/k!) * Sum_{i_1=1..n} Sum_{i_2=1..n} ... Sum_{i_k=1..n} (-1)^(i_1 + i_2 + ... + i_k) * multinomial(i_1 + i_2 + ... + i_k; i_1, i_2, ..., i_k), square array A(n,k) read by antidiagonals, for n >= 0, k >= 0.

The programs for A308356, there is no canonical definition to state claims against.
-/

/-! ## A308356.P15624867082926409923

`A117568(xor(8, A187558(n)))`
-/

namespace A308356.P15624867082926409923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 (Int.xor 8 (A187558 n)).toNat

end

end A308356.P15624867082926409923

/-! ## A308356.P11108116945660100231

`A046978(∏{d}[A093561(n), #])`
-/

namespace A308356.P11108116945660100231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A308356.P11108116945660100231

/-! ## A308356.P6545348975233356947

`A075553(∏{d}[A093561(n), #])`
-/

namespace A308356.P6545348975233356947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A308356.P6545348975233356947

/-! ## A308356.P10196877563710903298

`A117569(∏{d}[A093563(n), #])`
-/

namespace A308356.P10196877563710903298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A308356.P10196877563710903298

/-! ## A308356.P16245225741052150318

`-(-1)^comp[∑[4*n]]%A133135(A264428(n))`
-/

namespace A308356.P16245225741052150318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-((-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A133135 (A264428 n).toNat)

end

end A308356.P16245225741052150318

/-!
# A308358: Beatty sequence for sqrt(3)/4.

The programs for A308358, the canonical program `A308358.P17355110042302640437` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308358 has offset 0).

The definition of A308358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308358.P16978960527713253485

`floor(n*sqrt(3)/4)`
-/

namespace A308358.P16978960527713253485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ) / 4⌋

end

end A308358.P16978960527713253485

namespace A308358

/-- `floor(n*sqrt(3)/4)` -/
def P16978960527713253485.Spec : Prop :=
  ∀ n, P16978960527713253485.a n = A308358 n

end A308358

/-! ## A308358.P17355110042302640437

`A004526(A172475(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A308358

/-- `A004526(A172475(n))` -/
def P17355110042302640437.Spec : Prop :=
  ∀ n, P17355110042302640437.a n = A308358 n

theorem P17355110042302640437.correct : P17355110042302640437.Spec := by
  intro n
  simp only [A308358]

end A308358

/-! ## A308358.P3254997577560805619

`A004526(floor(sqrt(A077043(n))))`
-/

namespace A308358.P3254997577560805619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A077043 n)).toNat

end

end A308358.P3254997577560805619

namespace A308358

/-- `A004526(floor(sqrt(A077043(n))))` -/
def P3254997577560805619.Spec : Prop :=
  ∀ n, P3254997577560805619.a n = A308358 n

end A308358

/-! ## A308358.P16556314169514131541

`A123108(A172475(n)+2)-1`
-/

namespace A308358.P16556314169514131541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A172475 n + 2).toNat - 1

end

end A308358.P16556314169514131541

namespace A308358

/-- `A123108(A172475(n)+2)-1` -/
def P16556314169514131541.Spec : Prop :=
  ∀ n, P16556314169514131541.a n = A308358 n

end A308358

/-! ## A308358.P10975414977772539387

`A002265(comp[A054406(n+1)])`
-/

namespace A308358.P10975414977772539387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A308358.P10975414977772539387

namespace A308358

/-- `A002265(comp[A054406(n+1)])` -/
def P10975414977772539387.Spec : Prop :=
  ∀ n, P10975414977772539387.a n = A308358 n

end A308358

/-! ## A308358.P8553513668835450093

`A008624(2*A172475(n))-1`
-/

namespace A308358.P8553513668835450093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A172475 n).toNat - 1

end

end A308358.P8553513668835450093

namespace A308358

/-- `A008624(2*A172475(n))-1` -/
def P8553513668835450093.Spec : Prop :=
  ∀ n, P8553513668835450093.a n = A308358 n

end A308358

/-! ## A308358.P11382552031025919650

`A123108(A123108(2*A172475(n)))`
-/

namespace A308358.P11382552031025919650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A123108 (2 * A172475 n).toNat).toNat

end

end A308358.P11382552031025919650

namespace A308358

/-- `A123108(A123108(2*A172475(n)))` -/
def P11382552031025919650.Spec : Prop :=
  ∀ n, P11382552031025919650.a n = A308358 n

end A308358

/-! ## A308358.P2916237186465051973

`A004526(floor(sqrt(A211520(2*n+1))))`
-/

namespace A308358.P2916237186465051973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A211520 (2 * n + 1))).toNat

end

end A308358.P2916237186465051973

namespace A308358

/-- `A004526(floor(sqrt(A211520(2*n+1))))` -/
def P2916237186465051973.Spec : Prop :=
  ∀ n, P2916237186465051973.a n = A308358 n

end A308358

/-! ## A308358.P10133144001320133251

`A004526(A171970(A065033(2*n)))`
-/

namespace A308358.P10133144001320133251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171970 (A065033 (2 * n)).toNat).toNat

end

end A308358.P10133144001320133251

namespace A308358

/-- `A004526(A171970(A065033(2*n)))` -/
def P10133144001320133251.Spec : Prop :=
  ∀ n, P10133144001320133251.a n = A308358 n

end A308358

/-! ## A308358.P7182865455072676903

`A202304(A056822(n))`
-/

namespace A308358.P7182865455072676903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A056822 n).toNat

end

end A308358.P7182865455072676903

namespace A308358

/-- `A202304(A056822(n))` -/
def P7182865455072676903.Spec : Prop :=
  ∀ n, P7182865455072676903.a n = A308358 n

end A308358

/-! ## A308358.P15401695854423869754

`A000194(A002620(A202304(A002620(n))))`
-/

namespace A308358.P15401695854423869754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A002620 (A202304 (A002620 n).toNat).toNat).toNat

end

end A308358.P15401695854423869754

namespace A308358

/-- `A000194(A002620(A202304(A002620(n))))` -/
def P15401695854423869754.Spec : Prop :=
  ∀ n, P15401695854423869754.a n = A308358 n

end A308358

/-! ## A308358.P4569264602509698654

`A339183(A033436(n))`
-/

namespace A308358.P4569264602509698654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A033436 n).toNat

end

end A308358.P4569264602509698654

namespace A308358

/-- `A339183(A033436(n))` -/
def P4569264602509698654.Spec : Prop :=
  ∀ n, P4569264602509698654.a n = A308358 n

end A308358

/-! ## A308358.P4936714352282049043

`A319571(A172475(n)²)`
-/

namespace A308358.P4936714352282049043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A172475 n ^ 2).toNat

end

end A308358.P4936714352282049043

namespace A308358

/-- `A319571(A172475(n)²)` -/
def P4936714352282049043.Spec : Prop :=
  ∀ n, P4936714352282049043.a n = A308358 n

end A308358

/-!
# A308359: Triangle T(n,w) read by rows: the number of fixed polyominoes with n cells and width w of the convex hull.

The programs for A308359, there is no canonical definition to state claims against.
-/

/-! ## A308359.P9165368781125176977

`A323733(A008277(n+1))+A144464(n)`
-/

namespace A308359.P9165368781125176977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (A008277 (n + 1)).toNat + A144464 n

end

end A308359.P9165368781125176977

/-!
# A308360: Product of positive divisors d of n that are divisible by every prime that divides n.

The programs for A308360, the canonical program `A308360.P14482252966188849651` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308360 has offset 1).

The definition of A308360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308360.P14482252966188849651

`A064549(n+1)^(A005361(n+1)/2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A308360

/-- `A064549(n+1)^(A005361(n+1)/2)` -/
def P14482252966188849651.Spec : Prop :=
  ∀ n, P14482252966188849651.a n = (A308360 (n + 1) : ℝ)

end A308360

/-! ## A308360.P9033411160031709254

`sqrt((n+1)*∏{p}[n+1, #])^∏{e}[n+1, #]`
-/

namespace A308360.P9033411160031709254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℝ) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A308360.P9033411160031709254

namespace A308360

/-- `sqrt((n+1)*∏{p}[n+1, #])^∏{e}[n+1, #]` -/
def P9033411160031709254.Spec : Prop :=
  ∀ n, P9033411160031709254.a n = (A308360 (n + 1) : ℝ)

end A308360

/-! ## A308360.P35591490690706154

`∏{d}[(n+1)/A007947(n+1), (n+1)/#]`
-/

namespace A308360.P35591490690706154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A308360.P35591490690706154

namespace A308360

/-- `∏{d}[(n+1)/A007947(n+1), (n+1)/#]` -/
def P35591490690706154.Spec : Prop :=
  ∀ n, P35591490690706154.a n = (A308360 (n + 1) : ℚ)

end A308360

/-! ## A308360.P18136279136450684437

`sqrt((n+1)*A007947(n+1))^A005361(n+1)`
-/

namespace A308360.P18136279136450684437
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A007947 (n + 1) : ℝ) ^ (A005361 (n + 1) : ℤ)

end

end A308360.P18136279136450684437

namespace A308360

/-- `sqrt((n+1)*A007947(n+1))^A005361(n+1)` -/
def P18136279136450684437.Spec : Prop :=
  ∀ n, P18136279136450684437.a n = (A308360 (n + 1) : ℝ)

end A308360

/-! ## A308360.P11577774060083729279

`((n+1)/sqrt(A003557(n+1)))^A005361(n+1)`
-/

namespace A308360.P11577774060083729279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.sqrt (A003557 (n + 1) : ℝ)) ^ (A005361 (n + 1) : ℤ)

end

end A308360.P11577774060083729279

namespace A308360

/-- `((n+1)/sqrt(A003557(n+1)))^A005361(n+1)` -/
def P11577774060083729279.Spec : Prop :=
  ∀ n, P11577774060083729279.a n = (A308360 (n + 1) : ℝ)

end A308360

/-! ## A308360.P2492221752702147343

`A007955(n+1)/A378689(n+1)`
-/

namespace A308360.P2492221752702147343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A378689 (n + 1) : ℚ)

end

end A308360.P2492221752702147343

namespace A308360

/-- `A007955(n+1)/A378689(n+1)` -/
def P2492221752702147343.Spec : Prop :=
  ∀ n, P2492221752702147343.a n = (A308360 (n + 1) : ℚ)

end A308360

/-! ## A308360.P17843052421821837943

`∏{d}[A003557(n+1), A003557(A064549(n+1)/#)]`
-/

namespace A308360.P17843052421821837943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A003557 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (d : ℚ))).toNat

end

end A308360.P17843052421821837943

namespace A308360

/-- `∏{d}[A003557(n+1), A003557(A064549(n+1)/#)]` -/
def P17843052421821837943.Spec : Prop :=
  ∀ n, P17843052421821837943.a n = A308360 (n + 1)

end A308360

/-!
# A308361: The largest codimension of a cyclically covering subspace in GF(2)^n.

The programs for A308361, there is no canonical definition to state claims against.
-/

/-! ## A308361.P3030292467535922509

`A000120(lcm(A006257(n), A035327(n)))`
-/

namespace A308361.P3030292467535922509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A006257 n) (A035327 n))

end

end A308361.P3030292467535922509

/-! ## A308361.P11377935802094849851

`A167831(lcm(A000120(n), A087117(n)))`
-/

namespace A308361.P11377935802094849851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 (Int.lcm (A000120 n) (A087117 n))

end

end A308361.P11377935802094849851

/-! ## A308361.P15488338588171371859

`A000120(lcm(A038573(n), A233931(n)))`
-/

namespace A308361.P15488338588171371859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A038573 n) (A233931 n))

end

end A308361.P15488338588171371859

/-! ## A308361.P15392367324164195521

`A000120(lcm(A036044(n), A319652(n)))`
-/

namespace A308361.P15392367324164195521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A036044 n) (A319652 n))

end

end A308361.P15392367324164195521

/-! ## A308361.P8815238074221979158

`and(A000120(A164884(n)), A005248(n))`
-/

namespace A308361.P8815238074221979158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A164884 n).toNat) (A005248 n)

end

end A308361.P8815238074221979158

/-!
# A308362: Number of (2k+1)-ary quasitrivial semigroups on an n-element set.

The programs for A308362, there is no canonical definition to state claims against.
-/

/-! ## A308362.P11214085604974302492

`A308352(n+1)+A292933(n+1)+A308354(n+1)`
-/

namespace A308362.P11214085604974302492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308352 (n + 1) + A292933 (n + 1) + A308354 (n + 1)

end

end A308362.P11214085604974302492

/-! ## A308362.P13566002450643437622

`A308354(n+1)+A292932(n+1)`
-/

namespace A308362.P13566002450643437622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308354 (n + 1) + A292932 (n + 1)

end

end A308362.P13566002450643437622

/-! ## A308362.P7240458550236933029

`A292932(n+1)+A292934(n+1)/2`
-/

namespace A308362.P7240458550236933029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292932 (n + 1) : ℚ) + (A292934 (n + 1) : ℚ) / 2

end

end A308362.P7240458550236933029

/-! ## A308362.P11444014810333453104

`A308351(n+1)+A308352(n+1)-A308354(n+1)`
-/

namespace A308362.P11444014810333453104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308351 (n + 1) + (A308352 (n + 1) - A308354 (n + 1))

end

end A308362.P11444014810333453104

/-!
# A308363: a(n) = (1/n!) * Sum_{i_1=1..3} Sum_{i_2=1..3} ... Sum_{i_n=1..3} (-1)^(i_1 + i_2 + ... + i_n) * multinomial(i_1 + i_2 + ... + i_n; i_1, i_2, ..., i_n).

The programs for A308363, there is no canonical definition to state claims against.
-/

/-! ## A308363.P6005578589057131226

`A308356(A167614(n+2))`
-/

namespace A308363.P6005578589057131226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (A167614 (n + 2)).toNat

end

end A308363.P6005578589057131226

/-! ## A308363.P7344808389657261178

`A308356(A141214(n)+6)`
-/

namespace A308363.P7344808389657261178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (A141214 n + 6).toNat

end

end A308363.P7344808389657261178

/-! ## A308363.P14329967955805896728

`A308356(A052905(n)+8)`
-/

namespace A308363.P14329967955805896728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (A052905 n + 8).toNat

end

end A308363.P14329967955805896728

/-! ## A308363.P31186838497070676

`A308356(A055999(n)+9)`
-/

namespace A308363.P31186838497070676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (A055999 n + 9).toNat

end

end A308363.P31186838497070676

/-! ## A308363.P2268326458383635761

`A308356(eq[3, A002262(n)])`
-/

namespace A308363.P2268326458383635761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308363.P2268326458383635761

/-!
# A308364: a(0) = 0, a(3n) = a(n), a(3n+1) = a(n)*3 + 1, a(3n-1) = a(n)*3 - 1.

The programs for A308364, there is no canonical definition to state claims against.
-/

/-! ## A308364.P17841836404514716676

`A106610(n)%A167614(A046611(n+1))`
-/

namespace A308364.P17841836404514716676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106610 n) (A167614 (A046611 (n + 1)).toNat)

end

end A308364.P17841836404514716676

/-! ## A308364.P7474572652906076974

`A329424(n)%A167614(A046611(n+1))`
-/

namespace A308364.P7474572652906076974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329424 n) (A167614 (A046611 (n + 1)).toNat)

end

end A308364.P7474572652906076974

/-! ## A308364.P9416734026745458943

`A106610(n%A156688(A132736(n)))`
-/

namespace A308364.P9416734026745458943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (Int.tmod (n : ℤ) (A156688 (A132736 n).toNat)).toNat

end

end A308364.P9416734026745458943

/-! ## A308364.P6551785508770712484

`A329424(n)%A156688(A132736(n))`
-/

namespace A308364.P6551785508770712484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329424 n) (A156688 (A132736 n).toNat)

end

end A308364.P6551785508770712484

/-! ## A308364.P3045637071305289717

`A111441(A358176(n+4))%A005940(n+1)`
-/

namespace A308364.P3045637071305289717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111441 (A358176 (n + 4)).toNat) (A005940 (n + 1))

end

end A308364.P3045637071305289717

/-!
# A308365: Numbers which are products of repunits.

The programs for A308365, there is no canonical definition to state claims against.
-/

/-! ## A308365.P7881693748476816118

`∑{d}[A036035(n), A165831(#)]`
-/

namespace A308365.P7881693748476816118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A165831 d

end

end A308365.P7881693748476816118

/-! ## A308365.P15887013735276673449

`∑{d}[A331188(23*A334434(n)), A165831(#)]`
-/

namespace A308365.P15887013735276673449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (23 * A334434 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A165831 d

end

end A308365.P15887013735276673449

/-! ## A308365.P9285619319287997299

`record[A000265(A161140(n+1))]`
-/

namespace A308365.P9285619319287997299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A161140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308365.P9285619319287997299

/-!
# A308366: Expansion of Sum_{k>=1} (-1)^(k+1)*k*x^k/(1 - k*x^k).

The programs for A308366, the canonical program `A308366.P9519360865088964469` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308366 has offset 1).

The definition of A308366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308366.P11598733010600800713

`∑{d}[n+1, (-1)^(#-1)*#^((n+1)/#)]`
-/

namespace A308366.P11598733010600800713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((-1 : ℚ) ^ ((d : ℤ) - 1 : ℤ) : ℝ) * (d : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ)

end

end A308366.P11598733010600800713

namespace A308366

/-- `∑{d}[n+1, (-1)^(#-1)*#^((n+1)/#)]` -/
def P11598733010600800713.Spec : Prop :=
  ∀ n, P11598733010600800713.a n = (A308366 (n + 1) : ℝ)

end A308366

/-! ## A308366.P9519360865088964469

`A333824(n+1)+A333824(n+1)-A055225(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A308366

/-- `A333824(n+1)+A333824(n+1)-A055225(n+1)` -/
def P9519360865088964469.Spec : Prop :=
  ∀ n, P9519360865088964469.a n = A308366 (n + 1)

theorem P9519360865088964469.correct : P9519360865088964469.Spec := by
  intro n
  simp only [A308366, Nat.add_sub_cancel]

end A308366

/-! ## A308366.P10484975938636114088

`2*A333824(n+1)-A055225(n+1)`
-/

namespace A308366.P10484975938636114088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333824 (n + 1) - A055225 (n + 1)

end

end A308366.P10484975938636114088

namespace A308366

/-- `2*A333824(n+1)-A055225(n+1)` -/
def P10484975938636114088.Spec : Prop :=
  ∀ n, P10484975938636114088.a n = A308366 (n + 1)

theorem P10484975938636114088.correct : P10484975938636114088.Spec := by
  intro n
  simp only [A308366, Nat.add_sub_cancel, A308366.P10484975938636114088.a, A308366.P9519360865088964469.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A308366

/-! ## A308366.P13116532178890657624

`A005843(A333824(n+1))-A055225(n+1)`
-/

namespace A308366.P13116532178890657624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A333824 (n + 1)).toNat - A055225 (n + 1)

end

end A308366.P13116532178890657624

namespace A308366

/-- `A005843(A333824(n+1))-A055225(n+1)` -/
def P13116532178890657624.Spec : Prop :=
  ∀ n, P13116532178890657624.a n = A308366 (n + 1)

end A308366

/-! ## A308366.P16544665236355979347

`A005843(A333824(n+1))-A308502(∑[n+1])`
-/

namespace A308366.P16544665236355979347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A333824 (n + 1)).toNat - A308502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308366.P16544665236355979347

namespace A308366

/-- `A005843(A333824(n+1))-A308502(∑[n+1])` -/
def P16544665236355979347.Spec : Prop :=
  ∀ n, P16544665236355979347.a n = A308366 (n + 1)

end A308366

/-!
# A308367: Expansion of Sum_{k>=1} x^k/(1 + k*x^k).

The programs for A308367, the canonical program `A308367.P9859289133316472339` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308367 has offset 1).

The definition of A308367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308367.P9859289133316472339

`∑{d}[n+1, (-((n+1)/#))^(#-1)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308367

/-- `∑{d}[n+1, (-((n+1)/#))^(#-1)]` -/
def P9859289133316472339.Spec : Prop :=
  ∀ n, P9859289133316472339.a n = (A308367 (n + 1) : ℚ)

end A308367

/-!
# A308368: G.f. A(x) satisfies: A(x) = x * Product_{k>=1} (1 + A(x^k))/(1 - A(x^k)).

The programs for A308368, there is no canonical definition to state claims against.
-/

/-! ## A308368.P13501244584717841279

`A194161(A027046(n+1))`
-/

namespace A308368.P13501244584717841279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194161 (A027046 (n + 1)).toNat

end

end A308368.P13501244584717841279

/-! ## A308368.P13106556451864932621

`A060384(A026387(n)+2)`
-/

namespace A308368.P13106556451864932621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A026387 n + 2).toNat

end

end A308368.P13106556451864932621

/-!
# A308369: G.f. A(x) satisfies: A(x) = x * Product_{k>=1} 1/(1 - A(x^k))^k.

The programs for A308369, there is no canonical definition to state claims against.
-/

/-! ## A308369.P4985455988527260416

`A000073(2*n+1)-A056614(3*n+1)%a(n-1)` with `a(0)=1`
-/

namespace A308369.P4985455988527260416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000073 (2 * n + 1) - Int.tmod (A056614 (3 * n + 1)) (a (n - 1))

end

end A308369.P4985455988527260416

/-! ## A308369.P2393702760930529070

`A005317(n)-A330346(A077070(2*n+1))`
-/

namespace A308369.P2393702760930529070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n - A330346 (A077070 (2 * n + 1)).toNat

end

end A308369.P2393702760930529070

/-! ## A308369.P10965979368665917792

`A005317(n)-A330346(A255072(2*n+1))`
-/

namespace A308369.P10965979368665917792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n - A330346 (A255072 (2 * n + 1)).toNat

end

end A308369.P10965979368665917792

/-!
# A308370: G.f. A(x) satisfies: A(x) = x * Product_{k>=1} (1 + A(x^k))^k.

The programs for A308370, there is no canonical definition to state claims against.
-/

/-! ## A308370.P9445344587230638354

`A165885(A164177(n))`
-/

namespace A308370.P9445344587230638354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165885 (A164177 n).toNat

end

end A308370.P9445344587230638354

/-! ## A308370.P10112921585981333741

`A226190(A063834(n)+A001906(n))`
-/

namespace A308370.P10112921585981333741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A063834 n + A001906 n).toNat

end

end A308370.P10112921585981333741

/-! ## A308370.P1001347622627693812

`A001462(or(A015448(n), A076409(n+1)))`
-/

namespace A308370.P1001347622627693812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor (A015448 n) (A076409 (n + 1))).toNat

end

end A308370.P1001347622627693812

/-!
# A308371: G.f. A(x) satisfies: A(x) = x * Product_{k>=1} 1/(1 - k*A(x^k)).

The programs for A308371, there is no canonical definition to state claims against.
-/

/-! ## A308371.P9979392156158082581

`A366977(A067340(n+1)-A168244(n))`
-/

namespace A308371.P9979392156158082581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366977 (A067340 (n + 1) - A168244 n).toNat

end

end A308371.P9979392156158082581

/-! ## A308371.P5449107600956748120

`∏{e}[∑[n]*A000178(n), #+1]`
-/

namespace A308371.P5449107600956748120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A308371.P5449107600956748120

/-!
# A308372: G.f. A(x) satisfies: A(x) = x * Product_{k>=1} (1 + k*A(x^k)).

The programs for A308372, there is no canonical definition to state claims against.
-/

/-! ## A308372.P4871296436747398064

`A000006(A006319(n)+A005727(n))`
-/

namespace A308372.P4871296436747398064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A006319 n + A005727 n).toNat

end

end A308372.P4871296436747398064

/-! ## A308372.P17381448941416693952

`A322496(n)+A031346(A005165(n))`
-/

namespace A308372.P17381448941416693952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322496 n + A031346 (A005165 n).toNat

end

end A308372.P17381448941416693952

/-! ## A308372.P3552613086703861590

`A322496(n)+A031346(A038156(n))`
-/

namespace A308372.P3552613086703861590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322496 n + A031346 (A038156 n).toNat

end

end A308372.P3552613086703861590

/-!
# A308375: Digital sum of composite numbers.

The programs for A308375, the canonical program `A308375.P5312636960333740944` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308375 has offset 1).

The definition of A308375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308375.P5312636960333740944

`A007953(A002808(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A308375

/-- `A007953(A002808(n+1))` -/
def P5312636960333740944.Spec : Prop :=
  ∀ n, P5312636960333740944.a n = A308375 (n + 1)

theorem P5312636960333740944.correct : P5312636960333740944.Spec := by
  intro n
  simp only [A308375, Nat.add_sub_cancel]

end A308375

/-! ## A308375.P15402704597009010993

`∑{digits}[A018252(n+2), #]`
-/

namespace A308375.P15402704597009010993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A308375.P15402704597009010993

namespace A308375

/-- `∑{digits}[A018252(n+2), #]` -/
def P15402704597009010993.Spec : Prop :=
  ∀ n, (P15402704597009010993.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P4305021912043419895

`∑{digits}[A141468(n+3), #]`
-/

namespace A308375.P4305021912043419895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A308375.P4305021912043419895

namespace A308375

/-- `∑{digits}[A141468(n+3), #]` -/
def P4305021912043419895.Spec : Prop :=
  ∀ n, (P4305021912043419895.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P14828506425224095899

`∑{digits}[lt[1, A074206(n)], #]`
-/

namespace A308375.P14828506425224095899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A308375.P14828506425224095899

namespace A308375

/-- `∑{digits}[lt[1, A074206(n)], #]` -/
def P14828506425224095899.Spec : Prop :=
  ∀ n, (P14828506425224095899.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P514669430464004514

`∑{digits}[comp[C(A006530(n+1), n)], #]`
-/

namespace A308375.P514669430464004514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A308375.P514669430464004514

namespace A308375

/-- `∑{digits}[comp[C(A006530(n+1), n)], #]` -/
def P514669430464004514.Spec : Prop :=
  ∀ n, (P514669430464004514.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P1674359160979310942

`∑{digits}[lt[1, A001222(n+1)]+1, #]`
-/

namespace A308375.P1674359160979310942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A308375.P1674359160979310942

namespace A308375

/-- `∑{digits}[lt[1, A001222(n+1)]+1, #]` -/
def P1674359160979310942.Spec : Prop :=
  ∀ n, (P1674359160979310942.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P18060489308297053936

`∑{digits}[lt[2, A000005(n+1)]+1, #]`
-/

namespace A308375.P18060489308297053936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A308375.P18060489308297053936

namespace A308375

/-- `∑{digits}[lt[2, A000005(n+1)]+1, #]` -/
def P18060489308297053936.Spec : Prop :=
  ∀ n, (P18060489308297053936.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P16700159582205171265

`∑{digits}[lt[A000010(n+1), n]+1, #]`
-/

namespace A308375.P16700159582205171265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A308375.P16700159582205171265

namespace A308375

/-- `∑{digits}[lt[A000010(n+1), n]+1, #]` -/
def P16700159582205171265.Spec : Prop :=
  ∀ n, (P16700159582205171265.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P5396470758398031158

`∑{digits}[lt[A020639(n+1), n]+1, #]`
-/

namespace A308375.P5396470758398031158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A308375.P5396470758398031158

namespace A308375

/-- `∑{digits}[lt[A020639(n+1), n]+1, #]` -/
def P5396470758398031158.Spec : Prop :=
  ∀ n, (P5396470758398031158.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P8459829745151580506

`Δ[A051350(n+1)]`
-/

namespace A308375.P8459829745151580506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308375.P8459829745151580506

namespace A308375

/-- `Δ[A051350(n+1)]` -/
def P8459829745151580506.Spec : Prop :=
  ∀ n, P8459829745151580506.a n = A308375 (n + 1)

end A308375

/-! ## A308375.P5549815401815894469

`∑{digits}[A065090(n+3), #]`
-/

namespace A308375.P5549815401815894469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A308375.P5549815401815894469

namespace A308375

/-- `∑{digits}[A065090(n+3), #]` -/
def P5549815401815894469.Spec : Prop :=
  ∀ n, (P5549815401815894469.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P11514685132087410787

`A051350(n+2)-A051350(n+1)`
-/

namespace A308375.P11514685132087410787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051350 (n + 2) - A051350 (n + 1)

end

end A308375.P11514685132087410787

namespace A308375

/-- `A051350(n+2)-A051350(n+1)` -/
def P11514685132087410787.Spec : Prop :=
  ∀ n, P11514685132087410787.a n = A308375 (n + 1)

end A308375

/-! ## A308375.P15977397089629293655

`∑{digits}[lt[1, A003415(n)], #]`
-/

namespace A308375.P15977397089629293655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A308375.P15977397089629293655

namespace A308375

/-- `∑{digits}[lt[1, A003415(n)], #]` -/
def P15977397089629293655.Spec : Prop :=
  ∀ n, (P15977397089629293655.a n : ℤ) = A308375 (n + 1)

end A308375

/-! ## A308375.P2050328521409494611

`A007953(A018252(n+2))`
-/

namespace A308375.P2050328521409494611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A018252 (n + 2)).toNat

end

end A308375.P2050328521409494611

namespace A308375

/-- `A007953(A018252(n+2))` -/
def P2050328521409494611.Spec : Prop :=
  ∀ n, P2050328521409494611.a n = A308375 (n + 1)

end A308375

/-! ## A308375.P6873860645768881256

`A007953(A141468(n+3))`
-/

namespace A308375.P6873860645768881256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A141468 (n + 3)).toNat

end

end A308375.P6873860645768881256

namespace A308375

/-- `A007953(A141468(n+3))` -/
def P6873860645768881256.Spec : Prop :=
  ∀ n, P6873860645768881256.a n = A308375 (n + 1)

end A308375

/-! ## A308375.P16183981479041190795

`A007953(lt[1, A003415(n)])`
-/

namespace A308375.P16183981479041190795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A308375.P16183981479041190795

namespace A308375

/-- `A007953(lt[1, A003415(n)])` -/
def P16183981479041190795.Spec : Prop :=
  ∀ n, P16183981479041190795.a n = A308375 (n + 1)

end A308375

/-! ## A308375.P9294315738541631179

`A007953(lt[1, A032741(n)])`
-/

namespace A308375.P9294315738541631179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A308375.P9294315738541631179

namespace A308375

/-- `A007953(lt[1, A032741(n)])` -/
def P9294315738541631179.Spec : Prop :=
  ∀ n, P9294315738541631179.a n = A308375 (n + 1)

end A308375

/-! ## A308375.P596349261115318344

`A007953(A072668(n+1)+1)`
-/

namespace A308375.P596349261115318344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A072668 (n + 1) + 1).toNat

end

end A308375.P596349261115318344

namespace A308375

/-- `A007953(A072668(n+1)+1)` -/
def P596349261115318344.Spec : Prop :=
  ∀ n, P596349261115318344.a n = A308375 (n + 1)

theorem P596349261115318344.correct : P596349261115318344.Spec := by
  intro n
  simp only [A308375, Nat.add_sub_cancel, A308375.P596349261115318344.a, A308375.P5312636960333740944.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A007953, A007953.P3472751987379697826.a, A072668, A072668.P5648318357023435289.a, A054899, A054899.P10770181254942084517.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308375

/-! ## A308375.P14874570390516083022

`A007953(A079696(n+1)-1)`
-/

namespace A308375.P14874570390516083022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A079696 (n + 1) - 1).toNat

end

end A308375.P14874570390516083022

namespace A308375

/-- `A007953(A079696(n+1)-1)` -/
def P14874570390516083022.Spec : Prop :=
  ∀ n, P14874570390516083022.a n = A308375 (n + 1)

theorem P14874570390516083022.correct : P14874570390516083022.Spec := by
  intro n
  simp only [A308375, Nat.add_sub_cancel, A308375.P14874570390516083022.a, A308375.P5312636960333740944.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A007953, A007953.P3472751987379697826.a, A079696, A079696.P2621453534582977077.a, A054899, A054899.P10770181254942084517.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308375

/-! ## A308375.P2112473080588223786

`A007953(A067563(n+1)/A000040(n+1))`
-/

namespace A308375.P2112473080588223786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A067563 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A308375.P2112473080588223786

namespace A308375

/-- `A007953(A067563(n+1)/A000040(n+1))` -/
def P2112473080588223786.Spec : Prop :=
  ∀ n, P2112473080588223786.a n = A308375 (n + 1)

end A308375

/-!
# A308378: Numbers k such that phi(2k+1) = phi(2k+2).

The programs for A308378, there is no canonical definition to state claims against.
-/

/-! ## A308378.P11108067599529864698

`(A299535(n+1)-2)/2`
-/

namespace A308378.P11108067599529864698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299535 (n + 1) - 2 : ℚ) / 2

end

end A308378.P11108067599529864698

/-! ## A308378.P7509385284019715856

`floor(sinh(log(A299535(n+1))))`
-/

namespace A308378.P7509385284019715856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A299535 (n + 1) : ℝ))⌋

end

end A308378.P7509385284019715856

/-! ## A308378.P6458205968703618119

`A046667(A299535(n+1))`
-/

namespace A308378.P6458205968703618119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A299535 (n + 1)).toNat

end

end A308378.P6458205968703618119

/-! ## A308378.P5846307985802451033

`A029578(A299535(n+1)-2)`
-/

namespace A308378.P5846307985802451033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A299535 (n + 1) - 2).toNat

end

end A308378.P5846307985802451033

/-! ## A308378.P4091367845117945831

`A027656(A299535(n+1))-A036452(n+4)`
-/

namespace A308378.P4091367845117945831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A299535 (n + 1)).toNat - A036452 (n + 4)

end

end A308378.P4091367845117945831

/-!
# A308379: E.g.f. A(x) satisfies: A(x) = x * Product_{k>=1} 1/(1 - A(x^k))^(1/k).

The programs for A308379, there is no canonical definition to state claims against.
-/

/-! ## A308379.P13456161095669572049

`(n+1)*A004525(A209667(n))`
-/

namespace A308379.P13456161095669572049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004525 (A209667 n).toNat

end

end A308379.P13456161095669572049

/-!
# A308380: E.g.f. A(x) satisfies: A(x) = x * Product_{k>=1} (1 + A(x^k))^(1/k).

The programs for A308380, there is no canonical definition to state claims against.
-/

/-! ## A308380.P8776215659920293842

`A077773(A047855(n))`
-/

namespace A308380.P8776215659920293842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A047855 n).toNat

end

end A308380.P8776215659920293842

/-!
# A308381: Expansion of e.g.f. exp(Sum_{k>=1} x^(k^2)*(2 + x^(k^2))/(2*k^2)).

The programs for A308381, there is no canonical definition to state claims against.
-/

/-! ## A308381.P15622319217644807739

`A053498(n)+A029576(A062399(n))`
-/

namespace A308381.P15622319217644807739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053498 n + A029576 (A062399 n).toNat

end

end A308381.P15622319217644807739

/-! ## A308381.P15623549189659254019

`A053498(n)+A029576(A087036(n))`
-/

namespace A308381.P15623549189659254019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053498 n + A029576 (A087036 n).toNat

end

end A308381.P15623549189659254019

/-!
# A308385: a(n) is the last square visited by fers moves on a spirally numbered (2n-1) X (2n-1) board, moving to the lowest available unvisited square at each step.

The programs for A308385, the canonical program `A308385.P963621071239269085` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308385 has offset 1).

The definition of A308385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308385.P963621071239269085

`3/2*(5+(-1)^(n+1))-(10+(-1)^(n+1))*(n+1)+4*(n+1)²`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308385

/-- `3/2*(5+(-1)^(n+1))-(10+(-1)^(n+1))*(n+1)+4*(n+1)²` -/
def P963621071239269085.Spec : Prop :=
  ∀ n, P963621071239269085.a n = (A308385 (n + 1) : ℚ)

end A308385

/-! ## A308385.P655226590080847788

`A316884(((n+1)%2+n)*(n+1))`
-/

namespace A308385.P655226590080847788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (((n + 1) % 2 + n) * (n + 1))

end

end A308385.P655226590080847788

namespace A308385

/-- `A316884(((n+1)%2+n)*(n+1))` -/
def P655226590080847788.Spec : Prop :=
  ∀ n, P655226590080847788.a n = A308385 (n + 1)

end A308385

/-! ## A308385.P16971555556549212677

`A316884(A183207(n+1))`
-/

namespace A308385.P16971555556549212677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (A183207 (n + 1)).toNat

end

end A308385.P16971555556549212677

namespace A308385

/-- `A316884(A183207(n+1))` -/
def P16971555556549212677.Spec : Prop :=
  ∀ n, P16971555556549212677.a n = A308385 (n + 1)

end A308385

/-!
# A308388: Let N(k, d_i) be the number of digits d_i in the decimal expansion of k, and let M(k, p_j) be the multiplicity of a prime factor p_j of k. The sequence lists the numbers k such that, for any digit d_i, there exists at least a prime factor p_j where N(k,d_i) = M(k,p_j), and for any prime factor p_j there exists at least a digit d_i where M(k,p_j) = N(k,d_i).

The programs for A308388, there is no canonical definition to state claims against.
-/

/-! ## A308388.P9432540357613268870

`eq[A000295(A077462(n)), A139337(n)]`
-/

namespace A308388.P9432540357613268870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A077462 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308388.P9432540357613268870

/-! ## A308388.P8560406161652489254

`eq[A120004(n), A334032(A028310(n))]`
-/

namespace A308388.P8560406161652489254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120004 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308388.P8560406161652489254

/-! ## A308388.P196791353179396524

`eq[char[A115024(n+1)], A208879(n)]`
-/

namespace A308388.P196791353179396524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A308388.P196791353179396524

/-! ## A308388.P11028203812681173060

`A330739(A006389(n))+A036469(n)`
-/

namespace A308388.P11028203812681173060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330739 (A006389 n).toNat + A036469 n

end

end A308388.P11028203812681173060

/-! ## A308388.P14752416181116834176

`A181659(n+1)+A043559(A000149(n))`
-/

namespace A308388.P14752416181116834176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181659 (n + 1) + A043559 (A000149 n).toNat

end

end A308388.P14752416181116834176

/-!
# A308389: a(n) = (1/n!) * Sum_{i_1=1..4} Sum_{i_2=1..4} ... Sum_{i_n=1..4} (-1)^(i_1 + i_2 + ... + i_n) * multinomial(i_1 + i_2 + ... + i_n; i_1, i_2, ..., i_n).

The programs for A308389, there is no canonical definition to state claims against.
-/

/-! ## A308389.P10760373852652414980

`A308356(eq[4, A002262(n)])`
-/

namespace A308389.P10760373852652414980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308389.P10760373852652414980

/-! ## A308389.P7323107090111666092

`A308356(eq[8, A193588(n)])`
-/

namespace A308389.P7323107090111666092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308389.P7323107090111666092

/-! ## A308389.P1587577600365314073

`A308356(eq[4, A144328(n+1)])`
-/

namespace A308389.P1587577600365314073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308389.P1587577600365314073

/-! ## A308389.P9827223027538855617

`A308356(eq[5, A002260(n+1)])`
-/

namespace A308389.P9827223027538855617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308389.P9827223027538855617

/-! ## A308389.P10275882038661628923

`A308356(eq[5, A104763(n+1)])`
-/

namespace A308389.P10275882038661628923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308389.P10275882038661628923

/-!
# A308390: a(n) = (1/n!) * Sum_{i_1=1..5} Sum_{i_2=1..5} ... Sum_{i_n=1..5} (-1)^(i_1 + i_2 + ... + i_n) * multinomial(i_1 + i_2 + ... + i_n; i_1, i_2, ..., i_n).

The programs for A308390, there is no canonical definition to state claims against.
-/

/-! ## A308390.P5063959832842434751

`A308356(eq[5, A002262(n)])`
-/

namespace A308390.P5063959832842434751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308390.P5063959832842434751

/-! ## A308390.P7612220602090088432

`A308356(eq[5, A025675(n+1)])`
-/

namespace A308390.P7612220602090088432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308390.P7612220602090088432

/-! ## A308390.P2829622741553533829

`A308356(eq[5, A144328(n+1)])`
-/

namespace A308390.P2829622741553533829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308390.P2829622741553533829

/-! ## A308390.P2707235909270883195

`A308356(eq[8, A104763(n+1)])`
-/

namespace A308390.P2707235909270883195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308390.P2707235909270883195

/-!
# A308392: Expansion of e.g.f. exp(x + 2 * Sum_{k>=1} x^(2^k)/2^k).

The programs for A308392, there is no canonical definition to state claims against.
-/

/-! ## A308392.P14374128684417866918

`A289439(∏[4*(n-1)/a(n-1)+1]+1)` with `a(0)=1, a(1)=1`
-/

namespace A308392.P14374128684417866918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 * ((n : ℤ) - 1) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A308392.P14374128684417866918

/-! ## A308392.P16654357715278712270

`A000463(A115329(n))`
-/

namespace A308392.P16654357715278712270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A115329 n).toNat

end

end A308392.P16654357715278712270

/-! ## A308392.P3052581666729146411

`A000463(sqrt(A115330(n)))`
-/

namespace A308392.P3052581666729146411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.roundAway (Real.sqrt (A115330 n : ℝ))).toNat

end

end A308392.P3052581666729146411

/-! ## A308392.P5993665000845155541

`A001057(sqrt(A115330(n)))`
-/

namespace A308392.P5993665000845155541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.roundAway (Real.sqrt (A115330 n : ℝ))).toNat

end

end A308392.P5993665000845155541

/-!
# A308393: "Autotomy numbers" have two properties: (1) they have distinct decimal digits, and (2) subtracting their last digit from the remaining part produces another autotomy number (the numbers 1 to 9 are considered to be part of the sequence).

The programs for A308393, there is no canonical definition to state claims against.
-/

/-! ## A308393.P15816564732258432961

`A227362(A193412(n+1))`
-/

namespace A308393.P15816564732258432961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A193412 (n + 1)).toNat

end

end A308393.P15816564732258432961

/-! ## A308393.P2315593350365279785

`A056926(A009995(n+2)²)`
-/

namespace A308393.P2315593350365279785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A009995 (n + 2) ^ 2).toNat

end

end A308393.P2315593350365279785

/-! ## A308393.P12327716198007412686

`A262689(A009995(n+2)²)`
-/

namespace A308393.P12327716198007412686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A009995 (n + 2) ^ 2).toNat

end

end A308393.P12327716198007412686

/-! ## A308393.P10056325013926654343

`A009995(n+2)%A304499(n)`
-/

namespace A308393.P10056325013926654343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009995 (n + 2)) (A304499 n)

end

end A308393.P10056325013926654343

/-! ## A308393.P2908922714922106688

`A009995((n+1)%(A305733(n+1)+1)+1)`
-/

namespace A308393.P2908922714922106688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (Int.tmod (n + 1 : ℤ) (A305733 (n + 1) + 1) + 1).toNat

end

end A308393.P2908922714922106688

/-! ## A308393.P14666711440200288399

`eq[n, A227362(A262689(A002522(n)))]`
-/

namespace A308393.P14666711440200288399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A262689 (A002522 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308393.P14666711440200288399

/-! ## A308393.P5322705640601396044

`A009995(A358099(A052014(n+1))+n)`
-/

namespace A308393.P5322705640601396044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (A358099 (A052014 (n + 1)).toNat + (n : ℤ)).toNat

end

end A308393.P5322705640601396044

/-! ## A308393.P266470291237897611

`A009995(n+2)+A000007(A078391(n))`
-/

namespace A308393.P266470291237897611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 2) + A000007 (A078391 n).toNat

end

end A308393.P266470291237897611

/-! ## A308393.P2343443783615725120

`A001222(A090236(n))*A009995(n+2)`
-/

namespace A308393.P2343443783615725120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090236 n).toNat * A009995 (n + 2)

end

end A308393.P2343443783615725120

/-! ## A308393.P12870702678065712057

`A014963(A119877(n))*A009995(n+2)`
-/

namespace A308393.P12870702678065712057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A119877 n).toNat * A009995 (n + 2)

end

end A308393.P12870702678065712057

/-!
# A308394: Numbers which can be written in the form m^k - m with m prime and k a positive integer.

The programs for A308394, there is no canonical definition to state claims against.
-/

/-! ## A308394.P9395896992367558950

`∪[A036689(n+1), A246068(n+1)]`
-/

namespace A308394.P9395896992367558950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308394.P9395896992367558950

/-! ## A308394.P12026311920539751463

`∪[A246068(n+1), A308324(n+1)]`
-/

namespace A308394.P12026311920539751463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308394.P12026311920539751463

/-!
# A308395: Numbers y such that x*(x+1) + y*(y+1) = z*(z+1) is solvable in positive integers x, z with x <= y.

The programs for A308395, there is no canonical definition to state claims against.
-/

/-! ## A308395.P115307878980895893

`lt[A082183(n+2), n+3]+2`
-/

namespace A308395.P115307878980895893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082183 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A308395.P115307878980895893

/-! ## A308395.P8058618410672867918

`lt[A082184(n+2)-A332552(n+2), n+3]+2`
-/

namespace A308395.P8058618410672867918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082184 (n + 2) - A332552 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A308395.P8058618410672867918

/-! ## A308395.P16069475015537537233

`eq[char[A309388(n+1)], A000038(n)]`
-/

namespace A308395.P16069475015537537233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A308395.P16069475015537537233

/-! ## A308395.P13532348752976654967

`lt[A332542(n+3), A082184(n+2)]+2`
-/

namespace A308395.P13532348752976654967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332542 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082184 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A308395.P13532348752976654967

/-! ## A308395.P18020701992319482674

`lt[A332544(n+3)/A332543(n+3), n+3]+2`
-/

namespace A308395.P18020701992319482674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332544 (n + 3) : ℚ) / (A332543 (n + 3) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 2

end

end A308395.P18020701992319482674

/-! ## A308395.P826176903549639444

`lt[A082183(A233583(n+1)), n+1]`
-/

namespace A308395.P826176903549639444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082183 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308395.P826176903549639444

/-! ## A308395.P3108236822152539003

`eq[1, A205007(∑[n+1])]+1`
-/

namespace A308395.P3108236822152539003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308395.P3108236822152539003

/-! ## A308395.P11980305162238844722

`eq[1, A205007(A179865(n+1))]`
-/

namespace A308395.P11980305162238844722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308395.P11980305162238844722

/-! ## A308395.P14517607853763904485

`eq[A000217(n), A205006(A179865(n+1))]`
-/

namespace A308395.P14517607853763904485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308395.P14517607853763904485

/-!
# A308396: Expansion of e.g.f. exp(-Sum_{k>=1} x^(k^2)/k^2).

The programs for A308396, there is no canonical definition to state claims against.
-/

/-! ## A308396.P13515447479762683658

`(∏{e}[A002110(n), #]-6*C(n, 4))*A014607(n)`
-/

namespace A308396.P13515447479762683658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (6 * Nat.choose n 4 : ℤ)) * A014607 n

end

end A308396.P13515447479762683658

/-! ## A308396.P16364809198017105933

`(∏{e}[A002110(n), #]-6*C(n, 4))*A014647(n)`
-/

namespace A308396.P16364809198017105933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (6 * Nat.choose n 4 : ℤ)) * A014647 n

end

end A308396.P16364809198017105933

/-! ## A308396.P11195850315704413554

`(∏{e}[A002110(n), #]-6*C(n, 4))*A014883(n)`
-/

namespace A308396.P11195850315704413554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (6 * Nat.choose n 4 : ℤ)) * A014883 n

end

end A308396.P11195850315704413554

/-! ## A308396.P12873563674167904266

`(∏{e}[A002110(n), #]-6*C(n, 4))*A033999(n)`
-/

namespace A308396.P12873563674167904266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (6 * Nat.choose n 4 : ℤ)) * A033999 n

end

end A308396.P12873563674167904266

/-!
# A308399: Expansion of 1 / Sum_{k=-oo..oo} (-x)^(k*(4*k + 1)).

The programs for A308399, there is no canonical definition to state claims against.
-/

/-! ## A308399.P4624962379475620043

`A052920(n-A062977(A083329(n)))`
-/

namespace A308399.P4624962379475620043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 ((n : ℤ) - A062977 (A083329 n).toNat).toNat

end

end A308399.P4624962379475620043

/-! ## A308399.P14504472962625552950

`A052920(n)-A289235(A007983(5*(n+1)))`
-/

namespace A308399.P14504472962625552950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 n - A289235 (A007983 (5 * (n + 1))).toNat

end

end A308399.P14504472962625552950

/-! ## A308399.P1307741678660087370

`∑{e}[A158960(A052920(n)), #]`
-/

namespace A308399.P1307741678660087370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158960 (A052920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A308399.P1307741678660087370

/-! ## A308399.P9836084670519421488

`or(A029284(n), A055641(A066062(n)))`
-/

namespace A308399.P9836084670519421488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029284 n) (A055641 (A066062 n).toNat)

end

end A308399.P9836084670519421488

