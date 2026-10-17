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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A372600: Least prime whose decimal representation has n distinct subsequences which are also prime.

The programs for A372600, there is no canonical definition to state claims against.
-/

/-! ## A372600.P16912686178877867519

`A139421(A094535(n+1))`
-/

namespace A372600.P16912686178877867519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A094535 (n + 1)).toNat

end

end A372600.P16912686178877867519

/-! ## A372600.P11097966637896711718

`A094535(A365822(n+1))`
-/

namespace A372600.P11097966637896711718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094535 (A365822 (n + 1)).toNat

end

end A372600.P11097966637896711718

/-! ## A372600.P16143995741854304673

`A094535(A004892(n+2))`
-/

namespace A372600.P16143995741854304673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094535 (A004892 (n + 2)).toNat

end

end A372600.P16143995741854304673

/-! ## A372600.P438579770967247058

`A094535(A004903(n+2))`
-/

namespace A372600.P438579770967247058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094535 (A004903 (n + 2)).toNat

end

end A372600.P438579770967247058

/-!
# A372601: The maximal exponent in the prime factorization of the largest exponentially odd divisor of n.

The programs for A372601, the canonical program `A372601.P6403218683394126738` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372601 has offset 1).

The definition of A372601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372601.P13128133087775148390

`A051903(A350390(n+1))`
-/

namespace A372601.P13128133087775148390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350390 (n + 1)).toNat

end

end A372601.P13128133087775148390

namespace A372601

/-- `A051903(A350390(n+1))` -/
def P13128133087775148390.Spec : Prop :=
  ∀ n, P13128133087775148390.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P6403218683394126738

`A381955(n+1)+A066301(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372601

/-- `A381955(n+1)+A066301(n+1)` -/
def P6403218683394126738.Spec : Prop :=
  ∀ n, P6403218683394126738.a n = A372601 (n + 1)

theorem P6403218683394126738.correct : P6403218683394126738.Spec := by
  intro n
  simp only [A372601, Nat.add_sub_cancel]

end A372601

/-! ## A372601.P16242962703691510284

`A375032(A350390(2*n+1-n))`
-/

namespace A372601.P16242962703691510284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375032 (A350390 (2 * n + 1 - n)).toNat

end

end A372601.P16242962703691510284

namespace A372601

/-- `A375032(A350390(2*n+1-n))` -/
def P16242962703691510284.Spec : Prop :=
  ∀ n, P16242962703691510284.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P13816197686315853099

`A051903(gcd(n+1, A011262(n+1)))`
-/

namespace A372601.P13816197686315853099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.gcd (n + 1 : ℤ) (A011262 (n + 1)))

end

end A372601.P13816197686315853099

namespace A372601

/-- `A051903(gcd(n+1, A011262(n+1)))` -/
def P13816197686315853099.Spec : Prop :=
  ∀ n, P13816197686315853099.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P10084814682700661465

`2*A051903(n+1)-A375360(n+1)`
-/

namespace A372601.P10084814682700661465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051903 (n + 1) - A375360 (n + 1)

end

end A372601.P10084814682700661465

namespace A372601

/-- `2*A051903(n+1)-A375360(n+1)` -/
def P10084814682700661465.Spec : Prop :=
  ∀ n, P10084814682700661465.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P5004538796950004998

`or(A066301(n+1), A067029(A006530(n+1)))`
-/

namespace A372601.P5004538796950004998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066301 (n + 1)) (A067029 (A006530 (n + 1)).toNat)

end

end A372601.P5004538796950004998

namespace A372601

/-- `or(A066301(n+1), A067029(A006530(n+1)))` -/
def P5004538796950004998.Spec : Prop :=
  ∀ n, P5004538796950004998.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P15625038766947446907

`or(A007814(A077066(n+1)), A066301(n+1))`
-/

namespace A372601.P15625038766947446907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A077066 (n + 1)).toNat) (A066301 (n + 1))

end

end A372601.P15625038766947446907

namespace A372601

/-- `or(A007814(A077066(n+1)), A066301(n+1))` -/
def P15625038766947446907.Spec : Prop :=
  ∀ n, P15625038766947446907.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P6816008599274260382

`or(A066301(n+1), A067029(A006005(n+1)))`
-/

namespace A372601.P6816008599274260382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066301 (n + 1)) (A067029 (A006005 (n + 1)).toNat)

end

end A372601.P6816008599274260382

namespace A372601

/-- `or(A066301(n+1), A067029(A006005(n+1)))` -/
def P6816008599274260382.Spec : Prop :=
  ∀ n, P6816008599274260382.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P12701021242096216293

`and(A183115(n), A363332(n+1))`
-/

namespace A372601.P12701021242096216293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183115 n) (A363332 (n + 1))

end

end A372601.P12701021242096216293

namespace A372601

/-- `and(A183115(n), A363332(n+1))` -/
def P12701021242096216293.Spec : Prop :=
  ∀ n, P12701021242096216293.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P18015759487149171492

`and(A183120(n), A363332(n+1))`
-/

namespace A372601.P18015759487149171492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183120 n) (A363332 (n + 1))

end

end A372601.P18015759487149171492

namespace A372601

/-- `and(A183120(n), A363332(n+1))` -/
def P18015759487149171492.Spec : Prop :=
  ∀ n, P18015759487149171492.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P15265181512528782934

`A363332(n+1)%A000244(n)`
-/

namespace A372601.P15265181512528782934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363332 (n + 1)) (A000244 n)

end

end A372601.P15265181512528782934

namespace A372601

/-- `A363332(n+1)%A000244(n)` -/
def P15265181512528782934.Spec : Prop :=
  ∀ n, P15265181512528782934.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P9850722063131375717

`and(A091344(n), A363332(n+1))`
-/

namespace A372601.P9850722063131375717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091344 n) (A363332 (n + 1))

end

end A372601.P9850722063131375717

namespace A372601

/-- `and(A091344(n), A363332(n+1))` -/
def P9850722063131375717.Spec : Prop :=
  ∀ n, P9850722063131375717.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P14870373692924251823

`and(A256096(n), A363332(n+1))`
-/

namespace A372601.P14870373692924251823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256096 n) (A363332 (n + 1))

end

end A372601.P14870373692924251823

namespace A372601

/-- `and(A256096(n), A363332(n+1))` -/
def P14870373692924251823.Spec : Prop :=
  ∀ n, P14870373692924251823.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P3359002433379998879

`and(A229277(n), A363332(n+1))`
-/

namespace A372601.P3359002433379998879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A229277 n) (A363332 (n + 1))

end

end A372601.P3359002433379998879

namespace A372601

/-- `and(A229277(n), A363332(n+1))` -/
def P3359002433379998879.Spec : Prop :=
  ∀ n, P3359002433379998879.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P14661992168728680425

`and(A081857(n), A363332(n+1))`
-/

namespace A372601.P14661992168728680425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081857 n) (A363332 (n + 1))

end

end A372601.P14661992168728680425

namespace A372601

/-- `and(A081857(n), A363332(n+1))` -/
def P14661992168728680425.Spec : Prop :=
  ∀ n, P14661992168728680425.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P13322199099106554913

`and(A190964(n), A363332(n+1))`
-/

namespace A372601.P13322199099106554913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A190964 n) (A363332 (n + 1))

end

end A372601.P13322199099106554913

namespace A372601

/-- `and(A190964(n), A363332(n+1))` -/
def P13322199099106554913.Spec : Prop :=
  ∀ n, P13322199099106554913.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P17604310451312577498

`and(A189559(n), A363332(n+1))`
-/

namespace A372601.P17604310451312577498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189559 n) (A363332 (n + 1))

end

end A372601.P17604310451312577498

namespace A372601

/-- `and(A189559(n), A363332(n+1))` -/
def P17604310451312577498.Spec : Prop :=
  ∀ n, P17604310451312577498.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P13892863557576433031

`and(A322927(n), A363332(n+1))`
-/

namespace A372601.P13892863557576433031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322927 n) (A363332 (n + 1))

end

end A372601.P13892863557576433031

namespace A372601

/-- `and(A322927(n), A363332(n+1))` -/
def P13892863557576433031.Spec : Prop :=
  ∀ n, P13892863557576433031.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P12532142432314302866

`and(A268099(n), A363332(n+1))`
-/

namespace A372601.P12532142432314302866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A268099 n) (A363332 (n + 1))

end

end A372601.P12532142432314302866

namespace A372601

/-- `and(A268099(n), A363332(n+1))` -/
def P12532142432314302866.Spec : Prop :=
  ∀ n, P12532142432314302866.a n = A372601 (n + 1)

end A372601

/-! ## A372601.P17430370681992519910

`and(A117058(n+1), A363332(n+1))`
-/

namespace A372601.P17430370681992519910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117058 (n + 1)) (A363332 (n + 1))

end

end A372601.P17430370681992519910

namespace A372601

/-- `and(A117058(n+1), A363332(n+1))` -/
def P17430370681992519910.Spec : Prop :=
  ∀ n, P17430370681992519910.a n = A372601 (n + 1)

end A372601

/-!
# A372602: The maximal exponent in the prime factorization of the largest square dividing n.

The programs for A372602, the canonical program `A372602.P14612393718629536272` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372602 has offset 1).

The definition of A372602 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372602.P14612393718629536272

`A052928(A051903(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A372602

/-- `A052928(A051903(n+1))` -/
def P14612393718629536272.Spec : Prop :=
  ∀ n, P14612393718629536272.a n = A372602 (n + 1)

theorem P14612393718629536272.correct : P14612393718629536272.Spec := by
  intro n
  simp only [A372602, Nat.add_sub_cancel]

end A372602

/-! ## A372602.P6312815002411621057

`2*A392276(n+1)`
-/

namespace A372602.P6312815002411621057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A392276 (n + 1)

end

end A372602.P6312815002411621057

namespace A372602

/-- `2*A392276(n+1)` -/
def P6312815002411621057.Spec : Prop :=
  ∀ n, P6312815002411621057.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P17735075079138661451

`A051903(A008833(n+1))`
-/

namespace A372602.P17735075079138661451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008833 (n + 1)).toNat

end

end A372602.P17735075079138661451

namespace A372602

/-- `A051903(A008833(n+1))` -/
def P17735075079138661451.Spec : Prop :=
  ∀ n, P17735075079138661451.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P4085669646817950539

`A052928(A372603(n+1))`
-/

namespace A372602.P4085669646817950539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A372603 (n + 1)).toNat

end

end A372602.P4085669646817950539

namespace A372602

/-- `A052928(A372603(n+1))` -/
def P4085669646817950539.Spec : Prop :=
  ∀ n, P4085669646817950539.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P15773850320679039413

`A051903(A000188(n+1)²)`
-/

namespace A372602.P15773850320679039413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000188 (n + 1) ^ 2).toNat

end

end A372602.P15773850320679039413

namespace A372602

/-- `A051903(A000188(n+1)²)` -/
def P15773850320679039413.Spec : Prop :=
  ∀ n, P15773850320679039413.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P18303483917742386285

`A375360(n+1)+A057428(n)`
-/

namespace A372602.P18303483917742386285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375360 (n + 1) + A057428 n

end

end A372602.P18303483917742386285

namespace A372602

/-- `A375360(n+1)+A057428(n)` -/
def P18303483917742386285.Spec : Prop :=
  ∀ n, P18303483917742386285.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P15833023739282599046

`A375360(n+1)-A057427(n)`
-/

namespace A372602.P15833023739282599046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375360 (n + 1) - A057427 n

end

end A372602.P15833023739282599046

namespace A372602

/-- `A375360(n+1)-A057427(n)` -/
def P15833023739282599046.Spec : Prop :=
  ∀ n, P15833023739282599046.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P15161721790300582321

`A051903(n+1)-A381955(n+1)`
-/

namespace A372602.P15161721790300582321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A381955 (n + 1)

end

end A372602.P15161721790300582321

namespace A372602

/-- `A051903(n+1)-A381955(n+1)` -/
def P15161721790300582321.Spec : Prop :=
  ∀ n, P15161721790300582321.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P13158080279281331210

`A051903((n+1)/A007913(n+1))`
-/

namespace A372602.P13158080279281331210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A372602.P13158080279281331210

namespace A372602

/-- `A051903((n+1)/A007913(n+1))` -/
def P13158080279281331210.Spec : Prop :=
  ∀ n, P13158080279281331210.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P7133658912736242182

`2*(A051903(n+1)-A375359(n+1))`
-/

namespace A372602.P7133658912736242182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051903 (n + 1) - A375359 (n + 1))

end

end A372602.P7133658912736242182

namespace A372602

/-- `2*(A051903(n+1)-A375359(n+1))` -/
def P7133658912736242182.Spec : Prop :=
  ∀ n, P7133658912736242182.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P5173872374570581062

`A051903(n+1)-and(A016760(n), A051903(n+1))`
-/

namespace A372602.P5173872374570581062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - Int.land (A016760 n) (A051903 (n + 1))

end

end A372602.P5173872374570581062

namespace A372602

/-- `A051903(n+1)-and(A016760(n), A051903(n+1))` -/
def P5173872374570581062.Spec : Prop :=
  ∀ n, P5173872374570581062.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P7616870169688834770

`A051903(n+1)-and(A016820(n), A051903(n+1))`
-/

namespace A372602.P7616870169688834770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - Int.land (A016820 n) (A051903 (n + 1))

end

end A372602.P7616870169688834770

namespace A372602

/-- `A051903(n+1)-and(A016820(n), A051903(n+1))` -/
def P7616870169688834770.Spec : Prop :=
  ∀ n, P7616870169688834770.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P18340460933405443383

`A051903(n+1)-and(A017286(n), A051903(n+1))`
-/

namespace A372602.P18340460933405443383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - Int.land (A017286 n) (A051903 (n + 1))

end

end A372602.P18340460933405443383

namespace A372602

/-- `A051903(n+1)-and(A017286(n), A051903(n+1))` -/
def P18340460933405443383.Spec : Prop :=
  ∀ n, P18340460933405443383.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P7145099684120716530

`A051903(n+1)-and(A017382(n), A051903(n+1))`
-/

namespace A372602.P7145099684120716530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - Int.land (A017382 n) (A051903 (n + 1))

end

end A372602.P7145099684120716530

namespace A372602

/-- `A051903(n+1)-and(A017382(n), A051903(n+1))` -/
def P7145099684120716530.Spec : Prop :=
  ∀ n, P7145099684120716530.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P6242784341642981708

`A051903(n+1)-and(A036088(n), A051903(n+1))`
-/

namespace A372602.P6242784341642981708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - Int.land (A036088 n) (A051903 (n + 1))

end

end A372602.P6242784341642981708

namespace A372602

/-- `A051903(n+1)-and(A036088(n), A051903(n+1))` -/
def P6242784341642981708.Spec : Prop :=
  ∀ n, P6242784341642981708.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P16644781479758145981

`A051903(n+1)-and(A051903(n+1), A055428(n))`
-/

namespace A372602.P16644781479758145981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - Int.land (A051903 (n + 1)) (A055428 n)

end

end A372602.P16644781479758145981

namespace A372602

/-- `A051903(n+1)-and(A051903(n+1), A055428(n))` -/
def P16644781479758145981.Spec : Prop :=
  ∀ n, P16644781479758145981.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P8934604049840263736

`2*A001221(A294874(n+1))`
-/

namespace A372602.P8934604049840263736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A294874 (n + 1)).toNat

end

end A372602.P8934604049840263736

namespace A372602

/-- `2*A001221(A294874(n+1))` -/
def P8934604049840263736.Spec : Prop :=
  ∀ n, P8934604049840263736.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P7683312298426003802

`and(A027383(n), A051903(n+1))`
-/

namespace A372602.P7683312298426003802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027383 n) (A051903 (n + 1))

end

end A372602.P7683312298426003802

namespace A372602

