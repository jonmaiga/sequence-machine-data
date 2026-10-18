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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

/-!
# A243500: Self-inverse permutation of natural numbers: a(2n) = A003961(A048673(n)), a(2n-1) = 2 * A245448(n).

The programs for A243500, there is no canonical definition to state claims against.
-/

/-! ## A243500.P11890507581991217400

`A389909(A389909(n+1)+A128834(3*n+4))`
-/

namespace A243500.P11890507581991217400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389909 (A389909 (n + 1) + A128834 (3 * n + 4)).toNat

end

end A243500.P11890507581991217400

/-!
# A243501: Permutation of even numbers: a(n) = 2*A048673(n).

The programs for A243501, the canonical program `A243501.P10707292738867961998` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243501 has offset 1).

The definition of A243501 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243501.P510123916383131827

`A003961(n+1)+1`
-/

namespace A243501.P510123916383131827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + 1

end

end A243501.P510123916383131827

namespace A243501

/-- `A003961(n+1)+1` -/
def P510123916383131827.Spec : Prop :=
  ∀ n, P510123916383131827.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P10707292738867961998

`2*A048673(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A243501

/-- `2*A048673(n+1)` -/
def P10707292738867961998.Spec : Prop :=
  ∀ n, P10707292738867961998.a n = A243501 (n + 1)

theorem P10707292738867961998.correct : P10707292738867961998.Spec := by
  intro n
  simp only [A243501, Nat.add_sub_cancel]

end A243501

/-! ## A243501.P15181799526081154890

`A243502(A245447(n+1))`
-/

namespace A243501.P15181799526081154890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243502 (A245447 (n + 1)).toNat

end

end A243501.P15181799526081154890

namespace A243501

/-- `A243502(A245447(n+1))` -/
def P15181799526081154890.Spec : Prop :=
  ∀ n, P15181799526081154890.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P6685060775944537897

`A253885(n)+2`
-/

namespace A243501.P6685060775944537897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + 2

end

end A243501.P6685060775944537897

namespace A243501

/-- `A253885(n)+2` -/
def P6685060775944537897.Spec : Prop :=
  ∀ n, P6685060775944537897.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P15247243147798528306

`sqrt(A379481(n+1))+1`
-/

namespace A243501.P15247243147798528306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379481 (n + 1) : ℝ) + 1

end

end A243501.P15247243147798528306

namespace A243501

/-- `sqrt(A379481(n+1))+1` -/
def P15247243147798528306.Spec : Prop :=
  ∀ n, P15247243147798528306.a n = (A243501 (n + 1) : ℝ)

end A243501

/-! ## A243501.P1972453720373793075

`2*(A108228(n+1)+1)`
-/

namespace A243501.P1972453720373793075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108228 (n + 1) + 1)

end

end A243501.P1972453720373793075

namespace A243501

/-- `2*(A108228(n+1)+1)` -/
def P1972453720373793075.Spec : Prop :=
  ∀ n, P1972453720373793075.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P2837614684950894240

`A249734(n+1)/3+1`
-/

namespace A243501.P2837614684950894240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249734 (n + 1) : ℚ) / 3 + 1

end

end A243501.P2837614684950894240

namespace A243501

/-- `A249734(n+1)/3+1` -/
def P2837614684950894240.Spec : Prop :=
  ∀ n, P2837614684950894240.a n = (A243501 (n + 1) : ℚ)

end A243501

/-! ## A243501.P1053838288572330503

`A336853(n+1)+2+n`
-/

namespace A243501.P1053838288572330503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + 2 + (n : ℤ)

end

end A243501.P1053838288572330503

namespace A243501

/-- `A336853(n+1)+2+n` -/
def P1053838288572330503.Spec : Prop :=
  ∀ n, P1053838288572330503.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P4451145216453281771

`∑{d}[n+1, A003972(#)]+1`
-/

namespace A243501.P4451145216453281771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d + 1

end

end A243501.P4451145216453281771

namespace A243501

/-- `∑{d}[n+1, A003972(#)]+1` -/
def P4451145216453281771.Spec : Prop :=
  ∀ n, P4451145216453281771.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P758172211412999281

`Δ[A252749(n)+(n+1)²]`
-/

namespace A243501.P758172211412999281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243501.P758172211412999281

namespace A243501

/-- `Δ[A252749(n)+(n+1)²]` -/
def P758172211412999281.Spec : Prop :=
  ∀ n, P758172211412999281.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P15587454986365991752

`2*ceil(A045965(n+1)/2)`
-/

namespace A243501.P15587454986365991752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A045965 (n + 1) : ℚ) / 2⌉

end

end A243501.P15587454986365991752

namespace A243501

/-- `2*ceil(A045965(n+1)/2)` -/
def P15587454986365991752.Spec : Prop :=
  ∀ n, P15587454986365991752.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P12437686206189046790

`A191002(n+1)/(n+1)+1`
-/

namespace A243501.P12437686206189046790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191002 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A243501.P12437686206189046790

namespace A243501

/-- `A191002(n+1)/(n+1)+1` -/
def P12437686206189046790.Spec : Prop :=
  ∀ n, P12437686206189046790.a n = (A243501 (n + 1) : ℚ)

end A243501

/-! ## A243501.P5983410910549796861

`2*(A349573(n+1)+n+1)`
-/

namespace A243501.P5983410910549796861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A349573 (n + 1) + (n + 1 : ℤ))

end

end A243501.P5983410910549796861

namespace A243501

/-- `2*(A349573(n+1)+n+1)` -/
def P5983410910549796861.Spec : Prop :=
  ∀ n, P5983410910549796861.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P12704084751656671511

`A252748(n+1)+2*n+3`
-/

namespace A243501.P12704084751656671511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) + (2 * n + 3 : ℤ)

end

end A243501.P12704084751656671511

namespace A243501

/-- `A252748(n+1)+2*n+3` -/
def P12704084751656671511.Spec : Prop :=
  ∀ n, P12704084751656671511.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P255083958199366923

`A057427(n)+A045965(n+1)`
-/

namespace A243501.P255083958199366923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A045965 (n + 1)

end

end A243501.P255083958199366923

namespace A243501

/-- `A057427(n)+A045965(n+1)` -/
def P255083958199366923.Spec : Prop :=
  ∀ n, P255083958199366923.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P15544133529603182705

`A045965(n+1)-A057428(n)`
-/

namespace A243501.P15544133529603182705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) - A057428 n

end

end A243501.P15544133529603182705

namespace A243501

/-- `A045965(n+1)-A057428(n)` -/
def P15544133529603182705.Spec : Prop :=
  ∀ n, P15544133529603182705.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P11681601883990409268

`A286385(n+1)+A088580(n+1)`
-/

namespace A243501.P11681601883990409268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) + A088580 (n + 1)

end

end A243501.P11681601883990409268

namespace A243501

/-- `A286385(n+1)+A088580(n+1)` -/
def P11681601883990409268.Spec : Prop :=
  ∀ n, P11681601883990409268.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P9781187438718714211

`A280692(n+1)+A269360(n+1)`
-/

namespace A243501.P9781187438718714211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280692 (n + 1) + A269360 (n + 1)

end

end A243501.P9781187438718714211

namespace A243501

/-- `A280692(n+1)+A269360(n+1)` -/
def P9781187438718714211.Spec : Prop :=
  ∀ n, P9781187438718714211.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P4018754480212697808

`A000203(n+1)+A286385(n+1)+1`
-/

namespace A243501.P4018754480212697808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A286385 (n + 1) + 1)

end

end A243501.P4018754480212697808

namespace A243501

/-- `A000203(n+1)+A286385(n+1)+1` -/
def P4018754480212697808.Spec : Prop :=
  ∀ n, P4018754480212697808.a n = A243501 (n + 1)

end A243501

/-! ## A243501.P16124170588941935090

`A336845(n+1)/A000005(n+1)+1`
-/

namespace A243501.P16124170588941935090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) + 1

end

end A243501.P16124170588941935090

namespace A243501

/-- `A336845(n+1)/A000005(n+1)+1` -/
def P16124170588941935090.Spec : Prop :=
  ∀ n, P16124170588941935090.a n = (A243501 (n + 1) : ℚ)

end A243501

/-!
# A243502: Permutation of even numbers: a(n) = 2 * A064216(n).

The programs for A243502, the canonical program `A243502.P11791647281875328885` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243502 has offset 1).

The definition of A243502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243502.P11791647281875328885

`2*A064216(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A243502

/-- `2*A064216(n+1)` -/
def P11791647281875328885.Spec : Prop :=
  ∀ n, P11791647281875328885.a n = A243502 (n + 1)

theorem P11791647281875328885.correct : P11791647281875328885.Spec := by
  intro n
  simp only [A243502, Nat.add_sub_cancel]

end A243502

/-! ## A243502.P17720475883663144190

`A005843(A064216(n+1))`
-/

namespace A243502.P17720475883663144190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A064216 (n + 1)).toNat

end

end A243502.P17720475883663144190

namespace A243502

/-- `A005843(A064216(n+1))` -/
def P17720475883663144190.Spec : Prop :=
  ∀ n, P17720475883663144190.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P7304024192229049039

`A243501(A245448(n+1))`
-/

namespace A243502.P7304024192229049039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (A245448 (n + 1)).toNat

end

end A243502.P7304024192229049039

namespace A243502

/-- `A243501(A245448(n+1))` -/
def P7304024192229049039.Spec : Prop :=
  ∀ n, P7304024192229049039.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P4652116266273251843

`2*A349122(Δ[n²])`
-/

namespace A243502.P4652116266273251843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349122 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A243502.P4652116266273251843

namespace A243502

/-- `2*A349122(Δ[n²])` -/
def P4652116266273251843.Spec : Prop :=
  ∀ n, P4652116266273251843.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P12851478796458981185

`2*(A349359(n+1)-A349358(n+1))`
-/

namespace A243502.P12851478796458981185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A349359 (n + 1) - A349358 (n + 1))

end

end A243502.P12851478796458981185

namespace A243502

/-- `2*(A349359(n+1)-A349358(n+1))` -/
def P12851478796458981185.Spec : Prop :=
  ∀ n, P12851478796458981185.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P10861633989148457137

`2*xor(A292244(n+1), A292245(n+1))`
-/

namespace A243502.P10861633989148457137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A292244 (n + 1)) (A292245 (n + 1))

end

end A243502.P10861633989148457137

namespace A243502

/-- `2*xor(A292244(n+1), A292245(n+1))` -/
def P10861633989148457137.Spec : Prop :=
  ∀ n, P10861633989148457137.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P17800079826420789923

`∑{d}[n+1, A243501(#)*A349397((n+1)/#)]`
-/

namespace A243502.P17800079826420789923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A243501 d * A349397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A243502.P17800079826420789923

namespace A243502

/-- `∑{d}[n+1, A243501(#)*A349397((n+1)/#)]` -/
def P17800079826420789923.Spec : Prop :=
  ∀ n, P17800079826420789923.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P17666834567418126518

`A064216(A000027(n+1))+A064216(n+1)`
-/

namespace A243502.P17666834567418126518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A000027 (n + 1)).toNat + A064216 (n + 1)

end

end A243502.P17666834567418126518

namespace A243502

/-- `A064216(A000027(n+1))+A064216(n+1)` -/
def P17666834567418126518.Spec : Prop :=
  ∀ n, P17666834567418126518.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P18062266988109639395

`2*A290099(Δ[n²])`
-/

namespace A243502.P18062266988109639395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A243502.P18062266988109639395

namespace A243502

/-- `2*A290099(Δ[n²])` -/
def P18062266988109639395.Spec : Prop :=
  ∀ n, P18062266988109639395.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P14302566050811373221

`2*(A000010(2*n+1)-A353748(2*n+1))`
-/

namespace A243502.P14302566050811373221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000010 (2 * n + 1) - A353748 (2 * n + 1))

end

end A243502.P14302566050811373221

namespace A243502

/-- `2*(A000010(2*n+1)-A353748(2*n+1))` -/
def P14302566050811373221.Spec : Prop :=
  ∀ n, P14302566050811373221.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P13376365897882957431

`2*(A353747(2*n+1)-A000010(2*n+1))`
-/

namespace A243502.P13376365897882957431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A353747 (2 * n + 1) - A000010 (2 * n + 1))

end

end A243502.P13376365897882957431

namespace A243502

/-- `2*(A353747(2*n+1)-A000010(2*n+1))` -/
def P13376365897882957431.Spec : Prop :=
  ∀ n, P13376365897882957431.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P16522865127786544793

`2/A000010(2*n+1)*A353749(2*n+1)`
-/

namespace A243502.P16522865127786544793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000010 (2 * n + 1) : ℚ) * (A353749 (2 * n + 1) : ℚ)

end

end A243502.P16522865127786544793

namespace A243502

/-- `2/A000010(2*n+1)*A353749(2*n+1)` -/
def P16522865127786544793.Spec : Prop :=
  ∀ n, P16522865127786544793.a n = (A243502 (n + 1) : ℚ)

end A243502

/-! ## A243502.P17046080857755222142

`A297165(Δ[n²])`
-/

namespace A243502.P17046080857755222142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297165 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A243502.P17046080857755222142

namespace A243502

/-- `A297165(Δ[n²])` -/
def P17046080857755222142.Spec : Prop :=
  ∀ n, P17046080857755222142.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P17986171907552782137

`A389909(Δ[n²])`
-/

namespace A243502.P17986171907552782137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A243502.P17986171907552782137

namespace A243502

/-- `A389909(Δ[n²])` -/
def P17986171907552782137.Spec : Prop :=
  ∀ n, P17986171907552782137.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P10364624640649655870

`A266645(2*(n+1))`
-/

namespace A243502.P10364624640649655870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (2 * (n + 1))

end

end A243502.P10364624640649655870

namespace A243502

/-- `A266645(2*(n+1))` -/
def P10364624640649655870.Spec : Prop :=
  ∀ n, P10364624640649655870.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P14169419072099713325

`A349122(4*n+2)`
-/

namespace A243502.P14169419072099713325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (4 * n + 2)

end

end A243502.P14169419072099713325

namespace A243502

/-- `A349122(4*n+2)` -/
def P14169419072099713325.Spec : Prop :=
  ∀ n, P14169419072099713325.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P16777868673012855355

`2*A064989(Δ[n²])`
-/

namespace A243502.P16777868673012855355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A243502.P16777868673012855355

namespace A243502

/-- `2*A064989(Δ[n²])` -/
def P16777868673012855355.Spec : Prop :=
  ∀ n, P16777868673012855355.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P11431158619042575451

`2*A252463(Δ[n²])`
-/

namespace A243502.P11431158619042575451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A243502.P11431158619042575451

namespace A243502

/-- `2*A252463(Δ[n²])` -/
def P11431158619042575451.Spec : Prop :=
  ∀ n, P11431158619042575451.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P3026732168938269460

`2*A341515(Δ[n²])`
-/

namespace A243502.P3026732168938269460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A243502.P3026732168938269460

namespace A243502

/-- `2*A341515(Δ[n²])` -/
def P3026732168938269460.Spec : Prop :=
  ∀ n, P3026732168938269460.a n = A243502 (n + 1)

end A243502

/-! ## A243502.P10316235427166506846

`2*A341516(Δ[n²])`
-/

namespace A243502.P10316235427166506846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341516 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A243502.P10316235427166506846

namespace A243502

/-- `2*A341516(Δ[n²])` -/
def P10316235427166506846.Spec : Prop :=
  ∀ n, P10316235427166506846.a n = A243502 (n + 1)

end A243502

/-!
# A243503: Sums of parts of partitions (i.e., their sizes) as ordered in the table A241918: a(n) = Sum_{i=A203623(n-1)+2..A203623(n)+1} A241918(i).

The programs for A243503, the canonical program `A243503.P9519470461665650615` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243503 has offset 1).

The definition of A243503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A326844, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243503.P9519470461665650615

