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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A172200: Number of ways to place 2 nonattacking amazons (superqueens) on an n X n board.

The programs for A172200, the canonical program `A172200.P5900499650446741801` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172200 has offset 1).

The definition of A172200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172200.P5900499650446741801

`n*(n-1)*(n-2)*(3*(n+1)+8)/6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172200

/-- `n*(n-1)*(n-2)*(3*(n+1)+8)/6` -/
def P5900499650446741801.Spec : Prop :=
  ∀ n, P5900499650446741801.a n = (A172200 (n + 1) : ℚ)

end A172200

/-! ## A172200.P6802297231637145005

`a(n-1)+(n-1)*2*(n²-4)` with `a(0)=0`
-/

namespace A172200.P6802297231637145005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * (2 * ((n ^ 2 : ℤ) - 4))

end

end A172200.P6802297231637145005

namespace A172200

/-- `a(n-1)+(n-1)*2*(n²-4)` -/
def P6802297231637145005.Spec : Prop :=
  ∀ n, P6802297231637145005.a n = A172200 (n + 1)

end A172200

/-! ## A172200.P9786039495570464497

`A212560(n)-A051682(n)`
-/

namespace A172200.P9786039495570464497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n - A051682 n

end

end A172200.P9786039495570464497

namespace A172200

/-- `A212560(n)-A051682(n)` -/
def P9786039495570464497.Spec : Prop :=
  ∀ n, P9786039495570464497.a n = A172200 (n + 1)

end A172200

/-! ## A172200.P13637324040648552493

`A387525(n)-A161702(n)`
-/

namespace A172200.P13637324040648552493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387525 n - A161702 n

end

end A172200.P13637324040648552493

namespace A172200

/-- `A387525(n)-A161702(n)` -/
def P13637324040648552493.Spec : Prop :=
  ∀ n, P13637324040648552493.a n = A172200 (n + 1)

end A172200

/-! ## A172200.P3071670683034936177

`A172132(n+1)-A144945(n+1)`
-/

namespace A172200.P3071670683034936177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172132 (n + 1) - A144945 (n + 1)

end

end A172200.P3071670683034936177

namespace A172200

/-- `A172132(n+1)-A144945(n+1)` -/
def P3071670683034936177.Spec : Prop :=
  ∀ n, P3071670683034936177.a n = A172200 (n + 1)

end A172200

/-! ## A172200.P2299935431547111018

`n-A006325(n+1)+A060783(n)+A006325(n)`
-/

namespace A172200.P2299935431547111018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006325 (n + 1) + (A060783 n + A006325 n)

end

end A172200.P2299935431547111018

namespace A172200

/-- `n-A006325(n+1)+A060783(n)+A006325(n)` -/
def P2299935431547111018.Spec : Prop :=
  ∀ n, P2299935431547111018.a n = A172200 (n + 1)

end A172200

/-! ## A172200.P1672689616519863822

`∑[(n+2)*A325689(2*n)]`
-/

namespace A172200.P1672689616519863822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A325689 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172200.P1672689616519863822

namespace A172200

/-- `∑[(n+2)*A325689(2*n)]` -/
def P1672689616519863822.Spec : Prop :=
  ∀ n, P1672689616519863822.a n = A172200 (n + 1)

end A172200

/-!
# A172201: Number of ways to place 3 nonattacking amazons (superqueens) on an n X n board.

The programs for A172201, there is no canonical definition to state claims against.
-/

/-! ## A172201.P1179967981554245968

`and(-8, A330474(n))`
-/

namespace A172201.P1179967981554245968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-8) (A330474 n)

end

end A172201.P1179967981554245968

/-! ## A172201.P2663845073374256895

`A159786(floor(sqrt(C(n, 3)))^3)`
-/

namespace A172201.P2663845073374256895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 (Nat.sqrt (Nat.choose n 3) ^ 3)

end

end A172201.P2663845073374256895

/-!
# A172202: Number of ways to place 3 nonattacking kings on a 3 X n board.

The programs for A172202, there is no canonical definition to state claims against.
-/

/-! ## A172202.P15506818105086708547

`A390158(A034856(n+2))`
-/

namespace A172202.P15506818105086708547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390158 (A034856 (n + 2)).toNat

end

end A172202.P15506818105086708547

/-! ## A172202.P1793733654546757011

`A390158(eq[A048993(n+1), A344612(n)])`
-/

namespace A172202.P1793733654546757011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390158 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A172202.P1793733654546757011

/-!
# A172203: Number of ways to place 4 nonattacking kings on a 4 X n board.

The programs for A172203, there is no canonical definition to state claims against.
-/

/-! ## A172203.P7189785145098791236

`A390158(A141214(n+1))`
-/

namespace A172203.P7189785145098791236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390158 (A141214 (n + 1)).toNat

end

end A172203.P7189785145098791236

/-!
# A172204: Number of ways to place 5 nonattacking kings on a 5 X n board.

The programs for A172204, there is no canonical definition to state claims against.
-/

/-! ## A172204.P2788201426773683320

`A265322(A194895(n)+n)`
-/

namespace A172204.P2788201426773683320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265322 (A194895 n + (n : ℤ)).toNat

end

end A172204.P2788201426773683320

/-!
# A172207: Number of ways to place 3 nonattacking bishops on a 3 X n board.

The programs for A172207, there is no canonical definition to state claims against.
-/

/-! ## A172207.P15565360034086031416

`A186888(A182704(n)+1)`
-/

namespace A172207.P15565360034086031416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186888 (A182704 n + 1).toNat

end

end A172207.P15565360034086031416

/-!
# A172212: Number of ways to place 3 nonattacking knights on a 3 X n board.

The programs for A172212, there is no canonical definition to state claims against.
-/

/-! ## A172212.P17990987920777966410

`A390160(A034856(n+2))`
-/

namespace A172212.P17990987920777966410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390160 (A034856 (n + 2)).toNat

end

end A172212.P17990987920777966410

/-! ## A172212.P18359771008907933806

`A390160(A000217(n+3)-2)`
-/

namespace A172212.P18359771008907933806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390160 (A000217 (n + 3) - 2).toNat

end

end A172212.P18359771008907933806

/-!
# A172213: Number of ways to place 4 nonattacking knights on a 4 X n board.

The programs for A172213, there is no canonical definition to state claims against.
-/

/-! ## A172213.P9227148519315404427

`A390160(A141214(n+1))`
-/

namespace A172213.P9227148519315404427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390160 (A141214 (n + 1)).toNat

end

end A172213.P9227148519315404427

/-!
# A172216: Smallest k such that sum of digits of prime(n)^k is prime.

The programs for A172216, there is no canonical definition to state claims against.
-/

/-! ## A172216.P13179430340927165479

`A172035(n+1)^A001221(A001222(A007605(n+1)))`
-/

namespace A172216.P13179430340927165479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172035 (n + 1) : ℚ) ^ (A001221 (A001222 (A007605 (n + 1)).toNat).toNat : ℤ)

end

end A172216.P13179430340927165479

/-!
# A172218: Number of ways to place 3 nonattacking nightriders on a 3 X n board.

The programs for A172218, there is no canonical definition to state claims against.
-/

/-! ## A172218.P13803120518443407966

`A309134(A023615(n))`
-/

namespace A172218.P13803120518443407966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309134 (A023615 n).toNat

end

end A172218.P13803120518443407966

/-!
# A172219: Number of ways to place 4 nonattacking nightriders on a 4 X n board.

The programs for A172219, there is no canonical definition to state claims against.
-/

/-! ## A172219.P4867505742417047224

`A340313(A298356(3*(n+1))+A298356(n))`
-/

namespace A172219.P4867505742417047224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340313 (A298356 (3 * (n + 1)) + A298356 n).toNat

end

end A172219.P4867505742417047224

/-!
# A172221: Number of ways to place 3 nonattacking zebras on a 3 X n board.

The programs for A172221, there is no canonical definition to state claims against.
-/

/-! ## A172221.P3848117407953703768

`A016777(n)*A102705(A008706(n))`
-/

namespace A172221.P3848117407953703768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A102705 (A008706 n).toNat

end

end A172221.P3848117407953703768

/-!
# A172225: Number of ways to place 2 nonattacking wazirs on an n X n board.

The programs for A172225, the canonical program `A172225.P14284643973012744032` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172225 has offset 1).

The definition of A172225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172225.P4171963799445187324

`(n+1)*n*((n+1)²+n-3)/2`
-/

namespace A172225.P4171963799445187324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) * ((((n + 1) ^ 2 : ℤ) + ((n : ℤ) - 3) : ℚ) / 2))

end

end A172225.P4171963799445187324

namespace A172225

/-- `(n+1)*n*((n+1)²+n-3)/2` -/
def P4171963799445187324.Spec : Prop :=
  ∀ n, P4171963799445187324.a n = (A172225 (n + 1) : ℚ)

theorem P4171963799445187324.correct : P4171963799445187324.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A172225, Nat.add_sub_cancel, A172225.P4171963799445187324.a, A172225.P14284643973012744032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A172225, Nat.add_sub_cancel, A172225.P4171963799445187324.a, A172225.P14284643973012744032.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172225

/-! ## A172225.P14284643973012744032

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=24, a(3)=96, a(4)=260`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172225

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14284643973012744032.Spec : Prop :=
  ∀ n, P14284643973012744032.a n = A172225 (n + 1)

theorem P14284643973012744032.correct : P14284643973012744032.Spec := by
  intro n
  simp only [A172225, Nat.add_sub_cancel]

end A172225

/-! ## A172225.P1070716767023284411

`C(n*(n+2), 2)-n²`
-/

namespace A172225.P1070716767023284411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (n + 2)) 2 : ℤ) - (n ^ 2 : ℤ)

end

end A172225.P1070716767023284411

namespace A172225

/-- `C(n*(n+2), 2)-n²` -/
def P1070716767023284411.Spec : Prop :=
  ∀ n, P1070716767023284411.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P1786236030735001758

`2*n+(n-1)*n*C(n+3, 2)`
-/

namespace A172225.P1786236030735001758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1) * (n * Nat.choose (n + 3) 2 : ℤ)

end

end A172225.P1786236030735001758

namespace A172225

/-- `2*n+(n-1)*n*C(n+3, 2)` -/
def P1786236030735001758.Spec : Prop :=
  ∀ n, P1786236030735001758.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P16943613768553767996

`(n+2)*(n+3)*C(n, 2)+2*n`
-/

namespace A172225.P16943613768553767996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * ((n + 3) * Nat.choose n 2) + 2 * n

end

end A172225.P16943613768553767996

namespace A172225

/-- `(n+2)*(n+3)*C(n, 2)+2*n` -/
def P16943613768553767996.Spec : Prop :=
  ∀ n, (P16943613768553767996.a n : ℤ) = A172225 (n + 1)

end A172225

/-! ## A172225.P1779681170545421646

`A201243(n+1)-2*n`
-/

namespace A172225.P1779681170545421646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201243 (n + 1) - (2 * n : ℤ)

end

end A172225.P1779681170545421646

namespace A172225

/-- `A201243(n+1)-2*n` -/
def P1779681170545421646.Spec : Prop :=
  ∀ n, P1779681170545421646.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P92560906084227891

`(n-1)*A127736(n+1)+n+1`
-/

namespace A172225.P92560906084227891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A127736 (n + 1) + (n + 1 : ℤ)

end

end A172225.P92560906084227891

namespace A172225

/-- `(n-1)*A127736(n+1)+n+1` -/
def P92560906084227891.Spec : Prop :=
  ∀ n, P92560906084227891.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P17488832095150435931

`A037270(n)+A007588(n)`
-/

namespace A172225.P17488832095150435931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n + A007588 n

end

end A172225.P17488832095150435931

namespace A172225

/-- `A037270(n)+A007588(n)` -/
def P17488832095150435931.Spec : Prop :=
  ∀ n, P17488832095150435931.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P3683457417065074206

`A103220(n)+A007585(n)`
-/

namespace A172225.P3683457417065074206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n + A007585 n

end

end A172225.P3683457417065074206

namespace A172225

/-- `A103220(n)+A007585(n)` -/
def P3683457417065074206.Spec : Prop :=
  ∀ n, P3683457417065074206.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P7451402118498382871

`A100855(n)+A063522(n)`
-/

namespace A172225.P7451402118498382871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n + A063522 n

end

end A172225.P7451402118498382871

namespace A172225

/-- `A100855(n)+A063522(n)` -/
def P7451402118498382871.Spec : Prop :=
  ∀ n, P7451402118498382871.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P2339611085686338227

`A172073(n)+A027441(n)`
-/

namespace A172225.P2339611085686338227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 n + A027441 n

end

end A172225.P2339611085686338227

namespace A172225

/-- `A172073(n)+A027441(n)` -/
def P2339611085686338227.Spec : Prop :=
  ∀ n, P2339611085686338227.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P16291240978840417102

`A212560(n)+A007587(n)`
-/

namespace A172225.P16291240978840417102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n + A007587 n

end

end A172225.P16291240978840417102

namespace A172225

/-- `A212560(n)+A007587(n)` -/
def P16291240978840417102.Spec : Prop :=
  ∀ n, P16291240978840417102.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P6110898028136203806

`A220212(n)+A002413(n)`
-/

namespace A172225.P6110898028136203806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 n + A002413 n

end

end A172225.P6110898028136203806

namespace A172225

/-- `A220212(n)+A002413(n)` -/
def P6110898028136203806.Spec : Prop :=
  ∀ n, P6110898028136203806.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P18035840572839555039

`A237616(n)+A101375(n)`
-/

namespace A172225.P18035840572839555039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n + A101375 n

end

end A172225.P18035840572839555039

namespace A172225

/-- `A237616(n)+A101375(n)` -/
def P18035840572839555039.Spec : Prop :=
  ∀ n, P18035840572839555039.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P7669296241043907920

`A255499(n)+A085490(n)`
-/

namespace A172225.P7669296241043907920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n + A085490 n

end

end A172225.P7669296241043907920

namespace A172225

/-- `A255499(n)+A085490(n)` -/
def P7669296241043907920.Spec : Prop :=
  ∀ n, P7669296241043907920.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P12203548403737816361

`A027445(n)-A117665(n)`
-/

namespace A172225.P12203548403737816361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 n - A117665 n

end

end A172225.P12203548403737816361

namespace A172225

/-- `A027445(n)-A117665(n)` -/
def P12203548403737816361.Spec : Prop :=
  ∀ n, P12203548403737816361.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P12210325483038694944

`A135916(n+1)+A005476(n)`
-/

namespace A172225.P12210325483038694944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135916 (n + 1) + A005476 n

end

end A172225.P12210325483038694944

namespace A172225

/-- `A135916(n+1)+A005476(n)` -/
def P12210325483038694944.Spec : Prop :=
  ∀ n, P12210325483038694944.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P1502532614269057458

`A083374(n+1)-A046092(n)`
-/

namespace A172225.P1502532614269057458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) - A046092 n

end

end A172225.P1502532614269057458

namespace A172225

/-- `A083374(n+1)-A046092(n)` -/
def P1502532614269057458.Spec : Prop :=
  ∀ n, P1502532614269057458.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P18339602904918631934

`A289223(n+2)+A002939(n)`
-/

namespace A172225.P18339602904918631934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289223 (n + 2) + A002939 n

end

end A172225.P18339602904918631934

namespace A172225

/-- `A289223(n+2)+A002939(n)` -/
def P18339602904918631934.Spec : Prop :=
  ∀ n, P18339602904918631934.a n = A172225 (n + 1)

end A172225

/-! ## A172225.P15766466627767810583

`A292058(n+1)-A317637(n)`
-/

namespace A172225.P15766466627767810583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292058 (n + 1) - A317637 n

end

end A172225.P15766466627767810583

namespace A172225

/-- `A292058(n+1)-A317637(n)` -/
def P15766466627767810583.Spec : Prop :=
  ∀ n, P15766466627767810583.a n = A172225 (n + 1)

end A172225

/-!
# A172228: Number of ways to place 5 nonattacking wazirs on an n X n board.

The programs for A172228, there is no canonical definition to state claims against.
-/

/-! ## A172228.P12341408882297129705

`A014778(A113228(n))%A224446(n)`
-/

namespace A172228.P12341408882297129705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014778 (A113228 n).toNat) (A224446 n)

end

end A172228.P12341408882297129705

/-!
# A172229: Number of ways to place 3 nonattacking wazirs on a 3 X n board.

The programs for A172229, the canonical program `A172229.P6406971379391401100` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172229 has offset 1).

The definition of A172229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172229.P6406971379391401100

`A211613(n)+A060354(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A172229

/-- `A211613(n)+A060354(n)` -/
def P6406971379391401100.Spec : Prop :=
  ∀ n, P6406971379391401100.a n = A172229 (n + 1)

theorem P6406971379391401100.correct : P6406971379391401100.Spec := by
  intro n
  simp only [A172229, Nat.add_sub_cancel]

end A172229

/-! ## A172229.P10120950594880912980

`A004273(n)+A289721(n)-A005897(n)`
-/

namespace A172229.P10120950594880912980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A289721 n - A005897 n)

end

end A172229.P10120950594880912980

namespace A172229

/-- `A004273(n)+A289721(n)-A005897(n)` -/
def P10120950594880912980.Spec : Prop :=
  ∀ n, P10120950594880912980.a n = A172229 (n + 1)

end A172229

/-! ## A172229.P15857419374919789215

`A054602(A004273(n))-A226451(n)`
-/

namespace A172229.P15857419374919789215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 (A004273 n).toNat - A226451 n

end

end A172229.P15857419374919789215

namespace A172229

/-- `A054602(A004273(n))-A226451(n)` -/
def P15857419374919789215.Spec : Prop :=
  ∀ n, P15857419374919789215.a n = A172229 (n + 1)

end A172229

/-! ## A172229.P11487196545536263987

`record[A106617(n)]+A289721(n)-A005897(n)`
-/

namespace A172229.P11487196545536263987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A289721 n - A005897 n)

end

end A172229.P11487196545536263987

namespace A172229

/-- `record[A106617(n)]+A289721(n)-A005897(n)` -/
def P11487196545536263987.Spec : Prop :=
  ∀ n, P11487196545536263987.a n = A172229 (n + 1)

end A172229

/-! ## A172229.P17418718583623629854

`A014681(2*n)+A289721(n)-A005897(n)`
-/

namespace A172229.P17418718583623629854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n) + (A289721 n - A005897 n)

end

end A172229.P17418718583623629854

namespace A172229

/-- `A014681(2*n)+A289721(n)-A005897(n)` -/
def P17418718583623629854.Spec : Prop :=
  ∀ n, P17418718583623629854.a n = A172229 (n + 1)

end A172229

/-! ## A172229.P11127837149955222439

`A000096(A000567(n))/A028310(n)`
-/

namespace A172229.P11127837149955222439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A000567 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A172229.P11127837149955222439

namespace A172229

/-- `A000096(A000567(n))/A028310(n)` -/
def P11127837149955222439.Spec : Prop :=
  ∀ n, P11127837149955222439.a n = (A172229 (n + 1) : ℚ)

end A172229

/-! ## A172229.P7577644020640990997

`A028552(A000567(n))/A004277(n)`
-/

namespace A172229.P7577644020640990997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028552 (A000567 n).toNat : ℚ) / (A004277 n : ℚ)

end

end A172229.P7577644020640990997

namespace A172229

/-- `A028552(A000567(n))/A004277(n)` -/
def P7577644020640990997.Spec : Prop :=
  ∀ n, P7577644020640990997.a n = (A172229 (n + 1) : ℚ)

end A172229

/-! ## A172229.P10510217043566389833

`A000096(A000567(n))/A007318(A000124(n))`
-/

namespace A172229.P10510217043566389833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A000567 n).toNat : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A172229.P10510217043566389833

namespace A172229

/-- `A000096(A000567(n))/A007318(A000124(n))` -/
def P10510217043566389833.Spec : Prop :=
  ∀ n, P10510217043566389833.a n = (A172229 (n + 1) : ℚ)

end A172229

/-!
# A172230: Number of ways to place 4 nonattacking wazirs on a 4 X n board.

The programs for A172230, there is no canonical definition to state claims against.
-/

/-! ## A172230.P10064699831176446911

`A390159(A141214(n+1))`
-/

namespace A172230.P10064699831176446911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390159 (A141214 (n + 1)).toNat

end

end A172230.P10064699831176446911

/-!
# A172233: Positive numbers of form 2^m - 2^l - 3*2^k, m>l>k>=0.

The programs for A172233, there is no canonical definition to state claims against.
-/

/-! ## A172233.P3578285575200304575

`eq[0, A037800(A103391(n+1))]`
-/

namespace A172233.P3578285575200304575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A103391 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172233.P3578285575200304575

/-! ## A172233.P3052854928499810165

`eq[1, A069010(A103391(2*n+1))]`
-/

namespace A172233.P3052854928499810165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A103391 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172233.P3052854928499810165

/-! ## A172233.P11736029574535006471

`eq[1, A125644(2*A103391(n+1))]`
-/

namespace A172233.P11736029574535006471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (2 * A103391 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172233.P11736029574535006471

/-! ## A172233.P11644383992364252308

`lt[A069010(2*A103391(n+1)), 2]`
-/

namespace A172233.P11644383992364252308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (2 * A103391 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A172233.P11644383992364252308

/-! ## A172233.P14646935713585034857

`lt[A069010(lcm(2, A103391(n+1))), 2]`
-/

namespace A172233.P14646935713585034857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.lcm 2 (A103391 (n + 1)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A172233.P14646935713585034857

/-!
# A172235: n-th partial sum of primes of the form 3*k+1/2+-1/2 minus n-th partial sum of primes of the form 3*m-1.

The programs for A172235, the canonical program `A172235.P14922142282495861337` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172235 has offset 1).

The definition of A172235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172113, A172188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172235.P14922142282495861337

`A172113(n+1)-A172188(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A172235

/-- `A172113(n+1)-A172188(n+1)` -/
def P14922142282495861337.Spec : Prop :=
  ∀ n, P14922142282495861337.a n = A172235 (n + 1)

theorem P14922142282495861337.correct : P14922142282495861337.Spec := by
  intro n
  simp only [A172235, Nat.add_sub_cancel]

end A172235

/-! ## A172235.P5894981768760519122

`∑[p?[or(1, 3*n)]-p?[3*n-1]]`
-/

namespace A172235.P5894981768760519122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172235.P5894981768760519122

namespace A172235

/-- `∑[p?[or(1, 3*n)]-p?[3*n-1]]` -/
def P5894981768760519122.Spec : Prop :=
  ∀ n, P5894981768760519122.a n = A172235 (n + 1)

end A172235

/-! ## A172235.P10836458158018892743

`∑[p?[or(1, 3*n)]%∏{d}[p?[3*n+2], #]]`
-/

namespace A172235.P10836458158018892743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) % (∏ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172235.P10836458158018892743

namespace A172235

/-- `∑[p?[or(1, 3*n)]%∏{d}[p?[3*n+2], #]]` -/
def P10836458158018892743.Spec : Prop :=
  ∀ n, (P10836458158018892743.a n : ℤ) = A172235 (n + 1)

end A172235

/-! ## A172235.P11290288677471628666

`∑[A171715(n+1)]`
-/

namespace A172235.P11290288677471628666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172235.P11290288677471628666

namespace A172235

/-- `∑[A171715(n+1)]` -/
def P11290288677471628666.Spec : Prop :=
  ∀ n, P11290288677471628666.a n = A172235 (n + 1)

end A172235

/-! ## A172235.P18192152406179602486

`∑[A007645(n+1)-A003627(n+1)]`
-/

namespace A172235.P18192152406179602486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - A003627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172235.P18192152406179602486

namespace A172235

/-- `∑[A007645(n+1)-A003627(n+1)]` -/
def P18192152406179602486.Spec : Prop :=
  ∀ n, P18192152406179602486.a n = A172235 (n + 1)

end A172235

/-! ## A172235.P17123399691838567329

`∑[A007645(n+1)-(3*A088879(n+1)+5)]`
-/

namespace A172235.P17123399691838567329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - (3 * A088879 (n + 1) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172235.P17123399691838567329

namespace A172235

/-- `∑[A007645(n+1)-(3*A088879(n+1)+5)]` -/
def P17123399691838567329.Spec : Prop :=
  ∀ n, P17123399691838567329.a n = A172235 (n + 1)

end A172235

/-! ## A172235.P11590495514748855320

`∑[p?[lcm(3, n)-(n+1)]%p?[3*n-1]]`
-/

namespace A172235.P11590495514748855320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n + 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172235.P11590495514748855320

namespace A172235

/-- `∑[p?[lcm(3, n)-(n+1)]%p?[3*n-1]]` -/
def P11590495514748855320.Spec : Prop :=
  ∀ n, P11590495514748855320.a n = A172235 (n + 1)

end A172235

/-! ## A172235.P4456359935179798532

`∑[p?[floor(3*n/2)]-p?[3*n-1]]`
-/

namespace A172235.P4456359935179798532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172235.P4456359935179798532

namespace A172235

/-- `∑[p?[floor(3*n/2)]-p?[3*n-1]]` -/
def P4456359935179798532.Spec : Prop :=
  ∀ n, P4456359935179798532.a n = A172235 (n + 1)

end A172235

/-! ## A172235.P367238133467912607

`∑[record[A006530(9*n+3)]-p?[3*n-1]]`
-/

namespace A172235.P367238133467912607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172235.P367238133467912607

namespace A172235

/-- `∑[record[A006530(9*n+3)]-p?[3*n-1]]` -/
def P367238133467912607.Spec : Prop :=
  ∀ n, P367238133467912607.a n = A172235 (n + 1)

end A172235

/-!
# A172236: Array A(n,k) = n*A(n,k-1) + A(n,k-2) read by upward antidiagonals, starting A(n,0) = 0, A(n,1) = 1.

The programs for A172236, there is no canonical definition to state claims against.
-/

/-! ## A172236.P13612326568682342308

`A157103(A038722(n+1)-A010054(n))-A010054(n)`
-/

namespace A172236.P13612326568682342308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A038722 (n + 1) - A010054 n).toNat - A010054 n

end

end A172236.P13612326568682342308

/-! ## A172236.P4092944560467678977

`A352361(A007401(n+1))`
-/

namespace A172236.P4092944560467678977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 (A007401 (n + 1)).toNat

end

end A172236.P4092944560467678977

/-! ## A172236.P15734326329488845619

`A352361(lt[1, A027465(n)])`
-/

namespace A172236.P15734326329488845619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A172236.P15734326329488845619

/-! ## A172236.P9623478810502362225

`A157103(A038722(n+1))-A010054(n)`
-/

namespace A172236.P9623478810502362225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A038722 (n + 1)).toNat - A010054 n

