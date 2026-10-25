import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A077100: a(n) = lcm(A051612(n), A065387(n)), where A051612(n) = sigma(n) - phi(n) and A065387(n) = sigma(n) + phi(n).

The programs for A077100, the canonical program `A077100.P17383012229012696601` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077100 has offset 1).

The definition of A077100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077100.P17383012229012696601

`lcm(A051612(n+1), A065387(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A077100

/-- `lcm(A051612(n+1), A065387(n+1))` -/
def P17383012229012696601.Spec : Prop :=
  ∀ n, (P17383012229012696601.a n : ℤ) = A077100 (n + 1)

theorem P17383012229012696601.correct : P17383012229012696601.Spec := by
  intro n
  simp only [A077100, Nat.add_sub_cancel]

end A077100

/-! ## A077100.P12758946941469180440

`A077101(n+1)/A077099(n+1)`
-/

namespace A077100.P12758946941469180440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077101 (n + 1) : ℚ) / (A077099 (n + 1) : ℚ)

end

end A077100.P12758946941469180440

namespace A077100

/-- `A077101(n+1)/A077099(n+1)` -/
def P12758946941469180440.Spec : Prop :=
  ∀ n, P12758946941469180440.a n = (A077100 (n + 1) : ℚ)

end A077100

/-! ## A077100.P17858557189316801262

`A051612(n+1)*A065387(n+1)/A077099(n+1)`
-/

namespace A077100.P17858557189316801262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) * A065387 (n + 1) : ℚ) / (A077099 (n + 1) : ℚ)

end

end A077100.P17858557189316801262

namespace A077100

/-- `A051612(n+1)*A065387(n+1)/A077099(n+1)` -/
def P17858557189316801262.Spec : Prop :=
  ∀ n, P17858557189316801262.a n = (A077100 (n + 1) : ℚ)

end A077100

/-! ## A077100.P16843821402663018888

`A077101(n+1)/gcd(A051612(n+1), A065387(n+1))`
-/

namespace A077100.P16843821402663018888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077101 (n + 1) : ℚ) / (Int.gcd (A051612 (n + 1)) (A065387 (n + 1)) : ℚ)

end

end A077100.P16843821402663018888

namespace A077100

/-- `A077101(n+1)/gcd(A051612(n+1), A065387(n+1))` -/
def P16843821402663018888.Spec : Prop :=
  ∀ n, P16843821402663018888.a n = (A077100 (n + 1) : ℚ)

end A077100

/-! ## A077100.P79437488647849595

`lcm(A000010(n+1)+A000203(n+1), A000203(n+1)-A000010(n+1))`
-/

namespace A077100.P79437488647849595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1) + A000203 (n + 1)) (A000203 (n + 1) - A000010 (n + 1))

end

end A077100.P79437488647849595

namespace A077100

/-- `lcm(A000010(n+1)+A000203(n+1), A000203(n+1)-A000010(n+1))` -/
def P79437488647849595.Spec : Prop :=
  ∀ n, (P79437488647849595.a n : ℤ) = A077100 (n + 1)

end A077100

/-!
# A077101: a(n) = A051612(n)*A065387(n) = sigma(n)^2-phi(n)^2, where A051612(n) = sigma(n) - phi(n) and A065387(n) = sigma(n) + phi(n).

The programs for A077101, the canonical program `A077101.P7633448561027353757` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077101 has offset 1).

The definition of A077101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077101.P221640742761858523

`A072861(n+1)-A127473(n+1)`
-/

namespace A077101.P221640742761858523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) - A127473 (n + 1)

end

end A077101.P221640742761858523

namespace A077101

/-- `A072861(n+1)-A127473(n+1)` -/
def P221640742761858523.Spec : Prop :=
  ∀ n, P221640742761858523.a n = A077101 (n + 1)

theorem P221640742761858523.correct : P221640742761858523.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel, A077101.P221640742761858523.a, A077101.P7633448561027353757.a, A051612, A051612.P4135239823752248514.a, A065387, A065387.P11284875715279330998.a, A072861, A072861.P13649558853462032102.f1, A072861.P13649558853462032102.a, A127473, A127473.P9698007400369304439.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077101

/-! ## A077101.P7633448561027353757

`A051612(n+1)*A065387(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A077101

/-- `A051612(n+1)*A065387(n+1)` -/
def P7633448561027353757.Spec : Prop :=
  ∀ n, P7633448561027353757.a n = A077101 (n + 1)

theorem P7633448561027353757.correct : P7633448561027353757.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel]

end A077101

/-! ## A077101.P14544883950424149607

`A077099(n+1)*A077100(n+1)`
-/

namespace A077101.P14544883950424149607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077099 (n + 1) * A077100 (n + 1)

end

end A077101.P14544883950424149607

namespace A077101

/-- `A077099(n+1)*A077100(n+1)` -/
def P14544883950424149607.Spec : Prop :=
  ∀ n, P14544883950424149607.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P15359621487169077562

`A072861(n+1)-Δ[A002088(n)]²`
-/

namespace A077101.P15359621487169077562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A077101.P15359621487169077562

namespace A077101

/-- `A072861(n+1)-Δ[A002088(n)]²` -/
def P15359621487169077562.Spec : Prop :=
  ∀ n, P15359621487169077562.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P2583949496807746304

`A072861(n+1)-A000010(n+1)²`
-/

namespace A077101.P2583949496807746304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) - A000010 (n + 1) ^ 2

end

end A077101.P2583949496807746304

namespace A077101

/-- `A072861(n+1)-A000010(n+1)²` -/
def P2583949496807746304.Spec : Prop :=
  ∀ n, P2583949496807746304.a n = A077101 (n + 1)

theorem P2583949496807746304.correct : P2583949496807746304.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel, A077101.P2583949496807746304.a, A077101.P7633448561027353757.a, A000010, A000010.P4673923239450215316.a, A051612, A051612.P4135239823752248514.a, A065387, A065387.P11284875715279330998.a, A072861, A072861.P13649558853462032102.f1, A072861.P13649558853462032102.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077101

/-! ## A077101.P12318776583144118432

`A000203(n+1)²-A127473(n+1)`
-/

namespace A077101.P12318776583144118432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - A127473 (n + 1)

end

end A077101.P12318776583144118432

namespace A077101

/-- `A000203(n+1)²-A127473(n+1)` -/
def P12318776583144118432.Spec : Prop :=
  ∀ n, P12318776583144118432.a n = A077101 (n + 1)

theorem P12318776583144118432.correct : P12318776583144118432.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel, A077101.P12318776583144118432.a, A077101.P7633448561027353757.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A065387, A065387.P11284875715279330998.a, A127473, A127473.P9698007400369304439.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077101

/-! ## A077101.P3019324937771911284

`A000203(n+1)²-Δ[A002088(n)]²`
-/

namespace A077101.P3019324937771911284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - (f1 (n + 1) - f1 n) ^ 2

end

end A077101.P3019324937771911284

namespace A077101

/-- `A000203(n+1)²-Δ[A002088(n)]²` -/
def P3019324937771911284.Spec : Prop :=
  ∀ n, P3019324937771911284.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P14870732642710598146

`A000203(n+1)²-Δ[A005728(n)]²`
-/

namespace A077101.P14870732642710598146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - (f1 (n + 1) - f1 n) ^ 2

end

end A077101.P14870732642710598146

namespace A077101

/-- `A000203(n+1)²-Δ[A005728(n)]²` -/
def P14870732642710598146.Spec : Prop :=
  ∀ n, P14870732642710598146.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P3721981724321308317

`A143348(n+1)²-Δ[A002088(n)]²`
-/

namespace A077101.P3721981724321308317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) ^ 2 - (f1 (n + 1) - f1 n) ^ 2

end

end A077101.P3721981724321308317

namespace A077101

/-- `A143348(n+1)²-Δ[A002088(n)]²` -/
def P3721981724321308317.Spec : Prop :=
  ∀ n, P3721981724321308317.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P8051571906459758666

`Δ[A160664(n)]²-A000010(n+1)²`
-/

namespace A077101.P8051571906459758666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A000010 (n + 1) ^ 2

end

end A077101.P8051571906459758666

namespace A077101

/-- `Δ[A160664(n)]²-A000010(n+1)²` -/
def P8051571906459758666.Spec : Prop :=
  ∀ n, P8051571906459758666.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P193995112819476262

`A000203(n+1)²-A000010(n+1)²`
-/

namespace A077101.P193995112819476262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - A000010 (n + 1) ^ 2

end

end A077101.P193995112819476262

namespace A077101

/-- `A000203(n+1)²-A000010(n+1)²` -/
def P193995112819476262.Spec : Prop :=
  ∀ n, P193995112819476262.a n = A077101 (n + 1)

theorem P193995112819476262.correct : P193995112819476262.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel, A077101.P193995112819476262.a, A077101.P7633448561027353757.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A065387, A065387.P11284875715279330998.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077101

/-! ## A077101.P6990094336071811423

`A143348(n+1)²-A000010(n+1)²`
-/

namespace A077101.P6990094336071811423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) ^ 2 - A000010 (n + 1) ^ 2

end

end A077101.P6990094336071811423

namespace A077101

/-- `A143348(n+1)²-A000010(n+1)²` -/
def P6990094336071811423.Spec : Prop :=
  ∀ n, P6990094336071811423.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P8595616095890434872

`A258974(n+1)-(A000010(n+1)²+1)`
-/

namespace A077101.P8595616095890434872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (n + 1) - (A000010 (n + 1) ^ 2 + 1)

end

end A077101.P8595616095890434872

namespace A077101

/-- `A258974(n+1)-(A000010(n+1)²+1)` -/
def P8595616095890434872.Spec : Prop :=
  ∀ n, P8595616095890434872.a n = A077101 (n + 1)

theorem P8595616095890434872.correct : P8595616095890434872.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel, A077101.P8595616095890434872.a, A077101.P7633448561027353757.a, A000010, A000010.P4673923239450215316.a, A051612, A051612.P4135239823752248514.a, A065387, A065387.P11284875715279330998.a, A258974, A258974.P9822892926536719651.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A072861, A072861.P13649558853462032102.f1, A072861.P13649558853462032102.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077101

/-! ## A077101.P14266597835745079651

`∑[A340793(n+1)]²-A000010(n+1)²`
-/

namespace A077101.P14266597835745079651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A000010 (n + 1) ^ 2

end

end A077101.P14266597835745079651

namespace A077101

/-- `∑[A340793(n+1)]²-A000010(n+1)²` -/
def P14266597835745079651.Spec : Prop :=
  ∀ n, P14266597835745079651.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P13742460975184096034

`(A000203(n+1)+A000010(n+1))*A051612(n+1)`
-/

namespace A077101.P13742460975184096034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A000010 (n + 1)) * A051612 (n + 1)

end

end A077101.P13742460975184096034

namespace A077101

/-- `(A000203(n+1)+A000010(n+1))*A051612(n+1)` -/
def P13742460975184096034.Spec : Prop :=
  ∀ n, P13742460975184096034.a n = A077101 (n + 1)

theorem P13742460975184096034.correct : P13742460975184096034.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel, A077101.P13742460975184096034.a, A077101.P7633448561027353757.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A065387, A065387.P11284875715279330998.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077101

/-! ## A077101.P4305173709718121354

`(A051953(n+1)+A001065(n+1))*A065387(n+1)`
-/

namespace A077101.P4305173709718121354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) + A001065 (n + 1)) * A065387 (n + 1)

end

end A077101.P4305173709718121354

namespace A077101

/-- `(A051953(n+1)+A001065(n+1))*A065387(n+1)` -/
def P4305173709718121354.Spec : Prop :=
  ∀ n, P4305173709718121354.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P1106806108118455808

`(A000203(n+1)-A000010(n+1))*A065387(n+1)`
-/

namespace A077101.P1106806108118455808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A000010 (n + 1)) * A065387 (n + 1)

end

end A077101.P1106806108118455808

namespace A077101

/-- `(A000203(n+1)-A000010(n+1))*A065387(n+1)` -/
def P1106806108118455808.Spec : Prop :=
  ∀ n, P1106806108118455808.a n = A077101 (n + 1)

end A077101

/-! ## A077101.P12837002198360205234

`(A074400(n+1)-A051612(n+1))*A051612(n+1)`
-/

namespace A077101.P12837002198360205234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) - A051612 (n + 1)) * A051612 (n + 1)

end

end A077101.P12837002198360205234

namespace A077101

/-- `(A074400(n+1)-A051612(n+1))*A051612(n+1)` -/
def P12837002198360205234.Spec : Prop :=
  ∀ n, P12837002198360205234.a n = A077101 (n + 1)

theorem P12837002198360205234.correct : P12837002198360205234.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel, A077101.P12837002198360205234.a, A077101.P7633448561027353757.a, A051612, A051612.P4135239823752248514.a, A065387, A065387.P11284875715279330998.a, A074400, A074400.P16312391460013478761.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077101

/-! ## A077101.P9261593786156532272

`(A074400(n+1)-A065387(n+1))*A065387(n+1)`
-/

namespace A077101.P9261593786156532272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) - A065387 (n + 1)) * A065387 (n + 1)

end

end A077101.P9261593786156532272

namespace A077101

/-- `(A074400(n+1)-A065387(n+1))*A065387(n+1)` -/
def P9261593786156532272.Spec : Prop :=
  ∀ n, P9261593786156532272.a n = A077101 (n + 1)

theorem P9261593786156532272.correct : P9261593786156532272.Spec := by
  intro n
  simp only [A077101, Nat.add_sub_cancel, A077101.P9261593786156532272.a, A077101.P7633448561027353757.a, A051612, A051612.P4135239823752248514.a, A065387, A065387.P11284875715279330998.a, A074400, A074400.P16312391460013478761.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077101

/-!
# A077102: Smallest number m such that GCD(a+b,a-b) = n, where a = sigma(m) and b = phi(m).

The programs for A077102, there is no canonical definition to state claims against.
-/

/-! ## A077102.P7762273077415081292

`A268597(xor(A014681(n), A268600(n)))`
-/

namespace A077102.P7762273077415081292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268597 (Int.xor (A014681 n) (A268600 n)).toNat

end

end A077102.P7762273077415081292

/-!
# A077105: Number of nonisomorphic generalized Petersen P(n,k) graphs on 2n nodes for 1<=k<=floor((n-1)/2).

The programs for A077105, there is no canonical definition to state claims against.
-/

/-! ## A077105.P17625944254925408203

`A007895(∑[A011936(n)+1+n])`
-/

namespace A077105.P17625944254925408203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011936 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077105.P17625944254925408203

/-! ## A077105.P14238579944177279602

`A279061(A000009(n)*A363948(n+1))`
-/

namespace A077105.P14238579944177279602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A000009 n * A363948 (n + 1)).toNat

end

end A077105.P14238579944177279602

/-! ## A077105.P8184786022599865981

`A000120(A052847(n)+A004730(n))`
-/

namespace A077105.P8184786022599865981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A052847 n + A004730 n).toNat

end

end A077105.P8184786022599865981

/-! ## A077105.P15996559343759844811

`A344150(A115671(n)+A002260(n+1))`
-/

namespace A077105.P15996559343759844811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344150 (A115671 n + A002260 (n + 1)).toNat

end

end A077105.P15996559343759844811

/-! ## A077105.P3948868144192504809

`A000006(n+1)-A287931(A287934(n+1))`
-/

namespace A077105.P3948868144192504809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) - A287931 (A287934 (n + 1)).toNat

end

end A077105.P3948868144192504809

/-!
# A077106: Largest integer cube <= n^2.

The programs for A077106, the canonical program `A077106.P1018111266842401741` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077106 has offset 0).

The definition of A077106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077106.P1018111266842401741

`A100196(n)^3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077106

/-- `A100196(n)^3` -/
def P1018111266842401741.Spec : Prop :=
  ∀ n, P1018111266842401741.a n = A077106 n

theorem P1018111266842401741.correct : P1018111266842401741.Spec := by
  intro n
  simp only [A077106]

end A077106

/-! ## A077106.P403247951503013753

`floor(n^(2/3))^3`
-/

namespace A077106.P403247951503013753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)⌋ ^ 3

end

end A077106.P403247951503013753

namespace A077106

/-- `floor(n^(2/3))^3` -/
def P403247951503013753.Spec : Prop :=
  ∀ n, P403247951503013753.a n = A077106 n

theorem P403247951503013753.correct : P403247951503013753.Spec := by
  intro n
  simp only [A077106, Nat.add_sub_cancel, A077106.P403247951503013753.a, A077106.P1018111266842401741.a, A100196, A100196.P5989948745544554590.a, A077113, A077113.P17279487553956293738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077106

/-! ## A077106.P6145668219920095529

`(floor(root(n²+1, 3))%(n+1))²*floor(root(n²+1, 3))%(n+1)`
-/

namespace A077106.P6145668219920095529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ (n + 1 : ℤ) ^ 2 * Int.tmod ⌊(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ (n + 1 : ℤ)

end

end A077106.P6145668219920095529

namespace A077106

/-- `(floor(root(n²+1, 3))%(n+1))²*floor(root(n²+1, 3))%(n+1)` -/
def P6145668219920095529.Spec : Prop :=
  ∀ n, P6145668219920095529.a n = A077106 n

end A077106

/-! ## A077106.P9872763910537759102

`n²-A075847(n)`
-/

namespace A077106.P9872763910537759102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A075847 n

end

end A077106.P9872763910537759102

namespace A077106

/-- `n²-A075847(n)` -/
def P9872763910537759102.Spec : Prop :=
  ∀ n, P9872763910537759102.a n = A077106 n

theorem P9872763910537759102.correct : P9872763910537759102.Spec := by
  intro n
  simp only [A077106, Nat.add_sub_cancel, A077106.P9872763910537759102.a, A077106.P1018111266842401741.a, A075847, A075847.P12306880056325021754.a, A100196, A100196.P5989948745544554590.a, A077113, A077113.P17279487553956293738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077106

/-! ## A077106.P8047107564916004296

`A000578(A100196(n))`
-/

namespace A077106.P8047107564916004296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A100196 n).toNat

end

end A077106.P8047107564916004296

namespace A077106

/-- `A000578(A100196(n))` -/
def P8047107564916004296.Spec : Prop :=
  ∀ n, P8047107564916004296.a n = A077106 n

end A077106

/-! ## A077106.P7650410077384412273

`A000578(A077113(n)-1)`
-/

namespace A077106.P7650410077384412273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A077113 n - 1).toNat

end

end A077106.P7650410077384412273

namespace A077106

/-- `A000578(A077113(n)-1)` -/
def P7650410077384412273.Spec : Prop :=
  ∀ n, P7650410077384412273.a n = A077106 n

end A077106

/-! ## A077106.P4657398911609634216

`A077110(n)-(A077111(n)+A075847(n))`
-/

namespace A077106.P4657398911609634216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077110 n - (A077111 n + A075847 n)

end

end A077106.P4657398911609634216

namespace A077106

/-- `A077110(n)-(A077111(n)+A075847(n))` -/
def P4657398911609634216.Spec : Prop :=
  ∀ n, P4657398911609634216.a n = A077106 n

end A077106

/-! ## A077106.P4727370685167453590

`A000093(A100196(n)²)`
-/

namespace A077106.P4727370685167453590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A100196 n ^ 2).toNat

end

end A077106.P4727370685167453590

namespace A077106

/-- `A000093(A100196(n)²)` -/
def P4727370685167453590.Spec : Prop :=
  ∀ n, P4727370685167453590.a n = A077106 n

end A077106

/-! ## A077106.P3438482368182501168

`A002821(A100196(n)²)`
-/

namespace A077106.P3438482368182501168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A100196 n ^ 2).toNat

end

end A077106.P3438482368182501168

namespace A077106

/-- `A002821(A100196(n)²)` -/
def P3438482368182501168.Spec : Prop :=
  ∀ n, P3438482368182501168.a n = A077106 n

end A077106

/-! ## A077106.P945467094097094427

`A000093(A100196(n)*A100196(n))`
-/

namespace A077106.P945467094097094427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A100196 n * A100196 n).toNat

end

end A077106.P945467094097094427

namespace A077106

/-- `A000093(A100196(n)*A100196(n))` -/
def P945467094097094427.Spec : Prop :=
  ∀ n, P945467094097094427.a n = A077106 n

end A077106

/-! ## A077106.P11585348142635810840

`A002821(A100196(n)*A100196(n))`
-/

namespace A077106.P11585348142635810840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A100196 n * A100196 n).toNat

end

end A077106.P11585348142635810840

namespace A077106

/-- `A002821(A100196(n)*A100196(n))` -/
def P11585348142635810840.Spec : Prop :=
  ∀ n, P11585348142635810840.a n = A077106 n

end A077106

/-! ## A077106.P871162800525857082

`A000578(A276611(A261226(n²)))`
-/

namespace A077106.P871162800525857082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A276611 (A261226 (n ^ 2)).toNat).toNat

end

end A077106.P871162800525857082

namespace A077106

/-- `A000578(A276611(A261226(n²)))` -/
def P871162800525857082.Spec : Prop :=
  ∀ n, P871162800525857082.a n = A077106 n

end A077106

/-! ## A077106.P17102673093605922494

`A048762(n²)`
-/

namespace A077106.P17102673093605922494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (n ^ 2)

end

end A077106.P17102673093605922494

namespace A077106

/-- `A048762(n²)` -/
def P17102673093605922494.Spec : Prop :=
  ∀ n, P17102673093605922494.a n = A077106 n

end A077106

/-! ## A077106.P5996586419419443528

`A000578(A048766(n²))`
-/

namespace A077106.P5996586419419443528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A048766 (n ^ 2)).toNat

end

end A077106.P5996586419419443528

namespace A077106

/-- `A000578(A048766(n²))` -/
def P5996586419419443528.Spec : Prop :=
  ∀ n, P5996586419419443528.a n = A077106 n

end A077106

/-! ## A077106.P16859836634162451759

`A166447(A048766(n²)²)`
-/

namespace A077106.P16859836634162451759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 (A048766 (n ^ 2) ^ 2).toNat

end

end A077106.P16859836634162451759

namespace A077106

/-- `A166447(A048766(n²)²)` -/
def P16859836634162451759.Spec : Prop :=
  ∀ n, P16859836634162451759.a n = A077106 n

end A077106

/-! ## A077106.P15394910781340577513

`A048763(A048762(A048762(n*n)))`
-/

namespace A077106.P15394910781340577513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A048762 (A048762 (n * n)).toNat).toNat

end

end A077106.P15394910781340577513

namespace A077106

/-- `A048763(A048762(A048762(n*n)))` -/
def P15394910781340577513.Spec : Prop :=
  ∀ n, P15394910781340577513.a n = A077106 n

end A077106

/-! ## A077106.P8040674949973956469

`A201053(A048762(A053187(n*n)))`
-/

namespace A077106.P8040674949973956469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (A048762 (A053187 (n * n)).toNat).toNat

end

end A077106.P8040674949973956469

namespace A077106

/-- `A201053(A048762(A053187(n*n)))` -/
def P8040674949973956469.Spec : Prop :=
  ∀ n, P8040674949973956469.a n = A077106 n

end A077106

/-! ## A077106.P6872696396206365282

`n²-A055400(n²)`
-/

namespace A077106.P6872696396206365282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A055400 (n ^ 2)

end

end A077106.P6872696396206365282

namespace A077106

/-- `n²-A055400(n²)` -/
def P6872696396206365282.Spec : Prop :=
  ∀ n, P6872696396206365282.a n = A077106 n

end A077106

/-!
# A077107: Least integer cube >= n^2.

The programs for A077107, the canonical program `A077107.P2088776491079219285` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077107 has offset 0).

The definition of A077107 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048763, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077107.P2088776491079219285

`A048763(n²)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077107

/-- `A048763(n²)` -/
def P2088776491079219285.Spec : Prop :=
  ∀ n, P2088776491079219285.a n = A077107 n

theorem P2088776491079219285.correct : P2088776491079219285.Spec := by
  intro n
  simp only [A077107]

end A077107

/-! ## A077107.P4645385935497016797

`A121536(n+1)^3`
-/

namespace A077107.P4645385935497016797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121536 (n + 1) ^ 3

end

end A077107.P4645385935497016797

namespace A077107

/-- `A121536(n+1)^3` -/
def P4645385935497016797.Spec : Prop :=
  ∀ n, P4645385935497016797.a n = A077107 n

end A077107

/-! ## A077107.P11330353679358574521

`ceil(n^(2/3))^3`
-/

namespace A077107.P11330353679358574521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)⌉ ^ 3

end

end A077107.P11330353679358574521

namespace A077107

/-- `ceil(n^(2/3))^3` -/
def P11330353679358574521.Spec : Prop :=
  ∀ n, P11330353679358574521.a n = A077107 n

end A077107

/-! ## A077107.P13325170831139937051

`A070923(n)+n²`
-/