`A326844(2*(n+1))+A001222(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A243503

/-- `A326844(2*(n+1))+A001222(n+1)` -/
def P9519470461665650615.Spec : Prop :=
  ∀ n, P9519470461665650615.a n = A243503 (n + 1)

theorem P9519470461665650615.correct : P9519470461665650615.Spec := by
  intro n
  simp only [A243503, Nat.add_sub_cancel]

end A243503

/-! ## A243503.P12401674740515636119

`A227183(A075158(n))`
-/

namespace A243503.P12401674740515636119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A075158 n).toNat

end

end A243503.P12401674740515636119

namespace A243503

/-- `A227183(A075158(n))` -/
def P12401674740515636119.Spec : Prop :=
  ∀ n, P12401674740515636119.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P12277840040178192168

`A056239(A241909(n+1))`
-/

namespace A243503.P12277840040178192168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A241909 (n + 1)).toNat

end

end A243503.P12277840040178192168

namespace A243503

/-- `A056239(A241909(n+1))` -/
def P12277840040178192168.Spec : Prop :=
  ∀ n, P12277840040178192168.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P8742723145442429215

`A278520(n+1)+A056239(n+1)`
-/

namespace A243503.P8742723145442429215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278520 (n + 1) + A056239 (n + 1)

end

end A243503.P8742723145442429215

namespace A243503

/-- `A278520(n+1)+A056239(n+1)` -/
def P8742723145442429215.Spec : Prop :=
  ∀ n, P8742723145442429215.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P4167181013320682538

`A326844(n+1)+A252464(n+1)`
-/

namespace A243503.P4167181013320682538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (n + 1) + A252464 (n + 1)

end

end A243503.P4167181013320682538

namespace A243503

/-- `A326844(n+1)+A252464(n+1)` -/
def P4167181013320682538.Spec : Prop :=
  ∀ n, P4167181013320682538.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P10323962223412202071

`A326846(n+1)-A325135(n+1)`
-/

namespace A243503.P10323962223412202071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (n + 1) - A325135 (n + 1)

end

end A243503.P10323962223412202071

namespace A243503

/-- `A326846(n+1)-A325135(n+1)` -/
def P10323962223412202071.Spec : Prop :=
  ∀ n, P10323962223412202071.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P10688421327292591150

`A304739(A064664(n+1))+A278520(n+1)`
-/

namespace A243503.P10688421327292591150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat + A278520 (n + 1)

end

end A243503.P10688421327292591150

namespace A243503

/-- `A304739(A064664(n+1))+A278520(n+1)` -/
def P10688421327292591150.Spec : Prop :=
  ∀ n, P10688421327292591150.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P341927109273602666

`A001222(n+1)*A061395(n+1)-A325135(n+1)`
-/

namespace A243503.P341927109273602666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A061395 (n + 1) - A325135 (n + 1)

end

end A243503.P341927109273602666

namespace A243503

/-- `A001222(n+1)*A061395(n+1)-A325135(n+1)` -/
def P341927109273602666.Spec : Prop :=
  ∀ n, P341927109273602666.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P18188442741798562051

`A278520(n+1)+log2(A248692(n+1))`
-/

namespace A243503.P18188442741798562051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A278520 (n + 1) : ℝ) + Real.logb 2 (A248692 (n + 1) : ℝ)

end

end A243503.P18188442741798562051

namespace A243503

/-- `A278520(n+1)+log2(A248692(n+1))` -/
def P18188442741798562051.Spec : Prop :=
  ∀ n, P18188442741798562051.a n = (A243503 (n + 1) : ℝ)

end A243503

/-! ## A243503.P15367512574710631535

`A318995(A003961(n+1))+A278520(n+1)`
-/

namespace A243503.P15367512574710631535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003961 (n + 1)).toNat + A278520 (n + 1)

end

end A243503.P15367512574710631535

namespace A243503

/-- `A318995(A003961(n+1))+A278520(n+1)` -/
def P15367512574710631535.Spec : Prop :=
  ∀ n, P15367512574710631535.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P9093160234329512091

`A318995(A045965(n+1))+A278520(n+1)`
-/

namespace A243503.P9093160234329512091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A045965 (n + 1)).toNat + A278520 (n + 1)

end

end A243503.P9093160234329512091

namespace A243503

/-- `A318995(A045965(n+1))+A278520(n+1)` -/
def P9093160234329512091.Spec : Prop :=
  ∀ n, P9093160234329512091.a n = A243503 (n + 1)

end A243503

/-! ## A243503.P18338201171473946569

`A025581(abs(2-A286456(n+1)))`
-/

namespace A243503.P18338201171473946569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 |2 - A286456 (n + 1)|.toNat

end

end A243503.P18338201171473946569

namespace A243503

/-- `A025581(abs(2-A286456(n+1)))` -/
def P18338201171473946569.Spec : Prop :=
  ∀ n, P18338201171473946569.a n = A243503 (n + 1)

end A243503

/-!
# A243504: Product of parts of integer partitions as ordered by the table A241918: a(n) = Product_{i=A203623(n-1)+2..A203623(n)+1} A241918(i).

The programs for A243504, there is no canonical definition to state claims against.
-/

/-! ## A243504.P12362265916868371147

`A227184(A075158(n))`
-/

namespace A243504.P12362265916868371147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227184 (A075158 n).toNat

end

end A243504.P12362265916868371147

/-! ## A243504.P1971812528618210326

`A003963(A241909(n+1))`
-/

namespace A243504.P1971812528618210326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A241909 (n + 1)).toNat

end

end A243504.P1971812528618210326

/-! ## A243504.P377426089946539200

`A329382(A241916(n+1))`
-/

namespace A243504.P377426089946539200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A241916 (n + 1)).toNat

end

end A243504.P377426089946539200

/-! ## A243504.P13307262153577763110

`A329605(A358195(n+1))`
-/

namespace A243504.P13307262153577763110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329605 (A358195 (n + 1)).toNat

end

end A243504.P13307262153577763110

/-! ## A243504.P3221428810928569378

`A003963(A331732(n+1))`
-/

namespace A243504.P3221428810928569378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A331732 (n + 1)).toNat

end

end A243504.P3221428810928569378

/-!
# A243505: Permutation of natural numbers, take the odd bisection of A122111 and divide the largest prime factor out: a(n) = A052126(A122111(2n-1)).

The programs for A243505, the canonical program `A243505.P5622289251069024959` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243505 has offset 1).

The definition of A243505 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243505.P3393883517100630896

`A122111(A064216(n+1))`
-/

namespace A243505.P3393883517100630896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A064216 (n + 1)).toNat

end

end A243505.P3393883517100630896

namespace A243505

/-- `A122111(A064216(n+1))` -/
def P3393883517100630896.Spec : Prop :=
  ∀ n, P3393883517100630896.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P12037864056784982427

`A122111(2*(n+1)-1)/A105560(2*(n+1)-1)`
-/

namespace A243505.P12037864056784982427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (2 * (n + 1) - 1) : ℚ) / (A105560 (2 * (n + 1) - 1) : ℚ)

end

end A243505.P12037864056784982427

namespace A243505

/-- `A122111(2*(n+1)-1)/A105560(2*(n+1)-1)` -/
def P12037864056784982427.Spec : Prop :=
  ∀ n, P12037864056784982427.a n = (A243505 (n + 1) : ℚ)

end A243505

/-! ## A243505.P7427617641423035918

`A241916(A243065(n+1))`
-/

namespace A243505.P7427617641423035918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A243065 (n + 1)).toNat

end

end A243505.P7427617641423035918

namespace A243505

/-- `A241916(A243065(n+1))` -/
def P7427617641423035918.Spec : Prop :=
  ∀ n, P7427617641423035918.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P5622289251069024959

`A052126(A122111(2*(n+1)-1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A243505

/-- `A052126(A122111(2*(n+1)-1))` -/
def P5622289251069024959.Spec : Prop :=
  ∀ n, P5622289251069024959.a n = A243505 (n + 1)

theorem P5622289251069024959.correct : P5622289251069024959.Spec := by
  intro n
  simp only [A243505, Nat.add_sub_cancel]

end A243505

/-! ## A243505.P4834513669013080729

`A122111(A064989(2*n+1))`
-/

namespace A243505.P4834513669013080729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A064989 (2 * n + 1)).toNat

end

end A243505.P4834513669013080729

namespace A243505

/-- `A122111(A064989(2*n+1))` -/
def P4834513669013080729.Spec : Prop :=
  ∀ n, P4834513669013080729.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P12505525478559806939

`A122111(A252463(2*n+1))`
-/

namespace A243505.P12505525478559806939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A252463 (2 * n + 1)).toNat

end

end A243505.P12505525478559806939

namespace A243505

/-- `A122111(A252463(2*n+1))` -/
def P12505525478559806939.Spec : Prop :=
  ∀ n, P12505525478559806939.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P8784815587208021924

`A122111(A341516(2*n+1))`
-/

namespace A243505.P8784815587208021924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A341516 (2 * n + 1)).toNat

end

end A243505.P8784815587208021924

namespace A243505

/-- `A122111(A341516(2*n+1))` -/
def P8784815587208021924.Spec : Prop :=
  ∀ n, P8784815587208021924.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P17695205973747151102

`A122111(A243502(n+1)/2)`
-/

namespace A243505.P17695205973747151102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A243505.P17695205973747151102

namespace A243505

/-- `A122111(A243502(n+1)/2)` -/
def P17695205973747151102.Spec : Prop :=
  ∀ n, P17695205973747151102.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P6736473295791968147

`∑{d}[A064989(2*n+1), A329034(#)]`
-/

namespace A243505.P6736473295791968147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A243505.P6736473295791968147

namespace A243505

/-- `∑{d}[A064989(2*n+1), A329034(#)]` -/
def P6736473295791968147.Spec : Prop :=
  ∀ n, P6736473295791968147.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P6477866130004808249

`A122111(2*n+1)/A122111(A061142(2*n+1))`
-/

namespace A243505.P6477866130004808249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (2 * n + 1) : ℚ) / (A122111 (A061142 (2 * n + 1)).toNat : ℚ)

end

end A243505.P6477866130004808249

namespace A243505

/-- `A122111(2*n+1)/A122111(A061142(2*n+1))` -/
def P6477866130004808249.Spec : Prop :=
  ∀ n, P6477866130004808249.a n = (A243505 (n + 1) : ℚ)

end A243505

/-! ## A243505.P8290692271907313055

`gcd(A181821(2*n+1)/A086568(2*n+1), A122111(2*n+1))`
-/

namespace A243505.P8290692271907313055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A181821 (2 * n + 1) : ℚ) / (A086568 (2 * n + 1) : ℚ))) (A122111 (2 * n + 1))

end

end A243505.P8290692271907313055

namespace A243505

/-- `gcd(A181821(2*n+1)/A086568(2*n+1), A122111(2*n+1))` -/
def P8290692271907313055.Spec : Prop :=
  ∀ n, (P8290692271907313055.a n : ℤ) = A243505 (n + 1)

end A243505

/-! ## A243505.P5365854860597679153

`A122111(A245448(A048673(n+1)))`
-/

namespace A243505.P5365854860597679153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A245448 (A048673 (n + 1)).toNat).toNat

end

end A243505.P5365854860597679153

namespace A243505

/-- `A122111(A245448(A048673(n+1)))` -/
def P5365854860597679153.Spec : Prop :=
  ∀ n, P5365854860597679153.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P9502041530226375040

`gcd(A122111(2*n+1), A253568(2*n+1))`
-/

namespace A243505.P9502041530226375040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122111 (2 * n + 1)) (A253568 (2 * n + 1))

end

end A243505.P9502041530226375040

namespace A243505

/-- `gcd(A122111(2*n+1), A253568(2*n+1))` -/
def P9502041530226375040.Spec : Prop :=
  ∀ n, (P9502041530226375040.a n : ℤ) = A243505 (n + 1)

end A243505

/-! ## A243505.P1353023783390401671

`A279352(A250470(2*(2*n+1)))`
-/

namespace A243505.P1353023783390401671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A250470 (2 * (2 * n + 1))).toNat

end

end A243505.P1353023783390401671

namespace A243505

/-- `A279352(A250470(2*(2*n+1)))` -/
def P1353023783390401671.Spec : Prop :=
  ∀ n, P1353023783390401671.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P10368284184451972795

`A279352(A266646(A064989(A249817(2*n+1))))`
-/

namespace A243505.P10368284184451972795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A266646 (A064989 (A249817 (2 * n + 1)).toNat).toNat).toNat

end

end A243505.P10368284184451972795

namespace A243505

/-- `A279352(A266646(A064989(A249817(2*n+1))))` -/
def P10368284184451972795.Spec : Prop :=
  ∀ n, P10368284184451972795.a n = A243505 (n + 1)

end A243505

/-! ## A243505.P5103682498061594341

`A122111(2*n+1)²/A122111(A003961(2*n+1))`
-/

namespace A243505.P5103682498061594341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (2 * n + 1) ^ 2 : ℚ) / (A122111 (A003961 (2 * n + 1)).toNat : ℚ)

end

end A243505.P5103682498061594341

namespace A243505

/-- `A122111(2*n+1)²/A122111(A003961(2*n+1))` -/
def P5103682498061594341.Spec : Prop :=
  ∀ n, P5103682498061594341.a n = (A243505 (n + 1) : ℚ)

end A243505

/-!
# A243506: Permutation of natural numbers: a(n) = A048673(A122111(n)).

The programs for A243506, the canonical program `A243506.P4471214084631282160` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243506 has offset 1).

The definition of A243506 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243506.P4471214084631282160

`A048673(A122111(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A243506

/-- `A048673(A122111(n+1))` -/
def P4471214084631282160.Spec : Prop :=
  ∀ n, P4471214084631282160.a n = A243506 (n + 1)

theorem P4471214084631282160.correct : P4471214084631282160.Spec := by
  intro n
  simp only [A243506, Nat.add_sub_cancel]

end A243506

/-! ## A243506.P4875838165291013410

`A243066(A241916(n+1))`
-/

namespace A243506.P4875838165291013410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243066 (A241916 (n + 1)).toNat

end

end A243506.P4875838165291013410

namespace A243506

/-- `A243066(A241916(n+1))` -/
def P4875838165291013410.Spec : Prop :=
  ∀ n, P4875838165291013410.a n = A243506 (n + 1)

end A243506

/-! ## A243506.P11832603098259014826

`A341351(A361808(n+1))`
-/

namespace A243506.P11832603098259014826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341351 (A361808 (n + 1)).toNat

end

end A243506.P11832603098259014826

namespace A243506

/-- `A341351(A361808(n+1))` -/
def P11832603098259014826.Spec : Prop :=
  ∀ n, P11832603098259014826.a n = A243506 (n + 1)

end A243506

/-! ## A243506.P3387276023960154149

`ceil(A322865(A253560(n+1))/2)`
-/

namespace A243506.P3387276023960154149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322865 (A253560 (n + 1)).toNat : ℚ) / 2⌉

end

end A243506.P3387276023960154149

namespace A243506

/-- `ceil(A322865(A253560(n+1))/2)` -/
def P3387276023960154149.Spec : Prop :=
  ∀ n, P3387276023960154149.a n = A243506 (n + 1)

end A243506

/-! ## A243506.P7470279574056160189

`(A322865(A129598(n+1))+1)/2`
-/

namespace A243506.P7470279574056160189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322865 (A129598 (n + 1)).toNat + 1 : ℚ) / 2

end

end A243506.P7470279574056160189

namespace A243506

/-- `(A322865(A129598(n+1))+1)/2` -/
def P7470279574056160189.Spec : Prop :=
  ∀ n, P7470279574056160189.a n = (A243506 (n + 1) : ℚ)

end A243506

/-! ## A243506.P4193141634673691166

`(A322865(A253560(Δ[n²]-n))+1)/2`
-/

namespace A243506.P4193141634673691166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322865 (A253560 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1 : ℚ) / 2

end

end A243506.P4193141634673691166

namespace A243506

/-- `(A322865(A253560(Δ[n²]-n))+1)/2` -/
def P4193141634673691166.Spec : Prop :=
  ∀ n, P4193141634673691166.a n = (A243506 (n + 1) : ℚ)

end A243506

/-! ## A243506.P15344408207412267803

`(A322865((n+1)*A006530(n+1))+1)/2`
-/

namespace A243506.P15344408207412267803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322865 ((n + 1 : ℤ) * A006530 (n + 1)).toNat + 1 : ℚ) / 2

end

end A243506.P15344408207412267803

namespace A243506

/-- `(A322865((n+1)*A006530(n+1))+1)/2` -/
def P15344408207412267803.Spec : Prop :=
  ∀ n, P15344408207412267803.a n = (A243506 (n + 1) : ℚ)

end A243506

/-! ## A243506.P14596871918261328289

`(A322865((n+1)^3/A342768(n+1))+1)/2`
-/

namespace A243506.P14596871918261328289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322865 (SequenceMachineLib.roundAway (((n + 1) ^ 3 : ℚ) / (A342768 (n + 1) : ℚ))).toNat + 1 : ℚ) / 2

end

end A243506.P14596871918261328289

namespace A243506

/-- `(A322865((n+1)^3/A342768(n+1))+1)/2` -/
def P14596871918261328289.Spec : Prop :=
  ∀ n, P14596871918261328289.a n = (A243506 (n + 1) : ℚ)

end A243506

/-! ## A243506.P11396999662735235607

`A322865(A253560(n+1))/2+Δ[n²]/A016825(n)`
-/

namespace A243506.P11396999662735235607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322865 (A253560 (n + 1)).toNat : ℚ) / 2 + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A016825 n : ℚ)

end

end A243506.P11396999662735235607

namespace A243506

/-- `A322865(A253560(n+1))/2+Δ[n²]/A016825(n)` -/
def P11396999662735235607.Spec : Prop :=
  ∀ n, P11396999662735235607.a n = (A243506 (n + 1) : ℚ)

end A243506

/-! ## A243506.P3877527029299273530

`ceil(A322865(A119416(n+1))/2)`
-/

namespace A243506.P3877527029299273530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322865 (A119416 (n + 1)).toNat : ℚ) / 2⌉

end

end A243506.P3877527029299273530

namespace A243506

/-- `ceil(A322865(A119416(n+1))/2)` -/
def P3877527029299273530.Spec : Prop :=
  ∀ n, P3877527029299273530.a n = A243506 (n + 1)

end A243506

/-!
# A243507: Consider a decimal number, n, with k digits. n = d(k)*10^(k-1) + d(k-1)*10^(k-2) + … + d(2)*10 + d_(1). Sequence lists the numbers n that divide s = Sum_{i=1..k} d(i)^d(i).

The programs for A243507, there is no canonical definition to state claims against.
-/

/-! ## A243507.P17804248058092916148

`eq[n, gcd(n, A045503(n))]`
-/

namespace A243507.P17804248058092916148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A045503 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243507.P17804248058092916148

/-! ## A243507.P17296514128831852725

`eq[lcm(n, A108302(n)), A108302(n)]`
-/

namespace A243507.P17296514128831852725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A108302 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243507.P17296514128831852725

/-! ## A243507.P5724573474447125970

`eq[A045503(n)%A028310(n), A000007(n)]`
-/

namespace A243507.P5724573474447125970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045503 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243507.P5724573474447125970

/-! ## A243507.P18369296448176965578

`∑[54^A058348(3*n+1)]`
-/

namespace A243507.P18369296448176965578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (54 : ℚ) ^ (A058348 (3 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243507.P18369296448176965578

/-! ## A243507.P3505234989318045723

`∑[A113143(A151762(n))]`
-/

namespace A243507.P3505234989318045723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (A151762 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243507.P3505234989318045723

/-!
# A243510: Number of ways the maximal number of domicules can be placed on an n X n square.

The programs for A243510, there is no canonical definition to state claims against.
-/

/-! ## A243510.P15111353791791257710

`A243424(eq[1, A243424(n+1)])`
-/

namespace A243510.P15111353791791257710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243510.P15111353791791257710

/-! ## A243510.P5247970156136175676

`A243424(lt[A243424(n+1), 2])`
-/

namespace A243510.P5247970156136175676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A243510.P5247970156136175676

/-!
# A243511: Number of ways half the maximal number of domicules can be placed on an n X n square.

The programs for A243511, there is no canonical definition to state claims against.
-/

/-! ## A243511.P12719909917493944053

`A243424(C(n+1, 3)+n)`
-/

namespace A243511.P12719909917493944053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (Nat.choose (n + 1) 3 + n)

end

end A243511.P12719909917493944053

/-! ## A243511.P16917308838864799079

`A243424(A004006(n))`
-/

namespace A243511.P16917308838864799079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (A004006 n).toNat

end

end A243511.P16917308838864799079

/-! ## A243511.P7876128913782700576

`A243424(A000125(n)-1)`
-/

namespace A243511.P7876128913782700576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (A000125 n - 1).toNat

end

end A243511.P7876128913782700576

/-! ## A243511.P6118346330011562140

`A243424(∑[A152947(n+1)]-1)`
-/

namespace A243511.P6118346330011562140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A243511.P6118346330011562140

/-! ## A243511.P14076415581067079662

`A243424(∑[A000124(n)]-A000124(n))`
-/

namespace A243511.P14076415581067079662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243424 (∑ j ∈ Finset.range (n + 1), f1 j - A000124 n).toNat

end

end A243511.P14076415581067079662

/-!
# A243513: Number of length n+2 0..4 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..4 introduced in 0..4 order.

The programs for A243513, the canonical program `A243513.P12110686591920086551` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243513 has offset 1).

The definition of A243513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243513.P12110686591920086551

`(7+3^(n+1)+2*(n+1))/4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243513