end

end A172236.P9623478810502362225

/-! ## A172236.P1499533676736233165

`A157103(A038722(n+1))-char[A000217(n)]`
-/

namespace A172236.P1499533676736233165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A038722 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A172236.P1499533676736233165

/-! ## A172236.P12213299787020469182

`A157103(A038722(n+1))-char[A008795(n)]`
-/

namespace A172236.P12213299787020469182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A038722 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A172236.P12213299787020469182

/-! ## A172236.P13114947797339475821

`A157103(A038722(n+1))-char[A057944(n)]`
-/

namespace A172236.P13114947797339475821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A038722 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A172236.P13114947797339475821

/-! ## A172236.P4156154693189700264

`A157103(A038722(n+1))-A000007(A002262(n))`
-/

namespace A172236.P4156154693189700264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A038722 (n + 1)).toNat - A000007 (A002262 n).toNat

end

end A172236.P4156154693189700264

/-! ## A172236.P14724671006563305604

`A001221(A059268(n))*A157103(A038722(n+1))`
-/

namespace A172236.P14724671006563305604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A059268 n).toNat * A157103 (A038722 (n + 1)).toNat

end

end A172236.P14724671006563305604

/-! ## A172236.P7181242413554483637

`A157103(A038722(n+1))-A000007(A136431(n))`
-/

namespace A172236.P7181242413554483637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A038722 (n + 1)).toNat - A000007 (A136431 n).toNat

end

end A172236.P7181242413554483637

/-!
# A172237: T(n,k) = T(n-1,k) + k*T(n-2,k) for k >= 1 and n >= 3 with T(0,k) = 0 and T(1,k) = T(2,k) = 1 for all k >= 1; array T(n,k), read by descending antidiagonals, with n >= 0 and k >= 1.

The programs for A172237, there is no canonical definition to state claims against.
-/

/-! ## A172237.P2118541782361469748

`A083856(comp[∑[n-1]])`
-/

namespace A172237.P2118541782361469748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A172237.P2118541782361469748

/-! ## A172237.P1019951702971567366

`A060959(A099375(n)+1+n)`
-/

namespace A172237.P1019951702971567366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A099375 n + 1 + (n : ℤ)).toNat

end

end A172237.P1019951702971567366

/-! ## A172237.P8842506446647738272

`A060959(A061579(comp[∑[n]])+1)`
-/

namespace A172237.P8842506446647738272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A172237.P8842506446647738272

/-! ## A172237.P13154514945653970666

`A060959(A061579(comp[∑[n-1]]))`
-/

namespace A172237.P13154514945653970666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A172237.P13154514945653970666

/-! ## A172237.P2256028530454906843

`A060959(2*A004736(n+1)+n)`
-/

namespace A172237.P2256028530454906843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A172237.P2256028530454906843

/-! ## A172237.P1869213574209762084

`A060959(2-char[∑[n]]+A185782(n+1)+n)`
-/

namespace A172237.P1869213574209762084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A185782 (n + 1) + (n : ℤ))).toNat

end

end A172237.P1869213574209762084

/-! ## A172237.P351563957025163950

`A060959(A014132(A038722(n+1)))`
-/

namespace A172237.P351563957025163950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A172237.P351563957025163950

/-! ## A172237.P10140306437291075896

`A060959(A005843(A004736(n+1))+n)`
-/

namespace A172237.P10140306437291075896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A005843 (A004736 (n + 1)).toNat + (n : ℤ)).toNat

end

end A172237.P10140306437291075896

/-! ## A172237.P14648635962627647527

`A060959(A114327(n)+A014132(n+1))`
-/

namespace A172237.P14648635962627647527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A114327 n + A014132 (n + 1)).toNat

end

end A172237.P14648635962627647527

/-!
# A172238: Primes p such that either p+5/2+-3/2 is prime.

The programs for A172238, there is no canonical definition to state claims against.
-/

/-! ## A172238.P11022877180027558173

`A067830(n+1)-A255176(n)`
-/

namespace A172238.P11022877180027558173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 1) - A255176 n

end

end A172238.P11022877180027558173

/-! ## A172238.P13949436166490824038

`∪[A007352(n+1), A015913(n+1)]`
-/

namespace A172238.P13949436166490824038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172238.P13949436166490824038

/-! ## A172238.P15610420669467659787

`p?[abs(2-A040976(n+1))]`
-/

namespace A172238.P15610420669467659787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A040976 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P15610420669467659787

/-! ## A172238.P4282113344561082064

`p?[A145025(n+1)-2]`
-/

namespace A172238.P4282113344561082064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P4282113344561082064

/-! ## A172238.P9072245561336930440

`∩[A000040(n+1), A145025(n+1)-2]`
-/

namespace A172238.P9072245561336930440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172238.P9072245561336930440

/-! ## A172238.P5026447844108678209

`p?[∑[A290496(n+3)]]`
-/

namespace A172238.P5026447844108678209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290496 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P5026447844108678209

/-! ## A172238.P9735881385684553491

`p?[A001751(n+1)-4]`
-/

namespace A172238.P9735881385684553491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P9735881385684553491

/-! ## A172238.P507366325390628687

`p?[∑[A211005(n+3)]]`
-/

namespace A172238.P507366325390628687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211005 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P507366325390628687

/-! ## A172238.P13297997101725195347

`p?[A173919(n+1)-3]`
-/

namespace A172238.P13297997101725195347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P13297997101725195347

/-! ## A172238.P1298542038230471839

`∩[A045331(n+1), A124589(n+1)]`
-/

namespace A172238.P1298542038230471839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172238.P1298542038230471839

/-! ## A172238.P2738300468212986155

`p?[A030173(n+1)-2]`
-/

namespace A172238.P2738300468212986155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P2738300468212986155

/-! ## A172238.P9415576072535077901

`p?[n-A204897(n+1)]`
-/

namespace A172238.P9415576072535077901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A204897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P9415576072535077901

/-! ## A172238.P14361014080302306642

`p?[n*A204897(n+2)]`
-/

namespace A172238.P14361014080302306642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A204897 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P14361014080302306642

/-! ## A172238.P8747004039274319962

`p?[record[A319516(n+1)]]`
-/

namespace A172238.P8747004039274319962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P8747004039274319962

/-! ## A172238.P16743901966623604437

`p?[n-A270003(n+2)]`
-/

namespace A172238.P16743901966623604437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A270003 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P16743901966623604437

/-! ## A172238.P15979608727720212031

`p?[A065165(p?[2*n+1])]`
-/

namespace A172238.P15979608727720212031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065165 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P15979608727720212031

/-! ## A172238.P15874325997892656761

`A065988(A067830(n+1))`
-/

namespace A172238.P15874325997892656761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065988 (A067830 (n + 1)).toNat

end

end A172238.P15874325997892656761

/-! ## A172238.P14855989790658748725

`filter[A124589(n+1), A131719(#)]`
-/

namespace A172238.P14855989790658748725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A172238.P14855989790658748725

/-! ## A172238.P2981226114564079129

`p?[n-A181569(A181569(n+1))]`
-/

namespace A172238.P2981226114564079129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A181569 (A181569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172238.P2981226114564079129

/-! ## A172238.P6816172038976586132

`eq[A060000(n+1), A112823(n+2)]`
-/

namespace A172238.P6816172038976586132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172238.P6816172038976586132

/-!
# A172239: Partial sums of primorial primes A018239.

The programs for A172239, there is no canonical definition to state claims against.
-/

/-! ## A172239.P2935003533343688557

`∑[A018239(n+1)]`
-/

namespace A172239.P2935003533343688557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172239.P2935003533343688557

/-! ## A172239.P12449941204202109674

`∑[record[A305400(n)+1]]`
-/

namespace A172239.P12449941204202109674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305400 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172239.P12449941204202109674

/-! ## A172239.P17501856728322830641

`∑[A136351(n+1)+1]`
-/

namespace A172239.P17501856728322830641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136351 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172239.P17501856728322830641

/-!
# A172240: Odd primes not in A181669.

The programs for A172240, there is no canonical definition to state claims against.
-/

/-! ## A172240.P7654835379019336380

`p?[A005408(comp[A265764(n+1)])]`
-/

namespace A172240.P7654835379019336380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265764 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172240.P7654835379019336380

/-! ## A172240.P16712856466460914625

`A172260(n)-a(n-1)` with `a(0)=3`
-/

namespace A172240.P16712856466460914625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A172260 n - a (n - 1)

end

end A172240.P16712856466460914625

/-! ## A172240.P13556067146772113191

`p?[A091703(n*A175597(n+1))]`
-/

namespace A172240.P13556067146772113191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 ((n : ℤ) * A175597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172240.P13556067146772113191

/-! ## A172240.P15471579252997706973

`A000040(lt[A341828(3*n+1), A211110(2*(n+2))])`
-/

namespace A172240.P15471579252997706973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341828 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172240.P15471579252997706973

/-! ## A172240.P17970858093427691905

`A000040(lt[4, A120251(3*n+5)])`
-/

namespace A172240.P17970858093427691905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120251 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A172240.P17970858093427691905

/-!
# A172241: a(n) = (1/18)*(8^n - (-1)^n - 9).

The programs for A172241, the canonical program `A172241.P13890936749934988120` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172241 has offset 1).

The definition of A172241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172241.P13890936749934988120

`(8^(n+1)-(-1)^(n+1)-9)/18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172241

/-- `(8^(n+1)-(-1)^(n+1)-9)/18` -/
def P13890936749934988120.Spec : Prop :=
  ∀ n, P13890936749934988120.a n = (A172241 (n + 1) : ℚ)

end A172241

/-! ## A172241.P4273626215171040764

`1/18*(8^(n+1)-(-1)^(n+1)-9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172241.P4273626215171040764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 18 * ((8 ^ (n + 1) : ℤ) - (-1) ^ (n + 1) - 9 : ℚ)

end

end A172241.P4273626215171040764

namespace A172241

/-- `1/18*(8^(n+1)-(-1)^(n+1)-9)` -/
def P4273626215171040764.Spec : Prop :=
  ∀ n, P4273626215171040764.a n = (A172241 (n + 1) : ℚ)

end A172241

/-! ## A172241.P3513086519393238706

`record[and(1-n%3, floor((sqrt(2)^n/3)²))]`
-/

namespace A172241.P3513086519393238706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - ((n % 3 : ℕ) : ℤ)) ⌊(Real.sqrt (2 : ℝ) ^ n / 3) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172241.P3513086519393238706

namespace A172241

/-- `record[and(1-n%3, floor((sqrt(2)^n/3)²))]` -/
def P3513086519393238706.Spec : Prop :=
  ∀ n, P3513086519393238706.a n = A172241 (n + 1)

end A172241

/-! ## A172241.P5276689718831412130

`A153234(3*n+2)`
-/

namespace A172241.P5276689718831412130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (3 * n + 2)

end

end A172241.P5276689718831412130

namespace A172241

/-- `A153234(3*n+2)` -/
def P5276689718831412130.Spec : Prop :=
  ∀ n, P5276689718831412130.a n = A172241 (n + 1)

end A172241

/-! ## A172241.P4688649045874564146

`record[A153234(A014682(n))]`
-/

namespace A172241.P4688649045874564146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172241.P4688649045874564146

namespace A172241

/-- `record[A153234(A014682(n))]` -/
def P4688649045874564146.Spec : Prop :=
  ∀ n, P4688649045874564146.a n = A172241 (n + 1)

end A172241

/-! ## A172241.P14172902341828888338

`A172143(A077043(n+1))`
-/

namespace A172241.P14172902341828888338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172143 (A077043 (n + 1)).toNat

end

end A172241.P14172902341828888338

namespace A172241

/-- `A172143(A077043(n+1))` -/
def P14172902341828888338.Spec : Prop :=
  ∀ n, P14172902341828888338.a n = A172241 (n + 1)

end A172241

/-! ## A172241.P13359782699216951705

`A113405(3*n+2)-Δ[A008619(n)]`
-/

namespace A172241.P13359782699216951705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (3 * n + 2) - (f1 (n + 1) - f1 n)

end

end A172241.P13359782699216951705

namespace A172241

/-- `A113405(3*n+2)-Δ[A008619(n)]` -/
def P13359782699216951705.Spec : Prop :=
  ∀ n, P13359782699216951705.a n = A172241 (n + 1)

end A172241

/-! ## A172241.P12769867510547461187

`A039305(n+1)/3-1`
-/

namespace A172241.P12769867510547461187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039305 (n + 1) : ℚ) / 3 - 1

end

end A172241.P12769867510547461187

namespace A172241

/-- `A039305(n+1)/3-1` -/
def P12769867510547461187.Spec : Prop :=
  ∀ n, P12769867510547461187.a n = (A172241 (n + 1) : ℚ)

end A172241

/-! ## A172241.P5918956995157609416

`record[lcm(floor(2^n/9), A131531(n+1))]`
-/

namespace A172241.P5918956995157609416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(2 ^ n : ℚ) / 9⌋ (A131531 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172241.P5918956995157609416

namespace A172241

/-- `record[lcm(floor(2^n/9), A131531(n+1))]` -/
def P5918956995157609416.Spec : Prop :=
  ∀ n, (P5918956995157609416.a n : ℤ) = A172241 (n + 1)

end A172241

/-!
# A172242: Number of 10-D hypercubes in an n-dimensional hypercube.

The programs for A172242, the canonical program `A172242.P11438388179575485062` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172242 has offset 10).

The definition of A172242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172242.P11438388179575485062

`C(n+10, 10)*2^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172242

/-- `C(n+10, 10)*2^n` -/
def P11438388179575485062.Spec : Prop :=
  ∀ n, (P11438388179575485062.a n : ℤ) = A172242 (n + 10)

theorem P11438388179575485062.correct : P11438388179575485062.Spec := by
  intro n
  simp only [A172242, Nat.add_sub_cancel]

end A172242

/-! ## A172242.P12694802543404623818

`(20/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A172242.P12694802543404623818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (20 / (n : ℚ) + 2) * a (n - 1)

end

end A172242.P12694802543404623818

namespace A172242

/-- `(20/n+2)*a(n-1)` -/
def P12694802543404623818.Spec : Prop :=
  ∀ n, P12694802543404623818.a n = (A172242 (n + 10) : ℚ)

end A172242

/-! ## A172242.P1197913306233703450

`2^n*A001287(n)`
-/

namespace A172242.P1197913306233703450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001287 (n + 10)

end

end A172242.P1197913306233703450

namespace A172242

/-- `2^n*A001287(n)` -/
def P1197913306233703450.Spec : Prop :=
  ∀ n, P1197913306233703450.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P12017045867759317902

`2^n*∑[A000582(n+9)]`
-/

namespace A172242.P12017045867759317902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172242.P12017045867759317902

namespace A172242

/-- `2^n*∑[A000582(n+9)]` -/
def P12017045867759317902.Spec : Prop :=
  ∀ n, P12017045867759317902.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P6217590470486162651

`a(n-1)+A140354(n)+a(n-1)` with `a(0)=1`
-/

namespace A172242.P6217590470486162651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A140354 n + a (n - 1))

end

end A172242.P6217590470486162651

namespace A172242

/-- `a(n-1)+A140354(n)+a(n-1)` -/
def P6217590470486162651.Spec : Prop :=
  ∀ n, P6217590470486162651.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P7335765426575599460

`A001287(n)*A011782(n+1)`
-/

namespace A172242.P7335765426575599460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A011782 (n + 1)

end

end A172242.P7335765426575599460

namespace A172242

/-- `A001287(n)*A011782(n+1)` -/
def P7335765426575599460.Spec : Prop :=
  ∀ n, P7335765426575599460.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P12792930513831448189

`∑[A000582(n+9)]*A000079(n)`
-/

namespace A172242.P12792930513831448189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A172242.P12792930513831448189

namespace A172242

/-- `∑[A000582(n+9)]*A000079(n)` -/
def P12792930513831448189.Spec : Prop :=
  ∀ n, P12792930513831448189.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P16889359326395679841

`∑[∑[A000581(n+8)]]*A000079(n)`
-/

namespace A172242.P16889359326395679841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A172242.P16889359326395679841

namespace A172242

/-- `∑[∑[A000581(n+8)]]*A000079(n)` -/
def P16889359326395679841.Spec : Prop :=
  ∀ n, P16889359326395679841.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P6337372855558065089

`A001287(n)+A000225(n)*A001287(n)`
-/

namespace A172242.P6337372855558065089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) + A000225 n * A001287 (n + 10)

end

end A172242.P6337372855558065089

namespace A172242

/-- `A001287(n)+A000225(n)*A001287(n)` -/
def P6337372855558065089.Spec : Prop :=
  ∀ n, P6337372855558065089.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P2636275001398458949

`A000079(n)/A000244(n)*A172362(n)`
-/

namespace A172242.P2636275001398458949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000244 n : ℚ) * (A172362 n : ℚ)

end

end A172242.P2636275001398458949

namespace A172242

/-- `A000079(n)/A000244(n)*A172362(n)` -/
def P2636275001398458949.Spec : Prop :=
  ∀ n, P2636275001398458949.a n = (A172242 (n + 10) : ℚ)

end A172242

/-! ## A172242.P8603970974814345584

`A213352(A002620(n+1))`
-/

namespace A172242.P8603970974814345584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213352 ((A002620 (n + 1)).toNat + 10)

end

end A172242.P8603970974814345584

namespace A172242

/-- `A213352(A002620(n+1))` -/
def P8603970974814345584.Spec : Prop :=
  ∀ n, P8603970974814345584.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P4181502107145296085

`2^n*A007318(A000096(n+9)+11)`
-/

namespace A172242.P4181502107145296085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007318 (A000096 (n + 9) + 11).toNat

end

end A172242.P4181502107145296085

namespace A172242

/-- `2^n*A007318(A000096(n+9)+11)` -/
def P4181502107145296085.Spec : Prop :=
  ∀ n, P4181502107145296085.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P15077591022030175995

`2^n*A007318(A000124(n+11)-12)`
-/

namespace A172242.P15077591022030175995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007318 (A000124 (n + 11) - 12).toNat

end

end A172242.P15077591022030175995

namespace A172242

/-- `2^n*A007318(A000124(n+11)-12)` -/
def P15077591022030175995.Spec : Prop :=
  ∀ n, P15077591022030175995.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P4198148734203624998

`2^n*A007318(eq[10, A002262(n)])`
-/

namespace A172242.P4198148734203624998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172242.P4198148734203624998

namespace A172242

/-- `2^n*A007318(eq[10, A002262(n)])` -/
def P4198148734203624998.Spec : Prop :=
  ∀ n, P4198148734203624998.a n = A172242 (n + 10)

end A172242

/-! ## A172242.P14769813925552670591

`A173124(n)/A000244(n)`
-/

namespace A172242.P14769813925552670591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173124 n : ℚ) / (A000244 n : ℚ)

end

end A172242.P14769813925552670591

namespace A172242

/-- `A173124(n)/A000244(n)` -/
def P14769813925552670591.Spec : Prop :=
  ∀ n, P14769813925552670591.a n = (A172242 (n + 10) : ℚ)

end A172242

/-!
# A172243: Partial sums of A080076.

The programs for A172243, the canonical program `A172243.P15321904317358311032` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172243 has offset 1).

The definition of A172243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172243.P15321904317358311032