/-- `and(A027383(n), A051903(n+1))` -/
def P7683312298426003802.Spec : Prop :=
  ∀ n, P7683312298426003802.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P7508580632426332562

`and(A000918(n), A051903(n+1))`
-/

namespace A372602.P7508580632426332562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A051903 (n + 1))

end

end A372602.P7508580632426332562

namespace A372602

/-- `and(A000918(n), A051903(n+1))` -/
def P7508580632426332562.Spec : Prop :=
  ∀ n, P7508580632426332562.a n = A372602 (n + 1)

end A372602

/-! ## A372602.P387417016362245758

`and(A051903(n+1), A305061(n))`
-/

namespace A372602.P387417016362245758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051903 (n + 1)) (A305061 n)

end

end A372602.P387417016362245758

namespace A372602

/-- `and(A051903(n+1), A305061(n))` -/
def P387417016362245758.Spec : Prop :=
  ∀ n, P387417016362245758.a n = A372602 (n + 1)

end A372602

/-!
# A372603: The maximal exponent in the prime factorization of the powerful part of n.

The programs for A372603, the canonical program `A372603.P15885825996250797991` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372603 has offset 1).

The definition of A372603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372603.P287958242569297039

`val(A212173(n+1), 2)`
-/

namespace A372603.P287958242569297039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A212173 (n + 1)).toNat 2

end

end A372603.P287958242569297039

namespace A372603

/-- `val(A212173(n+1), 2)` -/
def P287958242569297039.Spec : Prop :=
  ∀ n, (P287958242569297039.a n : ℤ) = A372603 (n + 1)

end A372603

/-! ## A372603.P7811909460362097296

`val(A046523(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])), 2)`
-/

namespace A372603.P7811909460362097296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))).toNat 2

end

end A372603.P7811909460362097296

namespace A372603

/-- `val(A046523(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])), 2)` -/
def P7811909460362097296.Spec : Prop :=
  ∀ n, (P7811909460362097296.a n : ℤ) = A372603 (n + 1)

end A372603

/-! ## A372603.P15885825996250797991

`A051903(A057521(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A372603

/-- `A051903(A057521(n+1))` -/
def P15885825996250797991.Spec : Prop :=
  ∀ n, P15885825996250797991.a n = A372603 (n + 1)

theorem P15885825996250797991.correct : P15885825996250797991.Spec := by
  intro n
  simp only [A372603, Nat.add_sub_cancel]

end A372603

/-! ## A372603.P15420583329034855483

`A080331(A067132(n+1))`
-/

namespace A372603.P15420583329034855483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080331 (A067132 (n + 1)).toNat

end

end A372603.P15420583329034855483

namespace A372603

/-- `A080331(A067132(n+1))` -/
def P15420583329034855483.Spec : Prop :=
  ∀ n, P15420583329034855483.a n = A372603 (n + 1)

end A372603

/-! ## A372603.P16534225546190503453

`A007814(A212173(n+1))`
-/

namespace A372603.P16534225546190503453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A212173 (n + 1)).toNat

end

end A372603.P16534225546190503453

namespace A372603

/-- `A007814(A212173(n+1))` -/
def P16534225546190503453.Spec : Prop :=
  ∀ n, P16534225546190503453.a n = A372603 (n + 1)

end A372603

/-! ## A372603.P488875415950631150

`A144494(A238745(n+1))`
-/

namespace A372603.P488875415950631150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (A238745 (n + 1)).toNat

end

end A372603.P488875415950631150

namespace A372603

/-- `A144494(A238745(n+1))` -/
def P488875415950631150.Spec : Prop :=
  ∀ n, P488875415950631150.a n = A372603 (n + 1)

end A372603

/-! ## A372603.P16963874685546634951

`A107078(n+1)+A066301(n+1)`
-/

namespace A372603.P16963874685546634951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) + A066301 (n + 1)

end

end A372603.P16963874685546634951

namespace A372603

/-- `A107078(n+1)+A066301(n+1)` -/
def P16963874685546634951.Spec : Prop :=
  ∀ n, P16963874685546634951.a n = A372603 (n + 1)

end A372603

/-! ## A372603.P17142793167477188025

`A051903(n+1)*A107078(n+1)`
-/

namespace A372603.P17142793167477188025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) * A107078 (n + 1)

end

end A372603.P17142793167477188025

namespace A372603

/-- `A051903(n+1)*A107078(n+1)` -/
def P17142793167477188025.Spec : Prop :=
  ∀ n, P17142793167477188025.a n = A372603 (n + 1)

end A372603

/-! ## A372603.P6645679694794233562

`A051903(n+1)%A008477(n+1)`
-/

namespace A372603.P6645679694794233562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (n + 1)) (A008477 (n + 1))

end

end A372603.P6645679694794233562

namespace A372603

/-- `A051903(n+1)%A008477(n+1)` -/
def P6645679694794233562.Spec : Prop :=
  ∀ n, P6645679694794233562.a n = A372603 (n + 1)

end A372603

/-! ## A372603.P6223513669991804895

`and(A051903(n+1), A076544(n+1))`
-/

namespace A372603.P6223513669991804895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051903 (n + 1)) (A076544 (n + 1))

end

end A372603.P6223513669991804895

namespace A372603

/-- `and(A051903(n+1), A076544(n+1))` -/
def P6223513669991804895.Spec : Prop :=
  ∀ n, P6223513669991804895.a n = A372603 (n + 1)

end A372603

/-! ## A372603.P18437378182643141682

`(1-A008966(n+1))*A051903(n+1)`
-/

namespace A372603.P18437378182643141682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008966 (n + 1)) * A051903 (n + 1)

end

end A372603.P18437378182643141682

namespace A372603

/-- `(1-A008966(n+1))*A051903(n+1)` -/
def P18437378182643141682.Spec : Prop :=
  ∀ n, P18437378182643141682.a n = A372603 (n + 1)

end A372603

/-! ## A372603.P14390584482667343956

`A066301((n+1)*A007947(A003557(n+1)))`
-/

namespace A372603.P14390584482667343956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 ((n + 1 : ℤ) * A007947 (A003557 (n + 1)).toNat).toNat

end

end A372603.P14390584482667343956

namespace A372603

/-- `A066301((n+1)*A007947(A003557(n+1)))` -/
def P14390584482667343956.Spec : Prop :=
  ∀ n, P14390584482667343956.a n = A372603 (n + 1)

end A372603

/-!
# A372604: The maximal exponent in the prime factorization of the largest divisor of n whose number of divisors is a power of 2.

The programs for A372604, the canonical program `A372604.P12316326984431536577` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372604 has offset 1).

The definition of A372604 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A092323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372604.P12316326984431536577

`A092323(A051903(n+1)+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A372604

/-- `A092323(A051903(n+1)+1)` -/
def P12316326984431536577.Spec : Prop :=
  ∀ n, P12316326984431536577.a n = A372604 (n + 1)

theorem P12316326984431536577.correct : P12316326984431536577.Spec := by
  intro n
  simp only [A372604, Nat.add_sub_cancel]

end A372604

/-! ## A372604.P15809045761870519703

`A092323(A067132(n+1))`
-/

namespace A372604.P15809045761870519703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (A067132 (n + 1)).toNat

end

end A372604.P15809045761870519703

namespace A372604

/-- `A092323(A067132(n+1))` -/
def P15809045761870519703.Spec : Prop :=
  ∀ n, P15809045761870519703.a n = A372604 (n + 1)

end A372604

/-! ## A372604.P7162182767274502036

`A051903(A372379(n+1))`
-/

namespace A372604.P7162182767274502036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A372379 (n + 1)).toNat

end

end A372604.P7162182767274502036

namespace A372604

/-- `A051903(A372379(n+1))` -/
def P7162182767274502036.Spec : Prop :=
  ∀ n, P7162182767274502036.a n = A372604 (n + 1)

end A372604

/-! ## A372604.P602271928292601140

`A092323(A372601(n+1)+1)`
-/

namespace A372604.P602271928292601140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (A372601 (n + 1) + 1).toNat

end

end A372604.P602271928292601140

namespace A372604

/-- `A092323(A372601(n+1)+1)` -/
def P602271928292601140.Spec : Prop :=
  ∀ n, P602271928292601140.a n = A372604 (n + 1)

end A372604

/-! ## A372604.P8777927781240756300

`A372601(A372379(2*n+1-n))`
-/

namespace A372604.P8777927781240756300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A372379 (2 * n + 1 - n)).toNat

end

end A372604.P8777927781240756300

namespace A372604

/-- `A372601(A372379(2*n+1-n))` -/
def P8777927781240756300.Spec : Prop :=
  ∀ n, P8777927781240756300.a n = A372604 (n + 1)

end A372604

/-! ## A372604.P9555015361187924970

`A372601(A007424(n+1)*A372379(n+1))`
-/

namespace A372604.P9555015361187924970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A007424 (n + 1) * A372379 (n + 1)).toNat

end

end A372604.P9555015361187924970

namespace A372604

/-- `A372601(A007424(n+1)*A372379(n+1))` -/
def P9555015361187924970.Spec : Prop :=
  ∀ n, P9555015361187924970.a n = A372604 (n + 1)

end A372604

/-! ## A372604.P508373052032859918

`A331273(A053143(n+1))`
-/

namespace A372604.P508373052032859918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331273 (A053143 (n + 1)).toNat

end

end A372604.P508373052032859918

namespace A372604

/-- `A331273(A053143(n+1))` -/
def P508373052032859918.Spec : Prop :=
  ∀ n, P508373052032859918.a n = A372604 (n + 1)

end A372604

/-! ## A372604.P12076197475813990221

`A375359(A356191(A019554(n+1))²)`
-/

namespace A372604.P12076197475813990221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A356191 (A019554 (n + 1)).toNat ^ 2).toNat

end

end A372604.P12076197475813990221

namespace A372604

/-- `A375359(A356191(A019554(n+1))²)` -/
def P12076197475813990221.Spec : Prop :=
  ∀ n, P12076197475813990221.a n = A372604 (n + 1)

end A372604

/-! ## A372604.P1550827042037042436

`A008342(A294873(n+1))`
-/

namespace A372604.P1550827042037042436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008342 (A294873 (n + 1)).toNat

end

end A372604.P1550827042037042436

namespace A372604

/-- `A008342(A294873(n+1))` -/
def P1550827042037042436.Spec : Prop :=
  ∀ n, P1550827042037042436.a n = A372604 (n + 1)

end A372604

/-! ## A372604.P4368347939641658907

`and(A072671(n), A368247(n+1))`
-/

namespace A372604.P4368347939641658907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072671 n) (A368247 (n + 1))

end

end A372604.P4368347939641658907

namespace A372604

/-- `and(A072671(n), A368247(n+1))` -/
def P4368347939641658907.Spec : Prop :=
  ∀ n, P4368347939641658907.a n = A372604 (n + 1)

end A372604

/-!
# A372606: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} phi(k*j).

The programs for A372606, there is no canonical definition to state claims against.
-/

/-! ## A372606.P14110259587396499167

`A106476(n)*A372619(n+1)`
-/

namespace A372606.P14110259587396499167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 n * A372619 (n + 1)

end

end A372606.P14110259587396499167

/-! ## A372606.P12256037695692183654

`A000010(A004736(n+1))*A372619(n+1)`
-/

namespace A372606.P12256037695692183654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004736 (n + 1)).toNat * A372619 (n + 1)

end

end A372606.P12256037695692183654

/-! ## A372606.P7873525170190108500

`A008687(C(A002061(n), A123245(n)))`
-/

namespace A372606.P7873525170190108500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (Nat.choose (A002061 n).toNat (A123245 n).toNat)

end

end A372606.P7873525170190108500

/-!
# A372608: a(n) = Sum_{k=1..n} phi(n*k).

The programs for A372608, there is no canonical definition to state claims against.
-/

/-! ## A372608.P7338574150436206611

`A000010(n+1)*A070639(n+1)`
-/

namespace A372608.P7338574150436206611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A070639 (n + 1)

end

end A372608.P7338574150436206611

/-! ## A372608.P10732413665251312856

`Δ[A002088(n)]*A070639(n+1)`
-/

namespace A372608.P10732413665251312856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A070639 (n + 1)

end

end A372608.P10732413665251312856

/-! ## A372608.P16514111633492632157

`Δ[A005728(n)]*A070639(n+1)`
-/

namespace A372608.P16514111633492632157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A070639 (n + 1)

end

end A372608.P16514111633492632157

/-! ## A372608.P2716023392992654156

`A070639(n+1)*A349137(Δ[n²])`
-/

namespace A372608.P2716023392992654156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070639 (n + 1) * A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A372608.P2716023392992654156

/-! ## A372608.P5636885107980253788

`A071118(n+1)/(2*(n+1))*A070639(n+1)`
-/

namespace A372608.P5636885107980253788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / (2 * (n + 1) : ℚ) * (A070639 (n + 1) : ℚ)

end

end A372608.P5636885107980253788

/-! ## A372608.P2170376299604615355

`(A002088(n+1)-A002088(n))*A070639(n+1)`
-/

namespace A372608.P2170376299604615355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A070639 (n + 1)

end

end A372608.P2170376299604615355

/-! ## A372608.P7529010558555291834

`A372606(∑[4*n]+1)`
-/

namespace A372608.P7529010558555291834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A372608.P7529010558555291834

/-! ## A372608.P14398252302607619792

`A000010(n+1)*A372619(A001844(n))`
-/

namespace A372608.P14398252302607619792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A372619 (A001844 n).toNat

end

end A372608.P14398252302607619792

/-!
# A372611: Expansion of (1 + 3*x) / ((1 - 2*x)*sqrt(1 - 4*x)).

The programs for A372611, the canonical program `A372611.P10497347808806131857` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372611 has offset 0).

The definition of A372611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372611.P10497347808806131857