namespace A077107.P13325170831139937051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 n + (n ^ 2 : ℤ)

end

end A077107.P13325170831139937051

namespace A077107

/-- `A070923(n)+n²` -/
def P13325170831139937051.Spec : Prop :=
  ∀ n, P13325170831139937051.a n = A077107 n

end A077107

/-! ## A077107.P8677991495363176441

`A000578(∑[char[A077121(n)]])`
-/

namespace A077107.P8677991495363176441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077107.P8677991495363176441

namespace A077107

/-- `A000578(∑[char[A077121(n)]])` -/
def P8677991495363176441.Spec : Prop :=
  ∀ n, P8677991495363176441.a n = A077107 n

end A077107

/-! ## A077107.P10033051329471530514

`A002522(n)+A070923(n)-1`
-/

namespace A077107.P10033051329471530514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (A070923 n - 1)

end

end A077107.P10033051329471530514

namespace A077107

/-- `A002522(n)+A070923(n)-1` -/
def P10033051329471530514.Spec : Prop :=
  ∀ n, P10033051329471530514.a n = A077107 n

end A077107

/-! ## A077107.P17637604268874311596

`A000578(∑[char[A000093(n)+1]])`
-/

namespace A077107.P17637604268874311596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077107.P17637604268874311596

namespace A077107

/-- `A000578(∑[char[A000093(n)+1]])` -/
def P17637604268874311596.Spec : Prop :=
  ∀ n, P17637604268874311596.a n = A077107 n

end A077107

/-! ## A077107.P3643500161295556949

`n²+(1-A010057(n))*A181138(n)`
-/

namespace A077107.P3643500161295556949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (1 - A010057 n) * A181138 n

end

end A077107.P3643500161295556949

namespace A077107

/-- `n²+(1-A010057(n))*A181138(n)` -/
def P3643500161295556949.Spec : Prop :=
  ∀ n, P3643500161295556949.a n = A077107 n

end A077107

/-! ## A077107.P1081690417584323405

`n²+char[A007412(n+1)]*A181138(n)`
-/

namespace A077107.P1081690417584323405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A181138 n

end

end A077107.P1081690417584323405

namespace A077107

/-- `n²+char[A007412(n+1)]*A181138(n)` -/
def P1081690417584323405.Spec : Prop :=
  ∀ n, P1081690417584323405.a n = A077107 n

end A077107

/-! ## A077107.P18404558651525646081

`n²+A057427(A074989(n))*A181138(n)`
-/

namespace A077107.P18404558651525646081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A057427 (A074989 n).toNat * A181138 n

end

end A077107.P18404558651525646081

namespace A077107

/-- `n²+A057427(A074989(n))*A181138(n)` -/
def P18404558651525646081.Spec : Prop :=
  ∀ n, P18404558651525646081.a n = A077107 n

end A077107

/-! ## A077107.P11340646250859136108

`A000093(∑[char[A000093(n)+1]]²)`
-/

namespace A077107.P11340646250859136108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A077107.P11340646250859136108

namespace A077107

/-- `A000093(∑[char[A000093(n)+1]]²)` -/
def P11340646250859136108.Spec : Prop :=
  ∀ n, P11340646250859136108.a n = A077107 n

end A077107

/-! ## A077107.P9543676648088241331

`A254667(A070923(n))+A000290(n)`
-/

namespace A077107.P9543676648088241331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A070923 n).toNat + A000290 n

end

end A077107.P9543676648088241331

namespace A077107

/-- `A254667(A070923(n))+A000290(n)` -/
def P9543676648088241331.Spec : Prop :=
  ∀ n, P9543676648088241331.a n = A077107 n

end A077107

/-! ## A077107.P9673260391059122716

`A048763(n*n)%A017498(n)`
-/

namespace A077107.P9673260391059122716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048763 (n * n)) (A017498 n)

end

end A077107.P9673260391059122716

namespace A077107

/-- `A048763(n*n)%A017498(n)` -/
def P9673260391059122716.Spec : Prop :=
  ∀ n, P9673260391059122716.a n = A077107 n

end A077107

/-! ## A077107.P9954797505823042830

`∑{d}[A048763(A000290(n)), A000010(#)]`
-/

namespace A077107.P9954797505823042830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A077107.P9954797505823042830

namespace A077107

/-- `∑{d}[A048763(A000290(n)), A000010(#)]` -/
def P9954797505823042830.Spec : Prop :=
  ∀ n, P9954797505823042830.a n = A077107 n

end A077107

/-! ## A077107.P5236094498567226401

`(A002522(n)-A000290(n))*A048763(A000290(n))`
-/

namespace A077107.P5236094498567226401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002522 n - A000290 n) * A048763 (A000290 n).toNat

end

end A077107.P5236094498567226401

namespace A077107

/-- `(A002522(n)-A000290(n))*A048763(A000290(n))` -/
def P5236094498567226401.Spec : Prop :=
  ∀ n, P5236094498567226401.a n = A077107 n

end A077107

/-!
# A077110: Nearest integer cube to n^2.

The programs for A077110, there is no canonical definition to state claims against.
-/

/-! ## A077110.P14707500362624483584

`A077111(n)+n²`
-/

namespace A077110.P14707500362624483584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077111 n + (n ^ 2 : ℤ)

end

end A077110.P14707500362624483584

/-! ## A077110.P16713507354769124928

`A077112(n)/round(1/acot(n²))`
-/

namespace A077110.P16713507354769124928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077112 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n ^ 2 : ℝ)) : ℚ)

end

end A077110.P16713507354769124928

/-! ## A077110.P1013751110763636620

`A077112(n)/A253909(n)`
-/

namespace A077110.P1013751110763636620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077112 n : ℚ) / (A253909 n : ℚ)

end

end A077110.P1013751110763636620

/-! ## A077110.P15972352341784697259

`A077107(n)+A077111(n)-A070923(n)`
-/

namespace A077110.P15972352341784697259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 n + (A077111 n - A070923 n)

end

end A077110.P15972352341784697259

/-! ## A077110.P12645575734800949826

`A201053(n²)`
-/

namespace A077110.P12645575734800949826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (n ^ 2)

end

end A077110.P12645575734800949826

/-! ## A077110.P5047776561892327953

`A201053(A000290(n))*A276950(3*n+1)`
-/

namespace A077110.P5047776561892327953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (A000290 n).toNat * A276950 (3 * n + 1)

end

end A077110.P5047776561892327953

/-! ## A077110.P16842732664666762580

`A201053(A000290(n))*A316829(3*n+1)`
-/

namespace A077110.P16842732664666762580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (A000290 n).toNat * A316829 (3 * n + 1)

end

end A077110.P16842732664666762580

/-! ## A077110.P2753549517957013873

`A048762(A048762(A201053(n*n)))`
-/

namespace A077110.P2753549517957013873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A048762 (A201053 (n * n)).toNat).toNat

end

end A077110.P2753549517957013873

/-! ## A077110.P1010678060986238100

`A048763(A201053(A053187(n*n)))`
-/

namespace A077110.P1010678060986238100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A201053 (A053187 (n * n)).toNat).toNat

end

end A077110.P1010678060986238100

/-!
# A077111: a(n) = A077110(n) - n^2.

The programs for A077111, there is no canonical definition to state claims against.
-/

/-! ## A077111.P8923166404360013758

`A077110(n)-n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077111.P8923166404360013758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077110 n - (n ^ 2 : ℤ)

end

end A077111.P8923166404360013758

/-! ## A077111.P1059477467228202614

`A070923(n)+A077110(n)-A077107(n)`
-/

namespace A077111.P1059477467228202614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 n + (A077110 n - A077107 n)

end

end A077111.P1059477467228202614

/-! ## A077111.P9029751330149116727

`A201053(n²)-n²`
-/

namespace A077111.P9029751330149116727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (n ^ 2) - (n ^ 2 : ℤ)

end

end A077111.P9029751330149116727

/-! ## A077111.P15593961280266645603

`A201053(A000290(n))+A000007(2*n+2)-n^(2%((n+2)^10))`
-/

namespace A077111.P15593961280266645603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (A000290 n).toNat + A000007 (2 * n + 2) - (n ^ (2 % (n + 2) ^ 10) : ℤ)

end

end A077111.P15593961280266645603

/-! ## A077111.P8441795335459383631

`A048763(A077110(n))-A000290(n)`
-/

namespace A077111.P8441795335459383631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A077110 n).toNat - A000290 n

end

end A077111.P8441795335459383631

/-!
# A077112: a(n)=n^2 times nearest cube to n^2.

The programs for A077112, there is no canonical definition to state claims against.
-/

/-! ## A077112.P972505527667450956

`A000290(n)*A077110(n)`
-/

namespace A077112.P972505527667450956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A077110 n

end

end A077112.P972505527667450956

/-! ## A077112.P9901902170336571182

`(A077111(n)+n²)*n²`
-/

namespace A077112.P9901902170336571182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077111 n + (n ^ 2 : ℤ)) * (n ^ 2 : ℤ)

end

end A077112.P9901902170336571182

/-! ## A077112.P15989322037008687531

`A077110(n)*A253909(n)`
-/

namespace A077112.P15989322037008687531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077110 n * A253909 n

end

end A077112.P15989322037008687531

/-! ## A077112.P15586239368020479641

`(A077106(n)+A075847(n))*A077110(n)`
-/

namespace A077112.P15586239368020479641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077106 n + A075847 n) * A077110 n

end

end A077112.P15586239368020479641

/-! ## A077112.P299869014308704289

`(A077107(n)-A070923(n))*A077110(n)`
-/

namespace A077112.P299869014308704289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077107 n - A070923 n) * A077110 n

end

end A077112.P299869014308704289

/-! ## A077112.P4455847875714504328

`(A077110(n)-A077111(n))*A077110(n)`
-/

namespace A077112.P4455847875714504328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077110 n - A077111 n) * A077110 n

end

end A077112.P4455847875714504328

/-! ## A077112.P6469348821368222718

`n²*A201053(n²)`
-/

namespace A077112.P6469348821368222718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A201053 (n ^ 2)

end

end A077112.P6469348821368222718

/-! ## A077112.P15043307025585480492

`n*n*A201053(n^2)`
-/

namespace A077112.P15043307025585480492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A201053 (n ^ 2))

end

end A077112.P15043307025585480492

/-! ## A077112.P11506899618859507713

`round(sqrt(floor((n^(2/3))²)))^3*A048760(n²)`
-/

namespace A077112.P11506899618859507713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌊((n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)) ^ 2⌋ : ℝ)) ^ 3 * A048760 (n ^ 2)

end

end A077112.P11506899618859507713

/-! ## A077112.P8114040894765724311

`A201053(A000290(n))*A253909(n)`
-/

namespace A077112.P8114040894765724311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (A000290 n).toNat * A253909 n

end

end A077112.P8114040894765724311

/-! ## A077112.P14566221301585482196

`n*A201053(A000290(n))*A028310(n)`
-/

namespace A077112.P14566221301585482196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A201053 (A000290 n).toNat * A028310 n

end

end A077112.P14566221301585482196

/-! ## A077112.P3854130969738917194

`A054977(n)*A201053(A000290(n))*A000290(n)`
-/

namespace A077112.P3854130969738917194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A201053 (A000290 n).toNat * A000290 n

end

end A077112.P3854130969738917194

/-!
# A077113: Number of nonnegative integer cubes <= n^2.

The programs for A077113, the canonical program `A077113.P17279487553956293738` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077113 has offset 0).

The definition of A077113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077113.P17279487553956293738

`floor(n^(2/3))+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077113

/-- `floor(n^(2/3))+1` -/
def P17279487553956293738.Spec : Prop :=
  ∀ n, P17279487553956293738.a n = A077113 n

theorem P17279487553956293738.correct : P17279487553956293738.Spec := by
  intro n
  simp only [A077113]

end A077113

/-! ## A077113.P6930329942597704430

`ceil(root(acot(n²), -3))`
-/

namespace A077113.P6930329942597704430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n ^ 2 : ℝ) ^ (1 / (-3 : ℝ))⌉

end

end A077113.P6930329942597704430

namespace A077113

/-- `ceil(root(acot(n²), -3))` -/
def P6930329942597704430.Spec : Prop :=
  ∀ n, P6930329942597704430.a n = A077113 n

end A077113

/-! ## A077113.P15031114621683601014

`abs(xor(floor(n^(2/3)), -1))`
-/

namespace A077113.P15031114621683601014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌊(n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)⌋ (-1)|

end

end A077113.P15031114621683601014

namespace A077113

/-- `abs(xor(floor(n^(2/3)), -1))` -/
def P15031114621683601014.Spec : Prop :=
  ∀ n, P15031114621683601014.a n = A077113 n

end A077113

/-! ## A077113.P17569513357886369352

`∑[and(1, char[ceil(n^(3/2))])]`
-/

namespace A077113.P17569513357886369352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077113.P17569513357886369352

namespace A077113

/-- `∑[and(1, char[ceil(n^(3/2))])]` -/
def P17569513357886369352.Spec : Prop :=
  ∀ n, (P17569513357886369352.a n : ℤ) = A077113 n

end A077113

/-! ## A077113.P10539033125843251306

`floor(a(n-1)+n*n/(a(n-1)*a(n-1)*a(n-1)))` with `a(0)=1`
-/

namespace A077113.P10539033125843251306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) * ((n : ℚ) / (a (n - 1) * a (n - 1) * a (n - 1) : ℚ))⌋

end

end A077113.P10539033125843251306

namespace A077113

/-- `floor(a(n-1)+n*n/(a(n-1)*a(n-1)*a(n-1)))` -/
def P10539033125843251306.Spec : Prop :=
  ∀ n, P10539033125843251306.a n = A077113 n

end A077113

/-! ## A077113.P9811713190299969695

`∑[char[A185549(n)]]`
-/

namespace A077113.P9811713190299969695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077113.P9811713190299969695

namespace A077113

/-- `∑[char[A185549(n)]]` -/
def P9811713190299969695.Spec : Prop :=
  ∀ n, (P9811713190299969695.a n : ℤ) = A077113 n

end A077113

/-! ## A077113.P15728760266752701424

`A003059(A129011(n)+1)`
-/

namespace A077113.P15728760266752701424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A129011 n + 1).toNat

end

end A077113.P15728760266752701424

namespace A077113

/-- `A003059(A129011(n)+1)` -/
def P15728760266752701424.Spec : Prop :=
  ∀ n, P15728760266752701424.a n = A077113 n

end A077113

/-! ## A077113.P8585419589926719059

`A134914(n²+1)`
-/

namespace A077113.P8585419589926719059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n ^ 2 + 1)

end

end A077113.P8585419589926719059

namespace A077113

/-- `A134914(n²+1)` -/
def P8585419589926719059.Spec : Prop :=
  ∀ n, P8585419589926719059.a n = A077113 n

end A077113

/-!
# A077114: Least k such that Z(k,5) <= Z(n,6) where Z(m,s) = Sum_{i>=m} 1/i^s.

The programs for A077114, there is no canonical definition to state claims against.
-/

/-! ## A077114.P16988078630500754115

`A001511(A002385(n+1))*A047894(n+2)`
-/

namespace A077114.P16988078630500754115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002385 (n + 1)).toNat * A047894 (n + 2)

end

end A077114.P16988078630500754115

/-! ## A077114.P17667756165992898008

`A253903(A047894(2*n+1)²)+A047894(n+2)`
-/

namespace A077114.P17667756165992898008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 (A047894 (2 * n + 1) ^ 2).toNat + A047894 (n + 2)

end

end A077114.P17667756165992898008

/-! ## A077114.P18034258377839094022

`A047894(n+2)+A010054(A136684(n+1))`
-/

namespace A077114.P18034258377839094022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047894 (n + 2) + A010054 (A136684 (n + 1)).toNat

end

end A077114.P18034258377839094022

/-! ## A077114.P17621483745369485605

`A047894(n+2)+A010054(A350842(2*n))`
-/

namespace A077114.P17621483745369485605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047894 (n + 2) + A010054 (A350842 (2 * n)).toNat

end

end A077114.P17621483745369485605

/-! ## A077114.P280214737954304913

`A253903(A075169(n+1)²)+A047894(n+2)`
-/

namespace A077114.P280214737954304913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 (A075169 (n + 1) ^ 2).toNat + A047894 (n + 2)

end

end A077114.P280214737954304913

/-!
# A077115: Least integer square >= n^3.

The programs for A077115, the canonical program `A077115.P827730253123068802` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077115 has offset 0).

The definition of A077115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077115.P3963538129149721912

`ceil(n^(3/2))²`
-/

namespace A077115.P3963538129149721912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉ ^ 2

end

end A077115.P3963538129149721912

namespace A077115

/-- `ceil(n^(3/2))²` -/
def P3963538129149721912.Spec : Prop :=
  ∀ n, P3963538129149721912.a n = A077115 n

end A077115

/-! ## A077115.P827730253123068802

`A048761(n^3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077115

/-- `A048761(n^3)` -/
def P827730253123068802.Spec : Prop :=
  ∀ n, P827730253123068802.a n = A077115 n

theorem P827730253123068802.correct : P827730253123068802.Spec := by
  intro n
  simp only [A077115]

end A077115

/-! ## A077115.P3725857448724534370

`and(-3, ceil(n*sqrt(n))²)`
-/

namespace A077115.P3725857448724534370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉ ^ 2)

end

end A077115.P3725857448724534370

namespace A077115

/-- `and(-3, ceil(n*sqrt(n))²)` -/
def P3725857448724534370.Spec : Prop :=
  ∀ n, P3725857448724534370.a n = A077115 n

end A077115

/-! ## A077115.P1489122993169661273

`or(ceil(n*sqrt(n))², char[1])`
-/

namespace A077115.P1489122993169661273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉ ^ 2) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A077115.P1489122993169661273

namespace A077115

/-- `or(ceil(n*sqrt(n))², char[1])` -/
def P1489122993169661273.Spec : Prop :=
  ∀ n, P1489122993169661273.a n = A077115 n

end A077115

/-! ## A077115.P16146180150155605393

`A070929(n)+n^3`
-/

namespace A077115.P16146180150155605393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070929 n + (n ^ 3 : ℤ)

end

end A077115.P16146180150155605393

namespace A077115

/-- `A070929(n)+n^3` -/
def P16146180150155605393.Spec : Prop :=
  ∀ n, P16146180150155605393.a n = A077115 n

end A077115

/-! ## A077115.P12120991316112227956

`A176581(n)-n^3`
-/

namespace A077115.P12120991316112227956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176581 n - (n ^ 3 : ℤ)

end

end A077115.P12120991316112227956

namespace A077115

/-- `A176581(n)-n^3` -/
def P12120991316112227956.Spec : Prop :=
  ∀ n, P12120991316112227956.a n = A077115 n

theorem P12120991316112227956.correct : P12120991316112227956.Spec := by
  intro n
  simp only [A077115, Nat.add_sub_cancel, A077115.P12120991316112227956.a, A077115.P827730253123068802.a, A048761, A048761.P914736112300567897.a, A176581, A176581.P1163712265648664244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077115

/-! ## A077115.P7957202079305682169

`A185549(n)*A185549(n)`
-/

namespace A077115.P7957202079305682169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n * A185549 n

end

end A077115.P7957202079305682169

namespace A077115

/-- `A185549(n)*A185549(n)` -/
def P7957202079305682169.Spec : Prop :=
  ∀ n, P7957202079305682169.a n = A077115 n

end A077115

/-! ## A077115.P15151502038428258145

`A065733(n)+A077116(n)+A070929(n)`
-/

namespace A077115.P15151502038428258145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065733 n + (A077116 n + A070929 n)

end

end A077115.P15151502038428258145

namespace A077115

/-- `A065733(n)+A077116(n)+A070929(n)` -/
def P15151502038428258145.Spec : Prop :=
  ∀ n, P15151502038428258145.a n = A077115 n

end A077115

/-! ## A077115.P4883714878389559626

`∩[n², ceil(n*sqrt(n))²]`
-/

namespace A077115.P4883714878389559626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉ ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077115.P4883714878389559626

namespace A077115

/-- `∩[n², ceil(n*sqrt(n))²]` -/
def P4883714878389559626.Spec : Prop :=
  ∀ n, (P4883714878389559626.a n : ℤ) = A077115 n

end A077115

/-! ## A077115.P1658974130876805422

`A065733(n)+A176581(n)-A176580(n+1)`
-/

namespace A077115.P1658974130876805422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065733 n + (A176581 n - A176580 (n + 1))

end

end A077115.P1658974130876805422

namespace A077115

/-- `A065733(n)+A176581(n)-A176580(n+1)` -/
def P1658974130876805422.Spec : Prop :=
  ∀ n, P1658974130876805422.a n = A077115 n

theorem P1658974130876805422.correct : P1658974130876805422.Spec := by
  intro n
  simp only [A077115, Nat.add_sub_cancel, A077115.P1658974130876805422.a, A077115.P827730253123068802.a, A048761, A048761.P914736112300567897.a, A065733, A065733.P3623888993656221851.a, A176580, A176580.P16864400630766180112.a, A176581, A176581.P1163712265648664244.a, A000093, A000093.P17445405278724815419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077115

/-! ## A077115.P15117645963401617610

`A000290(A185549(n))`
-/

namespace A077115.P15117645963401617610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A185549 n).toNat

end

end A077115.P15117645963401617610

namespace A077115

/-- `A000290(A185549(n))` -/
def P15117645963401617610.Spec : Prop :=
  ∀ n, P15117645963401617610.a n = A077115 n

end A077115

/-! ## A077115.P5968706338574525320

`A077110(A002821(n))+A070929(n)`
-/

namespace A077115.P5968706338574525320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077110 (A002821 n).toNat + A070929 n

end

end A077115.P5968706338574525320

namespace A077115

/-- `A077110(A002821(n))+A070929(n)` -/
def P5968706338574525320.Spec : Prop :=
  ∀ n, P5968706338574525320.a n = A077115 n

end A077115

/-! ## A077115.P6200864141524377348

`record[ceil(sqrt(A198063(n)))²]`
-/

namespace A077115.P6200864141524377348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A198063 n : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077115.P6200864141524377348

namespace A077115

/-- `record[ceil(sqrt(A198063(n)))²]` -/
def P6200864141524377348.Spec : Prop :=
  ∀ n, P6200864141524377348.a n = A077115 n

end A077115

/-! ## A077115.P1615439186215333199

`A002821(n²)+A070929(n)`
-/

namespace A077115.P1615439186215333199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n ^ 2) + A070929 n

end

end A077115.P1615439186215333199

namespace A077115

/-- `A002821(n²)+A070929(n)` -/
def P1615439186215333199.Spec : Prop :=
  ∀ n, P1615439186215333199.a n = A077115 n

end A077115

/-!
# A077116: n^3 - A065733(n).

The programs for A077116, the canonical program `A077116.P10717273427979693664` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077116 has offset 0).

The definition of A077116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077116.P10717273427979693664

`n^3-A065733(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077116

/-- `n^3-A065733(n)` -/
def P10717273427979693664.Spec : Prop :=
  ∀ n, P10717273427979693664.a n = A077116 n

theorem P10717273427979693664.correct : P10717273427979693664.Spec := by
  intro n
  simp only [A077116]

end A077116

/-! ## A077116.P11411564498774467452

`A053186(n^3)`
-/

namespace A077116.P11411564498774467452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n ^ 3)

end

end A077116.P11411564498774467452

namespace A077116

/-- `A053186(n^3)` -/
def P11411564498774467452.Spec : Prop :=
  ∀ n, P11411564498774467452.a n = A077116 n

theorem P11411564498774467452.correct : P11411564498774467452.Spec := by
  intro n
  simp only [A077116, Nat.add_sub_cancel, A077116.P11411564498774467452.a, A077116.P10717273427979693664.a, A053186, A053186.P11336721340617541042.a, A065733, A065733.P3623888993656221851.a, A000093, A000093.P17445405278724815419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077116

/-! ## A077116.P17761526128131998933

`n^3-floor(sqrt(n^3))²`
-/

namespace A077116.P17761526128131998933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.sqrt (n ^ 3) ^ 2 : ℤ)

end

end A077116.P17761526128131998933

namespace A077116

/-- `n^3-floor(sqrt(n^3))²` -/
def P17761526128131998933.Spec : Prop :=
  ∀ n, P17761526128131998933.a n = A077116 n

end A077116

/-! ## A077116.P696346675621136269

`abs(lcm(C(2, n+2)-1, floor(n^(3/2))²)-n^3)`
-/

namespace A077116.P696346675621136269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lcm ((Nat.choose 2 (n + 2) : ℤ) - 1) (⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ ^ 2) : ℤ) - (n ^ 3 : ℤ)|

end

end A077116.P696346675621136269

namespace A077116

/-- `abs(lcm(C(2, n+2)-1, floor(n^(3/2))²)-n^3)` -/
def P696346675621136269.Spec : Prop :=
  ∀ n, P696346675621136269.a n = A077116 n