`∑[A080076(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A172243

/-- `∑[A080076(n+1)]` -/
def P15321904317358311032.Spec : Prop :=
  ∀ n, P15321904317358311032.a n = A172243 (n + 1)

theorem P15321904317358311032.correct : P15321904317358311032.Spec := by
  intro n
  simp only [A172243, Nat.add_sub_cancel]

end A172243

/-! ## A172243.P13299959996944291500

`∑[record[A080076(A133310(n))]]`
-/

namespace A172243.P13299959996944291500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080076 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172243.P13299959996944291500

namespace A172243

/-- `∑[record[A080076(A133310(n))]]` -/
def P13299959996944291500.Spec : Prop :=
  ∀ n, P13299959996944291500.a n = A172243 (n + 1)

end A172243

/-! ## A172243.P1084581956305219785

`∑[p?[A080075(n+1)]]`
-/

namespace A172243.P1084581956305219785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172243.P1084581956305219785

namespace A172243

/-- `∑[p?[A080075(n+1)]]` -/
def P1084581956305219785.Spec : Prop :=
  ∀ n, P1084581956305219785.a n = A172243 (n + 1)

end A172243

/-! ## A172243.P10482053072811904803

`∑[p?[A112714(n+1)+2]]`
-/

namespace A172243.P10482053072811904803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172243.P10482053072811904803

namespace A172243

/-- `∑[p?[A112714(n+1)+2]]` -/
def P10482053072811904803.Spec : Prop :=
  ∀ n, P10482053072811904803.a n = A172243 (n + 1)

end A172243

/-! ## A172243.P319104434694927654

`∑[p?[A116882(n+2)+1]]`
-/

namespace A172243.P319104434694927654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172243.P319104434694927654

namespace A172243

/-- `∑[p?[A116882(n+2)+1]]` -/
def P319104434694927654.Spec : Prop :=
  ∀ n, P319104434694927654.a n = A172243 (n + 1)

end A172243

/-!
# A172245: a(n) = number of ways of writing n = i+j such that i<=j, gcd(i,j,n)=1, and the values of N(i,j,n) are distinct, where N(i,j,n) = product of distinct prime divisors of i*j*n.

The programs for A172245, there is no canonical definition to state claims against.
-/

/-! ## A172245.P11565231387838767387

`A075167(A208244(2^n))`
-/

namespace A172245.P11565231387838767387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A208244 (2 ^ n)).toNat

end

end A172245.P11565231387838767387

/-! ## A172245.P18138881807308570413

`A287272(or(A000005(n+1), A186987(n+1)))`
-/

namespace A172245.P18138881807308570413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (Int.lor (A000005 (n + 1)) (A186987 (n + 1))).toNat

end

end A172245.P18138881807308570413

/-! ## A172245.P7899623898758343100

`A287272(A000005(n+1)+A186987(n+1)-2)`
-/

namespace A172245.P7899623898758343100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A000005 (n + 1) + (A186987 (n + 1) - 2)).toNat

end

end A172245.P7899623898758343100

/-! ## A172245.P857196898616723415

`A001221(A002944(A000010(n+1))*A079542(n+1))`
-/

namespace A172245.P857196898616723415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002944 (A000010 (n + 1)).toNat * A079542 (n + 1)).toNat

end

end A172245.P857196898616723415

/-! ## A172245.P3031751097679733382

`A001222(A001221(2*n+3)*A028257(n+1))`
-/

namespace A172245.P3031751097679733382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001221 (2 * n + 3) * A028257 (n + 1)).toNat

end

end A172245.P3031751097679733382

/-!
# A172246: Consider all ways of writing n = a + b where a<=b, gcd(a,b,n)=1, and having the same value of the function N(a,b,n) defined as product of the distinct prime divisors of a*b*n. Let w be the list of frequencies of distinct terms N(a, b, n) found among these partitions. If no frequency is more than 1 then a(n) = 0, otherwise a(n) = [the sum of elements of w] - [the number of elements of w] + 1.

The programs for A172246, there is no canonical definition to state claims against.
-/

/-! ## A172246.P10098959824510840191

`A102091(n+1)%A383458(n+1)`
-/

namespace A172246.P10098959824510840191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102091 (n + 1)) (A383458 (n + 1))

end

end A172246.P10098959824510840191

/-! ## A172246.P11777665207954107113

`A001221(C(A308017(n+1), A308066(n+1)))`
-/

namespace A172246.P11777665207954107113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A308017 (n + 1)).toNat (A308066 (n + 1)).toNat)

end

end A172246.P11777665207954107113

/-! ## A172246.P16010036168181344231

`lcm(A001285(A111636(n)), A308066(n+1))`
-/

namespace A172246.P16010036168181344231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 (A111636 n).toNat) (A308066 (n + 1))

end

end A172246.P16010036168181344231

/-! ## A172246.P2848349885903340831

`A046951(record[A308049(n+1)])*A308066(n+1)`
-/

namespace A172246.P2848349885903340831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A308066 (n + 1)

end

end A172246.P2848349885903340831

/-! ## A172246.P10802580076797620364

`Δ[A101290(A000041(floor(n/2)))]`
-/

namespace A172246.P10802580076797620364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101290 (A000041 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172246.P10802580076797620364

/-!
# A172247: Numbers k for which there are at least 2 partitions k = x+y with x<=y and gcd(x,y,k)=1 having the same value N(x,y,n) defined as the product of distinct prime divisors of x*y*n.

The programs for A172247, there is no canonical definition to state claims against.
-/

/-! ## A172247.P224950988506310866

`lt[0, A172246(n+2)]+2`
-/

namespace A172247.P224950988506310866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172246 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A172247.P224950988506310866

/-! ## A172247.P13119596449942649731

`lt[0, A172246(A233583(n+1))]`
-/

namespace A172247.P13119596449942649731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172246 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A172247.P13119596449942649731

/-! ## A172247.P8945576929229699997

`2*(lt[A328831(A155212(n²+n)+5), 1]+1)+5`
-/

namespace A172247.P8945576929229699997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328831 (A155212 (n ^ 2 + n) + 5).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + 5

end

end A172247.P8945576929229699997

/-! ## A172247.P6686037968808739826

`lt[A136522(A238383(n)), A000035(n)]`
-/

namespace A172247.P6686037968808739826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A238383 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A172247.P6686037968808739826

/-! ## A172247.P10880441455831231659

`lt[A103314(n), A359005(A005708(n))]`
-/

namespace A172247.P10880441455831231659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359005 (A005708 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A172247.P10880441455831231659

/-!
# A172248: Numbers k such that there do not exist two ways of writing k = a+b with a<=b, gcd(k,a,b)=1, and the same value of N(a,b,k) = product of distinct prime divisors of a*b*k.

The programs for A172248, there is no canonical definition to state claims against.
-/

/-! ## A172248.P11040747491119732066

`comp[A172247(n+1)-2]+2`
-/

namespace A172248.P11040747491119732066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172247 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172248.P11040747491119732066

/-! ## A172248.P2770124903022392909

`eq[A023022(n+2), A172245(n+2)]+2`
-/

namespace A172248.P2770124903022392909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172245 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A172248.P2770124903022392909

/-! ## A172248.P16310592858850141167

`eq[0, A172246(n+2)]+2`
-/

namespace A172248.P16310592858850141167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172246 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A172248.P16310592858850141167

/-! ## A172248.P17109753283453183186

`record[A020725(n+1)-A172246(n+2)]`
-/

namespace A172248.P17109753283453183186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A172246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172248.P17109753283453183186

/-! ## A172248.P15421387366183637966

`record[A000027(n+2)-A172246(n+2)]`
-/

namespace A172248.P15421387366183637966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2) - A172246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172248.P15421387366183637966

/-! ## A172248.P1646340525872882479

`record[A004526(2*(n+2))-A172246(n+2)]`
-/

namespace A172248.P1646340525872882479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (n + 2)) - A172246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172248.P1646340525872882479

/-! ## A172248.P3613524850667476509

`record[A080513(A005408(n))-A172246(n+2)]`
-/

namespace A172248.P3613524850667476509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A005408 n).toNat - A172246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172248.P3613524850667476509

/-! ## A172248.P2102445670997749892

`record[A080513(n+1)-A172246(A080513(n+1))]`
-/

namespace A172248.P2102445670997749892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (n + 1) - A172246 (A080513 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172248.P2102445670997749892

/-!
# A172249: Triangle, read by rows, given by [0,1/3,-1/3,0,0,0,0,0,0,0,...] DELTA [3,-1/3,1/3,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A172249, there is no canonical definition to state claims against.
-/

/-! ## A172249.P2592809316259813556

`2*A210739(n+1)-A210564(n+1)`
-/

namespace A172249.P2592809316259813556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210739 (n + 1) - A210564 (n + 1)

end

end A172249.P2592809316259813556

/-! ## A172249.P486290641139526201

`A218879(A208918(n+2)+1)-Δ[A209760(n+1)]`
-/

namespace A172249.P486290641139526201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218879 (A208918 (n + 2) + 1).toNat - (f1 (n + 1) - f1 n)

end

end A172249.P486290641139526201

/-! ## A172249.P2438902251716554712

`A108611(7*A210217(n+1))-Δ[A209760(n+1)]`
-/

namespace A172249.P2438902251716554712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (7 * A210217 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A172249.P2438902251716554712

/-! ## A172249.P3180135804081957157

`A037226(A210223(n+1)^4)-Δ[A209760(n+1)]`
-/

namespace A172249.P3180135804081957157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 (A210223 (n + 1) ^ 4).toNat - (f1 (n + 1) - f1 n)

end

end A172249.P3180135804081957157

/-!
# A172250: Triangle, read by rows, given by [0,1,-1,0,0,0,0,0,0,0,...] DELTA [1,-1,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A172250, there is no canonical definition to state claims against.
-/

/-! ## A172250.P3028136253061894230

`Δ[A054725(A241953(A028435(n+1)))]`
-/

namespace A172250.P3028136253061894230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A241953 (A028435 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172250.P3028136253061894230

/-! ## A172250.P13976537338043987424

`A001221(A110723(n+2))-A241085(n)`
-/

namespace A172250.P13976537338043987424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A110723 (n + 2)).toNat - A241085 n

end

end A172250.P13976537338043987424

/-! ## A172250.P14320832529837644730

`A343633(A068913(2*n+1)^A107286(n))`
-/

namespace A172250.P14320832529837644730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343633 (SequenceMachineLib.roundAway ((A068913 (2 * n + 1) : ℚ) ^ (A107286 n : ℤ))).toNat

end

end A172250.P14320832529837644730

/-! ## A172250.P4015628993090485811

`A304362(A028310(n)*A280730(n+1))`
-/

namespace A172250.P4015628993090485811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (A028310 n * A280730 (n + 1)).toNat

end

end A172250.P4015628993090485811

/-! ## A172250.P9104407290658934564

`A131576(A371796(n+4))-∑{d}[n, (#%#²)%2]`
-/

namespace A172250.P9104407290658934564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A371796 (n + 4)).toNat - ((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 % 2 : ℕ) : ℤ)

end

end A172250.P9104407290658934564

/-!
# A172252: a(n) = 4*2^n - 9.

The programs for A172252, the canonical program `A172252.P507886656103785375` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172252 has offset 1).

The definition of A172252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*2^(n+1)-9` (program `A172252.P507886656103785375`, by `A172252.P507886656103785375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172252.P507886656103785375

`4*2^(n+1)-9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172252

/-- `4*2^(n+1)-9` -/
def P507886656103785375.Spec : Prop :=
  ∀ n, P507886656103785375.a n = A172252 (n + 1)

theorem P507886656103785375.correct : P507886656103785375.Spec := by
  intro n
  simp only [A172252, Nat.add_sub_cancel]

end A172252

/-! ## A172252.P17551458817706567925

`A185346(n+3)`
-/

namespace A172252.P17551458817706567925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185346 (n + 3)

end

end A172252.P17551458817706567925

namespace A172252

/-- `A185346(n+3)` -/
def P17551458817706567925.Spec : Prop :=
  ∀ n, P17551458817706567925.a n = A172252 (n + 1)

end A172252

/-! ## A172252.P5464472307570563995

`or(7, 8*(2^n-2))`
-/

namespace A172252.P5464472307570563995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (8 * ((2 ^ n : ℤ) - 2))

end

end A172252.P5464472307570563995

namespace A172252

/-- `or(7, 8*(2^n-2))` -/
def P5464472307570563995.Spec : Prop :=
  ∀ n, P5464472307570563995.a n = A172252 (n + 1)

end A172252

/-! ## A172252.P5943412605508872170

`xor(7, 8*(2^n-2))`
-/

namespace A172252.P5943412605508872170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (8 * ((2 ^ n : ℤ) - 2))

end

end A172252.P5943412605508872170

namespace A172252

/-- `xor(7, 8*(2^n-2))` -/
def P5943412605508872170.Spec : Prop :=
  ∀ n, P5943412605508872170.a n = A172252 (n + 1)

end A172252

/-! ## A172252.P13708252002539032756

`record[2^abs(3-n)-9]`
-/

namespace A172252.P13708252002539032756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|3 - (n : ℤ)| : ℤ) - 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172252.P13708252002539032756

namespace A172252

/-- `record[2^abs(3-n)-9]` -/
def P13708252002539032756.Spec : Prop :=
  ∀ n, P13708252002539032756.a n = (A172252 (n + 1) : ℚ)

end A172252

/-! ## A172252.P13186553778658622669

`∑[2*a(n-1)]` with `a(0)=-1, a(1)=8`
-/

namespace A172252.P13186553778658622669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172252.P13186553778658622669

namespace A172252

/-- `∑[2*a(n-1)]` -/
def P13186553778658622669.Spec : Prop :=
  ∀ n, P13186553778658622669.a n = A172252 (n + 1)

end A172252

/-! ## A172252.P6245482452769290964

`floor(a(n-1)+a(n-1)+9)` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A172252.P6245482452769290964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (a (n - 1) + 9)

end

end A172252.P6245482452769290964

namespace A172252

/-- `floor(a(n-1)+a(n-1)+9)` -/
def P6245482452769290964.Spec : Prop :=
  ∀ n, P6245482452769290964.a n = A172252 (n + 1)

theorem P6245482452769290964.correct : P6245482452769290964.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A172252, Nat.add_sub_cancel, A172252.P6245482452769290964.a, A172252.P507886656103785375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A172252, Nat.add_sub_cancel, A172252.P6245482452769290964.a, A172252.P507886656103785375.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172252

/-! ## A172252.P5714870613572612883

`3*(3-(a(n-1)/3-a(n-1)))` with `a(0)=-1`
-/

namespace A172252.P5714870613572612883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  3 * (3 - (a (n - 1) / 3 - a (n - 1)))

end

end A172252.P5714870613572612883

namespace A172252

/-- `3*(3-(a(n-1)/3-a(n-1)))` -/
def P5714870613572612883.Spec : Prop :=
  ∀ n, P5714870613572612883.a n = (A172252 (n + 1) : ℚ)

theorem P5714870613572612883.correct : P5714870613572612883.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A172252, Nat.add_sub_cancel, A172252.P5714870613572612883.a, A172252.P507886656103785375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A172252, Nat.add_sub_cancel, A172252.P5714870613572612883.a, A172252.P507886656103785375.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172252

/-! ## A172252.P9616381405636257600

`Δ[A220588(n+3)+(1-n)²]`
-/

namespace A172252.P9616381405636257600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220588 (n + 3) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172252.P9616381405636257600

namespace A172252

/-- `Δ[A220588(n+3)+(1-n)²]` -/
def P9616381405636257600.Spec : Prop :=
  ∀ n, P9616381405636257600.a n = A172252 (n + 1)

end A172252

/-! ## A172252.P2414917604102255041

`Δ[A324172(n+3)+(2-n)²]`
-/

namespace A172252.P2414917604102255041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324172 (n + 3) + (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172252.P2414917604102255041

namespace A172252

/-- `Δ[A324172(n+3)+(2-n)²]` -/
def P2414917604102255041.Spec : Prop :=
  ∀ n, P2414917604102255041.a n = A172252 (n + 1)

end A172252

/-! ## A172252.P7611395353340137816

`(A004171(n+1)-A005010(n))/A000079(n)`
-/

namespace A172252.P7611395353340137816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 (n + 1) - A005010 n : ℚ) / (A000079 n : ℚ)

end

end A172252.P7611395353340137816

namespace A172252

/-- `(A004171(n+1)-A005010(n))/A000079(n)` -/
def P7611395353340137816.Spec : Prop :=
  ∀ n, P7611395353340137816.a n = (A172252 (n + 1) : ℚ)

end A172252

/-! ## A172252.P13438833117190599910

`(A283070(n+1)-A267615(n))/A094373(n+1)`
-/

namespace A172252.P13438833117190599910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283070 (n + 1) - A267615 n : ℚ) / (A094373 (n + 1) : ℚ)

end

end A172252.P13438833117190599910

namespace A172252

/-- `(A283070(n+1)-A267615(n))/A094373(n+1)` -/
def P13438833117190599910.Spec : Prop :=
  ∀ n, P13438833117190599910.a n = (A172252 (n + 1) : ℚ)

end A172252

/-! ## A172252.P14746794162157952865

`(A171499(n+1)-A171494(n+1))/A000079(n+1)`
-/

namespace A172252.P14746794162157952865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171499 (n + 1) - A171494 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A172252.P14746794162157952865

namespace A172252

/-- `(A171499(n+1)-A171494(n+1))/A000079(n+1)` -/
def P14746794162157952865.Spec : Prop :=
  ∀ n, P14746794162157952865.a n = (A172252 (n + 1) : ℚ)

end A172252

/-!
# A172253: Numbers k such that the squarefree kernel of 9^k*(9^k - 1) is 3*(9^k - 1)/4.

The programs for A172253, there is no canonical definition to state claims against.
-/

/-! ## A172253.P16580178573307675028

`∩[A049093(n+1), comp[A249025(n+1)]]`
-/

namespace A172253.P16580178573307675028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249025 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A172253.P16580178573307675028

/-! ## A172253.P9095509750359463803

`record[gcd(A111807(n+1), A132740(n+1))]`
-/

namespace A172253.P9095509750359463803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111807 (n + 1)) (A132740 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172253.P9095509750359463803

/-! ## A172253.P2442641295915783257

`eq[A040639(n), A103583(A321648(3*n+2))]`
-/

namespace A172253.P2442641295915783257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103583 (A321648 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172253.P2442641295915783257

/-! ## A172253.P13458359600671178528

`eq[A100762(A007956(2*n+3)), A365689(n)]`
-/

namespace A172253.P13458359600671178528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100762 (A007956 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172253.P13458359600671178528

/-! ## A172253.P2754092172142495057

`eq[A088663(n), A358750(n+1)]`
-/

namespace A172253.P2754092172142495057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172253.P2754092172142495057

/-!
# A172254: 1 followed by period 4: repeat [-1, 3, -2, -1].

The programs for A172254, the canonical program `A172254.P11722927032311407097` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172254 has offset 1).

The definition of A172254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172254.P11722927032311407097

`a(n-4)` with `a(0)=1, a(1)=-1, a(2)=3, a(3)=-2, a(4)=-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172254

/-- `a(n-4)` -/
def P11722927032311407097.Spec : Prop :=
  ∀ n, P11722927032311407097.a n = A172254 (n + 1)

theorem P11722927032311407097.correct : P11722927032311407097.Spec := by
  intro n
  simp only [A172254, Nat.add_sub_cancel]

end A172254

/-!
# A172255: Partial sums of the Fermat pseudoprimes to base 2, A001567.

The programs for A172255, there is no canonical definition to state claims against.
-/

/-! ## A172255.P12198283076968470347

`∑[A001567(n+1)]`
-/

namespace A172255.P12198283076968470347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P12198283076968470347

/-! ## A172255.P12873348430423143241

`∑[record[A001567(A324347(n))]]`
-/

namespace A172255.P12873348430423143241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P12873348430423143241

/-! ## A172255.P2088583649003264148

`∑[record[A001567(A328399(n))]]`
-/

namespace A172255.P2088583649003264148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P2088583649003264148

/-! ## A172255.P4448619965877326635

`∑[record[A001567(A344180(n))]]`
-/

namespace A172255.P4448619965877326635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P4448619965877326635

/-! ## A172255.P18315682067141914095

`∑[∪[A050217(n+1), A080747(n+1)]]`
-/

namespace A172255.P18315682067141914095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P18315682067141914095

/-! ## A172255.P11855306329757155089

`∑[∪[A066488(n+1), A080747(n+1)]]`
-/

namespace A172255.P11855306329757155089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P11855306329757155089

/-! ## A172255.P15365877370215235188

`∑[∩[A020136(n+1), A020137(n+1)]]`
-/

namespace A172255.P15365877370215235188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P15365877370215235188

/-! ## A172255.P10133888426654077106

`∑[record[A001567(A328628(n))]]`
-/

namespace A172255.P10133888426654077106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A328628 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P10133888426654077106

/-! ## A172255.P4545781874278409122

`∑[record[A001567(A154958(n))]]`
-/

namespace A172255.P4545781874278409122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P4545781874278409122

/-! ## A172255.P6373688006564498335

`∑[record[A001567(A065648(n))]]`
-/

namespace A172255.P6373688006564498335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P6373688006564498335

/-! ## A172255.P14736771292176367132

`∑[record[A001567(A263275(n))]]`
-/

namespace A172255.P14736771292176367132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172255.P14736771292176367132

/-!
# A172256: Primes p such that 2*p+-3 are both nonprimes.

The programs for A172256, the canonical program `A172256.P3636128237648149891` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172256 has offset 1).

The definition of A172256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172256.P3636128237648149891