`2*a(n-1)+A028322(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372611

/-- `2*a(n-1)+A028322(n)` -/
def P10497347808806131857.Spec : Prop :=
  ∀ n, P10497347808806131857.a n = A372611 n

theorem P10497347808806131857.correct : P10497347808806131857.Spec := by
  intro n
  simp only [A372611]

end A372611

/-! ## A372611.P2086302248003616392

`2*A372239(n)-A372420(n)`
-/

namespace A372611.P2086302248003616392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372239 n - A372420 n

end

end A372611.P2086302248003616392

namespace A372611

/-- `2*A372239(n)-A372420(n)` -/
def P2086302248003616392.Spec : Prop :=
  ∀ n, P2086302248003616392.a n = A372611 n

end A372611

/-! ## A372611.P11507831935763532226

`6*A000984(n)-5*A029759(n)`
-/

namespace A372611.P11507831935763532226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000984 n - 5 * A029759 n

end

end A372611.P11507831935763532226

namespace A372611

/-- `6*A000984(n)-5*A029759(n)` -/
def P11507831935763532226.Spec : Prop :=
  ∀ n, P11507831935763532226.a n = A372611 n

end A372611

/-! ## A372611.P8479163289351599770

`(7*A188622(n)-4*A126966(n))/3`
-/

namespace A372611.P8479163289351599770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * A188622 n - 4 * A126966 n : ℚ) / 3

end

end A372611.P8479163289351599770

namespace A372611

/-- `(7*A188622(n)-4*A126966(n))/3` -/
def P8479163289351599770.Spec : Prop :=
  ∀ n, P8479163289351599770.a n = (A372611 n : ℚ)

end A372611

/-! ## A372611.P7288008014845822506

`2*A082590(n)-A029759(n)`
-/

namespace A372611.P7288008014845822506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082590 n - A029759 n

end

end A372611.P7288008014845822506

namespace A372611

/-- `2*A082590(n)-A029759(n)` -/
def P7288008014845822506.Spec : Prop :=
  ∀ n, P7288008014845822506.a n = A372611 n

end A372611

/-! ## A372611.P13554283633940549118

`2*A372420(n)-A188622(n)`
-/

namespace A372611.P13554283633940549118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372420 n - A188622 n

end

end A372611.P13554283633940549118

namespace A372611

/-- `2*A372420(n)-A188622(n)` -/
def P13554283633940549118.Spec : Prop :=
  ∀ n, P13554283633940549118.a n = A372611 n

end A372611

/-! ## A372611.P6005563997729977960

`A082590(n)+A188622(n)-A126966(n)`
-/

namespace A372611.P6005563997729977960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + (A188622 n - A126966 n)

end

end A372611.P6005563997729977960

namespace A372611

/-- `A082590(n)+A188622(n)-A126966(n)` -/
def P6005563997729977960.Spec : Prop :=
  ∀ n, P6005563997729977960.a n = A372611 n

end A372611

/-! ## A372611.P14284829807838954299

`A000984(n)+A372239(n)-A029759(n)`
-/

namespace A372611.P14284829807838954299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A372239 n - A029759 n)

end

end A372611.P14284829807838954299

namespace A372611

/-- `A000984(n)+A372239(n)-A029759(n)` -/
def P14284829807838954299.Spec : Prop :=
  ∀ n, P14284829807838954299.a n = A372611 n

end A372611

/-! ## A372611.P10829599863457906571

`A029759(n)+A372239(n)-A126966(n)`
-/

namespace A372611.P10829599863457906571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n + (A372239 n - A126966 n)

end

end A372611.P10829599863457906571

namespace A372611

/-- `A029759(n)+A372239(n)-A126966(n)` -/
def P10829599863457906571.Spec : Prop :=
  ∀ n, P10829599863457906571.a n = A372611 n

end A372611

/-! ## A372611.P13815679145560356414

`A082590(n)+A372239(n)-A188622(n)`
-/

namespace A372611.P13815679145560356414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + (A372239 n - A188622 n)

end

end A372611.P13815679145560356414

namespace A372611

/-- `A082590(n)+A372239(n)-A188622(n)` -/
def P13815679145560356414.Spec : Prop :=
  ∀ n, P13815679145560356414.a n = A372611 n

end A372611

/-! ## A372611.P10743592501603270275

`A372239(n+1)-(A082590(n+1)+A029759(n))`
-/

namespace A372611.P10743592501603270275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372239 (n + 1) - (A082590 (n + 1) + A029759 n)

end

end A372611.P10743592501603270275

namespace A372611

/-- `A372239(n+1)-(A082590(n+1)+A029759(n))` -/
def P10743592501603270275.Spec : Prop :=
  ∀ n, P10743592501603270275.a n = A372611 n

end A372611

/-!
# A372612: The added number in A370193 which results in the stack having a new record height.

The programs for A372612, there is no canonical definition to state claims against.
-/

/-! ## A372612.P14674400383760928319

`A206915(n*4^n)`
-/

namespace A372612.P14674400383760928319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (n * 4 ^ n)

end

end A372612.P14674400383760928319

/-! ## A372612.P15066067019277965832

`A001650(A060416(n))`
-/

namespace A372612.P15066067019277965832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A060416 n).toNat

end

end A372612.P15066067019277965832

/-!
# A372614: Number of vertices among all distinct circles that can be constructed from the 3 vertices and the equally spaced 3*n points placed on the sides of an equilateral triangle, using only a compass.

The programs for A372614, there is no canonical definition to state claims against.
-/

/-! ## A372614.P17441293831536900787

`A372616(n)-A372615(n)+1`
-/

namespace A372614.P17441293831536900787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372616 n - A372615 n + 1

end

end A372614.P17441293831536900787

/-!
# A372615: Number of regions among all distinct circles that can be constructed from the 3 vertices and the equally spaced 3*n points placed on the sides of an equilateral triangle, using only a compass.

The programs for A372615, there is no canonical definition to state claims against.
-/

/-! ## A372615.P9843696322738015477

`A372616(n)-A372614(n)+1`
-/

namespace A372615.P9843696322738015477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372616 n - A372614 n + 1

end

end A372615.P9843696322738015477

/-!
# A372616: Number of curved edges among all distinct circles that can be constructed from the 3 vertices and the equally spaced 3*n points placed on the sides of an equilateral triangle, using only a compass.

The programs for A372616, there is no canonical definition to state claims against.
-/

/-! ## A372616.P2410904135977488487

`A372614(n)+A372615(n)-1`
-/

namespace A372616.P2410904135977488487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372614 n + A372615 n - 1

end

end A372616.P2410904135977488487

/-!
# A372619: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = 1/(phi(k)) * Sum_{j=1..n} phi(k*j).

The programs for A372619, there is no canonical definition to state claims against.
-/

/-! ## A372619.P8673438011889629911

`A372606(n+1)/A106476(n)`
-/

namespace A372619.P8673438011889629911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372606 (n + 1) : ℚ) / (A106476 n : ℚ)

end

end A372619.P8673438011889629911

/-! ## A372619.P8749076022141491643

`A005811(A193722(n)*A356637(n))`
-/

namespace A372619.P8749076022141491643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A193722 n * A356637 n).toNat

end

end A372619.P8749076022141491643

/-! ## A372619.P7923881151736704840

`A210950(n+1)+A010059(A354741(n))`
-/

namespace A372619.P7923881151736704840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210950 (n + 1) + A010059 (A354741 n).toNat

end

end A372619.P7923881151736704840

/-! ## A372619.P13653781107800143903

`A000120(A325128(n+1)^A002262(n))`
-/

namespace A372619.P13653781107800143903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A325128 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A372619.P13653781107800143903

/-! ## A372619.P3198680962364981681

`A238970(A052410(n+1)^A389099(n))`
-/

namespace A372619.P3198680962364981681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238970 (SequenceMachineLib.roundAway ((A052410 (n + 1) : ℚ) ^ (A389099 n : ℤ))).toNat

end

end A372619.P3198680962364981681

/-!
# A372620: Expansion of Sum_{k>=1} k * prime(k) * x^prime(k) / (1 - x^prime(k)).

The programs for A372620, the canonical program `A372620.P7316708398144382108` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372620 has offset 1).

The definition of A372620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372620.P7316708398144382108

`∑{p}[n+1, A128913(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A372620

/-- `∑{p}[n+1, A128913(#)]` -/
def P7316708398144382108.Spec : Prop :=
  ∀ n, P7316708398144382108.a n = A372620 (n + 1)

theorem P7316708398144382108.correct : P7316708398144382108.Spec := by
  intro n
  simp only [A372620, Nat.add_sub_cancel]

end A372620

/-! ## A372620.P116498264805291794

`∑{d}[n+1, #*A049084(#)]`
-/

namespace A372620.P116498264805291794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A049084 d

end

end A372620.P116498264805291794

namespace A372620

/-- `∑{d}[n+1, #*A049084(#)]` -/
def P116498264805291794.Spec : Prop :=
  ∀ n, P116498264805291794.a n = A372620 (n + 1)

end A372620

/-! ## A372620.P11010310074456792349

`∑{p}[n+1, #*A000720(#)]`
-/

namespace A372620.P11010310074456792349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A000720 p

end

end A372620.P11010310074456792349

namespace A372620

/-- `∑{p}[n+1, #*A000720(#)]` -/
def P11010310074456792349.Spec : Prop :=
  ∀ n, P11010310074456792349.a n = A372620 (n + 1)

end A372620

/-! ## A372620.P8434386872166446773

`∑{p}[n+1, #*A324861(#)]`
-/

namespace A372620.P8434386872166446773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A324861 p

end

end A372620.P8434386872166446773

namespace A372620

/-- `∑{p}[n+1, #*A324861(#)]` -/
def P8434386872166446773.Spec : Prop :=
  ∀ n, P8434386872166446773.a n = A372620 (n + 1)

end A372620

/-! ## A372620.P13504319803849745375

`∑{p}[A290103(A000040(n+1)), #*A049084(#)]`
-/

namespace A372620.P13504319803849745375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A049084 p

end

end A372620.P13504319803849745375

namespace A372620

/-- `∑{p}[A290103(A000040(n+1)), #*A049084(#)]` -/
def P13504319803849745375.Spec : Prop :=
  ∀ n, P13504319803849745375.a n = A372620 (n + 1)

end A372620

/-!
# A372621: a(n) = (1/2) * Sum_{k=1..n} phi(3*k).

The programs for A372621, the canonical program `A372621.P2752867004520561479` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372621 has offset 1).

The definition of A372621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372621.P2752867004520561479

`∑[A195459(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372621

/-- `∑[A195459(n+1)]` -/
def P2752867004520561479.Spec : Prop :=
  ∀ n, P2752867004520561479.a n = A372621 (n + 1)

theorem P2752867004520561479.correct : P2752867004520561479.Spec := by
  intro n
  simp only [A372621, Nat.add_sub_cancel]

end A372621

/-! ## A372621.P17862940041030269796

`A194881(n+1)-1`
-/

namespace A372621.P17862940041030269796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194881 (n + 1) - 1

end

end A372621.P17862940041030269796

namespace A372621

/-- `A194881(n+1)-1` -/
def P17862940041030269796.Spec : Prop :=
  ∀ n, P17862940041030269796.a n = A372621 (n + 1)

end A372621

/-! ## A372621.P4845825061681400205

`∑[A000010(3*(n+1))/2]`
-/

namespace A372621.P4845825061681400205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (3 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P4845825061681400205

namespace A372621

/-- `∑[A000010(3*(n+1))/2]` -/
def P4845825061681400205.Spec : Prop :=
  ∀ n, P4845825061681400205.a n = (A372621 (n + 1) : ℚ)

end A372621

/-! ## A372621.P3508214336404037297

`∑[A001281(A000010(3*(n+1)))]`
-/

namespace A372621.P3508214336404037297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000010 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P3508214336404037297

namespace A372621

/-- `∑[A001281(A000010(3*(n+1)))]` -/
def P3508214336404037297.Spec : Prop :=
  ∀ n, P3508214336404037297.a n = A372621 (n + 1)

end A372621

/-! ## A372621.P12082430398685493179

`∑[A055684(3*(n+1))+1]`
-/

namespace A372621.P12082430398685493179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P12082430398685493179

namespace A372621

/-- `∑[A055684(3*(n+1))+1]` -/
def P12082430398685493179.Spec : Prop :=
  ∀ n, P12082430398685493179.a n = A372621 (n + 1)

end A372621

/-! ## A372621.P913516836716874977

`∑[A023022(3*(n+1))]`
-/

namespace A372621.P913516836716874977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P913516836716874977

namespace A372621

/-- `∑[A023022(3*(n+1))]` -/
def P913516836716874977.Spec : Prop :=
  ∀ n, P913516836716874977.a n = A372621 (n + 1)

end A372621

/-! ## A372621.P9518413439484889808

`∑[A140434(3*(n+1))/4]`
-/

namespace A372621.P9518413439484889808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140434 (3 * (n + 1)) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P9518413439484889808

namespace A372621

/-- `∑[A140434(3*(n+1))/4]` -/
def P9518413439484889808.Spec : Prop :=
  ∀ n, P9518413439484889808.a n = (A372621 (n + 1) : ℚ)

end A372621

/-! ## A372621.P16626934834341818424

`∑[A200905(3*(n+1))/6]`
-/

namespace A372621.P16626934834341818424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (3 * (n + 1)) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P16626934834341818424

namespace A372621

/-- `∑[A200905(3*(n+1))/6]` -/
def P16626934834341818424.Spec : Prop :=
  ∀ n, P16626934834341818424.a n = (A372621 (n + 1) : ℚ)

end A372621

/-! ## A372621.P7077102649234131843

`A023443(A194881(n+1))`
-/

namespace A372621.P7077102649234131843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194881 (n + 1)).toNat

end

end A372621.P7077102649234131843

namespace A372621

/-- `A023443(A194881(n+1))` -/
def P7077102649234131843.Spec : Prop :=
  ∀ n, P7077102649234131843.a n = A372621 (n + 1)

end A372621

/-! ## A372621.P8254257193038133173

`A372619(A034856(n+2))`
-/

namespace A372621.P8254257193038133173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 (A034856 (n + 2)).toNat

end

end A372621.P8254257193038133173

namespace A372621

/-- `A372619(A034856(n+2))` -/
def P8254257193038133173.Spec : Prop :=
  ∀ n, P8254257193038133173.a n = A372621 (n + 1)

end A372621

/-!
# A372622: a(n) = (1/4) * Sum_{k=1..n} phi(5*k).

The programs for A372622, the canonical program `A372622.P10615586684358842843` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372622 has offset 1).

The definition of A372622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372622.P10615586684358842843

`∑[A359101(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A372622

/-- `∑[A359101(n+1)]` -/
def P10615586684358842843.Spec : Prop :=
  ∀ n, P10615586684358842843.a n = A372622 (n + 1)

theorem P10615586684358842843.correct : P10615586684358842843.Spec := by
  intro n
  simp only [A372622, Nat.add_sub_cancel]

end A372622

/-! ## A372622.P3469482319561585409

`∑[A000010(5*(n+1))/4]`
-/

namespace A372622.P3469482319561585409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (5 * (n + 1)) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372622.P3469482319561585409

namespace A372622

/-- `∑[A000010(5*(n+1))/4]` -/
def P3469482319561585409.Spec : Prop :=
  ∀ n, P3469482319561585409.a n = (A372622 (n + 1) : ℚ)

end A372622

/-! ## A372622.P10037795575818471045

`∑[∑{d}[n+1, A008683(#)*A359100((n+1)/#)]]`
-/

namespace A372622.P10037795575818471045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A359100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372622.P10037795575818471045

namespace A372622

/-- `∑[∑{d}[n+1, A008683(#)*A359100((n+1)/#)]]` -/
def P10037795575818471045.Spec : Prop :=
  ∀ n, P10037795575818471045.a n = A372622 (n + 1)

end A372622

/-! ## A372622.P16947620076834918553

`∑[A000010(A132739(n+1))*A060904(n+1)]`
-/

namespace A372622.P16947620076834918553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A132739 (n + 1)).toNat * A060904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372622.P16947620076834918553

namespace A372622

/-- `∑[A000010(A132739(n+1))*A060904(n+1)]` -/
def P16947620076834918553.Spec : Prop :=
  ∀ n, P16947620076834918553.a n = A372622 (n + 1)

end A372622

/-! ## A372622.P541119065363142815

`∑[A070091(5*(n+1))]`
-/

namespace A372622.P541119065363142815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372622.P541119065363142815

namespace A372622

/-- `∑[A070091(5*(n+1))]` -/
def P541119065363142815.Spec : Prop :=
  ∀ n, P541119065363142815.a n = A372622 (n + 1)

end A372622

/-! ## A372622.P6074823070846728347

`∑[A023022(5*(n+1))]/2`
-/

namespace A372622.P6074823070846728347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (5 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A372622.P6074823070846728347

namespace A372622

/-- `∑[A023022(5*(n+1))]/2` -/
def P6074823070846728347.Spec : Prop :=
  ∀ n, P6074823070846728347.a n = (A372622 (n + 1) : ℚ)

end A372622

/-! ## A372622.P14348643552131413318

`A372619(Δ[A023545(n+1)])`
-/

namespace A372622.P14348643552131413318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 (f1 (n + 1) - f1 n).toNat

end

end A372622.P14348643552131413318

namespace A372622

/-- `A372619(Δ[A023545(n+1)])` -/
def P14348643552131413318.Spec : Prop :=
  ∀ n, P14348643552131413318.a n = A372622 (n + 1)

end A372622

/-! ## A372622.P14690104859783830044

`A372619(A052905(n+2)+1)`
-/

namespace A372622.P14690104859783830044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 (A052905 (n + 2) + 1).toNat

end

end A372622.P14690104859783830044

namespace A372622

/-- `A372619(A052905(n+2)+1)` -/
def P14690104859783830044.Spec : Prop :=
  ∀ n, P14690104859783830044.a n = A372622 (n + 1)

end A372622

/-! ## A372622.P14045644170214006668

`A372619(lt[A142963(n+5), A037306(n+1)])`
-/

namespace A372622.P14045644170214006668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142963 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A372622.P14045644170214006668

namespace A372622

/-- `A372619(lt[A142963(n+5), A037306(n+1)])` -/
def P14045644170214006668.Spec : Prop :=
  ∀ n, P14045644170214006668.a n = A372622 (n + 1)

end A372622

/-!
# A372623: Expansion of e.g.f. exp( exp(x) * (1 + x^2 / 2) - 1 ).

The programs for A372623, there is no canonical definition to state claims against.
-/

/-! ## A372623.P9298807864049637049

`A258049(A000142(n))+A200745(2*(n+2))`
-/

namespace A372623.P9298807864049637049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258049 (A000142 n).toNat + A200745 (2 * (n + 2))

end

end A372623.P9298807864049637049

/-! ## A372623.P13735487228929064558

`A268129((n+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A372623.P13735487228929064558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A268129 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A372623.P13735487228929064558

/-!
# A372624: Expansion of e.g.f. exp(1 - exp(x)) * (exp(x) - 1)^2 / 2.

The programs for A372624, there is no canonical definition to state claims against.
-/

/-! ## A372624.P4070374772941626632

`A320835(3*2^n)`
-/

namespace A372624.P4070374772941626632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (3 * 2 ^ n)

end

end A372624.P4070374772941626632

/-!
# A372626: a(1) = 1; a(n) = Sum_{d|n, d <= sqrt(n)} (-1)^(n/d + 1) * a(d).

The programs for A372626, there is no canonical definition to state claims against.
-/

/-! ## A372626.P8033751306525196992

`A305152(n+1)%A187789(A072473(n+1))`
-/

namespace A372626.P8033751306525196992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305152 (n + 1)) (A187789 (A072473 (n + 1)).toNat)

end

end A372626.P8033751306525196992

/-!
# A372628: Number of defective (binary) heaps on n elements from the set {0,1} with exactly one defect.

The programs for A372628, there is no canonical definition to state claims against.
-/

/-! ## A372628.P17682598424516291955

`A231236(A378672(n+2))`
-/

namespace A372628.P17682598424516291955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231236 (A378672 (n + 2)).toNat

end

end A372628.P17682598424516291955

/-! ## A372628.P17404269459943329796

`A325833(n)+A320448(A000726(n))`
-/

namespace A372628.P17404269459943329796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325833 n + A320448 (A000726 n).toNat

end

end A372628.P17404269459943329796

/-! ## A372628.P479485192279813825

`A000196(A098703(n+1))-A294897(n+1)`
-/

namespace A372628.P479485192279813825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A098703 (n + 1)).toNat - A294897 (n + 1)

end

end A372628.P479485192279813825

/-!
# A372629: Prime numbers whose sum of digits is a palindrome.

The programs for A372629, there is no canonical definition to state claims against.
-/

/-! ## A372629.P12543608662738913913

`eq[A032741(n), A136522(A007953(n))]`
-/

namespace A372629.P12543608662738913913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372629.P12543608662738913913

/-! ## A372629.P14427541680028553980

`eq[A056965(A007953(n))², A007920(n)]`
-/

namespace A372629.P14427541680028553980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A007953 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372629.P14427541680028553980

/-! ## A372629.P5079162101172696398

`eq[A032741(n), A136522(A169805(n)/2)]`
-/

namespace A372629.P5079162101172696398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372629.P5079162101172696398

/-! ## A372629.P1565439141969706503

`eq[A032741(n), A136522(A062028(n)-n)]`
-/

namespace A372629.P1565439141969706503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372629.P1565439141969706503

/-! ## A372629.P9110395820447412799

`eq[A032741(n), A136522(A160939(n+1)-(n+1))]`
-/

namespace A372629.P9110395820447412799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A160939 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372629.P9110395820447412799

/-!
# A372632: Sum over all partitions of n of the number of elements with minimal multiplicity in their partition.

The programs for A372632, there is no canonical definition to state claims against.
-/

/-! ## A372632.P17385937666595572423

`A213259(A076049(n+2))`
-/

namespace A372632.P17385937666595572423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A076049 (n + 2)).toNat

end

end A372632.P17385937666595572423

/-! ## A372632.P15551028112041751554

`A161511(A021103(n))+n`
-/

namespace A372632.P15551028112041751554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A021103 n).toNat + (n : ℤ)

end

end A372632.P15551028112041751554

/-! ## A372632.P2095287814661646015

`lt[A208510(A080335(n+1)), 24]`
-/

namespace A372632.P2095287814661646015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (A080335 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372632.P2095287814661646015

/-! ## A372632.P8655776622203077322

`eq[A028356(n), A218656(n+1)]`
-/

namespace A372632.P8655776622203077322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372632.P8655776622203077322

/-! ## A372632.P5095422067527599240

`A003002(∑[record[A056878(2*n+3)]])`
-/

namespace A372632.P5095422067527599240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056878 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372632.P5095422067527599240

/-!
# A372633: a(n) = Sum_{j=1..n} Sum_{k=1..n} phi(j*k).

The programs for A372633, there is no canonical definition to state claims against.
-/

/-! ## A372633.P9012001188909406957

`A100504(n)-A003967(A029519(n+1))`
-/

namespace A372633.P9012001188909406957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 n - A003967 (A029519 (n + 1)).toNat

end

end A372633.P9012001188909406957

/-! ## A372633.P507090808936320070

`A007306(A352319(n+1)+A144414(n+1))`
-/

namespace A372633.P507090808936320070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A352319 (n + 1) + A144414 (n + 1)).toNat

end

end A372633.P507090808936320070

/-!
# A372635: a(n) = Sum_{j=1..n} Sum_{k=1..n} phi(j)*phi(k).

The programs for A372635, the canonical program `A372635.P4289521867509819939` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372635 has offset 1).

The definition of A372635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372635.P6057935700776751625

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]²`
-/

namespace A372635.P6057935700776751625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A372635.P6057935700776751625

namespace A372635

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]²` -/
def P6057935700776751625.Spec : Prop :=
  ∀ n, P6057935700776751625.a n = (A372635 (n + 1) : ℚ)

end A372635

/-! ## A372635.P5441041045869888882

`Δ[A005598(n)]²`
-/

namespace A372635.P5441041045869888882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A372635.P5441041045869888882

namespace A372635

/-- `Δ[A005598(n)]²` -/
def P5441041045869888882.Spec : Prop :=
  ∀ n, P5441041045869888882.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P18250534284587101573

`Δ[A103116(n)]²`
-/

namespace A372635.P18250534284587101573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A372635.P18250534284587101573

namespace A372635

/-- `Δ[A103116(n)]²` -/
def P18250534284587101573.Spec : Prop :=
  ∀ n, P18250534284587101573.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P16336776361319886160

`A002088(n+1)²`
-/

namespace A372635.P16336776361319886160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) ^ 2

end

end A372635.P16336776361319886160

namespace A372635

/-- `A002088(n+1)²` -/
def P16336776361319886160.Spec : Prop :=
  ∀ n, P16336776361319886160.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P4289521867509819939

`A092249(n+1)²`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372635

/-- `A092249(n+1)²` -/
def P4289521867509819939.Spec : Prop :=
  ∀ n, P4289521867509819939.a n = A372635 (n + 1)

theorem P4289521867509819939.correct : P4289521867509819939.Spec := by
  intro n
  simp only [A372635, Nat.add_sub_cancel]

end A372635

/-! ## A372635.P16409267707542022613

`∑[A000010(n+1)]²`
-/

namespace A372635.P16409267707542022613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A372635.P16409267707542022613

namespace A372635

/-- `∑[A000010(n+1)]²` -/
def P16409267707542022613.Spec : Prop :=
  ∀ n, P16409267707542022613.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P2125903369071541736

`(1-Δ[A049688(n)])²`
-/

namespace A372635.P2125903369071541736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) ^ 2

end

end A372635.P2125903369071541736

namespace A372635

/-- `(1-Δ[A049688(n)])²` -/
def P2125903369071541736.Spec : Prop :=
  ∀ n, P2125903369071541736.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P18326818766817129350

`Δ[A274008(n)/2]²`
-/

namespace A372635.P18326818766817129350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274008 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A372635.P18326818766817129350

namespace A372635

/-- `Δ[A274008(n)/2]²` -/
def P18326818766817129350.Spec : Prop :=
  ∀ n, P18326818766817129350.a n = (A372635 (n + 1) : ℚ)

end A372635

/-! ## A372635.P18081942271833019992

`∑[abs(Δ[A002088(n)²])]`
-/

namespace A372635.P18081942271833019992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372635.P18081942271833019992

namespace A372635

/-- `∑[abs(Δ[A002088(n)²])]` -/
def P18081942271833019992.Spec : Prop :=
  ∀ n, P18081942271833019992.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P17156281198067520202

`(A015614(n+1)+1)²`
-/

namespace A372635.P17156281198067520202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015614 (n + 1) + 1) ^ 2

end

end A372635.P17156281198067520202

namespace A372635

/-- `(A015614(n+1)+1)²` -/
def P17156281198067520202.Spec : Prop :=
  ∀ n, P17156281198067520202.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P15303297637380062836

`(1-A005728(n+1))²`
-/

namespace A372635.P15303297637380062836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A005728 (n + 1)) ^ 2

end

end A372635.P15303297637380062836

namespace A372635

/-- `(1-A005728(n+1))²` -/
def P15303297637380062836.Spec : Prop :=
  ∀ n, P15303297637380062836.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P682887391061868691

`(1-A049643(n+1))²`
-/

namespace A372635.P682887391061868691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049643 (n + 1)) ^ 2

end

end A372635.P682887391061868691

namespace A372635

/-- `(1-A049643(n+1))²` -/
def P682887391061868691.Spec : Prop :=
  ∀ n, P682887391061868691.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P1961215007465901185

`(A049696(n+1)/2)²`
-/

namespace A372635.P1961215007465901185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A049696 (n + 1) : ℚ) / 2) ^ 2

end

end A372635.P1961215007465901185

namespace A372635

/-- `(A049696(n+1)/2)²` -/
def P1961215007465901185.Spec : Prop :=
  ∀ n, P1961215007465901185.a n = (A372635 (n + 1) : ℚ)

end A372635

/-! ## A372635.P574660297966172213

`(A206350(n+2)/2)²`
-/

namespace A372635.P574660297966172213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A206350 (n + 2) : ℚ) / 2) ^ 2

end

end A372635.P574660297966172213

namespace A372635

/-- `(A206350(n+2)/2)²` -/
def P574660297966172213.Spec : Prop :=
  ∀ n, P574660297966172213.a n = (A372635 (n + 1) : ℚ)

end A372635

/-! ## A372635.P15075573647452407035

`(A140466(n+1)/4)²`
-/

namespace A372635.P15075573647452407035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A140466 (n + 1) : ℚ) / 4) ^ 2

end

end A372635.P15075573647452407035

namespace A372635

/-- `(A140466(n+1)/4)²` -/
def P15075573647452407035.Spec : Prop :=
  ∀ n, P15075573647452407035.a n = (A372635 (n + 1) : ℚ)

end A372635

/-! ## A372635.P13972841532332866976

`(A187263(n+1)-n)²`
-/

namespace A372635.P13972841532332866976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187263 (n + 1) - (n : ℤ)) ^ 2

end

end A372635.P13972841532332866976

namespace A372635

/-- `(A187263(n+1)-n)²` -/
def P13972841532332866976.Spec : Prop :=
  ∀ n, P13972841532332866976.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P15639985717035621256

`∑[sqrt(A127473(n+1))]²`
-/

namespace A372635.P15639985717035621256
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A372635.P15639985717035621256

namespace A372635

/-- `∑[sqrt(A127473(n+1))]²` -/
def P15639985717035621256.Spec : Prop :=
  ∀ n, P15639985717035621256.a n = (A372635 (n + 1) : ℝ)

end A372635

/-! ## A372635.P4136578607521878847

`ceil(A018805(n+1)/2)²`
-/

namespace A372635.P4136578607521878847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018805 (n + 1) : ℚ) / 2⌉ ^ 2

end

end A372635.P4136578607521878847

namespace A372635

/-- `ceil(A018805(n+1)/2)²` -/
def P4136578607521878847.Spec : Prop :=
  ∀ n, P4136578607521878847.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P14940344384685180132

`∑[A109606(n+1)+1]²`
-/

namespace A372635.P14940344384685180132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A372635.P14940344384685180132

namespace A372635

/-- `∑[A109606(n+1)+1]²` -/
def P14940344384685180132.Spec : Prop :=
  ∀ n, P14940344384685180132.a n = A372635 (n + 1)

end A372635

/-! ## A372635.P6036170767143445824

`∑[1-A039649(n+1)]²`
-/

namespace A372635.P6036170767143445824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A372635.P6036170767143445824

namespace A372635

/-- `∑[1-A039649(n+1)]²` -/
def P6036170767143445824.Spec : Prop :=
  ∀ n, P6036170767143445824.a n = A372635 (n + 1)

end A372635

/-!
# A372637: a(n) = (1/2) * Sum_{k=1..n} phi(6*k).

The programs for A372637, the canonical program `A372637.P315727157468014530` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372637 has offset 1).

The definition of A372637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372637.P15513716307015217069

`∑[A372671(n+1)]`
-/

namespace A372637.P15513716307015217069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372637.P15513716307015217069

namespace A372637

/-- `∑[A372671(n+1)]` -/
def P15513716307015217069.Spec : Prop :=
  ∀ n, P15513716307015217069.a n = A372637 (n + 1)

end A372637

/-! ## A372637.P8225626060344383811

`∑[A062570(3*(n+1))/2]`
-/

namespace A372637.P8225626060344383811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (3 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372637.P8225626060344383811

namespace A372637

/-- `∑[A062570(3*(n+1))/2]` -/
def P8225626060344383811.Spec : Prop :=
  ∀ n, P8225626060344383811.a n = (A372637 (n + 1) : ℚ)

end A372637

/-! ## A372637.P315727157468014530

`∑[∑{d}[n+1, #*A355688((n+1)/#)]]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372637

/-- `∑[∑{d}[n+1, #*A355688((n+1)/#)]]` -/
def P315727157468014530.Spec : Prop :=
  ∀ n, P315727157468014530.a n = A372637 (n + 1)

theorem P315727157468014530.correct : P315727157468014530.Spec := by
  intro n
  simp only [A372637, Nat.add_sub_cancel]

end A372637

/-! ## A372637.P1840580746129291787

`∑[A195459(2*(n+1))]`
-/

namespace A372637.P1840580746129291787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372637.P1840580746129291787

namespace A372637

/-- `∑[A195459(2*(n+1))]` -/
def P1840580746129291787.Spec : Prop :=
  ∀ n, P1840580746129291787.a n = A372637 (n + 1)

end A372637

/-! ## A372637.P13703374979912452807

`∑[A055034(3*(n+1))]`
-/

namespace A372637.P13703374979912452807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372637.P13703374979912452807

namespace A372637

/-- `∑[A055034(3*(n+1))]` -/
def P13703374979912452807.Spec : Prop :=
  ∀ n, P13703374979912452807.a n = A372637 (n + 1)

end A372637

/-!
# A372638: a(n) = (1/6) * Sum_{k=1..n} phi(7*k).

The programs for A372638, the canonical program `A372638.P3612141055778573363` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372638 has offset 1).

The definition of A372638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372638.P3612141055778573363

`∑[A359102(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372638

/-- `∑[A359102(n+1)]` -/
def P3612141055778573363.Spec : Prop :=
  ∀ n, P3612141055778573363.a n = A372638 (n + 1)

theorem P3612141055778573363.correct : P3612141055778573363.Spec := by
  intro n
  simp only [A372638, Nat.add_sub_cancel]

end A372638

/-! ## A372638.P12082641109643513925

`∑[A000010(7*(n+1))/6]`
-/

namespace A372638.P12082641109643513925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (7 * (n + 1)) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P12082641109643513925

namespace A372638

/-- `∑[A000010(7*(n+1))/6]` -/
def P12082641109643513925.Spec : Prop :=
  ∀ n, P12082641109643513925.a n = (A372638 (n + 1) : ℚ)

end A372638

/-! ## A372638.P15347680102250969769

`∑[A372678(A026741(n+1))]`
-/

namespace A372638.P15347680102250969769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372678 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P15347680102250969769

namespace A372638

/-- `∑[A372678(A026741(n+1))]` -/
def P15347680102250969769.Spec : Prop :=
  ∀ n, P15347680102250969769.a n = A372638 (n + 1)

end A372638

/-! ## A372638.P5588794517939516371

`∑[A372678(n+1)/A000034(n)]`
-/

namespace A372638.P5588794517939516371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372678 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P5588794517939516371

namespace A372638

/-- `∑[A372678(n+1)/A000034(n)]` -/
def P5588794517939516371.Spec : Prop :=
  ∀ n, P5588794517939516371.a n = (A372638 (n + 1) : ℚ)

end A372638

/-! ## A372638.P4356065892443195213

`∑[A372678(n+1)/(2-A059841(n))]`
-/

namespace A372638.P4356065892443195213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372678 (n + 1) : ℚ) / (2 - A059841 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P4356065892443195213

namespace A372638

/-- `∑[A372678(n+1)/(2-A059841(n))]` -/
def P4356065892443195213.Spec : Prop :=
  ∀ n, P4356065892443195213.a n = (A372638 (n + 1) : ℚ)

end A372638

/-! ## A372638.P11641473222948224244

`∑[A008615(A000010(7*(n+1)))]`
-/

namespace A372638.P11641473222948224244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000010 (7 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P11641473222948224244

namespace A372638

/-- `∑[A008615(A000010(7*(n+1)))]` -/
def P11641473222948224244.Spec : Prop :=
  ∀ n, P11641473222948224244.a n = A372638 (n + 1)

end A372638

/-! ## A372638.P12840787901431716926

`A372619(A055998(n+5)-A122553(3*(n+1)))`
-/

namespace A372638.P12840787901431716926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 (A055998 (n + 5) - A122553 (3 * (n + 1))).toNat

end

end A372638.P12840787901431716926

namespace A372638

/-- `A372619(A055998(n+5)-A122553(3*(n+1)))` -/
def P12840787901431716926.Spec : Prop :=
  ∀ n, P12840787901431716926.a n = A372638 (n + 1)

end A372638

/-!
# A372639: a(n) = (1/4) * Sum_{k=1..n} phi(10*k).

The programs for A372639, the canonical program `A372639.P3503106083445963658` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372639 has offset 1).

The definition of A372639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372639.P3503106083445963658

`∑[A372672(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A372639

/-- `∑[A372672(n+1)]` -/
def P3503106083445963658.Spec : Prop :=
  ∀ n, P3503106083445963658.a n = A372639 (n + 1)

theorem P3503106083445963658.correct : P3503106083445963658.Spec := by
  intro n
  simp only [A372639, Nat.add_sub_cancel]

end A372639

/-! ## A372639.P4553588215792427269

`∑[A359101(2*(n+1))]`
-/

namespace A372639.P4553588215792427269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359101 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372639.P4553588215792427269

namespace A372639

/-- `∑[A359101(2*(n+1))]` -/
def P4553588215792427269.Spec : Prop :=
  ∀ n, P4553588215792427269.a n = A372639 (n + 1)

end A372639

/-! ## A372639.P15750010975021696273

`∑[A070091(A008592(n+1))]`
-/

namespace A372639.P15750010975021696273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (A008592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372639.P15750010975021696273

namespace A372639

/-- `∑[A070091(A008592(n+1))]` -/
def P15750010975021696273.Spec : Prop :=
  ∀ n, P15750010975021696273.a n = A372639 (n + 1)

end A372639

/-! ## A372639.P12695586374048076547

`A372619(eq[8, A219347(n)])`
-/

namespace A372639.P12695586374048076547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A372639.P12695586374048076547

namespace A372639

/-- `A372619(eq[8, A219347(n)])` -/
def P12695586374048076547.Spec : Prop :=
  ∀ n, P12695586374048076547.a n = A372639 (n + 1)

end A372639

/-! ## A372639.P3950914376095044733

`∑[A193676(5*(n+1))]`
-/

namespace A372639.P3950914376095044733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193676 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372639.P3950914376095044733

namespace A372639

/-- `∑[A193676(5*(n+1))]` -/
def P3950914376095044733.Spec : Prop :=
  ∀ n, P3950914376095044733.a n = A372639 (n + 1)

end A372639

/-!
# A372642: Number of defective (binary) heaps on 2n elements from the set {0,1} where exactly n ancestor-successor pairs do not have the correct order.

The programs for A372642, there is no canonical definition to state claims against.
-/

/-! ## A372642.P377118044954813535

`A130676(A050535(n))`
-/

namespace A372642.P377118044954813535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130676 (A050535 n).toNat

end

end A372642.P377118044954813535

/-! ## A372642.P9246630067099386841

`xor(1, A112778(A007559(n)))`
-/

namespace A372642.P9246630067099386841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A112778 (A007559 n).toNat)

end

end A372642.P9246630067099386841

/-!
# A372643: Number of defective (binary) heaps on n elements from the set {0,1} where exactly one ancestor-successor pair does not have the correct order.

The programs for A372643, there is no canonical definition to state claims against.
-/

/-! ## A372643.P14833681565938446990

`A023894(2*n)-A329744(A023894(2*n))`
-/

namespace A372643.P14833681565938446990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 (2 * n) - A329744 (A023894 (2 * n)).toNat

end

end A372643.P14833681565938446990

/-! ## A372643.P14515084861366766119

`A025921(A000125(n+3))%A264560(3*n+2)`
-/

namespace A372643.P14515084861366766119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025921 (A000125 (n + 3)).toNat) (A264560 (3 * n + 2))

end

end A372643.P14515084861366766119

/-! ## A372643.P487708429743944497

`A108376(∑[floor(A029954(n+1)/2)])`
-/

namespace A372643.P487708429743944497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029954 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372643.P487708429743944497

/-! ## A372643.P3043858930226133446

`A001629(n)-A208243(A073617(n))`
-/

namespace A372643.P3043858930226133446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n - A208243 (A073617 n).toNat

end

end A372643.P3043858930226133446

/-! ## A372643.P5009953838068962535

`A177510(n)-A321455(A000142(n))`
-/

namespace A372643.P5009953838068962535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177510 n - A321455 (A000142 n).toNat

end

end A372643.P5009953838068962535

/-!
# A372645: a(n) is the 2-adic valuation of the n-th term of the aliquot sequence of 276.

The programs for A372645, there is no canonical definition to state claims against.
-/

/-! ## A372645.P6564968549715874002

`val(A008892(n), 2)`
-/

namespace A372645.P6564968549715874002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008892 n).toNat 2

end

end A372645.P6564968549715874002

/-!
# A372646: Irregular triangle read by rows, T(n,k) is the number of integer compositions of n such that their set of adjacent differences is a subset of {-1,1}, they contain 1 as a part, and have k parts. T(n,k) for n >= 0, floor(sqrt(2*(n+1))-(1/2)) <= k <= floor((2*n+1)/3).

The programs for A372646, there is no canonical definition to state claims against.
-/

/-! ## A372646.P9286960704438748807

`and(Δ[A227116(n+1)], A023416(2*n+3))`
-/

namespace A372646.P9286960704438748807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A023416 (2 * n + 3))

end

end A372646.P9286960704438748807

/-! ## A372646.P17291457973463053608

`and(A032682(A000079(n)), A127830(n))`
-/

namespace A372646.P17291457973463053608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032682 (A000079 n).toNat) (A127830 n)

end

end A372646.P17291457973463053608

/-! ## A372646.P13580543533072261091

`A080843(A080843(n+1)+A041101(n))`
-/

namespace A372646.P13580543533072261091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A080843 (n + 1) + A041101 n).toNat