end A077116

/-! ## A077116.P7975698637680570948

`abs(and(C(2, n+2)-1, floor(n^(3/2))²)-n^3)`
-/

namespace A077116.P7975698637680570948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land ((Nat.choose 2 (n + 2) : ℤ) - 1) (⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ ^ 2) - (n ^ 3 : ℤ)|

end

end A077116.P7975698637680570948

namespace A077116

/-- `abs(and(C(2, n+2)-1, floor(n^(3/2))²)-n^3)` -/
def P7975698637680570948.Spec : Prop :=
  ∀ n, P7975698637680570948.a n = A077116 n

end A077116

/-! ## A077116.P16282879677016808046

`abs(floor(n^(3/2))²%((n+1)*Δ[n^3])-n^3)`
-/

namespace A077116.P16282879677016808046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ ^ 2) ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) - (n ^ 3 : ℤ)|

end

end A077116.P16282879677016808046

namespace A077116

/-- `abs(floor(n^(3/2))²%((n+1)*Δ[n^3])-n^3)` -/
def P16282879677016808046.Spec : Prop :=
  ∀ n, P16282879677016808046.a n = A077116 n

end A077116

/-! ## A077116.P9868489524973825681

`abs(n*n²-A000093(n)²)`
-/

namespace A077116.P9868489524973825681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A000093 n ^ 2|

end

end A077116.P9868489524973825681

namespace A077116

/-- `abs(n*n²-A000093(n)²)` -/
def P9868489524973825681.Spec : Prop :=
  ∀ n, P9868489524973825681.a n = A077116 n

end A077116

/-! ## A077116.P2124784178376559429

`abs(floor(n*sqrt(n))²-A000578(n))`
-/

namespace A077116.P2124784178376559429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋ ^ 2 - A000578 n|

end

end A077116.P2124784178376559429

namespace A077116

/-- `abs(floor(n*sqrt(n))²-A000578(n))` -/
def P2124784178376559429.Spec : Prop :=
  ∀ n, P2124784178376559429.a n = A077116 n

end A077116

/-! ## A077116.P10103200318868240841

`A070923(floor(sqrt(n^3)))`
-/

namespace A077116.P10103200318868240841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 (Nat.sqrt (n ^ 3))

end

end A077116.P10103200318868240841

namespace A077116

/-- `A070923(floor(sqrt(n^3)))` -/
def P10103200318868240841.Spec : Prop :=
  ∀ n, P10103200318868240841.a n = A077116 n

end A077116

/-!
# A077117: Least k such that Z(k,6) <= Z(n,7) where Z(m,s) = Sum_{i>=m} 1/i^s.

The programs for A077117, there is no canonical definition to state claims against.
-/

/-! ## A077117.P7888964643149795025

`A227177(A143689(A076921(n+1)))`
-/

namespace A077117.P7888964643149795025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A143689 (A076921 (n + 1)).toNat).toNat

end

end A077117.P7888964643149795025

/-!
# A077118: Nearest integer square to n^3.

The programs for A077118, the canonical program `A077118.P9288148666822653701` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077118 has offset 0).

The definition of A077118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077118.P9288148666822653701

`round(sqrt(n^3))²`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077118

/-- `round(sqrt(n^3))²` -/
def P9288148666822653701.Spec : Prop :=
  ∀ n, P9288148666822653701.a n = A077118 n

theorem P9288148666822653701.correct : P9288148666822653701.Spec := by
  intro n
  simp only [A077118]

end A077118

/-! ## A077118.P5653359313230269332

`or(round(n*sqrt(n))², char[1])`
-/

namespace A077118.P5653359313230269332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ)) ^ 2) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A077118.P5653359313230269332

namespace A077118

/-- `or(round(n*sqrt(n))², char[1])` -/
def P5653359313230269332.Spec : Prop :=
  ∀ n, P5653359313230269332.a n = A077118 n

end A077118

/-! ## A077118.P7488012107075624634

`and(-3, round(n^(3/2))²)`
-/

namespace A077118.P7488012107075624634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (SequenceMachineLib.roundAway ((n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)) ^ 2)

end

end A077118.P7488012107075624634

namespace A077118

/-- `and(-3, round(n^(3/2))²)` -/
def P7488012107075624634.Spec : Prop :=
  ∀ n, P7488012107075624634.a n = A077118 n

end A077118

/-! ## A077118.P9277309666274642703

`A077119(n)+n^3`
-/

namespace A077118.P9277309666274642703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077119 n + (n ^ 3 : ℤ)

end

end A077118.P9277309666274642703

namespace A077118

/-- `A077119(n)+n^3` -/
def P9277309666274642703.Spec : Prop :=
  ∀ n, P9277309666274642703.a n = A077118 n

theorem P9277309666274642703.correct : P9277309666274642703.Spec := by
  intro n
  simp only [A077118, Nat.add_sub_cancel, A077118.P9277309666274642703.a, A077118.P9288148666822653701.a, A077119, A077119.P17256151960313143409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077118

/-! ## A077118.P6397416994241972271

`A002821(n)*A002821(n)`
-/

namespace A077118.P6397416994241972271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 n * A002821 n

end

end A077118.P6397416994241972271

namespace A077118

/-- `A002821(n)*A002821(n)` -/
def P6397416994241972271.Spec : Prop :=
  ∀ n, P6397416994241972271.a n = A077118 n

end A077118

/-! ## A077118.P1172076568833691050

`A065733(n)+A077119(n)+A077116(n)`
-/

namespace A077118.P1172076568833691050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065733 n + (A077119 n + A077116 n)

end

end A077118.P1172076568833691050

namespace A077118

/-- `A065733(n)+A077119(n)+A077116(n)` -/
def P1172076568833691050.Spec : Prop :=
  ∀ n, P1172076568833691050.a n = A077118 n

theorem P1172076568833691050.correct : P1172076568833691050.Spec := by
  intro n
  simp only [A077118, Nat.add_sub_cancel, A077118.P1172076568833691050.a, A077118.P9288148666822653701.a, A065733, A065733.P3623888993656221851.a, A077116, A077116.P10717273427979693664.a, A077119, A077119.P17256151960313143409.a, A000093, A000093.P17445405278724815419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077118

/-! ## A077118.P6408288790933961345

`A077115(n)+A077119(n)-A070929(n)`
-/

namespace A077118.P6408288790933961345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077115 n + (A077119 n - A070929 n)

end

end A077118.P6408288790933961345

namespace A077118

/-- `A077115(n)+A077119(n)-A070929(n)` -/
def P6408288790933961345.Spec : Prop :=
  ∀ n, P6408288790933961345.a n = A077118 n

end A077118

/-! ## A077118.P13313844867021425286

`∩[round(n*sqrt(n))², n²]`
-/

namespace A077118.P13313844867021425286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A077118.P13313844867021425286

namespace A077118

/-- `∩[round(n*sqrt(n))², n²]` -/
def P13313844867021425286.Spec : Prop :=
  ∀ n, (P13313844867021425286.a n : ℤ) = A077118 n

end A077118

/-! ## A077118.P1806970412652349510

`A000290(round(n*sqrt(n)))`
-/

namespace A077118.P1806970412652349510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (n : ℝ))).toNat

end

end A077118.P1806970412652349510

namespace A077118

/-- `A000290(round(n*sqrt(n)))` -/
def P1806970412652349510.Spec : Prop :=
  ∀ n, P1806970412652349510.a n = A077118 n

end A077118

/-! ## A077118.P7370586267030254376

`record[gcd(n, A054847(n))²]`
-/

namespace A077118.P7370586267030254376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A054847 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077118.P7370586267030254376

namespace A077118

/-- `record[gcd(n, A054847(n))²]` -/
def P7370586267030254376.Spec : Prop :=
  ∀ n, (P7370586267030254376.a n : ℤ) = A077118 n

end A077118

/-!
# A077119: a(n) = A077118(n) - n^3.

The programs for A077119, the canonical program `A077119.P17256151960313143409` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077119 has offset 0).

The definition of A077119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077119.P16945516942473445947

`round(sqrt(n^3))²-n^3`
-/

namespace A077119.P16945516942473445947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ)) ^ 2 - (n ^ 3 : ℤ)

end

end A077119.P16945516942473445947

namespace A077119

/-- `round(sqrt(n^3))²-n^3` -/
def P16945516942473445947.Spec : Prop :=
  ∀ n, P16945516942473445947.a n = A077119 n

end A077119

/-! ## A077119.P17256151960313143409

`A077118(n)-n^3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077119

/-- `A077118(n)-n^3` -/
def P17256151960313143409.Spec : Prop :=
  ∀ n, P17256151960313143409.a n = A077119 n

theorem P17256151960313143409.correct : P17256151960313143409.Spec := by
  intro n
  simp only [A077119]

end A077119

/-! ## A077119.P6183115647272638691

`(A077118(n)-A000578(n))/A007318(C(2, n²))`
-/

namespace A077119.P6183115647272638691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077118 n - A000578 n : ℚ) / (A007318 (Nat.choose 2 (n ^ 2)) : ℚ)

end

end A077119.P6183115647272638691

namespace A077119

/-- `(A077118(n)-A000578(n))/A007318(C(2, n²))` -/
def P6183115647272638691.Spec : Prop :=
  ∀ n, P6183115647272638691.a n = (A077119 n : ℚ)

end A077119

/-! ## A077119.P12984809395080050534

`(A077118(n)-A000578(n))*root(A054977(n), n+1)`
-/

namespace A077119.P12984809395080050534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077118 n - A000578 n : ℝ) * (A054977 n : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A077119.P12984809395080050534

namespace A077119

/-- `(A077118(n)-A000578(n))*root(A054977(n), n+1)` -/
def P12984809395080050534.Spec : Prop :=
  ∀ n, P12984809395080050534.a n = (A077119 n : ℝ)

end A077119

/-! ## A077119.P5285174288049884325

`-A077111(round(n^(3/2)))`
-/

namespace A077119.P5285174288049884325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077111 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((3 : ℚ) / 2 : ℝ))).toNat

end

end A077119.P5285174288049884325

namespace A077119

/-- `-A077111(round(n^(3/2)))` -/
def P5285174288049884325.Spec : Prop :=
  ∀ n, P5285174288049884325.a n = A077119 n

end A077119

/-! ## A077119.P12959074872067826986

`A033999(2*n+1)*A077111(round(n^(3/2)))`
-/

namespace A077119.P12959074872067826986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A077111 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((3 : ℚ) / 2 : ℝ))).toNat

end

end A077119.P12959074872067826986

namespace A077119

/-- `A033999(2*n+1)*A077111(round(n^(3/2)))` -/
def P12959074872067826986.Spec : Prop :=
  ∀ n, P12959074872067826986.a n = A077119 n

end A077119

/-! ## A077119.P3795242993867753006

`(A077118(n)-A000578(n))*A007318(∑[n])`
-/

namespace A077119.P3795242993867753006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077118 n - A000578 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077119.P3795242993867753006

namespace A077119

/-- `(A077118(n)-A000578(n))*A007318(∑[n])` -/
def P3795242993867753006.Spec : Prop :=
  ∀ n, P3795242993867753006.a n = A077119 n

end A077119

/-!
# A077120: n^3 times nearest integer square to n^3.

The programs for A077120, the canonical program `A077120.P9632200324540338006` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077120 has offset 0).

The definition of A077120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077120.P9632200324540338006

`A000578(n)*A077118(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077120

/-- `A000578(n)*A077118(n)` -/
def P9632200324540338006.Spec : Prop :=
  ∀ n, P9632200324540338006.a n = A077120 n

theorem P9632200324540338006.correct : P9632200324540338006.Spec := by
  intro n
  simp only [A077120]

end A077120

/-! ## A077120.P7953936331675689006

`round(sqrt(n^3))²*n^3`
-/

namespace A077120.P7953936331675689006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ)) ^ 2 * (n ^ 3 : ℤ)

end

end A077120.P7953936331675689006

namespace A077120

/-- `round(sqrt(n^3))²*n^3` -/
def P7953936331675689006.Spec : Prop :=
  ∀ n, P7953936331675689006.a n = A077120 n

theorem P7953936331675689006.correct : P7953936331675689006.Spec := by
  intro n
  simp only [A077120, Nat.add_sub_cancel, A077120.P7953936331675689006.a, A077120.P9632200324540338006.a, A000578, A000578.P12162961755414704816.a, A077118, A077118.P9288148666822653701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077120

/-! ## A077120.P13653585515760035918

`A077112(round(sqrt(n^3)))`
-/

namespace A077120.P13653585515760035918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077112 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ))).toNat

end

end A077120.P13653585515760035918

namespace A077120

/-- `A077112(round(sqrt(n^3)))` -/
def P13653585515760035918.Spec : Prop :=
  ∀ n, P13653585515760035918.a n = A077120 n

end A077120

/-! ## A077120.P8921488743305652910

`lcm(n, A077112(A002821(n)))`
-/

namespace A077120.P8921488743305652910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A077112 (A002821 n).toNat)

end

end A077120.P8921488743305652910

namespace A077120

/-- `lcm(n, A077112(A002821(n)))` -/
def P8921488743305652910.Spec : Prop :=
  ∀ n, (P8921488743305652910.a n : ℤ) = A077120 n

end A077120

/-! ## A077120.P16926912548973455400

`A077112(A002821(n))+char[A189991(n+1)]`
-/