`∩[A153043(n+1), A163769(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A172256

/-- `∩[A153043(n+1), A163769(n+1)]` -/
def P3636128237648149891.Spec : Prop :=
  ∀ n, (P3636128237648149891.a n : ℤ) = A172256 (n + 1)

theorem P3636128237648149891.correct : P3636128237648149891.Spec := by
  intro n
  simp only [A172256, Nat.add_sub_cancel]

end A172256

/-! ## A172256.P2763697397069734513

`p?[A130771(n+1)]`
-/

namespace A172256.P2763697397069734513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172256.P2763697397069734513

namespace A172256

/-- `p?[A130771(n+1)]` -/
def P2763697397069734513.Spec : Prop :=
  ∀ n, P2763697397069734513.a n = A172256 (n + 1)

end A172256

/-! ## A172256.P15269791225537554436

`p?[record[A130771(A117910(n))]]`
-/

namespace A172256.P15269791225537554436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172256.P15269791225537554436

namespace A172256

/-- `p?[record[A130771(A117910(n))]]` -/
def P15269791225537554436.Spec : Prop :=
  ∀ n, P15269791225537554436.a n = A172256 (n + 1)

end A172256

/-! ## A172256.P785498009692066630

`p?[record[A130771(A133310(n))]]`
-/

namespace A172256.P785498009692066630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172256.P785498009692066630

namespace A172256

/-- `p?[record[A130771(A133310(n))]]` -/
def P785498009692066630.Spec : Prop :=
  ∀ n, P785498009692066630.a n = A172256 (n + 1)

end A172256

/-! ## A172256.P3562119496945856968

`record[A006530(A130771(n+3))]`
-/

namespace A172256.P3562119496945856968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A130771 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172256.P3562119496945856968

namespace A172256

/-- `record[A006530(A130771(n+3))]` -/
def P3562119496945856968.Spec : Prop :=
  ∀ n, P3562119496945856968.a n = A172256 (n + 1)

end A172256

/-! ## A172256.P15402416714598464548

`filter[A130771(n+1), A010051(#)]`
-/

namespace A172256.P15402416714598464548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A172256.P15402416714598464548

namespace A172256

/-- `filter[A130771(n+1), A010051(#)]` -/
def P15402416714598464548.Spec : Prop :=
  ∀ n, P15402416714598464548.a n = A172256 (n + 1)

end A172256

/-! ## A172256.P8933320100492907285

`filter[A130771(n+1), A080339(#)]`
-/

namespace A172256.P8933320100492907285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A172256.P8933320100492907285

namespace A172256

/-- `filter[A130771(n+1), A080339(#)]` -/
def P8933320100492907285.Spec : Prop :=
  ∀ n, P8933320100492907285.a n = A172256 (n + 1)

end A172256

/-! ## A172256.P5995327583462049580

`filter[A130771(n+1), A080545(#)]`
-/

namespace A172256.P5995327583462049580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A172256.P5995327583462049580

namespace A172256

/-- `filter[A130771(n+1), A080545(#)]` -/
def P5995327583462049580.Spec : Prop :=
  ∀ n, P5995327583462049580.a n = A172256 (n + 1)

end A172256

/-! ## A172256.P12629359383387793486

`filter[A130771(n+1), A171387(#)]`
-/

namespace A172256.P12629359383387793486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A172256.P12629359383387793486

namespace A172256

/-- `filter[A130771(n+1), A171387(#)]` -/
def P12629359383387793486.Spec : Prop :=
  ∀ n, P12629359383387793486.a n = A172256 (n + 1)

end A172256

/-! ## A172256.P944196724720203726

`∩[A000040(n+1), A130771(n+1)]`
-/

namespace A172256.P944196724720203726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P944196724720203726

namespace A172256

/-- `∩[A000040(n+1), A130771(n+1)]` -/
def P944196724720203726.Spec : Prop :=
  ∀ n, (P944196724720203726.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P7735021482466872002

`∩[A004139(n+1), A130771(n+1)]`
-/

namespace A172256.P7735021482466872002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P7735021482466872002

namespace A172256

/-- `∩[A004139(n+1), A130771(n+1)]` -/
def P7735021482466872002.Spec : Prop :=
  ∀ n, (P7735021482466872002.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P8786887306731137082

`∩[A006005(n+1), A130771(n+1)]`
-/

namespace A172256.P8786887306731137082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P8786887306731137082

namespace A172256

/-- `∩[A006005(n+1), A130771(n+1)]` -/
def P8786887306731137082.Spec : Prop :=
  ∀ n, (P8786887306731137082.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P15829188211535861510

`∩[A008578(n+1), A130771(n+1)]`
-/

namespace A172256.P15829188211535861510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P15829188211535861510

namespace A172256

/-- `∩[A008578(n+1), A130771(n+1)]` -/
def P15829188211535861510.Spec : Prop :=
  ∀ n, (P15829188211535861510.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P13944900187263148131

`∩[A033946(n+1), A130771(n+1)]`
-/

namespace A172256.P13944900187263148131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P13944900187263148131

namespace A172256

/-- `∩[A033946(n+1), A130771(n+1)]` -/
def P13944900187263148131.Spec : Prop :=
  ∀ n, (P13944900187263148131.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P2771596154060086074

`∩[A045319(n+1), A130771(n+1)]`
-/

namespace A172256.P2771596154060086074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P2771596154060086074

namespace A172256

/-- `∩[A045319(n+1), A130771(n+1)]` -/
def P2771596154060086074.Spec : Prop :=
  ∀ n, (P2771596154060086074.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P7034875271870853530

`∩[A045344(n+1), A130771(n+1)]`
-/

namespace A172256.P7034875271870853530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P7034875271870853530

namespace A172256

/-- `∩[A045344(n+1), A130771(n+1)]` -/
def P7034875271870853530.Spec : Prop :=
  ∀ n, (P7034875271870853530.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P16047336332239733523

`∩[A046022(n+1), A130771(n+1)]`
-/

namespace A172256.P16047336332239733523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P16047336332239733523

namespace A172256

/-- `∩[A046022(n+1), A130771(n+1)]` -/
def P16047336332239733523.Spec : Prop :=
  ∀ n, (P16047336332239733523.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P9903210926754077691

`∩[A051948(n+1), A130771(n+1)]`
-/

namespace A172256.P9903210926754077691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P9903210926754077691

namespace A172256

/-- `∩[A051948(n+1), A130771(n+1)]` -/
def P9903210926754077691.Spec : Prop :=
  ∀ n, (P9903210926754077691.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P12933325805118251025

`∩[A062972(n+1), A130771(n+1)]`
-/

namespace A172256.P12933325805118251025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P12933325805118251025

namespace A172256

/-- `∩[A062972(n+1), A130771(n+1)]` -/
def P12933325805118251025.Spec : Prop :=
  ∀ n, (P12933325805118251025.a n : ℤ) = A172256 (n + 1)

end A172256

/-! ## A172256.P16584734199185714351

`∩[A065091(n+1), A130771(n+1)]`
-/

namespace A172256.P16584734199185714351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P16584734199185714351

namespace A172256

/-- `∩[A065091(n+1), A130771(n+1)]` -/
def P16584734199185714351.Spec : Prop :=
  ∀ n, (P16584734199185714351.a n : ℤ) = A172256 (n + 1)

end A172256

/-!
# A172258: Primes p such that exactly one of the numbers 2p-3 and 2p+3 is prime.

The programs for A172258, there is no canonical definition to state claims against.
-/

/-! ## A172258.P9011905832252917408

`eq[A003415(n), A294647(A156261(n+2))]`
-/

namespace A172258.P9011905832252917408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294647 (A156261 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172258.P9011905832252917408

/-! ## A172258.P8958885889874153651

`p?[lt[5, A006530(A332767(n+2))]]`
-/

namespace A172258.P8958885889874153651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A332767 (n + 2)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172258.P8958885889874153651

/-! ## A172258.P15735294098474141235

`p?[∑[A001221(A306233(2*(n+1)))]]`
-/

namespace A172258.P15735294098474141235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A306233 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172258.P15735294098474141235

/-! ## A172258.P7426510479415219550

`record[A069675(n+1)/A261248(3*n+1)]`
-/

namespace A172258.P7426510479415219550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069675 (n + 1) : ℚ) / (A261248 (3 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172258.P7426510479415219550

/-! ## A172258.P7320710375979266338

`A383681(n+1)%A120030(A393558(2*n+1))`
-/

namespace A172258.P7320710375979266338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383681 (n + 1)) (A120030 (A393558 (2 * n + 1)).toNat)

end

end A172258.P7320710375979266338

/-!
# A172259: Let CK(m) denote the complete elliptic integral of the first kind. a(n) is the n-th smallest integer k such that floor(CK(1/k)) = floor(CK(1/(k-1))) + 1.

The programs for A172259, there is no canonical definition to state claims against.
-/

/-! ## A172259.P9216752504486696140

`ceil(sinh(A077168(n)-log(2)))`
-/

namespace A172259.P9216752504486696140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh ((A077168 n : ℝ) - Real.log (2 : ℝ))⌉

end

end A172259.P9216752504486696140

/-! ## A172259.P10167690480401586502

`A300076(ceil(cosh(n+1)))`
-/

namespace A172259.P10167690480401586502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 ⌈Real.cosh (n + 1 : ℝ)⌉.toNat

end

end A172259.P10167690480401586502

/-! ## A172259.P11871314899376260538

`A300076(ceil(sinh(n+1)))`
-/

namespace A172259.P11871314899376260538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 ⌈Real.sinh (n + 1 : ℝ)⌉.toNat

end

end A172259.P11871314899376260538

/-! ## A172259.P1905727201443791566

`A008621(A293137(n)+A245285(n))`
-/

namespace A172259.P1905727201443791566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A293137 n + A245285 n).toNat

end

end A172259.P1905727201443791566

/-! ## A172259.P16340175692822314882

`A110655(or(A000227(n+1), A002265(n)))`
-/

namespace A172259.P16340175692822314882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.lor (A000227 (n + 1)) (A002265 n)).toNat

end

end A172259.P16340175692822314882

/-!
# A172260: a(n) = A172240(n) + A172240(n+1).

The programs for A172260, there is no canonical definition to state claims against.
-/

/-! ## A172260.P11923856652511511448

`A172240(n+1)+A172240(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172260.P11923856652511511448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172240 (n + 1) + A172240 (n + 2)

end

end A172260.P11923856652511511448

/-!
# A172262: a(n) is the greatest root of the Laguerre polynomial L_n(x) to the nearest integer.

The programs for A172262, there is no canonical definition to state claims against.
-/

/-! ## A172262.P6092375722123245088

`A135660(A008000(3*n+1)+A000217(n))`
-/

namespace A172262.P6092375722123245088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A008000 (3 * n + 1) + A000217 n).toNat

end

end A172262.P6092375722123245088

/-! ## A172262.P15380849183639659373

`A003056(∑[A244970(3*n+1)])`
-/

namespace A172262.P15380849183639659373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244970 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172262.P15380849183639659373

/-! ## A172262.P11640316732373443988

`A121900(A054568(n))+n`
-/

namespace A172262.P11640316732373443988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A054568 n).toNat + (n : ℤ)

end

end A172262.P11640316732373443988

/-! ## A172262.P14048254142868199155

`A299702(3*n+2)-A109395(A000079(n))`
-/

namespace A172262.P14048254142868199155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (3 * n + 2) - A109395 (A000079 n).toNat

end

end A172262.P14048254142868199155

/-! ## A172262.P8787295368425502728

`A299702(3*n+2)-A020639(A358252(n))`
-/

namespace A172262.P8787295368425502728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (3 * n + 2) - A020639 (A358252 n).toNat

end

end A172262.P8787295368425502728

/-!
# A172263: a(n) is the greatest zero of Hermite polynomial H(n,x) to nearest integer.

The programs for A172263, there is no canonical definition to state claims against.
-/

/-! ## A172263.P16694427684531933910

`floor(sqrt(comp[A248195(n+3)]))`
-/

namespace A172263.P16694427684531933910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248195 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A172263.P16694427684531933910

/-! ## A172263.P5772774648028655200

`floor(sqrt(2*n-A325282(n)))`
-/

namespace A172263.P5772774648028655200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((2 * n : ℤ) - A325282 n)

end

end A172263.P5772774648028655200

/-! ## A172263.P16010942145658273169

`A000196(2*n-A325282(n))`
-/

namespace A172263.P16010942145658273169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((2 * n : ℤ) - A325282 n).toNat

end

end A172263.P16010942145658273169

/-! ## A172263.P3322184944761668812

`A000196(n-A325282(n)+n)`
-/

namespace A172263.P3322184944761668812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) - A325282 n + (n : ℤ)).toNat

end

end A172263.P3322184944761668812

/-! ## A172263.P9212652061187333811

`A000196(n-(A325282(n)-n))`
-/

namespace A172263.P9212652061187333811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) - (A325282 n - (n : ℤ))).toNat

end

end A172263.P9212652061187333811

/-! ## A172263.P10530297645219619757

`A000196(∑[A107800(n+1)]-1)`
-/

namespace A172263.P10530297645219619757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A172263.P10530297645219619757

/-! ## A172263.P1468385629683134184

`A003056(∑[A059233(n+2)]+1)-1`
-/

namespace A172263.P1468385629683134184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - 1

end

end A172263.P1468385629683134184

/-! ## A172263.P15310640498737985410

`A259361(A261104(n)+A004276(n))`
-/

namespace A172263.P15310640498737985410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A261104 n + A004276 n).toNat

end

end A172263.P15310640498737985410

/-! ## A172263.P17197352897442710298

`A000196(A005187(n)-A303370(n))`
-/

namespace A172263.P17197352897442710298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005187 n - A303370 n).toNat

end

end A172263.P17197352897442710298

/-! ## A172263.P3958579452671974407

`A000196(A004278(n+1)-A134021(n))`
-/

namespace A172263.P3958579452671974407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004278 (n + 1) - A134021 n).toNat

end

end A172263.P3958579452671974407

/-!
# A172264: a(n) = floor(n*(sqrt(3)-sqrt(2))).

The programs for A172264, the canonical program `A172264.P9377637545075856010` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172264 has offset 0).

The definition of A172264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(3)-sqrt(2)))` (program `A172264.P9377637545075856010`, by `A172264.P9377637545075856010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172264.P9377637545075856010

`floor(n*(sqrt(3)-sqrt(2)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172264

/-- `floor(n*(sqrt(3)-sqrt(2)))` -/
def P9377637545075856010.Spec : Prop :=
  ∀ n, P9377637545075856010.a n = A172264 n

theorem P9377637545075856010.correct : P9377637545075856010.Spec := by
  intro n
  simp only [A172264]

end A172264

/-! ## A172264.P7446800062212677603

`comp[A187385(n+1)]-n`
-/

namespace A172264.P7446800062212677603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187385 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A172264.P7446800062212677603

namespace A172264

/-- `comp[A187385(n+1)]-n` -/
def P7446800062212677603.Spec : Prop :=
  ∀ n, P7446800062212677603.a n = A172264 n

end A172264

/-! ## A172264.P4617345999053433960

`∑[char[A110117(n+1)+1]]`
-/

namespace A172264.P4617345999053433960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172264.P4617345999053433960

namespace A172264

/-- `∑[char[A110117(n+1)+1]]` -/
def P4617345999053433960.Spec : Prop :=
  ∀ n, (P4617345999053433960.a n : ℤ) = A172264 n

end A172264

/-! ## A172264.P7922451560323485351

`A187386(A028310(n))-A028310(n)`
-/

namespace A172264.P7922451560323485351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187386 (A028310 n).toNat - A028310 n

end

end A172264.P7922451560323485351

namespace A172264

/-- `A187386(A028310(n))-A028310(n)` -/
def P7922451560323485351.Spec : Prop :=
  ∀ n, P7922451560323485351.a n = A172264 n

end A172264

/-! ## A172264.P1709525892436722986

`A187386(A000007(n)+n)-(A000007(n)+n)`
-/

namespace A172264.P1709525892436722986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187386 (A000007 n + (n : ℤ)).toNat - (A000007 n + (n : ℤ))

end

end A172264.P1709525892436722986

namespace A172264

/-- `A187386(A000007(n)+n)-(A000007(n)+n)` -/
def P1709525892436722986.Spec : Prop :=
  ∀ n, P1709525892436722986.a n = A172264 n

end A172264

/-! ## A172264.P5183614668792504972

`A187386(A233583(n+1))-A233583(n+1)`
-/

namespace A172264.P5183614668792504972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187386 (A233583 (n + 1)).toNat - A233583 (n + 1)

end

end A172264.P5183614668792504972

namespace A172264

/-- `A187386(A233583(n+1))-A233583(n+1)` -/
def P5183614668792504972.Spec : Prop :=
  ∀ n, P5183614668792504972.a n = A172264 n

end A172264

/-! ## A172264.P5227406040175907082

`A187386(A233583(n+1))%A029579(A004275(n))`
-/

namespace A172264.P5227406040175907082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187386 (A233583 (n + 1)).toNat) (A029579 (A004275 n).toNat)

end

end A172264.P5227406040175907082

namespace A172264

/-- `A187386(A233583(n+1))%A029579(A004275(n))` -/
def P5227406040175907082.Spec : Prop :=
  ∀ n, P5227406040175907082.a n = A172264 n

end A172264

/-!
# A172265: Partial sums of A024810(n) = floor(2^(n+1)/Pi).

The programs for A172265, the canonical program `A172265.P13241327116821096862` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172265 has offset 1).

The definition of A172265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172265.P13241327116821096862

`∑[floor(2^n/atan(1))]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172265

/-- `∑[floor(2^n/atan(1))]` -/
def P13241327116821096862.Spec : Prop :=
  ∀ n, P13241327116821096862.a n = A172265 (n + 1)

theorem P13241327116821096862.correct : P13241327116821096862.Spec := by
  intro n
  simp only [A172265, Nat.add_sub_cancel]

end A172265

/-! ## A172265.P11459408413036723722

`∑[floor(2^n/acot(1))]`
-/

namespace A172265.P11459408413036723722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) / SequenceMachineLib.acot (1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172265.P11459408413036723722

namespace A172265

/-- `∑[floor(2^n/acot(1))]` -/
def P11459408413036723722.Spec : Prop :=
  ∀ n, P11459408413036723722.a n = A172265 (n + 1)

end A172265

/-! ## A172265.P4638346811759636140

`∑[floor(2^(n+2)/π)]`
-/

namespace A172265.P4638346811759636140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 2) : ℝ) / Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172265.P4638346811759636140

namespace A172265

/-- `∑[floor(2^(n+2)/π)]` -/
def P4638346811759636140.Spec : Prop :=
  ∀ n, P4638346811759636140.a n = A172265 (n + 1)

theorem P4638346811759636140.correct : P4638346811759636140.Spec := by
  intro n
  simp only [A172265, Nat.add_sub_cancel, A172265.P4638346811759636140.f1, A172265.P4638346811759636140.a, A172265.P13241327116821096862.f1, A172265.P13241327116821096862.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A172265

/-! ## A172265.P1217415030782220859

`abs(∑[ceil(2^n/acot(1))-1])`
-/

namespace A172265.P1217415030782220859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) / SequenceMachineLib.acot (1 : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A172265.P1217415030782220859

namespace A172265

/-- `abs(∑[ceil(2^n/acot(1))-1])` -/
def P1217415030782220859.Spec : Prop :=
  ∀ n, P1217415030782220859.a n = A172265 (n + 1)

end A172265

/-! ## A172265.P17068843051585178257

`∑[ceil(2^n/acot(1))]-(n+1)`
-/

namespace A172265.P17068843051585178257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) / SequenceMachineLib.acot (1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A172265.P17068843051585178257

namespace A172265

/-- `∑[ceil(2^n/acot(1))]-(n+1)` -/
def P17068843051585178257.Spec : Prop :=
  ∀ n, P17068843051585178257.a n = A172265 (n + 1)

end A172265

/-! ## A172265.P11334160647596609613

`2*∑[A024810(n+1)/2]`
-/

namespace A172265.P11334160647596609613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024810 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172265.P11334160647596609613

namespace A172265

/-- `2*∑[A024810(n+1)/2]` -/
def P11334160647596609613.Spec : Prop :=
  ∀ n, P11334160647596609613.a n = (A172265 (n + 1) : ℚ)

end A172265

/-!
# A172266: a(n) = floor(n*(sqrt(5)-sqrt(2))).

The programs for A172266, the canonical program `A172266.P15906871812847144588` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172266 has offset 0).

The definition of A172266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(5)-sqrt(2)))` (program `A172266.P15906871812847144588`, by `A172266.P15906871812847144588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172266.P15906871812847144588

`floor(n*(sqrt(5)-sqrt(2)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172266

/-- `floor(n*(sqrt(5)-sqrt(2)))` -/
def P15906871812847144588.Spec : Prop :=
  ∀ n, P15906871812847144588.a n = A172266 n

theorem P15906871812847144588.correct : P15906871812847144588.Spec := by
  intro n
  simp only [A172266]

end A172266

/-! ## A172266.P2114561037781530666

`ceil(n*(sqrt(5)-sqrt(2))-A057427(n))`
-/

namespace A172266.P2114561037781530666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (5 : ℝ) - Real.sqrt (2 : ℝ)) - (A057427 n : ℝ)⌉

end

end A172266.P2114561037781530666

namespace A172266

/-- `ceil(n*(sqrt(5)-sqrt(2))-A057427(n))` -/
def P2114561037781530666.Spec : Prop :=
  ∀ n, P2114561037781530666.a n = A172266 n

end A172266

/-! ## A172266.P10672169078668862226

`ceil(n*(sqrt(5)-sqrt(2))-A019426(2*n))`
-/

namespace A172266.P10672169078668862226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (5 : ℝ) - Real.sqrt (2 : ℝ)) - (A019426 (2 * n) : ℝ)⌉

end

end A172266.P10672169078668862226

namespace A172266

/-- `ceil(n*(sqrt(5)-sqrt(2))-A019426(2*n))` -/
def P10672169078668862226.Spec : Prop :=
  ∀ n, P10672169078668862226.a n = A172266 n

end A172266

/-! ## A172266.P10859258257630083971

`A259899(A024206(n+2)-A259899(n+2)+1)-1`
-/

namespace A172266.P10859258257630083971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A024206 (n + 2) - A259899 (n + 2) + 1).toNat - 1

end

end A172266.P10859258257630083971

namespace A172266

/-- `A259899(A024206(n+2)-A259899(n+2)+1)-1` -/
def P10859258257630083971.Spec : Prop :=
  ∀ n, P10859258257630083971.a n = A172266 n

end A172266

/-!
# A172267: a(n) = floor(n*(sqrt(7)-sqrt(5))).

The programs for A172267, the canonical program `A172267.P3644489002078467912` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172267 has offset 0).

The definition of A172267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(7)-sqrt(5)))` (program `A172267.P3644489002078467912`, by `A172267.P3644489002078467912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172267.P3644489002078467912

`floor(n*(sqrt(7)-sqrt(5)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172267

/-- `floor(n*(sqrt(7)-sqrt(5)))` -/
def P3644489002078467912.Spec : Prop :=
  ∀ n, P3644489002078467912.a n = A172267 n

theorem P3644489002078467912.correct : P3644489002078467912.Spec := by
  intro n
  simp only [A172267]

end A172267

/-! ## A172267.P3341130898929659901

`ceil(n*(sqrt(7)-sqrt(5))-A057427(n))`
-/

namespace A172267.P3341130898929659901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (7 : ℝ) - Real.sqrt (5 : ℝ)) - (A057427 n : ℝ)⌉

end

end A172267.P3341130898929659901

namespace A172267

/-- `ceil(n*(sqrt(7)-sqrt(5))-A057427(n))` -/
def P3341130898929659901.Spec : Prop :=
  ∀ n, P3341130898929659901.a n = A172267 n

end A172267

/-! ## A172267.P2313043301847358040

`A342696(A313124(n))%A024770(n+1)`
-/

namespace A172267.P2313043301847358040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342696 (A313124 n).toNat) (A024770 (n + 1))

end

end A172267.P2313043301847358040

namespace A172267

/-- `A342696(A313124(n))%A024770(n+1)` -/
def P2313043301847358040.Spec : Prop :=
  ∀ n, P2313043301847358040.a n = A172267 n

end A172267

/-! ## A172267.P6741910535634002496

`A011655(A044967(n+3))*A342696(A313124(n))`
-/

namespace A172267.P6741910535634002496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A044967 (n + 3)).toNat * A342696 (A313124 n).toNat

end

end A172267.P6741910535634002496

namespace A172267

/-- `A011655(A044967(n+3))*A342696(A313124(n))` -/
def P6741910535634002496.Spec : Prop :=
  ∀ n, P6741910535634002496.a n = A172267 n

end A172267

/-! ## A172267.P5286401061449719602

`A342696(A313124(n))+A000007(A194368(n+1))`
-/

namespace A172267.P5286401061449719602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A313124 n).toNat + A000007 (A194368 (n + 1)).toNat

end

end A172267.P5286401061449719602

namespace A172267

/-- `A342696(A313124(n))+A000007(A194368(n+1))` -/
def P5286401061449719602.Spec : Prop :=
  ∀ n, P5286401061449719602.a n = A172267 n

end A172267

/-! ## A172267.P5285525498486616903

`A342696(A313124(n))/A040864(A284310(n+1))`
-/

namespace A172267.P5285525498486616903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342696 (A313124 n).toNat : ℚ) / (A040864 (A284310 (n + 1)).toNat : ℚ)

end

end A172267.P5285525498486616903

namespace A172267

/-- `A342696(A313124(n))/A040864(A284310(n+1))` -/
def P5285525498486616903.Spec : Prop :=
  ∀ n, P5285525498486616903.a n = (A172267 n : ℚ)

end A172267

/-! ## A172267.P4284047306301070267

`A342696(A313124(n))/A040864(A129484(n+1))`
-/

namespace A172267.P4284047306301070267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342696 (A313124 n).toNat : ℚ) / (A040864 (A129484 (n + 1)).toNat : ℚ)

end

end A172267.P4284047306301070267

namespace A172267

/-- `A342696(A313124(n))/A040864(A129484(n+1))` -/
def P4284047306301070267.Spec : Prop :=
  ∀ n, P4284047306301070267.a n = (A172267 n : ℚ)

end A172267

/-! ## A172267.P11657924078416165097

`A342696(A313124(n)%A316713(n))`
-/

namespace A172267.P11657924078416165097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (Int.tmod (A313124 n) (A316713 n)).toNat

end

end A172267.P11657924078416165097

namespace A172267

/-- `A342696(A313124(n)%A316713(n))` -/
def P11657924078416165097.Spec : Prop :=
  ∀ n, P11657924078416165097.a n = A172267 n

end A172267

/-! ## A172267.P7160559465344248514

`A372780(n+1)-Δ[n²]`
-/

namespace A172267.P7160559465344248514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372780 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A172267.P7160559465344248514

namespace A172267

/-- `A372780(n+1)-Δ[n²]` -/
def P7160559465344248514.Spec : Prop :=
  ∀ n, P7160559465344248514.a n = A172267 n

end A172267

/-! ## A172267.P167567988827756921

`A098295(A372780(n+1))-n`
-/

namespace A172267.P167567988827756921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098295 (A372780 (n + 1)).toNat - (n : ℤ)

end

end A172267.P167567988827756921

namespace A172267

/-- `A098295(A372780(n+1))-n` -/
def P167567988827756921.Spec : Prop :=
  ∀ n, P167567988827756921.a n = A172267 n

end A172267

/-!
# A172268: a(n) = floor(n*(sqrt(7)-sqrt(3))).

The programs for A172268, the canonical program `A172268.P2278652146238911298` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172268 has offset 0).

The definition of A172268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(7)-sqrt(3)))` (program `A172268.P2278652146238911298`, by `A172268.P2278652146238911298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172268.P2278652146238911298

`floor(n*(sqrt(7)-sqrt(3)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172268

/-- `floor(n*(sqrt(7)-sqrt(3)))` -/
def P2278652146238911298.Spec : Prop :=
  ∀ n, P2278652146238911298.a n = A172268 n

theorem P2278652146238911298.correct : P2278652146238911298.Spec := by
  intro n
  simp only [A172268]

end A172268

/-! ## A172268.P6863219263276271086

`A062005(A005843(n))-A172471(A014105(n))`
-/

namespace A172268.P6863219263276271086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062005 (A005843 n).toNat - A172471 (A014105 n).toNat

end

end A172268.P6863219263276271086

namespace A172268

/-- `A062005(A005843(n))-A172471(A014105(n))` -/
def P6863219263276271086.Spec : Prop :=
  ∀ n, P6863219263276271086.a n = A172268 n

end A172268

/-! ## A172268.P9395357238380006177

`A095861(A113422(n)+A004277(n))`
-/

namespace A172268.P9395357238380006177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A113422 n + A004277 n).toNat

end

end A172268.P9395357238380006177

namespace A172268

/-- `A095861(A113422(n)+A004277(n))` -/
def P9395357238380006177.Spec : Prop :=
  ∀ n, P9395357238380006177.a n = A172268 n

end A172268

/-!
# A172269: a(n) = floor(n*(sqrt(7)-sqrt(2))).

The programs for A172269, the canonical program `A172269.P243218818465486971` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172269 has offset 0).

The definition of A172269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(7)-sqrt(2)))` (program `A172269.P243218818465486971`, by `A172269.P243218818465486971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172269.P243218818465486971

`floor(n*(sqrt(7)-sqrt(2)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172269

/-- `floor(n*(sqrt(7)-sqrt(2)))` -/
def P243218818465486971.Spec : Prop :=
  ∀ n, P243218818465486971.a n = A172269 n

theorem P243218818465486971.correct : P243218818465486971.Spec := by
  intro n
  simp only [A172269]

end A172269

/-! ## A172269.P9185337419805561995

`A057363(2*n)%A173570(n+2)`
-/

namespace A172269.P9185337419805561995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057363 (2 * n)) (A173570 (n + 2))

end

end A172269.P9185337419805561995

namespace A172269

/-- `A057363(2*n)%A173570(n+2)` -/
def P9185337419805561995.Spec : Prop :=
  ∀ n, P9185337419805561995.a n = A172269 n

end A172269

/-! ## A172269.P3233387098539905985

`A281116(p?[A304839(n+1)-2])+A057363(2*n)`
-/

namespace A172269.P3233387098539905985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A057363 (2 * n)

end

end A172269.P3233387098539905985

namespace A172269

/-- `A281116(p?[A304839(n+1)-2])+A057363(2*n)` -/
def P3233387098539905985.Spec : Prop :=
  ∀ n, P3233387098539905985.a n = A172269 n

end A172269

/-! ## A172269.P1279596459044616914

`floor((A259361(∑[A286667(n+1)])-1)/4)+n`
-/

namespace A172269.P1279596459044616914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1 : ℚ) / 4⌋ + (n : ℤ)

end

end A172269.P1279596459044616914

namespace A172269

/-- `floor((A259361(∑[A286667(n+1)])-1)/4)+n` -/
def P1279596459044616914.Spec : Prop :=
  ∀ n, P1279596459044616914.a n = A172269 n

end A172269

/-! ## A172269.P17391068577940190764

`A057363(lcm(A005843(n), A229217(n+1)))`
-/

namespace A172269.P17391068577940190764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (Int.lcm (A005843 n) (A229217 (n + 1)))

end

end A172269.P17391068577940190764

namespace A172269

/-- `A057363(lcm(A005843(n), A229217(n+1)))` -/
def P17391068577940190764.Spec : Prop :=
  ∀ n, P17391068577940190764.a n = A172269 n

end A172269

/-! ## A172269.P8358128073957497232

`A056926(2*A065764(n+1))*A057363(A005843(n))`
-/

namespace A172269.P8358128073957497232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * A065764 (n + 1)).toNat * A057363 (A005843 n).toNat

end

end A172269.P8358128073957497232

namespace A172269

/-- `A056926(2*A065764(n+1))*A057363(A005843(n))` -/
def P8358128073957497232.Spec : Prop :=
  ∀ n, P8358128073957497232.a n = A172269 n

end A172269

/-! ## A172269.P14294756140515810010

`A020985(A130321(n))*A057363(A005843(n))`
-/

namespace A172269.P14294756140515810010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130321 n).toNat * A057363 (A005843 n).toNat

end

end A172269.P14294756140515810010

namespace A172269

/-- `A020985(A130321(n))*A057363(A005843(n))` -/
def P14294756140515810010.Spec : Prop :=
  ∀ n, P14294756140515810010.a n = A172269 n

end A172269

/-! ## A172269.P1920443628601833372

`A057363(2*A279211(∑[n]))`
-/

namespace A172269.P1920443628601833372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (2 * A279211 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A172269.P1920443628601833372

namespace A172269

/-- `A057363(2*A279211(∑[n]))` -/
def P1920443628601833372.Spec : Prop :=
  ∀ n, P1920443628601833372.a n = A172269 n

end A172269

/-! ## A172269.P12504203924854108727

`A057363(A279211(∑[n]+n))`
-/

namespace A172269.P12504203924854108727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A279211 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A172269.P12504203924854108727

namespace A172269

/-- `A057363(A279211(∑[n]+n))` -/
def P12504203924854108727.Spec : Prop :=
  ∀ n, P12504203924854108727.a n = A172269 n

end A172269

/-! ## A172269.P10756689649431374242

`A057363(A143051((n+1)²)-n²)`
-/

namespace A172269.P10756689649431374242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A143051 ((n + 1) ^ 2) - (n ^ 2 : ℤ)).toNat

end

end A172269.P10756689649431374242

namespace A172269

/-- `A057363(A143051((n+1)²)-n²)` -/
def P10756689649431374242.Spec : Prop :=
  ∀ n, P10756689649431374242.a n = A172269 n

end A172269

/-! ## A172269.P1656130898402093668

`A057363(A306284((n+1)²)-1+n)`
-/

namespace A172269.P1656130898402093668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A306284 ((n + 1) ^ 2) - 1 + (n : ℤ)).toNat

end

end A172269.P1656130898402093668

namespace A172269

/-- `A057363(A306284((n+1)²)-1+n)` -/
def P1656130898402093668.Spec : Prop :=
  ∀ n, P1656130898402093668.a n = A172269 n

end A172269

/-! ## A172269.P11967669476926715450

`A057363(n*gcd(2, A031165((n+1)²)))`
-/

namespace A172269.P11967669476926715450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (n * Int.gcd 2 (A031165 ((n + 1) ^ 2)))

end

end A172269.P11967669476926715450

namespace A172269

/-- `A057363(n*gcd(2, A031165((n+1)²)))` -/
def P11967669476926715450.Spec : Prop :=
  ∀ n, P11967669476926715450.a n = A172269 n

end A172269

/-! ## A172269.P6581900744839978591

`A057363(lcm(A005843(n), A118759(n)))`
-/

namespace A172269.P6581900744839978591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (Int.lcm (A005843 n) (A118759 n))

end

end A172269.P6581900744839978591

namespace A172269

/-- `A057363(lcm(A005843(n), A118759(n)))` -/
def P6581900744839978591.Spec : Prop :=
  ∀ n, P6581900744839978591.a n = A172269 n

end A172269

/-!
# A172270: a(n) = floor(n*(sqrt(11)-sqrt(5))).

The programs for A172270, the canonical program `A172270.P9431500234448047411` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172270 has offset 0).

The definition of A172270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)-sqrt(5)))` (program `A172270.P9431500234448047411`, by `A172270.P9431500234448047411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172270.P9431500234448047411

`floor(n*(sqrt(11)-sqrt(5)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172270

/-- `floor(n*(sqrt(11)-sqrt(5)))` -/
def P9431500234448047411.Spec : Prop :=
  ∀ n, P9431500234448047411.a n = A172270 n

theorem P9431500234448047411.correct : P9431500234448047411.Spec := by
  intro n
  simp only [A172270]

end A172270

/-! ## A172270.P12129084060644343983

`comp[A109235(Δ[A374182(n+1)])]`
-/

namespace A172270.P12129084060644343983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374182 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109235 (f2 (n + 1) - f2 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172270.P12129084060644343983

namespace A172270

/-- `comp[A109235(Δ[A374182(n+1)])]` -/
def P12129084060644343983.Spec : Prop :=
  ∀ n, (P12129084060644343983.a n : ℤ) = A172270 n

end A172270

/-! ## A172270.P6125950477203407336

`lt[A051064(A132759(n+1)), 4]`
-/

namespace A172270.P6125950477203407336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A132759 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A172270.P6125950477203407336

namespace A172270

/-- `lt[A051064(A132759(n+1)), 4]` -/
def P6125950477203407336.Spec : Prop :=
  ∀ n, (P6125950477203407336.a n : ℤ) = A172270 n

end A172270

/-! ## A172270.P4020392481992845869

`comp[A329978(comp[A004086(n)])]`
-/

namespace A172270.P4020392481992845869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172270.P4020392481992845869

namespace A172270

/-- `comp[A329978(comp[A004086(n)])]` -/
def P4020392481992845869.Spec : Prop :=
  ∀ n, (P4020392481992845869.a n : ℤ) = A172270 n

end A172270

/-! ## A172270.P12076897755461947985

`comp[A329978(comp[A043095(n+1)])]`
-/

namespace A172270.P12076897755461947985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043095 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172270.P12076897755461947985

namespace A172270

/-- `comp[A329978(comp[A043095(n+1)])]` -/
def P12076897755461947985.Spec : Prop :=
  ∀ n, (P12076897755461947985.a n : ℤ) = A172270 n

end A172270

/-! ## A172270.P3807140783211231711

`comp[∑[A196050(A102484(2*(n+1)))]]`
-/

namespace A172270.P3807140783211231711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A102484 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172270.P3807140783211231711

namespace A172270

/-- `comp[∑[A196050(A102484(2*(n+1)))]]` -/
def P3807140783211231711.Spec : Prop :=
  ∀ n, (P3807140783211231711.a n : ℤ) = A172270 n

end A172270

/-! ## A172270.P2588025327057275071

`comp[A183234(∑[A165656(3*(n+1))+5]+1)-1]`
-/

namespace A172270.P2588025327057275071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 (3 * (n + 1)) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183234 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172270.P2588025327057275071

namespace A172270

/-- `comp[A183234(∑[A165656(3*(n+1))+5]+1)-1]` -/
def P2588025327057275071.Spec : Prop :=
  ∀ n, (P2588025327057275071.a n : ℤ) = A172270 n

end A172270

/-! ## A172270.P15933056514952752524

`A095861(A301685(n))`
-/

namespace A172270.P15933056514952752524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A301685 n).toNat

end

end A172270.P15933056514952752524

namespace A172270

/-- `A095861(A301685(n))` -/
def P15933056514952752524.Spec : Prop :=
  ∀ n, P15933056514952752524.a n = A172270 n

end A172270

/-!
# A172271: Smaller member p of a twin prime pair (p,p+2) with a cube sum N^3.

The programs for A172271, there is no canonical definition to state claims against.
-/

/-! ## A172271.P10398725727893004001

`A245591(n+1)/2-1`
-/

namespace A172271.P10398725727893004001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245591 (n + 1) : ℚ) / 2 - 1

end

end A172271.P10398725727893004001

/-! ## A172271.P10606611767366103037

`(2*A172494(n+1))^3/2-1`
-/

namespace A172271.P10606611767366103037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A172494 (n + 1)) ^ 3 : ℚ) / 2 - 1

end

end A172271.P10606611767366103037

/-! ## A172271.P4117063739448316275

`A057428(A001316(n))+A245591(n+1)/2`
-/

namespace A172271.P4117063739448316275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (A001316 n).toNat : ℚ) + (A245591 (n + 1) : ℚ) / 2

end

end A172271.P4117063739448316275

/-! ## A172271.P8557791497341976512

`A008683(A071195(n+1))+A245591(n+1)/2`
-/

namespace A172271.P8557791497341976512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A071195 (n + 1)).toNat : ℚ) + (A245591 (n + 1) : ℚ) / 2

end

end A172271.P8557791497341976512

/-! ## A172271.P8355844731889484

`A142720(A217581(n+1))+A245591(n+1)/2`
-/

namespace A172271.P8355844731889484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142720 (A217581 (n + 1)).toNat : ℚ) + (A245591 (n + 1) : ℚ) / 2

end

end A172271.P8355844731889484

/-! ## A172271.P9078147814049370728

`A008683(A120303(n+2))+A245591(n+1)/2`
-/

namespace A172271.P9078147814049370728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A120303 (n + 2)).toNat : ℚ) + (A245591 (n + 1) : ℚ) / 2

end

end A172271.P9078147814049370728

/-! ## A172271.P10699583197838232952

`∩[A061308(n+1), A199367(n+1)]`
-/

namespace A172271.P10699583197838232952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172271.P10699583197838232952

/-! ## A172271.P10256534240865156647

`A008683(A071196(n+1))+A245591(n+1)/2`
-/

namespace A172271.P10256534240865156647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A071196 (n + 1)).toNat : ℚ) + (A245591 (n + 1) : ℚ) / 2