/-- `(7+3^(n+1)+2*(n+1))/4` -/
def P12110686591920086551.Spec : Prop :=
  ∀ n, P12110686591920086551.a n = (A243513 (n + 1) : ℚ)

end A243513

/-! ## A243513.P18109000410806197889

`∑[ogf((3-10x+6x^2)/(1-4x+3x^2))]`
-/

namespace A243513.P18109000410806197889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 6] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243513.P18109000410806197889

namespace A243513

/-- `∑[ogf((3-10x+6x^2)/(1-4x+3x^2))]` -/
def P18109000410806197889.Spec : Prop :=
  ∀ n, P18109000410806197889.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P17678414962657819682

`ogf((3-10x+6x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A243513.P17678414962657819682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 6] [1, -5, 7, -3] n

end

end A243513.P17678414962657819682

namespace A243513

/-- `ogf((3-10x+6x^2)/(1-5x+7x^2-3x^3))` -/
def P17678414962657819682.Spec : Prop :=
  ∀ n, P17678414962657819682.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P2967845946883123051

`∑[lcm(3, a(n-1))-1]` with `a(0)=3`
-/

namespace A243513.P2967845946883123051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (Int.lcm 3 (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243513.P2967845946883123051

namespace A243513

/-- `∑[lcm(3, a(n-1))-1]` -/
def P2967845946883123051.Spec : Prop :=
  ∀ n, P2967845946883123051.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P14923441448359501361

`∑[3*a(n-1)-1]` with `a(0)=3, a(1)=2`
-/

namespace A243513.P14923441448359501361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  3 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243513.P14923441448359501361

namespace A243513

/-- `∑[3*a(n-1)-1]` -/
def P14923441448359501361.Spec : Prop :=
  ∀ n, P14923441448359501361.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P17118438957697109925

`record[3*a(n-1)-n]` with `a(0)=3, a(1)=5, a(2)=2`
-/

namespace A243513.P17118438957697109925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 2] fun n f1 =>
  3 * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243513.P17118438957697109925

namespace A243513

/-- `record[3*a(n-1)-n]` -/
def P17118438957697109925.Spec : Prop :=
  ∀ n, P17118438957697109925.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P13075312961527139161

`abs(3*(a(n-1)-1)-n)` with `a(0)=3`
-/

namespace A243513.P13075312961527139161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |3 * (a (n - 1) - 1) - (n : ℤ)|

end

end A243513.P13075312961527139161

namespace A243513

/-- `abs(3*(a(n-1)-1)-n)` -/
def P13075312961527139161.Spec : Prop :=
  ∀ n, P13075312961527139161.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P17603347300266428870

`floor(3*(a(n-1)-1)-n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A243513.P17603347300266428870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * (a (n - 1) - 1) - (n : ℤ)

end

end A243513.P17603347300266428870

namespace A243513

/-- `floor(3*(a(n-1)-1)-n)` -/
def P17603347300266428870.Spec : Prop :=
  ∀ n, P17603347300266428870.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P1115956200910926033

`ceil(3*a(n-1)-(n+3))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A243513.P1115956200910926033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - (n + 3 : ℤ)

end

end A243513.P1115956200910926033

namespace A243513

/-- `ceil(3*a(n-1)-(n+3))` -/
def P1115956200910926033.Spec : Prop :=
  ∀ n, P1115956200910926033.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P996201906022002656

`3*(a(n-1)-(n/3+1))` with `a(0)=3`
-/

namespace A243513.P996201906022002656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  3 * (a (n - 1) - ((n : ℚ) / 3 + 1))

end

end A243513.P996201906022002656

namespace A243513

/-- `3*(a(n-1)-(n/3+1))` -/
def P996201906022002656.Spec : Prop :=
  ∀ n, P996201906022002656.a n = (A243513 (n + 1) : ℚ)

end A243513

/-! ## A243513.P10860783395654579144

`3*(a(n-1)-1-n/3)` with `a(0)=3`
-/

namespace A243513.P10860783395654579144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  3 * (a (n - 1) - 1 - (n : ℚ) / 3)

end

end A243513.P10860783395654579144

namespace A243513

/-- `3*(a(n-1)-1-n/3)` -/
def P10860783395654579144.Spec : Prop :=
  ∀ n, P10860783395654579144.a n = (A243513 (n + 1) : ℚ)

end A243513

/-! ## A243513.P12057839233148295987

`∑[a(n-1)+3^(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A243513.P12057839233148295987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243513.P12057839233148295987

namespace A243513

/-- `∑[a(n-1)+3^(n-1)]` -/
def P12057839233148295987.Spec : Prop :=
  ∀ n, P12057839233148295987.a n = (A243513 (n + 1) : ℚ)

end A243513

/-! ## A243513.P11988918584377447943

`floor(a(n-1)+a(n-1)+a(n-1)-(n+3))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A243513.P11988918584377447943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (n + 3 : ℤ)))

end

end A243513.P11988918584377447943

namespace A243513

/-- `floor(a(n-1)+a(n-1)+a(n-1)-(n+3))` -/
def P11988918584377447943.Spec : Prop :=
  ∀ n, P11988918584377447943.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P15650453090104132989

`floor(a(n-1)-(3-(a(n-1)-(n-a(n-1)))))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A243513.P15650453090104132989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (3 - (a (n - 1) - ((n : ℤ) - a (n - 1))))

end

end A243513.P15650453090104132989

namespace A243513

/-- `floor(a(n-1)-(3-(a(n-1)-(n-a(n-1)))))` -/
def P15650453090104132989.Spec : Prop :=
  ∀ n, P15650453090104132989.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P14310248727312200431

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=5, a(2)=10`
-/

namespace A243513.P14310248727312200431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 10] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 3 * a (n - 3)

end

end A243513.P14310248727312200431

namespace A243513

/-- `5*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P14310248727312200431.Spec : Prop :=
  ∀ n, P14310248727312200431.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P7222403757877029422

`∑[abs(2-A007051(n))+2]`
-/

namespace A243513.P7222403757877029422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A007051 n| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243513.P7222403757877029422

namespace A243513

/-- `∑[abs(2-A007051(n))+2]` -/
def P7222403757877029422.Spec : Prop :=
  ∀ n, P7222403757877029422.a n = A243513 (n + 1)

end A243513

/-! ## A243513.P11871591900478093125

`abs(∑[A003462(n)+2]+1-n)`
-/

namespace A243513.P11871591900478093125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)|

end

end A243513.P11871591900478093125

namespace A243513

/-- `abs(∑[A003462(n)+2]+1-n)` -/
def P11871591900478093125.Spec : Prop :=
  ∀ n, P11871591900478093125.a n = A243513 (n + 1)

end A243513

/-!
# A243514: Number of length n+2 0..5 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..5 introduced in 0..5 order.

The programs for A243514, the canonical program `A243514.P14632445562906958899` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243514 has offset 1).

The definition of A243514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243514.P14632445562906958899

`(26+9*2^(n+1)+4^(n+1)+6*(n+1))/18`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243514

/-- `(26+9*2^(n+1)+4^(n+1)+6*(n+1))/18` -/
def P14632445562906958899.Spec : Prop :=
  ∀ n, P14632445562906958899.a n = (A243514 (n + 1) : ℚ)

end A243514

/-! ## A243514.P525900376178901426

`∑[4*a(n-1)-2^(n-1)-1]` with `a(0)=3, a(1)=2`
-/

namespace A243514.P525900376178901426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  4 * f1 (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243514.P525900376178901426

namespace A243514

/-- `∑[4*a(n-1)-2^(n-1)-1]` -/
def P525900376178901426.Spec : Prop :=
  ∀ n, P525900376178901426.a n = (A243514 (n + 1) : ℚ)

end A243514

/-! ## A243514.P7536694868130648517

`∑[A007581(n)+floor(acot(n)²)]`
-/

namespace A243514.P7536694868130648517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243514.P7536694868130648517

namespace A243514

/-- `∑[A007581(n)+floor(acot(n)²)]` -/
def P7536694868130648517.Spec : Prop :=
  ∀ n, P7536694868130648517.a n = A243514 (n + 1)

end A243514

/-! ## A243514.P14265399690407988405

`∑[A007582(n-1)+a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A243514.P14265399690407988405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  A007582 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243514.P14265399690407988405

namespace A243514

/-- `∑[A007582(n-1)+a(n-1)]` -/
def P14265399690407988405.Spec : Prop :=
  ∀ n, P14265399690407988405.a n = A243514 (n + 1)

end A243514

/-! ## A243514.P4066394486465482620

`∑[A222939(n+2)-a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A243514.P4066394486465482620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  A222939 (n + 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243514.P4066394486465482620

namespace A243514

/-- `∑[A222939(n+2)-a(n-1)]` -/
def P4066394486465482620.Spec : Prop :=
  ∀ n, P4066394486465482620.a n = A243514 (n + 1)

end A243514

/-! ## A243514.P1227603904718599624

`∑[A007581(n)+A000038(n)]`
-/

namespace A243514.P1227603904718599624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243514.P1227603904718599624

namespace A243514

/-- `∑[A007581(n)+A000038(n)]` -/
def P1227603904718599624.Spec : Prop :=
  ∀ n, P1227603904718599624.a n = A243514 (n + 1)

end A243514

/-! ## A243514.P17019346920307354083

`8*a(n-1)-21*a(n-2)+22*a(n-3)-8*a(n-4)` with `a(0)=3, a(1)=5, a(2)=10, a(3)=25`
-/

namespace A243514.P17019346920307354083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 10, 25] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 22 * a (n - 3) - 8 * a (n - 4)

end

end A243514.P17019346920307354083

namespace A243514

/-- `8*a(n-1)-21*a(n-2)+22*a(n-3)-8*a(n-4)` -/
def P17019346920307354083.Spec : Prop :=
  ∀ n, P17019346920307354083.a n = A243514 (n + 1)

end A243514

/-! ## A243514.P9638600017456592322

`∑[round(C(A171559(n)+2, 2)/3)]`
-/

namespace A243514.P9638600017456592322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (A171559 n + 2).toNat 2 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243514.P9638600017456592322

namespace A243514

/-- `∑[round(C(A171559(n)+2, 2)/3)]` -/
def P9638600017456592322.Spec : Prop :=
  ∀ n, P9638600017456592322.a n = A243514 (n + 1)

end A243514

/-! ## A243514.P5108536928636005759

`record[A243519(A055999(n)+2)]`
-/

namespace A243514.P5108536928636005759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A055999 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243514.P5108536928636005759

namespace A243514

/-- `record[A243519(A055999(n)+2)]` -/
def P5108536928636005759.Spec : Prop :=
  ∀ n, P5108536928636005759.a n = A243514 (n + 1)

end A243514

/-!
# A243515: Number of length n+2 0..6 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..6 introduced in 0..6 order.

The programs for A243515, the canonical program `A243515.P1271760465107560758` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243515 has offset 1).

The definition of A243515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243515.P1271760465107560758

`A099265(n+1)+2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243515

/-- `A099265(n+1)+2` -/
def P1271760465107560758.Spec : Prop :=
  ∀ n, P1271760465107560758.a n = A243515 (n + 1)

theorem P1271760465107560758.correct : P1271760465107560758.Spec := by
  intro n
  simp only [A243515, Nat.add_sub_cancel]

end A243515

/-! ## A243515.P13885523036630974520

`∑[A056272(n+1)]+2`
-/

namespace A243515.P13885523036630974520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243515.P13885523036630974520

namespace A243515

/-- `∑[A056272(n+1)]+2` -/
def P13885523036630974520.Spec : Prop :=
  ∀ n, P13885523036630974520.a n = A243515 (n + 1)

end A243515

/-! ## A243515.P13041567924590349644

`∑[A056470(Δ[n²])]+2`
-/

namespace A243515.P13041567924590349644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243515.P13041567924590349644

namespace A243515

/-- `∑[A056470(Δ[n²])]+2` -/
def P13041567924590349644.Spec : Prop :=
  ∀ n, P13041567924590349644.a n = A243515 (n + 1)

end A243515

/-! ## A243515.P16061004102735975434

`∑[A056506(2*n+1)]+2`
-/

namespace A243515.P16061004102735975434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243515.P16061004102735975434

namespace A243515

/-- `∑[A056506(2*n+1)]+2` -/
def P16061004102735975434.Spec : Prop :=
  ∀ n, P16061004102735975434.a n = A243515 (n + 1)

end A243515

/-! ## A243515.P18043999133673831833

`A243519(A000124(n+6)-6)`
-/

namespace A243515.P18043999133673831833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A000124 (n + 6) - 6).toNat

end

end A243515.P18043999133673831833

namespace A243515

/-- `A243519(A000124(n+6)-6)` -/
def P18043999133673831833.Spec : Prop :=
  ∀ n, P18043999133673831833.a n = A243515 (n + 1)

end A243515

/-!
# A243516: Number of length n+2 0..7 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..7 introduced in 0..7 order.

The programs for A243516, there is no canonical definition to state claims against.
-/

/-! ## A243516.P4744664137421621857

`A099266(n+1)+2`
-/

namespace A243516.P4744664137421621857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099266 (n + 1) + 2

end

end A243516.P4744664137421621857

/-! ## A243516.P12465330316481159613

`∑[A056273(n+1)]+2`
-/

namespace A243516.P12465330316481159613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243516.P12465330316481159613

/-! ## A243516.P15866421011702859493

`∑[A056471(2*(n+1))]+2`
-/

namespace A243516.P15866421011702859493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243516.P15866421011702859493

/-! ## A243516.P2146397068165976162

`∑[A056507(2*n+1)]+2`
-/

namespace A243516.P2146397068165976162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243516.P2146397068165976162

/-! ## A243516.P12204805346990146794

`∑[record[A056507(A026741(n))]]+2`
-/

namespace A243516.P12204805346990146794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243516.P12204805346990146794

/-! ## A243516.P592385316485275416

`A243519(A055999(n+4))`
-/

namespace A243516.P592385316485275416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A055999 (n + 4)).toNat

end

end A243516.P592385316485275416

/-! ## A243516.P3730509697947382634

`record[A243519(A055999(A008619(n)))]`
-/

namespace A243516.P3730509697947382634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A055999 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243516.P3730509697947382634

/-! ## A243516.P10028958372217563965

`record[A243519(A055999(A020986(n)))]`
-/

namespace A243516.P10028958372217563965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A055999 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243516.P10028958372217563965

/-! ## A243516.P15682262568580011754

`record[A243519(A055999(A052938(n)))]`
-/

namespace A243516.P15682262568580011754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A055999 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243516.P15682262568580011754

/-!
# A243517: Number of length n+2 0..8 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..8 introduced in 0..8 order.

The programs for A243517, there is no canonical definition to state claims against.
-/

/-! ## A243517.P6212009238328474916

`∑[A099262(n+1)]+2`
-/

namespace A243517.P6212009238328474916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243517.P6212009238328474916

/-! ## A243517.P1045648791078511080

`A099262(n+1)+a(n-(A000007(n)+1))` with `a(0)=3`
-/

namespace A243517.P1045648791078511080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A099262 (n + 1) + a ((n : ℤ) - (A000007 n + 1)).toNat

end

end A243517.P1045648791078511080

/-! ## A243517.P895325909145609469

`A099262(n+1)+a(A002262(A055998(n)))` with `a(0)=3`
-/

namespace A243517.P895325909145609469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A099262 (n + 1) + a (A002262 (A055998 n).toNat).toNat

end

end A243517.P895325909145609469

/-! ## A243517.P16113287034728134249

`A243519(A055998(n+6)-4)`
-/

namespace A243517.P16113287034728134249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A055998 (n + 6) - 4).toNat

end

end A243517.P16113287034728134249

/-! ## A243517.P16293878522725316458

`A243519(A000096(n+7)-6)`
-/

namespace A243517.P16293878522725316458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A000096 (n + 7) - 6).toNat

end

end A243517.P16293878522725316458

/-! ## A243517.P8797982731289486384

`A243519(A000124(n+8)-8)`
-/

namespace A243517.P8797982731289486384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A000124 (n + 8) - 8).toNat

end

end A243517.P8797982731289486384

/-! ## A243517.P5482837613583571737

`A243519(eq[15, A099375(n)]+1)`
-/

namespace A243517.P5482837613583571737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A243517.P5482837613583571737

/-! ## A243517.P1222529445126729850

`A243519(A000217(n+7)+n+1)`
-/

namespace A243517.P1222529445126729850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A243517.P1222529445126729850

/-!
# A243518: Number of length n+2 0..9 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..9 introduced in 0..9 order.

The programs for A243518, there is no canonical definition to state claims against.
-/

/-! ## A243518.P1830211434041283038

`∑[A099263(n+1)]+2`
-/

namespace A243518.P1830211434041283038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A243518.P1830211434041283038

/-! ## A243518.P1811641341771791364

`A243519(A155212(n+5))`
-/

namespace A243518.P1811641341771791364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A155212 (n + 5)).toNat

end

end A243518.P1811641341771791364

/-! ## A243518.P9241979760991486042

`A243519(A052905(n+6)-3)`
-/

namespace A243518.P9241979760991486042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A052905 (n + 6) - 3).toNat

end

end A243518.P9241979760991486042

/-! ## A243518.P16439636740078465645

`A243519(A000217(n+9)-8)`
-/

namespace A243518.P16439636740078465645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A000217 (n + 9) - 8).toNat

end

end A243518.P16439636740078465645

/-! ## A243518.P10646642450410368703

`A243519(A161680(n+10)-8)`
-/

namespace A243518.P10646642450410368703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A161680 (n + 10) - 8).toNat

end

end A243518.P10646642450410368703

/-! ## A243518.P12687065723410324463

`A243519(A000096(n+7)+n+2)`
-/

namespace A243518.P12687065723410324463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A243518.P12687065723410324463

/-!
# A243519: T(n,k)=Number of length n+2 0..k arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..k introduced in 0..k order.

The programs for A243519, there is no canonical definition to state claims against.
-/

/-! ## A243519.P16679139245592001076

`A054124(A185284(2*n))+A000961(A216274(n+1))`
-/

namespace A243519.P16679139245592001076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A185284 (2 * n)).toNat + A000961 (A216274 (n + 1)).toNat

end

end A243519.P16679139245592001076

/-! ## A243519.P18113156994019743130

`A288712(A216274(n+1))%p?[A010017(n)]`
-/

namespace A243519.P18113156994019743130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288712 (A216274 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A243519.P18113156994019743130

/-! ## A243519.P1922169334181468489

`A288712(A216274(n+1))^Δ[A077342(n+1)]`
-/

namespace A243519.P1922169334181468489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288712 (A216274 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A243519.P1922169334181468489

/-! ## A243519.P8280886579289025152

`A288712(A216274(n+1))+A000007(A000045(n+3))`
-/

namespace A243519.P8280886579289025152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288712 (A216274 (n + 1)).toNat + A000007 (A000045 (n + 3)).toNat

end

end A243519.P8280886579289025152

/-! ## A243519.P11291976747547576322

`A228488(A118881(n+1))*A288712(A216274(n+1))`
-/

namespace A243519.P11291976747547576322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228488 (A118881 (n + 1)).toNat * A288712 (A216274 (n + 1)).toNat

end

end A243519.P11291976747547576322

/-!
# A243520: Numbers that are congruent to {0, 8} mod 11.

The programs for A243520, the canonical program `A243520.P14626379461009660683` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243520 has offset 0).

The definition of A243520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243520.P14626379461009660683

`5*n+2*n%2+ceil(n/2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243520

/-- `5*n+2*n%2+ceil(n/2)` -/
def P14626379461009660683.Spec : Prop :=
  ∀ n, P14626379461009660683.a n = A243520 n

theorem P14626379461009660683.correct : P14626379461009660683.Spec := by
  intro n
  simp only [A243520]

end A243520

/-! ## A243520.P1568363425254081509

`a(n-2)+11` with `a(0)=0, a(1)=8`
-/

namespace A243520.P1568363425254081509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 2) + 11

end

end A243520.P1568363425254081509

namespace A243520

/-- `a(n-2)+11` -/
def P1568363425254081509.Spec : Prop :=
  ∀ n, (P1568363425254081509.a n : ℤ) = A243520 n

end A243520

/-! ## A243520.P5663752789029596374

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=8, a(2)=3`
-/

namespace A243520.P5663752789029596374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P5663752789029596374

namespace A243520

/-- `∑[abs(a(n-2))]` -/
def P5663752789029596374.Spec : Prop :=
  ∀ n, (P5663752789029596374.a n : ℤ) = A243520 n

end A243520

/-! ## A243520.P17598608277899242424

`∑[11-a(n-1)]` with `a(0)=0, a(1)=8`
-/

namespace A243520.P17598608277899242424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P17598608277899242424

namespace A243520

/-- `∑[11-a(n-1)]` -/
def P17598608277899242424.Spec : Prop :=
  ∀ n, P17598608277899242424.a n = A243520 n

end A243520

/-! ## A243520.P11735373096268872790

`∑[∑[ogf((8x+3x^2)/(1+x))]]`
-/

namespace A243520.P11735373096268872790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P11735373096268872790

namespace A243520

/-- `∑[∑[ogf((8x+3x^2)/(1+x))]]` -/
def P11735373096268872790.Spec : Prop :=
  ∀ n, P11735373096268872790.a n = A243520 n

end A243520

/-! ## A243520.P17057907808856678855

`ogf((8x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A243520.P17057907808856678855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 3] [1, -1, -1, 1] n

end

end A243520.P17057907808856678855

namespace A243520

/-- `ogf((8x+3x^2)/(1-x-x^2+x^3))` -/
def P17057907808856678855.Spec : Prop :=
  ∀ n, P17057907808856678855.a n = A243520 n

end A243520

/-! ## A243520.P12244056465910272309

`∑[5*n%2+3]-3`
-/

namespace A243520.P12244056465910272309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n % 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A243520.P12244056465910272309

namespace A243520

/-- `∑[5*n%2+3]-3` -/
def P12244056465910272309.Spec : Prop :=
  ∀ n, P12244056465910272309.a n = A243520 n

end A243520

/-! ## A243520.P12176582499338882336

`3*n+5*ceil(n/2)`
-/

namespace A243520.P12176582499338882336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + 5 * ⌈(n : ℚ) / 2⌉

end

end A243520.P12176582499338882336

namespace A243520

/-- `3*n+5*ceil(n/2)` -/
def P12176582499338882336.Spec : Prop :=
  ∀ n, P12176582499338882336.a n = A243520 n

end A243520

/-! ## A243520.P1782252198984600337

`∪[11*n, A017485(n)]`
-/

namespace A243520.P1782252198984600337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243520.P1782252198984600337

namespace A243520

/-- `∪[11*n, A017485(n)]` -/
def P1782252198984600337.Spec : Prop :=
  ∀ n, (P1782252198984600337.a n : ℤ) = A243520 n

end A243520

/-! ## A243520.P3349743096420314949

`∑[dr(1-A009946(n)²)]`
-/

namespace A243520.P3349743096420314949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A009946 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P3349743096420314949

namespace A243520

/-- `∑[dr(1-A009946(n)²)]` -/
def P3349743096420314949.Spec : Prop :=
  ∀ n, (P3349743096420314949.a n : ℤ) = A243520 n

end A243520

/-! ## A243520.P5242660650903236979

`∑[dr(1-A263941(n+1))]`
-/

namespace A243520.P5242660650903236979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A263941 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P5242660650903236979

namespace A243520

/-- `∑[dr(1-A263941(n+1))]` -/
def P5242660650903236979.Spec : Prop :=
  ∀ n, (P5242660650903236979.a n : ℤ) = A243520 n

end A243520

/-! ## A243520.P18168927765581468945

`ceil(11*A047382(n+1)/7)`
-/

namespace A243520.P18168927765581468945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 * A047382 (n + 1) : ℚ) / 7⌉

end

end A243520.P18168927765581468945

namespace A243520

/-- `ceil(11*A047382(n+1)/7)` -/
def P18168927765581468945.Spec : Prop :=
  ∀ n, P18168927765581468945.a n = A243520 n

end A243520

/-! ## A243520.P14335331519274519681

`abs(1-(A168671(n+1)-n))`
-/

namespace A243520.P14335331519274519681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A168671 (n + 1) - (n : ℤ))|

end

end A243520.P14335331519274519681

namespace A243520

/-- `abs(1-(A168671(n+1)-n))` -/
def P14335331519274519681.Spec : Prop :=
  ∀ n, P14335331519274519681.a n = A243520 n

end A243520

/-! ## A243520.P7986495140033195530

`abs(∑[and(7, A280193(n))]+n-1)`
-/

namespace A243520.P7986495140033195530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)|