namespace A077120.P16926912548973455400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077112 (A002821 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A077120.P16926912548973455400

namespace A077120

/-- `A077112(A002821(n))+char[A189991(n+1)]` -/
def P16926912548973455400.Spec : Prop :=
  ∀ n, P16926912548973455400.a n = A077120 n

end A077120

/-! ## A077120.P8632637361341274374

`A077112(A002821(n))+char[A269207(n+1)]`
-/

namespace A077120.P8632637361341274374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269207 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077112 (A002821 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A077120.P8632637361341274374

namespace A077120

/-- `A077112(A002821(n))+char[A269207(n+1)]` -/
def P8632637361341274374.Spec : Prop :=
  ∀ n, P8632637361341274374.a n = A077120 n

end A077120

/-! ## A077120.P1069091895267633650

`A077112(A002821(n))+char[A322487(n+3)]`
-/

namespace A077120.P1069091895267633650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322487 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077112 (A002821 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A077120.P1069091895267633650

namespace A077120

/-- `A077112(A002821(n))+char[A322487(n+3)]` -/
def P1069091895267633650.Spec : Prop :=
  ∀ n, P1069091895267633650.a n = A077120 n

end A077120

/-! ## A077120.P17511875591466214223

`A077112(A002821(n))/A007318(C(n, 2))`
-/

namespace A077120.P17511875591466214223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077112 (A002821 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A077120.P17511875591466214223

namespace A077120

/-- `A077112(A002821(n))/A007318(C(n, 2))` -/
def P17511875591466214223.Spec : Prop :=
  ∀ n, P17511875591466214223.a n = (A077120 n : ℚ)

end A077120

/-!
# A077121: Number of integer squares <= n^3.

The programs for A077121, the canonical program `A077121.P1205340503456116965` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077121 has offset 0).

The definition of A077121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077121.P1205340503456116965

`floor(sqrt(n^3))+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077121

/-- `floor(sqrt(n^3))+1` -/
def P1205340503456116965.Spec : Prop :=
  ∀ n, (P1205340503456116965.a n : ℤ) = A077121 n

theorem P1205340503456116965.correct : P1205340503456116965.Spec := by
  intro n
  simp only [A077121]

end A077121

/-! ## A077121.P13130597503662904984

`ceil(sqrt(sin(1)+n^3))`
-/

namespace A077121.P13130597503662904984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sin (1 : ℝ) + (n ^ 3 : ℝ))⌉

end

end A077121.P13130597503662904984

namespace A077121

/-- `ceil(sqrt(sin(1)+n^3))` -/
def P13130597503662904984.Spec : Prop :=
  ∀ n, P13130597503662904984.a n = A077121 n

end A077121

/-! ## A077121.P2800692234703090000

`ceil(sqrt(atan(1)+n^3))`
-/

namespace A077121.P2800692234703090000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.arctan (1 : ℝ) + (n ^ 3 : ℝ))⌉

end

end A077121.P2800692234703090000

namespace A077121

/-- `ceil(sqrt(atan(1)+n^3))` -/
def P2800692234703090000.Spec : Prop :=
  ∀ n, P2800692234703090000.a n = A077121 n

end A077121

/-! ## A077121.P14754007829057704968

`ceil(sqrt(n^3-tan(3)))`
-/

namespace A077121.P14754007829057704968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n ^ 3 : ℝ) - Real.tan (3 : ℝ))⌉

end

end A077121.P14754007829057704968

namespace A077121

/-- `ceil(sqrt(n^3-tan(3)))` -/
def P14754007829057704968.Spec : Prop :=
  ∀ n, P14754007829057704968.a n = A077121 n

end A077121

/-! ## A077121.P5658782634276355029

`ceil(sqrt(n^3-sin(5)))`
-/

namespace A077121.P5658782634276355029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n ^ 3 : ℝ) - Real.sin (5 : ℝ))⌉

end

end A077121.P5658782634276355029

namespace A077121

/-- `ceil(sqrt(n^3-sin(5)))` -/
def P5658782634276355029.Spec : Prop :=
  ∀ n, P5658782634276355029.a n = A077121 n

end A077121

/-! ## A077121.P3672589942932071838

`ceil(sqrt(tanh(1)+n^3))`
-/

namespace A077121.P3672589942932071838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.tanh (1 : ℝ) + (n ^ 3 : ℝ))⌉

end

end A077121.P3672589942932071838

namespace A077121

/-- `ceil(sqrt(tanh(1)+n^3))` -/
def P3672589942932071838.Spec : Prop :=
  ∀ n, P3672589942932071838.a n = A077121 n

end A077121

/-! ## A077121.P2209557503709340454

`ceil(sqrt(cot(1)+n^3))`
-/

namespace A077121.P2209557503709340454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.cot (1 : ℝ) + (n ^ 3 : ℝ))⌉

end

end A077121.P2209557503709340454

namespace A077121

/-- `ceil(sqrt(cot(1)+n^3))` -/
def P2209557503709340454.Spec : Prop :=
  ∀ n, P2209557503709340454.a n = A077121 n

end A077121

/-! ## A077121.P610341299966006738

`ceil(sqrt(n^3-cot(2)))`
-/

namespace A077121.P610341299966006738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n ^ 3 : ℝ) - Real.cot (2 : ℝ))⌉

end

end A077121.P610341299966006738

namespace A077121

/-- `ceil(sqrt(n^3-cot(2)))` -/
def P610341299966006738.Spec : Prop :=
  ∀ n, P610341299966006738.a n = A077121 n

end A077121

/-! ## A077121.P14356214489693019985

`ceil(1/acot(n*sqrt(n)))`
-/

namespace A077121.P14356214489693019985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((n : ℝ) * Real.sqrt (n : ℝ))⌉

end

end A077121.P14356214489693019985

namespace A077121

/-- `ceil(1/acot(n*sqrt(n)))` -/
def P14356214489693019985.Spec : Prop :=
  ∀ n, P14356214489693019985.a n = A077121 n

end A077121

/-! ## A077121.P642698443621874479

`ceil(sqrt(Δ[C(n, 2)²]+1))`
-/

namespace A077121.P642698443621874479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 : ℝ)⌉

end

end A077121.P642698443621874479

namespace A077121

/-- `ceil(sqrt(Δ[C(n, 2)²]+1))` -/
def P642698443621874479.Spec : Prop :=
  ∀ n, P642698443621874479.a n = A077121 n

end A077121

/-! ## A077121.P9043918703404700649

`ceil(sqrt(n%2+n^3+1))`
-/

namespace A077121.P9043918703404700649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n % 2 + n ^ 3 + 1 : ℕ) : ℝ)⌉

end

end A077121.P9043918703404700649

namespace A077121

/-- `ceil(sqrt(n%2+n^3+1))` -/
def P9043918703404700649.Spec : Prop :=
  ∀ n, P9043918703404700649.a n = A077121 n

end A077121

/-! ## A077121.P4309314320030774445

`ceil(sqrt(lcm(n^3+1, n+1)))`
-/

namespace A077121.P4309314320030774445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lcm (n ^ 3 + 1) (n + 1) : ℝ)⌉

end

end A077121.P4309314320030774445

namespace A077121

/-- `ceil(sqrt(lcm(n^3+1, n+1)))` -/
def P4309314320030774445.Spec : Prop :=
  ∀ n, P4309314320030774445.a n = A077121 n

end A077121

/-! ## A077121.P7109587529941529558

`ceil(sqrt((∑[n]-C(n, 2))^3+1))`
-/

namespace A077121.P7109587529941529558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)) ^ 3 + 1 : ℝ)⌉

end

end A077121.P7109587529941529558

namespace A077121

/-- `ceil(sqrt((∑[n]-C(n, 2))^3+1))` -/
def P7109587529941529558.Spec : Prop :=
  ∀ n, P7109587529941529558.a n = A077121 n

end A077121

/-! ## A077121.P1088687463059741548

`ceil(sqrt(sqrt(A002604(n))))`
-/

namespace A077121.P1088687463059741548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A002604 n : ℝ))⌉

end

end A077121.P1088687463059741548

namespace A077121

/-- `ceil(sqrt(sqrt(A002604(n))))` -/
def P1088687463059741548.Spec : Prop :=
  ∀ n, P1088687463059741548.a n = A077121 n

end A077121

/-! ## A077121.P11279410605192281506

`ceil(sqrt(sqrt(A060883(n))))`
-/

namespace A077121.P11279410605192281506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A060883 n : ℝ))⌉

end

end A077121.P11279410605192281506

namespace A077121

/-- `ceil(sqrt(sqrt(A060883(n))))` -/
def P11279410605192281506.Spec : Prop :=
  ∀ n, P11279410605192281506.a n = A077121 n

end A077121

/-! ## A077121.P10219851797910483857

`ceil(sqrt(A000578(n)+1))`
-/

namespace A077121.P10219851797910483857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000578 n + 1 : ℝ)⌉

end

end A077121.P10219851797910483857

namespace A077121

/-- `ceil(sqrt(A000578(n)+1))` -/
def P10219851797910483857.Spec : Prop :=
  ∀ n, P10219851797910483857.a n = A077121 n

end A077121

/-! ## A077121.P67781218127637914

`∑[A035936(abs(1-n))]`
-/

namespace A077121.P67781218127637914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077121.P67781218127637914

namespace A077121

/-- `∑[A035936(abs(1-n))]` -/
def P67781218127637914.Spec : Prop :=
  ∀ n, P67781218127637914.a n = A077121 n

end A077121

/-! ## A077121.P16885345637957276064

`ceil(sqrt(A000093(n)²+1))`
-/

namespace A077121.P16885345637957276064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000093 n ^ 2 + 1 : ℝ)⌉

end

end A077121.P16885345637957276064

namespace A077121

/-- `ceil(sqrt(A000093(n)²+1))` -/
def P16885345637957276064.Spec : Prop :=
  ∀ n, P16885345637957276064.a n = A077121 n

end A077121

/-! ## A077121.P4440615867133490579

`ceil(sqrt(sqrt(A131472(n)+1)))`
-/

namespace A077121.P4440615867133490579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A131472 n + 1 : ℝ))⌉

end

end A077121.P4440615867133490579

namespace A077121

/-- `ceil(sqrt(sqrt(A131472(n)+1)))` -/
def P4440615867133490579.Spec : Prop :=
  ∀ n, P4440615867133490579.a n = A077121 n

end A077121

/-!
# A077126: Sum of even-indexed primes.

The programs for A077126, the canonical program `A077126.P13407782285364760235` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077126 has offset 1).

The definition of A077126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077126.P13407782285364760235

`∑[A031215(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077126

/-- `∑[A031215(n+1)]` -/
def P13407782285364760235.Spec : Prop :=
  ∀ n, P13407782285364760235.a n = A077126 (n + 1)

theorem P13407782285364760235.correct : P13407782285364760235.Spec := by
  intro n
  simp only [A077126, Nat.add_sub_cancel]

end A077126

/-! ## A077126.P4470902443675138921

`∑[A001748(2*(n+1))/3]`
-/

namespace A077126.P4470902443675138921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (2 * (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P4470902443675138921

namespace A077126

/-- `∑[A001748(2*(n+1))/3]` -/
def P4470902443675138921.Spec : Prop :=
  ∀ n, P4470902443675138921.a n = (A077126 (n + 1) : ℚ)

end A077126

/-! ## A077126.P3259224040431269172

`∑[A001749(2*(n+1))/4]`
-/

namespace A077126.P3259224040431269172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (2 * (n + 1)) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P3259224040431269172

namespace A077126

/-- `∑[A001749(2*(n+1))/4]` -/
def P3259224040431269172.Spec : Prop :=
  ∀ n, P3259224040431269172.a n = (A077126 (n + 1) : ℚ)

end A077126

/-! ## A077126.P17689567439982520789

`∑[record[A031215(A291766(n))]]`
-/

namespace A077126.P17689567439982520789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P17689567439982520789

namespace A077126

/-- `∑[record[A031215(A291766(n))]]` -/
def P17689567439982520789.Spec : Prop :=
  ∀ n, P17689567439982520789.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P8433852458973585524

`∑[record[A031215(A323889(n))]]`
-/

namespace A077126.P8433852458973585524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P8433852458973585524

namespace A077126

/-- `∑[record[A031215(A323889(n))]]` -/
def P8433852458973585524.Spec : Prop :=
  ∀ n, P8433852458973585524.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P5152572053131674071

`∑[record[A031215(A324346(n))]]`
-/

namespace A077126.P5152572053131674071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P5152572053131674071

namespace A077126

/-- `∑[record[A031215(A324346(n))]]` -/
def P5152572053131674071.Spec : Prop :=
  ∀ n, P5152572053131674071.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P749998714508107900

`A077133(n+1)+A077131(n+1)`
-/

namespace A077126.P749998714508107900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077133 (n + 1) + A077131 (n + 1)

end

end A077126.P749998714508107900

namespace A077126

/-- `A077133(n+1)+A077131(n+1)` -/
def P749998714508107900.Spec : Prop :=
  ∀ n, P749998714508107900.a n = A077126 (n + 1)

theorem P749998714508107900.correct : P749998714508107900.Spec := by
  intro n
  simp only [A077126, Nat.add_sub_cancel, A077126.P749998714508107900.a, A077126.P13407782285364760235.f1, A077126.P13407782285364760235.a, A031215, A031215.P5770198321376253516.a, A077131, A077131.P11118684642387599196.f1, A077131.P11118684642387599196.a, A077133, A077133.P4837546803455532653.a, A008347, A008347.P7172351178524916195.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077126

/-! ## A077126.P4884632249339915729

`∑[A072473(n+1)+A000040(n+1)]`
-/

namespace A077126.P4884632249339915729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P4884632249339915729

namespace A077126

/-- `∑[A072473(n+1)+A000040(n+1)]` -/
def P4884632249339915729.Spec : Prop :=
  ∀ n, P4884632249339915729.a n = A077126 (n + 1)

theorem P4884632249339915729.correct : P4884632249339915729.Spec := by
  intro n
  simp only [A077126, Nat.add_sub_cancel, A077126.P4884632249339915729.f1, A077126.P4884632249339915729.a, A077126.P13407782285364760235.f1, A077126.P13407782285364760235.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A072473, A072473.P3407629193092000128.a, A066066, A066066.P11585399840041140735.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077126

/-! ## A077126.P3244433350246676776

`∑[p?[A066207(n+1)]]`
-/

namespace A077126.P3244433350246676776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P3244433350246676776

namespace A077126

/-- `∑[p?[A066207(n+1)]]` -/
def P3244433350246676776.Spec : Prop :=
  ∀ n, P3244433350246676776.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P18259491283547914249

`A004139(2*n)+a(n-1)` with `a(0)=3`
-/

namespace A077126.P18259491283547914249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004139 (2 * n) + a (n - 1)

end

end A077126.P18259491283547914249

namespace A077126

/-- `A004139(2*n)+a(n-1)` -/
def P18259491283547914249.Spec : Prop :=
  ∀ n, P18259491283547914249.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P15624584479258407075

`∑[A176569(2*n+1)]+n+2`
-/

namespace A077126.P15624584479258407075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176569 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)

end

end A077126.P15624584479258407075

namespace A077126

/-- `∑[A176569(2*n+1)]+n+2` -/
def P15624584479258407075.Spec : Prop :=
  ∀ n, P15624584479258407075.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P14607901790598330780

`∑[A065091(Δ[n²])]`
-/

namespace A077126.P14607901790598330780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P14607901790598330780

namespace A077126

/-- `∑[A065091(Δ[n²])]` -/
def P14607901790598330780.Spec : Prop :=
  ∀ n, P14607901790598330780.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P6923961778706263007

`∑[p?[A273960(n+1)]]`
-/

namespace A077126.P6923961778706263007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P6923961778706263007

namespace A077126

/-- `∑[p?[A273960(n+1)]]` -/
def P6923961778706263007.Spec : Prop :=
  ∀ n, P6923961778706263007.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P8733802314359480590

`∑[record[A273960(n+2)]]`
-/

namespace A077126.P8733802314359480590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P8733802314359480590

namespace A077126

/-- `∑[record[A273960(n+2)]]` -/
def P8733802314359480590.Spec : Prop :=
  ∀ n, P8733802314359480590.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P8272275019035085249

`∑[p?[A062720(n+2)]]`
-/

namespace A077126.P8272275019035085249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062720 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P8272275019035085249

namespace A077126

/-- `∑[p?[A062720(n+2)]]` -/
def P8272275019035085249.Spec : Prop :=
  ∀ n, P8272275019035085249.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P10869529525194013924

`∑[p?[A350171(n+2)]]`
-/

namespace A077126.P10869529525194013924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P10869529525194013924

namespace A077126

/-- `∑[p?[A350171(n+2)]]` -/
def P10869529525194013924.Spec : Prop :=
  ∀ n, P10869529525194013924.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P132823039858447237

`∑[A000040(2*(n+1))]`
-/

namespace A077126.P132823039858447237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P132823039858447237

namespace A077126

/-- `∑[A000040(2*(n+1))]` -/
def P132823039858447237.Spec : Prop :=
  ∀ n, P132823039858447237.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P15415794062200685676

`∑[A006005(2*(n+1))]`
-/

namespace A077126.P15415794062200685676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P15415794062200685676

namespace A077126

/-- `∑[A006005(2*(n+1))]` -/
def P15415794062200685676.Spec : Prop :=
  ∀ n, P15415794062200685676.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P8762766161945804971

`∑[A062720(2*(n+1))]`
-/

namespace A077126.P8762766161945804971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062720 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P8762766161945804971

namespace A077126

/-- `∑[A062720(2*(n+1))]` -/
def P8762766161945804971.Spec : Prop :=
  ∀ n, P8762766161945804971.a n = A077126 (n + 1)

end A077126

/-! ## A077126.P15318135572101605489

`∑[A161847(2*(n+1))]`
-/

namespace A077126.P15318135572101605489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077126.P15318135572101605489

namespace A077126

/-- `∑[A161847(2*(n+1))]` -/
def P15318135572101605489.Spec : Prop :=
  ∀ n, P15318135572101605489.a n = A077126 (n + 1)

end A077126

/-!
# A077128: Smallest number greater than the previous term which is relatively prime to each of the group of the next n numbers.

The programs for A077128, the canonical program `A077128.P6236648735543472976` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077128 has offset 1).

The definition of A077128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077128.P6236648735543472976

`A097050(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A077128

/-- `A097050(n+1)` -/
def P6236648735543472976.Spec : Prop :=
  ∀ n, P6236648735543472976.a n = A077128 (n + 1)

theorem P6236648735543472976.correct : P6236648735543472976.Spec := by
  intro n
  simp only [A077128, Nat.add_sub_cancel]

end A077128

/-! ## A077128.P16408490227068418826

`A000040(∑[A066888(n)]+1)`
-/

namespace A077128.P16408490227068418826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A077128.P16408490227068418826

namespace A077128

/-- `A000040(∑[A066888(n)]+1)` -/
def P16408490227068418826.Spec : Prop :=
  ∀ n, P16408490227068418826.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P3141571295521431814

`A000040(A111208(n+1)+1)`
-/

namespace A077128.P3141571295521431814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111208 (n + 1) + 1).toNat

end

end A077128.P3141571295521431814

namespace A077128

/-- `A000040(A111208(n+1)+1)` -/
def P3141571295521431814.Spec : Prop :=
  ∀ n, P3141571295521431814.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P6055285446833584853

`A151800(∑[n+1])`
-/

namespace A077128.P6055285446833584853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077128.P6055285446833584853

namespace A077128

/-- `A151800(∑[n+1])` -/
def P6055285446833584853.Spec : Prop :=
  ∀ n, P6055285446833584853.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P6218000354985807239

`∑{p}[A151800(A253145(n)), #]`
-/

namespace A077128.P6218000354985807239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A253145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077128.P6218000354985807239

namespace A077128

/-- `∑{p}[A151800(A253145(n)), #]` -/
def P6218000354985807239.Spec : Prop :=
  ∀ n, (P6218000354985807239.a n : ℤ) = A077128 (n + 1)

end A077128

/-! ## A077128.P4301894188491182205

`A020639(A151800(C(n+2, 2)))`
-/

namespace A077128.P4301894188491182205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A151800 (Nat.choose (n + 2) 2)).toNat

end

end A077128.P4301894188491182205

namespace A077128

/-- `A020639(A151800(C(n+2, 2)))` -/
def P4301894188491182205.Spec : Prop :=
  ∀ n, P4301894188491182205.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P9399365895080436553

`A000040(A000720(∑[n+1])+1)`
-/

namespace A077128.P9399365895080436553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A077128.P9399365895080436553

namespace A077128

/-- `A000040(A000720(∑[n+1])+1)` -/
def P9399365895080436553.Spec : Prop :=
  ∀ n, P9399365895080436553.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P6155311842780015167

`A007918(∑[or(2, n)])`
-/

namespace A077128.P6155311842780015167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077128.P6155311842780015167

namespace A077128

/-- `A007918(∑[or(2, n)])` -/
def P6155311842780015167.Spec : Prop :=
  ∀ n, P6155311842780015167.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P14314664899162141383

`A007918(∑[n+1]+1)`
-/

namespace A077128.P14314664899162141383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077128.P14314664899162141383

namespace A077128

/-- `A007918(∑[n+1]+1)` -/
def P14314664899162141383.Spec : Prop :=
  ∀ n, P14314664899162141383.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P4691271133494764337

`A013632(∑[n+1])+∑[n+1]`
-/

namespace A077128.P4691271133494764337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A077128.P4691271133494764337

namespace A077128

/-- `A013632(∑[n+1])+∑[n+1]` -/
def P4691271133494764337.Spec : Prop :=
  ∀ n, P4691271133494764337.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P5700678203095865451

`A000040(A036234(∑[n+1]))`
-/

namespace A077128.P5700678203095865451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036234 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077128.P5700678203095865451

namespace A077128

/-- `A000040(A036234(∑[n+1]))` -/
def P5700678203095865451.Spec : Prop :=
  ∀ n, P5700678203095865451.a n = A077128 (n + 1)

end A077128

/-! ## A077128.P5557699799082932484

`A006530(A139693(∑[n+1]))`
-/

namespace A077128.P5557699799082932484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139693 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077128.P5557699799082932484

namespace A077128

/-- `A006530(A139693(∑[n+1]))` -/
def P5557699799082932484.Spec : Prop :=
  ∀ n, P5557699799082932484.a n = A077128 (n + 1)

end A077128

/-!
# A077129: Smallest number which is relatively prime to all the numbers between successive odd primes.

The programs for A077129, there is no canonical definition to state claims against.
-/

/-! ## A077129.P1060869796382499171

`A284723(A076978(n+2))`
-/

namespace A077129.P1060869796382499171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (A076978 (n + 2)).toNat

end

end A077129.P1060869796382499171

/-! ## A077129.P1309446827881622706

`A284723(A079615(n+2))`
-/

namespace A077129.P1309446827881622706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (A079615 (n + 2)).toNat

end

end A077129.P1309446827881622706

/-!
# A077131: Sum of odd-indexed primes.

The programs for A077131, the canonical program `A077131.P11118684642387599196` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077131 has offset 1).

The definition of A077131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077131.P5698786791154522575

`∑[A031368(n+1)]`
-/

namespace A077131.P5698786791154522575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P5698786791154522575

namespace A077131

/-- `∑[A031368(n+1)]` -/
def P5698786791154522575.Spec : Prop :=
  ∀ n, P5698786791154522575.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P6475712339490812092

`∑[A001748(2*n+1)/3]`
-/

namespace A077131.P6475712339490812092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (2 * n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P6475712339490812092

namespace A077131

/-- `∑[A001748(2*n+1)/3]` -/
def P6475712339490812092.Spec : Prop :=
  ∀ n, P6475712339490812092.a n = (A077131 (n + 1) : ℚ)

end A077131

/-! ## A077131.P750763711277385955

`∑[A001749(2*n+1)/4]`
-/

namespace A077131.P750763711277385955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (2 * n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P750763711277385955

namespace A077131

/-- `∑[A001749(2*n+1)/4]` -/
def P750763711277385955.Spec : Prop :=
  ∀ n, P750763711277385955.a n = (A077131 (n + 1) : ℚ)

end A077131

/-! ## A077131.P16461351632684101612

`∑[A109723(n)-A109722(n)]`
-/

namespace A077131.P16461351632684101612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - A109722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P16461351632684101612

namespace A077131

/-- `∑[A109723(n)-A109722(n)]` -/
def P16461351632684101612.Spec : Prop :=
  ∀ n, P16461351632684101612.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P356342814366479736

`A077126(n+1)-A077133(n+1)`
-/

namespace A077131.P356342814366479736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077126 (n + 1) - A077133 (n + 1)

end

end A077131.P356342814366479736

namespace A077131

/-- `A077126(n+1)-A077133(n+1)` -/
def P356342814366479736.Spec : Prop :=
  ∀ n, P356342814366479736.a n = A077131 (n + 1)

theorem P356342814366479736.correct : P356342814366479736.Spec := by
  intro n
  simp only [A077131, Nat.add_sub_cancel, A077131.P356342814366479736.a, A077131.P11118684642387599196.f1, A077131.P11118684642387599196.a, A008347, A008347.P7172351178524916195.a, A077126, A077126.P13407782285364760235.f1, A077126.P13407782285364760235.a, A077133, A077133.P4837546803455532653.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077131

/-! ## A077131.P11118684642387599196

`∑[A008347(2*n+1)+A008347(2*n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077131

/-- `∑[A008347(2*n+1)+A008347(2*n)]` -/
def P11118684642387599196.Spec : Prop :=
  ∀ n, P11118684642387599196.a n = A077131 (n + 1)

theorem P11118684642387599196.correct : P11118684642387599196.Spec := by
  intro n
  simp only [A077131, Nat.add_sub_cancel]

end A077131

/-! ## A077131.P10511152425997309165

`∑[A007504(2*n+1)-A007504(2*n)]`
-/

namespace A077131.P10511152425997309165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 1) - A007504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P10511152425997309165

namespace A077131

/-- `∑[A007504(2*n+1)-A007504(2*n)]` -/
def P10511152425997309165.Spec : Prop :=
  ∀ n, P10511152425997309165.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P1982247386636212077

`∑[p?[A324812(n+1)]]`
-/

namespace A077131.P1982247386636212077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P1982247386636212077

namespace A077131

/-- `∑[p?[A324812(n+1)]]` -/
def P1982247386636212077.Spec : Prop :=
  ∀ n, P1982247386636212077.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P2350822938524736918

`∑[A156037(2*n+1)+1]`
-/

namespace A077131.P2350822938524736918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P2350822938524736918

namespace A077131

/-- `∑[A156037(2*n+1)+1]` -/
def P2350822938524736918.Spec : Prop :=
  ∀ n, P2350822938524736918.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P10663855834585059683

`A355726(2*n)+A031368(n+1)`
-/

namespace A077131.P10663855834585059683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 (2 * n) + A031368 (n + 1)

end

end A077131.P10663855834585059683

namespace A077131

/-- `A355726(2*n)+A031368(n+1)` -/
def P10663855834585059683.Spec : Prop :=
  ∀ n, P10663855834585059683.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P7348255119235839400

`A073738(Δ[n²])`
-/

namespace A077131.P7348255119235839400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077131.P7348255119235839400

namespace A077131

/-- `A073738(Δ[n²])` -/
def P7348255119235839400.Spec : Prop :=
  ∀ n, P7348255119235839400.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P12375764128458904976

`∑[A000040(Δ[n²])]`
-/

namespace A077131.P12375764128458904976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P12375764128458904976

namespace A077131

/-- `∑[A000040(Δ[n²])]` -/
def P12375764128458904976.Spec : Prop :=
  ∀ n, P12375764128458904976.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P5956555717798788218

`A355726(2*(n+1))`
-/

namespace A077131.P5956555717798788218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 (2 * (n + 1))

end

end A077131.P5956555717798788218

namespace A077131

/-- `A355726(2*(n+1))` -/
def P5956555717798788218.Spec : Prop :=
  ∀ n, P5956555717798788218.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P9943533308707919560

`∑[record[A213642(n+1)]]`
-/

namespace A077131.P9943533308707919560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P9943533308707919560

namespace A077131

/-- `∑[record[A213642(n+1)]]` -/
def P9943533308707919560.Spec : Prop :=
  ∀ n, P9943533308707919560.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P13806986473020670374

`∑[A008578(2*(n+1))]`
-/

namespace A077131.P13806986473020670374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P13806986473020670374

namespace A077131

/-- `∑[A008578(2*(n+1))]` -/
def P13806986473020670374.Spec : Prop :=
  ∀ n, P13806986473020670374.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P6089901609705482880

`∑[A182986(2*(n+1))]`
-/

namespace A077131.P6089901609705482880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P6089901609705482880

namespace A077131

/-- `∑[A182986(2*(n+1))]` -/
def P6089901609705482880.Spec : Prop :=
  ∀ n, P6089901609705482880.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P15036955241205554977

`∑[A213642(2*n+1)]`
-/

namespace A077131.P15036955241205554977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P15036955241205554977

namespace A077131

/-- `∑[A213642(2*n+1)]` -/
def P15036955241205554977.Spec : Prop :=
  ∀ n, P15036955241205554977.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P10987606933809147349

`∑[abs(A273960(2*n+1))]`
-/

namespace A077131.P10987606933809147349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P10987606933809147349

namespace A077131

/-- `∑[abs(A273960(2*n+1))]` -/
def P10987606933809147349.Spec : Prop :=
  ∀ n, P10987606933809147349.a n = A077131 (n + 1)

end A077131

/-! ## A077131.P2503289808139319992

`∑[sqrt(A001248(2*n+1))]`
-/

namespace A077131.P2503289808139319992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P2503289808139319992

namespace A077131

/-- `∑[sqrt(A001248(2*n+1))]` -/
def P2503289808139319992.Spec : Prop :=
  ∀ n, P2503289808139319992.a n = (A077131 (n + 1) : ℝ)

end A077131

/-! ## A077131.P1943075660955392291

`∑[sqrt(A280076(2*(n+1)))]`
-/

namespace A077131.P1943075660955392291
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077131.P1943075660955392291

namespace A077131

/-- `∑[sqrt(A280076(2*(n+1)))]` -/
def P1943075660955392291.Spec : Prop :=
  ∀ n, P1943075660955392291.a n = (A077131 (n + 1) : ℝ)

end A077131

/-!
# A077133: a(n) is the difference between the sum of the first n even-indexed primes and the sum of the first n odd-indexed primes.

The programs for A077133, the canonical program `A077133.P4837546803455532653` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077133 has offset 1).

The definition of A077133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077126, A077131, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077133.P2707437153341035909

`A008347(2*(n+1))`
-/

namespace A077133.P2707437153341035909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * (n + 1))

end

end A077133.P2707437153341035909

namespace A077133

/-- `A008347(2*(n+1))` -/
def P2707437153341035909.Spec : Prop :=
  ∀ n, P2707437153341035909.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P4837546803455532653

`A077126(n+1)-A077131(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A077133

/-- `A077126(n+1)-A077131(n+1)` -/
def P4837546803455532653.Spec : Prop :=
  ∀ n, P4837546803455532653.a n = A077133 (n + 1)

theorem P4837546803455532653.correct : P4837546803455532653.Spec := by
  intro n
  simp only [A077133, Nat.add_sub_cancel]

end A077133

/-! ## A077133.P15294594420051857194

`∑[A078584(n+1)]`
-/

namespace A077133.P15294594420051857194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077133.P15294594420051857194

namespace A077133

/-- `∑[A078584(n+1)]` -/
def P15294594420051857194.Spec : Prop :=
  ∀ n, P15294594420051857194.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P3882599246350498567

`∑[A001223(Δ[n²])]`
-/

namespace A077133.P3882599246350498567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077133.P3882599246350498567

namespace A077133

/-- `∑[A001223(Δ[n²])]` -/
def P3882599246350498567.Spec : Prop :=
  ∀ n, P3882599246350498567.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P16972670192328464923

`∑[A256737(n+1)+1]`
-/

namespace A077133.P16972670192328464923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256737 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077133.P16972670192328464923

namespace A077133

/-- `∑[A256737(n+1)+1]` -/
def P16972670192328464923.Spec : Prop :=
  ∀ n, P16972670192328464923.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P4392260716377368121

`or(1, ∑[A001223(2*n+1)])`
-/

namespace A077133.P4392260716377368121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077133.P4392260716377368121

namespace A077133

/-- `or(1, ∑[A001223(2*n+1)])` -/
def P4392260716377368121.Spec : Prop :=
  ∀ n, P4392260716377368121.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P9246993151759489241

`∑[A001223(A004277(n)+1)]-1`
-/

namespace A077133.P9246993151759489241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A004277 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077133.P9246993151759489241

namespace A077133

/-- `∑[A001223(A004277(n)+1)]-1` -/
def P9246993151759489241.Spec : Prop :=
  ∀ n, P9246993151759489241.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P12475462025958307335

`A000027(∑[A001223(2*n+1)])`
-/

namespace A077133.P12475462025958307335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077133.P12475462025958307335

namespace A077133

/-- `A000027(∑[A001223(2*n+1)])` -/
def P12475462025958307335.Spec : Prop :=
  ∀ n, P12475462025958307335.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P323850544497130474

`∑[A001223(A028310(n)+1+n)]-1`
-/

namespace A077133.P323850544497130474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077133.P323850544497130474

namespace A077133

/-- `∑[A001223(A028310(n)+1+n)]-1` -/
def P323850544497130474.Spec : Prop :=
  ∀ n, P323850544497130474.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P6833720026201555505

`filter[A008347(2*n), A098725(#)]`
-/

namespace A077133.P6833720026201555505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A077133.P6833720026201555505

namespace A077133

/-- `filter[A008347(2*n), A098725(#)]` -/
def P6833720026201555505.Spec : Prop :=
  ∀ n, P6833720026201555505.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P8243951792666457667

`filter[A008347(2*n), A115971(#)]`
-/

namespace A077133.P8243951792666457667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A077133.P8243951792666457667

namespace A077133

/-- `filter[A008347(2*n), A115971(#)]` -/
def P8243951792666457667.Spec : Prop :=
  ∀ n, P8243951792666457667.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P8169899162445636879

`filter[A008347(2*n), A166486(#)]`
-/

namespace A077133.P8169899162445636879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A077133.P8169899162445636879

namespace A077133

/-- `filter[A008347(2*n), A166486(#)]` -/
def P8169899162445636879.Spec : Prop :=
  ∀ n, P8169899162445636879.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P2417253052092586524

`filter[A008347(2*n), A168185(#)]`
-/

namespace A077133.P2417253052092586524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A077133.P2417253052092586524

namespace A077133

/-- `filter[A008347(2*n), A168185(#)]` -/
def P2417253052092586524.Spec : Prop :=
  ∀ n, P2417253052092586524.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P13941729615111626279

`∑[A176246(abs(1-n)+1+n)]+n`
-/

namespace A077133.P13941729615111626279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A077133.P13941729615111626279

namespace A077133

/-- `∑[A176246(abs(1-n)+1+n)]+n` -/
def P13941729615111626279.Spec : Prop :=
  ∀ n, P13941729615111626279.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P2837462199533675866

`∑[A075526(Δ[n²])]`
-/

namespace A077133.P2837462199533675866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077133.P2837462199533675866

namespace A077133

/-- `∑[A075526(Δ[n²])]` -/
def P2837462199533675866.Spec : Prop :=
  ∀ n, P2837462199533675866.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P10280619555158629049

`∑[A008866(2*n+1)]`
-/

namespace A077133.P10280619555158629049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008866 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077133.P10280619555158629049

namespace A077133

/-- `∑[A008866(2*n+1)]` -/
def P10280619555158629049.Spec : Prop :=
  ∀ n, P10280619555158629049.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P15319254292736836464

`∑[A054541(2*(n+1))]`
-/

namespace A077133.P15319254292736836464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077133.P15319254292736836464

namespace A077133

/-- `∑[A054541(2*(n+1))]` -/
def P15319254292736836464.Spec : Prop :=
  ∀ n, P15319254292736836464.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P14400805311359156212

`∑[A125266(2*(n+1))]`
-/

namespace A077133.P14400805311359156212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077133.P14400805311359156212

namespace A077133

/-- `∑[A125266(2*(n+1))]` -/
def P14400805311359156212.Spec : Prop :=
  ∀ n, P14400805311359156212.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P11969098647230099964

`A083236(2*(n+1))-2`
-/

namespace A077133.P11969098647230099964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083236 (2 * (n + 1)) - 2

end

end A077133.P11969098647230099964

namespace A077133

/-- `A083236(2*(n+1))-2` -/
def P11969098647230099964.Spec : Prop :=
  ∀ n, P11969098647230099964.a n = A077133 (n + 1)

end A077133

/-! ## A077133.P14514832713831318168

`A086910(2*(n+1))-2`
-/

namespace A077133.P14514832713831318168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086910 (2 * (n + 1)) - 2

end

end A077133.P14514832713831318168

namespace A077133

/-- `A086910(2*(n+1))-2` -/
def P14514832713831318168.Spec : Prop :=
  ∀ n, P14514832713831318168.a n = A077133 (n + 1)

end A077133

/-!
# A077135: Composite numbers n whose proper (other than 1 and n) odd divisors are prime and even divisors are 1 less than a prime.

The programs for A077135, the canonical program `A077135.P8276527008192767829` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077135 has offset 1).

The definition of A077135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077135.P8276527008192767829

`∪[2*A077065(n+1), A001358(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A077135

/-- `∪[2*A077065(n+1), A001358(n+1)]` -/
def P8276527008192767829.Spec : Prop :=
  ∀ n, (P8276527008192767829.a n : ℤ) = A077135 (n + 1)

theorem P8276527008192767829.correct : P8276527008192767829.Spec := by
  intro n
  simp only [A077135, Nat.add_sub_cancel]

end A077135

/-! ## A077135.P7775834445285676346

`∪[2*A164977(n+1), A001358(n+1)]`
-/

namespace A077135.P7775834445285676346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077135.P7775834445285676346

namespace A077135

/-- `∪[2*A164977(n+1), A001358(n+1)]` -/
def P7775834445285676346.Spec : Prop :=
  ∀ n, (P7775834445285676346.a n : ℤ) = A077135 (n + 1)

end A077135

/-! ## A077135.P15537318388038201843

`∪[4*A005384(n+1), A001358(n+1)]`
-/

namespace A077135.P15537318388038201843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077135.P15537318388038201843

namespace A077135

/-- `∪[4*A005384(n+1), A001358(n+1)]` -/
def P15537318388038201843.Spec : Prop :=
  ∀ n, (P15537318388038201843.a n : ℤ) = A077135 (n + 1)

end A077135

/-! ## A077135.P17070835289927838332

`eq[4, A064137(A211110(n))]`
-/

namespace A077135.P17070835289927838332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064137 (A211110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077135.P17070835289927838332

namespace A077135

/-- `eq[4, A064137(A211110(n))]` -/
def P17070835289927838332.Spec : Prop :=
  ∀ n, (P17070835289927838332.a n : ℤ) = A077135 (n + 1)

end A077135

/-!
# A077136: Composite numbers n whose proper divisors (excluding 1 and n) are all of the form p or p+1, with p prime.

The programs for A077136, there is no canonical definition to state claims against.
-/

/-! ## A077136.P1384237519123611751

`A002808(record[A008621(A081516(A008621(n)))])`
-/

namespace A077136.P1384237519123611751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A081516 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077136.P1384237519123611751

/-!
# A077138: a(0) = 0. If n is odd, a(n) = a(n-1) + n, otherwise a(n) = a(n-1) * n.

The programs for A077138, the canonical program `A077138.P4015169788317951920` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077138 has offset 0).

The definition of A077138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077138.P4015169788317951920

`A047904(n+1)-A037223(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077138

/-- `A047904(n+1)-A037223(n)` -/
def P4015169788317951920.Spec : Prop :=
  ∀ n, P4015169788317951920.a n = A077138 n

theorem P4015169788317951920.correct : P4015169788317951920.Spec := by
  intro n
  simp only [A077138]

end A077138

/-! ## A077138.P16282902183195493455

`A037223(n)-A047906(n+1)`
-/

namespace A077138.P16282902183195493455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 n - A047906 (n + 1)

end

end A077138.P16282902183195493455

namespace A077138

/-- `A037223(n)-A047906(n+1)` -/
def P16282902183195493455.Spec : Prop :=
  ∀ n, P16282902183195493455.a n = A077138 n

theorem P16282902183195493455.correct : P16282902183195493455.Spec := by
  intro n
  simp only [A077138, Nat.add_sub_cancel, A077138.P16282902183195493455.a, A077138.P4015169788317951920.a, A037223, A037223.P1304760960877444944.f1, A037223.P1304760960877444944.a, A047904, A047904.P2323867653551827.a, A047906, A047906.P525292265601986621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077138

/-! ## A077138.P11753703088675318582

`(A047904(n+1)-A047906(n+1))/2`
-/

namespace A077138.P11753703088675318582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047904 (n + 1) - A047906 (n + 1) : ℚ) / 2

end

end A077138.P11753703088675318582

namespace A077138

/-- `(A047904(n+1)-A047906(n+1))/2` -/
def P11753703088675318582.Spec : Prop :=
  ∀ n, P11753703088675318582.a n = (A077138 n : ℚ)

theorem P11753703088675318582.correct : P11753703088675318582.Spec := by
  intro n
  simp only [A077138, Nat.add_sub_cancel, A077138.P11753703088675318582.a, A077138.P4015169788317951920.a, A037223, A037223.P1304760960877444944.f1, A037223.P1304760960877444944.a, A047904, A047904.P2323867653551827.a, A047906, A047906.P525292265601986621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077138

/-! ## A077138.P13194009578333077950

`A047904(n+1)-A000165(A004526(n))`
-/

namespace A077138.P13194009578333077950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047904 (n + 1) - A000165 (A004526 n).toNat

end

end A077138.P13194009578333077950

namespace A077138

/-- `A047904(n+1)-A000165(A004526(n))` -/
def P13194009578333077950.Spec : Prop :=
  ∀ n, P13194009578333077950.a n = A077138 n

end A077138

/-! ## A077138.P12583741849802424336

`A000165(A004526(n))-A047906(n+1)`
-/

namespace A077138.P12583741849802424336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A004526 n).toNat - A047906 (n + 1)

end

end A077138.P12583741849802424336

namespace A077138

/-- `A000165(A004526(n))-A047906(n+1)` -/
def P12583741849802424336.Spec : Prop :=
  ∀ n, P12583741849802424336.a n = A077138 n

end A077138

/-!
# A077139: a(1) = 1, a(n) = lcm(n, a(n-1)) / gcd(n, a(n-1)).

The programs for A077139, the canonical program `A077139.P15242042144925941233` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077139 has offset 1).

The definition of A077139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077139.P15242042144925941233

`lcm(n+1, a(n-1))/gcd(n+1, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077139

/-- `lcm(n+1, a(n-1))/gcd(n+1, a(n-1))` -/
def P15242042144925941233.Spec : Prop :=
  ∀ n, P15242042144925941233.a n = (A077139 (n + 1) : ℚ)

end A077139

/-! ## A077139.P17913429271787150258

`A008339(n+2)`
-/

namespace A077139.P17913429271787150258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008339 (n + 2)

end

end A077139.P17913429271787150258

namespace A077139

/-- `A008339(n+2)` -/
def P17913429271787150258.Spec : Prop :=
  ∀ n, P17913429271787150258.a n = A077139 (n + 1)

end A077139

/-! ## A077139.P2620318303575974738

`(n+1)/gcd((n+1)², a(n-1)²)*a(n-1)` with `a(0)=1`
-/

namespace A077139.P2620318303575974738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) * a (n - 1)

end

end A077139.P2620318303575974738

namespace A077139

/-- `(n+1)/gcd((n+1)², a(n-1)²)*a(n-1)` -/
def P2620318303575974738.Spec : Prop :=
  ∀ n, P2620318303575974738.a n = (A077139 (n + 1) : ℚ)

end A077139

/-! ## A077139.P3975287353836342299

`A249831(∑[n]+1)`
-/

namespace A077139.P3975287353836342299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077139.P3975287353836342299

namespace A077139

/-- `A249831(∑[n]+1)` -/
def P3975287353836342299.Spec : Prop :=
  ∀ n, P3975287353836342299.a n = A077139 (n + 1)

end A077139

/-! ## A077139.P6637124798953551164

`or(char[6], A249831(A000124(n)))`
-/

namespace A077139.P6637124798953551164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A249831 (A000124 n).toNat)

end

end A077139.P6637124798953551164

namespace A077139

/-- `or(char[6], A249831(A000124(n)))` -/
def P6637124798953551164.Spec : Prop :=
  ∀ n, P6637124798953551164.a n = A077139 (n + 1)

end A077139

/-!
# A077140: a(1) = 1 and then add n to the previous term if n is coprime to the previous term, otherwise subtract n from the previous term. a(1) = 1 and a(n) = a(n-1) + n if gcd(n, a(n-1)) = 1, otherwise a(n) = a(n-1) - n.

The programs for A077140, the canonical program `A077140.P16085423654049118245` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077140 has offset 1).

The definition of A077140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077140.P16085423654049118245

`∑[(n+1)*(1-and(2, n))]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077140

/-- `∑[(n+1)*(1-and(2, n))]` -/
def P16085423654049118245.Spec : Prop :=
  ∀ n, P16085423654049118245.a n = A077140 (n + 1)

theorem P16085423654049118245.correct : P16085423654049118245.Spec := by
  intro n
  simp only [A077140, Nat.add_sub_cancel]

end A077140

/-! ## A077140.P14875406296981872845

`∑[(n+1)/(1-and(2, n))]`
-/

namespace A077140.P14875406296981872845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077140.P14875406296981872845

namespace A077140

/-- `∑[(n+1)/(1-and(2, n))]` -/
def P14875406296981872845.Spec : Prop :=
  ∀ n, P14875406296981872845.a n = (A077140 (n + 1) : ℚ)

end A077140

/-! ## A077140.P5129505560747527036

`xor(1, -xor(n, -a(n-1)))` with `a(0)=1`
-/

namespace A077140.P5129505560747527036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (-Int.xor (n : ℤ) (-a (n - 1)))

end

end A077140.P5129505560747527036

namespace A077140

/-- `xor(1, -xor(n, -a(n-1)))` -/
def P5129505560747527036.Spec : Prop :=
  ∀ n, P5129505560747527036.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P13588408671624783688

`∑[(n+1)*(-1)^floor(n/2)]`
-/

namespace A077140.P13588408671624783688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077140.P13588408671624783688

namespace A077140

/-- `∑[(n+1)*(-1)^floor(n/2)]` -/
def P13588408671624783688.Spec : Prop :=
  ∀ n, P13588408671624783688.a n = (A077140 (n + 1) : ℚ)

end A077140

/-! ## A077140.P11520527958433030367

`floor(∑[(1-n²)/a(n-2)])` with `a(0)=1, a(1)=2`
-/

namespace A077140.P11520527958433030367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (1 - (n ^ 2 : ℤ) : ℚ) / f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A077140.P11520527958433030367

namespace A077140

/-- `floor(∑[(1-n²)/a(n-2)])` -/
def P11520527958433030367.Spec : Prop :=
  ∀ n, P11520527958433030367.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P14358337424409219306

`a(n-1)-(n+1)*(-1)^∑[n+1]` with `a(0)=1`
-/

namespace A077140.P14358337424409219306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (n + 1 : ℤ) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077140.P14358337424409219306

namespace A077140

/-- `a(n-1)-(n+1)*(-1)^∑[n+1]` -/
def P14358337424409219306.Spec : Prop :=
  ∀ n, P14358337424409219306.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P14816548937976655091

`floor(a(n-1)-(n+1)/(-1)^∑[n+1])` with `a(0)=1`
-/

namespace A077140.P14816548937976655091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n + 1 : ℚ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A077140.P14816548937976655091

namespace A077140

/-- `floor(a(n-1)-(n+1)/(-1)^∑[n+1])` -/
def P14816548937976655091.Spec : Prop :=
  ∀ n, P14816548937976655091.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P11135250027631344757

`A057077(n)*A330602(n)+1`
-/

namespace A077140.P11135250027631344757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A330602 n + 1

end

end A077140.P11135250027631344757

namespace A077140

/-- `A057077(n)*A330602(n)+1` -/
def P11135250027631344757.Spec : Prop :=
  ∀ n, P11135250027631344757.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P155571630709997176

`A267314(n+1)/2`
-/

namespace A077140.P155571630709997176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267314 (n + 1) : ℚ) / 2

end

end A077140.P155571630709997176

namespace A077140

/-- `A267314(n+1)/2` -/
def P155571630709997176.Spec : Prop :=
  ∀ n, P155571630709997176.a n = (A077140 (n + 1) : ℚ)

end A077140

/-! ## A077140.P4249096441216261297

`A181983(A003815(n+1))`
-/

namespace A077140.P4249096441216261297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A003815 (n + 1)).toNat

end

end A077140.P4249096441216261297

namespace A077140

/-- `A181983(A003815(n+1))` -/
def P4249096441216261297.Spec : Prop :=
  ∀ n, P4249096441216261297.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P10173406823683111633

`A003815(n+1)+A309214(n)-A003816(n)`
-/

namespace A077140.P10173406823683111633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (n + 1) + (A309214 n - A003816 n)

end

end A077140.P10173406823683111633

namespace A077140

/-- `A003815(n+1)+A309214(n)-A003816(n)` -/
def P10173406823683111633.Spec : Prop :=
  ∀ n, P10173406823683111633.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P6321550200847860196

`A003815(n+1)-(A309215(n)+A003816(n))`
-/

namespace A077140.P6321550200847860196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (n + 1) - (A309215 n + A003816 n)

end

end A077140.P6321550200847860196

namespace A077140

/-- `A003815(n+1)-(A309215(n)+A003816(n))` -/
def P6321550200847860196.Spec : Prop :=
  ∀ n, P6321550200847860196.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P8414058720452256095

`A007877(n+1)+A251610(n+1)-A098181(n)`
-/

namespace A077140.P8414058720452256095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (n + 1) + (A251610 (n + 1) - A098181 n)

end

end A077140.P8414058720452256095

namespace A077140

/-- `A007877(n+1)+A251610(n+1)-A098181(n)` -/
def P8414058720452256095.Spec : Prop :=
  ∀ n, P8414058720452256095.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P3118169678645276001

`A374139(n)-A027656(n+1)*A056594(n+1)`
-/

namespace A077140.P3118169678645276001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374139 n - A027656 (n + 1) * A056594 (n + 1)

end

end A077140.P3118169678645276001

namespace A077140

/-- `A374139(n)-A027656(n+1)*A056594(n+1)` -/
def P3118169678645276001.Spec : Prop :=
  ∀ n, P3118169678645276001.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P16678363604196977518

`A003816(n+1)-xor(A003815(n+1), A003816(n+1))`
-/

namespace A077140.P16678363604196977518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (n + 1) - Int.xor (A003815 (n + 1)) (A003816 (n + 1))

end

end A077140.P16678363604196977518

namespace A077140

/-- `A003816(n+1)-xor(A003815(n+1), A003816(n+1))` -/
def P16678363604196977518.Spec : Prop :=
  ∀ n, P16678363604196977518.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P16949305530798008720

`A003815(n+1)*A034947(A116966(2*n))`
-/

namespace A077140.P16949305530798008720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (n + 1) * A034947 (A116966 (2 * n)).toNat

end

end A077140.P16949305530798008720

namespace A077140

/-- `A003815(n+1)*A034947(A116966(2*n))` -/
def P16949305530798008720.Spec : Prop :=
  ∀ n, P16949305530798008720.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P18208806795246017335

`A001057(A116966(n)+2*A001057(n))`
-/

namespace A077140.P18208806795246017335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A116966 n + 2 * A001057 n).toNat

end

end A077140.P18208806795246017335

namespace A077140

/-- `A001057(A116966(n)+2*A001057(n))` -/
def P18208806795246017335.Spec : Prop :=
  ∀ n, P18208806795246017335.a n = A077140 (n + 1)

end A077140

/-! ## A077140.P18033470461322975257

`A001057(A001057(n)+A116966(n)+A001057(n))`
-/

namespace A077140.P18033470461322975257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A001057 n + (A116966 n + A001057 n)).toNat

end

end A077140.P18033470461322975257

namespace A077140

/-- `A001057(A001057(n)+A116966(n)+A001057(n))` -/
def P18033470461322975257.Spec : Prop :=
  ∀ n, P18033470461322975257.a n = A077140 (n + 1)

end A077140

/-!
# A077143: a(n) = floor(product of next n primes / sum of next n primes).

The programs for A077143, there is no canonical definition to state claims against.
-/

/-! ## A077143.P5245927802232394055

`floor(A007467(n+1)/A007468(n+1))`
-/

namespace A077143.P5245927802232394055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007467 (n + 1) : ℚ) / (A007468 (n + 1) : ℚ)⌋

end

end A077143.P5245927802232394055

/-!
# A077144: a(n) = floor(product of next n composite numbers / sum of next n composite numbers).

The programs for A077144, there is no canonical definition to state claims against.
-/

/-! ## A077144.P11340328290894939419

`floor(A071221(n+1)/A072475(n+1))`
-/

namespace A077144.P11340328290894939419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071221 (n + 1) : ℚ) / (A072475 (n + 1) : ℚ)⌋

end

end A077144.P11340328290894939419

/-! ## A077144.P7017935175454627715

`floor(A071221(n+1)/(A024850(n+1)+A007504(n+1)))`
-/

namespace A077144.P7017935175454627715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071221 (n + 1) : ℚ) / (A024850 (n + 1) + A007504 (n + 1) : ℚ)⌋

end

end A077144.P7017935175454627715

/-! ## A077144.P12986736514392516245

`floor(A071221(n+1)/(n+1+A101301(n+1)+A024850(n+1)))`
-/

namespace A077144.P12986736514392516245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071221 (n + 1) : ℚ) / ((n + 1 : ℤ) + (A101301 (n + 1) + A024850 (n + 1)) : ℚ)⌋

end

end A077144.P12986736514392516245

/-!
# A077145: a(n) = floor(product of next n primes / product of next n composite numbers).

The programs for A077145, there is no canonical definition to state claims against.
-/

/-! ## A077145.P8503562981580263517

`floor(A007467(n+1)/A071221(n+1))`
-/

namespace A077145.P8503562981580263517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007467 (n + 1) : ℚ) / (A071221 (n + 1) : ℚ)⌋