end

end A172271.P10256534240865156647

/-! ## A172271.P1001552331687924404

`A016743(A172494(n+1))/2-1`
-/

namespace A172271.P1001552331687924404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016743 (A172494 (n + 1)).toNat : ℚ) / 2 - 1

end

end A172271.P1001552331687924404

/-! ## A172271.P16295680190282804811

`A008683(A007353(n+1))+A016743(A172494(n+1))/2`
-/

namespace A172271.P16295680190282804811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A007353 (n + 1)).toNat : ℚ) + (A016743 (A172494 (n + 1)).toNat : ℚ) / 2

end

end A172271.P16295680190282804811

/-!
# A172272: a(n) = floor(n*(sqrt(11)-sqrt(3))).

The programs for A172272, the canonical program `A172272.P13520368123884845404` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172272 has offset 0).

The definition of A172272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)-sqrt(3)))` (program `A172272.P13520368123884845404`, by `A172272.P13520368123884845404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172272.P13520368123884845404

`floor(n*(sqrt(11)-sqrt(3)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172272

/-- `floor(n*(sqrt(11)-sqrt(3)))` -/
def P13520368123884845404.Spec : Prop :=
  ∀ n, P13520368123884845404.a n = A172272 n

theorem P13520368123884845404.correct : P13520368123884845404.Spec := by
  intro n
  simp only [A172272]

end A172272

/-! ## A172272.P7080621629482000052

`ceil(A057428(n)+n*(sqrt(11)-sqrt(3)))`
-/

namespace A172272.P7080621629482000052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n : ℝ) * (Real.sqrt (11 : ℝ) - Real.sqrt (3 : ℝ))⌉

end

end A172272.P7080621629482000052

namespace A172272

/-- `ceil(A057428(n)+n*(sqrt(11)-sqrt(3)))` -/
def P7080621629482000052.Spec : Prop :=
  ∀ n, P7080621629482000052.a n = A172272 n

end A172272

/-! ## A172272.P2421303661206123451

`ceil(n*(sqrt(11)-sqrt(3))-A057427(n))`
-/

namespace A172272.P2421303661206123451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (11 : ℝ) - Real.sqrt (3 : ℝ)) - (A057427 n : ℝ)⌉

end

end A172272.P2421303661206123451

namespace A172272

/-- `ceil(n*(sqrt(11)-sqrt(3))-A057427(n))` -/
def P2421303661206123451.Spec : Prop :=
  ∀ n, P2421303661206123451.a n = A172272 n

end A172272

/-! ## A172272.P17483522435437672530

`A002264(floor(n/cos(tanh(2))))+n`
-/

namespace A172272.P17483522435437672530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌊(n : ℝ) / Real.cos (Real.tanh (2 : ℝ))⌋.toNat + (n : ℤ)

end

end A172272.P17483522435437672530

namespace A172272

/-- `A002264(floor(n/cos(tanh(2))))+n` -/
def P17483522435437672530.Spec : Prop :=
  ∀ n, P17483522435437672530.a n = A172272 n

end A172272

/-! ## A172272.P13442548742404487730

`A003056(A332495(n)-A225643(n))`
-/

namespace A172272.P13442548742404487730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A332495 n - A225643 n).toNat

end

end A172272.P13442548742404487730

namespace A172272

/-- `A003056(A332495(n)-A225643(n))` -/
def P13442548742404487730.Spec : Prop :=
  ∀ n, P13442548742404487730.a n = A172272 n

end A172272

/-! ## A172272.P3786278035546056857

`A000196(∑[A103215(n+1)+n]-1)`
-/

namespace A172272.P3786278035546056857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A172272.P3786278035546056857

namespace A172272

/-- `A000196(∑[A103215(n+1)+n]-1)` -/
def P3786278035546056857.Spec : Prop :=
  ∀ n, P3786278035546056857.a n = A172272 n

end A172272

/-! ## A172272.P16038258399738612541

`A000196(A116668(n)-A002033(n))`
-/

namespace A172272.P16038258399738612541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A116668 n - A002033 n).toNat

end

end A172272.P16038258399738612541

namespace A172272

/-- `A000196(A116668(n)-A002033(n))` -/
def P16038258399738612541.Spec : Prop :=
  ∀ n, P16038258399738612541.a n = A172272 n

end A172272

/-! ## A172272.P1519061111430099170

`A000196(A147875(n)-A048761(n))`
-/

namespace A172272.P1519061111430099170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A147875 n - A048761 n).toNat

end

end A172272.P1519061111430099170

namespace A172272

/-- `A000196(A147875(n)-A048761(n))` -/
def P1519061111430099170.Spec : Prop :=
  ∀ n, P1519061111430099170.a n = A172272 n

end A172272

/-! ## A172272.P2874199074295029547

`A000196(A075795(n+1)+A005476(n))`
-/

namespace A172272.P2874199074295029547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A075795 (n + 1) + A005476 n).toNat

end

end A172272.P2874199074295029547

namespace A172272

/-- `A000196(A075795(n+1)+A005476(n))` -/
def P2874199074295029547.Spec : Prop :=
  ∀ n, P2874199074295029547.a n = A172272 n

end A172272

/-! ## A172272.P6174385557236244689

`A000196(A116668(n)-A000005(n+1))`
-/

namespace A172272.P6174385557236244689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A116668 n - A000005 (n + 1)).toNat

end

end A172272.P6174385557236244689

namespace A172272

/-- `A000196(A116668(n)-A000005(n+1))` -/
def P6174385557236244689.Spec : Prop :=
  ∀ n, P6174385557236244689.a n = A172272 n

end A172272

/-!
# A172273: a(n) = floor(n*(sqrt(11) - sqrt(2))).

The programs for A172273, the canonical program `A172273.P8057750606788811275` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172273 has offset 0).

The definition of A172273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)-sqrt(2)))` (program `A172273.P8057750606788811275`, by `A172273.P8057750606788811275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172273.P8057750606788811275

`floor(n*(sqrt(11)-sqrt(2)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172273

/-- `floor(n*(sqrt(11)-sqrt(2)))` -/
def P8057750606788811275.Spec : Prop :=
  ∀ n, P8057750606788811275.a n = A172273 n

theorem P8057750606788811275.correct : P8057750606788811275.Spec := by
  intro n
  simp only [A172273]

end A172273

/-! ## A172273.P10274697625955950862

`A002264(A233583(5*n+1)+A049472(n))`
-/

namespace A172273.P10274697625955950862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A233583 (5 * n + 1) + A049472 n).toNat

end

end A172273.P10274697625955950862

namespace A172273

/-- `A002264(A233583(5*n+1)+A049472(n))` -/
def P10274697625955950862.Spec : Prop :=
  ∀ n, P10274697625955950862.a n = A172273 n

end A172273

/-! ## A172273.P10626716789306110975

`A003056(∑[A004773(A022843(n))])`
-/

namespace A172273.P10626716789306110975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A022843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172273.P10626716789306110975

namespace A172273

/-- `A003056(∑[A004773(A022843(n))])` -/
def P10626716789306110975.Spec : Prop :=
  ∀ n, P10626716789306110975.a n = A172273 n

end A172273

/-! ## A172273.P14568103161721507745

`A038124(round(acot(n)+n))%floor(2/acot(n))`
-/

namespace A172273.P14568103161721507745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038124 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A172273.P14568103161721507745

namespace A172273

/-- `A038124(round(acot(n)+n))%floor(2/acot(n))` -/
def P14568103161721507745.Spec : Prop :=
  ∀ n, P14568103161721507745.a n = A172273 n

end A172273

/-! ## A172273.P2026200912246903969

`A038124(A028310(n))%Δ[n²]`
-/

namespace A172273.P2026200912246903969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038124 (A028310 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A172273.P2026200912246903969

namespace A172273

/-- `A038124(A028310(n))%Δ[n²]` -/
def P2026200912246903969.Spec : Prop :=
  ∀ n, P2026200912246903969.a n = A172273 n

end A172273

/-! ## A172273.P12288337932878414015

`record[A038124(A004525(n+1))%(n+1)]`
-/

namespace A172273.P12288337932878414015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038124 (A004525 (n + 1)).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172273.P12288337932878414015

namespace A172273

/-- `record[A038124(A004525(n+1))%(n+1)]` -/
def P12288337932878414015.Spec : Prop :=
  ∀ n, P12288337932878414015.a n = A172273 n

end A172273

/-! ## A172273.P6426515871578453387

`A038124(A004277(n)-n)%∑[n+1]`
-/

namespace A172273.P6426515871578453387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038124 (A004277 n - (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172273.P6426515871578453387

namespace A172273

/-- `A038124(A004277(n)-n)%∑[n+1]` -/
def P6426515871578453387.Spec : Prop :=
  ∀ n, P6426515871578453387.a n = A172273 n

end A172273

/-!
# A172274: a(n) = floor(n*(sqrt(13)-sqrt(11))).

The programs for A172274, the canonical program `A172274.P4251153581630583602` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172274 has offset 0).

The definition of A172274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)-sqrt(11)))` (program `A172274.P4251153581630583602`, by `A172274.P4251153581630583602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172274.P4251153581630583602

`floor(n*(sqrt(13)-sqrt(11)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172274

/-- `floor(n*(sqrt(13)-sqrt(11)))` -/
def P4251153581630583602.Spec : Prop :=
  ∀ n, P4251153581630583602.a n = A172274 n

theorem P4251153581630583602.correct : P4251153581630583602.Spec := by
  intro n
  simp only [A172274]

end A172274

/-! ## A172274.P16258002537661644347

`A002265(A003056(∑[round(4*n/3)]))`
-/

namespace A172274.P16258002537661644347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A172274.P16258002537661644347

namespace A172274

/-- `A002265(A003056(∑[round(4*n/3)]))` -/
def P16258002537661644347.Spec : Prop :=
  ∀ n, P16258002537661644347.a n = A172274 n

end A172274

/-! ## A172274.P8009296581539820051

`round((A259361(∑[A007494(n)])-1)/3)`
-/

namespace A172274.P8009296581539820051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1 : ℚ) / 3)

end

end A172274.P8009296581539820051

namespace A172274

/-- `round((A259361(∑[A007494(n)])-1)/3)` -/
def P8009296581539820051.Spec : Prop :=
  ∀ n, P8009296581539820051.a n = A172274 n

end A172274

/-! ## A172274.P4920279719793319092

`A002264(A259361(∑[A007494(n)]))`
-/

namespace A172274.P4920279719793319092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A172274.P4920279719793319092

namespace A172274

/-- `A002264(A259361(∑[A007494(n)]))` -/
def P4920279719793319092.Spec : Prop :=
  ∀ n, P4920279719793319092.a n = A172274 n

end A172274

/-! ## A172274.P2626541856567050126

`A132270(A105356(n+1))`
-/

namespace A172274.P2626541856567050126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A105356 (n + 1)).toNat

end

end A172274.P2626541856567050126

namespace A172274

/-- `A132270(A105356(n+1))` -/
def P2626541856567050126.Spec : Prop :=
  ∀ n, P2626541856567050126.a n = A172274 n

end A172274

/-! ## A172274.P4536862694551719275

`A121902(A356254(n+1))`
-/

namespace A172274.P4536862694551719275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A356254 (n + 1)).toNat

end

end A172274.P4536862694551719275

namespace A172274

/-- `A121902(A356254(n+1))` -/
def P4536862694551719275.Spec : Prop :=
  ∀ n, P4536862694551719275.a n = A172274 n

end A172274

/-!
# A172275: a(n) = floor(n*(sqrt(13)-sqrt(7))).

The programs for A172275, the canonical program `A172275.P16849960123702967517` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172275 has offset 0).

The definition of A172275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)-sqrt(7)))` (program `A172275.P16849960123702967517`, by `A172275.P16849960123702967517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172275.P16849960123702967517

`floor(n*(sqrt(13)-sqrt(7)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172275

/-- `floor(n*(sqrt(13)-sqrt(7)))` -/
def P16849960123702967517.Spec : Prop :=
  ∀ n, P16849960123702967517.a n = A172275 n

theorem P16849960123702967517.correct : P16849960123702967517.Spec := by
  intro n
  simp only [A172275]

end A172275

/-! ## A172275.P13293964291655384704

`A003056(A161680(n))-A002266(A002266(n))`
-/

namespace A172275.P13293964291655384704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A161680 n).toNat - A002266 (A002266 n).toNat

end

end A172275.P13293964291655384704

namespace A172275

/-- `A003056(A161680(n))-A002266(A002266(n))` -/
def P13293964291655384704.Spec : Prop :=
  ∀ n, P13293964291655384704.a n = A172275 n

end A172275

/-! ## A172275.P2876335646114695259

`A003056(∑[n]+1)-A132272(A057354(n))`
-/

namespace A172275.P2876335646114695259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A132272 (A057354 n).toNat

end

end A172275.P2876335646114695259

namespace A172275

/-- `A003056(∑[n]+1)-A132272(A057354(n))` -/
def P2876335646114695259.Spec : Prop :=
  ∀ n, P2876335646114695259.a n = A172275 n

end A172275

/-! ## A172275.P2418098802896853002

`A002262(A027379(n))-A002266(A002266(n))`
-/

namespace A172275.P2418098802896853002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A027379 n).toNat - A002266 (A002266 n).toNat

end

end A172275.P2418098802896853002

namespace A172275

/-- `A002262(A027379(n))-A002266(A002266(n))` -/
def P2418098802896853002.Spec : Prop :=
  ∀ n, P2418098802896853002.a n = A172275 n

end A172275

/-! ## A172275.P6485222010417739417

`A002262(A055998(n))-A002266(A002266(n))`
-/

namespace A172275.P6485222010417739417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A055998 n).toNat - A002266 (A002266 n).toNat

end

end A172275.P6485222010417739417

namespace A172275

/-- `A002262(A055998(n))-A002266(A002266(n))` -/
def P6485222010417739417.Spec : Prop :=
  ∀ n, P6485222010417739417.a n = A172275 n

end A172275

/-! ## A172275.P8105529863342438411

`A259361((A047226(n+1)-A027868(n))²)`
-/

namespace A172275.P8105529863342438411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((A047226 (n + 1) - A027868 n) ^ 2).toNat

end

end A172275.P8105529863342438411

namespace A172275

/-- `A259361((A047226(n+1)-A027868(n))²)` -/
def P8105529863342438411.Spec : Prop :=
  ∀ n, P8105529863342438411.a n = A172275 n

end A172275

/-! ## A172275.P6668518560271834915

`A259361(n²)-A002266(A002266(n))`
-/

namespace A172275.P6668518560271834915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n ^ 2) - A002266 (A002266 n).toNat