end

end A372646.P13580543533072261091

/-! ## A372646.P1880660495480607163

`A057505(A052953(n))%A000005(n+1)`
-/

namespace A372646.P1880660495480607163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057505 (A052953 n).toNat) (A000005 (n + 1))

end

end A372646.P1880660495480607163

/-!
# A372649: Total sum over all partitions of [n] of the number of maximal blocks.

The programs for A372649, there is no canonical definition to state claims against.
-/

/-! ## A372649.P17633418896932102448

`A305502(A149629(n+1))`
-/

namespace A372649.P17633418896932102448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305502 (A149629 (n + 1)).toNat

end

end A372649.P17633418896932102448

/-! ## A372649.P3935525564687593592

`∑[∑[A065717(A246036(n))]]`
-/

namespace A372649.P3935525564687593592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065717 (A246036 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372649.P3935525564687593592

/-! ## A372649.P17966114881281387417

`A071538(A349331(n)+A085362(n))`
-/

namespace A372649.P17966114881281387417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A349331 n + A085362 n).toNat

end

end A372649.P17966114881281387417

/-!
# A372650: Total sum over all partitions of [n] of the number of minimal blocks.

The programs for A372650, there is no canonical definition to state claims against.
-/

/-! ## A372650.P7363049730589614786

`A154435(A075633(n+1)-A070879(n))`
-/