end

end A077145.P8503562981580263517

/-! ## A077145.P12399319891275018025

`A008624(A334264(n+2)%A013371(2*n+1))`
-/

namespace A077145.P12399319891275018025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.tmod (A334264 (n + 2)) (A013371 (2 * n + 1))).toNat

end

end A077145.P12399319891275018025

/-!
# A077146: a(n) = floor((concatenation of next (n+1) numbers) / (concatenation of next n numbers)).

The programs for A077146, there is no canonical definition to state claims against.
-/

/-! ## A077146.P4473352714229751485

`floor(A053067(n+2)/A053067(n+1))`
-/

namespace A077146.P4473352714229751485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053067 (n + 2) : ℚ) / (A053067 (n + 1) : ℚ)⌋

end

end A077146.P4473352714229751485

/-! ## A077146.P5830507225614719540

`floor(ratio[A053067(n+1)])`
-/

namespace A077146.P5830507225614719540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A077146.P5830507225614719540

/-! ## A077146.P14268768963183133765

`ceil(ratio[A053067(n+1)]-A057427(n))`
-/

namespace A077146.P14268768963183133765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) - (A057427 n : ℚ)⌉

end

end A077146.P14268768963183133765

/-! ## A077146.P11456547534446872198

`(A053067(n+2)-A095222(n+1))/A053067(n+1)`
-/

namespace A077146.P11456547534446872198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053067 (n + 2) - A095222 (n + 1) : ℚ) / (A053067 (n + 1) : ℚ)

end

end A077146.P11456547534446872198

/-!
# A077147: a(n) = floor({concatenation 123 ... up to n}/n).

The programs for A077147, the canonical program `A077147.P3811010944267521903` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077147 has offset 1).

The definition of A077147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077147.P3811010944267521903

`floor(A007908(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077147

/-- `floor(A007908(n+1)/(n+1))` -/
def P3811010944267521903.Spec : Prop :=
  ∀ n, P3811010944267521903.a n = A077147 (n + 1)

theorem P3811010944267521903.correct : P3811010944267521903.Spec := by
  intro n
  simp only [A077147, Nat.add_sub_cancel]

end A077147

/-! ## A077147.P5906327031780025616

`floor(∑[A078998(n+1)]/(n+1))`
-/

namespace A077147.P5906327031780025616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A077147.P5906327031780025616

namespace A077147

/-- `floor(∑[A078998(n+1)]/(n+1))` -/
def P5906327031780025616.Spec : Prop :=
  ∀ n, P5906327031780025616.a n = A077147 (n + 1)

end A077147

/-! ## A077147.P781296150971306334

`floor(A252043(A033061(n+1))/(n+1))`
-/

namespace A077147.P781296150971306334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A252043 (A033061 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A077147.P781296150971306334

namespace A077147

/-- `floor(A252043(A033061(n+1))/(n+1))` -/
def P781296150971306334.Spec : Prop :=
  ∀ n, P781296150971306334.a n = A077147 (n + 1)

end A077147

/-! ## A077147.P15099812929230340590

`floor(A252043(A058183(n+1))/(n+1))`
-/

namespace A077147.P15099812929230340590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A252043 (A058183 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A077147.P15099812929230340590

namespace A077147

/-- `floor(A252043(A058183(n+1))/(n+1))` -/
def P15099812929230340590.Spec : Prop :=
  ∀ n, P15099812929230340590.a n = A077147 (n + 1)

end A077147

/-! ## A077147.P9382012415807539177

`floor(record[A322762(n+1)]/(n+1))`
-/

namespace A077147.P9382012415807539177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A077147.P9382012415807539177

namespace A077147

/-- `floor(record[A322762(n+1)]/(n+1))` -/
def P9382012415807539177.Spec : Prop :=
  ∀ n, P9382012415807539177.a n = A077147 (n + 1)

end A077147

/-!
# A077148: Smallest k such that there are n numbers m relatively prime to n in range n < m < k.

The programs for A077148, there is no canonical definition to state claims against.
-/

/-! ## A077148.P16551397783055246179

`A077665(n+1)+1`
-/

namespace A077148.P16551397783055246179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077665 (n + 1) + 1

end

end A077148.P16551397783055246179

/-! ## A077148.P10722477713315028903

`A069213(n+1)+2+n`
-/

namespace A077148.P10722477713315028903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069213 (n + 1) + 2 + (n : ℤ)

end

end A077148.P10722477713315028903

/-! ## A077148.P16810362470806087734

`A020725(A077665(n+1))`
-/

namespace A077148.P16810362470806087734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A077665 (n + 1)).toNat

end

end A077148.P16810362470806087734

/-! ## A077148.P1171134372884356497

`A126571(∑[n+1])+2+n`
-/

namespace A077148.P1171134372884356497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 + (n : ℤ)

end

end A077148.P1171134372884356497

/-! ## A077148.P2381916856763692044

`n+2+A126571(A000217(n+1))%(n+2)²`
-/

namespace A077148.P2381916856763692044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + Int.tmod (A126571 (A000217 (n + 1)).toNat) ((n + 2) ^ 2 : ℤ)

end

end A077148.P2381916856763692044

/-! ## A077148.P8415495548215932600

`A077664(∑[n+1])+1`
-/

namespace A077148.P8415495548215932600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A077148.P8415495548215932600

/-! ## A077148.P13673114588153629637

`A077581(∑[n+1])+2+n`
-/

namespace A077148.P13673114588153629637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 + (n : ℤ)

end

end A077148.P13673114588153629637

/-!
# A077149: a(1) =3. For n>1, a(n) = smallest k such that there are n numbers m not relatively prime to n in range n < m < k.

The programs for A077149, there is no canonical definition to state claims against.
-/

/-! ## A077149.P10526037940555151468

`A077662(n+1)+2+n`
-/

namespace A077149.P10526037940555151468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077662 (n + 1) + 2 + (n : ℤ)

end

end A077149.P10526037940555151468

/-! ## A077149.P4002466221251434620

`A077663(n+1)-A081519(n+1)+n+3`
-/

namespace A077149.P4002466221251434620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077663 (n + 1) - A081519 (n + 1) + (n + 3 : ℤ)

end

end A077149.P4002466221251434620

/-! ## A077149.P1392218229840080883

`A077661(∑[n+1])+2+n`
-/

namespace A077149.P1392218229840080883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077661 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 + (n : ℤ)

end

end A077149.P1392218229840080883

/-! ## A077149.P16347582933787475051

`A009056(A077662(n+1)+n)`
-/

namespace A077149.P16347582933787475051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A077662 (n + 1) + (n : ℤ)).toNat

end

end A077149.P16347582933787475051

/-! ## A077149.P1810195144045050592

`A009056(A077661(∑[n+1])+n)`
-/

namespace A077149.P1810195144045050592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A077661 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A077149.P1810195144045050592

/-!
# A077150: Number of composite numbers between n and 2n that are coprime to n.

The programs for A077150, the canonical program `A077150.P1728988973550887610` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077150 has offset 1).

The definition of A077150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077150.P12952331744522153595

`A060208(n+1)+A037228(n+1)`
-/

namespace A077150.P12952331744522153595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060208 (n + 1) + A037228 (n + 1)

end

end A077150.P12952331744522153595

namespace A077150

/-- `A060208(n+1)+A037228(n+1)` -/
def P12952331744522153595.Spec : Prop :=
  ∀ n, P12952331744522153595.a n = A077150 (n + 1)

end A077150

/-! ## A077150.P17521085334227966954

`A000010(n+1)-A108954(n+1)`
-/

namespace A077150.P17521085334227966954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A108954 (n + 1)

end

end A077150.P17521085334227966954

namespace A077150

/-- `A000010(n+1)-A108954(n+1)` -/
def P17521085334227966954.Spec : Prop :=
  ∀ n, P17521085334227966954.a n = A077150 (n + 1)

end A077150

/-! ## A077150.P11942780229120080242

`A082515(n+1)-A099802(n+1)`
-/

namespace A077150.P11942780229120080242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1) - A099802 (n + 1)

end

end A077150.P11942780229120080242

namespace A077150

/-- `A082515(n+1)-A099802(n+1)` -/
def P11942780229120080242.Spec : Prop :=
  ∀ n, P11942780229120080242.a n = A077150 (n + 1)

end A077150

/-! ## A077150.P1728988973550887610

`A307912(n+1)-A016035(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A077150

/-- `A307912(n+1)-A016035(n+1)` -/
def P1728988973550887610.Spec : Prop :=
  ∀ n, P1728988973550887610.a n = A077150 (n + 1)

theorem P1728988973550887610.correct : P1728988973550887610.Spec := by
  intro n
  simp only [A077150, Nat.add_sub_cancel]

end A077150

/-! ## A077150.P6376714769919108995

`A376759(n+1)-A051953(n+1)`
-/

namespace A077150.P6376714769919108995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376759 (n + 1) - A051953 (n + 1)

end

end A077150.P6376714769919108995

namespace A077150

/-- `A376759(n+1)-A051953(n+1)` -/
def P6376714769919108995.Spec : Prop :=
  ∀ n, P6376714769919108995.a n = A077150 (n + 1)

end A077150

/-! ## A077150.P7631257718903978242

`A000010(n+1)-A056171(2*(n+1))`
-/

namespace A077150.P7631257718903978242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A056171 (2 * (n + 1))

end

end A077150.P7631257718903978242

namespace A077150

/-- `A000010(n+1)-A056171(2*(n+1))` -/
def P7631257718903978242.Spec : Prop :=
  ∀ n, P7631257718903978242.a n = A077150 (n + 1)

end A077150

/-! ## A077150.P9614774999817226404

`A082515(n+1)-A000720(2*(n+1))`
-/

namespace A077150.P9614774999817226404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1) - A000720 (2 * (n + 1))