end

end A172275.P6668518560271834915

namespace A172275

/-- `A259361(n²)-A002266(A002266(n))` -/
def P6668518560271834915.Spec : Prop :=
  ∀ n, P6668518560271834915.a n = A172275 n

end A172275

/-! ## A172275.P268461367451244826

`A053616(A054000(n+1))-A002266(A002266(n))`
-/

namespace A172275.P268461367451244826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A054000 (n + 1)).toNat - A002266 (A002266 n).toNat

end

end A172275.P268461367451244826

namespace A172275

/-- `A053616(A054000(n+1))-A002266(A002266(n))` -/
def P268461367451244826.Spec : Prop :=
  ∀ n, P268461367451244826.a n = A172275 n

end A172275

/-!
# A172276: a(n) = floor(n*(sqrt(13)-sqrt(5))).

The programs for A172276, the canonical program `A172276.P13387871509104142285` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172276 has offset 0).

The definition of A172276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)-sqrt(5)))` (program `A172276.P13387871509104142285`, by `A172276.P13387871509104142285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172276.P13387871509104142285

`floor(n*(sqrt(13)-sqrt(5)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172276

/-- `floor(n*(sqrt(13)-sqrt(5)))` -/
def P13387871509104142285.Spec : Prop :=
  ∀ n, P13387871509104142285.a n = A172276 n

theorem P13387871509104142285.correct : P13387871509104142285.Spec := by
  intro n
  simp only [A172276]

end A172276

/-! ## A172276.P13956859255732789197

`A000196(A033436(2*n)+A033436(n))`
-/

namespace A172276.P13956859255732789197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033436 (2 * n) + A033436 n).toNat

end

end A172276.P13956859255732789197

namespace A172276

/-- `A000196(A033436(2*n)+A033436(n))` -/
def P13956859255732789197.Spec : Prop :=
  ∀ n, P13956859255732789197.a n = A172276 n

end A172276

/-! ## A172276.P9032563253253465081

`A089864(A089864(n))+A057366(n)`
-/

namespace A172276.P9032563253253465081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A089864 n).toNat + A057366 n

end

end A172276.P9032563253253465081

namespace A172276

/-- `A089864(A089864(n))+A057366(n)` -/
def P9032563253253465081.Spec : Prop :=
  ∀ n, P9032563253253465081.a n = A172276 n

end A172276

/-! ## A172276.P13781389121566570982

`A126290(A126290(n))+A057366(n)`
-/

namespace A172276.P13781389121566570982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (A126290 n).toNat + A057366 n

end

end A172276.P13781389121566570982

namespace A172276

/-- `A126290(A126290(n))+A057366(n)` -/
def P13781389121566570982.Spec : Prop :=
  ∀ n, P13781389121566570982.a n = A172276 n

end A172276

/-! ## A172276.P9221156311633543327

`A054404(n+2)-A066839(A142065(n+1))+n`
-/

namespace A172276.P9221156311633543327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (n + 2) - A066839 (A142065 (n + 1)).toNat + (n : ℤ)

end

end A172276.P9221156311633543327

namespace A172276

/-- `A054404(n+2)-A066839(A142065(n+1))+n` -/
def P9221156311633543327.Spec : Prop :=
  ∀ n, P9221156311633543327.a n = A172276 n

end A172276

/-! ## A172276.P1108782221707892382

`A054404(n+2)-A100051(A249378(2*(n+2)))+n`
-/

namespace A172276.P1108782221707892382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (n + 2) - A100051 (A249378 (2 * (n + 2))).toNat + (n : ℤ)

end

end A172276.P1108782221707892382

namespace A172276

/-- `A054404(n+2)-A100051(A249378(2*(n+2)))+n` -/
def P1108782221707892382.Spec : Prop :=
  ∀ n, P1108782221707892382.a n = A172276 n

end A172276

/-!
# A172277: floor(n*(sqrt(13)-sqrt(3))).

The programs for A172277, the canonical program `A172277.P10290025698234597681` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172277 has offset 0).

The definition of A172277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)-sqrt(3)))` (program `A172277.P10290025698234597681`, by `A172277.P10290025698234597681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172277.P10290025698234597681

`floor(n*(sqrt(13)-sqrt(3)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172277

/-- `floor(n*(sqrt(13)-sqrt(3)))` -/
def P10290025698234597681.Spec : Prop :=
  ∀ n, P10290025698234597681.a n = A172277 n

theorem P10290025698234597681.correct : P10290025698234597681.Spec := by
  intro n
  simp only [A172277]

end A172277

/-! ## A172277.P16256276771092501897

`A289207(A151933(n)+A063460(n+1))`
-/

namespace A172277.P16256276771092501897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A151933 n + A063460 (n + 1)).toNat

end

end A172277.P16256276771092501897

namespace A172277

/-- `A289207(A151933(n)+A063460(n+1))` -/
def P16256276771092501897.Spec : Prop :=
  ∀ n, P16256276771092501897.a n = A172277 n

end A172277

/-! ## A172277.P16017358791177032609

`A063460(n+1)-A064786(A151933(n)+1)`
-/

namespace A172277.P16017358791177032609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1) - A064786 (A151933 n + 1).toNat

end

end A172277.P16017358791177032609

namespace A172277

/-- `A063460(n+1)-A064786(A151933(n)+1)` -/
def P16017358791177032609.Spec : Prop :=
  ∀ n, P16017358791177032609.a n = A172277 n

end A172277

/-! ## A172277.P15461558697382482851

`A063460(n+1)-A082074(A151933(n)+1)`
-/

namespace A172277.P15461558697382482851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1) - A082074 (A151933 n + 1).toNat

end

end A172277.P15461558697382482851

namespace A172277

/-- `A063460(n+1)-A082074(A151933(n)+1)` -/
def P15461558697382482851.Spec : Prop :=
  ∀ n, P15461558697382482851.a n = A172277 n

end A172277

/-! ## A172277.P1329940573425356345

`A063460(n+1)-A001222(A151933(n)+4)`
-/

namespace A172277.P1329940573425356345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1) - A001222 (A151933 n + 4).toNat

end

end A172277.P1329940573425356345

namespace A172277

/-- `A063460(n+1)-A001222(A151933(n)+4)` -/
def P1329940573425356345.Spec : Prop :=
  ∀ n, P1329940573425356345.a n = A172277 n

end A172277

/-! ## A172277.P4427281471667642625

`A063460(n+1)-(A128174(A151933(n)+1)+1)`
-/

namespace A172277.P4427281471667642625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1) - (A128174 (A151933 n + 1).toNat + 1)

end

end A172277.P4427281471667642625

namespace A172277

/-- `A063460(n+1)-(A128174(A151933(n)+1)+1)` -/
def P4427281471667642625.Spec : Prop :=
  ∀ n, P4427281471667642625.a n = A172277 n

end A172277

/-! ## A172277.P2863930951453409872

`abs(A063460(n+1)-A001223(A151933(n)+1))-1`
-/

namespace A172277.P2863930951453409872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063460 (n + 1) - A001223 (A151933 n + 1).toNat| - 1

end

end A172277.P2863930951453409872

namespace A172277

/-- `abs(A063460(n+1)-A001223(A151933(n)+1))-1` -/
def P2863930951453409872.Spec : Prop :=
  ∀ n, P2863930951453409872.a n = A172277 n

end A172277

/-! ## A172277.P2132588234234693306

`abs(A063460(n+1)-A245819(A151933(n)+1))-1`
-/

namespace A172277.P2132588234234693306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063460 (n + 1) - A245819 (A151933 n + 1).toNat| - 1

end

end A172277.P2132588234234693306

namespace A172277

/-- `abs(A063460(n+1)-A245819(A151933(n)+1))-1` -/
def P2132588234234693306.Spec : Prop :=
  ∀ n, P2132588234234693306.a n = A172277 n

end A172277

/-! ## A172277.P9977855455848045222

`A063460(A028310(n)+1)-A194746(A151933(n)+1)-1`
-/

namespace A172277.P9977855455848045222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (A028310 n + 1).toNat - A194746 (A151933 n + 1).toNat - 1

end

end A172277.P9977855455848045222

namespace A172277

/-- `A063460(A028310(n)+1)-A194746(A151933(n)+1)-1` -/
def P9977855455848045222.Spec : Prop :=
  ∀ n, P9977855455848045222.a n = A172277 n

end A172277

/-!
# A172278: a(n) = floor(n*(sqrt(13)-sqrt(2))).

The programs for A172278, the canonical program `A172278.P11472636656049005775` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172278 has offset 0).

The definition of A172278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)-sqrt(2)))` (program `A172278.P11472636656049005775`, by `A172278.P11472636656049005775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172278.P11472636656049005775

`floor(n*(sqrt(13)-sqrt(2)))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172278

/-- `floor(n*(sqrt(13)-sqrt(2)))` -/
def P11472636656049005775.Spec : Prop :=
  ∀ n, P11472636656049005775.a n = A172278 n

theorem P11472636656049005775.correct : P11472636656049005775.Spec := by
  intro n
  simp only [A172278]

end A172278

/-! ## A172278.P4180251636896911811

`ceil(A057428(n)+n*(sqrt(13)-sqrt(2)))`
-/

namespace A172278.P4180251636896911811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n : ℝ) * (Real.sqrt (13 : ℝ) - Real.sqrt (2 : ℝ))⌉

end

end A172278.P4180251636896911811

namespace A172278

/-- `ceil(A057428(n)+n*(sqrt(13)-sqrt(2)))` -/
def P4180251636896911811.Spec : Prop :=
  ∀ n, P4180251636896911811.a n = A172278 n

end A172278

/-! ## A172278.P14106074991378944055

`A276383(A028310(n))%A067249(n+1)`
-/

namespace A172278.P14106074991378944055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276383 (A028310 n).toNat) (A067249 (n + 1))

end

end A172278.P14106074991378944055

namespace A172278

/-- `A276383(A028310(n))%A067249(n+1)` -/
def P14106074991378944055.Spec : Prop :=
  ∀ n, P14106074991378944055.a n = A172278 n

end A172278

/-! ## A172278.P9044289771405389372

`A276383(A028310(n))%A082788(A005408(n))`
-/

namespace A172278.P9044289771405389372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276383 (A028310 n).toNat) (A082788 (A005408 n).toNat)

end

end A172278.P9044289771405389372

namespace A172278

/-- `A276383(A028310(n))%A082788(A005408(n))` -/
def P9044289771405389372.Spec : Prop :=
  ∀ n, P9044289771405389372.a n = A172278 n

end A172278

/-! ## A172278.P4353868309103282299

`A057427(A008818(2*n+1))*A276383(A028310(n))`
-/

namespace A172278.P4353868309103282299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008818 (2 * n + 1)).toNat * A276383 (A028310 n).toNat

end

end A172278.P4353868309103282299

namespace A172278

/-- `A057427(A008818(2*n+1))*A276383(A028310(n))` -/
def P4353868309103282299.Spec : Prop :=
  ∀ n, P4353868309103282299.a n = A172278 n

end A172278

/-! ## A172278.P1551845458306876932

`A057427(A000096(n))*A276383(A028310(n))`
-/

namespace A172278.P1551845458306876932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000096 n).toNat * A276383 (A028310 n).toNat

end

end A172278.P1551845458306876932

namespace A172278

/-- `A057427(A000096(n))*A276383(A028310(n))` -/
def P1551845458306876932.Spec : Prop :=
  ∀ n, P1551845458306876932.a n = A172278 n

end A172278

/-! ## A172278.P10542878306131605232

`A004526(A277722(n)+A000196(A027688(n)))`
-/

namespace A172278.P10542878306131605232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277722 n + A000196 (A027688 n).toNat).toNat

end

end A172278.P10542878306131605232

namespace A172278

/-- `A004526(A277722(n)+A000196(A027688(n)))` -/
def P10542878306131605232.Spec : Prop :=
  ∀ n, P10542878306131605232.a n = A172278 n

end A172278

/-! ## A172278.P3669718661742880493

`A195167(n)+A057428(A007504(n))`
-/

namespace A172278.P3669718661742880493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195167 n + A057428 (A007504 n).toNat

end

end A172278.P3669718661742880493

namespace A172278

/-- `A195167(n)+A057428(A007504(n))` -/
def P3669718661742880493.Spec : Prop :=
  ∀ n, P3669718661742880493.a n = A172278 n

end A172278

/-! ## A172278.P16245443699697056141

`A057428(A007504(n))-A057428(n)*A195167(n)`
-/

namespace A172278.P16245443699697056141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007504 n).toNat - A057428 n * A195167 n

end

end A172278.P16245443699697056141

namespace A172278

/-- `A057428(A007504(n))-A057428(n)*A195167(n)` -/
def P16245443699697056141.Spec : Prop :=
  ∀ n, P16245443699697056141.a n = A172278 n

end A172278

/-!
# A172279: Triangle, read by rows: T(n, k) = ceiling( binomial(n, k)/(1 + (k - floor(n/2))^2) ).

The programs for A172279, there is no canonical definition to state claims against.
-/

/-! ## A172279.P8026534915744747171

`A158722(3*n+5)%A007318(n)+1`
-/

namespace A172279.P8026534915744747171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158722 (3 * n + 5)) (A007318 n) + 1

end

end A172279.P8026534915744747171

/-! ## A172279.P11668860060366378346

`A062565(A329070(n))`
-/

namespace A172279.P11668860060366378346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062565 (A329070 n).toNat

end

end A172279.P11668860060366378346

/-! ## A172279.P3948608511478770543

`A088823(A156280(n))+1`
-/

namespace A172279.P3948608511478770543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088823 (A156280 n).toNat + 1

end

end A172279.P3948608511478770543

/-! ## A172279.P372019205503763873

`A331128(A264676(n+1))`
-/

namespace A172279.P372019205503763873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331128 (A264676 (n + 1)).toNat

end

end A172279.P372019205503763873

/-! ## A172279.P7141105223415417705

`A072344(A212267(n+2))`
-/

namespace A172279.P7141105223415417705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072344 (A212267 (n + 2)).toNat

end

end A172279.P7141105223415417705

/-!
# A172280: Primes p with the property that no divisor of p-1 is a primitive root modulo p.

The programs for A172280, there is no canonical definition to state claims against.
-/

/-! ## A172280.P11691654437726339820

`p?[A004768(n)+2*A185238(n)]`
-/

namespace A172280.P11691654437726339820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n + 2 * A185238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172280.P11691654437726339820

/-! ## A172280.P15605997894557507379

`p?[A005843(A185238(n))+A004768(n)]`
-/

namespace A172280.P15605997894557507379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A185238 n).toNat + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172280.P15605997894557507379

/-! ## A172280.P8714317036842377077

`p?[∑[8%A036372(n)]]`
-/

namespace A172280.P8714317036842377077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (A036372 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172280.P8714317036842377077

/-! ## A172280.P2589515288240385527

`p?[∑[gcd(8, A151620(n))]]`
-/

namespace A172280.P2589515288240385527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A151620 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172280.P2589515288240385527

/-! ## A172280.P3962952058622495743

`p?[or(8*n+9, A185255(n))]`
-/

namespace A172280.P3962952058622495743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 * n + 9 : ℤ) (A185255 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172280.P3962952058622495743

/-!
# A172281: Triangle T(n, k, q) = ceiling( binomial(n, k)*(1+q)/( (1+q)^2 + (k - floor(n/2))^2 ) ), with q = 1, read by rows.

The programs for A172281, there is no canonical definition to state claims against.
-/

/-! ## A172281.P4750883525981062119

`A235122(A137153(n))`
-/

namespace A172281.P4750883525981062119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235122 (A137153 n).toNat

end

end A172281.P4750883525981062119

/-! ## A172281.P13656991035212450785

`A335106(A108625(n))+1`
-/

namespace A172281.P13656991035212450785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335106 (A108625 n).toNat + 1

end

end A172281.P13656991035212450785

/-! ## A172281.P5615487296754878495

`A185816(2^A034853(n+3))`
-/

namespace A172281.P5615487296754878495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A034853 (n + 3) : ℤ))).toNat

end

end A172281.P5615487296754878495

/-! ## A172281.P11290180675118239682

`A001826(3^A034853(n+3))`
-/

namespace A172281.P11290180675118239682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A034853 (n + 3) : ℤ))).toNat

end

end A172281.P11290180675118239682

/-! ## A172281.P4775147345713981676

`∑{e}[A336108(A304972(n+1)), #]`
-/

namespace A172281.P4775147345713981676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336108 (A304972 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A172281.P4775147345713981676

/-!
# A172282: Squares of Bernoulli number denominators A027642.

The programs for A172282, the canonical program `A172282.P2389526718549998927` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172282 has offset 0).

The definition of A172282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172282.P2389526718549998927

`A027642(n)²`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A172282

/-- `A027642(n)²` -/
def P2389526718549998927.Spec : Prop :=
  ∀ n, P2389526718549998927.a n = A172282 n

theorem P2389526718549998927.correct : P2389526718549998927.Spec := by
  intro n
  simp only [A172282]

end A172282

/-! ## A172282.P4928836133703491600

`(A176289(n)+char[1])²`
-/

namespace A172282.P4928836133703491600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176289 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A172282.P4928836133703491600

namespace A172282

/-- `(A176289(n)+char[1])²` -/
def P4928836133703491600.Spec : Prop :=
  ∀ n, P4928836133703491600.a n = A172282 n

end A172282

/-! ## A172282.P16668632660313348275

`A027642(xor(1, xor(1, n)))^2`
-/

namespace A172282.P16668632660313348275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (Nat.xor 1 (Nat.xor 1 n)) ^ 2

end

end A172282.P16668632660313348275

namespace A172282

/-- `A027642(xor(1, xor(1, n)))^2` -/
def P16668632660313348275.Spec : Prop :=
  ∀ n, P16668632660313348275.a n = A172282 n

theorem P16668632660313348275.correct : P16668632660313348275.Spec := by
  intro n
  simp only [A172282, Nat.add_sub_cancel, A172282.P16668632660313348275.a, A172282.P2389526718549998927.a, SequenceMachineLib.memo_apply]
  try simp

end A172282

/-! ## A172282.P10561063742365790321

`A027642(2*n-n)^2`
-/

namespace A172282.P10561063742365790321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n - n) ^ 2