namespace A372650.P7363049730589614786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 (A075633 (n + 1) - A070879 n).toNat

end

end A372650.P7363049730589614786

/-!
# A372651: a(n) is the product of the distinct nonzero quadratic residues of n.

The programs for A372651, there is no canonical definition to state claims against.
-/

/-! ## A372651.P10784438768293357857

`A306286(A055094(n+1))`
-/

namespace A372651.P10784438768293357857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A055094 (n + 1)).toNat

end

end A372651.P10784438768293357857

/-!
# A372652: Smallest square that can be expressed as Sum_{i=1..n} p(2i-1)^p(2i) where p is a permutation of {1, 2, 3, ..., 2n}.

The programs for A372652, there is no canonical definition to state claims against.
-/

/-! ## A372652.P2354244414583372760

`A177407(A363191(n+1))^2`
-/

namespace A372652.P2354244414583372760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177407 (A363191 (n + 1)).toNat ^ 2

end

end A372652.P2354244414583372760

/-!
# A372663: a(n) = Sum_{i=1..n} Sum_{j=1..n} Sum_{k=1..n} phi(i*j*k) / phi(j*k).

The programs for A372663, there is no canonical definition to state claims against.
-/

/-! ## A372663.P2870945975513398452

`A283551(3*n)+A063720(A026000(n))`
-/

namespace A372663.P2870945975513398452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 (3 * n) + A063720 (A026000 n).toNat

end

end A372663.P2870945975513398452

/-!
# A372665: a(n) = Sum_{j=1..n} Sum_{k=1..n} phi(2*j*k) / phi(j*k).

The programs for A372665, the canonical program `A372665.P12117016533711914518` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372665 has offset 1).

The definition of A372665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372665.P12117016533711914518