end

end A077150.P9614774999817226404

namespace A077150

/-- `A082515(n+1)-A000720(2*(n+1))` -/
def P9614774999817226404.Spec : Prop :=
  ∀ n, P9614774999817226404.a n = A077150 (n + 1)

end A077150

/-! ## A077150.P14051026458438496289

`A000010(n+1)+A010051(n+1)-A035250(n+1)`
-/

namespace A077150.P14051026458438496289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A010051 (n + 1) - A035250 (n + 1))

end

end A077150.P14051026458438496289

namespace A077150

/-- `A000010(n+1)+A010051(n+1)-A035250(n+1)` -/
def P14051026458438496289.Spec : Prop :=
  ∀ n, P14051026458438496289.a n = A077150 (n + 1)

end A077150

/-! ## A077150.P26088675255581168

`A000010(n+1)+A060208(n+1)-A000720(n+1)`
-/

namespace A077150.P26088675255581168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A060208 (n + 1) - A000720 (n + 1))

end

end A077150.P26088675255581168

namespace A077150

/-- `A000010(n+1)+A060208(n+1)-A000720(n+1)` -/
def P26088675255581168.Spec : Prop :=
  ∀ n, P26088675255581168.a n = A077150 (n + 1)

end A077150

/-! ## A077150.P5020085436368214756

`A000010(n+1)+A000720(n+1)-A099802(n+1)`
-/

namespace A077150.P5020085436368214756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A000720 (n + 1) - A099802 (n + 1))

end

end A077150.P5020085436368214756

namespace A077150

/-- `A000010(n+1)+A000720(n+1)-A099802(n+1)` -/
def P5020085436368214756.Spec : Prop :=
  ∀ n, P5020085436368214756.a n = A077150 (n + 1)

end A077150

/-!
# A077152: Smallest k such that there are n primes between n and k.

The programs for A077152, the canonical program `A077152.P10803449440115918317` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077152 has offset 1).

The definition of A077152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8892 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077152.P16551305341532550643

`A084792(n+1)+1`
-/

namespace A077152.P16551305341532550643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (n + 1) + 1

end

end A077152.P16551305341532550643

namespace A077152

/-- `A084792(n+1)+1` -/
def P16551305341532550643.Spec : Prop :=
  ∀ n, P16551305341532550643.a n = A077152 (n + 1)

theorem P16551305341532550643.correct : P16551305341532550643.Spec := by
  intro n
  simp only [A077152, Nat.add_sub_cancel, A077152.P16551305341532550643.a, A077152.P10803449440115918317.f2, A077152.P10803449440115918317.f1, A077152.P10803449440115918317.a, A008864, A008864.P9177617808325052279.a, A084792, A084792.P10596812045351244596.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077152

/-! ## A077152.P13914180450173528554

`A084747(n+1)+2+n`
-/

namespace A077152.P13914180450173528554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (n + 1) + 2 + (n : ℤ)

end

end A077152.P13914180450173528554

namespace A077152

/-- `A084747(n+1)+2+n` -/
def P13914180450173528554.Spec : Prop :=
  ∀ n, P13914180450173528554.a n = A077152 (n + 1)

theorem P13914180450173528554.correct : P13914180450173528554.Spec := by
  intro n
  simp only [A077152, Nat.add_sub_cancel, A077152.P13914180450173528554.a, A077152.P10803449440115918317.f2, A077152.P10803449440115918317.f1, A077152.P10803449440115918317.a, A008864, A008864.P9177617808325052279.a, A084747, A084747.P18190235347912313929.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077152

/-! ## A077152.P16280188609453123142

`A082911(n+1)+A008864(n+1)`
-/

namespace A077152.P16280188609453123142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082911 (n + 1) + A008864 (n + 1)

end

end A077152.P16280188609453123142

namespace A077152

/-- `A082911(n+1)+A008864(n+1)` -/
def P16280188609453123142.Spec : Prop :=
  ∀ n, P16280188609453123142.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P8319361492667160219

`A000040(n+1)+A082911(n+1)+1`
-/

namespace A077152.P8319361492667160219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A082911 (n + 1) + 1)

end

end A077152.P8319361492667160219

namespace A077152

/-- `A000040(n+1)+A082911(n+1)+1` -/
def P8319361492667160219.Spec : Prop :=
  ∀ n, P8319361492667160219.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P10803449440115918317

`A008864(∑[∑{p}[n+1, val(#, n+1)]+1])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077152

/-- `A008864(∑[∑{p}[n+1, val(#, n+1)]+1])` -/
def P10803449440115918317.Spec : Prop :=
  ∀ n, P10803449440115918317.a n = A077152 (n + 1)

theorem P10803449440115918317.correct : P10803449440115918317.Spec := by
  intro n
  simp only [A077152, Nat.add_sub_cancel]

end A077152

/-! ## A077152.P6600672780620279833

`A008864(∑[C(2, ∑{e}[n+1, #+1])]+n)`
-/

namespace A077152.P6600672780620279833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A077152.P6600672780620279833

namespace A077152

/-- `A008864(∑[C(2, ∑{e}[n+1, #+1])]+n)` -/
def P6600672780620279833.Spec : Prop :=
  ∀ n, P6600672780620279833.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P10948940488116510212

`A000040(∑[C(2, ∑{e}[n+1, #+1])]+n)+1`
-/

namespace A077152.P10948940488116510212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1

end

end A077152.P10948940488116510212

namespace A077152

/-- `A000040(∑[C(2, ∑{e}[n+1, #+1])]+n)+1` -/
def P10948940488116510212.Spec : Prop :=
  ∀ n, P10948940488116510212.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P17683152115258247706

`A008864(∑[∑{p}[n+1, C(#, n+1)]]+n+1)`
-/

namespace A077152.P17683152115258247706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A077152.P17683152115258247706

namespace A077152

/-- `A008864(∑[∑{p}[n+1, C(#, n+1)]]+n+1)` -/
def P17683152115258247706.Spec : Prop :=
  ∀ n, P17683152115258247706.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P17363467657178196508

`A000040(∑[∑{p}[n+1, C(#, n+1)]]+n+1)+1`
-/

namespace A077152.P17363467657178196508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1) + 1

end

end A077152.P17363467657178196508

namespace A077152

/-- `A000040(∑[∑{p}[n+1, C(#, n+1)]]+n+1)+1` -/
def P17363467657178196508.Spec : Prop :=
  ∀ n, P17363467657178196508.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P13846348987355137935

`A008864(A095117(n+1))`
-/

namespace A077152.P13846348987355137935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A095117 (n + 1)).toNat

end

end A077152.P13846348987355137935

namespace A077152

/-- `A008864(A095117(n+1))` -/
def P13846348987355137935.Spec : Prop :=
  ∀ n, P13846348987355137935.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P624575134171537709

`A299763(A064427(n+2))`
-/

namespace A077152.P624575134171537709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (A064427 (n + 2)).toNat

end

end A077152.P624575134171537709

namespace A077152

/-- `A299763(A064427(n+2))` -/
def P624575134171537709.Spec : Prop :=
  ∀ n, P624575134171537709.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P13501051055024177890

`A008864(A036234(n+1)+n)`
-/

namespace A077152.P13501051055024177890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A036234 (n + 1) + (n : ℤ)).toNat

end

end A077152.P13501051055024177890

namespace A077152

/-- `A008864(A036234(n+1)+n)` -/
def P13501051055024177890.Spec : Prop :=
  ∀ n, P13501051055024177890.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P8359463890190018419

`A028815(∑[A010051(n+1)+1])`
-/

namespace A077152.P8359463890190018419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077152.P8359463890190018419

namespace A077152

/-- `A028815(∑[A010051(n+1)+1])` -/
def P8359463890190018419.Spec : Prop :=
  ∀ n, P8359463890190018419.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P18079564648805524707

`A008864(A000720(n+1)+n+1)`
-/

namespace A077152.P18079564648805524707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A000720 (n + 1) + (n + 1 : ℤ)).toNat

end

end A077152.P18079564648805524707

namespace A077152

/-- `A008864(A000720(n+1)+n+1)` -/
def P18079564648805524707.Spec : Prop :=
  ∀ n, P18079564648805524707.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P15407437177069078483

`A008864(A230980(n+1)+n+1)`
-/

namespace A077152.P15407437177069078483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A230980 (n + 1) + (n + 1 : ℤ)).toNat

end

end A077152.P15407437177069078483

namespace A077152

/-- `A008864(A230980(n+1)+n+1)` -/
def P15407437177069078483.Spec : Prop :=
  ∀ n, P15407437177069078483.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P10183686445584634077

`A028815(A230980(n+1)+n+1)`
-/

namespace A077152.P10183686445584634077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A230980 (n + 1) + (n + 1 : ℤ)).toNat

end

end A077152.P10183686445584634077

namespace A077152

/-- `A028815(A230980(n+1)+n+1)` -/
def P10183686445584634077.Spec : Prop :=
  ∀ n, P10183686445584634077.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P13444300543238867019

`A299763(A230980(n+1)+n+2)`
-/

namespace A077152.P13444300543238867019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (A230980 (n + 1) + (n + 2 : ℤ)).toNat

end

end A077152.P13444300543238867019

namespace A077152

/-- `A299763(A230980(n+1)+n+2)` -/
def P13444300543238867019.Spec : Prop :=
  ∀ n, P13444300543238867019.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P6426134208688522207

`A000203(A084792(n+1))`
-/

namespace A077152.P6426134208688522207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A084792 (n + 1)).toNat

end

end A077152.P6426134208688522207

namespace A077152

/-- `A000203(A084792(n+1))` -/
def P6426134208688522207.Spec : Prop :=
  ∀ n, P6426134208688522207.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P6063576497451352073

`A000203(A000040(A000720(n+1)+n+1))`
-/

namespace A077152.P6063576497451352073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000040 (A000720 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A077152.P6063576497451352073

namespace A077152

/-- `A000203(A000040(A000720(n+1)+n+1))` -/
def P6063576497451352073.Spec : Prop :=
  ∀ n, P6063576497451352073.a n = A077152 (n + 1)

end A077152

/-! ## A077152.P2602088983428400933

`A230593(A000040(A036234(n+1)+n))`
-/

namespace A077152.P2602088983428400933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230593 (A000040 (A036234 (n + 1) + (n : ℤ)).toNat).toNat

end

end A077152.P2602088983428400933

namespace A077152

/-- `A230593(A000040(A036234(n+1)+n))` -/
def P2602088983428400933.Spec : Prop :=
  ∀ n, P2602088983428400933.a n = A077152 (n + 1)

end A077152

/-!
# A077153: Smallest k such that there are n composite numbers greater than n and smaller than k.

The programs for A077153, the canonical program `A077153.P8995860145379483821` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077153 has offset 1).

The definition of A077153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077153.P8995860145379483821

`A018252(A171511(n+2))+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077153

/-- `A018252(A171511(n+2))+1` -/
def P8995860145379483821.Spec : Prop :=
  ∀ n, P8995860145379483821.a n = A077153 (n + 1)

theorem P8995860145379483821.correct : P8995860145379483821.Spec := by
  intro n
  simp only [A077153, Nat.add_sub_cancel]

end A077153

/-! ## A077153.P6815646462745510430

`A002808(A062298(n+1)+n)+1`
-/

namespace A077153.P6815646462745510430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A062298 (n + 1) + (n : ℤ)).toNat + 1

end

end A077153.P6815646462745510430

namespace A077153

/-- `A002808(A062298(n+1)+n)+1` -/
def P6815646462745510430.Spec : Prop :=
  ∀ n, P6815646462745510430.a n = A077153 (n + 1)

end A077153

/-! ## A077153.P2895084926012962288

`A018252(∑[A005171(n+1)+1])+1`
-/

namespace A077153.P2895084926012962288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A077153.P2895084926012962288

namespace A077153

/-- `A018252(∑[A005171(n+1)+1])+1` -/
def P2895084926012962288.Spec : Prop :=
  ∀ n, P2895084926012962288.a n = A077153 (n + 1)

end A077153

/-! ## A077153.P3905511533105286236

`A018252(∑[2-A010051(n+1)])+1`
-/

namespace A077153.P3905511533105286236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A077153.P3905511533105286236

namespace A077153

/-- `A018252(∑[2-A010051(n+1)])+1` -/
def P3905511533105286236.Spec : Prop :=
  ∀ n, P3905511533105286236.a n = A077153 (n + 1)

end A077153

/-! ## A077153.P647279253694632397

`A018252(A062298(n+1)+1+n)+1`
-/

namespace A077153.P647279253694632397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A062298 (n + 1) + 1 + (n : ℤ)).toNat + 1

end

end A077153.P647279253694632397

namespace A077153

/-- `A018252(A062298(n+1)+1+n)+1` -/
def P647279253694632397.Spec : Prop :=
  ∀ n, P647279253694632397.a n = A077153 (n + 1)

end A077153

/-! ## A077153.P5996648314749071975

`A018252(∑[A066247(n+1)]+n+2)+1`
-/

namespace A077153.P5996648314749071975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)).toNat + 1

end

end A077153.P5996648314749071975

namespace A077153

/-- `A018252(∑[A066247(n+1)]+n+2)+1` -/
def P5996648314749071975.Spec : Prop :=
  ∀ n, P5996648314749071975.a n = A077153 (n + 1)

end A077153

/-! ## A077153.P13950789041193073542

`A079696(A062298(n+1)+n)`
-/

namespace A077153.P13950789041193073542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A062298 (n + 1) + (n : ℤ)).toNat

end

end A077153.P13950789041193073542

namespace A077153

/-- `A079696(A062298(n+1)+n)` -/
def P13950789041193073542.Spec : Prop :=
  ∀ n, P13950789041193073542.a n = A077153 (n + 1)

end A077153

/-! ## A077153.P10819358852180304984

`A018252(A282029(2*(n+1)))+1`
-/

namespace A077153.P10819358852180304984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A282029 (2 * (n + 1))).toNat + 1

end

end A077153.P10819358852180304984

namespace A077153

/-- `A018252(A282029(2*(n+1)))+1` -/
def P10819358852180304984.Spec : Prop :=
  ∀ n, P10819358852180304984.a n = A077153 (n + 1)

end A077153

/-! ## A077153.P15299896612166010529

`A079696(∑[A020639(∑{e}[n+1, #]!)])`
-/

namespace A077153.P15299896612166010529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077153.P15299896612166010529

namespace A077153

/-- `A079696(∑[A020639(∑{e}[n+1, #]!)])` -/
def P15299896612166010529.Spec : Prop :=
  ∀ n, P15299896612166010529.a n = A077153 (n + 1)

end A077153

/-! ## A077153.P15373755595808498057

`A018252(log2(A089819(n+1))+n+1)+1`
-/

namespace A077153.P15373755595808498057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (Real.logb 2 (A089819 (n + 1) : ℝ) + (n + 1 : ℝ))).toNat + 1

end

end A077153.P15373755595808498057

namespace A077153

/-- `A018252(log2(A089819(n+1))+n+1)+1` -/
def P15373755595808498057.Spec : Prop :=
  ∀ n, P15373755595808498057.a n = A077153 (n + 1)

end A077153

/-!
# A077155: Let p(2n+1,x)=(x+1)(x+2)...(x+2n)(x+2n+1), a(n) is the smallest integer >0 such that p(2n+1,x)-k has only one real root for any k >=a(n).

The programs for A077155, there is no canonical definition to state claims against.
-/

/-! ## A077155.P18382426840679783034

`A087934(2*n+3)`
-/

namespace A077155.P18382426840679783034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087934 (2 * n + 3)

end

end A077155.P18382426840679783034

/-! ## A077155.P7791250782617406065

`record[Δ[A087934(A099375(n))]]`
-/

namespace A077155.P7791250782617406065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087934 (A099375 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077155.P7791250782617406065

/-! ## A077155.P7722881747491321580

`record[A087934(A099375(n+1))]`
-/

namespace A077155.P7722881747491321580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087934 (A099375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077155.P7722881747491321580

/-! ## A077155.P283758389101279846

`record[gcd(A087934(n+1), A097331(n))]`
-/

namespace A077155.P283758389101279846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087934 (n + 1)) (A097331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077155.P283758389101279846

/-! ## A077155.P8090925809804317776

`A087934(A144396(n+1))+A034541(n+1)`
-/

namespace A077155.P8090925809804317776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087934 (A144396 (n + 1)).toNat + A034541 (n + 1)

end

end A077155.P8090925809804317776

/-!
# A077156: a(0) = 1, followed by next n primes followed by next n composite numbers.

The programs for A077156, there is no canonical definition to state claims against.
-/

/-! ## A077156.P4364807397102931432

`A026239(A077157(n))`
-/

namespace A077156.P4364807397102931432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A077157 n).toNat

end

end A077156.P4364807397102931432

/-!
# A077157: a(0) = 1, followed by next n composite numbers followed by next n primes.

The programs for A077157, there is no canonical definition to state claims against.
-/

/-! ## A077157.P12077741241606542262

`A026239(A077156(n))`
-/

namespace A077157.P12077741241606542262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A077156 n).toNat

end

end A077157.P12077741241606542262

/-!
# A077158: Prime(1) composite numbers, followed by composite(1) prime numbers, prime(2) composite numbers, followed by composite(2) prime numbers, ...

The programs for A077158, there is no canonical definition to state claims against.
-/

/-! ## A077158.P18009673824185235539

`A026239(A138561(n+2))`
-/

namespace A077158.P18009673824185235539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A138561 (n + 2)).toNat

end

end A077158.P18009673824185235539

/-!
# A077160: Leading terms of rows of triangle in A077159.

The programs for A077160, there is no canonical definition to state claims against.
-/

/-! ## A077160.P4916799487158119640

`A077159(∑[n]+1)`
-/

namespace A077160.P4916799487158119640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077159 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077160.P4916799487158119640

/-! ## A077160.P14850477627868812449

`A077159(A000124(n))+C(n, n+1)`
-/

namespace A077160.P14850477627868812449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077159 (A000124 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A077160.P14850477627868812449

/-! ## A077160.P9796016953368604389

`A077159(A000124(n))%A000412(n)`
-/

namespace A077160.P9796016953368604389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077159 (A000124 n).toNat) (A000412 n)

end

end A077160.P9796016953368604389

/-! ## A077160.P13603717006622028015

`∑{d}[A077159(A000124(n)), A000010(#)]`
-/

namespace A077160.P13603717006622028015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077159 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A077160.P13603717006622028015

/-! ## A077160.P12984049489136364623

`A007318(∑[n])*A077159(A000124(n))`
-/

namespace A077160.P12984049489136364623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A077159 (A000124 n).toNat

end

end A077160.P12984049489136364623

/-! ## A077160.P1625262472057985897

`A057427(n+4)*A077159(A000124(n))`
-/

namespace A077160.P1625262472057985897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A077159 (A000124 n).toNat

end

end A077160.P1625262472057985897

/-! ## A077160.P13948324495327198704

`A077159(A000124(n))+A000038(n)%2`
-/

namespace A077160.P13948324495327198704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077159 (A000124 n).toNat + Int.tmod (A000038 n) 2

end

end A077160.P13948324495327198704

/-! ## A077160.P1392928863830373360

`A077159(A000124(n))+A089003(2*n+3)%2`
-/

namespace A077160.P1392928863830373360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077159 (A000124 n).toNat + Int.tmod (A089003 (2 * n + 3)) 2

end

end A077160.P1392928863830373360

/-! ## A077160.P16548839253881851391

`A077159(A000124(n))/A276086(2*(n+1))%2`
-/

namespace A077160.P16548839253881851391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077159 (A000124 n).toNat : ℚ) / (Int.tmod (A276086 (2 * (n + 1))) 2 : ℚ)

end

end A077160.P16548839253881851391

/-!
# A077161: Final terms of rows of triangle in A077159.

The programs for A077161, there is no canonical definition to state claims against.
-/

/-! ## A077161.P1919870520488147892

`A077159(∑[n+1])`
-/

namespace A077161.P1919870520488147892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077159 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077161.P1919870520488147892

/-! ## A077161.P13591819358923096212

`A349134(A007434(n+1))+A081965(n+1)`
-/

namespace A077161.P13591819358923096212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (A007434 (n + 1)).toNat + A081965 (n + 1)

end

end A077161.P13591819358923096212

/-! ## A077161.P1852784664197515465

`A349134(A007434(n+1))+A081964(∑[n+1])`
-/

namespace A077161.P1852784664197515465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (A007434 (n + 1)).toNat + A081964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077161.P1852784664197515465

/-! ## A077161.P5890133053523554737

`A256280(A000225(n))+A081965(n+1)`
-/

namespace A077161.P5890133053523554737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256280 (A000225 n).toNat + A081965 (n + 1)

end

end A077161.P5890133053523554737

/-! ## A077161.P8365649931490143136

`A256280(A000225(n))+A081964(∑[n+1])`
-/

namespace A077161.P8365649931490143136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256280 (A000225 n).toNat + A081964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077161.P8365649931490143136

/-!
# A077162: Sum of terms in n-th rows of triangle in A077159.

The programs for A077162, there is no canonical definition to state claims against.
-/

/-! ## A077162.P16809137595429125639

`A081111(A026693(n+1))`
-/

namespace A077162.P16809137595429125639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081111 (A026693 (n + 1)).toNat

end

end A077162.P16809137595429125639

/-! ## A077162.P11297939474747136202

`record[A341655(record[A130167(2*n)])]`
-/

namespace A077162.P11297939474747136202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341655 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077162.P11297939474747136202

/-!
# A077163: n-th power of next n numbers.

The programs for A077163, the canonical program `A077163.P7606870892738934800` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077163 has offset 1).

The definition of A077163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077163.P7606870892738934800