end

end A243520.P7986495140033195530

namespace A243520

/-- `abs(∑[and(7, A280193(n))]+n-1)` -/
def P7986495140033195530.Spec : Prop :=
  ∀ n, P7986495140033195530.a n = A243520 n

end A243520

/-! ## A243520.P9687714180554117891

`abs(comp[2*n]+A047335(n+1)-1)`
-/

namespace A243520.P9687714180554117891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A047335 (n + 1) - 1)|

end

end A243520.P9687714180554117891

namespace A243520

/-- `abs(comp[2*n]+A047335(n+1)-1)` -/
def P9687714180554117891.Spec : Prop :=
  ∀ n, P9687714180554117891.a n = A243520 n

end A243520

/-! ## A243520.P13624061382299582690

`A154609(n)%A072703(n+1)`
-/

namespace A243520.P13624061382299582690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154609 n) (A072703 (n + 1))

end

end A243520.P13624061382299582690

namespace A243520

/-- `A154609(n)%A072703(n+1)` -/
def P13624061382299582690.Spec : Prop :=
  ∀ n, P13624061382299582690.a n = A243520 n

end A243520

/-! ## A243520.P12687813493484339968

`∑[A020639(A008486(n))²-1]`
-/

namespace A243520.P12687813493484339968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008486 n).toNat ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P12687813493484339968

namespace A243520

/-- `∑[A020639(A008486(n))²-1]` -/
def P12687813493484339968.Spec : Prop :=
  ∀ n, P12687813493484339968.a n = A243520 n

end A243520

/-! ## A243520.P12248126586732113751

`∑[A006530(A071044(n))²-1]`
-/

namespace A243520.P12248126586732113751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071044 n).toNat ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P12248126586732113751

namespace A243520

/-- `∑[A006530(A071044(n))²-1]` -/
def P12248126586732113751.Spec : Prop :=
  ∀ n, P12248126586732113751.a n = A243520 n

end A243520

/-! ## A243520.P5888297801946295209

`∑[A020639(A179805(n))²-1]`
-/

namespace A243520.P5888297801946295209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179805 n).toNat ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P5888297801946295209

namespace A243520

/-- `∑[A020639(A179805(n))²-1]` -/
def P5888297801946295209.Spec : Prop :=
  ∀ n, P5888297801946295209.a n = A243520 n

end A243520

/-! ## A243520.P16910832198301571962

`∑[A020639(A298028(n))²-1]`
-/

namespace A243520.P16910832198301571962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A298028 n).toNat ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243520.P16910832198301571962

namespace A243520

/-- `∑[A020639(A298028(n))²-1]` -/
def P16910832198301571962.Spec : Prop :=
  ∀ n, P16910832198301571962.a n = A243520 n

end A243520

/-!
# A243521: The number of states in a Tower of Hanoi puzzle with three pegs and n discs, where a larger disc can be placed directly on top of a smaller one at most once per peg.

The programs for A243521, there is no canonical definition to state claims against.
-/

/-! ## A243521.P3879310102121167527

`A004526(A066460(n)+A001541(n))`
-/

namespace A243521.P3879310102121167527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A066460 n + A001541 n).toNat

end

end A243521.P3879310102121167527

/-! ## A243521.P2824980430069817955

`A110571(n)+A004526(A001541(n))`
-/

namespace A243521.P2824980430069817955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110571 n + A004526 (A001541 n).toNat

end

end A243521.P2824980430069817955

/-!
# A243522: Primes p such that p^6 - p^5 + 1 and p^6 - p^5 - 1 are both primes.

The programs for A243522, there is no canonical definition to state claims against.
-/

/-! ## A243522.P10914010413387083316

`∩[A243471(n+1), A243472(n+1)]`
-/

namespace A243522.P10914010413387083316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243522.P10914010413387083316

/-!
# A243529: Prime numbers containing the string 12.

The programs for A243529, there is no canonical definition to state claims against.
-/

/-! ## A243529.P1392213312517041869

`p?[A293872(n+1)]`
-/

namespace A243529.P1392213312517041869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243529.P1392213312517041869

/-! ## A243529.P9320435217808309200

`p?[record[A293872(A324347(n))]]`
-/

namespace A243529.P9320435217808309200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243529.P9320435217808309200

/-! ## A243529.P13589402540030935726

`p?[record[A293872(A328399(n))]]`
-/

namespace A243529.P13589402540030935726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243529.P13589402540030935726

/-! ## A243529.P16456890331114527354

`p?[record[A293872(A331742(n))]]`
-/