`floor(∑[7-a(n-1)]²/7)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372665

/-- `floor(∑[7-a(n-1)]²/7)` -/
def P12117016533711914518.Spec : Prop :=
  ∀ n, P12117016533711914518.a n = A372665 (n + 1)

theorem P12117016533711914518.correct : P12117016533711914518.Spec := by
  intro n
  simp only [A372665, Nat.add_sub_cancel]

end A372665

/-! ## A372665.P17111025860182901861

`∑[(n+1)*(4-∑[(-1)^n])-2]`
-/

namespace A372665.P17111025860182901861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (4 - ∑ j ∈ Finset.range (n + 1), f2 j) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372665.P17111025860182901861

namespace A372665

/-- `∑[(n+1)*(4-∑[(-1)^n])-2]` -/
def P17111025860182901861.Spec : Prop :=
  ∀ n, P17111025860182901861.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P2438595961643561404

`A239767(n+1)+∑[n]`
-/

namespace A372665.P2438595961643561404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A372665.P2438595961643561404

namespace A372665

/-- `A239767(n+1)+∑[n]` -/
def P2438595961643561404.Spec : Prop :=
  ∀ n, P2438595961643561404.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P7352832716010661692

`∑[A059029(n)]+(n+1)²`
-/

namespace A372665.P7352832716010661692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A372665.P7352832716010661692

namespace A372665

/-- `∑[A059029(n)]+(n+1)²` -/
def P7352832716010661692.Spec : Prop :=
  ∀ n, P7352832716010661692.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P13265538841847553282

`Δ[A212968(n)-(n+1)²]`
-/

namespace A372665.P13265538841847553282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372665.P13265538841847553282

namespace A372665

/-- `Δ[A212968(n)-(n+1)²]` -/
def P13265538841847553282.Spec : Prop :=
  ∀ n, P13265538841847553282.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P2750102822521476677

`A032438(n+1)+(n+1)²`
-/

namespace A372665.P2750102822521476677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A372665.P2750102822521476677

namespace A372665

/-- `A032438(n+1)+(n+1)²` -/
def P2750102822521476677.Spec : Prop :=
  ∀ n, P2750102822521476677.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P16620526085258012089

`A212965(n+1)-(2*n+3)`
-/

namespace A372665.P16620526085258012089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 (n + 1) - (2 * n + 3 : ℤ)

end

end A372665.P16620526085258012089

namespace A372665

/-- `A212965(n+1)-(2*n+3)` -/
def P16620526085258012089.Spec : Prop :=
  ∀ n, P16620526085258012089.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P3064046894057689371

`A056833(A047355(n+2))`
-/

namespace A372665.P3064046894057689371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056833 (A047355 (n + 2)).toNat

end

end A372665.P3064046894057689371

namespace A372665

/-- `A056833(A047355(n+2))` -/
def P3064046894057689371.Spec : Prop :=
  ∀ n, P3064046894057689371.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P10510532542503017

`A265225(n)+A115006(n)`
-/

namespace A372665.P10510532542503017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n + A115006 n

end

end A372665.P10510532542503017

namespace A372665

/-- `A265225(n)+A115006(n)` -/
def P10510532542503017.Spec : Prop :=
  ∀ n, P10510532542503017.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P6197328906982139674

`A397107(n)+A028387(n)`
-/

namespace A372665.P6197328906982139674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397107 n + A028387 n

end

end A372665.P6197328906982139674

namespace A372665

/-- `A397107(n)+A028387(n)` -/
def P6197328906982139674.Spec : Prop :=
  ∀ n, P6197328906982139674.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P5465819350727237867

`A110349(n+1)+A001859(n)`
-/

namespace A372665.P5465819350727237867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (n + 1) + A001859 n

end

end A372665.P5465819350727237867

namespace A372665

/-- `A110349(n+1)+A001859(n)` -/
def P5465819350727237867.Spec : Prop :=
  ∀ n, P5465819350727237867.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P6877862912099655546

`A133146(n)+A008865(n+1)`
-/

namespace A372665.P6877862912099655546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 n + A008865 (n + 1)

end

end A372665.P6877862912099655546

namespace A372665

/-- `A133146(n)+A008865(n+1)` -/
def P6877862912099655546.Spec : Prop :=
  ∀ n, P6877862912099655546.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P102756298970406752

`A132354(n)+A114752(n+1)`
-/

namespace A372665.P102756298970406752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132354 n + A114752 (n + 1)

end

end A372665.P102756298970406752

namespace A372665

/-- `A132354(n)+A114752(n+1)` -/
def P102756298970406752.Spec : Prop :=
  ∀ n, P102756298970406752.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P9228051040387909855

`A238411(n+1)+A014255(n)`
-/

namespace A372665.P9228051040387909855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (n + 1) + A014255 n

end

end A372665.P9228051040387909855

namespace A372665

/-- `A238411(n+1)+A014255(n)` -/
def P9228051040387909855.Spec : Prop :=
  ∀ n, P9228051040387909855.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P8349799785565222318

`A217571(n+1)+A045943(n)`
-/

namespace A372665.P8349799785565222318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217571 (n + 1) + A045943 n

end

end A372665.P8349799785565222318

namespace A372665

/-- `A217571(n+1)+A045943(n)` -/
def P8349799785565222318.Spec : Prop :=
  ∀ n, P8349799785565222318.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P17361294274718093125

`A210978(n)+A118277(n+1)`
-/

namespace A372665.P17361294274718093125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 n + A118277 (n + 1)

end

end A372665.P17361294274718093125

namespace A372665

/-- `A210978(n)+A118277(n+1)` -/
def P17361294274718093125.Spec : Prop :=
  ∀ n, P17361294274718093125.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P5138112536113203941

`A265382(n)+A117748(n+1)`
-/

namespace A372665.P5138112536113203941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265382 n + A117748 (n + 1)

end

end A372665.P5138112536113203941

namespace A372665

/-- `A265382(n)+A117748(n+1)` -/
def P5138112536113203941.Spec : Prop :=
  ∀ n, P5138112536113203941.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P16515951153417971002

`A298950(n+1)+A116940(n)`
-/

namespace A372665.P16515951153417971002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1) + A116940 n

end

end A372665.P16515951153417971002

namespace A372665

/-- `A298950(n+1)+A116940(n)` -/
def P16515951153417971002.Spec : Prop :=
  ∀ n, P16515951153417971002.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P5292792141288968738

`A002378(n)+A001082(n+2)`
-/

namespace A372665.P5292792141288968738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + A001082 (n + 2)

end

end A372665.P5292792141288968738

namespace A372665

/-- `A002378(n)+A001082(n+2)` -/
def P5292792141288968738.Spec : Prop :=
  ∀ n, P5292792141288968738.a n = A372665 (n + 1)

end A372665

/-! ## A372665.P9597532750667051619

`A000384(n+1)-A131805(n)`
-/

namespace A372665.P9597532750667051619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1) - A131805 n

end

end A372665.P9597532750667051619

namespace A372665

/-- `A000384(n+1)-A131805(n)` -/
def P9597532750667051619.Spec : Prop :=
  ∀ n, P9597532750667051619.a n = A372665 (n + 1)

end A372665

/-!
# A372666: Numbers of the form A002110(k)/prime(i); i = 2..k-1; sorted.

The programs for A372666, there is no canonical definition to state claims against.
-/

/-! ## A372666.P14082620318056992596

`A077011(lt[1, A131689(n)])`
-/

namespace A372666.P14082620318056992596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A372666.P14082620318056992596

/-! ## A372666.P7265381008611212224

`A077011(lt[1, val(A130329(n), 2)])`
-/

namespace A372666.P7265381008611212224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130329 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A372666.P7265381008611212224

/-! ## A372666.P12522544023280350828

`A259629(A007401(n+1))`
-/

namespace A372666.P12522544023280350828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259629 (A007401 (n + 1)).toNat

end

end A372666.P12522544023280350828

/-! ## A372666.P1758498458943593263

`A259629(lt[1, A062254(n)])`
-/

namespace A372666.P1758498458943593263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A372666.P1758498458943593263

/-! ## A372666.P8228245911610957499

`A259629(lt[1, A054531(n+1)])`
-/

namespace A372666.P8228245911610957499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A372666.P8228245911610957499

/-! ## A372666.P923782451260816295

`A259629(lt[1, A142075(n+2)])`
-/

namespace A372666.P923782451260816295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142075 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A372666.P923782451260816295

/-! ## A372666.P11458577440173662913

`A019565(A190620(n+1))`
-/

namespace A372666.P11458577440173662913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A190620 (n + 1)).toNat

end

end A372666.P11458577440173662913

/-!
# A372668: a(n) = (1/phi(n)) * Sum_{j=1..n} Sum_{k=1..n} phi(n*j*k).

The programs for A372668, there is no canonical definition to state claims against.
-/

/-! ## A372668.P2852344524583385598

`A195208(A342094(3*(n+1)))+n`
-/

namespace A372668.P2852344524583385598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195208 (A342094 (3 * (n + 1))).toNat + (n : ℤ)

end

end A372668.P2852344524583385598

/-!
# A372669: a(n) = Sum_{j=1..n} Sum_{k=1..n} phi(n*j*k) / phi(n*k).

The programs for A372669, there is no canonical definition to state claims against.
-/

/-! ## A372669.P12005634894221062501

`A157017(∑[∑[A342527(n)]])-2`
-/

namespace A372669.P12005634894221062501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A372669.P12005634894221062501

/-! ## A372669.P15597879265258283788

`A053873(A278656(n+2)+A001440(2*(n+2)))`
-/

namespace A372669.P15597879265258283788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053873 (A278656 (n + 2) + A001440 (2 * (n + 2))).toNat

end

end A372669.P15597879265258283788

/-!
# A372670: Numbers k such that k * phi(k) is a fifth power.

The programs for A372670, there is no canonical definition to state claims against.
-/

/-! ## A372670.P11447430172918940940

`A086571(A358051(n+1))`
-/

namespace A372670.P11447430172918940940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086571 (A358051 (n + 1)).toNat

end

end A372670.P11447430172918940940

/-!
# A372671: a(n) = phi(6 * n)/2.

The programs for A372671, the canonical program `A372671.P2824817708253662645` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372671 has offset 1).

The definition of A372671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372671.P13754494885039550178

`A062570(3*(n+1))/2`
-/

namespace A372671.P13754494885039550178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (3 * (n + 1)) : ℚ) / 2

end

end A372671.P13754494885039550178

namespace A372671

/-- `A062570(3*(n+1))/2` -/
def P13754494885039550178.Spec : Prop :=
  ∀ n, P13754494885039550178.a n = (A372671 (n + 1) : ℚ)

end A372671

/-! ## A372671.P2824817708253662645

`∑{d}[n+1, #*A355688((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372671

/-- `∑{d}[n+1, #*A355688((n+1)/#)]` -/
def P2824817708253662645.Spec : Prop :=
  ∀ n, P2824817708253662645.a n = A372671 (n + 1)

theorem P2824817708253662645.correct : P2824817708253662645.Spec := by
  intro n
  simp only [A372671, Nat.add_sub_cancel]

end A372671

/-! ## A372671.P8799320323359799711

`A000034(n)*A195459(n+1)`
-/

namespace A372671.P8799320323359799711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A195459 (n + 1)

end

end A372671.P8799320323359799711

namespace A372671

/-- `A000034(n)*A195459(n+1)` -/
def P8799320323359799711.Spec : Prop :=
  ∀ n, P8799320323359799711.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P15507381564121116649

`A002618(n+1)/A384042(n+1)`
-/

namespace A372671.P15507381564121116649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A384042 (n + 1) : ℚ)

end

end A372671.P15507381564121116649

namespace A372671

/-- `A002618(n+1)/A384042(n+1)` -/
def P15507381564121116649.Spec : Prop :=
  ∀ n, P15507381564121116649.a n = (A372671 (n + 1) : ℚ)

end A372671

/-! ## A372671.P3618546170688709656

`∑{d}[n+1, A000010(#)*A065333((n+1)/#)]`
-/

namespace A372671.P3618546170688709656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A065333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372671.P3618546170688709656

namespace A372671

/-- `∑{d}[n+1, A000010(#)*A065333((n+1)/#)]` -/
def P3618546170688709656.Spec : Prop :=
  ∀ n, P3618546170688709656.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P10474609453353345102

`∑{d}[n+1, A008683(#)*A385137((n+1)/#)]`
-/

namespace A372671.P10474609453353345102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A385137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372671.P10474609453353345102

namespace A372671

/-- `∑{d}[n+1, A008683(#)*A385137((n+1)/#)]` -/
def P10474609453353345102.Spec : Prop :=
  ∀ n, P10474609453353345102.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P7220255463396949314

`∑{d}[n+1, A087003(#)*A327625((n+1)/#)]`
-/

namespace A372671.P7220255463396949314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372671.P7220255463396949314

namespace A372671

/-- `∑{d}[n+1, A087003(#)*A327625((n+1)/#)]` -/
def P7220255463396949314.Spec : Prop :=
  ∀ n, P7220255463396949314.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P2264971157151885338

`∑{d}[n+1, A036987(#-1)*A195459((n+1)/#)]`
-/

namespace A372671.P2264971157151885338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372671.P2264971157151885338

namespace A372671

/-- `∑{d}[n+1, A036987(#-1)*A195459((n+1)/#)]` -/
def P2264971157151885338.Spec : Prop :=
  ∀ n, P2264971157151885338.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P8222286842253275569

`A000010(A008458(n+1))/2`
-/

namespace A372671.P8222286842253275569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A008458 (n + 1)).toNat : ℚ) / 2

end

end A372671.P8222286842253275569

namespace A372671

/-- `A000010(A008458(n+1))/2` -/
def P8222286842253275569.Spec : Prop :=
  ∀ n, P8222286842253275569.a n = (A372671 (n + 1) : ℚ)

end A372671

/-! ## A372671.P12079976242703426311

`A000010(A008588(n+1))/2`
-/

namespace A372671.P12079976242703426311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A008588 (n + 1)).toNat : ℚ) / 2

end

end A372671.P12079976242703426311

namespace A372671

/-- `A000010(A008588(n+1))/2` -/
def P12079976242703426311.Spec : Prop :=
  ∀ n, P12079976242703426311.a n = (A372671 (n + 1) : ℚ)

end A372671

/-! ## A372671.P4283104389564822590

`(A001651(n+2)-A001651(n+1))*A195459(n+1)`
-/

namespace A372671.P4283104389564822590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 2) - A001651 (n + 1)) * A195459 (n + 1)

end

end A372671.P4283104389564822590

namespace A372671

/-- `(A001651(n+2)-A001651(n+1))*A195459(n+1)` -/
def P4283104389564822590.Spec : Prop :=
  ∀ n, P4283104389564822590.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P6809990109345223739

`A195459(n+1)/A055034(n+2)*A000010(n+2)`
-/

namespace A372671.P6809990109345223739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195459 (n + 1) : ℚ) / (A055034 (n + 2) : ℚ) * (A000010 (n + 2) : ℚ)

end

end A372671.P6809990109345223739

namespace A372671

/-- `A195459(n+1)/A055034(n+2)*A000010(n+2)` -/
def P6809990109345223739.Spec : Prop :=
  ∀ n, P6809990109345223739.a n = (A372671 (n + 1) : ℚ)

end A372671

/-! ## A372671.P14869732594286905730

`A195459(A022998(n+1))`
-/

namespace A372671.P14869732594286905730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (A022998 (n + 1)).toNat

end

end A372671.P14869732594286905730

namespace A372671

/-- `A195459(A022998(n+1))` -/
def P14869732594286905730.Spec : Prop :=
  ∀ n, P14869732594286905730.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P1587787454819361784

`A195459(A257088(n+1))`
-/

namespace A372671.P1587787454819361784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (A257088 (n + 1)).toNat

end

end A372671.P1587787454819361784

namespace A372671

/-- `A195459(A257088(n+1))` -/
def P1587787454819361784.Spec : Prop :=
  ∀ n, P1587787454819361784.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P16277019928001828815

`A195459(2*(n+1))`
-/

namespace A372671.P16277019928001828815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (2 * (n + 1))

end

end A372671.P16277019928001828815

namespace A372671

/-- `A195459(2*(n+1))` -/
def P16277019928001828815.Spec : Prop :=
  ∀ n, P16277019928001828815.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P14885828797384913629

`A194881(2*(n+1))-A194881(2*n+1)`
-/

namespace A372671.P14885828797384913629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194881 (2 * (n + 1)) - A194881 (2 * n + 1)

end

end A372671.P14885828797384913629

namespace A372671

/-- `A194881(2*(n+1))-A194881(2*n+1)` -/
def P14885828797384913629.Spec : Prop :=
  ∀ n, P14885828797384913629.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P17895031942180424083

`A372621(2*(n+1))-A372621(2*n+1)`
-/

namespace A372671.P17895031942180424083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372621 (2 * (n + 1)) - A372621 (2 * n + 1)

end

end A372671.P17895031942180424083

namespace A372671

/-- `A372621(2*(n+1))-A372621(2*n+1)` -/
def P17895031942180424083.Spec : Prop :=
  ∀ n, P17895031942180424083.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P8802539321406762734

`A000010(A038502(2*(n+1)))*A038500(2*(n+1))`
-/

namespace A372671.P8802539321406762734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038502 (2 * (n + 1))).toNat * A038500 (2 * (n + 1))

end

end A372671.P8802539321406762734

namespace A372671

/-- `A000010(A038502(2*(n+1)))*A038500(2*(n+1))` -/
def P8802539321406762734.Spec : Prop :=
  ∀ n, P8802539321406762734.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P5312896489643633953

`A055034(3*(n+1))`
-/

namespace A372671.P5312896489643633953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (3 * (n + 1))

end

end A372671.P5312896489643633953

namespace A372671

/-- `A055034(3*(n+1))` -/
def P5312896489643633953.Spec : Prop :=
  ∀ n, P5312896489643633953.a n = A372671 (n + 1)

end A372671

/-! ## A372671.P4326737422370652144

`A023022(A165988(n+1))`
-/

namespace A372671.P4326737422370652144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A165988 (n + 1)).toNat

end

end A372671.P4326737422370652144

namespace A372671

/-- `A023022(A165988(n+1))` -/
def P4326737422370652144.Spec : Prop :=
  ∀ n, P4326737422370652144.a n = A372671 (n + 1)

end A372671

/-!
# A372672: a(n) = phi(10 * n)/4.

The programs for A372672, the canonical program `A372672.P16647727188693746808` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372672 has offset 1).

The definition of A372672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372672.P15048819806158025003

`A000034(n)*A359101(n+1)`
-/

namespace A372672.P15048819806158025003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A359101 (n + 1)

end

end A372672.P15048819806158025003

namespace A372672

/-- `A000034(n)*A359101(n+1)` -/
def P15048819806158025003.Spec : Prop :=
  ∀ n, P15048819806158025003.a n = A372672 (n + 1)

end A372672

/-! ## A372672.P16647727188693746808