`(n+1)^round(sqrt(2*(n+1)))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077163

/-- `(n+1)^round(sqrt(2*(n+1)))` -/
def P7606870892738934800.Spec : Prop :=
  ∀ n, P7606870892738934800.a n = (A077163 (n + 1) : ℚ)

end A077163

/-! ## A077163.P9847338640702434494

`root(n+1, 1/∑[char[C(n, 2)]])`
-/

namespace A077163.P9847338640702434494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ))

end

end A077163.P9847338640702434494

namespace A077163

/-- `root(n+1, 1/∑[char[C(n, 2)]])` -/
def P9847338640702434494.Spec : Prop :=
  ∀ n, P9847338640702434494.a n = (A077163 (n + 1) : ℝ)

end A077163

/-! ## A077163.P6077690097629303322

`floor((n+1)^(comp[C(n, 2)]-(n+1)))`
-/

namespace A077163.P6077690097629303322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) : ℤ)⌋

end

end A077163.P6077690097629303322

namespace A077163

/-- `floor((n+1)^(comp[C(n, 2)]-(n+1)))` -/
def P6077690097629303322.Spec : Prop :=
  ∀ n, P6077690097629303322.a n = A077163 (n + 1)

end A077163

/-! ## A077163.P11715164048128511451

`round((n+1)^(comp[C(n, 2)]-(n+1)))`
-/

namespace A077163.P11715164048128511451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) : ℤ))

end

end A077163.P11715164048128511451

namespace A077163

/-- `round((n+1)^(comp[C(n, 2)]-(n+1)))` -/
def P11715164048128511451.Spec : Prop :=
  ∀ n, P11715164048128511451.a n = A077163 (n + 1)

end A077163

/-! ## A077163.P14566698433739504377

`round((n+1)^log2(A140513(n)))`
-/

namespace A077163.P14566698433739504377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.logb 2 (A140513 n : ℝ)))

end

end A077163.P14566698433739504377

namespace A077163

/-- `round((n+1)^log2(A140513(n)))` -/
def P14566698433739504377.Spec : Prop :=
  ∀ n, P14566698433739504377.a n = A077163 (n + 1)

end A077163

/-! ## A077163.P11228372620897536919

`(n+1)*(n+1)^A003056(n)`
-/

namespace A077163.P11228372620897536919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (n + 1 : ℚ) ^ (A003056 n : ℤ)

end

end A077163.P11228372620897536919

namespace A077163

/-- `(n+1)*(n+1)^A003056(n)` -/
def P11228372620897536919.Spec : Prop :=
  ∀ n, P11228372620897536919.a n = (A077163 (n + 1) : ℚ)

end A077163

/-! ## A077163.P10688612357338998946

`abs((-(n+1))^A002024(n+1))`
-/

namespace A077163.P10688612357338998946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-(n + 1 : ℤ) : ℚ) ^ (A002024 (n + 1) : ℤ)|

end

end A077163.P10688612357338998946

namespace A077163

/-- `abs((-(n+1))^A002024(n+1))` -/
def P10688612357338998946.Spec : Prop :=
  ∀ n, P10688612357338998946.a n = (A077163 (n + 1) : ℚ)

end A077163

/-! ## A077163.P10204680089912222977

`floor((n+1)^(comp[A000096(n)]-n))`
-/

namespace A077163.P10204680089912222977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) : ℤ)⌋

end

end A077163.P10204680089912222977

namespace A077163

/-- `floor((n+1)^(comp[A000096(n)]-n))` -/
def P10204680089912222977.Spec : Prop :=
  ∀ n, P10204680089912222977.a n = A077163 (n + 1)

end A077163

/-! ## A077163.P5451098121362563091

`floor((n+1)^(A007401(n+1)-n))`
-/

namespace A077163.P5451098121362563091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (A007401 (n + 1) - (n : ℤ) : ℤ)⌋

end

end A077163.P5451098121362563091

namespace A077163

/-- `floor((n+1)^(A007401(n+1)-n))` -/
def P5451098121362563091.Spec : Prop :=
  ∀ n, P5451098121362563091.a n = A077163 (n + 1)

end A077163

/-! ## A077163.P12287652541968733012

`floor((n+1)^(comp[A000217(n)]-(n+1)))`
-/

namespace A077163.P12287652541968733012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ) : ℤ)⌋

end

end A077163.P12287652541968733012

namespace A077163

/-- `floor((n+1)^(comp[A000217(n)]-(n+1)))` -/
def P12287652541968733012.Spec : Prop :=
  ∀ n, P12287652541968733012.a n = A077163 (n + 1)

end A077163

/-! ## A077163.P3696081934669938203

`record[A032742(n+1)^A000194(n)]`
-/

namespace A077163.P3696081934669938203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) ^ (A000194 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077163.P3696081934669938203

namespace A077163

/-- `record[A032742(n+1)^A000194(n)]` -/
def P3696081934669938203.Spec : Prop :=
  ∀ n, P3696081934669938203.a n = (A077163 (n + 1) : ℚ)

end A077163

/-! ## A077163.P2696528087887998071

`(n+1)^A003057(n+2)/(n+1)`
-/

namespace A077163.P2696528087887998071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A003057 (n + 2) : ℤ) / (n + 1 : ℚ)

end

end A077163.P2696528087887998071

namespace A077163

/-- `(n+1)^A003057(n+2)/(n+1)` -/
def P2696528087887998071.Spec : Prop :=
  ∀ n, P2696528087887998071.a n = (A077163 (n + 1) : ℚ)

end A077163

/-! ## A077163.P13528532143072664210

`sqrt((n+1)^A111650(n+1))`
-/

namespace A077163.P13528532143072664210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) ^ (A111650 (n + 1) : ℤ) : ℝ)

end

end A077163.P13528532143072664210

namespace A077163

/-- `sqrt((n+1)^A111650(n+1))` -/
def P13528532143072664210.Spec : Prop :=
  ∀ n, P13528532143072664210.a n = (A077163 (n + 1) : ℝ)

end A077163

/-!
# A077164: Triangle in which n-th row gives n numbers relatively prime to n and greater than all earlier terms in the triangle.

The programs for A077164, there is no canonical definition to state claims against.
-/

/-! ## A077164.P11698051442793643962

`floor(A071977(n+1)+acot(n))`
-/

namespace A077164.P11698051442793643962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071977 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A077164.P11698051442793643962

/-! ## A077164.P16276628769060682082

`A071977(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A077164.P16276628769060682082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A071977 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A077164.P16276628769060682082

/-! ## A077164.P6135245571602687265

`A071977(C(∑{e}[2*n, #], a(n-1))+n+1)` with `a(0)=2`
-/

namespace A077164.P6135245571602687265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A071977 (Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (a (n - 1)).toNat + n + 1)

end

end A077164.P6135245571602687265

/-! ## A077164.P15394974133495450217

`A071977(n+1)+A000007(n)`
-/

namespace A077164.P15394974133495450217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071977 (n + 1) + A000007 n

end

end A077164.P15394974133495450217

/-! ## A077164.P6413850237338194947

`A054977(n)*A071977(n+1)`
-/

namespace A077164.P6413850237338194947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A071977 (n + 1)

end

end A077164.P6413850237338194947

/-! ## A077164.P17023703415910952742

`A071977(n+1)+A077165(n+1)-A071979(n+1)`
-/

namespace A077164.P17023703415910952742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071977 (n + 1) + (A077165 (n + 1) - A071979 (n + 1))

end

end A077164.P17023703415910952742

/-! ## A077164.P16070561210516271921

`A071977(n+1)+A077166(n+1)-A071978(n+1)`
-/

namespace A077164.P16070561210516271921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071977 (n + 1) + (A077166 (n + 1) - A071978 (n + 1))

end

end A077164.P16070561210516271921

/-! ## A077164.P6776153178048758440

`A181440(A071977(n+1))`
-/

namespace A077164.P6776153178048758440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A071977 (n + 1)).toNat

end

end A077164.P6776153178048758440

/-! ## A077164.P414050031797052572

`A233583(A071977(n+1)+1)`
-/

namespace A077164.P414050031797052572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A071977 (n + 1) + 1).toNat

end

end A077164.P414050031797052572

/-!
# A077165: Leading terms of rows in A077164.

The programs for A077165, there is no canonical definition to state claims against.
-/

/-! ## A077165.P4133705148825269463

`A071979(n+1)+C(floor(n/3), n)`
-/

namespace A077165.P4133705148825269463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071979 (n + 1) + (Nat.choose ⌊(n : ℚ) / 3⌋.toNat n : ℤ)

end

end A077165.P4133705148825269463

/-! ## A077165.P7420054938253418116

`A071979(n+1)+A000007(n)`
-/

namespace A077165.P7420054938253418116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071979 (n + 1) + A000007 n

end

end A077165.P7420054938253418116

/-! ## A077165.P6120437091033673575

`A054977(n)*A071979(n+1)`
-/

namespace A077165.P6120437091033673575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A071979 (n + 1)

end

end A077165.P6120437091033673575

/-! ## A077165.P5319552604651113733

`A071979(n+1)+A077164(n+1)-A071977(n+1)`
-/

namespace A077165.P5319552604651113733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071979 (n + 1) + (A077164 (n + 1) - A071977 (n + 1))

end

end A077165.P5319552604651113733

/-! ## A077165.P4453273901152191062

`A071979(n+1)+A077166(n+1)-A071978(n+1)`
-/

namespace A077165.P4453273901152191062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071979 (n + 1) + (A077166 (n + 1) - A071978 (n + 1))

end

end A077165.P4453273901152191062

/-! ## A077165.P9075343403240067183

`A077164(∑[n]+1)`
-/

namespace A077165.P9075343403240067183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077164 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077165.P9075343403240067183

/-! ## A077165.P10438663441357161150

`floor(A071977(∑[n]+1)+acot(n))`
-/

namespace A077165.P10438663441357161150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071977 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A077165.P10438663441357161150

/-! ## A077165.P10296936274513156062

`A181440(A071979(n+1))`
-/

namespace A077165.P10296936274513156062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A071979 (n + 1)).toNat

end

end A077165.P10296936274513156062

/-! ## A077165.P842710321098426143

`A181440(A071977(∑[n]+1))`
-/

namespace A077165.P842710321098426143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A071977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A077165.P842710321098426143

/-!
# A077166: Final terms of rows in A077164.

The programs for A077166, there is no canonical definition to state claims against.
-/

/-! ## A077166.P7465333549918619006

`A071978(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A077166.P7465333549918619006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A071978 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A077166.P7465333549918619006

/-! ## A077166.P8263933092360279619

`A071978(n+1)+A000007(n)`
-/

namespace A077166.P8263933092360279619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071978 (n + 1) + A000007 n

end

end A077166.P8263933092360279619

/-! ## A077166.P9964689892842461703

`A054977(n)*A071978(n+1)`
-/

namespace A077166.P9964689892842461703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A071978 (n + 1)

end

end A077166.P9964689892842461703

/-! ## A077166.P7393552071004548703

`A071978(n+1)+A077164(n+1)-A071977(n+1)`
-/

namespace A077166.P7393552071004548703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071978 (n + 1) + (A077164 (n + 1) - A071977 (n + 1))

end

end A077166.P7393552071004548703

/-! ## A077166.P8311735435045479869

`A071978(n+1)+A077165(n+1)-A071979(n+1)`
-/

namespace A077166.P8311735435045479869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071978 (n + 1) + (A077165 (n + 1) - A071979 (n + 1))

end

end A077166.P8311735435045479869

/-! ## A077166.P5789169245100059245

`A077164(∑[n+1])`
-/

namespace A077166.P5789169245100059245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077164 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077166.P5789169245100059245

/-! ## A077166.P10222199085460020080

`floor(A071977(∑[n+1])+acot(n))`
-/

namespace A077166.P10222199085460020080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071977 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A077166.P10222199085460020080

/-! ## A077166.P6026522862869549190

`A181440(A071978(n+1))`
-/

namespace A077166.P6026522862869549190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A071978 (n + 1)).toNat

end

end A077166.P6026522862869549190

/-! ## A077166.P10706466753005452331

`A181440(A071977(∑[n+1]))`
-/

namespace A077166.P10706466753005452331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A071977 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077166.P10706466753005452331

/-!
# A077167: Sum of terms in n-th row of A077164.

The programs for A077167, there is no canonical definition to state claims against.
-/

/-! ## A077167.P15204751015313071248

`A299255(n)+A167520(A242792(n+1))`
-/

namespace A077167.P15204751015313071248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n + A167520 (A242792 (n + 1)).toNat

end

end A077167.P15204751015313071248

/-!
# A077169: Initial terms of rows of A077168.

The programs for A077169, the canonical program `A077169.P7651926742320088337` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077169 has offset 0).

The definition of A077169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077169.P7651926742320088337

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=11, a(5)=15, a(6)=20`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077169

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7651926742320088337.Spec : Prop :=
  ∀ n, P7651926742320088337.a n = A077169 n

theorem P7651926742320088337.correct : P7651926742320088337.Spec := by
  intro n
  simp only [A077169]

end A077169

/-! ## A077169.P6840657576255169812

`∑[round(n+1-atan(∑[n]))]`
-/

namespace A077169.P6840657576255169812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.arctan ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077169.P6840657576255169812

namespace A077169

/-- `∑[round(n+1-atan(∑[n]))]` -/
def P6840657576255169812.Spec : Prop :=
  ∀ n, P6840657576255169812.a n = A077169 n

end A077169

/-! ## A077169.P1013333632272659332

`∑[n-5%a(4%n)]` with `a(0)=1`
-/