namespace A243529.P16456890331114527354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (A331742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243529.P16456890331114527354

/-! ## A243529.P10940425891999232404

`∩[A208270(n+1), A293872(n+1)]`
-/

namespace A243529.P10940425891999232404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P10940425891999232404

/-! ## A243529.P4985260086551284449

`∩[A208272(n+1), A293872(n+1)]`
-/

namespace A243529.P4985260086551284449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P4985260086551284449

/-! ## A243529.P7930137724976395012

`∩[A152427(n+1), A293872(n+1)]`
-/

namespace A243529.P7930137724976395012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P7930137724976395012

/-! ## A243529.P223780716377045697

`∩[A152426(n+1), A293872(n+1)]`
-/

namespace A243529.P223780716377045697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P223780716377045697

/-! ## A243529.P17524230349444389768

`p?[A033999(n)*A293872(A328399(n))]`
-/

namespace A243529.P17524230349444389768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293872 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243529.P17524230349444389768

/-! ## A243529.P12340136022544727224

`∩[A000040(n+1), A293872(n+1)]`
-/

namespace A243529.P12340136022544727224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P12340136022544727224

/-! ## A243529.P11885083311610632391

`∩[A004139(n+1), A293872(n+1)]`
-/

namespace A243529.P11885083311610632391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P11885083311610632391

/-! ## A243529.P15652671806702483134

`∩[A006005(n+1), A293872(n+1)]`
-/

namespace A243529.P15652671806702483134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P15652671806702483134

/-! ## A243529.P1296443200699150504

`∩[A008578(n+1), A293872(n+1)]`
-/

namespace A243529.P1296443200699150504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P1296443200699150504

/-! ## A243529.P2012916185859951067

`∩[A038672(n+1), A293872(n+1)]`
-/

namespace A243529.P2012916185859951067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P2012916185859951067

/-! ## A243529.P10914716371074196268

`∩[A045319(n+1), A293872(n+1)]`
-/

namespace A243529.P10914716371074196268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P10914716371074196268

/-! ## A243529.P1071318641268887835

`∩[A045344(n+1), A293872(n+1)]`
-/

namespace A243529.P1071318641268887835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P1071318641268887835

/-! ## A243529.P15844519373368397483

`∩[A046022(n+1), A293872(n+1)]`
-/

namespace A243529.P15844519373368397483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P15844519373368397483

/-! ## A243529.P17678673126647597923

`∩[A051948(n+1), A293872(n+1)]`
-/

namespace A243529.P17678673126647597923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P17678673126647597923

/-! ## A243529.P18052415304992063660

`∩[A060634(n+1), A293872(n+1)]`
-/

namespace A243529.P18052415304992063660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P18052415304992063660

/-! ## A243529.P9760122981345517707

`∩[A062972(n+1), A293872(n+1)]`
-/

namespace A243529.P9760122981345517707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243529.P9760122981345517707

/-!
# A243530: Prime numbers containing the string 14.

The programs for A243530, there is no canonical definition to state claims against.
-/

/-! ## A243530.P1974288479043601292

`p?[A293874(n+1)]`
-/

namespace A243530.P1974288479043601292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243530.P1974288479043601292

/-! ## A243530.P5199831539628741975

`∩[A133765(n+1), A293874(n+1)]`
-/

namespace A243530.P5199831539628741975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P5199831539628741975

/-! ## A243530.P15228959778266818455

`∩[A208270(n+1), A293874(n+1)]`
-/

namespace A243530.P15228959778266818455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P15228959778266818455

/-! ## A243530.P17839652554556066952

`∩[A239058(n+1), A293874(n+1)]`
-/

namespace A243530.P17839652554556066952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P17839652554556066952

/-! ## A243530.P866016599868640282

`∩[A284290(n+1), A293874(n+1)]`
-/

namespace A243530.P866016599868640282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P866016599868640282

/-! ## A243530.P15121890933048603159

`∩[A000040(n+1), A293874(n+1)]`
-/

namespace A243530.P15121890933048603159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P15121890933048603159

/-! ## A243530.P16456965199539955313

`∩[A004139(n+1), A293874(n+1)]`
-/

namespace A243530.P16456965199539955313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P16456965199539955313

/-! ## A243530.P1502874844208972100

`∩[A006005(n+1), A293874(n+1)]`
-/

namespace A243530.P1502874844208972100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P1502874844208972100

/-! ## A243530.P14714635918635622957

`∩[A008578(n+1), A293874(n+1)]`
-/

namespace A243530.P14714635918635622957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P14714635918635622957

/-! ## A243530.P13411807984743934989

`∩[A033946(n+1), A293874(n+1)]`
-/

namespace A243530.P13411807984743934989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P13411807984743934989

/-! ## A243530.P1638942074781182300

`∩[A045319(n+1), A293874(n+1)]`
-/

namespace A243530.P1638942074781182300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P1638942074781182300

/-! ## A243530.P12079040088427506237

`∩[A045344(n+1), A293874(n+1)]`
-/

namespace A243530.P12079040088427506237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P12079040088427506237

/-! ## A243530.P9188954033905353367

`∩[A046022(n+1), A293874(n+1)]`
-/

namespace A243530.P9188954033905353367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P9188954033905353367

/-! ## A243530.P7700153739012151207

`∩[A051948(n+1), A293874(n+1)]`
-/

namespace A243530.P7700153739012151207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P7700153739012151207

/-! ## A243530.P1951564218890618922

`∩[A053813(n+1), A293874(n+1)]`
-/

namespace A243530.P1951564218890618922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P1951564218890618922

/-! ## A243530.P6418630827351141259

`∩[A054723(n+1), A293874(n+1)]`
-/

namespace A243530.P6418630827351141259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P6418630827351141259

/-! ## A243530.P8702104134498315567

`∩[A065091(n+1), A293874(n+1)]`
-/

namespace A243530.P8702104134498315567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P8702104134498315567

/-! ## A243530.P15617019722017953018

`∩[A065396(n+1), A293874(n+1)]`
-/

namespace A243530.P15617019722017953018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P15617019722017953018

/-! ## A243530.P6581164933088361117

`∩[A067126(n+1), A293874(n+1)]`
-/

namespace A243530.P6581164933088361117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P6581164933088361117

/-! ## A243530.P5638848811225552521

`∩[A174090(n+1), A293874(n+1)]`
-/

namespace A243530.P5638848811225552521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243530.P5638848811225552521

/-!
# A243531: Prime numbers containing the string 15.

The programs for A243531, there is no canonical definition to state claims against.
-/

/-! ## A243531.P9973020653965761661

`p?[A293875(n+1)]`
-/

namespace A243531.P9973020653965761661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243531.P9973020653965761661

/-! ## A243531.P15780909404327098630

`∩[A208270(n+1), A293875(n+1)]`
-/

namespace A243531.P15780909404327098630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P15780909404327098630

/-! ## A243531.P7724251255038053364

`∩[A239058(n+1), A293875(n+1)]`
-/

namespace A243531.P7724251255038053364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P7724251255038053364

/-! ## A243531.P6692516082777470883

`∩[A257667(n+1), A293875(n+1)]`
-/

namespace A243531.P6692516082777470883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P6692516082777470883

/-! ## A243531.P11242979266382058675

`∩[A156756(n+1), A293875(n+1)]`
-/

namespace A243531.P11242979266382058675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P11242979266382058675

/-! ## A243531.P1927972935205315670

`∩[A152426(n+1), A293875(n+1)]`
-/

namespace A243531.P1927972935205315670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P1927972935205315670

/-! ## A243531.P15938219315141335777

`∩[A152427(n+1), A293875(n+1)]`
-/

namespace A243531.P15938219315141335777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P15938219315141335777

/-! ## A243531.P12817990174320874408

`∩[A179336(n+1), A293875(n+1)]`
-/

namespace A243531.P12817990174320874408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P12817990174320874408

/-! ## A243531.P13272201135987342071

`∩[A000040(n+1), A293875(n+1)]`
-/

namespace A243531.P13272201135987342071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P13272201135987342071

/-! ## A243531.P13514973026382218524

`∩[A004139(n+1), A293875(n+1)]`
-/

namespace A243531.P13514973026382218524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P13514973026382218524

/-! ## A243531.P16326433921766717322

`∩[A006005(n+1), A293875(n+1)]`
-/

namespace A243531.P16326433921766717322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P16326433921766717322

/-! ## A243531.P3049874066367511342

`∩[A008578(n+1), A293875(n+1)]`
-/

namespace A243531.P3049874066367511342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P3049874066367511342

/-! ## A243531.P4211847957390718298

`∩[A033946(n+1), A293875(n+1)]`
-/

namespace A243531.P4211847957390718298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P4211847957390718298

/-! ## A243531.P8841405727527708087

`∩[A038672(n+1), A293875(n+1)]`
-/

namespace A243531.P8841405727527708087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P8841405727527708087

/-! ## A243531.P8700367840216214218

`∩[A045319(n+1), A293875(n+1)]`
-/

namespace A243531.P8700367840216214218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P8700367840216214218

/-! ## A243531.P3879058720580908778

`∩[A045344(n+1), A293875(n+1)]`
-/

namespace A243531.P3879058720580908778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P3879058720580908778

/-! ## A243531.P4822661315366955578

`∩[A046022(n+1), A293875(n+1)]`
-/

namespace A243531.P4822661315366955578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P4822661315366955578

/-! ## A243531.P1268932195427869199

`∩[A051948(n+1), A293875(n+1)]`
-/

namespace A243531.P1268932195427869199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P1268932195427869199

/-! ## A243531.P13050699981246078585

`∩[A053813(n+1), A293875(n+1)]`
-/

namespace A243531.P13050699981246078585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P13050699981246078585

/-! ## A243531.P13217045196635908379

`∩[A054723(n+1), A293875(n+1)]`
-/

namespace A243531.P13217045196635908379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243531.P13217045196635908379

/-!
# A243532: Prime numbers containing the string 16.

The programs for A243532, there is no canonical definition to state claims against.
-/

/-! ## A243532.P17125382727840739992

`p?[A293876(n+1)]`
-/

namespace A243532.P17125382727840739992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243532.P17125382727840739992

/-! ## A243532.P9638506660803949075

`∩[A208270(n+1), A293876(n+1)]`
-/

namespace A243532.P9638506660803949075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P9638506660803949075

/-! ## A243532.P16813467109637935282

`∩[A239058(n+1), A293876(n+1)]`
-/

namespace A243532.P16813467109637935282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P16813467109637935282

/-! ## A243532.P15141193710032361669

`p?[record[A293876(A052938(n))]]`
-/

namespace A243532.P15141193710032361669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243532.P15141193710032361669

/-! ## A243532.P772702732767575252

`∩[A106122(n+1), A293876(n+1)]`
-/

namespace A243532.P772702732767575252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P772702732767575252

/-! ## A243532.P7918121291589093233

`∩[A106121(n+1), A293876(n+1)]`
-/

namespace A243532.P7918121291589093233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P7918121291589093233

/-! ## A243532.P10194239696625853294

`∩[A055387(n+1), A293876(n+1)]`
-/

namespace A243532.P10194239696625853294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P10194239696625853294

/-! ## A243532.P9951443797711069462

`∩[A106120(n+1), A293876(n+1)]`
-/

namespace A243532.P9951443797711069462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P9951443797711069462

/-! ## A243532.P18255808568187170086

`∩[A038672(n+1), A293876(n+1)]`
-/

namespace A243532.P18255808568187170086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P18255808568187170086

/-! ## A243532.P6286464460019849963

`∩[A054723(n+1), A293876(n+1)]`
-/

namespace A243532.P6286464460019849963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P6286464460019849963

/-! ## A243532.P16485573361171462839

`∩[A065376(n+1), A293876(n+1)]`
-/

namespace A243532.P16485573361171462839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P16485573361171462839

/-! ## A243532.P14207025777192195554

`∩[A065396(n+1), A293876(n+1)]`
-/

namespace A243532.P14207025777192195554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P14207025777192195554

/-! ## A243532.P1496159565823709427

`∩[A070957(n+1), A293876(n+1)]`
-/

namespace A243532.P1496159565823709427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P1496159565823709427

/-! ## A243532.P17545835929012365193

`∩[A071621(n+1), A293876(n+1)]`
-/

namespace A243532.P17545835929012365193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P17545835929012365193

/-! ## A243532.P11521401149756185904

`∩[A078132(n+1), A293876(n+1)]`
-/

namespace A243532.P11521401149756185904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P11521401149756185904

/-! ## A243532.P13530453194740763138

`∩[A078138(n+1), A293876(n+1)]`
-/

namespace A243532.P13530453194740763138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P13530453194740763138

/-! ## A243532.P3775922805312624144

`∩[A087490(n+1), A293876(n+1)]`
-/

namespace A243532.P3775922805312624144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P3775922805312624144

/-! ## A243532.P3151137383907664949

`∩[A106119(n+1), A293876(n+1)]`
-/

namespace A243532.P3151137383907664949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P3151137383907664949

/-! ## A243532.P8996664668735667069

`∩[A157996(n+1), A293876(n+1)]`
-/

namespace A243532.P8996664668735667069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243532.P8996664668735667069

/-!
# A243535: Numbers whose list of divisors contains 2 distinct digits (in base 10).

The programs for A243535, there is no canonical definition to state claims against.
-/

/-! ## A243535.P18392255698393903918

`A206159(A165020(n+1)+n)`
-/

namespace A243535.P18392255698393903918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (A165020 (n + 1) + (n : ℤ)).toNat

end

end A243535.P18392255698393903918

/-! ## A243535.P6546001947832221594

`eq[2, A095048(n+1)]+1`
-/

namespace A243535.P6546001947832221594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243535.P6546001947832221594

/-! ## A243535.P8538481173965706728

`eq[2, A095048(A028310(n))]`
-/

namespace A243535.P8538481173965706728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243535.P8538481173965706728

/-! ## A243535.P15417884828881238742

`A020725(eq[2, A095048(n+1)])`
-/

namespace A243535.P15417884828881238742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243535.P15417884828881238742

/-! ## A243535.P2091476229186130267

`eq[2, A095048(A000007(n)+n)]`
-/

namespace A243535.P2091476229186130267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243535.P2091476229186130267

/-! ## A243535.P3230126169098554648

`∩[A183223(n+1), A206159(n+1)]`
-/

namespace A243535.P3230126169098554648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243535.P3230126169098554648

/-!
# A243536: Numbers n such that list of divisors of n contains 3 distinct digits (in base 10).

The programs for A243536, there is no canonical definition to state claims against.
-/

/-! ## A243536.P13275022975306226571

`eq[3, A095048(n+1)]+1`
-/

namespace A243536.P13275022975306226571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243536.P13275022975306226571

/-! ## A243536.P14286488748581090736

`eq[3, A095048(n^floor(atan(n)))]`
-/

namespace A243536.P14286488748581090736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243536.P14286488748581090736

/-! ## A243536.P4007388550198287920

`eq[3, A095048(A028310(n))]`
-/

namespace A243536.P4007388550198287920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243536.P4007388550198287920

/-! ## A243536.P9286562432723818982

`A020725(eq[3, A095048(n+1)])`
-/

namespace A243536.P9286562432723818982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243536.P9286562432723818982

/-! ## A243536.P6370934603529889253

`A065475(eq[3, A095048(n+1)])`
-/

namespace A243536.P6370934603529889253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243536.P6370934603529889253

/-! ## A243536.P1541265338023007354

`A114637(eq[3, A095048(n+1)])`
-/

namespace A243536.P1541265338023007354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243536.P1541265338023007354

/-! ## A243536.P5986450701324113212

`eq[3, A095048(A000007(n)+n)]`
-/

namespace A243536.P5986450701324113212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243536.P5986450701324113212

/-! ## A243536.P3334027660228820694

`eq[3, A095048(A065033(2*n))]`
-/

namespace A243536.P3334027660228820694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243536.P3334027660228820694

/-! ## A243536.P9173259893027083019

`eq[3, A095048(A123108(2*n))]`
-/

namespace A243536.P9173259893027083019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243536.P9173259893027083019

/-! ## A243536.P5352744057709618191

`eq[3, A095048(A233583(n+1))]`
-/

namespace A243536.P5352744057709618191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243536.P5352744057709618191

/-!
# A243537: Numbers n such that list of divisors of n contains 4 distinct digits (in base 10).

The programs for A243537, there is no canonical definition to state claims against.
-/

/-! ## A243537.P628122527088755919

`eq[4, A095048(n+1)]+1`
-/

namespace A243537.P628122527088755919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243537.P628122527088755919

/-! ## A243537.P892796748172894264

`eq[2, A095048(A028310(n))-2]`
-/

namespace A243537.P892796748172894264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243537.P892796748172894264

/-! ## A243537.P4832741042625991842

`eq[4, A095048(A000038(n)+n)]`
-/

namespace A243537.P4832741042625991842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243537.P4832741042625991842

/-! ## A243537.P16333193763157291703

`eq[4, A095048(abs(n-A000038(n)))]`
-/

namespace A243537.P16333193763157291703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243537.P16333193763157291703

/-! ## A243537.P10978424004826260568

`eq[4, A095048(A065033(2*n))]`
-/

namespace A243537.P10978424004826260568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243537.P10978424004826260568

/-! ## A243537.P1313365537745431403

`eq[4, A095048(A123108(2*n))]`
-/

namespace A243537.P1313365537745431403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243537.P1313365537745431403

/-! ## A243537.P3299667950109353107

`eq[4, A095048(A233583(n+1))]`
-/

namespace A243537.P3299667950109353107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243537.P3299667950109353107

/-!
# A243538: Numbers n such that the list of divisors of n contains 5 distinct digits (in base 10).

The programs for A243538, there is no canonical definition to state claims against.
-/

/-! ## A243538.P15842624595309896664

`eq[5, A095048(n+1)]+1`
-/

namespace A243538.P15842624595309896664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243538.P15842624595309896664

/-! ## A243538.P16311339546654504924

`eq[5, A095048(A028310(n))]`
-/

namespace A243538.P16311339546654504924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243538.P16311339546654504924

/-! ## A243538.P9641503326318236941

`A020725(eq[5, A095048(n+1)])`
-/

namespace A243538.P9641503326318236941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243538.P9641503326318236941

/-! ## A243538.P5808658101956028051

`A065475(eq[5, A095048(n+1)])`
-/

namespace A243538.P5808658101956028051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243538.P5808658101956028051

/-! ## A243538.P13729048232538653445

`A114637(eq[5, A095048(n+1)])`
-/

namespace A243538.P13729048232538653445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243538.P13729048232538653445

/-! ## A243538.P17184387077191528645

`eq[5, A095048(A000007(n)+n)]`
-/

namespace A243538.P17184387077191528645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243538.P17184387077191528645

/-! ## A243538.P16667404098478788771

`eq[5, A095048(A065033(2*n))]`
-/

namespace A243538.P16667404098478788771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243538.P16667404098478788771

/-! ## A243538.P17294466532191653907

`eq[5, A095048(A123108(2*n))]`
-/

namespace A243538.P17294466532191653907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243538.P17294466532191653907

/-! ## A243538.P6698478454394480741

`A113484(eq[5, A095048(n+1)])`
-/

namespace A243538.P6698478454394480741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243538.P6698478454394480741

/-! ## A243538.P5831343005565381975

`eq[5, A095048(A233583(n+1))]`
-/

namespace A243538.P5831343005565381975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243538.P5831343005565381975

/-!
# A243539: Numbers n such that the list of divisors of n contains 6 distinct digits (in base 10).

The programs for A243539, there is no canonical definition to state claims against.
-/

/-! ## A243539.P7490628322902917012

`eq[6, A095048(n+1)]+1`
-/

namespace A243539.P7490628322902917012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243539.P7490628322902917012

/-! ## A243539.P11228681744762062475

`eq[6, A095048(A028310(n))]`
-/

namespace A243539.P11228681744762062475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243539.P11228681744762062475

/-! ## A243539.P15684497313425961719

`A020725(eq[6, A095048(n+1)])`
-/

namespace A243539.P15684497313425961719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243539.P15684497313425961719

/-! ## A243539.P13270958237013943562

`A065475(eq[6, A095048(n+1)])`
-/

namespace A243539.P13270958237013943562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243539.P13270958237013943562

/-! ## A243539.P17320443911588365363

`eq[6, A095048(A000007(n)+n)]`
-/

namespace A243539.P17320443911588365363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243539.P17320443911588365363

/-! ## A243539.P2546599284423733822

`eq[6, A095048(A060000(n+1))]`
-/

namespace A243539.P2546599284423733822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243539.P2546599284423733822

/-! ## A243539.P10605969714571450087

`eq[6, A095048(A065033(2*n))]`
-/

namespace A243539.P10605969714571450087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243539.P10605969714571450087

/-! ## A243539.P17993528653733801938

`eq[6, A095048(A123108(2*n))]`
-/

namespace A243539.P17993528653733801938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243539.P17993528653733801938

/-! ## A243539.P14543364613033147258

`A113484(eq[6, A095048(n+1)])`
-/

namespace A243539.P14543364613033147258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243539.P14543364613033147258

/-! ## A243539.P14845813858602974084

`eq[6, A095048(A233583(n+1))]`
-/

namespace A243539.P14845813858602974084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243539.P14845813858602974084

/-!
# A243540: Numbers n such that the list of divisors of n contains 7 distinct digits (in base 10).

The programs for A243540, there is no canonical definition to state claims against.
-/

/-! ## A243540.P233649459589483155

`eq[7, A095048(n+1)]+1`
-/

namespace A243540.P233649459589483155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243540.P233649459589483155

/-! ## A243540.P11179116000753138787

`eq[7, A095048(A028310(n))]`
-/

namespace A243540.P11179116000753138787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243540.P11179116000753138787

/-! ## A243540.P6944892818071076760

`A020725(eq[7, A095048(n+1)])`
-/

namespace A243540.P6944892818071076760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243540.P6944892818071076760

/-! ## A243540.P6250528605168621821

`A065475(eq[7, A095048(n+1)])`
-/

namespace A243540.P6250528605168621821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243540.P6250528605168621821

/-! ## A243540.P3860632410896865973

`eq[7, A095048(A000038(n)+n)]`
-/

namespace A243540.P3860632410896865973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243540.P3860632410896865973

/-! ## A243540.P2380011274864479347

`eq[7, A095048(abs(n-A000038(n)))]`
-/

namespace A243540.P2380011274864479347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243540.P2380011274864479347

/-! ## A243540.P8466078190016738468

`eq[7, A095048(A000007(n)+n)]`
-/

namespace A243540.P8466078190016738468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243540.P8466078190016738468

/-! ## A243540.P2513949685962364547

`eq[7, A095048(A123108(2*n))]`
-/

namespace A243540.P2513949685962364547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243540.P2513949685962364547

/-! ## A243540.P4844305032034469922

`A113484(eq[7, A095048(n+1)])`
-/

namespace A243540.P4844305032034469922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243540.P4844305032034469922

/-! ## A243540.P14004310248640708306

`eq[7, A095048(A233583(n+1))]`
-/

namespace A243540.P14004310248640708306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243540.P14004310248640708306

/-!
# A243541: Numbers n such that the list of divisors of n contains 8 distinct digits (in base 10).

The programs for A243541, there is no canonical definition to state claims against.
-/

/-! ## A243541.P10521045915519433010

`eq[8, A095048(n+1)]+1`
-/

namespace A243541.P10521045915519433010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243541.P10521045915519433010

/-! ## A243541.P16553593978246335009

`eq[8, A095048(A028310(n))]`
-/

namespace A243541.P16553593978246335009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243541.P16553593978246335009

/-! ## A243541.P3345603146137684541

`A020725(eq[8, A095048(n+1)])`
-/

namespace A243541.P3345603146137684541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243541.P3345603146137684541

/-! ## A243541.P16821625111974888566

`A065475(eq[8, A095048(n+1)])`
-/

namespace A243541.P16821625111974888566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243541.P16821625111974888566

/-! ## A243541.P16212594526417841426

`A114637(eq[8, A095048(n+1)])`
-/

namespace A243541.P16212594526417841426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243541.P16212594526417841426

/-! ## A243541.P6414569452232453327

`eq[8, A095048(A000007(n)+n)]`
-/

namespace A243541.P6414569452232453327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243541.P6414569452232453327

/-! ## A243541.P9359423724901251533

`eq[8, A095048(A065033(2*n))]`
-/

namespace A243541.P9359423724901251533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243541.P9359423724901251533

/-! ## A243541.P8567297924715207800

`A113484(eq[8, A095048(n+1)])`
-/

namespace A243541.P8567297924715207800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243541.P8567297924715207800

/-! ## A243541.P14764070732065959222

`eq[8, A095048(A233583(n+1))]`
-/

namespace A243541.P14764070732065959222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243541.P14764070732065959222

/-!
# A243542: Numbers n such that the list of divisors of n contains 9 distinct digits (in base 10).

The programs for A243542, there is no canonical definition to state claims against.
-/

/-! ## A243542.P11806363723115158311

`eq[9, A095048(n+1)]+1`
-/

namespace A243542.P11806363723115158311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243542.P11806363723115158311

/-! ## A243542.P6864685296361146025

`eq[9, A095048(n^floor(atan(n)))]`
-/

namespace A243542.P6864685296361146025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243542.P6864685296361146025

/-! ## A243542.P11562388502114637348

`eq[9, A095048(A028310(n))]`
-/

namespace A243542.P11562388502114637348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243542.P11562388502114637348

/-! ## A243542.P13591600049829637949

`A020725(eq[9, A095048(n+1)])`
-/

namespace A243542.P13591600049829637949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243542.P13591600049829637949

/-! ## A243542.P7384186840021299017

`A065475(eq[9, A095048(n+1)])`
-/

namespace A243542.P7384186840021299017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243542.P7384186840021299017

/-! ## A243542.P12606156263675058253

`A114637(eq[9, A095048(n+1)])`
-/

namespace A243542.P12606156263675058253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243542.P12606156263675058253

/-! ## A243542.P7135392082682453914

`eq[9, A095048(A000007(n)+n)]`
-/

namespace A243542.P7135392082682453914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243542.P7135392082682453914

/-! ## A243542.P16082382448492766600

`eq[9, A095048(A233583(n+1))]`
-/

namespace A243542.P16082382448492766600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243542.P16082382448492766600

/-!
# A243543: Smallest number whose list of divisors contains n distinct digits (in base 10).

The programs for A243543, there is no canonical definition to state claims against.
-/

/-! ## A243543.P2681440369531882024

`A133488(A140595(n))`
-/

namespace A243543.P2681440369531882024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133488 (A140595 n).toNat

end

end A243543.P2681440369531882024

/-! ## A243543.P8229020959074384638

`A133488(A180198(n+1))`
-/

namespace A243543.P8229020959074384638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133488 (A180198 (n + 1)).toNat

end

end A243543.P8229020959074384638

/-! ## A243543.P17915185691691884607

`A133488(A180199(n+1))`
-/

namespace A243543.P17915185691691884607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133488 (A180199 (n + 1)).toNat

end

end A243543.P17915185691691884607

/-! ## A243543.P17988699233770685419

`A133488(A183081(n+1))`
-/

namespace A243543.P17988699233770685419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133488 (A183081 (n + 1)).toNat

end

end A243543.P17988699233770685419

/-! ## A243543.P16467224399563328698

`A133488(A187098(n+1))`
-/

namespace A243543.P16467224399563328698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133488 (A187098 (n + 1)).toNat

end

end A243543.P16467224399563328698

/-!
# A243544: Primes p such that p^2 - p + 1 is semiprime.

The programs for A243544, there is no canonical definition to state claims against.
-/

/-! ## A243544.P1140452401465383607

`p?[A180748(n+1)]`
-/

namespace A243544.P1140452401465383607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243544.P1140452401465383607

/-! ## A243544.P14264242004904502813

`p?[A085746(n+1)+1]`
-/

namespace A243544.P14264242004904502813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085746 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243544.P14264242004904502813

/-! ## A243544.P9922937987329881997

`record[A006530(A180748(n+3))]`
-/

namespace A243544.P9922937987329881997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A180748 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243544.P9922937987329881997

/-! ## A243544.P14086650482288642790

`filter[A180748(n+1), A010051(#)]`
-/

namespace A243544.P14086650482288642790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A243544.P14086650482288642790

/-! ## A243544.P15218180992539702017

`filter[A180748(n+1), A323153(#)]`
-/

namespace A243544.P15218180992539702017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A243544.P15218180992539702017

/-! ## A243544.P16724776218134708239

`record[A006530(A085746(n+1)+1)]`
-/

namespace A243544.P16724776218134708239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085746 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243544.P16724776218134708239

/-! ## A243544.P9073048474229288711

`record[A020639(A085746(n+1)+1)]`
-/

namespace A243544.P9073048474229288711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085746 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243544.P9073048474229288711

/-! ## A243544.P13324276742505670749

`∩[A000040(n+1), A180748(n+1)]`
-/

namespace A243544.P13324276742505670749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P13324276742505670749

/-! ## A243544.P10915694707532773015

`∩[A006005(n+1), A180748(n+1)]`
-/

namespace A243544.P10915694707532773015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P10915694707532773015

/-! ## A243544.P1427659917769156306

`∩[A008578(n+1), A180748(n+1)]`
-/

namespace A243544.P1427659917769156306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P1427659917769156306

/-! ## A243544.P14915630292492643943

`∩[A045344(n+1), A180748(n+1)]`
-/

namespace A243544.P14915630292492643943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P14915630292492643943

/-! ## A243544.P10681143875617205019

`∩[A046022(n+1), A180748(n+1)]`
-/

namespace A243544.P10681143875617205019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P10681143875617205019

/-! ## A243544.P16852967874286971374

`∩[A051948(n+1), A180748(n+1)]`
-/

namespace A243544.P16852967874286971374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P16852967874286971374

/-! ## A243544.P3532167937532955619

`∩[A053813(n+1), A180748(n+1)]`
-/

namespace A243544.P3532167937532955619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P3532167937532955619

/-! ## A243544.P7331084099178913566

`∩[A065091(n+1), A180748(n+1)]`
-/

namespace A243544.P7331084099178913566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P7331084099178913566

/-! ## A243544.P1385924451867545546

`∩[A067126(n+1), A180748(n+1)]`
-/

namespace A243544.P1385924451867545546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P1385924451867545546

/-! ## A243544.P17623223291306561541

`∩[A083249(n+1), A180748(n+1)]`
-/

namespace A243544.P17623223291306561541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P17623223291306561541

/-! ## A243544.P7087901031532350393

`∩[A116974(n+1), A180748(n+1)]`
-/

namespace A243544.P7087901031532350393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P7087901031532350393

/-! ## A243544.P17306402772241108659

`∩[A180748(n+1), A140475(n+1)]`
-/

namespace A243544.P17306402772241108659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P17306402772241108659

/-! ## A243544.P16812300394296007739

`∩[A158611(n+1), A180748(n+1)]`
-/

namespace A243544.P16812300394296007739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243544.P16812300394296007739

/-!
# A243549: Number of simple connected graphs with n nodes that are non-integral and have no subgraph isomorphic to the bowtie graph.

The programs for A243549, there is no canonical definition to state claims against.
-/

/-! ## A243549.P14857926222850422951

`A242792(n+1)-A243548(n+1)`
-/

namespace A243549.P14857926222850422951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242792 (n + 1) - A243548 (n + 1)

end

end A243549.P14857926222850422951

/-! ## A243549.P11437092550001570709

`A001349(n+1)-A243249(n+1)-A243548(n+1)`
-/

namespace A243549.P11437092550001570709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243249 (n + 1) - A243548 (n + 1)

end

end A243549.P11437092550001570709

/-! ## A243549.P15786620556107054746

`A201922(A000124(n))-(A243548(n+1)+A243249(n+1))`
-/

namespace A243549.P15786620556107054746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - (A243548 (n + 1) + A243249 (n + 1))

end

end A243549.P15786620556107054746

/-! ## A243549.P13321434496310252354

`A003049(n+1)+A158007(n+1)-A243249(n+1)-A243548(n+1)`
-/

namespace A243549.P13321434496310252354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A243249 (n + 1)) - A243548 (n + 1)