end

end A172282.P10561063742365790321

namespace A172282

/-- `A027642(2*n-n)^2` -/
def P10561063742365790321.Spec : Prop :=
  ∀ n, P10561063742365790321.a n = A172282 n

end A172282

/-! ## A172282.P16048459660139167104

`(A010674(n)-A176591(n))²`
-/

namespace A172282.P16048459660139167104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010674 n - A176591 n) ^ 2

end

end A172282.P16048459660139167104

namespace A172282

/-- `(A010674(n)-A176591(n))²` -/
def P16048459660139167104.Spec : Prop :=
  ∀ n, P16048459660139167104.a n = A172282 n

end A172282

/-! ## A172282.P6384643543449145688

`(A159075(n)-A176289(n))²`
-/

namespace A172282.P6384643543449145688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159075 n - A176289 n) ^ 2

end

end A172282.P6384643543449145688

namespace A172282

/-- `(A159075(n)-A176289(n))²` -/
def P6384643543449145688.Spec : Prop :=
  ∀ n, P6384643543449145688.a n = A172282 n

end A172282

/-! ## A172282.P13547999118565601345

`A141056(n*A266591(n))²`
-/

namespace A172282.P13547999118565601345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 ((n : ℤ) * A266591 n).toNat ^ 2

end

end A172282.P13547999118565601345

namespace A172282

/-- `A141056(n*A266591(n))²` -/
def P13547999118565601345.Spec : Prop :=
  ∀ n, P13547999118565601345.a n = A172282 n

end A172282

/-! ## A172282.P7740824812005294449

`(A144845(n)/A286515(n))²`
-/

namespace A172282.P7740824812005294449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A144845 n : ℚ) / (A286515 n : ℚ)) ^ 2

end

end A172282.P7740824812005294449

namespace A172282

/-- `(A144845(n)/A286515(n))²` -/
def P7740824812005294449.Spec : Prop :=
  ∀ n, P7740824812005294449.a n = (A172282 n : ℚ)

end A172282

/-! ## A172282.P2666710006260834243

`lcm(A166333(n), A176289(n))²`
-/

namespace A172282.P2666710006260834243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166333 n) (A176289 n) ^ 2

end

end A172282.P2666710006260834243

namespace A172282

/-- `lcm(A166333(n), A176289(n))²` -/
def P2666710006260834243.Spec : Prop :=
  ∀ n, (P2666710006260834243.a n : ℤ) = A172282 n

end A172282

/-! ## A172282.P2324970676689567475

`A027642(n)*A027642(gcd(n, A005843(n)))`
-/

namespace A172282.P2324970676689567475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A027642 (Int.gcd (n : ℤ) (A005843 n))

end

end A172282.P2324970676689567475

namespace A172282

/-- `A027642(n)*A027642(gcd(n, A005843(n)))` -/
def P2324970676689567475.Spec : Prop :=
  ∀ n, P2324970676689567475.a n = A172282 n

end A172282

/-! ## A172282.P2317825074561132411

`A027642(n)*A027642(n%A000961(n+1))`
-/

namespace A172282.P2317825074561132411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A027642 (Int.tmod (n : ℤ) (A000961 (n + 1))).toNat

end

end A172282.P2317825074561132411

namespace A172282

/-- `A027642(n)*A027642(n%A000961(n+1))` -/
def P2317825074561132411.Spec : Prop :=
  ∀ n, P2317825074561132411.a n = A172282 n

end A172282

/-! ## A172282.P2306859155951430368

`A164020(n*A266591(n))²`
-/

namespace A172282.P2306859155951430368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 ((n : ℤ) * A266591 n).toNat ^ 2

end

end A172282.P2306859155951430368

namespace A172282

/-- `A164020(n*A266591(n))²` -/
def P2306859155951430368.Spec : Prop :=
  ∀ n, P2306859155951430368.a n = A172282 n

end A172282

/-! ## A172282.P10300709157418542607

`(A089026(n+1)*A166120(n+1))²`
-/

namespace A172282.P10300709157418542607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089026 (n + 1) * A166120 (n + 1)) ^ 2

end

end A172282.P10300709157418542607

namespace A172282

/-- `(A089026(n+1)*A166120(n+1))²` -/
def P10300709157418542607.Spec : Prop :=
  ∀ n, P10300709157418542607.a n = A172282 n

end A172282

/-! ## A172282.P4223079994022666618

`(A166120(n+1)*A166333(A166260(n+1)))²`
-/

namespace A172282.P4223079994022666618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166120 (n + 1) * A166333 (A166260 (n + 1)).toNat) ^ 2

end

end A172282.P4223079994022666618

namespace A172282

/-- `(A166120(n+1)*A166333(A166260(n+1)))²` -/
def P4223079994022666618.Spec : Prop :=
  ∀ n, P4223079994022666618.a n = A172282 n

end A172282

/-! ## A172282.P10751104728575666413

`A166120(n+1)*A166333(A166260(n+1))*A027642(n)`
-/

namespace A172282.P10751104728575666413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166120 (n + 1) * A166333 (A166260 (n + 1)).toNat * A027642 n

end

end A172282.P10751104728575666413

namespace A172282

/-- `A166120(n+1)*A166333(A166260(n+1))*A027642(n)` -/
def P10751104728575666413.Spec : Prop :=
  ∀ n, P10751104728575666413.a n = A172282 n

end A172282

/-! ## A172282.P932868338929407382

`gcd(A141056(n), A164869(n))²`
-/

namespace A172282.P932868338929407382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141056 n) (A164869 n) ^ 2

end

end A172282.P932868338929407382

namespace A172282

/-- `gcd(A141056(n), A164869(n))²` -/
def P932868338929407382.Spec : Prop :=
  ∀ n, (P932868338929407382.a n : ℤ) = A172282 n

end A172282

/-! ## A172282.P10493074212741729704

`A141056(n)^A103424(A135517(n))`
-/

namespace A172282.P10493074212741729704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) ^ (A103424 (A135517 n).toNat : ℤ)

end

end A172282.P10493074212741729704

namespace A172282

/-- `A141056(n)^A103424(A135517(n))` -/
def P10493074212741729704.Spec : Prop :=
  ∀ n, P10493074212741729704.a n = (A172282 n : ℚ)

end A172282

/-! ## A172282.P18124937969359914182

`(ratio[A034386(n)]*A166120(n+1))²`
-/

namespace A172282.P18124937969359914182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A166120 (n + 1) : ℚ)) ^ 2

end

end A172282.P18124937969359914182

namespace A172282

/-- `(ratio[A034386(n)]*A166120(n+1))²` -/
def P18124937969359914182.Spec : Prop :=
  ∀ n, P18124937969359914182.a n = (A172282 n : ℚ)

end A172282

/-! ## A172282.P1004755343517270577

`A085738(∑[n])²`
-/

namespace A172282.P1004755343517270577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A172282.P1004755343517270577

namespace A172282

/-- `A085738(∑[n])²` -/
def P1004755343517270577.Spec : Prop :=
  ∀ n, P1004755343517270577.a n = A172282 n

end A172282

/-! ## A172282.P15768285492569520461

`A162299(∑[n])²`
-/

namespace A172282.P15768285492569520461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A172282.P15768285492569520461

namespace A172282

/-- `A162299(∑[n])²` -/
def P15768285492569520461.Spec : Prop :=
  ∀ n, P15768285492569520461.a n = A172282 n

end A172282

/-!
# A172283: (-9,11) Pascal triangle.

The programs for A172283, the canonical program `A172283.P15307696702803467898` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172283 has offset 0).

The definition of A172283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172283.P15307696702803467898

`A007318(n)+10*A008482(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A172283

/-- `A007318(n)+10*A008482(n)` -/
def P15307696702803467898.Spec : Prop :=
  ∀ n, P15307696702803467898.a n = A172283 n

theorem P15307696702803467898.correct : P15307696702803467898.Spec := by
  intro n
  simp only [A172283]

end A172283

/-! ## A172283.P2740058661229077104

`A007318(n)-10*A037012(n)`
-/

namespace A172283.P2740058661229077104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 10 * A037012 n

end

end A172283.P2740058661229077104

namespace A172283

/-- `A007318(n)-10*A037012(n)` -/
def P2740058661229077104.Spec : Prop :=
  ∀ n, P2740058661229077104.a n = A172283 n

end A172283

/-! ## A172283.P259407985262056807

`Δ[A102363(n)]+10*A008482(n)`
-/

namespace A172283.P259407985262056807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 10 * A008482 n

end

end A172283.P259407985262056807

namespace A172283

/-- `Δ[A102363(n)]+10*A008482(n)` -/
def P259407985262056807.Spec : Prop :=
  ∀ n, P259407985262056807.a n = A172283 n

end A172283

/-!
# A172284: First positive zeros of Bessel function of order n rounded to nearest integer.

The programs for A172284, there is no canonical definition to state claims against.
-/

/-! ## A172284.P12627157760458924949

`comp[ceil(n^e/3)]`
-/

namespace A172284.P12627157760458924949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ (Real.exp 1) / 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172284.P12627157760458924949

/-! ## A172284.P17196832225563120308

`floor(root(2*(n+1), 3)/cos(acot(1))+n)+1`
-/

namespace A172284.P17196832225563120308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℝ) ^ (1 / (3 : ℝ)) / Real.cos (SequenceMachineLib.acot (1 : ℝ)) + (n : ℝ)⌋ + 1

end

end A172284.P17196832225563120308

/-! ## A172284.P13460408711411093764

`comp[∑[A292060(n)]]+1`
-/

namespace A172284.P13460408711411093764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A172284.P13460408711411093764

/-! ## A172284.P7611653875461664294

`comp[∑[A311542(n)]]+2`
-/

namespace A172284.P7611653875461664294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172284.P7611653875461664294

/-! ## A172284.P4656290084177741404

`comp[∑[A311543(n)]]+2`
-/

namespace A172284.P4656290084177741404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172284.P4656290084177741404

/-! ## A172284.P8855551264453718086

`comp[∑[A311546(n)]]+2`
-/

namespace A172284.P8855551264453718086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311546 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172284.P8855551264453718086

/-! ## A172284.P17582984715653500655

`comp[∑[A311550(n)]]+2`
-/

namespace A172284.P17582984715653500655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172284.P17582984715653500655

/-! ## A172284.P2738797969157950779

`comp[∑[A311551(n)]]+2`
-/

namespace A172284.P2738797969157950779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311551 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172284.P2738797969157950779

/-! ## A172284.P16339859250230719059

`comp[∑[A000045(n+1)+3*n]]+2`
-/

namespace A172284.P16339859250230719059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (3 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172284.P16339859250230719059

/-! ## A172284.P7497045574492142561

`comp[∑[∑[A001222(24*n+7)+n]+1]-1]+2`
-/

namespace A172284.P7497045574492142561
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (24 * n + 7) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172284.P7497045574492142561

/-!
# A172285: a(n) = (5*2^n - 5*(-1)^n - 3*n*(-1)^n) / 9.

The programs for A172285, the canonical program `A172285.P115651559715046565` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172285 has offset 0).

The definition of A172285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*2^n-5*(-1)^n-3*n*(-1)^n)/9` (program `A172285.P12323347511440782906`, by `A172285.P12323347511440782906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172285.P115651559715046565

`3*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172285

/-- `3*a(n-2)+2*a(n-3)` -/
def P115651559715046565.Spec : Prop :=
  ∀ n, (P115651559715046565.a n : ℤ) = A172285 n

theorem P115651559715046565.correct : P115651559715046565.Spec := by
  intro n
  simp only [A172285]

end A172285

/-! ## A172285.P12255805064494927392

`A000079(n)-A053088(n)`
-/

namespace A172285.P12255805064494927392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A053088 n

end

end A172285.P12255805064494927392

namespace A172285

/-- `A000079(n)-A053088(n)` -/
def P12255805064494927392.Spec : Prop :=
  ∀ n, P12255805064494927392.a n = A172285 n

end A172285

/-! ## A172285.P12323347511440782906

`(5*2^n-5*(-1)^n-3*n*(-1)^n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172285.P12323347511440782906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n : ℤ) - 5 * (-1) ^ n - 3 * ((n : ℤ) * (-1) ^ n) : ℚ) / 9

end

end A172285.P12323347511440782906

namespace A172285

/-- `(5*2^n-5*(-1)^n-3*n*(-1)^n)/9` -/
def P12323347511440782906.Spec : Prop :=
  ∀ n, P12323347511440782906.a n = (A172285 n : ℚ)

theorem P12323347511440782906.correct : P12323347511440782906.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A172285, Nat.add_sub_cancel, A172285.P12323347511440782906.a, A172285.P115651559715046565.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A172285, Nat.add_sub_cancel, A172285.P12323347511440782906.a, A172285.P115651559715046565.a, SequenceMachineLib.memo_apply] at h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h2 h3 ⊢
      rw [← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A172285

/-! ## A172285.P13121113107856396167

`2*a(n-1)-(n+1)*(-1)^n` with `a(0)=0`
-/

namespace A172285.P13121113107856396167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - (n + 1 : ℤ) * (-1) ^ n

end

end A172285.P13121113107856396167

namespace A172285

/-- `2*a(n-1)-(n+1)*(-1)^n` -/
def P13121113107856396167.Spec : Prop :=
  ∀ n, P13121113107856396167.a n = A172285 n

end A172285

/-! ## A172285.P16835712514257267959

`a(n-1)+a(n-1)-(n+1)/(-1)^n` with `a(0)=0`
-/

namespace A172285.P16835712514257267959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) - (n + 1 : ℚ) / ((-1) ^ n : ℚ))

end

end A172285.P16835712514257267959

namespace A172285

/-- `a(n-1)+a(n-1)-(n+1)/(-1)^n` -/
def P16835712514257267959.Spec : Prop :=
  ∀ n, P16835712514257267959.a n = (A172285 n : ℚ)

end A172285

/-! ## A172285.P10614797398975918153

`2^(n-1)-a(n-1)+A128209(n)-1` with `a(0)=0`
-/

namespace A172285.P10614797398975918153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) + (A128209 n - 1 : ℚ)

end

end A172285.P10614797398975918153

namespace A172285

/-- `2^(n-1)-a(n-1)+A128209(n)-1` -/
def P10614797398975918153.Spec : Prop :=
  ∀ n, P10614797398975918153.a n = (A172285 n : ℚ)

end A172285

/-! ## A172285.P18135421708850250529

`2^(n-1)-a(n-1)+A153643(n)-2` with `a(0)=0`
-/

namespace A172285.P18135421708850250529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) + (A153643 n - 2 : ℚ)

end

end A172285.P18135421708850250529

namespace A172285

/-- `2^(n-1)-a(n-1)+A153643(n)-2` -/
def P18135421708850250529.Spec : Prop :=
  ∀ n, P18135421708850250529.a n = (A172285 n : ℚ)

end A172285

/-! ## A172285.P7004072896428260563

`A172416(n)-A001057(n+1)`
-/

namespace A172285.P7004072896428260563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172416 n - A001057 (n + 1)

end

end A172285.P7004072896428260563

namespace A172285

/-- `A172416(n)-A001057(n+1)` -/
def P7004072896428260563.Spec : Prop :=
  ∀ n, P7004072896428260563.a n = A172285 n

end A172285

/-! ## A172285.P17492846660364420893

`2^(n-1)-a(n-1)+A005578(n)-char[A302402(n)]` with `a(0)=0`
-/

namespace A172285.P17492846660364420893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) + (A005578 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A172285.P17492846660364420893

namespace A172285

/-- `2^(n-1)-a(n-1)+A005578(n)-char[A302402(n)]` -/
def P17492846660364420893.Spec : Prop :=
  ∀ n, P17492846660364420893.a n = (A172285 n : ℚ)

end A172285

/-! ## A172285.P11406304549590395478

`2^(n-1)-a(n-1)+A113405(n+2)-Δ[A113405(n)]` with `a(0)=0`
-/

namespace A172285.P11406304549590395478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) + (A113405 (n + 2) - (f1 (n + 1) - f1 n) : ℚ)

end

end A172285.P11406304549590395478

namespace A172285

/-- `2^(n-1)-a(n-1)+A113405(n+2)-Δ[A113405(n)]` -/
def P11406304549590395478.Spec : Prop :=
  ∀ n, P11406304549590395478.a n = (A172285 n : ℚ)

end A172285

/-! ## A172285.P5493475622229012931

`Δ[A172416(n)]`
-/

namespace A172285.P5493475622229012931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172285.P5493475622229012931

namespace A172285

/-- `Δ[A172416(n)]` -/
def P5493475622229012931.Spec : Prop :=
  ∀ n, P5493475622229012931.a n = A172285 n

end A172285

/-! ## A172285.P18022702235036035383

`Δ[2*a(n-1)-A001057(n)]` with `a(0)=1`
-/

namespace A172285.P18022702235036035383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172285.P18022702235036035383

namespace A172285

/-- `Δ[2*a(n-1)-A001057(n)]` -/
def P18022702235036035383.Spec : Prop :=
  ∀ n, P18022702235036035383.a n = A172285 n

end A172285

/-! ## A172285.P507537767483948944

`A103196(n)-A078008(n)`
-/

namespace A172285.P507537767483948944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n - A078008 n

end

end A172285.P507537767483948944

namespace A172285

/-- `A103196(n)-A078008(n)` -/
def P507537767483948944.Spec : Prop :=
  ∀ n, P507537767483948944.a n = A172285 n

end A172285

/-! ## A172285.P12036475767986675021

`A053088(n+1)-A001045(n)`
-/

namespace A172285.P12036475767986675021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (n + 1) - A001045 n

end

end A172285.P12036475767986675021

namespace A172285

/-- `A053088(n+1)-A001045(n)` -/
def P12036475767986675021.Spec : Prop :=
  ∀ n, P12036475767986675021.a n = A172285 n

end A172285

/-! ## A172285.P3004330485503438827

`A131577(n+1)-A053088(n)`
-/

namespace A172285.P3004330485503438827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A053088 n

end

end A172285.P3004330485503438827

namespace A172285

/-- `A131577(n+1)-A053088(n)` -/
def P3004330485503438827.Spec : Prop :=
  ∀ n, P3004330485503438827.a n = A172285 n

end A172285

/-! ## A172285.P11988063772329613313

`A172416(n+1)-A172416(n)`
-/

namespace A172285.P11988063772329613313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172416 (n + 1) - A172416 n

end

end A172285.P11988063772329613313

namespace A172285

/-- `A172416(n+1)-A172416(n)` -/
def P11988063772329613313.Spec : Prop :=
  ∀ n, P11988063772329613313.a n = A172285 n

end A172285

/-! ## A172285.P14761521204662485951

`A113954(n+2)-A078008(n)`
-/

namespace A172285.P14761521204662485951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 (n + 2) - A078008 n

end

end A172285.P14761521204662485951

namespace A172285

/-- `A113954(n+2)-A078008(n)` -/
def P14761521204662485951.Spec : Prop :=
  ∀ n, P14761521204662485951.a n = A172285 n

end A172285

/-! ## A172285.P4230570805154098593

`A103196(n)+A128209(n)-A052953(n)`
-/

namespace A172285.P4230570805154098593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n + (A128209 n - A052953 n)

end

end A172285.P4230570805154098593

namespace A172285

/-- `A103196(n)+A128209(n)-A052953(n)` -/
def P4230570805154098593.Spec : Prop :=
  ∀ n, P4230570805154098593.a n = A172285 n

end A172285

/-! ## A172285.P14890845885122370136

`A001045(n)+A103196(n)-A001045(n+1)`
-/

namespace A172285.P14890845885122370136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A103196 n - A001045 (n + 1))

end

end A172285.P14890845885122370136

namespace A172285

/-- `A001045(n)+A103196(n)-A001045(n+1)` -/
def P14890845885122370136.Spec : Prop :=
  ∀ n, P14890845885122370136.a n = A172285 n

end A172285

/-!
# A172286: Numbers of circuits of length 2n in K_{n,n} (the complete bipartite graph on 2n vertices).

The programs for A172286, the canonical program `A172286.P14314927807427707660` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172286 has offset 1).

The definition of A172286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172286.P14314927807427707660

`2*(n+1)^(2*(n+1))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A172286

/-- `2*(n+1)^(2*(n+1))` -/
def P14314927807427707660.Spec : Prop :=
  ∀ n, (P14314927807427707660.a n : ℤ) = A172286 (n + 1)

theorem P14314927807427707660.correct : P14314927807427707660.Spec := by
  intro n
  simp only [A172286, Nat.add_sub_cancel]

end A172286

/-!
# A172287: Primes p such that exactly one of 2p-3 and 3p-2 is prime.

The programs for A172287, there is no canonical definition to state claims against.
-/

/-! ## A172287.P11678236998645321615

`p?[A239217(record[A301676(n)])]`
-/

namespace A172287.P11678236998645321615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172287.P11678236998645321615

/-!
# A172288: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) is the number of partitions of 2^2^n into powers of 2 less than or equal to 2^k.

The programs for A172288, there is no canonical definition to state claims against.
-/

/-! ## A172288.P13897857849888511189

`A194983(n+1)^A180662(n)!`
-/

namespace A172288.P13897857849888511189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) ^ Nat.factorial (A180662 n).toNat

end

end A172288.P13897857849888511189

/-! ## A172288.P5475538405111507067

`A194987(n+1)^A180662(n)!`
-/

namespace A172288.P5475538405111507067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (n + 1) ^ Nat.factorial (A180662 n).toNat

end

end A172288.P5475538405111507067

/-! ## A172288.P5843382720415275627

`A195073(n+1)^A180662(n)!`
-/

namespace A172288.P5843382720415275627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (n + 1) ^ Nat.factorial (A180662 n).toNat

end

end A172288.P5843382720415275627

/-! ## A172288.P8264703866130574264

`A210535(n+1)^A180662(n)!`
-/

namespace A172288.P8264703866130574264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1) ^ Nat.factorial (A180662 n).toNat

end

end A172288.P8264703866130574264

/-! ## A172288.P9698742177345972354

`A194983(n+1)^A233543(n)!`
-/

namespace A172288.P9698742177345972354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) ^ Nat.factorial (A233543 n).toNat

end

end A172288.P9698742177345972354

/-!
# A172289: Partial sums of regular primes A007703.

The programs for A172289, there is no canonical definition to state claims against.
-/