namespace A077169.P1013333632272659332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - Int.tmod 5 (f1 (4 % n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077169.P1013333632272659332

namespace A077169

/-- `∑[n-5%a(4%n)]` -/
def P1013333632272659332.Spec : Prop :=
  ∀ n, P1013333632272659332.a n = A077169 n

end A077169

/-! ## A077169.P728773287018921883

`∑[ceil((n+1)²/(n+4))]`
-/

namespace A077169.P728773287018921883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / (n + 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077169.P728773287018921883

namespace A077169

/-- `∑[ceil((n+1)²/(n+4))]` -/
def P728773287018921883.Spec : Prop :=
  ∀ n, P728773287018921883.a n = A077169 n

end A077169

/-! ## A077169.P7272002830912345603

`C(n+2, 2)-comp[2*n+5]`
-/

namespace A077169.P7272002830912345603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A077169.P7272002830912345603

namespace A077169

/-- `C(n+2, 2)-comp[2*n+5]` -/
def P7272002830912345603.Spec : Prop :=
  ∀ n, P7272002830912345603.a n = A077169 n

end A077169

/-! ## A077169.P18102520818007814423

`n-1+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=11`
-/

namespace A077169.P18102520818007814423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7, 11] fun n a =>
  (n : ℤ) - 1 + a (n - 1)

end

end A077169.P18102520818007814423

namespace A077169

/-- `n-1+a(n-1)` -/
def P18102520818007814423.Spec : Prop :=
  ∀ n, P18102520818007814423.a n = A077169 n

end A077169

/-! ## A077169.P17016985751632185984

`∑[n+1]-comp[or(n+4, n+3)]`
-/

namespace A077169.P17016985751632185984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 4) (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A077169.P17016985751632185984

namespace A077169

/-- `∑[n+1]-comp[or(n+4, n+3)]` -/
def P17016985751632185984.Spec : Prop :=
  ∀ n, P17016985751632185984.a n = A077169 n

end A077169

/-! ## A077169.P9698023507163645810

`a(n-1)-floor(2*(1-n/a(n-1))-n)` with `a(0)=1`
-/

namespace A077169.P9698023507163645810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊2 * (1 - (n : ℚ) / (a (n - 1) : ℚ)) - (n : ℚ)⌋

end

end A077169.P9698023507163645810

namespace A077169

/-- `a(n-1)-floor(2*(1-n/a(n-1))-n)` -/
def P9698023507163645810.Spec : Prop :=
  ∀ n, P9698023507163645810.a n = A077169 n

end A077169

/-! ## A077169.P11563912116907373704

`floor(n-(1/2-a(n-1)-n/a(n-1)))` with `a(0)=1`
-/

namespace A077169.P11563912116907373704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) - ((1 : ℚ) / 2 - (a (n - 1) : ℚ) - (n : ℚ) / (a (n - 1) : ℚ))⌋

end

end A077169.P11563912116907373704

namespace A077169

/-- `floor(n-(1/2-a(n-1)-n/a(n-1)))` -/
def P11563912116907373704.Spec : Prop :=
  ∀ n, P11563912116907373704.a n = A077169 n

end A077169

/-! ## A077169.P4577683952994689185

`∑[n+1]-A004271(n)`
-/

namespace A077169.P4577683952994689185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004271 n

end

end A077169.P4577683952994689185

namespace A077169

/-- `∑[n+1]-A004271(n)` -/
def P4577683952994689185.Spec : Prop :=
  ∀ n, P4577683952994689185.a n = A077169 n

end A077169

/-! ## A077169.P14119184881329000734

`∑[n-A185115(n)]+2`
-/

namespace A077169.P14119184881329000734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A185115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A077169.P14119184881329000734

namespace A077169

/-- `∑[n-A185115(n)]+2` -/
def P14119184881329000734.Spec : Prop :=
  ∀ n, P14119184881329000734.a n = A077169 n

end A077169

/-! ## A077169.P14358605237166224426

`A210032(n+1)+C(n, 2)`
-/

namespace A077169.P14358605237166224426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210032 (n + 1) + (Nat.choose n 2 : ℤ)

end

end A077169.P14358605237166224426

namespace A077169

/-- `A210032(n+1)+C(n, 2)` -/
def P14358605237166224426.Spec : Prop :=
  ∀ n, P14358605237166224426.a n = A077169 n

end A077169

/-! ## A077169.P15721452764925662816

`Δ[A000292(n)]-comp[2*n+5]`
-/

namespace A077169.P15721452764925662816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A077169.P15721452764925662816

namespace A077169

/-- `Δ[A000292(n)]-comp[2*n+5]` -/
def P15721452764925662816.Spec : Prop :=
  ∀ n, P15721452764925662816.a n = A077169 n

end A077169

/-! ## A077169.P12938628029251263529

`∑[floor(A267682(n)/(n+1))]+n`
-/

namespace A077169.P12938628029251263529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267682 n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A077169.P12938628029251263529

namespace A077169

/-- `∑[floor(A267682(n)/(n+1))]+n` -/
def P12938628029251263529.Spec : Prop :=
  ∀ n, P12938628029251263529.a n = A077169 n

end A077169

/-! ## A077169.P1975187596173102618

`A000217(n+1)-comp[2*(n+2)+1]`
-/

namespace A077169.P1975187596173102618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A077169.P1975187596173102618

namespace A077169

/-- `A000217(n+1)-comp[2*(n+2)+1]` -/
def P1975187596173102618.Spec : Prop :=
  ∀ n, P1975187596173102618.a n = A077169 n

end A077169

/-! ## A077169.P9996580281039610114

`A158411(n)+A152947(n+1)`
-/

namespace A077169.P9996580281039610114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158411 n + A152947 (n + 1)

end

end A077169.P9996580281039610114

namespace A077169

/-- `A158411(n)+A152947(n+1)` -/
def P9996580281039610114.Spec : Prop :=
  ∀ n, P9996580281039610114.a n = A077169 n

end A077169

/-! ## A077169.P16914482470270222488

`A210032(n+1)+A161680(n)`
-/

namespace A077169.P16914482470270222488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210032 (n + 1) + A161680 n

end

end A077169.P16914482470270222488

namespace A077169

/-- `A210032(n+1)+A161680(n)` -/
def P16914482470270222488.Spec : Prop :=
  ∀ n, P16914482470270222488.a n = A077169 n

end A077169

/-! ## A077169.P18159398821632534670

`A000096(n)+2-A004281(n)`
-/

namespace A077169.P18159398821632534670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (2 - A004281 n)

end

end A077169.P18159398821632534670

namespace A077169

/-- `A000096(n)+2-A004281(n)` -/
def P18159398821632534670.Spec : Prop :=
  ∀ n, P18159398821632534670.a n = A077169 n

end A077169

/-! ## A077169.P11729601403104363539

`A034856(n+1)-(A004271(n)+n)`
-/

namespace A077169.P11729601403104363539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - (A004271 n + (n : ℤ))

end

end A077169.P11729601403104363539

namespace A077169

/-- `A034856(n+1)-(A004271(n)+n)` -/
def P11729601403104363539.Spec : Prop :=
  ∀ n, P11729601403104363539.a n = A077169 n

end A077169

/-! ## A077169.P9077262453454652597

`A210032(n+1)+A000217(n)-n`
-/

namespace A077169.P9077262453454652597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210032 (n + 1) + (A000217 n - (n : ℤ))

end

end A077169.P9077262453454652597

namespace A077169

/-- `A210032(n+1)+A000217(n)-n` -/
def P9077262453454652597.Spec : Prop :=
  ∀ n, P9077262453454652597.a n = A077169 n

end A077169

/-!
# A077170: Final terms of rows of A077168.

The programs for A077170, there is no canonical definition to state claims against.
-/

/-! ## A077170.P8611543711667084848

`A077168(∑[n]+n)`
-/

namespace A077170.P8611543711667084848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A077170.P8611543711667084848

/-! ## A077170.P12960788461716730007

`record[char[∑[n-1]]*A077168(n)]`
-/

namespace A077170.P12960788461716730007
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077170.P12960788461716730007

/-! ## A077170.P11082541121409403647

`record[A077168(∑[2*n]%comp[∑[n]])]`
-/

namespace A077170.P11082541121409403647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 ((∑ j ∈ Finset.range (n + 1), f2 j) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077170.P11082541121409403647

/-! ## A077170.P15983108448791384262

`record[A077168(A061579(n))]`
-/

namespace A077170.P15983108448791384262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077170.P15983108448791384262

/-! ## A077170.P13284860636351510985

`record[A077168(n)/A049459(n)]`
-/

namespace A077170.P13284860636351510985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077168 n : ℚ) / (A049459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077170.P13284860636351510985

/-!
# A077171: a(n) = k where k! is the product of the terms of the n-th row of A077168.

The programs for A077171, the canonical program `A077171.P15624260767854281939` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077171 has offset 0).

The definition of A077171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077171.P15624260767854281939

`A136548(∑[C(2, a(n-1))+n]+1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077171

/-- `A136548(∑[C(2, a(n-1))+n]+1)` -/
def P15624260767854281939.Spec : Prop :=
  ∀ n, P15624260767854281939.a n = A077171 n

theorem P15624260767854281939.correct : P15624260767854281939.Spec := by
  intro n
  simp only [A077171]

end A077171

/-! ## A077171.P3683381570611454359

`A136548(A077169(n+1))`
-/

namespace A077171.P3683381570611454359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A077169 (n + 1)).toNat

end

end A077171.P3683381570611454359

namespace A077171

/-- `A136548(A077169(n+1))` -/
def P3683381570611454359.Spec : Prop :=
  ∀ n, P3683381570611454359.a n = A077171 n

end A077171

/-! ## A077171.P12406019232521018417

`A136548(A128999(n+1)+∑[n])`
-/

namespace A077171.P12406019232521018417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A128999 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A077171.P12406019232521018417

namespace A077171

/-- `A136548(A128999(n+1)+∑[n])` -/
def P12406019232521018417.Spec : Prop :=
  ∀ n, P12406019232521018417.a n = A077171 n

end A077171

/-! ## A077171.P9942155516842854985

`A136548(∑[A329678(n)+n]+1)`
-/

namespace A077171.P9942155516842854985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A077171.P9942155516842854985

namespace A077171

/-- `A136548(∑[A329678(n)+n]+1)` -/
def P9942155516842854985.Spec : Prop :=
  ∀ n, P9942155516842854985.a n = A077171 n

end A077171

/-! ## A077171.P5031158530208243538

`A136548(∑[n+2]-A004271(n+1)+1)`
-/

namespace A077171.P5031158530208243538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004271 (n + 1) + 1).toNat

end

end A077171.P5031158530208243538

namespace A077171

/-- `A136548(∑[n+2]-A004271(n+1)+1)` -/
def P5031158530208243538.Spec : Prop :=
  ∀ n, P5031158530208243538.a n = A077171 n

end A077171

/-! ## A077171.P2795838445011786800

`A136548(A254667(n)+∑[round(n+1-atan(∑[n]))])`
-/

namespace A077171.P2795838445011786800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.arctan ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A254667 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077171.P2795838445011786800

namespace A077171

/-- `A136548(A254667(n)+∑[round(n+1-atan(∑[n]))])` -/
def P2795838445011786800.Spec : Prop :=
  ∀ n, P2795838445011786800.a n = A077171 n

end A077171

/-! ## A077171.P9450562549276994586

`A136548(A254667(n)+∑[ceil((n+1)²/(n+4))])`
-/

namespace A077171.P9450562549276994586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / (n + 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A254667 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077171.P9450562549276994586

namespace A077171

/-- `A136548(A254667(n)+∑[ceil((n+1)²/(n+4))])` -/
def P9450562549276994586.Spec : Prop :=
  ∀ n, P9450562549276994586.a n = A077171 n

end A077171

/-! ## A077171.P11772822905506449930

`record[A136548(A077169(A002262(n)))]`
-/

namespace A077171.P11772822905506449930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A077169 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077171.P11772822905506449930

namespace A077171

/-- `record[A136548(A077169(A002262(n)))]` -/
def P11772822905506449930.Spec : Prop :=
  ∀ n, P11772822905506449930.a n = A077171 n

end A077171

/-! ## A077171.P5527162586943544421

`record[A136548(A077169(A116939(n)))]`
-/

namespace A077171.P5527162586943544421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A077169 (A116939 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077171.P5527162586943544421

namespace A077171

/-- `record[A136548(A077169(A116939(n)))]` -/
def P5527162586943544421.Spec : Prop :=
  ∀ n, P5527162586943544421.a n = A077171 n

end A077171

/-!
# A077173: Initial terms of rows of triangle in A077172.

The programs for A077173, there is no canonical definition to state claims against.
-/

/-! ## A077173.P17620103545330891918

`A077172(∑[n]+1)`
-/

namespace A077173.P17620103545330891918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077173.P17620103545330891918

/-! ## A077173.P2068146462737404363

`and(A077172(A000124(n)), A236752(n+1))`
-/

namespace A077173.P2068146462737404363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077172 (A000124 n).toNat) (A236752 (n + 1))

end

end A077173.P2068146462737404363

/-! ## A077173.P8420372877169096015

`and(A002715(n), A077172(A000124(n)))`
-/

namespace A077173.P8420372877169096015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002715 n) (A077172 (A000124 n).toNat)

end

end A077173.P8420372877169096015

/-! ## A077173.P18381049431505006764

`A010815(A078482(n))+A000124(n)`
-/

namespace A077173.P18381049431505006764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A078482 n).toNat + A000124 n

end

end A077173.P18381049431505006764

/-! ## A077173.P3131293257475017520

`A117200(A006190(n))+A000124(n)`
-/

namespace A077173.P3131293257475017520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117200 (A006190 n).toNat + A000124 n

end

end A077173.P3131293257475017520

/-!
# A077174: Final terms of rows of triangle in A077172.

The programs for A077174, there is no canonical definition to state claims against.
-/

/-! ## A077174.P5195149736774344367

`A077172(∑[n+1])`
-/

namespace A077174.P5195149736774344367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077174.P5195149736774344367

/-! ## A077174.P17338589624485592236

`A077172(∑[A077168(n)])-A185236(n)`
-/

namespace A077174.P17338589624485592236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A185236 n

end

end A077174.P17338589624485592236

/-! ## A077174.P11989432468670573555

`A167689(A101176(n+1))`
-/

namespace A077174.P11989432468670573555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167689 (A101176 (n + 1)).toNat

end

end A077174.P11989432468670573555

/-!
# A077175: Product of terms in n-th row of triangle in A077172.

The programs for A077175, there is no canonical definition to state claims against.
-/

/-! ## A077175.P2486359181223574154

`A077176(n+1)*A100918(n+1)`
-/

namespace A077175.P2486359181223574154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077176 (n + 1) * A100918 (n + 1)

end

end A077175.P2486359181223574154

/-! ## A077175.P3956638918175672612

`A100918(n+1)*A101177(n+1)/A101179(n+1)`
-/

namespace A077175.P3956638918175672612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100918 (n + 1) * A101177 (n + 1) : ℚ) / (A101179 (n + 1) : ℚ)

end

end A077175.P3956638918175672612

/-! ## A077175.P13253951115033625131

`A100918(n+1)/A101179(n+1)*A101177(A077168(n))`
-/

namespace A077175.P13253951115033625131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100918 (n + 1) : ℚ) / (A101179 (n + 1) : ℚ) * (A101177 (A077168 n).toNat : ℚ)

end

end A077175.P13253951115033625131

/-!
# A077176: Largest squarefree number that divides A077175(n).

The programs for A077176, there is no canonical definition to state claims against.
-/

/-! ## A077176.P6918930260498423640

`A077175(n+1)/A100918(n+1)`
-/

namespace A077176.P6918930260498423640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077175 (n + 1) : ℚ) / (A100918 (n + 1) : ℚ)

end

end A077176.P6918930260498423640

/-! ## A077176.P1217446130838307123

`gcd(A002110(A119565(n)), A077175(n+1))`
-/

namespace A077176.P1217446130838307123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A119565 n).toNat) (A077175 (n + 1))

end

end A077176.P1217446130838307123

/-! ## A077176.P2320284404419528985

`A101177(n+1)/A101179(n+1)`
-/

namespace A077176.P2320284404419528985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101177 (n + 1) : ℚ) / (A101179 (n + 1) : ℚ)

end

end A077176.P2320284404419528985

/-! ## A077176.P5040668489381088222

`gcd(A002110(2*n+1), A077175(A077168(n)))`
-/

namespace A077176.P5040668489381088222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (2 * n + 1)) (A077175 (A077168 n).toNat)

end

end A077176.P5040668489381088222

/-! ## A077176.P2356009285993432285

`gcd(A002110(A000124(n)), A101177(n+1))`
-/

namespace A077176.P2356009285993432285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A000124 n).toNat) (A101177 (n + 1))

end

end A077176.P2356009285993432285

/-!
# A077177: Number of primitive Pythagorean triangles with perimeter equal to A002110(n), the product of the first n primes.

The programs for A077177, there is no canonical definition to state claims against.
-/

/-! ## A077177.P16817689197685734105

`A273190(xor(A002216(n), A339374(n)))`
-/

namespace A077177.P16817689197685734105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (Int.xor (A002216 n) (A339374 n)).toNat

end

end A077177.P16817689197685734105

/-!
# A077182: Smallest number k such that the concatenation of natural numbers from 1 to k is divisible by the prime(n).

The programs for A077182, there is no canonical definition to state claims against.
-/

/-! ## A077182.P17333481980593258730

`A075002(p?[xor(1, n)])`
-/

namespace A077182.P17333481980593258730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075002 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A077182.P17333481980593258730

/-! ## A077182.P6712256262765255295

`A075002(Δ[A007504(n)])`
-/

namespace A077182.P6712256262765255295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075002 (f1 (n + 1) - f1 n).toNat

end

end A077182.P6712256262765255295

/-! ## A077182.P12273313417917278964

`A075002(A000040(n+1))`
-/

namespace A077182.P12273313417917278964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075002 (A000040 (n + 1)).toNat

end

end A077182.P12273313417917278964

/-! ## A077182.P11162646596176942240

`A075002(A008578(n+2))`
-/

namespace A077182.P11162646596176942240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075002 (A008578 (n + 2)).toNat

end

end A077182.P11162646596176942240

/-! ## A077182.P7453727339750450816

`A075002(A175787(n+2))`
-/

namespace A077182.P7453727339750450816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075002 (A175787 (n + 2)).toNat

end

end A077182.P7453727339750450816

/-! ## A077182.P4747766158992421696

`A075002(A182986(n+2))`
-/

namespace A077182.P4747766158992421696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075002 (A182986 (n + 2)).toNat

end

end A077182.P4747766158992421696

/-!
# A077183: Smallest number k such that the reverse concatenation of natural numbers from k to 1 is divisible by prime(n), or 0 if no such number exists.

The programs for A077183, there is no canonical definition to state claims against.
-/

/-! ## A077183.P15392652612507551407

`A317636(Δ[A007504(n)])`
-/

namespace A077183.P15392652612507551407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317636 (f1 (n + 1) - f1 n).toNat

end

end A077183.P15392652612507551407

/-! ## A077183.P14208082746464116758

`A317636(A000040(n+1))`
-/

namespace A077183.P14208082746464116758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317636 (A000040 (n + 1)).toNat

end

end A077183.P14208082746464116758

/-! ## A077183.P8409915668822066217

`A317636(A049551(n+1))`
-/

namespace A077183.P8409915668822066217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317636 (A049551 (n + 1)).toNat

end

end A077183.P8409915668822066217

/-! ## A077183.P2679406328884826491

`A317636(A049569(n+1))`
-/

namespace A077183.P2679406328884826491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317636 (A049569 (n + 1)).toNat

end

end A077183.P2679406328884826491

/-! ## A077183.P7428640577269571942

`A317636(A050260(n+1))`
-/

namespace A077183.P7428640577269571942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317636 (A050260 (n + 1)).toNat

end

end A077183.P7428640577269571942

/-!
# A077186: Smallest multiple of prime(n) of the form 123...(k-1) k (k-1)...321 ( a concatenation of natural numbers from 1 to k and back to 1), or 0 if no such number exists.

The programs for A077186, there is no canonical definition to state claims against.
-/

/-! ## A077186.P4881789224843745056

`A077573(n+1)²`
-/

namespace A077186.P4881789224843745056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077573 (n + 1) ^ 2

end

end A077186.P4881789224843745056

/-!
# A077188: a(n) = A077186(n)/prime(n).

The programs for A077188, there is no canonical definition to state claims against.
-/

/-! ## A077188.P15797820756538348672

`A077573(n+1)²/p?[n%3+n]`
-/

namespace A077188.P15797820756538348672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077573 (n + 1) ^ 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ)

end

end A077188.P15797820756538348672

/-!
# A077191: Number of possible character tables for a group of order n.

The programs for A077191, there is no canonical definition to state claims against.
-/

/-! ## A077191.P10202957756096068491

`A060689(n+1)+A026465(A080926(A002033(n)))`
-/

namespace A077191.P10202957756096068491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + A026465 (A080926 (A002033 n).toNat).toNat

end

end A077191.P10202957756096068491

/-! ## A077191.P8367035491199428030

`A294434(A326334(n+1))/A035214(A254698(n+1))`
-/

namespace A077191.P8367035491199428030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294434 (A326334 (n + 1)).toNat : ℚ) / (A035214 (A254698 (n + 1)).toNat : ℚ)

end

end A077191.P8367035491199428030

/-! ## A077191.P12111468694661214571

`A281118(n+1)-A294881(A344592(n+1))`
-/

namespace A077191.P12111468694661214571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (n + 1) - A294881 (A344592 (n + 1)).toNat

end

end A077191.P12111468694661214571

/-! ## A077191.P6975251077116764143

`A281118(n+1)-A085982(A211685(3*n+4))`
-/

namespace A077191.P6975251077116764143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (n + 1) - A085982 (A211685 (3 * n + 4)).toNat

end

end A077191.P6975251077116764143

/-! ## A077191.P4961113933385131505

`A292504(n+1)-A000035(A036600(n))`
-/

namespace A077191.P4961113933385131505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (n + 1) - A000035 (A036600 n).toNat

end

end A077191.P4961113933385131505

/-!
# A077193: Number of multiples of n that can be obtained by permuting the digits of number formed by the concatenation of first n numbers.

The programs for A077193, there is no canonical definition to state claims against.
-/

/-! ## A077193.P17603401398261052164

`gcd(A099550(n+1), A369366(2*n+1))*n!`
-/

namespace A077193.P17603401398261052164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099550 (n + 1)) (A369366 (2 * n + 1)) * Nat.factorial n

end

end A077193.P17603401398261052164

/-! ## A077193.P15438837019045315917

`A000142(n)*A306671(A000244(n))`
-/

namespace A077193.P15438837019045315917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A306671 (A000244 n).toNat

end

end A077193.P15438837019045315917

/-! ## A077193.P16573780012611444040

`A033647(n)*A091840(A023052(n+2))`
-/

namespace A077193.P16573780012611444040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033647 n * A091840 (A023052 (n + 2)).toNat

end

end A077193.P16573780012611444040

/-! ## A077193.P13596193348049766916

`gcd(A000165(A032559(n+1)), A032031(n))`
-/

namespace A077193.P13596193348049766916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000165 (A032559 (n + 1)).toNat) (A032031 n)

end

end A077193.P13596193348049766916

/-! ## A077193.P16510011446979235763

`gcd(A052585(A328142(n+1)), A052585(n))`
-/

namespace A077193.P16510011446979235763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052585 (A328142 (n + 1)).toNat) (A052585 n)

end

end A077193.P16510011446979235763

/-!
# A077194: Smallest multiple of n with least digit sum.

The programs for A077194, there is no canonical definition to state claims against.
-/

/-! ## A077194.P6227435673649201436

`(n+1)*A077195(n+1)`
-/

namespace A077194.P6227435673649201436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077195 (n + 1)

end

end A077194.P6227435673649201436

/-! ## A077194.P12480829807666129090

`A079339(n+1)%A054879(A337407(n+1))*(n+1)`
-/

namespace A077194.P12480829807666129090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079339 (n + 1)) (A054879 (A337407 (n + 1)).toNat) * (n + 1 : ℤ)

end

end A077194.P12480829807666129090

/-! ## A077194.P17768256702354228107

`(n+1)*ceil(A078242(n+1)/A096682(A079339(n+1)))`
-/

namespace A077194.P17768256702354228107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A078242 (n + 1) : ℚ) / (A096682 (A079339 (n + 1)).toNat : ℚ)⌉

end

end A077194.P17768256702354228107

/-!
# A077195: a(n) = A077194(n)/n.

The programs for A077195, there is no canonical definition to state claims against.
-/

/-! ## A077195.P11320650601816795063

`A077194(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077195.P11320650601816795063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077194 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077195.P11320650601816795063

/-! ## A077195.P5984990285183078253

`cot(atan(n+1))*A077194(A077168(n))`
-/

namespace A077195.P5984990285183078253
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arctan (n + 1 : ℝ)) * (A077194 (A077168 n).toNat : ℝ)

end

end A077195.P5984990285183078253

/-! ## A077195.P8295219591902242519

`A079339(n+1)%A054879(A337407(n+1))`
-/

namespace A077195.P8295219591902242519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079339 (n + 1)) (A054879 (A337407 (n + 1)).toNat)

end

end A077195.P8295219591902242519

/-! ## A077195.P15146495638104029863

`ceil(A078242(n+1)/A096682(A079339(n+1)))`
-/

namespace A077195.P15146495638104029863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078242 (n + 1) : ℚ) / (A096682 (A079339 (n + 1)).toNat : ℚ)⌉

end

end A077195.P15146495638104029863

/-!
# A077196: Smallest possible sum of the digits of a multiple of n.

The programs for A077196, there is no canonical definition to state claims against.
-/

/-! ## A077196.P9943210197813755909

`A007953(A077194(n+1))`
-/

namespace A077196.P9943210197813755909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A077194 (n + 1)).toNat

end

end A077196.P9943210197813755909

/-! ## A077196.P13498036281520594869

`∑{digits}[(n+1)*A077195(n+1), #]`
-/

namespace A077196.P13498036281520594869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A077196.P13498036281520594869

/-! ## A077196.P5737071080619647685

`∑{digits}[A004290(n+1), #]%A068575(n+1)`
-/

namespace A077196.P5737071080619647685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A068575 (n + 1))

end

end A077196.P5737071080619647685

/-! ## A077196.P701014451553208806

`and(A023142(n+1), A174422(∏{p}[n+1, #-1]))`
-/

namespace A077196.P701014451553208806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023142 (n + 1)) (A174422 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat)

end

end A077196.P701014451553208806

/-! ## A077196.P3075291992193384458

`A010888((n+1)*A007953(A077195(n+1)))`
-/

namespace A077196.P3075291992193384458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 ((n + 1 : ℤ) * A007953 (A077195 (n + 1)).toNat).toNat

end

end A077196.P3075291992193384458

/-!
# A077197: a(n) = lambda(phi(n)) where lambda(n) (A002322) is the Carmichael lambda function which gives the smallest integer m such that k^m = 1 mod n for all integers k relatively prime to n and phi(n) is A000010.

The programs for A077197, there is no canonical definition to state claims against.
-/

/-! ## A077197.P1539939770257779631

`A002322((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A077197.P1539939770257779631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A077197.P1539939770257779631

/-! ## A077197.P3759912918592317888

`A002322(Δ[A002088(n)])`
-/

namespace A077197.P3759912918592317888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (n + 1) - f1 n).toNat

end

end A077197.P3759912918592317888

/-! ## A077197.P17917961044755183504

`A002322(Δ[A005728(n)])`
-/

namespace A077197.P17917961044755183504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (n + 1) - f1 n).toNat

end

end A077197.P17917961044755183504

/-! ## A077197.P5369297971262960437

`A002322(A000010(n+1))`
-/

namespace A077197.P5369297971262960437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A000010 (n + 1)).toNat

end

end A077197.P5369297971262960437

/-! ## A077197.P556174071494281018

`A002322(A349137(Δ[n²]))`
-/

namespace A077197.P556174071494281018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A077197.P556174071494281018

/-! ## A077197.P3644289457099886985

`A002322(sqrt(A127473(n+1)))`
-/

namespace A077197.P3644289457099886985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A077197.P3644289457099886985

/-! ## A077197.P2943509766680294897

`A002322(A109606(n+1)+1)`
-/

namespace A077197.P2943509766680294897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A109606 (n + 1) + 1).toNat

end

end A077197.P2943509766680294897

/-! ## A077197.P5998228139069595344

`A002322(A039649(n+1)-1)`
-/

namespace A077197.P5998228139069595344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A039649 (n + 1) - 1).toNat

end

end A077197.P5998228139069595344

/-! ## A077197.P14306572856352874628

`A002322(n-A219428(n+1))`
-/

namespace A077197.P14306572856352874628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A077197.P14306572856352874628

/-! ## A077197.P14778214460014422462

`A002322(ceil(A002246(n+1)/4))`
-/

namespace A077197.P14778214460014422462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ⌈(A002246 (n + 1) : ℚ) / 4⌉.toNat

end

end A077197.P14778214460014422462

/-! ## A077197.P14870156913357063451

`A002322(1-A051953(n+1)+n)`
-/

namespace A077197.P14870156913357063451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A077197.P14870156913357063451

/-! ## A077197.P5829222590353033373

`A002322(A121048(n+1)-(n+1))`
-/

namespace A077197.P5829222590353033373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A121048 (n + 1) - (n + 1 : ℤ)).toNat

end

end A077197.P5829222590353033373

/-! ## A077197.P11330007059877264759

`A002322(A002618(n+1)/(n+1))`
-/

namespace A077197.P11330007059877264759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A077197.P11330007059877264759

/-! ## A077197.P13514261708114689403

`A002322(∏{p}[n+1, #-1]*A003557(n+1))`
-/

namespace A077197.P13514261708114689403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1)).toNat

end

end A077197.P13514261708114689403

/-! ## A077197.P10327572189708882335

`A002322((n+1)/∏{p}[n+1, #]*A173557(n+1))`
-/

namespace A077197.P10327572189708882335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ))).toNat

end

end A077197.P10327572189708882335

/-! ## A077197.P9413656797145855615

`A002322(A083239(n+1)+A083239(n))`
-/

namespace A077197.P9413656797145855615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A083239 (n + 1) + A083239 n).toNat

end

end A077197.P9413656797145855615

/-! ## A077197.P17453503233125983120

`A002322(A002088(n+1)-A002088(n))`
-/

namespace A077197.P17453503233125983120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002088 (n + 1) - A002088 n).toNat

end

end A077197.P17453503233125983120

/-! ## A077197.P12329735218708839309

`A002322(A048865(n+1)+A048864(n+1))`
-/

namespace A077197.P12329735218708839309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A048865 (n + 1) + A048864 (n + 1)).toNat

end

end A077197.P12329735218708839309

/-! ## A077197.P17671781806812594499

`A002322(A104194(n+1)+A002322(n+1))`
-/

namespace A077197.P17671781806812594499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A104194 (n + 1) + A002322 (n + 1)).toNat

end

end A077197.P17671781806812594499

/-! ## A077197.P6030607349142680988

`A002322(A318830(n+1)+A049559(n+1))`
-/

namespace A077197.P6030607349142680988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A318830 (n + 1) + A049559 (n + 1)).toNat

end

end A077197.P6030607349142680988

/-!
# A077198: a(n) = lambda(sigma(n)), where lambda(n) is the Carmichael lambda function, which gives the smallest integer m such that k^m = 1 mod n for all integers k relatively prime to n.

The programs for A077198, there is no canonical definition to state claims against.
-/

/-! ## A077198.P8135284555740541277

`A002322(A000203(n+1))`
-/

namespace A077198.P8135284555740541277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A000203 (n + 1)).toNat

end

end A077198.P8135284555740541277

/-! ## A077198.P9986334707856030611

`A002322(∑{d}[n+1, #])`
-/

namespace A077198.P9986334707856030611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A077198.P9986334707856030611

/-! ## A077198.P11965452864084994292

`A002322(A039653(n+1)+1)`
-/

namespace A077198.P11965452864084994292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A039653 (n + 1) + 1).toNat

end

end A077198.P11965452864084994292

/-! ## A077198.P7127169156668053184

`A002322(A088580(n+1)-1)`
-/

namespace A077198.P7127169156668053184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A088580 (n + 1) - 1).toNat

end

end A077198.P7127169156668053184

/-! ## A077198.P660543718082492625

`A002322(A074400(n+1)/2)`
-/

namespace A077198.P660543718082492625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A077198.P660543718082492625

/-! ## A077198.P7040143750953927048

`∑{d}[A000203(n+1), A369700(#)]`
-/

namespace A077198.P7040143750953927048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A369700 d

end

end A077198.P7040143750953927048

/-! ## A077198.P14982570850412783414

`A002322(A146076(2*(n+1))/2)`
-/

namespace A077198.P14982570850412783414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A077198.P14982570850412783414

/-! ## A077198.P17880061160917878281

`A002322(A326136(2*(n+1))/2)`
-/

namespace A077198.P17880061160917878281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A326136 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A077198.P17880061160917878281

/-! ## A077198.P6209498001829950134

`A002322(A001065(n+1)+1+n)`
-/

namespace A077198.P6209498001829950134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A077198.P6209498001829950134

/-! ## A077198.P11047245001686405832

`A002322(A048050(n+1)+n+2)`
-/

namespace A077198.P11047245001686405832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A048050 (n + 1) + (n + 2 : ℤ)).toNat

end

end A077198.P11047245001686405832

/-! ## A077198.P8172566875823045300

`A002322(A064987(n+1)/(n+1))`
-/

namespace A077198.P8172566875823045300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A077198.P8172566875823045300

/-! ## A077198.P5212806519868846267

`A002322(2*(n+1)-A033879(n+1))`
-/

namespace A077198.P5212806519868846267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A077198.P5212806519868846267

/-! ## A077198.P3531372434744782893

`A002322(A048146(n+1)+A034448(n+1))`
-/

namespace A077198.P3531372434744782893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A077198.P3531372434744782893

/-! ## A077198.P12105319257666851647

`A002322(A146076(n+1)+A000593(n+1))`
-/

namespace A077198.P12105319257666851647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A077198.P12105319257666851647

/-! ## A077198.P16317351684744280179

`A002322(A326126(n+1)+A007913(n+1))`
-/

namespace A077198.P16317351684744280179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A326126 (n + 1) + A007913 (n + 1)).toNat

end

end A077198.P16317351684744280179

/-! ## A077198.P10309835477545027004

`A002322(A245093(∑[n+1]))`
-/

namespace A077198.P10309835477545027004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A245093 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077198.P10309835477545027004

/-!
# A077199: Smallest k such that both k and k+n are squarefree.

The programs for A077199, there is no canonical definition to state claims against.
-/

/-! ## A077199.P9011841787075164719

`A006530(A002033(n+2)+1)%A222588(n)`
-/

namespace A077199.P9011841787075164719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A002033 (n + 2) + 1).toNat) (A222588 n)

end

end A077199.P9011841787075164719

/-! ## A077199.P2650676971663860479

`A000040(A321271(n+3))%A343881(3*n+2)`
-/

namespace A077199.P2650676971663860479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A321271 (n + 3)).toNat) (A343881 (3 * n + 2))

end

end A077199.P2650676971663860479

/-! ## A077199.P13144883374387714540

`A006530(A002033(n+2)+A001222(A000043(n+4)))`
-/

namespace A077199.P13144883374387714540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002033 (n + 2) + A001222 (A000043 (n + 4)).toNat).toNat

end

end A077199.P13144883374387714540

/-! ## A077199.P10782569731623626071

`A033677(A002033(n+2)+A001222(A000043(n+4)))`
-/

namespace A077199.P10782569731623626071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A002033 (n + 2) + A001222 (A000043 (n + 4)).toNat).toNat

end

end A077199.P10782569731623626071

/-! ## A077199.P6948336439756062733

`A033677(A011776(p?[53*n-7])+A002033(n+2))`
-/

namespace A077199.P6948336439756062733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A011776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A002033 (n + 2)).toNat

end

end A077199.P6948336439756062733