end

end A243549.P13321434496310252354

/-! ## A243549.P1996149163643382178

`A048192(n+1)+A241843(n+1)-A243249(n+1)-A243548(n+1)`
-/

namespace A243549.P1996149163643382178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A243249 (n + 1)) - A243548 (n + 1)

end

end A243549.P1996149163643382178

/-!
# A243550: Number of simple connected graphs with n nodes that are planar and have no subgraph isomorphic to the bowtie graph.

The programs for A243550, there is no canonical definition to state claims against.
-/

/-! ## A243550.P17562341039680091722

`A325534(n)+A241315(A005282(n+1))`
-/

namespace A243550.P17562341039680091722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 n + A241315 (A005282 (n + 1)).toNat

end

end A243550.P17562341039680091722

/-! ## A243550.P13250657623291054960

`A030361(A151075(n))`
-/

namespace A243550.P13250657623291054960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030361 (A151075 n).toNat

end

end A243550.P13250657623291054960

/-! ## A243550.P8112556898949665170

`A341257(A036612(n+1))`
-/

namespace A243550.P8112556898949665170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341257 (A036612 (n + 1)).toNat

end

end A243550.P8112556898949665170

/-!
# A243551: Number of simple connected graphs with n nodes that have no subgraph isomorphic to the bowtie graph or K_4.

The programs for A243551, there is no canonical definition to state claims against.
-/

/-! ## A243551.P11256280966755246223

`A023190(A352659(n))`
-/

namespace A243551.P11256280966755246223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A352659 n).toNat

end

end A243551.P11256280966755246223

/-! ## A243551.P15581531916433732807

`A023190(A187945(n!))`
-/

namespace A243551.P15581531916433732807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A187945 (Nat.factorial n)).toNat

end

end A243551.P15581531916433732807

/-! ## A243551.P3672741484755996915

`A317141(∏[A116637(n)])`
-/

namespace A243551.P3672741484755996915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243551.P3672741484755996915

/-!
# A243553: Number of simple connected graphs with n nodes that are Hamiltonian and have no subgraph isomorphic to bull graph.

The programs for A243553, there is no canonical definition to state claims against.
-/

/-! ## A243553.P386482235890422334

`or(Δ[A130766(n)], A243275(n+1))`
-/

namespace A243553.P386482235890422334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A243275 (n + 1))

end

end A243553.P386482235890422334

/-! ## A243553.P14461367324135161379

`or(A080843(A007504(n)), A243275(n+1))`
-/

namespace A243553.P14461367324135161379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080843 (A007504 n).toNat) (A243275 (n + 1))

end

end A243553.P14461367324135161379

/-!
# A243555: Number of simple connected graphs with n nodes that are Eulerian and have no subgraph isomorphic to bull graph.

The programs for A243555, there is no canonical definition to state claims against.
-/

/-! ## A243555.P6668149280840013215

`∑[A078027(record[A108715(n)])]`
-/

namespace A243555.P6668149280840013215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108715 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243555.P6668149280840013215

/-! ## A243555.P5441937234154153799

`A339155(n+1)+A339104(A356185(n))`
-/

namespace A243555.P5441937234154153799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339155 (n + 1) + A339104 (A356185 n).toNat

end

end A243555.P5441937234154153799

/-! ## A243555.P15638089391763834035

`or(A000393(n+1), A007953(A212804(n)))`
-/

namespace A243555.P15638089391763834035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000393 (n + 1)) (A007953 (A212804 n).toNat)

end

end A243555.P15638089391763834035

/-! ## A243555.P8353320187895411843

`or(A293548(n), A293553(A181807(n+1)))`
-/

namespace A243555.P8353320187895411843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A293548 n) (A293553 (A181807 (n + 1)).toNat)

end

end A243555.P8353320187895411843

/-! ## A243555.P14474571855956814531

`A002995(n)-A072480(A072458(2*n+3))`
-/

namespace A243555.P14474571855956814531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 n - A072480 (A072458 (2 * n + 3)).toNat

end

end A243555.P14474571855956814531

/-!
# A243557: Number of simple connected graphs with n nodes that are non-integral and have no subgraph isomorphic to bull graph.

The programs for A243557, there is no canonical definition to state claims against.
-/

/-! ## A243557.P7385899757379234428

`A244427(n+1)-A243556(n+1)`
-/

namespace A243557.P7385899757379234428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244427 (n + 1) - A243556 (n + 1)

end

end A243557.P7385899757379234428

/-! ## A243557.P16047946755857761526

`A243559(n+1)+char[3]-A243556(n+1)`
-/

namespace A243557.P16047946755857761526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243559 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A243556 (n + 1)

end

end A243557.P16047946755857761526

/-! ## A243557.P8026089014668783646

`char[3]+A243568(n+1)+char[3]-A243556(n+1)`
-/

namespace A243557.P8026089014668783646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A243568 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) - A243556 (n + 1)

end

end A243557.P8026089014668783646

/-! ## A243557.P14186641278564710255

`A243568(n+1)+A005926(n)-A243556(n+1)`
-/

namespace A243557.P14186641278564710255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243568 (n + 1) + (A005926 n - A243556 (n + 1))

end

end A243557.P14186641278564710255

/-! ## A243557.P4910476078324615154

`A243559(n+1)-A243556(A078315(n+1)+n)`
-/

namespace A243557.P4910476078324615154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243559 (n + 1) - A243556 (A078315 (n + 1) + (n : ℤ)).toNat

end

end A243557.P4910476078324615154

/-!
# A243559: Number of simple connected graphs with n nodes that have no subgraph isomorphic to bull graph or K_4.

The programs for A243559, there is no canonical definition to state claims against.
-/

/-! ## A243559.P10298467791711199348

`A243568(n+1)+char[3]`
-/

namespace A243559.P10298467791711199348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243568 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243559.P10298467791711199348

/-! ## A243559.P9147264225627038952

`A244427(n+1)-char[3]`
-/

namespace A243559.P9147264225627038952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244427 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243559.P9147264225627038952

/-! ## A243559.P179223206762126923

`or(A007889(n)%2, A243568(n+1))`
-/

namespace A243559.P179223206762126923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A007889 n) 2) (A243568 (n + 1))

end

end A243559.P179223206762126923

/-! ## A243559.P6194894835311566059

`A078315(n+1)+A243568(n+1)-1`
-/

namespace A243559.P6194894835311566059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1) + (A243568 (n + 1) - 1)

end

end A243559.P6194894835311566059

/-! ## A243559.P7811768698586728204

`or(A001222(gcd(2^(n+1)+1, (n+1)²+1)), A243568(n+1))`
-/

namespace A243559.P7811768698586728204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (Nat.gcd (2 ^ (n + 1) + 1) ((n + 1) ^ 2 + 1))) (A243568 (n + 1))

end

end A243559.P7811768698586728204

/-!
# A243562: Number of simple connected graphs with n nodes that are Eulerian and have no subgraph isomorphic to diamond graph.

The programs for A243562, there is no canonical definition to state claims against.
-/

/-! ## A243562.P6823547091927633510

`A093110(A289470(n+1))`
-/

namespace A243562.P6823547091927633510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A289470 (n + 1)).toNat

end

end A243562.P6823547091927633510

/-! ## A243562.P13967109907997396948

`A294201(n+1)+A053604(A053557(n))`
-/

namespace A243562.P13967109907997396948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294201 (n + 1) + A053604 (A053557 n).toNat

end

end A243562.P13967109907997396948

/-! ## A243562.P1293048670110608586

`A322117(A173911(2*n+3))-A079944(n)`
-/

namespace A243562.P1293048670110608586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322117 (A173911 (2 * n + 3)).toNat - A079944 n

end

end A243562.P1293048670110608586

/-!
# A243563: Number of simple connected graphs with n nodes that are non-integral and have no subgraph isomorphic to diamond graph.

The programs for A243563, there is no canonical definition to state claims against.
-/

/-! ## A243563.P9471376095140932866

`A002266(A288811(n)+A116485(n))`
-/

namespace A243563.P9471376095140932866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A288811 n + A116485 n).toNat

end

end A243563.P9471376095140932866

/-! ## A243563.P2738584289669119641

`A049639(∑[3-2*char[∑[n]]]+(5^n-2*3^n+1)/4)`
-/

namespace A243563.P2738584289669119641
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + ((5 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + 1 : ℚ) / 4)).toNat

end

end A243563.P2738584289669119641

/-! ## A243563.P233589348441988736

`∑[A330217(A081156(n))]`
-/

namespace A243563.P233589348441988736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330217 (A081156 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243563.P233589348441988736

/-!
# A243565: Number of simple connected graphs with n nodes that are planar and have no subgraph isomorphic to diamond graph.

The programs for A243565, there is no canonical definition to state claims against.
-/

/-! ## A243565.P9970249524128767521

`A135646(C(n, 2)*a(n-1)+1)` with `a(0)=1`
-/

namespace A243565.P9970249524128767521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135646 ((Nat.choose n 2 : ℤ) * a (n - 1) + 1).toNat

end

end A243565.P9970249524128767521

/-! ## A243565.P9290961545100574304

`A333524(A164150(n))`
-/

namespace A243565.P9290961545100574304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333524 (A164150 n).toNat

end

end A243565.P9290961545100574304

/-! ## A243565.P15811251646156457980

`A333524(A164387(n))`
-/

namespace A243565.P15811251646156457980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333524 (A164387 n).toNat

end

end A243565.P15811251646156457980

/-!
# A243566: Triangle read by rows giving successive states of cellular automaton generated by "Rule 109" initiated with a single ON (black) cell.

The programs for A243566, there is no canonical definition to state claims against.
-/

/-! ## A243566.P17470371828869350526

`A035263(lcm(A080427(2*n+1), A297469(3*(n+1))))`
-/

namespace A243566.P17470371828869350526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (Int.lcm (A080427 (2 * n + 1)) (A297469 (3 * (n + 1))))

end

end A243566.P17470371828869350526

/-! ## A243566.P15329786514158066012

`A359902(A057019(n+1)+2)`
-/

namespace A243566.P15329786514158066012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359902 (A057019 (n + 1) + 2).toNat

end

end A243566.P15329786514158066012

/-! ## A243566.P15125123527303336292

`∑{d}[A098805(A057019(n+1)), A008683(#)]`
-/

namespace A243566.P15125123527303336292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098805 (A057019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A243566.P15125123527303336292

/-! ## A243566.P11319755727148292191

`round((1/A098805(A057019(n+1)))^A000040(n+1))`
-/

namespace A243566.P11319755727148292191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 / (A098805 (A057019 (n + 1)).toNat : ℚ)) ^ (A000040 (n + 1) : ℤ))

end

end A243566.P11319755727148292191

/-! ## A243566.P8986302285334293595

`A266605(C(A046523(n+3), A027750(2*(n+2))))`
-/

namespace A243566.P8986302285334293595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 (Nat.choose (A046523 (n + 3)).toNat (A027750 (2 * (n + 2))).toNat)

end

end A243566.P8986302285334293595

/-!
# A243567: Number of simple connected graphs with n nodes that have no subgraph isomorphic to diamond graph or the bowtie graph.

The programs for A243567, there is no canonical definition to state claims against.
-/

/-! ## A243567.P16566926502350444580

`A160719(A037444(n))`
-/

namespace A243567.P16566926502350444580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160719 (A037444 n).toNat

end

end A243567.P16566926502350444580

/-! ## A243567.P10311430300680550893

`A026834(A363441(n))`
-/

namespace A243567.P10311430300680550893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A363441 n).toNat

end

end A243567.P10311430300680550893

/-! ## A243567.P7122696230196469611

`A333943(A337721(n))`
-/

namespace A243567.P7122696230196469611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333943 (A337721 n).toNat

end

end A243567.P7122696230196469611

/-!
# A243568: Number of simple connected graphs with n nodes that have no subgraph isomorphic to diamond graph or the bull graph.

The programs for A243568, there is no canonical definition to state claims against.
-/

/-! ## A243568.P17115667011117844278

`A243559(n+1)-char[3]`
-/

namespace A243568.P17115667011117844278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243559 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243568.P17115667011117844278

/-! ## A243568.P1494454854218082099

`A244427(n+1)-char[3]-char[3]`
-/

namespace A243568.P1494454854218082099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244427 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243568.P1494454854218082099

/-! ## A243568.P17220722338898859737

`A244427(n+1)-A005926(n)`
-/

namespace A243568.P17220722338898859737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244427 (n + 1) - A005926 n

end

end A243568.P17220722338898859737

/-! ## A243568.P18255197131130918831