/-! ## A172289.P773512402251787927

`∑[A007703(n+1)]`
-/

namespace A172289.P773512402251787927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172289.P773512402251787927

/-! ## A172289.P12906711678136049104

`∑[record[A007703(A323889(n))]]`
-/

namespace A172289.P12906711678136049104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007703 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172289.P12906711678136049104

/-! ## A172289.P14603396921254834220

`∑[record[A007703(A328399(n))]]`
-/

namespace A172289.P14603396921254834220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007703 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172289.P14603396921254834220

/-! ## A172289.P17962820576644074647

`∑[A000040(lt[A091888(n+2), 1]+2)]`
-/

namespace A172289.P17962820576644074647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172289.P17962820576644074647

/-! ## A172289.P16707435182441237927

`∑[A000040(eq[1, A091888(n+2)+1]+2)]`
-/

namespace A172289.P16707435182441237927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172289.P16707435182441237927

/-! ## A172289.P1324450775035020025

`∑[record[A007703(A065648(n))]]`
-/

namespace A172289.P1324450775035020025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007703 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172289.P1324450775035020025

/-! ## A172289.P642452287723500705

`∑[record[A007703(A102885(n))]]`
-/

namespace A172289.P642452287723500705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007703 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172289.P642452287723500705

/-! ## A172289.P13655171398042573713

`∑[record[A007703(A028920(n))]]`
-/

namespace A172289.P13655171398042573713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007703 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172289.P13655171398042573713

/-!
# A172290: Prime divisors of 2^1092-1, listed with multiplicities.

The programs for A172290, there is no canonical definition to state claims against.
-/

/-! ## A172290.P5350773927592015383

`p?[p?[A097218(n+2)]-A026144(n+2)]`
-/

namespace A172290.P5350773927592015383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097218 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A026144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172290.P5350773927592015383

/-! ## A172290.P18105686781475717933

`p?[A147806(n+1)+A147752(2*(n+2))]`
-/

namespace A172290.P18105686781475717933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147806 (n + 1) + A147752 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172290.P18105686781475717933

/-! ## A172290.P5368695711466294787

`A328298(A050342(n+1)+3)`
-/

namespace A172290.P5368695711466294787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328298 (A050342 (n + 1) + 3).toNat

end

end A172290.P5368695711466294787

/-! ## A172290.P8491759346374039324

`A328298(A298414(n+1)+3)`
-/

namespace A172290.P8491759346374039324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328298 (A298414 (n + 1) + 3).toNat

end

end A172290.P8491759346374039324

/-! ## A172290.P6454533615854075877

`p?[A338854(A133488(n+1))+n]`
-/

namespace A172290.P6454533615854075877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A133488 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172290.P6454533615854075877

/-!
# A172292: Triangle read by rows: T(n, k) = (2*n+1)*(2*k+1), n>=1, 1<=k<=n.

The programs for A172292, the canonical program `A172292.P11252882940955182599` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172292 has offset 1).

The definition of A172292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172292.P13608950222560480456

`A155156(n+1)+1`
-/

namespace A172292.P13608950222560480456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + 1

end

end A172292.P13608950222560480456

namespace A172292

/-- `A155156(n+1)+1` -/
def P13608950222560480456.Spec : Prop :=
  ∀ n, P13608950222560480456.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P3946361654810226019

`A155151(n+1)-1`
-/

namespace A172292.P3946361654810226019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - 1

end

end A172292.P3946361654810226019

namespace A172292

/-- `A155151(n+1)-1` -/
def P3946361654810226019.Spec : Prop :=
  ∀ n, P3946361654810226019.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P11252882940955182599

`A163676(n+1)+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A172292

/-- `A163676(n+1)+2` -/
def P11252882940955182599.Spec : Prop :=
  ∀ n, P11252882940955182599.a n = A172292 (n + 1)

theorem P11252882940955182599.correct : P11252882940955182599.Spec := by
  intro n
  simp only [A172292, Nat.add_sub_cancel]

end A172292

/-! ## A172292.P8590724779314685808

`2*A083487(n+1)+1`
-/

namespace A172292.P8590724779314685808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083487 (n + 1) + 1

end

end A172292.P8590724779314685808

namespace A172292

/-- `2*A083487(n+1)+1` -/
def P8590724779314685808.Spec : Prop :=
  ∀ n, P8590724779314685808.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P13959677330525207747

`2*A144650(n+1)-1`
-/

namespace A172292.P13959677330525207747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144650 (n + 1) - 1

end

end A172292.P13959677330525207747

namespace A172292

/-- `2*A144650(n+1)-1` -/
def P13959677330525207747.Spec : Prop :=
  ∀ n, P13959677330525207747.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P2450103847045029071

`2*A144562(n+1)+3`
-/

namespace A172292.P2450103847045029071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144562 (n + 1) + 3

end

end A172292.P2450103847045029071

namespace A172292

/-- `2*A144562(n+1)+3` -/
def P2450103847045029071.Spec : Prop :=
  ∀ n, P2450103847045029071.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P8906938698508449328

`2*A155705(n+1)-3`
-/

namespace A172292.P8906938698508449328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155705 (n + 1) - 3

end

end A172292.P8906938698508449328

namespace A172292

/-- `2*A155705(n+1)-3` -/
def P8906938698508449328.Spec : Prop :=
  ∀ n, P8906938698508449328.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P4205431984277409832

`2*A154680(n+1)+5`
-/

namespace A172292.P4205431984277409832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154680 (n + 1) + 5

end

end A172292.P4205431984277409832

namespace A172292

/-- `2*A154680(n+1)+5` -/
def P4205431984277409832.Spec : Prop :=
  ∀ n, P4205431984277409832.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P8040154456736068360

`2*A154681(n+1)-5`
-/

namespace A172292.P8040154456736068360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154681 (n + 1) - 5

end

end A172292.P8040154456736068360

namespace A172292

/-- `2*A154681(n+1)-5` -/
def P8040154456736068360.Spec : Prop :=
  ∀ n, P8040154456736068360.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P17002389241928527841

`2*(A155546(n+1)+5)+1`
-/

namespace A172292.P17002389241928527841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155546 (n + 1) + 5) + 1

end

end A172292.P17002389241928527841

namespace A172292

/-- `2*(A155546(n+1)+5)+1` -/
def P17002389241928527841.Spec : Prop :=
  ∀ n, P17002389241928527841.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P7218388735686618236

`2*(A155551(n+1)+8)+3`
-/

namespace A172292.P7218388735686618236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155551 (n + 1) + 8) + 3

end

end A172292.P7218388735686618236

namespace A172292

/-- `2*(A155551(n+1)+8)+3` -/
def P7218388735686618236.Spec : Prop :=
  ∀ n, P7218388735686618236.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P15018367174910650321

`A144650(n+1)+A083487(n+1)`
-/

namespace A172292.P15018367174910650321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + A083487 (n + 1)

end

end A172292.P15018367174910650321

namespace A172292

/-- `A144650(n+1)+A083487(n+1)` -/
def P15018367174910650321.Spec : Prop :=
  ∀ n, P15018367174910650321.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P11611059079512422988

`A155705(n+1)+A144562(n+1)`
-/

namespace A172292.P11611059079512422988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + A144562 (n + 1)

end

end A172292.P11611059079512422988

namespace A172292

/-- `A155705(n+1)+A144562(n+1)` -/
def P11611059079512422988.Spec : Prop :=
  ∀ n, P11611059079512422988.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P11425763296164004248

`A163657(n+1)+A144670(n+1)`
-/

namespace A172292.P11425763296164004248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) + A144670 (n + 1)

end

end A172292.P11425763296164004248

namespace A172292

/-- `A163657(n+1)+A144670(n+1)` -/
def P11425763296164004248.Spec : Prop :=
  ∀ n, P11425763296164004248.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P195246451131905376

`A154681(n+1)+A154680(n+1)`
-/

namespace A172292.P195246451131905376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + A154680 (n + 1)

end

end A172292.P195246451131905376

namespace A172292

/-- `A154681(n+1)+A154680(n+1)` -/
def P195246451131905376.Spec : Prop :=
  ∀ n, P195246451131905376.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P13647701884530114496

`A154685(n+1)+A154684(n+1)`
-/

namespace A172292.P13647701884530114496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + A154684 (n + 1)

end

end A172292.P13647701884530114496

namespace A172292

/-- `A154685(n+1)+A154684(n+1)` -/
def P13647701884530114496.Spec : Prop :=
  ∀ n, P13647701884530114496.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P3983249998102700000

`A155724(n+1)+A154631(n+1)`
-/

namespace A172292.P3983249998102700000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + A154631 (n + 1)

end

end A172292.P3983249998102700000

namespace A172292

/-- `A155724(n+1)+A154631(n+1)` -/
def P3983249998102700000.Spec : Prop :=
  ∀ n, P3983249998102700000.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P17082685665990071128

`A155704(n+1)+A155551(n+1)`
-/

namespace A172292.P17082685665990071128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) + A155551 (n + 1)

end

end A172292.P17082685665990071128

namespace A172292

/-- `A155704(n+1)+A155551(n+1)` -/
def P17082685665990071128.Spec : Prop :=
  ∀ n, P17082685665990071128.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P15444039243342189560

`A163652(n+1)+A155546(n+1)`
-/

namespace A172292.P15444039243342189560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) + A155546 (n + 1)

end

end A172292.P15444039243342189560

namespace A172292

/-- `A163652(n+1)+A155546(n+1)` -/
def P15444039243342189560.Spec : Prop :=
  ∀ n, P15444039243342189560.a n = A172292 (n + 1)

end A172292

/-! ## A172292.P1997340292552976029

`A163672(n+1)+A155550(n+1)`
-/

namespace A172292.P1997340292552976029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) + A155550 (n + 1)

end

end A172292.P1997340292552976029

namespace A172292

/-- `A163672(n+1)+A155550(n+1)` -/
def P1997340292552976029.Spec : Prop :=
  ∀ n, P1997340292552976029.a n = A172292 (n + 1)

end A172292

/-!
# A172293: a(n) = number of prime knots up to nine crossings with determinant 2n+1 and signature 0.

The programs for A172293, there is no canonical definition to state claims against.
-/

/-! ## A172293.P6611515080624520686

`A143152(A143173(n+1))%gcd(2, n)²`
-/

namespace A172293.P6611515080624520686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143152 (A143173 (n + 1)).toNat) (Nat.gcd 2 n ^ 2 : ℤ)

end

end A172293.P6611515080624520686

/-! ## A172293.P1738149572732494055

`A185319(A163485(n))%A040005(n)`
-/

namespace A172293.P1738149572732494055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185319 (A163485 n).toNat) (A040005 n)

end

end A172293.P1738149572732494055

/-! ## A172293.P14993212761430857462

`A000092(A177988(n+1))%A125266(n+1)`
-/

namespace A172293.P14993212761430857462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000092 (A177988 (n + 1)).toNat) (A125266 (n + 1))

end

end A172293.P14993212761430857462

/-! ## A172293.P4180643653003189471

`A095955(A070316(n+1))%A010685(A141214(2*n+1))`
-/

namespace A172293.P4180643653003189471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095955 (A070316 (n + 1)).toNat) (A010685 (A141214 (2 * n + 1)).toNat)

end

end A172293.P4180643653003189471

/-!
# A172295: Partial sums of A023201.

The programs for A172295, the canonical program `A172295.P9584074146213077135` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172295 has offset 1).

The definition of A172295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172295.P17453687726467241180

`∑[A023201(n+1)]`
-/

namespace A172295.P17453687726467241180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P17453687726467241180

namespace A172295

/-- `∑[A023201(n+1)]` -/
def P17453687726467241180.Spec : Prop :=
  ∀ n, P17453687726467241180.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P5590258716599156105

`∑[A087695(n+1)-3]`
-/

namespace A172295.P5590258716599156105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P5590258716599156105

namespace A172295

/-- `∑[A087695(n+1)-3]` -/
def P5590258716599156105.Spec : Prop :=
  ∀ n, P5590258716599156105.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P8285815822791539260

`∑[A046117(n+1)-6]`
-/

namespace A172295.P8285815822791539260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P8285815822791539260

namespace A172295

/-- `∑[A046117(n+1)-6]` -/
def P8285815822791539260.Spec : Prop :=
  ∀ n, P8285815822791539260.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P4202090175182920296

`∑[2*A088763(n+1)-3]`
-/

namespace A172295.P4202090175182920296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088763 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P4202090175182920296

namespace A172295

/-- `∑[2*A088763(n+1)-3]` -/
def P4202090175182920296.Spec : Prop :=
  ∀ n, P4202090175182920296.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P4993687810504574527

`∑[A104010(n+1)/2-3]`
-/

namespace A172295.P4993687810504574527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104010 (n + 1) : ℚ) / 2 - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P4993687810504574527

namespace A172295

/-- `∑[A104010(n+1)/2-3]` -/
def P4993687810504574527.Spec : Prop :=
  ∀ n, P4993687810504574527.a n = (A172295 (n + 1) : ℚ)

end A172295

/-! ## A172295.P15166064141346830311

`∑[A111192(n+1)/A046117(n+1)]`
-/

namespace A172295.P15166064141346830311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111192 (n + 1) : ℚ) / (A046117 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P15166064141346830311

namespace A172295

/-- `∑[A111192(n+1)/A046117(n+1)]` -/
def P15166064141346830311.Spec : Prop :=
  ∀ n, P15166064141346830311.a n = (A172295 (n + 1) : ℚ)

end A172295

/-! ## A172295.P18342550389791797743

`∑[A104010(n+1)%A046117(n+1)]`
-/

namespace A172295.P18342550389791797743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104010 (n + 1)) (A046117 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P18342550389791797743

namespace A172295

/-- `∑[A104010(n+1)%A046117(n+1)]` -/
def P18342550389791797743.Spec : Prop :=
  ∀ n, P18342550389791797743.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P9584074146213077135

`∑[p?[A015914(n+1)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A172295

/-- `∑[p?[A015914(n+1)]]` -/
def P9584074146213077135.Spec : Prop :=
  ∀ n, P9584074146213077135.a n = A172295 (n + 1)

theorem P9584074146213077135.correct : P9584074146213077135.Spec := by
  intro n
  simp only [A172295, Nat.add_sub_cancel]

end A172295

/-! ## A172295.P12203875721255315734

`∑[p?[A262084(n+1)]]`
-/

namespace A172295.P12203875721255315734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P12203875721255315734

namespace A172295

/-- `∑[p?[A262084(n+1)]]` -/
def P12203875721255315734.Spec : Prop :=
  ∀ n, P12203875721255315734.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P15177644901326102397

`∑[A156274(2*n+1)]`
-/

namespace A172295.P15177644901326102397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P15177644901326102397

namespace A172295

/-- `∑[A156274(2*n+1)]` -/
def P15177644901326102397.Spec : Prop :=
  ∀ n, P15177644901326102397.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P17872761321524695683

`∑[p?[p?[2*n+1]-6]]`
-/

namespace A172295.P17872761321524695683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P17872761321524695683

namespace A172295

/-- `∑[p?[p?[2*n+1]-6]]` -/
def P17872761321524695683.Spec : Prop :=
  ∀ n, P17872761321524695683.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P10844873919575582043

`∑[p?[A086304(n+1)]]`
-/

namespace A172295.P10844873919575582043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P10844873919575582043

namespace A172295

/-- `∑[p?[A086304(n+1)]]` -/
def P10844873919575582043.Spec : Prop :=
  ∀ n, P10844873919575582043.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P4142336344513589157

`∑[p?[A118538(n+1)]]`
-/

namespace A172295.P4142336344513589157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P4142336344513589157

namespace A172295

/-- `∑[p?[A118538(n+1)]]` -/
def P4142336344513589157.Spec : Prop :=
  ∀ n, P4142336344513589157.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P17179032812303383794

`∑[p?[A172367(n+1)-2]]`
-/

namespace A172295.P17179032812303383794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P17179032812303383794

namespace A172295

/-- `∑[p?[A172367(n+1)-2]]` -/
def P17179032812303383794.Spec : Prop :=
  ∀ n, P17179032812303383794.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P5630816562708180267

`∑[p?[A000040(n+1)-6]]`
-/

namespace A172295.P5630816562708180267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P5630816562708180267

namespace A172295

/-- `∑[p?[A000040(n+1)-6]]` -/
def P5630816562708180267.Spec : Prop :=
  ∀ n, P5630816562708180267.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P12541713650027750953

`∑[p?[abs(4-A040976(n+5))]]`
-/

namespace A172295.P12541713650027750953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A040976 (n + 5)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P12541713650027750953

namespace A172295

/-- `∑[p?[abs(4-A040976(n+5))]]` -/
def P12541713650027750953.Spec : Prop :=
  ∀ n, P12541713650027750953.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P18107162033263879088

`∑[p?[A282391(n+1)]]`
-/

namespace A172295.P18107162033263879088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282391 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P18107162033263879088

namespace A172295

/-- `∑[p?[A282391(n+1)]]` -/
def P18107162033263879088.Spec : Prop :=
  ∀ n, P18107162033263879088.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P2561508979147515000

`∑[A020482(A088763(n+1))]`
-/

namespace A172295.P2561508979147515000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A088763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P2561508979147515000

namespace A172295

/-- `∑[A020482(A088763(n+1))]` -/
def P2561508979147515000.Spec : Prop :=
  ∀ n, P2561508979147515000.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P1105708751075344764

`∑[record[A006530(A046364(n))]]`
-/

namespace A172295.P1105708751075344764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046364 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P1105708751075344764

namespace A172295

/-- `∑[record[A006530(A046364(n))]]` -/
def P1105708751075344764.Spec : Prop :=
  ∀ n, P1105708751075344764.a n = A172295 (n + 1)

end A172295

/-! ## A172295.P15164785961047827730

`∑[record[p?[A014963(n+1)-6]]]`
-/

namespace A172295.P15164785961047827730
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P15164785961047827730

namespace A172295

/-- `∑[record[p?[A014963(n+1)-6]]]` -/
def P15164785961047827730.Spec : Prop :=
  ∀ n, P15164785961047827730.a n = A172295 (n + 1)

end A172295

/-!
# A172296: Partial sums of Wagstaff numbers A000978.

The programs for A172296, there is no canonical definition to state claims against.
-/

/-! ## A172296.P1405533240117270427

`∑[A000978(n+1)]`
-/

namespace A172296.P1405533240117270427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172296.P1405533240117270427

/-! ## A172296.P7856919040445289483

`∑[A127965(n+1)+1]`
-/

namespace A172296.P7856919040445289483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127965 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172296.P7856919040445289483

/-! ## A172296.P17294544347335621147

`∑[A107036(n+2)]-1`
-/

namespace A172296.P17294544347335621147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107036 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A172296.P17294544347335621147

/-! ## A172296.P9190965021468559009

`∑[2*A127936(n+1)+1]`
-/

namespace A172296.P9190965021468559009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127936 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172296.P9190965021468559009

/-! ## A172296.P8868664502077504823

`∑[2*A127963(n+1)-1]`
-/

namespace A172296.P8868664502077504823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127963 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172296.P8868664502077504823

/-!
# A172297: Partial sums of A002234.

The programs for A172297, there is no canonical definition to state claims against.
-/

/-! ## A172297.P11849823939657316287

`∑[A002234(n+1)]`
-/

namespace A172297.P11849823939657316287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172297.P11849823939657316287

/-! ## A172297.P2806027897593660593

`∑[record[A002234(A028920(n))]]`
-/

namespace A172297.P2806027897593660593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002234 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172297.P2806027897593660593

/-! ## A172297.P13858814756476989036

`∑[record[A002234(A033930(n))]]`
-/

namespace A172297.P13858814756476989036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002234 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172297.P13858814756476989036

/-! ## A172297.P11982722806109675469

`∑[record[A002234(A065648(n))]]`
-/

namespace A172297.P11982722806109675469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002234 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172297.P11982722806109675469

/-! ## A172297.P5644076206931821002

`∑[record[A002234(A116549(n))]]`
-/

namespace A172297.P5644076206931821002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002234 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172297.P5644076206931821002

/-!
# A172298: a(n) = A027641(n) * A164555(n).

The programs for A172298, there is no canonical definition to state claims against.
-/

/-! ## A172298.P13102267703419813782

`A027641(n)*A164555(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172298.P13102267703419813782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A164555 n

end

end A172298.P13102267703419813782

/-! ## A172298.P4263947170666691107

`A176327(n)²-char[1]`
-/

namespace A172298.P4263947170666691107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A172298.P4263947170666691107

/-! ## A172298.P16221225179048694197

`A159075(n)+A176327(n)²`
-/

namespace A172298.P16221225179048694197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A176327 n ^ 2

end

end A172298.P16221225179048694197

/-! ## A172298.P8380292529670383646

`A027641(n)²*A033999(n)`
-/

namespace A172298.P8380292529670383646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n ^ 2 * A033999 n

end

end A172298.P8380292529670383646

/-! ## A172298.P4472403480153724105

`A164555(n)²*A033999(n)`
-/

namespace A172298.P4472403480153724105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n ^ 2 * A033999 n

end

end A172298.P4472403480153724105

/-! ## A172298.P15133706253376196957

`A027641(n)*A176144(2*n)`
-/

namespace A172298.P15133706253376196957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A176144 (2 * n)

end

end A172298.P15133706253376196957

/-! ## A172298.P6994762586281298167

`A164555(n)*A176184(2*n)`
-/

namespace A172298.P6994762586281298167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n * A176184 (2 * n)

end

end A172298.P6994762586281298167

/-! ## A172298.P12681770447134168810

`A027641(n)²*A071936(n+1)`
-/

namespace A172298.P12681770447134168810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n ^ 2 * A071936 (n + 1)

end

end A172298.P12681770447134168810

/-! ## A172298.P15561327097719543590

`A027641(n)*A176184(2*n+1)`
-/

namespace A172298.P15561327097719543590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A176184 (2 * n + 1)

end

end A172298.P15561327097719543590

/-! ## A172298.P10427514446851894379

`A164555(n)*A176144(2*n+1)`
-/

namespace A172298.P10427514446851894379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n * A176144 (2 * n + 1)

end

end A172298.P10427514446851894379

/-!
# A172299: First differences of A172298.

The programs for A172299, there is no canonical definition to state claims against.
-/

/-! ## A172299.P7844191121833582747

`A172298(n+1)-A172298(n)`
-/

namespace A172299.P7844191121833582747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172298 (n + 1) - A172298 n

end

end A172299.P7844191121833582747

/-! ## A172299.P17678118268494552727

`Δ[A172298(n)]`
-/

namespace A172299.P17678118268494552727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172299.P17678118268494552727

/-! ## A172299.P5598929745903769381

`Δ[A176327(n)²-char[1]]`
-/

namespace A172299.P5598929745903769381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n ^ 2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172299.P5598929745903769381

/-! ## A172299.P9433052270821007080

`Δ[A027641(n)*A164555(n)]`
-/

namespace A172299.P9433052270821007080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A164555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172299.P9433052270821007080

/-! ## A172299.P14179360157536922420

`Δ[A027641(n)^A040001(n)]`
-/

namespace A172299.P14179360157536922420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 n : ℚ) ^ (A040001 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172299.P14179360157536922420

/-! ## A172299.P9514029693284586452

`Δ[A027641(n)^A107286(n)]`
-/

namespace A172299.P9514029693284586452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 n : ℚ) ^ (A107286 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172299.P9514029693284586452