`∑{d}[n+1, A087003(#)*A359100((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A372672

/-- `∑{d}[n+1, A087003(#)*A359100((n+1)/#)]` -/
def P16647727188693746808.Spec : Prop :=
  ∀ n, P16647727188693746808.a n = A372672 (n + 1)

theorem P16647727188693746808.correct : P16647727188693746808.Spec := by
  intro n
  simp only [A372672, Nat.add_sub_cancel]

end A372672

/-! ## A372672.P673313821633716363

`∑{d}[n+1, A036987(#-1)*A359101((n+1)/#)]`
-/

namespace A372672.P673313821633716363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A359101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372672.P673313821633716363

namespace A372672

/-- `∑{d}[n+1, A036987(#-1)*A359101((n+1)/#)]` -/
def P673313821633716363.Spec : Prop :=
  ∀ n, P673313821633716363.a n = A372672 (n + 1)

end A372672

/-! ## A372672.P3515112014127392254

`A359101(n+1)/A195459(n+1)*A372671(n+1)`
-/

namespace A372672.P3515112014127392254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359101 (n + 1) : ℚ) / (A195459 (n + 1) : ℚ) * (A372671 (n + 1) : ℚ)

end

end A372672.P3515112014127392254

namespace A372672

/-- `A359101(n+1)/A195459(n+1)*A372671(n+1)` -/
def P3515112014127392254.Spec : Prop :=
  ∀ n, P3515112014127392254.a n = (A372672 (n + 1) : ℚ)

end A372672

/-! ## A372672.P4017644359674187324

`A359101(A022998(n+1))`
-/

namespace A372672.P4017644359674187324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359101 (A022998 (n + 1)).toNat

end

end A372672.P4017644359674187324

namespace A372672

/-- `A359101(A022998(n+1))` -/
def P4017644359674187324.Spec : Prop :=
  ∀ n, P4017644359674187324.a n = A372672 (n + 1)

end A372672

/-! ## A372672.P18123574470128336236

`A359101(A257088(n+1))`
-/

namespace A372672.P18123574470128336236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359101 (A257088 (n + 1)).toNat

end

end A372672.P18123574470128336236

namespace A372672

/-- `A359101(A257088(n+1))` -/
def P18123574470128336236.Spec : Prop :=
  ∀ n, P18123574470128336236.a n = A372672 (n + 1)

end A372672

/-! ## A372672.P14951094088840632589

`A359101(2*(n+1))`
-/

namespace A372672.P14951094088840632589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359101 (2 * (n + 1))

end

end A372672.P14951094088840632589

namespace A372672

/-- `A359101(2*(n+1))` -/
def P14951094088840632589.Spec : Prop :=
  ∀ n, P14951094088840632589.a n = A372672 (n + 1)

end A372672

/-! ## A372672.P9170805611437326572

`A372622(2*(n+1))-A372622(2*n+1)`
-/

namespace A372672.P9170805611437326572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372622 (2 * (n + 1)) - A372622 (2 * n + 1)

end

end A372672.P9170805611437326572

namespace A372672

/-- `A372622(2*(n+1))-A372622(2*n+1)` -/
def P9170805611437326572.Spec : Prop :=
  ∀ n, P9170805611437326572.a n = A372672 (n + 1)

end A372672

/-! ## A372672.P5065772130210212325

`A000010(A132739(2*(n+1)))*A060904(2*(n+1))`
-/

namespace A372672.P5065772130210212325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A132739 (2 * (n + 1))).toNat * A060904 (2 * (n + 1))

end

end A372672.P5065772130210212325

namespace A372672

/-- `A000010(A132739(2*(n+1)))*A060904(2*(n+1))` -/
def P5065772130210212325.Spec : Prop :=
  ∀ n, P5065772130210212325.a n = A372672 (n + 1)

end A372672

/-! ## A372672.P10979554472608829368

`A070091(A008592(n+1))`
-/

namespace A372672.P10979554472608829368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (A008592 (n + 1)).toNat

end

end A372672.P10979554472608829368

namespace A372672

/-- `A070091(A008592(n+1))` -/
def P10979554472608829368.Spec : Prop :=
  ∀ n, P10979554472608829368.a n = A372672 (n + 1)

end A372672

/-!
# A372673: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = phi(k*n) / phi(k).

The programs for A372673, the canonical program `A372673.P8325753504502278728` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372673 has offset 1).

The definition of A372673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372673.P8325753504502278728

`A000010(A003991(n+1))/A106476(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A372673

/-- `A000010(A003991(n+1))/A106476(n)` -/
def P8325753504502278728.Spec : Prop :=
  ∀ n, P8325753504502278728.a n = (A372673 (n + 1) : ℚ)

end A372673

/-!
# A372674: a(n) = Sum_{j=1..n} Sum_{k=1..n} tau(j*k).

The programs for A372674, there is no canonical definition to state claims against.
-/

/-! ## A372674.P7268355333240802318

`∑{d}[A000400(n), A010553(#)]`
-/

namespace A372674.P7268355333240802318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010553 d

end

end A372674.P7268355333240802318

/-!
# A372675: a(n) = Sum_{j=1..n} Sum_{k=1..n} sigma(j*k).

The programs for A372675, there is no canonical definition to state claims against.
-/

/-! ## A372675.P1165080298343574571

`∑{d}[A290849(n), A062069(#)]`
-/

namespace A372675.P1165080298343574571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062069 d

end

end A372675.P1165080298343574571

/-!
# A372676: a(n) = phi(11 * n)/10.

The programs for A372676, the canonical program `A372676.P9580076397016658994` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372676 has offset 1).

The definition of A372676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9090 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372676.P9580076397016658994

`A000010(A008593(n+1))/10`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A372676

/-- `A000010(A008593(n+1))/10` -/
def P9580076397016658994.Spec : Prop :=
  ∀ n, P9580076397016658994.a n = (A372676 (n + 1) : ℚ)

end A372676

/-! ## A372676.P13958090542139643868

`A357136(A109571(n+1))+A000010(n+1)`
-/

namespace A372676.P13958090542139643868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (A109571 (n + 1)).toNat + A000010 (n + 1)

end

end A372676.P13958090542139643868

namespace A372676

/-- `A357136(A109571(n+1))+A000010(n+1)` -/
def P13958090542139643868.Spec : Prop :=
  ∀ n, P13958090542139643868.a n = A372676 (n + 1)

end A372676

/-! ## A372676.P16366184588877376100

`A000010(n+1)+val(∏{p}[A176029(n+1), #], 11)`
-/

namespace A372676.P16366184588877376100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) 11 : ℤ)

end

end A372676.P16366184588877376100

namespace A372676

/-- `A000010(n+1)+val(∏{p}[A176029(n+1), #], 11)` -/
def P16366184588877376100.Spec : Prop :=
  ∀ n, P16366184588877376100.a n = A372676 (n + 1)

end A372676

/-! ## A372676.P11821151220686621600

`A010815(A295185(2*n+5))+A000010(n+1)`
-/

namespace A372676.P11821151220686621600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A295185 (2 * n + 5)).toNat + A000010 (n + 1)

end

end A372676.P11821151220686621600

namespace A372676

/-- `A010815(A295185(2*n+5))+A000010(n+1)` -/
def P11821151220686621600.Spec : Prop :=
  ∀ n, P11821151220686621600.a n = A372676 (n + 1)

end A372676

/-!
# A372677: a(n) = phi(13 * n)/12.

The programs for A372677, there is no canonical definition to state claims against.
-/

/-! ## A372677.P8780220370186107155

`A118685(A273496(n))+A000010(n+1)`
-/

namespace A372677.P8780220370186107155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118685 (A273496 n).toNat + A000010 (n + 1)

end

end A372677.P8780220370186107155

/-! ## A372677.P17884864963554396532

`A369660(A103209(n+1))+A000010(n+1)`
-/

namespace A372677.P17884864963554396532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369660 (A103209 (n + 1)).toNat + A000010 (n + 1)

end

end A372677.P17884864963554396532

/-! ## A372677.P17636479295543631704

`A156659(A008279(n+4))+A000010(n+1)`
-/

namespace A372677.P17636479295543631704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (A008279 (n + 4)).toNat + A000010 (n + 1)

end

end A372677.P17636479295543631704

/-! ## A372677.P18177824997581233630

`A374214(A092582(n+1))+A000010(n+1)`
-/

namespace A372677.P18177824997581233630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374214 (A092582 (n + 1)).toNat + A000010 (n + 1)

end

end A372677.P18177824997581233630

/-! ## A372677.P16155041813331788089

`A000010(n+1)-A240328(A087055(2*(n+1)))`
-/

namespace A372677.P16155041813331788089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A240328 (A087055 (2 * (n + 1))).toNat

end

end A372677.P16155041813331788089

/-!
# A372678: a(n) = phi(14 * n)/6.

The programs for A372678, the canonical program `A372678.P12173169369901666587` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372678 has offset 1).

The definition of A372678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372678.P3092155416442134100

`A000034(n)*A359102(n+1)`
-/

namespace A372678.P3092155416442134100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A359102 (n + 1)

end

end A372678.P3092155416442134100

namespace A372678

/-- `A000034(n)*A359102(n+1)` -/
def P3092155416442134100.Spec : Prop :=
  ∀ n, P3092155416442134100.a n = A372678 (n + 1)

end A372678

/-! ## A372678.P12173169369901666587

`∑{d}[n+1, A087003(#)*A359099((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372678

/-- `∑{d}[n+1, A087003(#)*A359099((n+1)/#)]` -/
def P12173169369901666587.Spec : Prop :=
  ∀ n, P12173169369901666587.a n = A372678 (n + 1)

theorem P12173169369901666587.correct : P12173169369901666587.Spec := by
  intro n
  simp only [A372678, Nat.add_sub_cancel]

end A372678

/-! ## A372678.P12437006063821879604

`∑{d}[n+1, A036987(#-1)*A359102((n+1)/#)]`
-/

namespace A372678.P12437006063821879604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A359102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372678.P12437006063821879604

namespace A372678

/-- `∑{d}[n+1, A036987(#-1)*A359102((n+1)/#)]` -/
def P12437006063821879604.Spec : Prop :=
  ∀ n, P12437006063821879604.a n = A372678 (n + 1)

end A372678

/-! ## A372678.P2050896362143354597

`A359102(A022998(n+1))`
-/

namespace A372678.P2050896362143354597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359102 (A022998 (n + 1)).toNat

end

end A372678.P2050896362143354597

namespace A372678

/-- `A359102(A022998(n+1))` -/
def P2050896362143354597.Spec : Prop :=
  ∀ n, P2050896362143354597.a n = A372678 (n + 1)

end A372678

/-! ## A372678.P13898347780355404247

`A359102(A257088(n+1))`
-/

namespace A372678.P13898347780355404247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359102 (A257088 (n + 1)).toNat

end

end A372678.P13898347780355404247

namespace A372678

/-- `A359102(A257088(n+1))` -/
def P13898347780355404247.Spec : Prop :=
  ∀ n, P13898347780355404247.a n = A372678 (n + 1)

end A372678

/-! ## A372678.P11670537700511828941

`A359102(2*(n+1))`
-/

namespace A372678.P11670537700511828941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359102 (2 * (n + 1))

end

end A372678.P11670537700511828941

namespace A372678

/-- `A359102(2*(n+1))` -/
def P11670537700511828941.Spec : Prop :=
  ∀ n, P11670537700511828941.a n = A372678 (n + 1)

end A372678

/-! ## A372678.P1747055534478684557

`A372638(2*(n+1))-A372638(2*n+1)`
-/

namespace A372678.P1747055534478684557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372638 (2 * (n + 1)) - A372638 (2 * n + 1)

end

end A372678.P1747055534478684557

namespace A372678

/-- `A372638(2*(n+1))-A372638(2*n+1)` -/
def P1747055534478684557.Spec : Prop :=
  ∀ n, P1747055534478684557.a n = A372678 (n + 1)

end A372678

/-!
# A372679: a(n) = phi(15 * n)/8.

The programs for A372679, the canonical program `A372679.P4909934590780709058` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372679 has offset 1).

The definition of A372679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372679.P4909934590780709058

`∑{d}[n+1, A156277(#)*A359100((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A372679

/-- `∑{d}[n+1, A156277(#)*A359100((n+1)/#)]` -/
def P4909934590780709058.Spec : Prop :=
  ∀ n, P4909934590780709058.a n = A372679 (n + 1)

theorem P4909934590780709058.correct : P4909934590780709058.Spec := by
  intro n
  simp only [A372679, Nat.add_sub_cancel]

end A372679

/-! ## A372679.P13481214380902073989

`A000010(A008597(n+1))/8`
-/

namespace A372679.P13481214380902073989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A008597 (n + 1)).toNat : ℚ) / 8

end

end A372679.P13481214380902073989

namespace A372679

/-- `A000010(A008597(n+1))/8` -/
def P13481214380902073989.Spec : Prop :=
  ∀ n, P13481214380902073989.a n = (A372679 (n + 1) : ℚ)

end A372679

/-! ## A372679.P3451541285186448449

`A359101(3*(n+1))/2`
-/

namespace A372679.P3451541285186448449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359101 (3 * (n + 1)) : ℚ) / 2

end

end A372679.P3451541285186448449

namespace A372679

/-- `A359101(3*(n+1))/2` -/
def P3451541285186448449.Spec : Prop :=
  ∀ n, P3451541285186448449.a n = (A372679 (n + 1) : ℚ)

end A372679

/-! ## A372679.P953559805280993657

`A000010(A008587(3*(n+1)))/8`
-/

namespace A372679.P953559805280993657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A008587 (3 * (n + 1))).toNat : ℚ) / 8

end

end A372679.P953559805280993657

namespace A372679

/-- `A000010(A008587(3*(n+1)))/8` -/
def P953559805280993657.Spec : Prop :=
  ∀ n, P953559805280993657.a n = (A372679 (n + 1) : ℚ)

end A372679

/-! ## A372679.P10864627936449567668

`A023022(A195035(2*n+1))/4`
-/

namespace A372679.P10864627936449567668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023022 (A195035 (2 * n + 1)).toNat : ℚ) / 4

end

end A372679.P10864627936449567668

namespace A372679

/-- `A023022(A195035(2*n+1))/4` -/
def P10864627936449567668.Spec : Prop :=
  ∀ n, P10864627936449567668.a n = (A372679 (n + 1) : ℚ)

end A372679

/-!
# A372681: a(n) = phi(17 * n)/16.

The programs for A372681, there is no canonical definition to state claims against.
-/

/-! ## A372681.P1443540340786333623

`A010815(A115264(n+4))+A000010(n+1)`
-/

namespace A372681.P1443540340786333623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A115264 (n + 4)).toNat + A000010 (n + 1)

end

end A372681.P1443540340786333623

/-! ## A372681.P15909939654068372420

`A344447(A333226(2*n+1))+A000010(n+1)`
-/

namespace A372681.P15909939654068372420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344447 (A333226 (2 * n + 1)).toNat + A000010 (n + 1)

end

end A372681.P15909939654068372420

/-! ## A372681.P14664097423521445870

`A079071(A355536(2*n+5))+A000010(n+1)`
-/

namespace A372681.P14664097423521445870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (A355536 (2 * n + 5)).toNat + A000010 (n + 1)

end

end A372681.P14664097423521445870

/-! ## A372681.P6975903257149347489

`A010054(A344881(2*(n+1)))+A000010(n+1)`
-/

namespace A372681.P6975903257149347489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A344881 (2 * (n + 1))).toNat + A000010 (n + 1)

end

end A372681.P6975903257149347489

/-! ## A372681.P5908581678972753925

`A286996(A086514(n+1))+A000010(n+1)`
-/

namespace A372681.P5908581678972753925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286996 (A086514 (n + 1)).toNat + A000010 (n + 1)

end

end A372681.P5908581678972753925

/-!
# A372682: Number of distinct circles that can be constructed from the 3 vertices and the equally spaced 3*n points placed on the sides of an equilateral triangle, using only a compass.

The programs for A372682, there is no canonical definition to state claims against.
-/

/-! ## A372682.P10967135830110697694

`A119888(A196069(n))`
-/

namespace A372682.P10967135830110697694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119888 (A196069 n).toNat

end

end A372682.P10967135830110697694

/-!
# A372683: Least squarefree number >= 2^n.

The programs for A372683, the canonical program `A372683.P240190754825945608` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372683 has offset 0).

The definition of A372683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372683.P11899378858392519081

`A005117(A372540(n))`
-/

namespace A372683.P11899378858392519081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A372540 n).toNat

end

end A372683.P11899378858392519081

namespace A372683

/-- `A005117(A372540(n))` -/
def P11899378858392519081.Spec : Prop :=
  ∀ n, P11899378858392519081.a n = A372683 n

end A372683

/-! ## A372683.P240190754825945608