`and(-A135517(n), A243559(n+1))`
-/

namespace A243568.P18255197131130918831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A135517 n) (A243559 (n + 1))

end

end A243568.P18255197131130918831

/-! ## A243568.P11770332879793281676

`and(A243559(n+1), A244427(n+1))`
-/

namespace A243568.P11770332879793281676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243559 (n + 1)) (A244427 (n + 1))

end

end A243568.P11770332879793281676

/-!
# A243569: Unsigned Stirling numbers of the first kind s(n,8).

The programs for A243569, there is no canonical definition to state claims against.
-/

/-! ## A243569.P12370411651620098830

`A130534(eq[7, A002262(n)])`
-/

namespace A243569.P12370411651620098830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243569.P12370411651620098830

/-! ## A243569.P13165555361359528714

`A130534(eq[7, A144328(n+1)])`
-/

namespace A243569.P13165555361359528714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243569.P13165555361359528714

/-! ## A243569.P13719668686568530504

`A130534(eq[8, A002260(n+1)])`
-/

namespace A243569.P13719668686568530504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243569.P13719668686568530504

/-! ## A243569.P6775256261464861578

`A130534(eq[19, A037126(n+1)])`
-/

namespace A243569.P6775256261464861578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243569.P6775256261464861578

/-! ## A243569.P13785499242016481912

`A132393(A000217(n+10)-10-comp[2*n])`
-/

namespace A243569.P13785499242016481912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000217 (n + 10) - 10 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A243569.P13785499242016481912

/-!
# A243570: Unsigned Stirling numbers of the first kind s(n,9).

The programs for A243570, there is no canonical definition to state claims against.
-/

/-! ## A243570.P11433478211819092342

`A130534(eq[8, A002262(n)])`
-/

namespace A243570.P11433478211819092342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243570.P11433478211819092342

/-! ## A243570.P2811441115417652647

`A132393(eq[9, A002262(n)])`
-/

namespace A243570.P2811441115417652647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243570.P2811441115417652647

/-! ## A243570.P14274844335305390602

`A094638(A051936(n+9)+1)`
-/

namespace A243570.P14274844335305390602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A051936 (n + 9) + 1).toNat

end

end A243570.P14274844335305390602

/-! ## A243570.P1290093195859904103

`A130534(A000096(n+7)+9)`
-/

namespace A243570.P1290093195859904103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A000096 (n + 7) + 9).toNat

end

end A243570.P1290093195859904103

/-! ## A243570.P10549207695117663444

`A130534(eq[8, A144328(n+1)])`
-/

namespace A243570.P10549207695117663444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243570.P10549207695117663444

/-! ## A243570.P2035258176189971525

`A130534(eq[9, A002260(n+1)])`
-/

namespace A243570.P2035258176189971525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243570.P2035258176189971525

/-! ## A243570.P5399760733031773758

`A132393(eq[10, A002260(n+1)])`
-/

namespace A243570.P5399760733031773758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243570.P5399760733031773758

/-!
# A243571: Irregular triangular array generated as in Comments; contains every positive integer exactly once.

The programs for A243571, there is no canonical definition to state claims against.
-/

/-! ## A243571.P7486882089924210118

`A053645(A389924(n+2))`
-/

namespace A243571.P7486882089924210118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A389924 (n + 2)).toNat

end

end A243571.P7486882089924210118

/-! ## A243571.P18396491064154999895

`A334111(record[A003313(A333123(3*(n+1)))])`
-/

namespace A243571.P18396491064154999895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A333123 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243571.P18396491064154999895

/-! ## A243571.P15937313871121011972

`A334111(record[A008616(A325393(n))])`
-/

namespace A243571.P15937313871121011972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A325393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243571.P15937313871121011972

/-! ## A243571.P15529619091634180653

`A334111(comp[A000079(n+4)-A165699(n)])`
-/

namespace A243571.P15529619091634180653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4) - A165699 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334111 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A243571.P15529619091634180653

/-! ## A243571.P15887077711830044528

`A334111(comp[A000079(n+4)-A015357(n+8)])`
-/

namespace A243571.P15887077711830044528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4) - A015357 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334111 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A243571.P15887077711830044528

/-!
# A243574: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A243574, there is no canonical definition to state claims against.
-/

/-! ## A243574.P8061890456184358660

`A242361(2*n+1-A066628(n))`
-/

namespace A243574.P8061890456184358660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242361 ((2 * n + 1 : ℤ) - A066628 n).toNat

end

end A243574.P8061890456184358660

/-! ## A243574.P6201774304590562818

`A242361(A133512(n+1)+1)`
-/

namespace A243574.P6201774304590562818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242361 (A133512 (n + 1) + 1).toNat

end

end A243574.P6201774304590562818

/-! ## A243574.P8996834959680445086

`A242361(lt[A377091(2*(n+1)), A119464(3*n+2)])`
-/

namespace A243574.P8996834959680445086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119464 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242361 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243574.P8996834959680445086

/-!
# A243577: Integers of the form 8k+7 that can be written as a sum of four distinct 'almost consecutive' squares.

The programs for A243577, there is no canonical definition to state claims against.
-/

/-! ## A243577.P16941258798455672016

`or(7, A157426(A092097(n)))`
-/

namespace A243577.P16941258798455672016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A157426 (A092097 n).toNat)

end

end A243577.P16941258798455672016

/-!
# A243578: Integers j of the form 8k+7 that are sum of distinct squares of the form m, m+1, m+2, m+4, where m == 1 (mod 4).

The programs for A243578, the canonical program `A243578.P876948209256566826` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243578 has offset 1).

The definition of A243578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243578.P876948209256566826

`64*(n+1)²-40*(n+1)+15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243578

/-- `64*(n+1)²-40*(n+1)+15` -/
def P876948209256566826.Spec : Prop :=
  ∀ n, P876948209256566826.a n = A243578 (n + 1)

theorem P876948209256566826.correct : P876948209256566826.Spec := by
  intro n
  simp only [A243578, Nat.add_sub_cancel]

end A243578

/-! ## A243578.P2842027271580106853

`A243577(4*n+1)`
-/

namespace A243578.P2842027271580106853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243577 (4 * n + 1)

end

end A243578.P2842027271580106853

namespace A243578

/-- `A243577(4*n+1)` -/
def P2842027271580106853.Spec : Prop :=
  ∀ n, P2842027271580106853.a n = A243578 (n + 1)

end A243578

/-!
# A243579: Integers of the form 8k+7 that can be written as a sum of four distinct squares of the form m, m+2, m+4, m+5, where m == 1 (mod 4).

The programs for A243579, the canonical program `A243579.P1705755408432460020` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243579 has offset 1).

The definition of A243579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243579.P1705755408432460020

`64*(n+1)²-8*(n+1)+15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243579

/-- `64*(n+1)²-8*(n+1)+15` -/
def P1705755408432460020.Spec : Prop :=
  ∀ n, P1705755408432460020.a n = A243579 (n + 1)

theorem P1705755408432460020.correct : P1705755408432460020.Spec := by
  intro n
  simp only [A243579, Nat.add_sub_cancel]

end A243579

/-! ## A243579.P12235471033663982284

`A243577(4*(n+1)-2)`
-/

namespace A243579.P12235471033663982284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243577 (4 * (n + 1) - 2)

end

end A243579.P12235471033663982284

namespace A243579

/-- `A243577(4*(n+1)-2)` -/
def P12235471033663982284.Spec : Prop :=
  ∀ n, P12235471033663982284.a n = A243579 (n + 1)

end A243579

/-!
# A243580: Integers of the form 8k + 7 that can be written as a sum of four distinct squares of the form m, m + 1, m + 3, m + 5, where m == 2 (mod 4).

The programs for A243580, the canonical program `A243580.P7694028110304130430` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243580 has offset 1).

The definition of A243580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243580.P7694028110304130430

`64*(n+1)²+8*(n+1)+15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243580

/-- `64*(n+1)²+8*(n+1)+15` -/
def P7694028110304130430.Spec : Prop :=
  ∀ n, (P7694028110304130430.a n : ℤ) = A243580 (n + 1)

theorem P7694028110304130430.correct : P7694028110304130430.Spec := by
  intro n
  simp only [A243580, Nat.add_sub_cancel]

end A243580

/-! ## A243580.P9651759365412400666

`A243577(4*(n+1)-1)`
-/

namespace A243580.P9651759365412400666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243577 (4 * (n + 1) - 1)

end

end A243580.P9651759365412400666

namespace A243580

/-- `A243577(4*(n+1)-1)` -/
def P9651759365412400666.Spec : Prop :=
  ∀ n, P9651759365412400666.a n = A243580 (n + 1)

end A243580

/-!
# A243581: Integers of the form 8k + 7 that can be written as a sum of four distinct squares of the form m, m + 2, m + 3, m + 4, where m == 2 (mod 4).

The programs for A243581, the canonical program `A243581.P10700892721783080677` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243581 has offset 1).

The definition of A243581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243581.P10700892721783080677

`64*(n+1)²+40*(n+1)+15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243581

/-- `64*(n+1)²+40*(n+1)+15` -/
def P10700892721783080677.Spec : Prop :=
  ∀ n, (P10700892721783080677.a n : ℤ) = A243581 (n + 1)

theorem P10700892721783080677.correct : P10700892721783080677.Spec := by
  intro n
  simp only [A243581, Nat.add_sub_cancel]

end A243581

/-! ## A243581.P6157858069565733022

`A243577(4*(n+1))`
-/

namespace A243581.P6157858069565733022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243577 (4 * (n + 1))

end

end A243581.P6157858069565733022

namespace A243581

/-- `A243577(4*(n+1))` -/
def P6157858069565733022.Spec : Prop :=
  ∀ n, P6157858069565733022.a n = A243581 (n + 1)

end A243581

/-! ## A243581.P13811566489871987211

`or(1, A243577(A008586(n+1)))`
-/

namespace A243581.P13811566489871987211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A243577 (A008586 (n + 1)).toNat)

end

end A243581.P13811566489871987211

namespace A243581

/-- `or(1, A243577(A008586(n+1)))` -/
def P13811566489871987211.Spec : Prop :=
  ∀ n, P13811566489871987211.a n = A243581 (n + 1)

end A243581

/-! ## A243581.P16679952120632501123

`A243577(A008586(n+1))/A007318(and(1, -n))`
-/

namespace A243581.P16679952120632501123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243577 (A008586 (n + 1)).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A243581.P16679952120632501123

namespace A243581

/-- `A243577(A008586(n+1))/A007318(and(1, -n))` -/
def P16679952120632501123.Spec : Prop :=
  ∀ n, P16679952120632501123.a n = (A243581 (n + 1) : ℚ)

end A243581

/-! ## A243581.P645019571261055499

`A027694(8*n+10)`
-/

namespace A243581.P645019571261055499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027694 (8 * n + 10)

end

end A243581.P645019571261055499

namespace A243581

/-- `A027694(8*n+10)` -/
def P645019571261055499.Spec : Prop :=
  ∀ n, P645019571261055499.a n = A243581 (n + 1)

end A243581

/-! ## A243581.P2962710855682306826

`A243577(A008586(n+1))/A007318((n²-n)/2)`
-/

namespace A243581.P2962710855682306826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243577 (A008586 (n + 1)).toNat : ℚ) / (A007318 (SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2)).toNat : ℚ)

end

end A243581.P2962710855682306826

namespace A243581

/-- `A243577(A008586(n+1))/A007318((n²-n)/2)` -/
def P2962710855682306826.Spec : Prop :=
  ∀ n, P2962710855682306826.a n = (A243581 (n + 1) : ℚ)

end A243581

/-!
# A243582: Integers of the form 8k+7 (A004771) that cannot be written as sum of four distinct squares.

The programs for A243582, there is no canonical definition to state claims against.
-/

/-! ## A243582.P4041777625363214936

`or(7, ∑[A028272(n)])`
-/

namespace A243582.P4041777625363214936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243582.P4041777625363214936

/-! ## A243582.P6000079216777081512

`record[or(7, A027948(n))]`
-/

namespace A243582.P6000079216777081512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A027948 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243582.P6000079216777081512

/-! ## A243582.P13913185137411868976

`record[or(7, A062131(n))]`
-/

namespace A243582.P13913185137411868976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A062131 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243582.P13913185137411868976

/-!
# A243583: Primes p for which p + 4 and p^3 + 4 are primes.

The programs for A243583, there is no canonical definition to state claims against.
-/

/-! ## A243583.P12570382230751247586

`∩[A015913(n+1), A073573(n+1)]`
-/

namespace A243583.P12570382230751247586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243583.P12570382230751247586

/-! ## A243583.P18095890677413010343

`∩[A056772(n+1), A073573(n+1)]`
-/

namespace A243583.P18095890677413010343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243583.P18095890677413010343

/-! ## A243583.P11305764356144627854

`∩[A073573(n+1), A172238(n+1)]`
-/

namespace A243583.P11305764356144627854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243583.P11305764356144627854

/-! ## A243583.P14000411181187784786

`p?[∩[A073573(n+1), A172367(n+1)]]`
-/

namespace A243583.P14000411181187784786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243583.P14000411181187784786

/-! ## A243583.P12975002223077358508

`p?[∩[A073573(n+1), A000040(n+3)-4]]`
-/

namespace A243583.P12975002223077358508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243583.P12975002223077358508

/-! ## A243583.P2589889882901282117

`∩[A073573(n+1), A124589(n+1)]`
-/

namespace A243583.P2589889882901282117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243583.P2589889882901282117

/-!
# A243585: Expansion of x*log'(C(C(x)-1)-1), C(x) = (1-sqrt(1-4*x))/(2*x).

The programs for A243585, there is no canonical definition to state claims against.
-/

/-! ## A243585.P11172706320436218312

`A007856(n+1)+n*A153294(n)`
-/

namespace A243585.P11172706320436218312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007856 (n + 1) + (n : ℤ) * A153294 n

end

end A243585.P11172706320436218312

/-! ## A243585.P4949474810468807337

`A067336(n)+A002264(A000400(n))`
-/

namespace A243585.P4949474810468807337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067336 n + A002264 (A000400 n).toNat

end

end A243585.P4949474810468807337

/-!
# A243586: Primes p such that sum of digits + 3 is prime.

The programs for A243586, the canonical program `A243586.P11937443837050676484` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243586 has offset 1).

The definition of A243586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243586.P11937443837050676484

`p?[n*A010051(A007953(n)+3)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243586

/-- `p?[n*A010051(A007953(n)+3)]` -/
def P11937443837050676484.Spec : Prop :=
  ∀ n, P11937443837050676484.a n = A243586 (n + 1)

theorem P11937443837050676484.correct : P11937443837050676484.Spec := by
  intro n
  simp only [A243586, Nat.add_sub_cancel]

end A243586

/-! ## A243586.P16970215370657850753

`p?[(n+1)*A066451(A007953(n+1))]`
-/

namespace A243586.P16970215370657850753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066451 (A007953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243586.P16970215370657850753

namespace A243586

/-- `p?[(n+1)*A066451(A007953(n+1))]` -/
def P16970215370657850753.Spec : Prop :=
  ∀ n, P16970215370657850753.a n = A243586 (n + 1)

end A243586

/-! ## A243586.P923289029127224442

`record[A014963(A106610(A064166(n)))]`
-/

namespace A243586.P923289029127224442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A106610 (A064166 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243586.P923289029127224442

namespace A243586

/-- `record[A014963(A106610(A064166(n)))]` -/
def P923289029127224442.Spec : Prop :=
  ∀ n, P923289029127224442.a n = A243586 (n + 1)

end A243586

/-! ## A243586.P13398915015994048403

`p?[A106610(3*A064166(n))]`
-/

namespace A243586.P13398915015994048403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (3 * A064166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243586.P13398915015994048403

namespace A243586

/-- `p?[A106610(3*A064166(n))]` -/
def P13398915015994048403.Spec : Prop :=
  ∀ n, P13398915015994048403.a n = A243586 (n + 1)

end A243586

/-!
# A243587: Primes p such that sum of digits + 7 is prime.

The programs for A243587, there is no canonical definition to state claims against.
-/

/-! ## A243587.P17516543706900791498

`p?[A054683(3*n+1)%A219178(n+1)]`
-/

namespace A243587.P17516543706900791498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054683 (3 * n + 1)) (A219178 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243587.P17516543706900791498

/-! ## A243587.P11037506561680469658

`A000007(A108186(n))+p?[A054683(3*n+1)]`
-/

namespace A243587.P11037506561680469658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A108186 (n + 10)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243587.P11037506561680469658

/-! ## A243587.P1001675589728111406

`A000038(A094948(n))+p?[A054683(3*n+4)]`
-/

namespace A243587.P1001675589728111406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A094948 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243587.P1001675589728111406

/-! ## A243587.P13991226353730693705

`A034699(p?[A054683(3*n+4)]*A292269(n+1))`
-/

namespace A243587.P13991226353730693705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A292269 (n + 1)).toNat

end

end A243587.P13991226353730693705

/-! ## A243587.P4743899802119043508

`p?[A054683(3*n+4)]*A000034(A001105(n))`
-/

namespace A243587.P4743899802119043508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (A001105 n).toNat

end

end A243587.P4743899802119043508

/-!
# A243588: Primes p such that sum of digits + 9 is prime.

The programs for A243588, the canonical program `A243588.P9950600176943645000` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243588 has offset 1).

The definition of A243588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243588.P3785425809592143394

`∩[A054683(n+1), A165439(n+1)]`
-/

namespace A243588.P3785425809592143394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243588.P3785425809592143394

namespace A243588

/-- `∩[A054683(n+1), A165439(n+1)]` -/
def P3785425809592143394.Spec : Prop :=
  ∀ n, (P3785425809592143394.a n : ℤ) = A243588 (n + 1)

end A243588

/-! ## A243588.P9950600176943645000

`p?[gcd(A033583(n+1), A160942(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243588

/-- `p?[gcd(A033583(n+1), A160942(n+1))]` -/
def P9950600176943645000.Spec : Prop :=
  ∀ n, (P9950600176943645000.a n : ℤ) = A243588 (n + 1)

theorem P9950600176943645000.correct : P9950600176943645000.Spec := by
  intro n
  simp only [A243588, Nat.add_sub_cancel]

end A243588

/-! ## A243588.P7942212431015052331

`p?[xor(n, 1-A186436(A007953(n+1)))]`
-/

namespace A243588.P7942212431015052331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - A186436 (A007953 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243588.P7942212431015052331

namespace A243588

/-- `p?[xor(n, 1-A186436(A007953(n+1)))]` -/
def P7942212431015052331.Spec : Prop :=
  ∀ n, P7942212431015052331.a n = A243588 (n + 1)

end A243588

/-! ## A243588.P8939795271857773886

`p?[A186436(A007953(2*n+1))+2*n+1]`
-/

namespace A243588.P8939795271857773886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186436 (A007953 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243588.P8939795271857773886

namespace A243588

/-- `p?[A186436(A007953(2*n+1))+2*n+1]` -/
def P8939795271857773886.Spec : Prop :=
  ∀ n, P8939795271857773886.a n = A243588 (n + 1)

end A243588

/-! ## A243588.P1802241722045985771

`p?[(1-A186436(A007953(n+1)))*A004442(n)]`
-/

namespace A243588.P1802241722045985771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A186436 (A007953 (n + 1)).toNat) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243588.P1802241722045985771

namespace A243588

/-- `p?[(1-A186436(A007953(n+1)))*A004442(n)]` -/
def P1802241722045985771.Spec : Prop :=
  ∀ n, P1802241722045985771.a n = A243588 (n + 1)

end A243588

/-! ## A243588.P831614176122610370

`p?[(1-A186436(A007953(n+1)))*A000027(n+1)]`
-/

namespace A243588.P831614176122610370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A186436 (A007953 (n + 1)).toNat) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243588.P831614176122610370

namespace A243588

/-- `p?[(1-A186436(A007953(n+1)))*A000027(n+1)]` -/
def P831614176122610370.Spec : Prop :=
  ∀ n, P831614176122610370.a n = A243588 (n + 1)

end A243588

/-!
# A243589: Numbers returned when each binary digit of n is replaced by the sum modulo 2 of the digits to its (wrapped) left and (wrapped) right.

The programs for A243589, the canonical program `A243589.P10297874337052836463` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243589 has offset 1).

The definition of A243589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243589.P10297874337052836463

`xor(A006257(n+1), A038572(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243589

/-- `xor(A006257(n+1), A038572(n+1))` -/
def P10297874337052836463.Spec : Prop :=
  ∀ n, P10297874337052836463.a n = A243589 (n + 1)

theorem P10297874337052836463.correct : P10297874337052836463.Spec := by
  intro n
  simp only [A243589, Nat.add_sub_cancel]

end A243589

/-! ## A243589.P1616786516091757309

`xor(n+1-A035327(n+1), A038572(n+1))`
-/

namespace A243589.P1616786516091757309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) - A035327 (n + 1)) (A038572 (n + 1))

end

end A243589.P1616786516091757309

namespace A243589

/-- `xor(n+1-A035327(n+1), A038572(n+1))` -/
def P1616786516091757309.Spec : Prop :=
  ∀ n, P1616786516091757309.a n = A243589 (n + 1)

end A243589

/-! ## A243589.P9862040091253254469

`xor(A088161(n+1)+A006257(n+1), A006257(n+1))`
-/

namespace A243589.P9862040091253254469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088161 (n + 1) + A006257 (n + 1)) (A006257 (n + 1))

end

end A243589.P9862040091253254469

namespace A243589

/-- `xor(A088161(n+1)+A006257(n+1), A006257(n+1))` -/
def P9862040091253254469.Spec : Prop :=
  ∀ n, P9862040091253254469.a n = A243589 (n + 1)

end A243589

/-! ## A243589.P15946537386070551548

`xor(A038572(n+1)-A088161(n+1), A038572(n+1))`
-/

namespace A243589.P15946537386070551548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038572 (n + 1) - A088161 (n + 1)) (A038572 (n + 1))

end

end A243589.P15946537386070551548

namespace A243589

/-- `xor(A038572(n+1)-A088161(n+1), A038572(n+1))` -/
def P15946537386070551548.Spec : Prop :=
  ∀ n, P15946537386070551548.a n = A243589 (n + 1)

end A243589

/-! ## A243589.P5631285325875464719

`xor(Δ[A256249(n)], A038572(n+1))`
-/

namespace A243589.P5631285325875464719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A038572 (n + 1))

end

end A243589.P5631285325875464719

namespace A243589

/-- `xor(Δ[A256249(n)], A038572(n+1))` -/
def P5631285325875464719.Spec : Prop :=
  ∀ n, P5631285325875464719.a n = A243589 (n + 1)

end A243589

/-! ## A243589.P3194339181767941371

`A392521(A065621(n+2))`
-/

namespace A243589.P3194339181767941371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392521 (A065621 (n + 2)).toNat

end

end A243589.P3194339181767941371

namespace A243589

/-- `A392521(A065621(n+2))` -/
def P3194339181767941371.Spec : Prop :=
  ∀ n, P3194339181767941371.a n = A243589 (n + 1)

end A243589

/-! ## A243589.P4903265020585760252

`xor(A175919(2*n+3), A175919(A004526(n+1)))`
-/

namespace A243589.P4903265020585760252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175919 (2 * n + 3)) (A175919 (A004526 (n + 1)).toNat)

end

end A243589.P4903265020585760252

namespace A243589

/-- `xor(A175919(2*n+3), A175919(A004526(n+1)))` -/
def P4903265020585760252.Spec : Prop :=
  ∀ n, P4903265020585760252.a n = A243589 (n + 1)

end A243589

/-! ## A243589.P5152830241731389365

`xor(A038572(n+1), A053645(2*n+3))`
-/

namespace A243589.P5152830241731389365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038572 (n + 1)) (A053645 (2 * n + 3))

end

end A243589.P5152830241731389365

namespace A243589

/-- `xor(A038572(n+1), A053645(2*n+3))` -/
def P5152830241731389365.Spec : Prop :=
  ∀ n, P5152830241731389365.a n = A243589 (n + 1)

end A243589

/-! ## A243589.P12463570619948896406

`xor(A080544(A144396(n+1)), A144396(n+1))`
-/

namespace A243589.P12463570619948896406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080544 (A144396 (n + 1)).toNat) (A144396 (n + 1))

end

end A243589.P12463570619948896406

namespace A243589

/-- `xor(A080544(A144396(n+1)), A144396(n+1))` -/
def P12463570619948896406.Spec : Prop :=
  ∀ n, P12463570619948896406.a n = A243589 (n + 1)

end A243589

/-! ## A243589.P12220424476443193633

`xor(A004273(n+2), A080544(A004273(n+2)))`
-/

namespace A243589.P12220424476443193633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004273 (n + 2)) (A080544 (A004273 (n + 2)).toNat)

end

end A243589.P12220424476443193633

namespace A243589

/-- `xor(A004273(n+2), A080544(A004273(n+2)))` -/
def P12220424476443193633.Spec : Prop :=
  ∀ n, P12220424476443193633.a n = A243589 (n + 1)

end A243589

/-!
# A243590: Numbers returned when each digit of n is replaced by the sum modulo 10 of the digits to its (wrapped) left and (wrapped) right.

The programs for A243590, there is no canonical definition to state claims against.
-/

/-! ## A243590.P9828692545034340596

`A004520(A004086(n+1)%A104628(3*n+5))`
-/

namespace A243590.P9828692545034340596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (Int.tmod (A004086 (n + 1)) (A104628 (3 * n + 5))).toNat

end

end A243590.P9828692545034340596

/-! ## A243590.P10817987896969232267

`A004520(A004086(n+1))*A143326(A000217(n+3))`
-/

namespace A243590.P10817987896969232267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A004086 (n + 1)).toNat * A143326 (A000217 (n + 3)).toNat

end

end A243590.P10817987896969232267

/-! ## A243590.P13284706018856577318

`A004520(A004086(n+1))*A322338(A234345(n+2))`
-/

namespace A243590.P13284706018856577318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A004086 (n + 1)).toNat * A322338 (A234345 (n + 2)).toNat

end

end A243590.P13284706018856577318

/-! ## A243590.P16218341829310770733

`A004520(A004086(n+1))/A050873(A000384(n)+1)`
-/

namespace A243590.P16218341829310770733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004520 (A004086 (n + 1)).toNat : ℚ) / (A050873 (A000384 n + 1).toNat : ℚ)

end

end A243590.P16218341829310770733

/-! ## A243590.P73498884373069555

`A004520(A004086(n+1))*A046951(A304713(n+1))`
-/

namespace A243590.P73498884373069555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A004086 (n + 1)).toNat * A046951 (A304713 (n + 1)).toNat

end

end A243590.P73498884373069555

/-! ## A243590.P4669188680703403119

`A004520(A004086(n+1))*A046951(A000353(n+1))`
-/

namespace A243590.P4669188680703403119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A004086 (n + 1)).toNat * A046951 (A000353 (n + 1)).toNat

end

end A243590.P4669188680703403119

/-! ## A243590.P13680392041481175888

`A004520(A004086(n+1)%A357708(n+1)²)`
-/

namespace A243590.P13680392041481175888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (Int.tmod (A004086 (n + 1)) (A357708 (n + 1) ^ 2)).toNat

end

end A243590.P13680392041481175888

/-!
# A243591: Numbers k such that floor((3/2)^k)-floor((3/2)^(k-1)) is a prime number.

The programs for A243591, there is no canonical definition to state claims against.
-/

/-! ## A243591.P3434293601858710283

`eq[1, ∑{e}[Δ[A002379(n)], #]]+1`
-/

namespace A243591.P3434293601858710283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243591.P3434293601858710283

/-!
# A243592: Numbers n such that there is no indecomposable group of order n.

The programs for A243592, there is no canonical definition to state claims against.
-/

/-! ## A243592.P14516497404176916780

`A004442(eq[0, A090751(n+1)])`
-/

namespace A243592.P14516497404176916780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243592.P14516497404176916780

/-! ## A243592.P7903126289870162306

`A109613(eq[0, A090751(n+1)])`
-/

namespace A243592.P7903126289870162306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243592.P7903126289870162306

/-! ## A243592.P18418043287761782011

`A141310(eq[0, A090751(n+1)])`
-/

namespace A243592.P18418043287761782011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243592.P18418043287761782011

/-! ## A243592.P18189562485810231841

`record[gcd(A090751(n+1), A109613(n))]`
-/

namespace A243592.P18189562485810231841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090751 (n + 1)) (A109613 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243592.P18189562485810231841

/-! ## A243592.P10211322845849408945

`A005408(eq[0, A090751(A005408(n))])`
-/

namespace A243592.P10211322845849408945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243592.P10211322845849408945

/-!
# A243593: Primes giving record values of f(n) = (2*Sum_{i=1..n}(i*prime(i)) / Sum_{i=1..n}(prime(i))-(n+1))/(n-1).

The programs for A243593, there is no canonical definition to state claims against.
-/

/-! ## A243593.P17149804427328732815

`p?[∪[A242307(n+1), A242337(n+3)]]`
-/

namespace A243593.P17149804427328732815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242307 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242337 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243593.P17149804427328732815

/-! ## A243593.P12060115978302234105

`p?[(n+5)*A232989(n)]`
-/

namespace A243593.P12060115978302234105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A232989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243593.P12060115978302234105

/-! ## A243593.P5015631462936926

`p?[(n+5)*A300982(n)]`
-/

namespace A243593.P5015631462936926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A300982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243593.P5015631462936926

/-! ## A243593.P11455924865320241734

`A300271(A171688(n+2))`
-/

namespace A243593.P11455924865320241734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A171688 (n + 2)).toNat

end

end A243593.P11455924865320241734

/-! ## A243593.P9289780121709206432

`record[A151800(Δ[A244362(n+1)])]`
-/

namespace A243593.P9289780121709206432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244362 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243593.P9289780121709206432

/-!
# A243594: Triangle read by rows: T(n,k) = coefficient of [x^(n-k)] in the expansion of the polynomial (x+n)^n.

The programs for A243594, there is no canonical definition to state claims against.
-/

/-! ## A243594.P7883738547090614569

`A071207(∑[2*n]%comp[∑[n]])`
-/

namespace A243594.P7883738547090614569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A243594.P7883738547090614569

/-! ## A243594.P15370481898848377480

`A071207(∑[char[∑[n]]]²-(n+1))`
-/

namespace A243594.P15370481898848377480
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A243594.P15370481898848377480

/-! ## A243594.P2505232538040939820

`∑[char[∑[n+1]]]^(n-C(∑[char[∑[n]]], 2))*A007318(n)`
-/

namespace A243594.P2505232538040939820
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ) * (A007318 n : ℚ)

end

end A243594.P2505232538040939820

/-! ## A243594.P7484143980569296108

`A007318(n)*A079901(n)`
-/

namespace A243594.P7484143980569296108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A079901 n

end

end A243594.P7484143980569296108

/-! ## A243594.P10487287400322552071

`abs(A079901(n)*A108086(n))`
-/

namespace A243594.P10487287400322552071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079901 n * A108086 n|

end

end A243594.P10487287400322552071

/-! ## A243594.P5371145688043019294

`abs(A079901(n)*A117440(n))`
-/

namespace A243594.P5371145688043019294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079901 n * A117440 n|

end

end A243594.P5371145688043019294

/-! ## A243594.P16235411351564079737

`sqrt(A008459(n))*A079901(n)`
-/

namespace A243594.P16235411351564079737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A079901 n : ℝ)

end

end A243594.P16235411351564079737

/-! ## A243594.P14591253888225786916

`Δ[A102363(n)]*A079901(n)`
-/

namespace A243594.P14591253888225786916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A079901 n

end

end A243594.P14591253888225786916

/-! ## A243594.P1806629582590086141

`(A014473(n)+1)*A079901(n)`
-/

namespace A243594.P1806629582590086141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A079901 n

end

end A243594.P1806629582590086141

/-! ## A243594.P4866239215040253445

`A028326(n)/2*A079901(n)`
-/

namespace A243594.P4866239215040253445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A079901 n : ℚ)

end

end A243594.P4866239215040253445

/-!
# A243595: Primes p such that 3 + 2*p^2 is also prime.

The programs for A243595, there is no canonical definition to state claims against.
-/

/-! ## A243595.P4627456399593536055

`p?[A216968(n+1)]`
-/

namespace A243595.P4627456399593536055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243595.P4627456399593536055

/-! ## A243595.P11399997136317176562

`∩[A042993(n+1), A216968(n+1)]`
-/

namespace A243595.P11399997136317176562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P11399997136317176562

/-! ## A243595.P16881785962673202745

`∩[A045353(n+1), A216968(n+1)]`
-/

namespace A243595.P16881785962673202745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P16881785962673202745

/-! ## A243595.P26495672735526522

`A000027(p?[A216968(ϕ²-(ϕ-n))])`
-/

namespace A243595.P26495672735526522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A243595.P26495672735526522

/-! ## A243595.P7437285296110790969

`p?[A216968(-xor(n, -1))-A000007(n)]`
-/

namespace A243595.P7437285296110790969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (-Int.xor (n : ℤ) (-1)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243595.P7437285296110790969

/-! ## A243595.P1103362553348310583

`p?[A216968(-xor(n, -1))%A001386(n)]`
-/

namespace A243595.P1103362553348310583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216968 (-Int.xor (n : ℤ) (-1)).toNat) (A001386 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243595.P1103362553348310583

/-! ## A243595.P2739769902308653352

`∩[A042991(n+1), A216968(n+1)]`
-/

namespace A243595.P2739769902308653352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P2739769902308653352

/-! ## A243595.P1733938972277235446

`∩[A042986(n+1), A216968(n+1)]`
-/

namespace A243595.P1733938972277235446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P1733938972277235446

/-! ## A243595.P12913630575305181388

`∩[A216286(n+1), A216968(n+1)]`
-/

namespace A243595.P12913630575305181388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P12913630575305181388

/-! ## A243595.P10610852134320373390

`∩[A049557(n+1), A216968(n+1)]`
-/

namespace A243595.P10610852134320373390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P10610852134320373390

/-! ## A243595.P6987899969009682825

`∩[A040179(n+1), A216968(n+1)]`
-/

namespace A243595.P6987899969009682825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P6987899969009682825

/-! ## A243595.P16301850931795522190

`∩[A040986(n+1), A216968(n+1)]`
-/

namespace A243595.P16301850931795522190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P16301850931795522190

/-! ## A243595.P17184039104893038357

`∩[A040970(n+1), A216968(n+1)]`
-/

namespace A243595.P17184039104893038357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P17184039104893038357

/-! ## A243595.P14681258401533011193

`∩[A040990(n+1), A216968(n+1)]`
-/

namespace A243595.P14681258401533011193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P14681258401533011193

/-! ## A243595.P6252202925822435161

`∩[A040159(n+1), A216968(n+1)]`
-/

namespace A243595.P6252202925822435161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P6252202925822435161

/-! ## A243595.P5761198894065264282

`∩[A040161(n+1), A216968(n+1)]`
-/

namespace A243595.P5761198894065264282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P5761198894065264282

/-! ## A243595.P3631845379307791929

`∩[A040169(n+1), A216968(n+1)]`
-/

namespace A243595.P3631845379307791929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P3631845379307791929

/-! ## A243595.P11194944115828016985

`∩[A040972(n+1), A216968(n+1)]`
-/

namespace A243595.P11194944115828016985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P11194944115828016985

/-! ## A243595.P2671900550776410530

`∩[A040980(n+1), A216968(n+1)]`
-/

namespace A243595.P2671900550776410530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P2671900550776410530

/-! ## A243595.P4915552433930338820

`∩[A040982(n+1), A216968(n+1)]`
-/

namespace A243595.P4915552433930338820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243595.P4915552433930338820

/-!
# A243599: Number of length n+2 0..n arrays with no three elements in a row with pattern aba (with a!=b) and new values 0..n introduced in 0..n order.

The programs for A243599, there is no canonical definition to state claims against.
-/

/-! ## A243599.P8752400395476729938

`A261041(n+2)-1`
-/

namespace A243599.P8752400395476729938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (n + 2) - 1

end

end A243599.P8752400395476729938

/-! ## A243599.P4758250662019377131

`A243607(∑[4*n]+1)`
-/

namespace A243599.P4758250662019377131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243599.P4758250662019377131

/-! ## A243599.P7889959175417259331

`record[gcd(A114327(n), A243607(n+1))]`
-/

namespace A243599.P7889959175417259331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A243607 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243599.P7889959175417259331

/-! ## A243599.P2554253149049848805

`lcm(A033999(n), A243607(A001844(n)))`
-/

namespace A243599.P2554253149049848805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A243607 (A001844 n).toNat)

end

end A243599.P2554253149049848805

/-! ## A243599.P3638053003869119798

`A243607(A001844(n))%A228282(n+1)`
-/

namespace A243599.P3638053003869119798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243607 (A001844 n).toNat) (A228282 (n + 1))

end

end A243599.P3638053003869119798