`A067535(2^n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372683

/-- `A067535(2^n)` -/
def P240190754825945608.Spec : Prop :=
  ∀ n, P240190754825945608.a n = A372683 n

theorem P240190754825945608.correct : P240190754825945608.Spec := by
  intro n
  simp only [A372683]

end A372683

/-! ## A372683.P3911200287447395000

`A373125(n)+2^n`
-/

namespace A372683.P3911200287447395000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373125 n + (2 ^ n : ℤ)

end

end A372683.P3911200287447395000

namespace A372683

/-- `A373125(n)+2^n` -/
def P3911200287447395000.Spec : Prop :=
  ∀ n, P3911200287447395000.a n = A372683 n

end A372683

/-! ## A372683.P13579013397102447147

`or(2^n, A373125(n-char[1]))`
-/

namespace A372683.P13579013397102447147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A373125 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A372683.P13579013397102447147

namespace A372683

/-- `or(2^n, A373125(n-char[1]))` -/
def P13579013397102447147.Spec : Prop :=
  ∀ n, P13579013397102447147.a n = A372683 n

end A372683

/-! ## A372683.P7569416485580136331

`xor(A000079(n), A373125(n))`
-/

namespace A372683.P7569416485580136331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A373125 n)

end

end A372683.P7569416485580136331

namespace A372683

/-- `xor(A000079(n), A373125(n))` -/
def P7569416485580136331.Spec : Prop :=
  ∀ n, P7569416485580136331.a n = A372683 n

end A372683

/-!
# A372684: Least k such that prime(k) >= 2^n.

The programs for A372684, there is no canonical definition to state claims against.
-/

/-! ## A372684.P14644953928881127121

`∑[A162145(n+1)]`
-/

namespace A372684.P14644953928881127121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372684.P14644953928881127121

/-! ## A372684.P3744420477104644728

`A185192(n+1)+1`
-/

namespace A372684.P3744420477104644728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1) + 1

end

end A372684.P3744420477104644728

/-! ## A372684.P12025606448540298973

`∑[A036378(char[1]+n)]`
-/

namespace A372684.P12025606448540298973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372684.P12025606448540298973

/-! ## A372684.P6405989496537359119

`∑[A374403(n+1)]+1`
-/

namespace A372684.P6405989496537359119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A372684.P6405989496537359119

/-! ## A372684.P6579373770043826107

`A007053(ceil(n/sin(8)))+1`
-/

namespace A372684.P6579373770043826107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 ⌈(n : ℝ) / Real.sin (8 : ℝ)⌉.toNat + 1

end

end A372684.P6579373770043826107

/-!
# A372685: Prime numbers such that no lesser prime has the same binary weight (number of ones in binary expansion).

The programs for A372685, there is no canonical definition to state claims against.
-/

/-! ## A372685.P5020580975037290549

`A000040(A372686(n+1))`
-/

namespace A372685.P5020580975037290549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372686 (n + 1)).toNat

end

end A372685.P5020580975037290549

/-! ## A372685.P985550314260794193

`record[A061712(A014499(n+1))]`
-/

namespace A372685.P985550314260794193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (A014499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372685.P985550314260794193

/-! ## A372685.P17736963728206109376

`A008578(A372686(n+1)+1)`
-/

namespace A372685.P17736963728206109376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A372686 (n + 1) + 1).toNat

end

end A372685.P17736963728206109376

/-! ## A372685.P4305966209082856853

`record[A061712(∑{e}[A008578(n+1)+1, #])]`
-/

namespace A372685.P4305966209082856853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372685.P4305966209082856853

/-! ## A372685.P11861212100738538644

`A061712(A014499(A372686(A000120(A061712(n+1)))))`
-/

namespace A372685.P11861212100738538644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (A014499 (A372686 (A000120 (A061712 (n + 1)).toNat).toNat).toNat).toNat

end

end A372685.P11861212100738538644

/-!
# A372686: Sorted list of positions of first appearances in A014499 (number of ones in binary expansion of each prime).

The programs for A372686, there is no canonical definition to state claims against.
-/

/-! ## A372686.P11162194797006972969

`A000720(A372685(n+1))`
-/

namespace A372686.P11162194797006972969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A372685 (n + 1)).toNat

end

end A372686.P11162194797006972969

/-! ## A372686.P3910466458283671375

`record[A372517(A014499(n+1))]`
-/

namespace A372686.P3910466458283671375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372517 (A014499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372686.P3910466458283671375

/-! ## A372686.P16928644960985608649

`A061395(or(2, A372685(n+1)))`
-/

namespace A372686.P16928644960985608649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 2 (A372685 (n + 1))).toNat

end

end A372686.P16928644960985608649

/-! ## A372686.P11274274768209103040

`∑{d}[A372685(n+1), A061395(#)]`
-/

namespace A372686.P11274274768209103040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A372686.P11274274768209103040

/-! ## A372686.P11355431682774253961

`A061395(A124765(n+2)*A372685(n+1))`
-/

namespace A372686.P11355431682774253961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A124765 (n + 2) * A372685 (n + 1)).toNat

end

end A372686.P11355431682774253961

/-!
# A372689: Positive integers whose binary indices (positions of ones in reversed binary expansion) sum to a prime number.

The programs for A372689, there is no canonical definition to state claims against.
-/

/-! ## A372689.P6142770205882260532

`eq[0, A051699(A029931(n))]`
-/

namespace A372689.P6142770205882260532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A029931 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372689.P6142770205882260532

/-! ## A372689.P13434487450283467026

`eq[1, A003415(log2(A029930(n)))]`
-/

namespace A372689.P13434487450283467026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.logb 2 (A029930 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372689.P13434487450283467026

/-! ## A372689.P7399830163363195718

`lt[A051699(A073642(2*n)), 1]`
-/

namespace A372689.P7399830163363195718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A073642 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372689.P7399830163363195718

/-! ## A372689.P9724609412365783212

`eq[1, A001222(A029931(n+1))]+1`
-/

namespace A372689.P9724609412365783212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A029931 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372689.P9724609412365783212

/-! ## A372689.P13552948605528221828

`eq[A032741(A029931(n)), A141044(n)]`
-/

namespace A372689.P13552948605528221828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A029931 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372689.P13552948605528221828

/-! ## A372689.P571731852009521698

`eq[A158388(n), A369971(A029931(n))]`
-/

namespace A372689.P571731852009521698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 (A029931 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372689.P571731852009521698

/-! ## A372689.P14808425520915622702

`lt[A051699(A029931(n)), A057427(n)]`
-/

namespace A372689.P14808425520915622702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A029931 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372689.P14808425520915622702

/-! ## A372689.P16069184089734223928

`eq[A018783(A029931(n)), A049347(3*n)]`
-/

namespace A372689.P16069184089734223928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A029931 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372689.P16069184089734223928

/-! ## A372689.P15410832872807772659

`eq[A032741(A029931(n)), A138191(2*n+3)]`
-/

namespace A372689.P15410832872807772659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A029931 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372689.P15410832872807772659

/-!
# A372690: Numbers k such that k and k+1 are both numbers whose number of divisors is a power of 2 (A036537).

The programs for A372690, the canonical program `A372690.P6818816879152483449` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372690 has offset 1).

The definition of A372690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372690.P6920988920399229932

`filter[A391397(n+1), A359473(#)]`
-/

namespace A372690.P6920988920399229932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A372690.P6920988920399229932

namespace A372690

/-- `filter[A391397(n+1), A359473(#)]` -/
def P6920988920399229932.Spec : Prop :=
  ∀ n, P6920988920399229932.a n = A372690 (n + 1)

end A372690

/-! ## A372690.P17162763610181195498

`∩[A036537(n+1), A391397(n+1)]`
-/

namespace A372690.P17162763610181195498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372690.P17162763610181195498

namespace A372690

/-- `∩[A036537(n+1), A391397(n+1)]` -/
def P17162763610181195498.Spec : Prop :=
  ∀ n, (P17162763610181195498.a n : ℤ) = A372690 (n + 1)

end A372690

/-! ## A372690.P6818816879152483449

`A036537(record[n/Δ[A036537(n+1)]]+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372690

/-- `A036537(record[n/Δ[A036537(n+1)]]+1)` -/
def P6818816879152483449.Spec : Prop :=
  ∀ n, P6818816879152483449.a n = A372690 (n + 1)

theorem P6818816879152483449.correct : P6818816879152483449.Spec := by
  intro n
  simp only [A372690, Nat.add_sub_cancel]

end A372690

/-! ## A372690.P4625588418104449851

`record[A372379(A372379(n+2)-1)]`
-/

namespace A372690.P4625588418104449851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A372379 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372690.P4625588418104449851

namespace A372690

/-- `record[A372379(A372379(n+2)-1)]` -/
def P4625588418104449851.Spec : Prop :=
  ∀ n, P4625588418104449851.a n = A372690 (n + 1)

end A372690

/-! ## A372690.P13236709097878749470

`record[A372379(n+1)%A372379(n+2)]`
-/

namespace A372690.P13236709097878749470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372379 (n + 1)) (A372379 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372690.P13236709097878749470

namespace A372690

/-- `record[A372379(n+1)%A372379(n+2)]` -/
def P13236709097878749470.Spec : Prop :=
  ∀ n, P13236709097878749470.a n = A372690 (n + 1)

end A372690

/-! ## A372690.P14466712908816170289

`eq[char[A372329(n+1)], A372328(n+1)]`
-/

namespace A372690.P14466712908816170289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372329 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A372690.P14466712908816170289

namespace A372690

/-- `eq[char[A372329(n+1)], A372328(n+1)]` -/
def P14466712908816170289.Spec : Prop :=
  ∀ n, (P14466712908816170289.a n : ℤ) = A372690 (n + 1)

end A372690

/-! ## A372690.P5546312737996118927

`eq[char[A372329(n+1)], A372331(n+1)]`
-/

namespace A372690.P5546312737996118927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372329 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A372690.P5546312737996118927

namespace A372690

/-- `eq[char[A372329(n+1)], A372331(n+1)]` -/
def P5546312737996118927.Spec : Prop :=
  ∀ n, (P5546312737996118927.a n : ℤ) = A372690 (n + 1)

end A372690

/-! ## A372690.P2150635578847882317

`eq[1, A056623((n+1)*(n+2))]+1`
-/

namespace A372690.P2150635578847882317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 ((n + 1) * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372690.P2150635578847882317

namespace A372690

/-- `eq[1, A056623((n+1)*(n+2))]+1` -/
def P2150635578847882317.Spec : Prop :=
  ∀ n, (P2150635578847882317.a n : ℤ) = A372690 (n + 1)

end A372690

/-!
# A372691: Numbers k such that k and k+1 are both nonsquarefree numbers whose number of divisors is a power of 2 (A175496).

The programs for A372691, the canonical program `A372691.P3029882331532059219` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372691 has offset 1).

The definition of A372691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372691.P3029882331532059219

`∩[A175496(n+1)-1, A175496(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372691

/-- `∩[A175496(n+1)-1, A175496(n+1)]` -/
def P3029882331532059219.Spec : Prop :=
  ∀ n, (P3029882331532059219.a n : ℤ) = A372691 (n + 1)

theorem P3029882331532059219.correct : P3029882331532059219.Spec := by
  intro n
  simp only [A372691, Nat.add_sub_cancel]

end A372691

/-!
# A372692: The sum of infinitary divisors of the smallest number k such that k*n is a number whose number of divisors is a power of 2 (A036537).

The programs for A372692, there is no canonical definition to state claims against.
-/

/-! ## A372692.P9330758689793184876

`A049417(A372328(n+1))`
-/

namespace A372692.P9330758689793184876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A372328 (n + 1)).toNat

end

end A372692.P9330758689793184876

/-! ## A372692.P14343712550625569698

`∑{d}[(n+1)/∏{p}[n+1, #], #]%A163903(A340366(2*n+3))`
-/

namespace A372692.P14343712550625569698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) (A163903 (A340366 (2 * n + 3)).toNat)

end

end A372692.P14343712550625569698

/-! ## A372692.P11577391638351037277

`A343939(A056622(n+1)%A093788(n+5))`
-/

namespace A372692.P11577391638351037277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343939 (Int.tmod (A056622 (n + 1)) (A093788 (n + 5))).toNat

end

end A372692.P11577391638351037277

/-! ## A372692.P2010135117405449760

`∑{d}[A010051(A005105(n+2))*A331738(n+1), #]`
-/

namespace A372692.P2010135117405449760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A005105 (n + 2)).toNat * A331738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A372692.P2010135117405449760

/-! ## A372692.P13309232257479524916

`∑{d}[A267927(A121016(3*n+4))*A331738(n+1), #]`
-/

namespace A372692.P13309232257479524916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267927 (A121016 (3 * n + 4)).toNat * A331738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A372692.P13309232257479524916

/-!
# A372695: Cubefull numbers that are not prime powers.

The programs for A372695, there is no canonical definition to state claims against.
-/

/-! ## A372695.P13077528504933987652

`∪[A387255(n+1), A388293(n+1)]`
-/

namespace A372695.P13077528504933987652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P13077528504933987652

/-! ## A372695.P14615788194509802531

`∪[A387255(n+1), A389551(n+1)]`
-/

namespace A372695.P14615788194509802531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P14615788194509802531

/-! ## A372695.P5688311449807019993

`∪[A388304(n+1), A389551(n+1)]`
-/

namespace A372695.P5688311449807019993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P5688311449807019993

/-! ## A372695.P15799203954210753291

`∪[A391755(n+1), A391896(n+1)]`
-/

namespace A372695.P15799203954210753291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P15799203954210753291

/-! ## A372695.P9129510792058934601

`∩[A036966(n+1), A376936(n+1)]`
-/

namespace A372695.P9129510792058934601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P9129510792058934601

/-! ## A372695.P415014634989213060

`∩[A036966(n+1), A372404(n+1)]`
-/

namespace A372695.P415014634989213060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P415014634989213060

/-! ## A372695.P23316441201681472

`∩[A036966(n+1), A286708(n+1)]`
-/

namespace A372695.P23316441201681472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P23316441201681472

/-! ## A372695.P10613226585728807450

`∩[A036966(n+1), A389528(n+1)]`
-/

namespace A372695.P10613226585728807450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P10613226585728807450

/-! ## A372695.P11924595290202971794

`∩[A036966(n+1), A370266(n+1)]`
-/

namespace A372695.P11924595290202971794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P11924595290202971794

/-! ## A372695.P17927430139132259940

`∩[A036966(n+1), A391968(n+1)]`
-/

namespace A372695.P17927430139132259940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P17927430139132259940

/-! ## A372695.P5010202462617601788

`∩[A036785(n+1), A036966(n+1)]`
-/

namespace A372695.P5010202462617601788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372695.P5010202462617601788

/-!
# A372697: Index k such that A280866(k) = A019565(n) or 0 if A019565(n) does not appear in A280866.

The programs for A372697, there is no canonical definition to state claims against.
-/

/-! ## A372697.P16507521133800319507

`A304741(A019565(n))`
-/

namespace A372697.P16507521133800319507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (A019565 n).toNat

end

end A372697.P16507521133800319507

/-! ## A372697.P6125198501110030377

`A304741(A280864(A372514(n)))`
-/

namespace A372697.P6125198501110030377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (A280864 (A372514 n).toNat).toNat

end

end A372697.P6125198501110030377

/-! ## A372697.P221161630757982794

`A372514(n)-A372064(A019565(n))`
-/

namespace A372697.P221161630757982794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372514 n - A372064 (A019565 n).toNat

end

end A372697.P221161630757982794

/-! ## A372697.P8019910402675178025

`A372514(n)-A372064(A339809(n)+1)`
-/

namespace A372697.P8019910402675178025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372514 n - A372064 (A339809 n + 1).toNat

end

end A372697.P8019910402675178025

/-!
# A372698: E.g.f. A(x) satisfies A(A(A(x))) = (-1/3) * log(1 - 3*x).

The programs for A372698, there is no canonical definition to state claims against.
-/

/-! ## A372698.P1325959689691977819

`A356935(2*a(n-1)-C(n-1, 5))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A372698.P1325959689691977819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A356935 (2 * a (n - 1) - (Nat.choose ((n : ℤ) - 1).toNat 5 : ℤ)).toNat

end

end A372698.P1325959689691977819

/-! ## A372698.P3785963552862748200

`or((2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2), A215735(3*n+1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A372698.P3785963552862748200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Int.lor (((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2))) (A215735 (3 * n + 1))

end

end A372698.P3785963552862748200

