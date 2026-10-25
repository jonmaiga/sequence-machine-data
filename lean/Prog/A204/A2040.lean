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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A204000: Symmetric matrix based on f(i,j)=min{i(j+1)-1,j(i+1)-1}, by antidiagonals.

The programs for A204000, the canonical program `A204000.P8902930415265516511` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204000 has offset 1).

The definition of A204000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204000.P8902930415265516511

`A203996(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A204000

/-- `A203996(n+1)-1` -/
def P8902930415265516511.Spec : Prop :=
  ∀ n, P8902930415265516511.a n = A204000 (n + 1)

theorem P8902930415265516511.correct : P8902930415265516511.Spec := by
  intro n
  simp only [A204000, Nat.add_sub_cancel]

end A204000

/-! ## A204000.P2801534223519669198

`A004197(n)+A003991(n+1)`
-/

namespace A204000.P2801534223519669198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + A003991 (n + 1)

end

end A204000.P2801534223519669198

namespace A204000

/-- `A004197(n)+A003991(n+1)` -/
def P2801534223519669198.Spec : Prop :=
  ∀ n, P2801534223519669198.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P15756605474311397909

`A059036(n)+A003983(n+1)`
-/

namespace A204000.P15756605474311397909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A003983 (n + 1)

end

end A204000.P15756605474311397909

namespace A204000

/-- `A059036(n)+A003983(n+1)` -/
def P15756605474311397909.Spec : Prop :=
  ∀ n, P15756605474311397909.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P12773997785792734429

`A204006(n+1)+A004247(n)`
-/

namespace A204000.P12773997785792734429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) + A004247 n

end

end A204000.P12773997785792734429

namespace A204000

/-- `A204006(n+1)+A004247(n)` -/
def P12773997785792734429.Spec : Prop :=
  ∀ n, P12773997785792734429.a n = A204000 (n + 1)

theorem P12773997785792734429.correct : P12773997785792734429.Spec := by
  intro n
  simp only [A204000, Nat.add_sub_cancel, A204000.P12773997785792734429.a, A204000.P8902930415265516511.a, A004247, A004247.P14233945955703425283.a, A203996, A203996.P4927933465799713350.a, A204006, A204006.P4882152759025976317.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A204002, A204002.P9170286212412624765.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A036561, A036561.P7490084913005378529.a, A057944, A057944.P16851463738746886639.a, A114327, A114327.P9028308961649463264.a, A176270, A176270.P12132002411983152534.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A077028, A077028.P11682596430163569480.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204000

/-! ## A204000.P12056380955659886503

`A204250(n+1)-A003984(n)`
-/

namespace A204000.P12056380955659886503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) - A003984 n

end

end A204000.P12056380955659886503

namespace A204000

/-- `A204250(n+1)-A003984(n)` -/
def P12056380955659886503.Spec : Prop :=
  ∀ n, P12056380955659886503.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P6669064151985304162

`A203998(n+1)-A049581(n)`
-/

namespace A204000.P6669064151985304162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203998 (n + 1) - A049581 n

end

end A204000.P6669064151985304162

namespace A204000

/-- `A203998(n+1)-A049581(n)` -/
def P6669064151985304162.Spec : Prop :=
  ∀ n, P6669064151985304162.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P2889330811441511957

`A185908(n+1)+A094053(n+1)`
-/

namespace A204000.P2889330811441511957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185908 (n + 1) + A094053 (n + 1)

end

end A204000.P2889330811441511957

namespace A204000

/-- `A185908(n+1)+A094053(n+1)` -/
def P2889330811441511957.Spec : Prop :=
  ∀ n, P2889330811441511957.a n = A204000 (n + 1)

theorem P2889330811441511957.correct : P2889330811441511957.Spec := by
  intro n
  simp only [A204000, Nat.add_sub_cancel, A204000.P2889330811441511957.a, A204000.P8902930415265516511.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A203996, A203996.P4927933465799713350.a, A002260, A002260.P769748059679640451.a, A036561, A036561.P7490084913005378529.a, A114327, A114327.P9028308961649463264.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204000

/-! ## A204000.P14430161428231322005

`A204006(n+1)+A077028(n)-1`
-/

namespace A204000.P14430161428231322005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) + (A077028 n - 1)

end

end A204000.P14430161428231322005

namespace A204000

/-- `A204006(n+1)+A077028(n)-1` -/
def P14430161428231322005.Spec : Prop :=
  ∀ n, P14430161428231322005.a n = A204000 (n + 1)

theorem P14430161428231322005.correct : P14430161428231322005.Spec := by
  intro n
  simp only [A204000, Nat.add_sub_cancel, A204000.P14430161428231322005.a, A204000.P8902930415265516511.a, A077028, A077028.P11682596430163569480.a, A203996, A203996.P4927933465799713350.a, A204006, A204006.P4882152759025976317.a, A004247, A004247.P14233945955703425283.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A204002, A204002.P9170286212412624765.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A036561, A036561.P7490084913005378529.a, A114327, A114327.P9028308961649463264.a, A176270, A176270.P12132002411983152534.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204000

/-! ## A204000.P1440935225117248446

`A204002(n+1)-(A176270(n)+1)`
-/

namespace A204000.P1440935225117248446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204002 (n + 1) - (A176270 n + 1)

end

end A204000.P1440935225117248446

namespace A204000

/-- `A204002(n+1)-(A176270(n)+1)` -/
def P1440935225117248446.Spec : Prop :=
  ∀ n, P1440935225117248446.a n = A204000 (n + 1)

theorem P1440935225117248446.correct : P1440935225117248446.Spec := by
  intro n
  simp only [A204000, Nat.add_sub_cancel, A204000.P1440935225117248446.a, A204000.P8902930415265516511.a, A176270, A176270.P12132002411983152534.a, A203996, A203996.P4927933465799713350.a, A204002, A204002.P9170286212412624765.a, A077028, A077028.P11682596430163569480.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A002260, A002260.P769748059679640451.a, A004247, A004247.P14233945955703425283.a, A036561, A036561.P7490084913005378529.a, A114327, A114327.P9028308961649463264.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204000

/-! ## A204000.P4189100130593746244

`A003983(n+1)+A003991(n+1)-1`
-/

namespace A204000.P4189100130593746244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A003991 (n + 1) - 1)

end

end A204000.P4189100130593746244

namespace A204000

/-- `A003983(n+1)+A003991(n+1)-1` -/
def P4189100130593746244.Spec : Prop :=
  ∀ n, P4189100130593746244.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P5061333158382746668

`A203994(n+1)+A203998(n+1)-1`
-/

namespace A204000.P5061333158382746668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) + (A203998 (n + 1) - 1)

end

end A204000.P5061333158382746668

namespace A204000

/-- `A203994(n+1)+A203998(n+1)-1` -/
def P5061333158382746668.Spec : Prop :=
  ∀ n, P5061333158382746668.a n = A204000 (n + 1)

theorem P5061333158382746668.correct : P5061333158382746668.Spec := by
  intro n
  simp only [A204000, Nat.add_sub_cancel, A204000.P5061333158382746668.a, A204000.P8902930415265516511.a, A203994, A203994.P3590551673523168265.a, A203996, A203996.P4927933465799713350.a, A203998, A203998.P4307443962499752240.a, A024000, A024000.P8748414335487061084.a, A049581, A049581.P658114607470364396.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A002260, A002260.P769748059679640451.a, A020985, A020985.P937884151096334327.a, A036561, A036561.P7490084913005378529.a, A114327, A114327.P9028308961649463264.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A014081, A014081.P14878370479040452879.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204000

/-! ## A204000.P18349733869288928478

`A003056(n)+A077028(n)+A004197(n)`
-/

namespace A204000.P18349733869288928478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A077028 n + A004197 n)

end

end A204000.P18349733869288928478

namespace A204000

/-- `A003056(n)+A077028(n)+A004197(n)` -/
def P18349733869288928478.Spec : Prop :=
  ∀ n, P18349733869288928478.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P8264165425168136007

`A003991(n+1)+A003056(n)-A003984(n)`
-/

namespace A204000.P8264165425168136007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A003056 n - A003984 n)

end

end A204000.P8264165425168136007

namespace A204000

/-- `A003991(n+1)+A003056(n)-A003984(n)` -/
def P8264165425168136007.Spec : Prop :=
  ∀ n, P8264165425168136007.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P2236846021036082014

`A004197(n)+A003983(n+1)*A051125(n+1)`
-/

namespace A204000.P2236846021036082014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + A003983 (n + 1) * A051125 (n + 1)

end

end A204000.P2236846021036082014

namespace A204000

/-- `A004197(n)+A003983(n+1)*A051125(n+1)` -/
def P2236846021036082014.Spec : Prop :=
  ∀ n, P2236846021036082014.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P10233159867077515862

`A059036(A182834(n+1))`
-/

namespace A204000.P10233159867077515862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 (A182834 (n + 1)).toNat

end

end A204000.P10233159867077515862

namespace A204000

/-- `A059036(A182834(n+1))` -/
def P10233159867077515862.Spec : Prop :=
  ∀ n, P10233159867077515862.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P15532351521908748007

`A059036(A183572(n+1))`
-/

namespace A204000.P15532351521908748007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 (A183572 (n + 1)).toNat

end

end A204000.P15532351521908748007

namespace A204000

/-- `A059036(A183572(n+1))` -/
def P15532351521908748007.Spec : Prop :=
  ∀ n, P15532351521908748007.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P10814013585395531279

`A003991(n+1)+A001222(A152714(n))`
-/

namespace A204000.P10814013585395531279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A001222 (A152714 n).toNat

end

end A204000.P10814013585395531279

namespace A204000

/-- `A003991(n+1)+A001222(A152714(n))` -/
def P10814013585395531279.Spec : Prop :=
  ∀ n, P10814013585395531279.a n = A204000 (n + 1)

end A204000

/-! ## A204000.P11911850892064221070

`A072828(n+1)%A203996(n+1)`
-/

namespace A204000.P11911850892064221070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A203996 (n + 1))

end

end A204000.P11911850892064221070

namespace A204000

/-- `A072828(n+1)%A203996(n+1)` -/
def P11911850892064221070.Spec : Prop :=
  ∀ n, P11911850892064221070.a n = A204000 (n + 1)

end A204000

/-!
# A204002: Symmetric matrix based on f(i,j)=min{2i+j,i+2j}, by antidiagonals.

The programs for A204002, the canonical program `A204002.P9170286212412624765` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204002 has offset 1).

The definition of A204002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204002.P4437918873605425330

`A204006(n+1)+2`
-/

namespace A204002.P4437918873605425330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) + 2

end

end A204002.P4437918873605425330

namespace A204002

/-- `A204006(n+1)+2` -/
def P4437918873605425330.Spec : Prop :=
  ∀ n, P4437918873605425330.a n = A204002 (n + 1)

theorem P4437918873605425330.correct : P4437918873605425330.Spec := by
  intro n
  simp only [A204002, Nat.add_sub_cancel, A204002.P4437918873605425330.a, A204002.P9170286212412624765.a, A176270, A176270.P12132002411983152534.a, A203996, A203996.P4927933465799713350.a, A204006, A204006.P4882152759025976317.a, A077028, A077028.P11682596430163569480.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A002260, A002260.P769748059679640451.a, A004247, A004247.P14233945955703425283.a, A036561, A036561.P7490084913005378529.a, A114327, A114327.P9028308961649463264.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204002

/-! ## A204002.P15385560577364318047

`∑[char[∑[n]]]+A004197(n)+2`
-/

namespace A204002.P15385560577364318047
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A004197 n + 2)

end

end A204002.P15385560577364318047

namespace A204002

/-- `∑[char[∑[n]]]+A004197(n)+2` -/
def P15385560577364318047.Spec : Prop :=
  ∀ n, P15385560577364318047.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P13023100354027718919

`A003983(n+1)+comp[∑[n]]-n`
-/

namespace A204002.P13023100354027718919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A204002.P13023100354027718919

namespace A204002

/-- `A003983(n+1)+comp[∑[n]]-n` -/
def P13023100354027718919.Spec : Prop :=
  ∀ n, P13023100354027718919.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P9360136556127170167

`A009056(A204006(n+1))`
-/

namespace A204002.P9360136556127170167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A204006 (n + 1)).toNat

end

end A204002.P9360136556127170167

namespace A204002

/-- `A009056(A204006(n+1))` -/
def P9360136556127170167.Spec : Prop :=
  ∀ n, P9360136556127170167.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P9616612528985986198

`A133196(n+1)+A004197(n)`
-/

namespace A204002.P9616612528985986198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (n + 1) + A004197 n

end

end A204002.P9616612528985986198

namespace A204002

/-- `A133196(n+1)+A004197(n)` -/
def P9616612528985986198.Spec : Prop :=
  ∀ n, P9616612528985986198.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P9170286212412624765

`A203996(n+1)+A176270(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A204002

/-- `A203996(n+1)+A176270(n)` -/
def P9170286212412624765.Spec : Prop :=
  ∀ n, P9170286212412624765.a n = A204002 (n + 1)

theorem P9170286212412624765.correct : P9170286212412624765.Spec := by
  intro n
  simp only [A204002, Nat.add_sub_cancel]

end A204002

/-! ## A204002.P13446175020099144222

`A131507(n)+2-A003984(n)`
-/

namespace A204002.P13446175020099144222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + (2 - A003984 n)

end

end A204002.P13446175020099144222

namespace A204002

/-- `A131507(n)+2-A003984(n)` -/
def P13446175020099144222.Spec : Prop :=
  ∀ n, P13446175020099144222.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P7949073051402283082

`A004197(n)+∑[A010054(n)]+2`
-/

namespace A204002.P7949073051402283082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204002.P7949073051402283082

namespace A204002

/-- `A004197(n)+∑[A010054(n)]+2` -/
def P7949073051402283082.Spec : Prop :=
  ∀ n, P7949073051402283082.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P8731663282368875073

`A157454(n+1)+A003984(n)+2`
-/

namespace A204002.P8731663282368875073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) + (A003984 n + 2)

end

end A204002.P8731663282368875073

namespace A204002

/-- `A157454(n+1)+A003984(n)+2` -/
def P8731663282368875073.Spec : Prop :=
  ∀ n, P8731663282368875073.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P7312299639782337702

`A185908(n+1)+A025581(n)+2`
-/

namespace A204002.P7312299639782337702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185908 (n + 1) + (A025581 n + 2)

end

end A204002.P7312299639782337702

namespace A204002

/-- `A185908(n+1)+A025581(n)+2` -/
def P7312299639782337702.Spec : Prop :=
  ∀ n, P7312299639782337702.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P16648776617106965060

`A204028(n+1)+A049581(n)+2`
-/

namespace A204002.P16648776617106965060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204028 (n + 1) + (A049581 n + 2)

end

end A204002.P16648776617106965060

namespace A204002

/-- `A204028(n+1)+A049581(n)+2` -/
def P16648776617106965060.Spec : Prop :=
  ∀ n, P16648776617106965060.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P478944806171092087

`A204012(n+1)+2-A004197(n)`
-/

namespace A204002.P478944806171092087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204012 (n + 1) + (2 - A004197 n)

end

end A204002.P478944806171092087

namespace A204002

/-- `A204012(n+1)+2-A004197(n)` -/
def P478944806171092087.Spec : Prop :=
  ∀ n, P478944806171092087.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P7438308579120784881

`A204000(n+1)+2-A004247(n)`
-/

namespace A204002.P7438308579120784881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204000 (n + 1) + (2 - A004247 n)

end

end A204002.P7438308579120784881

namespace A204002

/-- `A204000(n+1)+2-A004247(n)` -/
def P7438308579120784881.Spec : Prop :=
  ∀ n, P7438308579120784881.a n = A204002 (n + 1)

theorem P7438308579120784881.correct : P7438308579120784881.Spec := by
  intro n
  simp only [A204002, Nat.add_sub_cancel, A204002.P7438308579120784881.a, A204002.P9170286212412624765.a, A004247, A004247.P14233945955703425283.a, A176270, A176270.P12132002411983152534.a, A203996, A203996.P4927933465799713350.a, A204000, A204000.P8902930415265516511.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A077028, A077028.P11682596430163569480.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A036561, A036561.P7490084913005378529.a, A057944, A057944.P16851463738746886639.a, A114327, A114327.P9028308961649463264.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204002

/-! ## A204002.P15770098534152214324

`A204004(n+1)+2-A049581(n)`
-/

namespace A204002.P15770098534152214324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + (2 - A049581 n)

end

end A204002.P15770098534152214324

namespace A204002

/-- `A204004(n+1)+2-A049581(n)` -/
def P15770098534152214324.Spec : Prop :=
  ∀ n, P15770098534152214324.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P17652443240454431349

`A203996(n+1)+2-A077028(n)`
-/

namespace A204002.P17652443240454431349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) + (2 - A077028 n)

end

end A204002.P17652443240454431349

namespace A204002

/-- `A203996(n+1)+2-A077028(n)` -/
def P17652443240454431349.Spec : Prop :=
  ∀ n, P17652443240454431349.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P12197127863608010996

`A002024(n+1)+A003983(n+1)+1`
-/

namespace A204002.P12197127863608010996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A003983 (n + 1) + 1)

end

end A204002.P12197127863608010996

namespace A204002

/-- `A002024(n+1)+A003983(n+1)+1` -/
def P12197127863608010996.Spec : Prop :=
  ∀ n, P12197127863608010996.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P15853798969029615469

`A111650(n+1)+2-A051125(n+1)`
-/

namespace A204002.P15853798969029615469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (2 - A051125 (n + 1))

end

end A204002.P15853798969029615469

namespace A204002

/-- `A111650(n+1)+2-A051125(n+1)` -/
def P15853798969029615469.Spec : Prop :=
  ∀ n, P15853798969029615469.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P830373856648291690

`A051125(n+1)+2*A003983(n+1)`
-/

namespace A204002.P830373856648291690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + 2 * A003983 (n + 1)

end

end A204002.P830373856648291690

namespace A204002

/-- `A051125(n+1)+2*A003983(n+1)` -/
def P830373856648291690.Spec : Prop :=
  ∀ n, P830373856648291690.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P14295060005279054234

`2*A003057(n+2)-A051125(n+1)`
-/

namespace A204002.P14295060005279054234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003057 (n + 2) - A051125 (n + 1)

end

end A204002.P14295060005279054234

namespace A204002

/-- `2*A003057(n+2)-A051125(n+1)` -/
def P14295060005279054234.Spec : Prop :=
  ∀ n, P14295060005279054234.a n = A204002 (n + 1)

end A204002

/-! ## A204002.P2174821328700557606

`A049581(n)+A008585(A003983(n+1))`
-/

namespace A204002.P2174821328700557606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n + A008585 (A003983 (n + 1)).toNat

end

end A204002.P2174821328700557606

namespace A204002

/-- `A049581(n)+A008585(A003983(n+1))` -/
def P2174821328700557606.Spec : Prop :=
  ∀ n, P2174821328700557606.a n = A204002 (n + 1)

end A204002

/-!
# A204004: Symmetric matrix based on f(i,j) = max{2i+j-2,i+2j-2}, by antidiagonals.

The programs for A204004, the canonical program `A204004.P16766842814256869288` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204004 has offset 1).

The definition of A204004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204004.P11097719885712436665

`A003984(n)+∑[char[∑[n]]]`
-/

namespace A204004.P11097719885712436665
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204004.P11097719885712436665

namespace A204004

/-- `A003984(n)+∑[char[∑[n]]]` -/
def P11097719885712436665.Spec : Prop :=
  ∀ n, P11097719885712436665.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P15074079528761579750

`A051125(n+1)+∑[char[∑[n+1]]]`
-/

namespace A204004.P15074079528761579750
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204004.P15074079528761579750

namespace A204004

/-- `A051125(n+1)+∑[char[∑[n+1]]]` -/
def P15074079528761579750.Spec : Prop :=
  ∀ n, P15074079528761579750.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P8337714698689499336

`∑[2*char[∑[n]]]-A003983(n+1)`
-/

namespace A204004.P8337714698689499336
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A003983 (n + 1)

end

end A204004.P8337714698689499336

namespace A204004

/-- `∑[2*char[∑[n]]]-A003983(n+1)` -/
def P8337714698689499336.Spec : Prop :=
  ∀ n, P8337714698689499336.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P14043379043788322000

`A131507(n)-A004197(n)`
-/

namespace A204004.P14043379043788322000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A004197 n

end

end A204004.P14043379043788322000

namespace A204004

/-- `A131507(n)-A004197(n)` -/
def P14043379043788322000.Spec : Prop :=
  ∀ n, P14043379043788322000.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P12205583388235648176

`A003056(n)+A003984(n)+1`
-/

namespace A204004.P12205583388235648176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A003984 n + 1)

end

end A204004.P12205583388235648176

namespace A204004

/-- `A003056(n)+A003984(n)+1` -/
def P12205583388235648176.Spec : Prop :=
  ∀ n, P12205583388235648176.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P6863580582538992273

`A204022(n+1)+A004197(n)`
-/

namespace A204004.P6863580582538992273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + A004197 n

end

end A204004.P6863580582538992273

namespace A204004

/-- `A204022(n+1)+A004197(n)` -/
def P6863580582538992273.Spec : Prop :=
  ∀ n, P6863580582538992273.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P17056881012794848479

`A204006(n+1)+A049581(n)`
-/

namespace A204004.P17056881012794848479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) + A049581 n

end

end A204004.P17056881012794848479

namespace A204004

/-- `A204006(n+1)+A049581(n)` -/
def P17056881012794848479.Spec : Prop :=
  ∀ n, P17056881012794848479.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P9241489537926008864

`A204008(n+1)-A003984(n)`
-/

namespace A204004.P9241489537926008864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (n + 1) - A003984 n

end

end A204004.P9241489537926008864

namespace A204004

/-- `A204008(n+1)-A003984(n)` -/
def P9241489537926008864.Spec : Prop :=
  ∀ n, P9241489537926008864.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P16766842814256869288

`A203998(n+1)-A004247(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A204004

/-- `A203998(n+1)-A004247(n)` -/
def P16766842814256869288.Spec : Prop :=
  ∀ n, P16766842814256869288.a n = A204004 (n + 1)

theorem P16766842814256869288.correct : P16766842814256869288.Spec := by
  intro n
  simp only [A204004, Nat.add_sub_cancel]

end A204004

/-! ## A204004.P14208629220017920261

`A003057(n+2)+A003984(n)-1`
-/

namespace A204004.P14208629220017920261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + (A003984 n - 1)

end

end A204004.P14208629220017920261

namespace A204004

/-- `A003057(n+2)+A003984(n)-1` -/
def P14208629220017920261.Spec : Prop :=
  ∀ n, P14208629220017920261.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P6388858352031960633

`A003983(n+1)+2*A003984(n)`
-/

namespace A204004.P6388858352031960633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + 2 * A003984 n

end

end A204004.P6388858352031960633

namespace A204004

/-- `A003983(n+1)+2*A003984(n)` -/
def P6388858352031960633.Spec : Prop :=
  ∀ n, P6388858352031960633.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P6575492032326589016

`A204154(n+1)+2*A004197(n)`
-/

namespace A204004.P6575492032326589016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + 2 * A004197 n

end

end A204004.P6575492032326589016

namespace A204004

/-- `A204154(n+1)+2*A004197(n)` -/
def P6575492032326589016.Spec : Prop :=
  ∀ n, P6575492032326589016.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P757335418096150261

`A204028(n+1)+2*A049581(n)`
-/

namespace A204004.P757335418096150261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204028 (n + 1) + 2 * A049581 n

end

end A204004.P757335418096150261

namespace A204004

/-- `A204028(n+1)+2*A049581(n)` -/
def P757335418096150261.Spec : Prop :=
  ∀ n, P757335418096150261.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P4773790997465546736

`A003983(n+1)+A204022(n+1)-1`
-/

namespace A204004.P4773790997465546736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A204022 (n + 1) - 1)

end

end A204004.P4773790997465546736

namespace A204004

/-- `A003983(n+1)+A204022(n+1)-1` -/
def P4773790997465546736.Spec : Prop :=
  ∀ n, P4773790997465546736.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P8258611110403586613

`(A204008(n+1)+A002024(n+1))/2`
-/

namespace A204004.P8258611110403586613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204008 (n + 1) + A002024 (n + 1) : ℚ) / 2

end

end A204004.P8258611110403586613

namespace A204004

/-- `(A204008(n+1)+A002024(n+1))/2` -/
def P8258611110403586613.Spec : Prop :=
  ∀ n, P8258611110403586613.a n = (A204004 (n + 1) : ℚ)

end A204004

/-! ## A204004.P13814426407725606443

`A005408(A003984(n))+A004197(n)`
-/

namespace A204004.P13814426407725606443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003984 n).toNat + A004197 n

end

end A204004.P13814426407725606443

namespace A204004

/-- `A005408(A003984(n))+A004197(n)` -/
def P13814426407725606443.Spec : Prop :=
  ∀ n, P13814426407725606443.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P1655822786947415959

`A005408(A003056(n))-A004197(n)`
-/

namespace A204004.P1655822786947415959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003056 n).toNat - A004197 n

end

end A204004.P1655822786947415959

namespace A204004

/-- `A005408(A003056(n))-A004197(n)` -/
def P1655822786947415959.Spec : Prop :=
  ∀ n, P1655822786947415959.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P3937458388214467995

`A003983(n+1)+A049581(n)+A003056(n)`
-/

namespace A204004.P3937458388214467995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A049581 n + A003056 n)

end

end A204004.P3937458388214467995

namespace A204004

/-- `A003983(n+1)+A049581(n)+A003056(n)` -/
def P3937458388214467995.Spec : Prop :=
  ∀ n, P3937458388214467995.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P15174206953261490180

`A003991(n+1)+A003984(n)-A004247(n)`
-/

namespace A204004.P15174206953261490180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A003984 n - A004247 n)

end

end A204004.P15174206953261490180

namespace A204004

/-- `A003991(n+1)+A003984(n)-A004247(n)` -/
def P15174206953261490180.Spec : Prop :=
  ∀ n, P15174206953261490180.a n = A204004 (n + 1)

end A204004

/-! ## A204004.P779477313371110859

`A111650(n+1)+A004197(n)-A157454(n+1)`
-/

namespace A204004.P779477313371110859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (A004197 n - A157454 (n + 1))

end

end A204004.P779477313371110859

namespace A204004

/-- `A111650(n+1)+A004197(n)-A157454(n+1)` -/
def P779477313371110859.Spec : Prop :=
  ∀ n, P779477313371110859.a n = A204004 (n + 1)

end A204004

/-!
# A204006: Symmetric matrix based on f(i,j) = min{2i+j-2,i+2j-2}, by antidiagonals.

The programs for A204006, the canonical program `A204006.P4882152759025976317` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204006 has offset 1).

The definition of A204006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204006.P4882152759025976317

`A204002(n+1)-2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A204006

/-- `A204002(n+1)-2` -/
def P4882152759025976317.Spec : Prop :=
  ∀ n, P4882152759025976317.a n = A204006 (n + 1)

theorem P4882152759025976317.correct : P4882152759025976317.Spec := by
  intro n
  simp only [A204006, Nat.add_sub_cancel]

end A204006

/-! ## A204006.P14988521934065075973

`A004197(n)+∑[char[∑[n]]]`
-/

namespace A204006.P14988521934065075973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204006.P14988521934065075973

namespace A204006

/-- `A004197(n)+∑[char[∑[n]]]` -/
def P14988521934065075973.Spec : Prop :=
  ∀ n, P14988521934065075973.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P2293831357437565625

`A003983(n+1)+∑[char[∑[n+1]]]`
-/

namespace A204006.P2293831357437565625
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204006.P2293831357437565625

namespace A204006

/-- `A003983(n+1)+∑[char[∑[n+1]]]` -/
def P2293831357437565625.Spec : Prop :=
  ∀ n, P2293831357437565625.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P5036555423331317478

`round(sqrt(2*n+1))+val(A036561(n), 6)`
-/

namespace A204006.P5036555423331317478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) + (SequenceMachineLib.valuation (A036561 n).toNat 6 : ℤ)

end

end A204006.P5036555423331317478

namespace A204006

/-- `round(sqrt(2*n+1))+val(A036561(n), 6)` -/
def P5036555423331317478.Spec : Prop :=
  ∀ n, P5036555423331317478.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P17542899360090403744

`A023444(A204002(n+1))`
-/

namespace A204006.P17542899360090403744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A204002 (n + 1)).toNat

end

end A204006.P17542899360090403744

namespace A204006

/-- `A023444(A204002(n+1))` -/
def P17542899360090403744.Spec : Prop :=
  ∀ n, P17542899360090403744.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P1646850455249593764

`A131507(n)-A003984(n)`
-/

namespace A204006.P1646850455249593764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A003984 n

end

end A204006.P1646850455249593764

namespace A204006

/-- `A131507(n)-A003984(n)` -/
def P1646850455249593764.Spec : Prop :=
  ∀ n, P1646850455249593764.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P16238692627098622149

`A003056(n)+A004197(n)+1`
-/

namespace A204006.P16238692627098622149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A004197 n + 1)

end

end A204006.P16238692627098622149

namespace A204006

/-- `A003056(n)+A004197(n)+1` -/
def P16238692627098622149.Spec : Prop :=
  ∀ n, P16238692627098622149.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P11882891774065680720

`A157454(n+1)+A003984(n)`
-/

namespace A204006.P11882891774065680720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) + A003984 n

end

end A204006.P11882891774065680720

namespace A204006

/-- `A157454(n+1)+A003984(n)` -/
def P11882891774065680720.Spec : Prop :=
  ∀ n, P11882891774065680720.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P16920007334754603506

`A185908(n+1)+A025581(n)`
-/

namespace A204006.P16920007334754603506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185908 (n + 1) + A025581 n

end

end A204006.P16920007334754603506

namespace A204006

/-- `A185908(n+1)+A025581(n)` -/
def P16920007334754603506.Spec : Prop :=
  ∀ n, P16920007334754603506.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P6972897882541595456

`A204028(n+1)+A049581(n)`
-/

namespace A204006.P6972897882541595456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204028 (n + 1) + A049581 n

end

end A204006.P6972897882541595456

namespace A204006

/-- `A204028(n+1)+A049581(n)` -/
def P6972897882541595456.Spec : Prop :=
  ∀ n, P6972897882541595456.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P13379515326612381690

`A204012(n+1)-A004197(n)`
-/

namespace A204006.P13379515326612381690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204012 (n + 1) - A004197 n

end

end A204006.P13379515326612381690

namespace A204006

/-- `A204012(n+1)-A004197(n)` -/
def P13379515326612381690.Spec : Prop :=
  ∀ n, P13379515326612381690.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P1771974779810245156

`A204000(n+1)-A004247(n)`
-/

namespace A204006.P1771974779810245156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204000 (n + 1) - A004247 n

end

end A204006.P1771974779810245156

namespace A204006

/-- `A204000(n+1)-A004247(n)` -/
def P1771974779810245156.Spec : Prop :=
  ∀ n, P1771974779810245156.a n = A204006 (n + 1)

theorem P1771974779810245156.correct : P1771974779810245156.Spec := by
  intro n
  simp only [A204006, Nat.add_sub_cancel, A204006.P1771974779810245156.a, A204006.P4882152759025976317.a, A004247, A004247.P14233945955703425283.a, A204000, A204000.P8902930415265516511.a, A204002, A204002.P9170286212412624765.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A176270, A176270.P12132002411983152534.a, A203996, A203996.P4927933465799713350.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A077028, A077028.P11682596430163569480.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A036561, A036561.P7490084913005378529.a, A114327, A114327.P9028308961649463264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204006

/-! ## A204006.P1233195680658290509

`A204004(n+1)-A049581(n)`
-/

namespace A204006.P1233195680658290509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) - A049581 n

end

end A204006.P1233195680658290509

namespace A204006

/-- `A204004(n+1)-A049581(n)` -/
def P1233195680658290509.Spec : Prop :=
  ∀ n, P1233195680658290509.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P3853877158355923269

`A203996(n+1)-A077028(n)`
-/

namespace A204006.P3853877158355923269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) - A077028 n

end

end A204006.P3853877158355923269

namespace A204006

/-- `A203996(n+1)-A077028(n)` -/
def P3853877158355923269.Spec : Prop :=
  ∀ n, P3853877158355923269.a n = A204006 (n + 1)

theorem P3853877158355923269.correct : P3853877158355923269.Spec := by
  intro n
  simp only [A204006, Nat.add_sub_cancel, A204006.P3853877158355923269.a, A204006.P4882152759025976317.a, A077028, A077028.P11682596430163569480.a, A203996, A203996.P4927933465799713350.a, A204002, A204002.P9170286212412624765.a, A004247, A004247.P14233945955703425283.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A176270, A176270.P12132002411983152534.a, A185908, A185908.P15290961818141262910.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A036561, A036561.P7490084913005378529.a, A114327, A114327.P9028308961649463264.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204006

/-! ## A204006.P10188474271098180681

`A111650(n+1)-A051125(n+1)`
-/

namespace A204006.P10188474271098180681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A051125 (n + 1)

end

end A204006.P10188474271098180681

namespace A204006

/-- `A111650(n+1)-A051125(n+1)` -/
def P10188474271098180681.Spec : Prop :=
  ∀ n, P10188474271098180681.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P6023668329832927671

`A133196(n+1)+A004197(n)-2`
-/

namespace A204006.P6023668329832927671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (n + 1) + (A004197 n - 2)

end

end A204006.P6023668329832927671

namespace A204006

/-- `A133196(n+1)+A004197(n)-2` -/
def P6023668329832927671.Spec : Prop :=
  ∀ n, P6023668329832927671.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P7101892533736955059

`A203996(n+1)+A176270(n)-2`
-/

namespace A204006.P7101892533736955059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) + (A176270 n - 2)

end

end A204006.P7101892533736955059

namespace A204006

/-- `A203996(n+1)+A176270(n)-2` -/
def P7101892533736955059.Spec : Prop :=
  ∀ n, P7101892533736955059.a n = A204006 (n + 1)

theorem P7101892533736955059.correct : P7101892533736955059.Spec := by
  intro n
  simp only [A204006, Nat.add_sub_cancel, A204006.P7101892533736955059.a, A204006.P4882152759025976317.a, A176270, A176270.P12132002411983152534.a, A203996, A203996.P4927933465799713350.a, A204002, A204002.P9170286212412624765.a, A077028, A077028.P11682596430163569480.a, A094053, A094053.P13142433605233752903.f1, A094053.P13142433605233752903.a, A185908, A185908.P15290961818141262910.a, A002260, A002260.P769748059679640451.a, A004247, A004247.P14233945955703425283.a, A036561, A036561.P7490084913005378529.a, A114327, A114327.P9028308961649463264.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204006

/-! ## A204006.P2595824293423200875

`A051125(n+1)+2*A004197(n)`
-/

namespace A204006.P2595824293423200875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + 2 * A004197 n

end

end A204006.P2595824293423200875

namespace A204006

/-- `A051125(n+1)+2*A004197(n)` -/
def P2595824293423200875.Spec : Prop :=
  ∀ n, P2595824293423200875.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P15307941126697679668

`A003056(n)+val(A036561(n), 6)+1`
-/

namespace A204006.P15307941126697679668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1 : ℤ)

end

end A204006.P15307941126697679668

namespace A204006

/-- `A003056(n)+val(A036561(n), 6)+1` -/
def P15307941126697679668.Spec : Prop :=
  ∀ n, P15307941126697679668.a n = A204006 (n + 1)

end A204006

/-! ## A204006.P9724999970593522527

`A007401(n+1)+A004197(n)-n`
-/

namespace A204006.P9724999970593522527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) + (A004197 n - (n : ℤ))

end

end A204006.P9724999970593522527

namespace A204006

/-- `A007401(n+1)+A004197(n)-n` -/
def P9724999970593522527.Spec : Prop :=
  ∀ n, P9724999970593522527.a n = A204006 (n + 1)

end A204006

/-!
# A204008: Symmetric matrix based on f(i,j) = max{3i+j-3,i+3j-3}, by antidiagonals.

The programs for A204008, the canonical program `A204008.P190403554516119161` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204008 has offset 1).

The definition of A204008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204008.P190403554516119161

`A131507(n)+A049581(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A204008

/-- `A131507(n)+A049581(n)` -/
def P190403554516119161.Spec : Prop :=
  ∀ n, P190403554516119161.a n = A204008 (n + 1)

theorem P190403554516119161.correct : P190403554516119161.Spec := by
  intro n
  simp only [A204008, Nat.add_sub_cancel]

end A204008

/-! ## A204008.P9560132079609798306

`A279891(n)+A143182(n)`
-/

namespace A204008.P9560132079609798306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A143182 n

end

end A204008.P9560132079609798306

namespace A204008

/-- `A279891(n)+A143182(n)` -/
def P9560132079609798306.Spec : Prop :=
  ∀ n, P9560132079609798306.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P14189694828656647015

`A204022(n+1)+A003056(n)`
-/

namespace A204008.P14189694828656647015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + A003056 n

end

end A204008.P14189694828656647015

namespace A204008

/-- `A204022(n+1)+A003056(n)` -/
def P14189694828656647015.Spec : Prop :=
  ∀ n, P14189694828656647015.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P8795338793746048382

`A204004(n+1)+A003984(n)`
-/

namespace A204008.P8795338793746048382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + A003984 n

end

end A204008.P8795338793746048382

namespace A204008

/-- `A204004(n+1)+A003984(n)` -/
def P8795338793746048382.Spec : Prop :=
  ∀ n, P8795338793746048382.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P11961217152212787205

`A143182(n)+2*A003056(n)`
-/

namespace A204008.P11961217152212787205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n + 2 * A003056 n

end

end A204008.P11961217152212787205

namespace A204008

/-- `A143182(n)+2*A003056(n)` -/
def P11961217152212787205.Spec : Prop :=
  ∀ n, P11961217152212787205.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P6912952148792975077

`∑[A010054(n)]+2*A003984(n)`
-/

namespace A204008.P6912952148792975077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A003984 n

end

end A204008.P6912952148792975077

namespace A204008

/-- `∑[A010054(n)]+2*A003984(n)` -/
def P6912952148792975077.Spec : Prop :=
  ∀ n, P6912952148792975077.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P8055643577088427079

`A111650(n+1)-A203994(n+1)`
-/

namespace A204008.P8055643577088427079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A203994 (n + 1)

end

end A204008.P8055643577088427079

namespace A204008

/-- `A111650(n+1)-A203994(n+1)` -/
def P8055643577088427079.Spec : Prop :=
  ∀ n, P8055643577088427079.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P3233442823511153877

`A111650(n+1)+A143182(n)-2`
-/

namespace A204008.P3233442823511153877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (A143182 n - 2)

end

end A204008.P3233442823511153877

namespace A204008

/-- `A111650(n+1)+A143182(n)-2` -/
def P3233442823511153877.Spec : Prop :=
  ∀ n, P3233442823511153877.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P12054843699053950684

`A279891(n)+2-A203994(n+1)`
-/

namespace A204008.P12054843699053950684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + (2 - A203994 (n + 1))

end

end A204008.P12054843699053950684

namespace A204008

/-- `A279891(n)+2-A203994(n+1)` -/
def P12054843699053950684.Spec : Prop :=
  ∀ n, P12054843699053950684.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P16530318050399909351

`A002024(n+1)+2*A003984(n)`
-/

namespace A204008.P16530318050399909351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + 2 * A003984 n

end

end A204008.P16530318050399909351

namespace A204008

/-- `A002024(n+1)+2*A003984(n)` -/
def P16530318050399909351.Spec : Prop :=
  ∀ n, P16530318050399909351.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P15231985782021471924

`2*A003056(n)+A049581(n)+1`
-/

namespace A204008.P15231985782021471924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003056 n + (A049581 n + 1)

end

end A204008.P15231985782021471924

namespace A204008

/-- `2*A003056(n)+A049581(n)+1` -/
def P15231985782021471924.Spec : Prop :=
  ∀ n, P15231985782021471924.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P426174924429462350

`A204156(n+1)+2*A004197(n)`
-/

namespace A204008.P426174924429462350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204156 (n + 1) + 2 * A004197 n

end

end A204008.P426174924429462350

namespace A204008

/-- `A204156(n+1)+2*A004197(n)` -/
def P426174924429462350.Spec : Prop :=
  ∀ n, P426174924429462350.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P12090562505998719971

`2*A131507(n)-A204012(n+1)`
-/

namespace A204008.P12090562505998719971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131507 n - A204012 (n + 1)

end

end A204008.P12090562505998719971

namespace A204008

/-- `2*A131507(n)-A204012(n+1)` -/
def P12090562505998719971.Spec : Prop :=
  ∀ n, P12090562505998719971.a n = A204008 (n + 1)

theorem P12090562505998719971.correct : P12090562505998719971.Spec := by
  intro n
  simp only [A204008, Nat.add_sub_cancel, A204008.P12090562505998719971.a, A204008.P190403554516119161.a, A049581, A049581.P658114607470364396.a, A131507, A131507.P15949945766004013839.a, A204012, A204012.P8035036335366724817.a, A020985, A020985.P937884151096334327.a, A114327, A114327.P9028308961649463264.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A014081, A014081.P14878370479040452879.a, A000120, A000120.P2816527436160941581.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A069010, A069010.P14932719103722593844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204008

/-! ## A204008.P17063122842483208831

`2*A204022(n+1)-A143182(n)`
-/

namespace A204008.P17063122842483208831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204022 (n + 1) - A143182 n

end

end A204008.P17063122842483208831

namespace A204008

/-- `2*A204022(n+1)-A143182(n)` -/
def P17063122842483208831.Spec : Prop :=
  ∀ n, P17063122842483208831.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P7170459856491220616

`A002024(n+1)+A204022(n+1)-1`
-/

namespace A204008.P7170459856491220616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A204022 (n + 1) - 1)

end

end A204008.P7170459856491220616

namespace A204008

/-- `A002024(n+1)+A204022(n+1)-1` -/
def P7170459856491220616.Spec : Prop :=
  ∀ n, P7170459856491220616.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P9552731957363640832

`A204022(n+1)+A003057(n+2)-2`
-/

namespace A204008.P9552731957363640832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + (A003057 (n + 2) - 2)

end

end A204008.P9552731957363640832

namespace A204008

/-- `A204022(n+1)+A003057(n+2)-2` -/
def P9552731957363640832.Spec : Prop :=
  ∀ n, P9552731957363640832.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P14997356860314995551

`2*A204004(n+1)-A002024(n+1)`
-/

namespace A204008.P14997356860314995551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204004 (n + 1) - A002024 (n + 1)

end

end A204008.P14997356860314995551

namespace A204008

/-- `2*A204004(n+1)-A002024(n+1)` -/
def P14997356860314995551.Spec : Prop :=
  ∀ n, P14997356860314995551.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P12722089234760146072

`A005408(2*A003984(n))-A049581(n)`
-/

namespace A204008.P12722089234760146072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A003984 n).toNat - A049581 n

end

end A204008.P12722089234760146072

namespace A204008

/-- `A005408(2*A003984(n))-A049581(n)` -/
def P12722089234760146072.Spec : Prop :=
  ∀ n, P12722089234760146072.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P3486790473704691457

`A051125(n+1)+A003984(n)+A003056(n)`
-/

namespace A204008.P3486790473704691457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + (A003984 n + A003056 n)

end

end A204008.P3486790473704691457

namespace A204008

/-- `A051125(n+1)+A003984(n)+A003056(n)` -/
def P3486790473704691457.Spec : Prop :=
  ∀ n, P3486790473704691457.a n = A204008 (n + 1)

end A204008

/-! ## A204008.P4986272438381705918

`A049581(n)+A204012(n+1)+A049581(n)`
-/

namespace A204008.P4986272438381705918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n + (A204012 (n + 1) + A049581 n)

end

end A204008.P4986272438381705918

namespace A204008

/-- `A049581(n)+A204012(n+1)+A049581(n)` -/
def P4986272438381705918.Spec : Prop :=
  ∀ n, P4986272438381705918.a n = A204008 (n + 1)

theorem P4986272438381705918.correct : P4986272438381705918.Spec := by
  intro n
  simp only [A204008, Nat.add_sub_cancel, A204008.P4986272438381705918.a, A204008.P190403554516119161.a, A049581, A049581.P658114607470364396.a, A131507, A131507.P15949945766004013839.a, A204012, A204012.P8035036335366724817.a, A020985, A020985.P937884151096334327.a, A114327, A114327.P9028308961649463264.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A014081, A014081.P14878370479040452879.a, A000120, A000120.P2816527436160941581.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A069010, A069010.P14932719103722593844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204008

/-!
# A204009: a(n) is a binary vector for selecting distinct terms from A000124 that when summed give n; it uses the greedy algorithm.

The programs for A204009, there is no canonical definition to state claims against.
-/

/-! ## A204009.P9572921859095210401

`A007088(record[and(n, A103529(n+1))])`
-/

namespace A204009.P9572921859095210401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A103529 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A204009.P9572921859095210401

/-! ## A204009.P16611278604634998658

`A136808(∑[A139039(A130534(n))])`
-/

namespace A204009.P16611278604634998658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139039 (A130534 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136808 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204009.P16611278604634998658

/-! ## A204009.P12862788161898083060

`A007088(lt[A274473(n), A304713(2*n+5)])`
-/

namespace A204009.P12862788161898083060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274473 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204009.P12862788161898083060

/-! ## A204009.P15505464170673924721

`A007088(lt[A000045(n), A120858(n+4)])`
-/

namespace A204009.P15505464170673924721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120858 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204009.P15505464170673924721

/-!
# A204010: Expansion of f(-x^12) * phi(-x) in powers of x where f(), phi() are Ramanujan theta functions.

The programs for A204010, there is no canonical definition to state claims against.
-/

/-! ## A204010.P2550389553396232097

`A131713(n)*A226350(n)`
-/

namespace A204010.P2550389553396232097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A226350 n

end

end A204010.P2550389553396232097

/-! ## A204010.P5561566324032977061

`Δ[A004499(n)]*A226350(n)`
-/

namespace A204010.P5561566324032977061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A226350 n

end

end A204010.P5561566324032977061

/-! ## A204010.P17686091509600221404

`Δ[A117966(n)]*A226350(n)`
-/

namespace A204010.P17686091509600221404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A226350 n

end

end A204010.P17686091509600221404

/-! ## A204010.P17549764345592173830

`Δ[A130508(n+1)]*A226350(n)`
-/

namespace A204010.P17549764345592173830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A226350 n

end

end A204010.P17549764345592173830

/-! ## A204010.P17427932640391592922

`A101675(2*n)*A226350(n)`
-/

namespace A204010.P17427932640391592922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (2 * n) * A226350 n

end

end A204010.P17427932640391592922

/-! ## A204010.P14197158929493558038

`A100051(2*n+1)*A226350(n)`
-/

namespace A204010.P14197158929493558038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (2 * n + 1) * A226350 n

end

end A204010.P14197158929493558038

/-!
# A204012: Symmetric matrix based on f(i,j)=min{3i+j-3,i+3j-3}, by antidiagonals.

The programs for A204012, the canonical program `A204012.P8035036335366724817` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204012 has offset 1).

The definition of A204012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204012.P8035036335366724817

`A131507(n)-A049581(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A204012

/-- `A131507(n)-A049581(n)` -/
def P8035036335366724817.Spec : Prop :=
  ∀ n, P8035036335366724817.a n = A204012 (n + 1)

theorem P8035036335366724817.correct : P8035036335366724817.Spec := by
  intro n
  simp only [A204012, Nat.add_sub_cancel]

end A204012

/-! ## A204012.P2341511771643313007

`A157454(n+1)+A003056(n)`
-/

namespace A204012.P2341511771643313007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) + A003056 n

end

end A204012.P2341511771643313007

namespace A204012

/-- `A157454(n+1)+A003056(n)` -/
def P2341511771643313007.Spec : Prop :=
  ∀ n, P2341511771643313007.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P5257372350233064347

`A204028(n+1)+A003984(n)`
-/

namespace A204012.P5257372350233064347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204028 (n + 1) + A003984 n

end

end A204012.P5257372350233064347

namespace A204012

/-- `A204028(n+1)+A003984(n)` -/
def P5257372350233064347.Spec : Prop :=
  ∀ n, P5257372350233064347.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P13225094542520830856

`A204006(n+1)+A004197(n)`
-/

namespace A204012.P13225094542520830856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) + A004197 n

end

end A204012.P13225094542520830856

namespace A204012

/-- `A204006(n+1)+A004197(n)` -/
def P13225094542520830856.Spec : Prop :=
  ∀ n, P13225094542520830856.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P1352272289649953979

`A279891(n)+A203994(n+1)`
-/

namespace A204012.P1352272289649953979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A203994 (n + 1)

end

end A204012.P1352272289649953979

namespace A204012

/-- `A279891(n)+A203994(n+1)` -/
def P1352272289649953979.Spec : Prop :=
  ∀ n, P1352272289649953979.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P18297426475088702538

`A111650(n+1)-A143182(n)`
-/

namespace A204012.P18297426475088702538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A143182 n

end

end A204012.P18297426475088702538

namespace A204012

/-- `A111650(n+1)-A143182(n)` -/
def P18297426475088702538.Spec : Prop :=
  ∀ n, P18297426475088702538.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P9399341964331657888

`A279891(n)+2-A143182(n)`
-/

namespace A204012.P9399341964331657888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + (2 - A143182 n)

end

end A204012.P9399341964331657888

namespace A204012

/-- `A279891(n)+2-A143182(n)` -/
def P9399341964331657888.Spec : Prop :=
  ∀ n, P9399341964331657888.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P12331140421990875485

`∑[A010054(n)]+2*A004197(n)`
-/

namespace A204012.P12331140421990875485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A004197 n

end

end A204012.P12331140421990875485

namespace A204012

/-- `∑[A010054(n)]+2*A004197(n)` -/
def P12331140421990875485.Spec : Prop :=
  ∀ n, P12331140421990875485.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P12643661577298205450

`A002024(n+1)+2*A004197(n)`
-/

namespace A204012.P12643661577298205450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + 2 * A004197 n

end

end A204012.P12643661577298205450

namespace A204012

/-- `A002024(n+1)+2*A004197(n)` -/
def P12643661577298205450.Spec : Prop :=
  ∀ n, P12643661577298205450.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P9038521957320233872

`A203994(n+1)+2*A003056(n)`
-/

namespace A204012.P9038521957320233872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) + 2 * A003056 n

end

end A204012.P9038521957320233872

namespace A204012

/-- `A203994(n+1)+2*A003056(n)` -/
def P9038521957320233872.Spec : Prop :=
  ∀ n, P9038521957320233872.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P15099512841391565808

`2*A131507(n)-A204008(n+1)`
-/

namespace A204012.P15099512841391565808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131507 n - A204008 (n + 1)

end

end A204012.P15099512841391565808

namespace A204012

/-- `2*A131507(n)-A204008(n+1)` -/
def P15099512841391565808.Spec : Prop :=
  ∀ n, P15099512841391565808.a n = A204012 (n + 1)

theorem P15099512841391565808.correct : P15099512841391565808.Spec := by
  intro n
  simp only [A204012, Nat.add_sub_cancel, A204012.P15099512841391565808.a, A204012.P8035036335366724817.a, A049581, A049581.P658114607470364396.a, A131507, A131507.P15949945766004013839.a, A204008, A204008.P190403554516119161.a, A020985, A020985.P937884151096334327.a, A114327, A114327.P9028308961649463264.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A014081, A014081.P14878370479040452879.a, A000120, A000120.P2816527436160941581.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A069010, A069010.P14932719103722593844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204012

/-! ## A204012.P16070455967873678029

`A002024(n+1)+A157454(n+1)-1`
-/

namespace A204012.P16070455967873678029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A157454 (n + 1) - 1)

end

end A204012.P16070455967873678029

namespace A204012

/-- `A002024(n+1)+A157454(n+1)-1` -/
def P16070455967873678029.Spec : Prop :=
  ∀ n, P16070455967873678029.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P6661729444219492840

`A111650(n+1)+A203994(n+1)-2`
-/

namespace A204012.P6661729444219492840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (A203994 (n + 1) - 2)

end

end A204012.P6661729444219492840

namespace A204012

/-- `A111650(n+1)+A203994(n+1)-2` -/
def P6661729444219492840.Spec : Prop :=
  ∀ n, P6661729444219492840.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P13999030039940040818

`A157454(n+1)+A003057(n+2)-2`
-/

namespace A204012.P13999030039940040818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) + (A003057 (n + 2) - 2)

end

end A204012.P13999030039940040818

namespace A204012

/-- `A157454(n+1)+A003057(n+2)-2` -/
def P13999030039940040818.Spec : Prop :=
  ∀ n, P13999030039940040818.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P15931031351187074136

`2*A204004(n+1)-A204156(n+1)`
-/

namespace A204012.P15931031351187074136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204004 (n + 1) - A204156 (n + 1)

end

end A204012.P15931031351187074136

namespace A204012

/-- `2*A204004(n+1)-A204156(n+1)` -/
def P15931031351187074136.Spec : Prop :=
  ∀ n, P15931031351187074136.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P1950895409127259183

`A005408(A004197(n))+A003056(n)`
-/

namespace A204012.P1950895409127259183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A004197 n).toNat + A003056 n

end

end A204012.P1950895409127259183

namespace A204012

/-- `A005408(A004197(n))+A003056(n)` -/
def P1950895409127259183.Spec : Prop :=
  ∀ n, P1950895409127259183.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P16002358883369593377

`A016777(A003056(n))-2*A003984(n)`
-/

namespace A204012.P16002358883369593377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A003056 n).toNat - 2 * A003984 n

end

end A204012.P16002358883369593377

namespace A204012

/-- `A016777(A003056(n))-2*A003984(n)` -/
def P16002358883369593377.Spec : Prop :=
  ∀ n, P16002358883369593377.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P14447402370845147697

`2*A143182(A057944(n))-A143182(n)`
-/

namespace A204012.P14447402370845147697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143182 (A057944 n).toNat - A143182 n

end

end A204012.P14447402370845147697

namespace A204012

/-- `2*A143182(A057944(n))-A143182(n)` -/
def P14447402370845147697.Spec : Prop :=
  ∀ n, P14447402370845147697.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P1437278903458812654

`A003983(n+1)+A004197(n)+A003056(n)`
-/

namespace A204012.P1437278903458812654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A004197 n + A003056 n)

end

end A204012.P1437278903458812654

namespace A204012

/-- `A003983(n+1)+A004197(n)+A003056(n)` -/
def P1437278903458812654.Spec : Prop :=
  ∀ n, P1437278903458812654.a n = A204012 (n + 1)

end A204012

/-! ## A204012.P11767324677423574591

`A204008(n+1)-A049581(n)-A049581(n)`
-/

namespace A204012.P11767324677423574591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (n + 1) - A049581 n - A049581 n

end

end A204012.P11767324677423574591

namespace A204012

/-- `A204008(n+1)-A049581(n)-A049581(n)` -/
def P11767324677423574591.Spec : Prop :=
  ∀ n, P11767324677423574591.a n = A204012 (n + 1)

theorem P11767324677423574591.correct : P11767324677423574591.Spec := by
  intro n
  simp only [A204012, Nat.add_sub_cancel, A204012.P11767324677423574591.a, A204012.P8035036335366724817.a, A049581, A049581.P658114607470364396.a, A131507, A131507.P15949945766004013839.a, A204008, A204008.P190403554516119161.a, A020985, A020985.P937884151096334327.a, A114327, A114327.P9028308961649463264.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A014081, A014081.P14878370479040452879.a, A000120, A000120.P2816527436160941581.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A069010, A069010.P14932719103722593844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204012

/-!
# A204014: Symmetric matrix based by antidiagonals, based on f(i,j)=min{1+(j mod i), 1+( i mod j)}.

The programs for A204014, the canonical program `A204014.P10436582750078122122` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204014 has offset 1).

The definition of A204014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204014.P17823165686026660084

`(comp[∑[n]]-n)%A003983(n+1)+1`
-/

namespace A204014.P17823165686026660084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A003983 (n + 1)) + 1

end

end A204014.P17823165686026660084

namespace A204014

/-- `(comp[∑[n]]-n)%A003983(n+1)+1` -/
def P17823165686026660084.Spec : Prop :=
  ∀ n, P17823165686026660084.a n = A204014 (n + 1)

end A204014

/-! ## A204014.P10436582750078122122

`A049581(n)%A008621(A115281(n))+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A204014

/-- `A049581(n)%A008621(A115281(n))+1` -/
def P10436582750078122122.Spec : Prop :=
  ∀ n, P10436582750078122122.a n = A204014 (n + 1)

theorem P10436582750078122122.correct : P10436582750078122122.Spec := by
  intro n
  simp only [A204014, Nat.add_sub_cancel]

end A204014

/-! ## A204014.P10385246208347408682

`(A002024(n+1)+1)%A008621(A115281(n))+1`
-/

namespace A204014.P10385246208347408682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1) + 1) (A008621 (A115281 n).toNat) + 1

end

end A204014.P10385246208347408682

namespace A204014

/-- `(A002024(n+1)+1)%A008621(A115281(n))+1` -/
def P10385246208347408682.Spec : Prop :=
  ∀ n, P10385246208347408682.a n = A204014 (n + 1)

end A204014

/-! ## A204014.P1872769161941752170

`A058656(A212954(n+1))`
-/

namespace A204014.P1872769161941752170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058656 (A212954 (n + 1)).toNat

end

end A204014.P1872769161941752170

namespace A204014

/-- `A058656(A212954(n+1))` -/
def P1872769161941752170.Spec : Prop :=
  ∀ n, P1872769161941752170.a n = A204014 (n + 1)

end A204014

/-! ## A204014.P9488979236574986522

`A115572(A146898(n))`
-/

namespace A204014.P9488979236574986522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A146898 n).toNat

end

end A204014.P9488979236574986522

namespace A204014

/-- `A115572(A146898(n))` -/
def P9488979236574986522.Spec : Prop :=
  ∀ n, P9488979236574986522.a n = A204014 (n + 1)

end A204014

/-!
# A204016: Symmetric matrix based on f(i,j) = max(j mod i, i mod j), by antidiagonals.

The programs for A204016, the canonical program `A204016.P18052484230199461045` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204016 has offset 1).

The definition of A204016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204016.P2801744674531077450

`A204018(n+1)-1`
-/

namespace A204016.P2801744674531077450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204018 (n + 1) - 1

end

end A204016.P2801744674531077450

namespace A204016

/-- `A204018(n+1)-1` -/
def P2801744674531077450.Spec : Prop :=
  ∀ n, P2801744674531077450.a n = A204016 (n + 1)

theorem P2801744674531077450.correct : P2801744674531077450.Spec := by
  intro n
  simp only [A204016, Nat.add_sub_cancel, A204016.P2801744674531077450.a, A204016.P18052484230199461045.a, A027656, A027656.P3303400326036793752.a, A157458, A157458.P16856629470642738053.a, A204018, A204018.P15878726800504496581.a, A003982, A003982.P6136202056268562101.a, A008619, A008619.P16053834178911111118.a, A059841, A059841.P2666504972441551157.a, A157454, A157454.P17958483760181188644.a, A002024, A002024.P11700297927830783882.a, A049581, A049581.P658114607470364396.a, A020985, A020985.P937884151096334327.a, A114327, A114327.P9028308961649463264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204016

/-! ## A204016.P3679181570673744545

`(comp[∑[n]]-n)%A051125(n+1)`
-/

namespace A204016.P3679181570673744545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A051125 (n + 1))

end

end A204016.P3679181570673744545

namespace A204016

/-- `(comp[∑[n]]-n)%A051125(n+1)` -/
def P3679181570673744545.Spec : Prop :=
  ∀ n, P3679181570673744545.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P16994138529749891715

`A130507(A115281(n))`
-/

namespace A204016.P16994138529749891715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A115281 n).toNat

end

end A204016.P16994138529749891715

namespace A204016

/-- `A130507(A115281(n))` -/
def P16994138529749891715.Spec : Prop :=
  ∀ n, P16994138529749891715.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P18052484230199461045

`A027656(xor(1, A157458(n)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A204016

/-- `A027656(xor(1, A157458(n)))` -/
def P18052484230199461045.Spec : Prop :=
  ∀ n, P18052484230199461045.a n = A204016 (n + 1)

theorem P18052484230199461045.correct : P18052484230199461045.Spec := by
  intro n
  simp only [A204016, Nat.add_sub_cancel]

end A204016

/-! ## A204016.P12046336571249343894

`A133622(A157458(n)+1)-1`
-/

namespace A204016.P12046336571249343894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A157458 n + 1).toNat - 1

end

end A204016.P12046336571249343894

namespace A204016

/-- `A133622(A157458(n)+1)-1` -/
def P12046336571249343894.Spec : Prop :=
  ∀ n, P12046336571249343894.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P4851452208364974956

`A158416(A157458(n)+1)-1`
-/

namespace A204016.P4851452208364974956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A157458 n + 1).toNat - 1

end

end A204016.P4851452208364974956

namespace A204016

/-- `A158416(A157458(n)+1)-1` -/
def P4851452208364974956.Spec : Prop :=
  ∀ n, P4851452208364974956.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P18115151849169107721

`lcm(A003983(n+1), A068344(n))`
-/

namespace A204016.P18115151849169107721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003983 (n + 1)) (A068344 n)

end

end A204016.P18115151849169107721

namespace A204016

/-- `lcm(A003983(n+1), A068344(n))` -/
def P18115151849169107721.Spec : Prop :=
  ∀ n, (P18115151849169107721.a n : ℤ) = A204016 (n + 1)

end A204016

/-! ## A204016.P7032355141202652709

`A003983(n+1)-A286100(n+1)`
-/

namespace A204016.P7032355141202652709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) - A286100 (n + 1)

end

end A204016.P7032355141202652709

namespace A204016

/-- `A003983(n+1)-A286100(n+1)` -/
def P7032355141202652709.Spec : Prop :=
  ∀ n, P7032355141202652709.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P7104350084271091524

`(1-A003982(n))*A003983(n+1)`
-/

namespace A204016.P7104350084271091524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003982 n) * A003983 (n + 1)

end

end A204016.P7104350084271091524

namespace A204016

/-- `(1-A003982(n))*A003983(n+1)` -/
def P7104350084271091524.Spec : Prop :=
  ∀ n, P7104350084271091524.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P9337890059909656013

`A003983(n+1)%A003990(n+1)`
-/

namespace A204016.P9337890059909656013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003983 (n + 1)) (A003990 (n + 1))

end

end A204016.P9337890059909656013

namespace A204016

/-- `A003983(n+1)%A003990(n+1)` -/
def P9337890059909656013.Spec : Prop :=
  ∀ n, P9337890059909656013.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P2544096893703488133

`A203996(n+1)%A003990(n+1)`
-/

namespace A204016.P2544096893703488133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203996 (n + 1)) (A003990 (n + 1))

end

end A204016.P2544096893703488133

namespace A204016

/-- `A203996(n+1)%A003990(n+1)` -/
def P2544096893703488133.Spec : Prop :=
  ∀ n, P2544096893703488133.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P9692224072534926485

`A203998(n+1)%A204018(n+1)`
-/

namespace A204016.P9692224072534926485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203998 (n + 1)) (A204018 (n + 1))

end

end A204016.P9692224072534926485

namespace A204016

/-- `A203998(n+1)%A204018(n+1)` -/
def P9692224072534926485.Spec : Prop :=
  ∀ n, P9692224072534926485.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P6851396701081924993

`A003057(n+2)%(A003984(n)+1)`
-/

namespace A204016.P6851396701081924993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003057 (n + 2)) (A003984 n + 1)

end

end A204016.P6851396701081924993

namespace A204016

/-- `A003057(n+2)%(A003984(n)+1)` -/
def P6851396701081924993.Spec : Prop :=
  ∀ n, P6851396701081924993.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P2278356971443605646

`A010751(A003983(n+1)*A157458(n))`
-/

namespace A204016.P2278356971443605646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A003983 (n + 1) * A157458 n).toNat

end

end A204016.P2278356971443605646

namespace A204016

/-- `A010751(A003983(n+1)*A157458(n))` -/
def P2278356971443605646.Spec : Prop :=
  ∀ n, P2278356971443605646.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P3877457503080815373

`abs(Δ[A000124(A053616(n))])`
-/

namespace A204016.P3877457503080815373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A053616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A204016.P3877457503080815373

namespace A204016

/-- `abs(Δ[A000124(A053616(n))])` -/
def P3877457503080815373.Spec : Prop :=
  ∀ n, P3877457503080815373.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P10099347655609324256

`Δ[A053616(n)]²*A003983(n+1)`
-/

namespace A204016.P10099347655609324256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A003983 (n + 1)

end

end A204016.P10099347655609324256

namespace A204016

/-- `Δ[A053616(n)]²*A003983(n+1)` -/
def P10099347655609324256.Spec : Prop :=
  ∀ n, P10099347655609324256.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P5413458775288657085

`A053188(A185728(n+1))`
-/

namespace A204016.P5413458775288657085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A185728 (n + 1)).toNat

end

end A204016.P5413458775288657085

namespace A204016

/-- `A053188(A185728(n+1))` -/
def P5413458775288657085.Spec : Prop :=
  ∀ n, P5413458775288657085.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P11309281104686409181

`A105060(n+1)%A204018(n+1)`
-/

namespace A204016.P11309281104686409181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105060 (n + 1)) (A204018 (n + 1))

end

end A204016.P11309281104686409181

namespace A204016

/-- `A105060(n+1)%A204018(n+1)` -/
def P11309281104686409181.Spec : Prop :=
  ∀ n, P11309281104686409181.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P8339064715565594030

`A200748(n)%A204018(n+1)`
-/

namespace A204016.P8339064715565594030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A204018 (n + 1))

end

end A204016.P8339064715565594030

namespace A204016

/-- `A200748(n)%A204018(n+1)` -/
def P8339064715565594030.Spec : Prop :=
  ∀ n, P8339064715565594030.a n = A204016 (n + 1)

end A204016

/-! ## A204016.P14678541554571952314

`A277697(A098350(n+1))`
-/

namespace A204016.P14678541554571952314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A098350 (n + 1)).toNat

end

end A204016.P14678541554571952314

namespace A204016

/-- `A277697(A098350(n+1))` -/
def P14678541554571952314.Spec : Prop :=
  ∀ n, P14678541554571952314.a n = A204016 (n + 1)

end A204016

/-!
# A204018: Symmetric matrix based on f(i,j)=1+max(j mod i, i mod j), by antidiagonals.

The programs for A204018, the canonical program `A204018.P15878726800504496581` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204018 has offset 1).

The definition of A204018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204018.P15878726800504496581

`A204016(n+1)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A204018

/-- `A204016(n+1)+1` -/
def P15878726800504496581.Spec : Prop :=
  ∀ n, P15878726800504496581.a n = A204018 (n + 1)

theorem P15878726800504496581.correct : P15878726800504496581.Spec := by
  intro n
  simp only [A204018, Nat.add_sub_cancel]

end A204018

/-! ## A204018.P39603943719973389

`(comp[∑[n]]-n)%A051125(n+1)+1`
-/

namespace A204018.P39603943719973389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A051125 (n + 1)) + 1

end

end A204018.P39603943719973389

namespace A204018

/-- `(comp[∑[n]]-n)%A051125(n+1)+1` -/
def P39603943719973389.Spec : Prop :=
  ∀ n, P39603943719973389.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P2618562052473190433

`A130507(A115281(n))+1`
-/

namespace A204018.P2618562052473190433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A115281 n).toNat + 1

end

end A204018.P2618562052473190433

namespace A204018

/-- `A130507(A115281(n))+1` -/
def P2618562052473190433.Spec : Prop :=
  ∀ n, P2618562052473190433.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P6694429460890452047

`A133622(A157458(n)+1)`
-/

namespace A204018.P6694429460890452047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A157458 n + 1).toNat

end

end A204018.P6694429460890452047

namespace A204018

/-- `A133622(A157458(n)+1)` -/
def P6694429460890452047.Spec : Prop :=
  ∀ n, P6694429460890452047.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P7655171149656035582

`A158416(A157458(n)+1)`
-/

namespace A204018.P7655171149656035582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A157458 n + 1).toNat

end

end A204018.P7655171149656035582

namespace A204018

/-- `A158416(A157458(n)+1)` -/
def P7655171149656035582.Spec : Prop :=
  ∀ n, P7655171149656035582.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P5907743167903412110

`A057979(A157458(n)+4)`
-/

namespace A204018.P5907743167903412110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A157458 n + 4).toNat

end

end A204018.P5907743167903412110

namespace A204018

/-- `A057979(A157458(n)+4)` -/
def P5907743167903412110.Spec : Prop :=
  ∀ n, P5907743167903412110.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P8919302012441669407

`A027656(xor(1, A157458(n)))+1`
-/

namespace A204018.P8919302012441669407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Int.xor 1 (A157458 n)).toNat + 1

end

end A204018.P8919302012441669407

namespace A204018

/-- `A027656(xor(1, A157458(n)))+1` -/
def P8919302012441669407.Spec : Prop :=
  ∀ n, P8919302012441669407.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P13884552261393909952

`lcm(A003983(n+1), A068344(n))+1`
-/

namespace A204018.P13884552261393909952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003983 (n + 1)) (A068344 n) + 1

end

end A204018.P13884552261393909952

namespace A204018

/-- `lcm(A003983(n+1), A068344(n))+1` -/
def P13884552261393909952.Spec : Prop :=
  ∀ n, (P13884552261393909952.a n : ℤ) = A204018 (n + 1)

end A204018

/-! ## A204018.P1496650208121974836

`A003983(n+1)+1-A286100(n+1)`
-/

namespace A204018.P1496650208121974836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (1 - A286100 (n + 1))

end

end A204018.P1496650208121974836

namespace A204018

/-- `A003983(n+1)+1-A286100(n+1)` -/
def P1496650208121974836.Spec : Prop :=
  ∀ n, P1496650208121974836.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P17773316170122815784

`A010751(A003983(n+1)*A157458(n))+1`
-/

namespace A204018.P17773316170122815784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A003983 (n + 1) * A157458 n).toNat + 1

end

end A204018.P17773316170122815784

namespace A204018

/-- `A010751(A003983(n+1)*A157458(n))+1` -/
def P17773316170122815784.Spec : Prop :=
  ∀ n, P17773316170122815784.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P17136399216734047490

`abs(Δ[A000124(A053616(n))])+1`
-/

namespace A204018.P17136399216734047490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A053616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A204018.P17136399216734047490

namespace A204018

/-- `abs(Δ[A000124(A053616(n))])+1` -/
def P17136399216734047490.Spec : Prop :=
  ∀ n, P17136399216734047490.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P6814604862268995818

`A053188(A185728(n+1))+1`
-/

namespace A204018.P6814604862268995818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A185728 (n + 1)).toNat + 1

end

end A204018.P6814604862268995818

namespace A204018

/-- `A053188(A185728(n+1))+1` -/
def P6814604862268995818.Spec : Prop :=
  ∀ n, P6814604862268995818.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P15547833161741736408

`A277697(A098350(n+1))+1`
-/

namespace A204018.P15547833161741736408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A098350 (n + 1)).toNat + 1

end

end A204018.P15547833161741736408

namespace A204018

/-- `A277697(A098350(n+1))+1` -/
def P15547833161741736408.Spec : Prop :=
  ∀ n, P15547833161741736408.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P10902437587232132460

`A071766(A271709(n))`
-/

namespace A204018.P10902437587232132460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A271709 n).toNat

end

end A204018.P10902437587232132460

namespace A204018

/-- `A071766(A271709(n))` -/
def P10902437587232132460.Spec : Prop :=
  ∀ n, P10902437587232132460.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P8950446348137581959

`A071766(A271710(n))`
-/

namespace A204018.P8950446348137581959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A271710 n).toNat

end

end A204018.P8950446348137581959

namespace A204018

/-- `A071766(A271710(n))` -/
def P8950446348137581959.Spec : Prop :=
  ∀ n, P8950446348137581959.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P11982590122067535614

`A071766(A131816(n)+1)`
-/

namespace A204018.P11982590122067535614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A131816 n + 1).toNat

end

end A204018.P11982590122067535614

namespace A204018

/-- `A071766(A131816(n)+1)` -/
def P11982590122067535614.Spec : Prop :=
  ∀ n, P11982590122067535614.a n = A204018 (n + 1)

end A204018

/-! ## A204018.P14096313253305281836

`A007305(A271710(n)+1)`
-/

namespace A204018.P14096313253305281836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A271710 n + 1).toNat

end

end A204018.P14096313253305281836

namespace A204018

/-- `A007305(A271710(n)+1)` -/
def P14096313253305281836.Spec : Prop :=
  ∀ n, P14096313253305281836.a n = A204018 (n + 1)

end A204018

/-!
# A204021: Triangle read by rows: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of min(2i-1,2j-1) (A157454).

The programs for A204021, there is no canonical definition to state claims against.
-/

/-! ## A204021.P17275596352049899821

`A028297(A061885(n))/A130321(n)`
-/

namespace A204021.P17275596352049899821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028297 (A061885 n).toNat : ℚ) / (A130321 n : ℚ)

end

end A204021.P17275596352049899821

/-! ## A204021.P2441908845286710254

`A127674(A061579(n))/A130321(n)`
-/

namespace A204021.P2441908845286710254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127674 (A061579 n).toNat : ℚ) / (A130321 n : ℚ)

end

end A204021.P2441908845286710254

/-! ## A204021.P4208569663993881537

`A028297(A061885(n))/sqrt(A262616(n))`
-/

namespace A204021.P4208569663993881537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028297 (A061885 n).toNat : ℝ) / Real.sqrt (A262616 n : ℝ)

end

end A204021.P4208569663993881537

/-! ## A204021.P14441363606516140982

`A127674(A061579(n))/sqrt(A262616(n))`
-/

namespace A204021.P14441363606516140982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A127674 (A061579 n).toNat : ℝ) / Real.sqrt (A262616 n : ℝ)

end

end A204021.P14441363606516140982

/-! ## A204021.P8967049211313045379

`A028297(A061885(n))/2^A025581(n)`
-/

namespace A204021.P8967049211313045379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028297 (A061885 n).toNat : ℚ) / (2 : ℚ) ^ (A025581 n : ℤ)

end

end A204021.P8967049211313045379

/-! ## A204021.P6273840089229871661

`A028297(A061885(n))/A006519(A054582(n))`
-/

namespace A204021.P6273840089229871661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028297 (A061885 n).toNat : ℚ) / (A006519 (A054582 n).toNat : ℚ)

end

end A204021.P6273840089229871661

/-!
# A204022: Symmetric matrix based on f(i,j) = max(2i-1, 2j-1), by antidiagonals.

The programs for A204022, the canonical program `A204022.P5041661320422895112` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204022 has offset 1).

The definition of A204022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204022.P13956215482809551374

`2*A051125(n+1)-1`
-/

namespace A204022.P13956215482809551374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051125 (n + 1) - 1

end

end A204022.P13956215482809551374

namespace A204022

/-- `2*A051125(n+1)-1` -/
def P13956215482809551374.Spec : Prop :=
  ∀ n, P13956215482809551374.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P18060421262721925683

`A143182(n)+A003056(n)`
-/

namespace A204022.P18060421262721925683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n + A003056 n

end

end A204022.P18060421262721925683

namespace A204022

/-- `A143182(n)+A003056(n)` -/
def P18060421262721925683.Spec : Prop :=
  ∀ n, P18060421262721925683.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P5041661320422895112

`A002024(n+1)+A049581(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A204022

/-- `A002024(n+1)+A049581(n)` -/
def P5041661320422895112.Spec : Prop :=
  ∀ n, P5041661320422895112.a n = A204022 (n + 1)

theorem P5041661320422895112.correct : P5041661320422895112.Spec := by
  intro n
  simp only [A204022, Nat.add_sub_cancel]

end A204022

/-! ## A204022.P5019250813641005061

`A204154(n+1)+A004197(n)`
-/

namespace A204022.P5019250813641005061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A004197 n

end

end A204022.P5019250813641005061

namespace A204022

/-- `A204154(n+1)+A004197(n)` -/
def P5019250813641005061.Spec : Prop :=
  ∀ n, P5019250813641005061.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P462726537768098428

`A204008(n+1)-A003056(n)`
-/

namespace A204022.P462726537768098428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (n + 1) - A003056 n

end

end A204022.P462726537768098428

namespace A204022

/-- `A204008(n+1)-A003056(n)` -/
def P462726537768098428.Spec : Prop :=
  ∀ n, P462726537768098428.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P1218344691466850333

`A111650(n+1)-A157454(n+1)`
-/

namespace A204022.P1218344691466850333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A157454 (n + 1)

end

end A204022.P1218344691466850333

namespace A204022

/-- `A111650(n+1)-A157454(n+1)` -/
def P1218344691466850333.Spec : Prop :=
  ∀ n, P1218344691466850333.a n = A204022 (n + 1)

theorem P1218344691466850333.correct : P1218344691466850333.Spec := by
  intro n
  simp only [A204022, Nat.add_sub_cancel, A204022.P1218344691466850333.a, A204022.P5041661320422895112.a, A002024, A002024.P11700297927830783882.a, A049581, A049581.P658114607470364396.a, A111650, A111650.P12812755283030262400.a, A157454, A157454.P17958483760181188644.a, A020985, A020985.P937884151096334327.a, A114327, A114327.P9028308961649463264.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A014081, A014081.P14878370479040452879.a, A000120, A000120.P2816527436160941581.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A069010, A069010.P14932719103722593844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204022

/-! ## A204022.P15701863490016626756

`A209302(2*n+1)`
-/

namespace A204022.P15701863490016626756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (2 * n + 1)

end

end A204022.P15701863490016626756

namespace A204022

/-- `A209302(2*n+1)` -/
def P15701863490016626756.Spec : Prop :=
  ∀ n, P15701863490016626756.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P3246343135455307313

`2*A003984(n)+1`
-/

namespace A204022.P3246343135455307313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003984 n + 1

end

end A204022.P3246343135455307313

namespace A204022

/-- `2*A003984(n)+1` -/
def P3246343135455307313.Spec : Prop :=
  ∀ n, P3246343135455307313.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P15776668632849371365

`abs(A114327(n))+comp[C(n, 2)-1]-n`
-/

namespace A204022.P15776668632849371365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114327 n| + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A204022.P15776668632849371365

namespace A204022

/-- `abs(A114327(n))+comp[C(n, 2)-1]-n` -/
def P15776668632849371365.Spec : Prop :=
  ∀ n, P15776668632849371365.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P4791623899642809019

`A005408(A003984(n))`
-/

namespace A204022.P4791623899642809019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003984 n).toNat

end

end A204022.P4791623899642809019

namespace A204022

/-- `A005408(A003984(n))` -/
def P4791623899642809019.Spec : Prop :=
  ∀ n, P4791623899642809019.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P5537752508050393556

`A004273(A003984(n)+1)`
-/

namespace A204022.P5537752508050393556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A003984 n + 1).toNat

end

end A204022.P5537752508050393556

namespace A204022

/-- `A004273(A003984(n)+1)` -/
def P5537752508050393556.Spec : Prop :=
  ∀ n, P5537752508050393556.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P6370745859283879104

`A004273(A051125(n+1))`
-/

namespace A204022.P6370745859283879104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A051125 (n + 1)).toNat

end

end A204022.P6370745859283879104

namespace A204022

/-- `A004273(A051125(n+1))` -/
def P6370745859283879104.Spec : Prop :=
  ∀ n, P6370745859283879104.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P13639112586920697001

`A008619(4*A003984(n))`
-/

namespace A204022.P13639112586920697001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A003984 n).toNat

end

end A204022.P13639112586920697001

namespace A204022

/-- `A008619(4*A003984(n))` -/
def P13639112586920697001.Spec : Prop :=
  ∀ n, P13639112586920697001.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P18083904552287342100

`A027656(4*A003984(n))`
-/

namespace A204022.P18083904552287342100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (4 * A003984 n).toNat

end

end A204022.P18083904552287342100

namespace A204022

/-- `A027656(4*A003984(n))` -/
def P18083904552287342100.Spec : Prop :=
  ∀ n, P18083904552287342100.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P9685981228676206175

`A005408(A051125(n+1)-1)`
-/

namespace A204022.P9685981228676206175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A051125 (n + 1) - 1).toNat

end

end A204022.P9685981228676206175

namespace A204022

/-- `A005408(A051125(n+1)-1)` -/
def P9685981228676206175.Spec : Prop :=
  ∀ n, P9685981228676206175.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P5740780757039062025

`A003056(n)+A049581(n)+1`
-/

namespace A204022.P5740780757039062025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A049581 n + 1)

end

end A204022.P5740780757039062025

namespace A204022

/-- `A003056(n)+A049581(n)+1` -/
def P5740780757039062025.Spec : Prop :=
  ∀ n, P5740780757039062025.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P9109419063835083706

`A051125(n+1)+A003984(n)`
-/

namespace A204022.P9109419063835083706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + A003984 n

end

end A204022.P9109419063835083706

namespace A204022

/-- `A051125(n+1)+A003984(n)` -/
def P9109419063835083706.Spec : Prop :=
  ∀ n, P9109419063835083706.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P5748524306109837895

`A172471(n)+A130517(n+1)`
-/

namespace A204022.P5748524306109837895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n + A130517 (n + 1)

end

end A204022.P5748524306109837895

namespace A204022

/-- `A172471(n)+A130517(n+1)` -/
def P5748524306109837895.Spec : Prop :=
  ∀ n, P5748524306109837895.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P14793918038469187010

`A204004(n+1)-A004197(n)`
-/

namespace A204022.P14793918038469187010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) - A004197 n

end

end A204022.P14793918038469187010

namespace A204022

/-- `A204004(n+1)-A004197(n)` -/
def P14793918038469187010.Spec : Prop :=
  ∀ n, P14793918038469187010.a n = A204022 (n + 1)

end A204022

/-! ## A204022.P10934879790525250206

`A204156(n+1)-A049581(n)`
-/

namespace A204022.P10934879790525250206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204156 (n + 1) - A049581 n

end

end A204022.P10934879790525250206

namespace A204022

/-- `A204156(n+1)-A049581(n)` -/
def P10934879790525250206.Spec : Prop :=
  ∀ n, P10934879790525250206.a n = A204022 (n + 1)

theorem P10934879790525250206.correct : P10934879790525250206.Spec := by
  intro n
  simp only [A204022, Nat.add_sub_cancel, A204022.P10934879790525250206.a, A204022.P5041661320422895112.a, A002024, A002024.P11700297927830783882.a, A049581, A049581.P658114607470364396.a, A204156, A204156.P2950584542744823295.a, A020985, A020985.P937884151096334327.a, A114327, A114327.P9028308961649463264.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A014081, A014081.P14878370479040452879.a, A000120, A000120.P2816527436160941581.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A069010, A069010.P14932719103722593844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204022

/-!
# A204026: Symmetric matrix based on f(i,j)=min(F(i+1),F(j+1)), where F=A000045 (Fibonacci numbers), by antidiagonals.

The programs for A204026, the canonical program `A204026.P14006372752453652619` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204026 has offset 1).

The definition of A204026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204026.P3268029793070715608

`A193588(A379777(n))`
-/

namespace A204026.P3268029793070715608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 (A379777 n).toNat

end

end A204026.P3268029793070715608

namespace A204026

/-- `A193588(A379777(n))` -/
def P3268029793070715608.Spec : Prop :=
  ∀ n, P3268029793070715608.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P133185655417173928

`A011794(A106255(n+1))`
-/

namespace A204026.P133185655417173928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011794 (A106255 (n + 1)).toNat

end

end A204026.P133185655417173928

namespace A204026

/-- `A011794(A106255(n+1))` -/
def P133185655417173928.Spec : Prop :=
  ∀ n, P133185655417173928.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P16008948542004978551

`A000045(A004197(n)+2)`
-/

namespace A204026.P16008948542004978551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004197 n + 2).toNat

end

end A204026.P16008948542004978551

namespace A204026

/-- `A000045(A004197(n)+2)` -/
def P16008948542004978551.Spec : Prop :=
  ∀ n, P16008948542004978551.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P13413676198654212555

`A000045(A003983(n+1)+1)`
-/

namespace A204026.P13413676198654212555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003983 (n + 1) + 1).toNat

end

end A204026.P13413676198654212555

namespace A204026

/-- `A000045(A003983(n+1)+1)` -/
def P13413676198654212555.Spec : Prop :=
  ∀ n, P13413676198654212555.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P2194923512554647606

`A202453(A106255(n+1)+1)`
-/

namespace A204026.P2194923512554647606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (A106255 (n + 1) + 1).toNat

end

end A204026.P2194923512554647606

namespace A204026

/-- `A202453(A106255(n+1)+1)` -/
def P2194923512554647606.Spec : Prop :=
  ∀ n, P2194923512554647606.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P2709077336521628015

`A000045(val(A152714(n), 3)+2)`
-/

namespace A204026.P2709077336521628015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A152714 n).toNat 3 + 2)

end

end A204026.P2709077336521628015

namespace A204026

/-- `A000045(val(A152714(n), 3)+2)` -/
def P2709077336521628015.Spec : Prop :=
  ∀ n, P2709077336521628015.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P14006372752453652619

`A000045(val(A036561(n), 6)+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204026

/-- `A000045(val(A036561(n), 6)+2)` -/
def P14006372752453652619.Spec : Prop :=
  ∀ n, P14006372752453652619.a n = A204026 (n + 1)

theorem P14006372752453652619.correct : P14006372752453652619.Spec := by
  intro n
  simp only [A204026, Nat.add_sub_cancel]

end A204026

/-! ## A204026.P1686912799658433790

`A000045(val(A175840(n), 6)+2)`
-/

namespace A204026.P1686912799658433790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A175840 n).toNat 6 + 2)

end

end A204026.P1686912799658433790

namespace A204026

/-- `A000045(val(A175840(n), 6)+2)` -/
def P1686912799658433790.Spec : Prop :=
  ∀ n, P1686912799658433790.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P11835648133931777721

`A000045(sqrt(A106314(n+1))+1)`
-/

namespace A204026.P11835648133931777721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A106314 (n + 1) : ℝ) + 1)).toNat

end

end A204026.P11835648133931777721

namespace A204026

/-- `A000045(sqrt(A106314(n+1))+1)` -/
def P11835648133931777721.Spec : Prop :=
  ∀ n, P11835648133931777721.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P16800385559549334142

`A000045(A003057(n+2)-A003984(n))`
-/

namespace A204026.P16800385559549334142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003057 (n + 2) - A003984 n).toNat

end

end A204026.P16800385559549334142

namespace A204026

/-- `A000045(A003057(n+2)-A003984(n))` -/
def P16800385559549334142.Spec : Prop :=
  ∀ n, P16800385559549334142.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P1911154962477673740

`A000045(∑[A010054(n)]+1-A003984(n))`
-/

namespace A204026.P1911154962477673740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - A003984 n).toNat

end

end A204026.P1911154962477673740

namespace A204026

/-- `A000045(∑[A010054(n)]+1-A003984(n))` -/
def P1911154962477673740.Spec : Prop :=
  ∀ n, P1911154962477673740.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P17162841328668354518

`A000045(n+2-(A083920(n)+A003984(n)))`
-/

namespace A204026.P17162841328668354518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 2 : ℤ) - (A083920 n + A003984 n)).toNat

end

end A204026.P17162841328668354518

namespace A204026

/-- `A000045(n+2-(A083920(n)+A003984(n)))` -/
def P17162841328668354518.Spec : Prop :=
  ∀ n, P17162841328668354518.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P5960012069563265684

`A053602(A053615(2*n+1))`
-/

namespace A204026.P5960012069563265684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A053615 (2 * n + 1)).toNat

end

end A204026.P5960012069563265684

namespace A204026

/-- `A053602(A053615(2*n+1))` -/
def P5960012069563265684.Spec : Prop :=
  ∀ n, P5960012069563265684.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P765983820204358129

`A022290(A144464(n))`
-/

namespace A204026.P765983820204358129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A144464 n).toNat

end

end A204026.P765983820204358129

namespace A204026

/-- `A022290(A144464(n))` -/
def P765983820204358129.Spec : Prop :=
  ∀ n, P765983820204358129.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P15596142407101301798

`A000045(∑{e}[A152714(n), #]+2)`
-/

namespace A204026.P15596142407101301798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2)

end

end A204026.P15596142407101301798

namespace A204026

/-- `A000045(∑{e}[A152714(n), #]+2)` -/
def P15596142407101301798.Spec : Prop :=
  ∀ n, P15596142407101301798.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P12103419936297414956

`A071766(A131816(n))`
-/

namespace A204026.P12103419936297414956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A131816 n).toNat

end

end A204026.P12103419936297414956

namespace A204026

/-- `A071766(A131816(n))` -/
def P12103419936297414956.Spec : Prop :=
  ∀ n, P12103419936297414956.a n = A204026 (n + 1)

end A204026

/-! ## A204026.P11226547916693439745

`A071766(A271709(n)-1)`
-/

namespace A204026.P11226547916693439745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A271709 n - 1).toNat

end

end A204026.P11226547916693439745

namespace A204026

/-- `A071766(A271709(n)-1)` -/
def P11226547916693439745.Spec : Prop :=
  ∀ n, P11226547916693439745.a n = A204026 (n + 1)

end A204026

/-!
# A204028: Symmetric matrix based on f(i,j)=min(3i-2,3j-2), by antidiagonals.

The programs for A204028, the canonical program `A204028.P5390969343002212322` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204028 has offset 1).

The definition of A204028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204028.P7643791745650716432

`3*A004197(n)+1`
-/

namespace A204028.P7643791745650716432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004197 n + 1

end

end A204028.P7643791745650716432

namespace A204028

/-- `3*A004197(n)+1` -/
def P7643791745650716432.Spec : Prop :=
  ∀ n, P7643791745650716432.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P4803467977879898021

`3*A003983(n+1)-2`
-/

namespace A204028.P4803467977879898021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003983 (n + 1) - 2

end

end A204028.P4803467977879898021

namespace A204028

/-- `3*A003983(n+1)-2` -/
def P4803467977879898021.Spec : Prop :=
  ∀ n, P4803467977879898021.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P5390969343002212322

`3*val(A036561(n), 6)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204028

/-- `3*val(A036561(n), 6)+1` -/
def P5390969343002212322.Spec : Prop :=
  ∀ n, (P5390969343002212322.a n : ℤ) = A204028 (n + 1)

theorem P5390969343002212322.correct : P5390969343002212322.Spec := by
  intro n
  simp only [A204028, Nat.add_sub_cancel]

end A204028

/-! ## A204028.P17319640074308301459

`3*(∑[char[∑[n]]]-A051125(n+1))+1`
-/

namespace A204028.P17319640074308301459
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A051125 (n + 1)) + 1

end

end A204028.P17319640074308301459

namespace A204028

/-- `3*(∑[char[∑[n]]]-A051125(n+1))+1` -/
def P17319640074308301459.Spec : Prop :=
  ∀ n, P17319640074308301459.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P12641895253405971616

`A016777(A004197(n))`
-/

namespace A204028.P12641895253405971616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A004197 n).toNat

end

end A204028.P12641895253405971616

namespace A204028

/-- `A016777(A004197(n))` -/
def P12641895253405971616.Spec : Prop :=
  ∀ n, P12641895253405971616.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P10743249849028106496

`A123920(A115282(n))`
-/

namespace A204028.P10743249849028106496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123920 (A115282 n).toNat

end

end A204028.P10743249849028106496

namespace A204028

/-- `A123920(A115282(n))` -/
def P10743249849028106496.Spec : Prop :=
  ∀ n, P10743249849028106496.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P4142241989873746423

`A001651(A157454(n+1))`
-/

namespace A204028.P4142241989873746423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A157454 (n + 1)).toNat

end

end A204028.P4142241989873746423

namespace A204028

/-- `A001651(A157454(n+1))` -/
def P4142241989873746423.Spec : Prop :=
  ∀ n, P4142241989873746423.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P9746657356193902542

`A095871(A106255(n+1))`
-/

namespace A204028.P9746657356193902542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095871 (A106255 (n + 1)).toNat

end

end A204028.P9746657356193902542

namespace A204028

/-- `A095871(A106255(n+1))` -/
def P9746657356193902542.Spec : Prop :=
  ∀ n, P9746657356193902542.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P8560895763240342430

`A008619(6*A004197(n))`
-/

namespace A204028.P8560895763240342430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (6 * A004197 n).toNat

end

end A204028.P8560895763240342430

namespace A204028

/-- `A008619(6*A004197(n))` -/
def P8560895763240342430.Spec : Prop :=
  ∀ n, P8560895763240342430.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P10470223600721400130

`A008611(9*A004197(n))`
-/

namespace A204028.P10470223600721400130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (9 * A004197 n).toNat

end

end A204028.P10470223600721400130

namespace A204028

/-- `A008611(9*A004197(n))` -/
def P10470223600721400130.Spec : Prop :=
  ∀ n, P10470223600721400130.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P5307033208730004110

`A016777(val(A175840(n), 6))`
-/

namespace A204028.P5307033208730004110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.valuation (A175840 n).toNat 6)

end

end A204028.P5307033208730004110

namespace A204028

/-- `A016777(val(A175840(n), 6))` -/
def P5307033208730004110.Spec : Prop :=
  ∀ n, P5307033208730004110.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P16507897729338333560

`A008585(A003983(n+1))-2`
-/

namespace A204028.P16507897729338333560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A003983 (n + 1)).toNat - 2

end

end A204028.P16507897729338333560

namespace A204028

/-- `A008585(A003983(n+1))-2` -/
def P16507897729338333560.Spec : Prop :=
  ∀ n, P16507897729338333560.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P1667736192529397979

`A157454(n+1)+A004197(n)`
-/

namespace A204028.P1667736192529397979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) + A004197 n

end

end A204028.P1667736192529397979

namespace A204028

/-- `A157454(n+1)+A004197(n)` -/
def P1667736192529397979.Spec : Prop :=
  ∀ n, P1667736192529397979.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P6092901542800121353

`A204012(n+1)-A003984(n)`
-/

namespace A204028.P6092901542800121353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204012 (n + 1) - A003984 n

end

end A204028.P6092901542800121353

namespace A204028

/-- `A204012(n+1)-A003984(n)` -/
def P6092901542800121353.Spec : Prop :=
  ∀ n, P6092901542800121353.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P10397238280864285235

`A204006(n+1)-A049581(n)`
-/

namespace A204028.P10397238280864285235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (n + 1) - A049581 n

end

end A204028.P10397238280864285235

namespace A204028

/-- `A204006(n+1)-A049581(n)` -/
def P10397238280864285235.Spec : Prop :=
  ∀ n, P10397238280864285235.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P14114402298522138600

`A111650(n+1)-A204154(n+1)`
-/

namespace A204028.P14114402298522138600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A204154 (n + 1)

end

end A204028.P14114402298522138600

namespace A204028

/-- `A111650(n+1)-A204154(n+1)` -/
def P14114402298522138600.Spec : Prop :=
  ∀ n, P14114402298522138600.a n = A204028 (n + 1)

theorem P14114402298522138600.correct : P14114402298522138600.Spec := by
  intro n
  simp only [A204028, Nat.add_sub_cancel, A204028.P14114402298522138600.a, A204028.P5390969343002212322.a, A036561, A036561.P7490084913005378529.a, A111650, A111650.P12812755283030262400.a, A204154, A204154.P17367594193220542085.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204028

/-! ## A204028.P9788171768657898883

`A131507(n)+1-A204154(n+1)`
-/

namespace A204028.P9788171768657898883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + (1 - A204154 (n + 1))

end

end A204028.P9788171768657898883

namespace A204028

/-- `A131507(n)+1-A204154(n+1)` -/
def P9788171768657898883.Spec : Prop :=
  ∀ n, P9788171768657898883.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P13215245959123734899

`A279891(n)+2-A204154(n+1)`
-/

namespace A204028.P13215245959123734899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + (2 - A204154 (n + 1))

end

end A204028.P13215245959123734899

namespace A204028

/-- `A279891(n)+2-A204154(n+1)` -/
def P13215245959123734899.Spec : Prop :=
  ∀ n, P13215245959123734899.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P8120868403747120104

`A204004(n+1)-2*A049581(n)`
-/

namespace A204028.P8120868403747120104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) - 2 * A049581 n

end

end A204028.P8120868403747120104

namespace A204028

/-- `A204004(n+1)-2*A049581(n)` -/
def P8120868403747120104.Spec : Prop :=
  ∀ n, P8120868403747120104.a n = A204028 (n + 1)

end A204028

/-! ## A204028.P1219100729478565767

`A003983(n+1)+A157454(n+1)-1`
-/

namespace A204028.P1219100729478565767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A157454 (n + 1) - 1)

end

end A204028.P1219100729478565767

namespace A204028

/-- `A003983(n+1)+A157454(n+1)-1` -/
def P1219100729478565767.Spec : Prop :=
  ∀ n, P1219100729478565767.a n = A204028 (n + 1)

end A204028

/-!
# A204030: Symmetric matrix based on f(i,j) = gcd(i+1, j+1), by antidiagonals.

The programs for A204030, the canonical program `A204030.P9231576085307590684` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204030 has offset 1).

The definition of A204030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204030.P9231576085307590684

`gcd(A128227(n)+1, A049581(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A204030

/-- `gcd(A128227(n)+1, A049581(n))` -/
def P9231576085307590684.Spec : Prop :=
  ∀ n, (P9231576085307590684.a n : ℤ) = A204030 (n + 1)

theorem P9231576085307590684.correct : P9231576085307590684.Spec := by
  intro n
  simp only [A204030, Nat.add_sub_cancel]

end A204030

/-! ## A204030.P11906131423126564859

`gcd(A059036(n), A141429(n+1))`
-/

namespace A204030.P11906131423126564859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059036 n) (A141429 (n + 1))

end

end A204030.P11906131423126564859

namespace A204030

/-- `gcd(A059036(n), A141429(n+1))` -/
def P11906131423126564859.Spec : Prop :=
  ∀ n, (P11906131423126564859.a n : ℤ) = A204030 (n + 1)

end A204030

/-! ## A204030.P13428287881962704513

`gcd(A131899(n)+1, A114327(n))`
-/

namespace A204030.P13428287881962704513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131899 n + 1) (A114327 n)

end

end A204030.P13428287881962704513

namespace A204030

/-- `gcd(A131899(n)+1, A114327(n))` -/
def P13428287881962704513.Spec : Prop :=
  ∀ n, (P13428287881962704513.a n : ℤ) = A204030 (n + 1)

end A204030

/-! ## A204030.P10347771717488333175

`gcd(A004736(n+1)+1, abs(A114327(n)))`
-/

namespace A204030.P10347771717488333175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004736 (n + 1) + 1) |A114327 n|

end

end A204030.P10347771717488333175

namespace A204030

/-- `gcd(A004736(n+1)+1, abs(A114327(n)))` -/
def P10347771717488333175.Spec : Prop :=
  ∀ n, (P10347771717488333175.a n : ℤ) = A204030 (n + 1)

end A204030

/-! ## A204030.P5988526658546159440

`gcd(A057554(Δ[n²])+2, A025581(n)+2)`
-/

namespace A204030.P5988526658546159440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2) (A025581 n + 2)

end

end A204030.P5988526658546159440

namespace A204030

/-- `gcd(A057554(Δ[n²])+2, A025581(n)+2)` -/
def P5988526658546159440.Spec : Prop :=
  ∀ n, (P5988526658546159440.a n : ℤ) = A204030 (n + 1)

end A204030

/-! ## A204030.P2073379291592347817

`A003989(lt[1, A007318(n)]+1)`
-/

namespace A204030.P2073379291592347817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A204030.P2073379291592347817

namespace A204030

/-- `A003989(lt[1, A007318(n)]+1)` -/
def P2073379291592347817.Spec : Prop :=
  ∀ n, P2073379291592347817.a n = A204030 (n + 1)

end A204030

/-! ## A204030.P7799376280971428321

`A003989(lt[1, A128227(n)]+1)`
-/

namespace A204030.P7799376280971428321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A204030.P7799376280971428321

namespace A204030

/-- `A003989(lt[1, A128227(n)]+1)` -/
def P7799376280971428321.Spec : Prop :=
  ∀ n, P7799376280971428321.a n = A204030 (n + 1)

end A204030

/-! ## A204030.P16689489189188710232

`A003989(A131507(n)+4+n)`
-/

namespace A204030.P16689489189188710232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A131507 n + 4 + (n : ℤ)).toNat

end

end A204030.P16689489189188710232

namespace A204030

/-- `A003989(A131507(n)+4+n)` -/
def P16689489189188710232.Spec : Prop :=
  ∀ n, P16689489189188710232.a n = A204030 (n + 1)

end A204030

/-! ## A204030.P11265944550947543493

`A003989(lt[2, A004736(n+1)]+2)`
-/

namespace A204030.P11265944550947543493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A204030.P11265944550947543493

namespace A204030

/-- `A003989(lt[2, A004736(n+1)]+2)` -/
def P11265944550947543493.Spec : Prop :=
  ∀ n, P11265944550947543493.a n = A204030 (n + 1)

end A204030

/-! ## A204030.P12642541178881517302

`A003989(A080036(∑[A035214(n)]))`
-/

namespace A204030.P12642541178881517302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A080036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A204030.P12642541178881517302

namespace A204030

/-- `A003989(A080036(∑[A035214(n)]))` -/
def P12642541178881517302.Spec : Prop :=
  ∀ n, P12642541178881517302.a n = A204030 (n + 1)

end A204030

/-! ## A204030.P13447900178604344137

`A003989(A080036(A014132(n+1)))`
-/

namespace A204030.P13447900178604344137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A080036 (A014132 (n + 1)).toNat).toNat

end

end A204030.P13447900178604344137

namespace A204030

/-- `A003989(A080036(A014132(n+1)))` -/
def P13447900178604344137.Spec : Prop :=
  ∀ n, P13447900178604344137.a n = A204030 (n + 1)

end A204030

/-! ## A204030.P13400263632706788352

`A003989(A014132(A014132(n+1)+1))`
-/

namespace A204030.P13400263632706788352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A014132 (A014132 (n + 1) + 1).toNat).toNat

end

end A204030.P13400263632706788352

namespace A204030

/-- `A003989(A014132(A014132(n+1)+1))` -/
def P13400263632706788352.Spec : Prop :=
  ∀ n, P13400263632706788352.a n = A204030 (n + 1)

end A204030

/-! ## A204030.P6505261409297003723

`A050873(lt[3, A002260(n+2)])`
-/

namespace A204030.P6505261409297003723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A204030.P6505261409297003723

namespace A204030

/-- `A050873(lt[3, A002260(n+2)])` -/
def P6505261409297003723.Spec : Prop :=
  ∀ n, P6505261409297003723.a n = A204030 (n + 1)

end A204030

/-! ## A204030.P630817888528516833

`A109004(eq[0, A172090(n)])`
-/

namespace A204030.P630817888528516833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204030.P630817888528516833

namespace A204030

/-- `A109004(eq[0, A172090(n)])` -/
def P630817888528516833.Spec : Prop :=
  ∀ n, P630817888528516833.a n = A204030 (n + 1)

end A204030

/-!
# A204031: Number of (n+1)X(n+1) 0..1 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204031, there is no canonical definition to state claims against.
-/

/-! ## A204031.P18342282880033285865

`A204039(∑[4*n]+1)`
-/

namespace A204031.P18342282880033285865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204031.P18342282880033285865

/-! ## A204031.P10385803521349934416

`lcm(2, A204039(A001844(n)))`
-/

namespace A204031.P10385803521349934416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204039 (A001844 n).toNat)

end

end A204031.P10385803521349934416

/-! ## A204031.P6540446836166720955

`record[root(A204039(n+1), A331886(n))]`
-/

namespace A204031.P6540446836166720955
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204039 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204031.P6540446836166720955

/-! ## A204031.P18362761406138798370

`record[gcd(A114327(n), A204039(n+1))]`
-/

namespace A204031.P18362761406138798370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A204039 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204031.P18362761406138798370

/-! ## A204031.P11810296583198944000

`A204039(A001844(n))+A008683(9*(n+1))`
-/

namespace A204031.P11810296583198944000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A001844 n).toNat + A008683 (9 * (n + 1))

end

end A204031.P11810296583198944000

/-!
# A204032: Number of (n+1) X 2 0..1 arrays with the sums of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A204032, the canonical program `A204032.P5197991310784737255` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204032 has offset 1).

The definition of A204032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204032.P5197991310784737255

`A125128(A008619(n+3))*A125128(A008619(n)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204032

/-- `A125128(A008619(n+3))*A125128(A008619(n)+1)` -/
def P5197991310784737255.Spec : Prop :=
  ∀ n, P5197991310784737255.a n = A204032 (n + 1)

theorem P5197991310784737255.correct : P5197991310784737255.Spec := by
  intro n
  simp only [A204032, Nat.add_sub_cancel]

end A204032

/-! ## A204032.P12217314275055163054

`A253326(∑[n]+1)`
-/

namespace A204032.P12217314275055163054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204032.P12217314275055163054

namespace A204032

/-- `A253326(∑[n]+1)` -/
def P12217314275055163054.Spec : Prop :=
  ∀ n, P12217314275055163054.a n = A204032 (n + 1)

end A204032

/-! ## A204032.P3709664623602767351

`record[A253326(A056534(n+1))]`
-/

namespace A204032.P3709664623602767351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204032.P3709664623602767351

namespace A204032

/-- `record[A253326(A056534(n+1))]` -/
def P3709664623602767351.Spec : Prop :=
  ∀ n, P3709664623602767351.a n = A204032 (n + 1)

end A204032

/-! ## A204032.P7557781092364297726

`record[A253326(A114091(n+1))]`
-/

namespace A204032.P7557781092364297726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204032.P7557781092364297726

namespace A204032

/-- `record[A253326(A114091(n+1))]` -/
def P7557781092364297726.Spec : Prop :=
  ∀ n, P7557781092364297726.a n = A204032 (n + 1)

end A204032

/-! ## A204032.P17456854518256571553

`record[A253326(A249742(n+1))]`
-/

namespace A204032.P17456854518256571553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204032.P17456854518256571553

namespace A204032

/-- `record[A253326(A249742(n+1))]` -/
def P17456854518256571553.Spec : Prop :=
  ∀ n, P17456854518256571553.a n = A204032 (n + 1)

end A204032

/-!
# A204033: Number of (n+1)X3 0..1 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204033, there is no canonical definition to state claims against.
-/

/-! ## A204033.P751402020879911582

`A204039(∑[n+1]+2)`
-/

namespace A204033.P751402020879911582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204033.P751402020879911582

/-! ## A204033.P7477567877736658397

`record[A204039(A133263(A008611(n)))]`
-/

namespace A204033.P7477567877736658397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204033.P7477567877736658397

/-! ## A204033.P6716257800015095343

`A204039(A133263(n+1))+A000007(n+1)`
-/

namespace A204033.P6716257800015095343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A204033.P6716257800015095343

/-! ## A204033.P9068435581126747886

`A204039(A133263(n+1))+A000038(n+1)`
-/

namespace A204033.P9068435581126747886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A133263 (n + 1)).toNat + A000038 (n + 1)

end

end A204033.P9068435581126747886

/-! ## A204033.P5703097514630505845

`A010051(A000040(n+1))*A204039(A133263(n+1))`
-/

namespace A204033.P5703097514630505845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000040 (n + 1)).toNat * A204039 (A133263 (n + 1)).toNat

end

end A204033.P5703097514630505845

/-!
# A204034: Number of (n+1)X4 0..1 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204034, there is no canonical definition to state claims against.
-/

/-! ## A204034.P8684225563405894913

`A204039(∑[n+2]+4)`
-/

namespace A204034.P8684225563405894913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204034.P8684225563405894913

/-! ## A204034.P4263259287263273133

`A204039(A167614(n+1))+A025438(n)`
-/

namespace A204034.P4263259287263273133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A167614 (n + 1)).toNat + A025438 n

end

end A204034.P4263259287263273133

/-! ## A204034.P9454071773375531135

`A204039(A167614(n+1))+A025439(n)`
-/

namespace A204034.P9454071773375531135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A167614 (n + 1)).toNat + A025439 n

end

end A204034.P9454071773375531135

/-! ## A204034.P9515515661509382106

`A177849(n)*A204039(A167614(n+1))`
-/

namespace A204034.P9515515661509382106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A204039 (A167614 (n + 1)).toNat

end

end A204034.P9515515661509382106

/-! ## A204034.P1343970065480825985

`lcm(A057077(n), A204039(A167614(n+1)))`
-/

namespace A204034.P1343970065480825985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A204039 (A167614 (n + 1)).toNat)

end

end A204034.P1343970065480825985

/-!
# A204035: Number of (n+1)X5 0..1 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204035, there is no canonical definition to state claims against.
-/

/-! ## A204035.P15540848335595179633

`A204039(A374004(n+1))`
-/

namespace A204035.P15540848335595179633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A374004 (n + 1)).toNat

end

end A204035.P15540848335595179633

/-! ## A204035.P15859712706511046695

`A204039(A141214(n)+7)`
-/

namespace A204035.P15859712706511046695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A141214 n + 7).toNat

end

end A204035.P15859712706511046695

/-! ## A204035.P6430165871416074493

`A204039(A052905(n)+9)`
-/

namespace A204035.P6430165871416074493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A052905 n + 9).toNat

end

end A204035.P6430165871416074493

/-! ## A204035.P3576302204232174482

`A204039(A055999(n)+10)`
-/

namespace A204035.P3576302204232174482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A055999 n + 10).toNat

end

end A204035.P3576302204232174482

/-! ## A204035.P2990622070459221441

`A204039(A167614(n+2)+1)`
-/

namespace A204035.P2990622070459221441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A167614 (n + 2) + 1).toNat

end

end A204035.P2990622070459221441

/-!
# A204036: Number of (n+1)X6 0..1 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204036, there is no canonical definition to state claims against.
-/

/-! ## A204036.P1294509791945337032

`A204039(A374005(n+1))`
-/

namespace A204036.P1294509791945337032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A374005 (n + 1)).toNat

end

end A204036.P1294509791945337032

/-! ## A204036.P15947753295949722470

`A204039(A167499(n+3))`
-/

namespace A204036.P15947753295949722470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A167499 (n + 3)).toNat

end

end A204036.P15947753295949722470

/-! ## A204036.P10639334025334312264

`A204039(A027379(n+2)+8)`
-/

namespace A204036.P10639334025334312264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A027379 (n + 2) + 8).toNat

end

end A204036.P10639334025334312264

/-! ## A204036.P6114229026533786400

`A204039(A001057(Δ[A026046(n+6)]))`
-/

namespace A204036.P6114229026533786400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A001057 (f1 (n + 1) - f1 n).toNat).toNat

end

end A204036.P6114229026533786400

/-! ## A204036.P15927786544295632934

`A204039(A046691(n)+A005843(n+8))`
-/

namespace A204036.P15927786544295632934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A046691 n + A005843 (n + 8)).toNat

end

end A204036.P15927786544295632934

/-!
# A204037: Number of (n+1)X7 0..1 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204037, there is no canonical definition to state claims against.
-/

/-! ## A204037.P4791653975171882482

`A204039(A374007(n+1))`
-/

namespace A204037.P4791653975171882482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A374007 (n + 1)).toNat

end

end A204037.P4791653975171882482

/-! ## A204037.P11411011543432722308

`A204039(A167499(n+4)+1)`
-/

namespace A204037.P11411011543432722308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A167499 (n + 4) + 1).toNat

end

end A204037.P11411011543432722308

/-! ## A204037.P1718848945654209099

`A204039(A000124(n+5)+5)`
-/

namespace A204037.P1718848945654209099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A000124 (n + 5) + 5).toNat

end

end A204037.P1718848945654209099

/-! ## A204037.P16624273419822282249

`A204039(A000096(n+4)+7)`
-/

namespace A204037.P16624273419822282249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A000096 (n + 4) + 7).toNat

end

end A204037.P16624273419822282249

/-! ## A204037.P5106178575504862479

`A204039(A000217(n+5)+6)`
-/

namespace A204037.P5106178575504862479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A000217 (n + 5) + 6).toNat

end

end A204037.P5106178575504862479

/-!
# A204038: Number of (n+1)X8 0..1 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204038, there is no canonical definition to state claims against.
-/

/-! ## A204038.P1985087367789634308

`A204039(A374008(n+1))`
-/

namespace A204038.P1985087367789634308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A374008 (n + 1)).toNat

end

end A204038.P1985087367789634308

/-! ## A204038.P8799394864452403552

`A204039(A167499(n+5)+2)`
-/

namespace A204038.P8799394864452403552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A167499 (n + 5) + 2).toNat

end

end A204038.P8799394864452403552

/-! ## A204038.P5736578255600078350

`A204039(A000217(n+6)+7)`
-/

namespace A204038.P5736578255600078350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A000217 (n + 6) + 7).toNat

end

end A204038.P5736578255600078350

/-! ## A204038.P1704371468840939778

`A204039(A052905(n+3)+12)`
-/

namespace A204038.P1704371468840939778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 (A052905 (n + 3) + 12).toNat

end

end A204038.P1704371468840939778

/-! ## A204038.P5445393107021984434

`A204039(n+12+A000124(n+5))`
-/

namespace A204038.P5445393107021984434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204039 ((n + 12 : ℤ) + A000124 (n + 5)).toNat

end

end A204038.P5445393107021984434

/-!
# A204039: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204039, there is no canonical definition to state claims against.
-/

/-! ## A204039.P14911857481522102745

`A235413(n+1)-A303933(A001263(n+1))`
-/

namespace A204039.P14911857481522102745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235413 (n + 1) - A303933 (A001263 (n + 1)).toNat

end

end A204039.P14911857481522102745

/-! ## A204039.P13674548522820716826

`A238255(n+1)-and(-A238265(n+1), 2^n)`
-/

namespace A204039.P13674548522820716826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (n + 1) - Int.land (-A238265 (n + 1)) (2 ^ n : ℤ)

end

end A204039.P13674548522820716826

/-!
# A204040: Triangle T(n,k), read by rows, given by (0, 2, -2, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A204040, there is no canonical definition to state claims against.
-/

/-! ## A204040.P13858873919881315749

`A113953(n)-A343023(A229321(n+1))`
-/

namespace A204040.P13858873919881315749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113953 n - A343023 (A229321 (n + 1)).toNat

end

end A204040.P13858873919881315749

/-! ## A204040.P16995101164379209901

`A319574(n)-A343023(A229321(n+1))`
-/

namespace A204040.P16995101164379209901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 n - A343023 (A229321 (n + 1)).toNat

end

end A204040.P16995101164379209901

/-! ## A204040.P16615772621657496227

`A319574(n)-A349797(A250120(n+4))`
-/

namespace A204040.P16615772621657496227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 n - A349797 (A250120 (n + 4)).toNat

end

end A204040.P16615772621657496227

/-! ## A204040.P13534109282978706116

`(A221179(A187829(n+1))+1)*A221179(n)`
-/

namespace A204040.P13534109282978706116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221179 (A187829 (n + 1)).toNat + 1) * A221179 n

end

end A204040.P13534109282978706116

/-! ## A204040.P9425805453717809229

`A319574(n)-A349798(A000041(n))`
-/

namespace A204040.P9425805453717809229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 n - A349798 (A000041 n).toNat

end

end A204040.P9425805453717809229

/-!
# A204042: The number of functions f:{1,2,...,n}->{1,2,...,n} (endofunctions) such that all of the fixed points in f are isolated.

The programs for A204042, there is no canonical definition to state claims against.
-/

/-! ## A204042.P17903778732003476954

`A069862(A239840(n))`
-/

namespace A204042.P17903778732003476954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069862 (A239840 n).toNat

end

end A204042.P17903778732003476954

/-! ## A204042.P17991874321915682638

`A222235(A127112(n))`
-/

namespace A204042.P17991874321915682638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A127112 n).toNat

end

end A204042.P17991874321915682638

/-!
# A204046: Least term of A094179 with exactly 2n divisors.

The programs for A204046, there is no canonical definition to state claims against.
-/

/-! ## A204046.P11161057887166202039

`∩[A097755(n+1), A160785(n+1)]`
-/

namespace A204046.P11161057887166202039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204046.P11161057887166202039

/-!
# A204048: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204048, there is no canonical definition to state claims against.
-/

/-! ## A204048.P14293333159795936529

`A204056(∑[4*n]+1)`
-/

namespace A204048.P14293333159795936529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204048.P14293333159795936529

/-! ## A204048.P14083645367325728693

`record[gcd(A114327(n), A204056(n+1))]`
-/

namespace A204048.P14083645367325728693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A204056 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204048.P14083645367325728693

/-! ## A204048.P11585092185530743626

`A204056(A001844(n))+A064834(n)`
-/

namespace A204048.P11585092185530743626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A001844 n).toNat + A064834 n

end

end A204048.P11585092185530743626

/-! ## A204048.P18092371067852297650

`char[A002262(n)]*A204056(A001844(n))`
-/

namespace A204048.P18092371067852297650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A204056 (A001844 n).toNat

end

end A204048.P18092371067852297650

/-! ## A204048.P14482735074862183636

`char[A025581(n)]*A204056(A001844(n))`
-/

namespace A204048.P14482735074862183636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A204056 (A001844 n).toNat

end

end A204048.P14482735074862183636

/-!
# A204049: Number of (n+2)X3 0..3 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204049, there is no canonical definition to state claims against.
-/

/-! ## A204049.P15793202141901835527

`A204056(∑[n]+1)`
-/

namespace A204049.P15793202141901835527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204049.P15793202141901835527

/-! ## A204049.P6947275236519539540

`or(1, A204056(A000124(n)))`
-/

namespace A204049.P6947275236519539540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204056 (A000124 n).toNat)

end

end A204049.P6947275236519539540

/-! ## A204049.P319251368879982804

`record[A204056(n+1)/A013610(n)]`
-/

namespace A204049.P319251368879982804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204056 (n + 1) : ℚ) / (A013610 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204049.P319251368879982804

/-! ## A204049.P17281281213031414051

`record[A204056(n+1)/A074909(n)]`
-/

namespace A204049.P17281281213031414051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204056 (n + 1) : ℚ) / (A074909 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204049.P17281281213031414051

/-! ## A204049.P8502829307076264978

`record[gcd(A002262(n), A204056(n+1))]`
-/

namespace A204049.P8502829307076264978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204056 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204049.P8502829307076264978

/-!
# A204050: Number of (n+2) X 4 0..3 arrays with every 3 X 3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204050, there is no canonical definition to state claims against.
-/

/-! ## A204050.P1081471140659357142

`A204056(∑[n+1]+2)`
-/

namespace A204050.P1081471140659357142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204050.P1081471140659357142

/-! ## A204050.P16349871188654140279

`record[A204056(A080036(n+1))]`
-/

namespace A204050.P16349871188654140279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A080036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204050.P16349871188654140279

/-! ## A204050.P1394816017033885601

`record[gcd(A002262(n), A204056(n+2))]`
-/

namespace A204050.P1394816017033885601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204056 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204050.P1394816017033885601

/-! ## A204050.P10231655884366768071

`record[A204056(abs(A201163(n)))]`
-/

namespace A204050.P10231655884366768071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204050.P10231655884366768071

/-! ## A204050.P11776325972887079570

`record[A204056(Δ[A003453(n+5)])]`
-/

namespace A204050.P11776325972887079570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204050.P11776325972887079570

/-!
# A204051: Number of (n+2)X5 0..3 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204051, there is no canonical definition to state claims against.
-/

/-! ## A204051.P17729778827168608123

`A204056(A167614(n+1))`
-/

namespace A204051.P17729778827168608123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A167614 (n + 1)).toNat

end

end A204051.P17729778827168608123

/-! ## A204051.P15735180088140439997

`A204056(A046691(n)+7)`
-/

namespace A204051.P15735180088140439997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A046691 n + 7).toNat

end

end A204051.P15735180088140439997

/-! ## A204051.P16071527508501380467

`A204056(A167499(n)+n)`
-/

namespace A204051.P16071527508501380467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A167499 n + (n : ℤ)).toNat

end

end A204051.P16071527508501380467

/-! ## A204051.P10490675194964380914

`A204056(A166136(n+1)-3)`
-/

namespace A204051.P10490675194964380914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A166136 (n + 1) - 3).toNat

end

end A204051.P10490675194964380914

/-! ## A204051.P14326389512791749507

`A204056(eq[2, A131818(n+1)-2])`
-/

namespace A204051.P14326389512791749507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204051.P14326389512791749507

/-!
# A204052: Number of (n+2)X6 0..3 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204052, there is no canonical definition to state claims against.
-/

/-! ## A204052.P3714957385474391171

`A204056(∑[n+3]+7)`
-/

namespace A204052.P3714957385474391171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204052.P3714957385474391171

/-! ## A204052.P14624653102633161556

`A204056(A055999(n)+10)+A000035(2*(n+2))`
-/

namespace A204052.P14624653102633161556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A055999 n + 10).toNat + A000035 (2 * (n + 2))

end

end A204052.P14624653102633161556

/-! ## A204052.P8584833610871468955

`A204056(A112355(n+1)+4)%A204055(n+1)`
-/

namespace A204052.P8584833610871468955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204056 (A112355 (n + 1) + 4).toNat) (A204055 (n + 1))

end

end A204052.P8584833610871468955

/-! ## A204052.P6347139506673912593

`A248395(2*(n+1))+A204056(A141214(n+1))`
-/

namespace A204052.P6347139506673912593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (2 * (n + 1)) + A204056 (A141214 (n + 1)).toNat

end

end A204052.P6347139506673912593

/-!
# A204053: Number of (n+2)X7 0..3 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204053, there is no canonical definition to state claims against.
-/

/-! ## A204053.P2971141624877528902

`A204056(A056000(n)+15)`
-/

namespace A204053.P2971141624877528902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A056000 n + 15).toNat

end

end A204053.P2971141624877528902

/-! ## A204053.P16933036768687256983

`A204056(eq[6, A131818(n+1)])`
-/

namespace A204053.P16933036768687256983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204053.P16933036768687256983

/-! ## A204053.P10695383120913852827

`A204056(Δ[A264443(n)])`
-/

namespace A204053.P10695383120913852827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (f1 (n + 1) - f1 n).toNat

end

end A204053.P10695383120913852827

/-! ## A204053.P14188507992416021761

`A204056(A374005(n+1))`
-/

namespace A204053.P14188507992416021761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A374005 (n + 1)).toNat

end

end A204053.P14188507992416021761

/-! ## A204053.P18319925974123950018

`A204056(eq[4, A193592(n)])`
-/

namespace A204053.P18319925974123950018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204053.P18319925974123950018

/-!
# A204054: Number of (n+2)X8 0..3 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204054, there is no canonical definition to state claims against.
-/

/-! ## A204054.P10894048156171217181

`A204056(A000217(n+5)+6)`
-/

namespace A204054.P10894048156171217181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A000217 (n + 5) + 6).toNat

end

end A204054.P10894048156171217181

/-! ## A204054.P10875009683103394436

`A204056(eq[7, A131818(n+1)])`
-/

namespace A204054.P10875009683103394436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204054.P10875009683103394436

/-! ## A204054.P13046959283208083526

`A204056(A374007(n+1))`
-/

namespace A204054.P13046959283208083526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A374007 (n + 1)).toNat

end

end A204054.P13046959283208083526

/-! ## A204054.P11324208936227427630

`A204056(A052905(n+3))`
-/

namespace A204054.P11324208936227427630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A052905 (n + 3)).toNat

end

end A204054.P11324208936227427630

/-! ## A204054.P6164643584275559723

`A204056(eq[3, A219347(n)])`
-/

namespace A204054.P6164643584275559723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204054.P6164643584275559723

/-!
# A204055: Number of (n+2)X9 0..3 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204055, there is no canonical definition to state claims against.
-/

/-! ## A204055.P10848990325841346508

`A204056(eq[11, A066657(n)])`
-/

namespace A204055.P10848990325841346508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204055.P10848990325841346508

/-! ## A204055.P15929509191945735786

`A204056(eq[8, A131818(n+1)])`
-/

namespace A204055.P15929509191945735786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204055.P15929509191945735786

/-! ## A204055.P6099553777839839296

`A204056(A374008(n+1))`
-/

namespace A204055.P6099553777839839296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A374008 (n + 1)).toNat

end

end A204055.P6099553777839839296

/-! ## A204055.P521633144057787056

`A204056(A056121(n)+22)`
-/

namespace A204055.P521633144057787056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (A056121 n + 22).toNat

end

end A204055.P521633144057787056

/-! ## A204055.P9292781958756215329

`A204056(eq[4, A219347(n)])`
-/

namespace A204055.P9292781958756215329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204055.P9292781958756215329

/-!
# A204057: Triangle derived from an array of f(x), Narayana polynomials.

The programs for A204057, there is no canonical definition to state claims against.
-/

/-! ## A204057.P3388117966704079683

`A243631(comp[∑[n]])`
-/

namespace A204057.P3388117966704079683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204057.P3388117966704079683

/-! ## A204057.P4024166287338785630

`A008550(A099375(n)+n)`
-/

namespace A204057.P4024166287338785630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A099375 n + (n : ℤ)).toNat

end

end A204057.P4024166287338785630

/-! ## A204057.P2731934062760654826

`A008550(A038722(n+1)+A003056(n))`
-/

namespace A204057.P2731934062760654826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A038722 (n + 1) + A003056 n).toNat

end

end A204057.P2731934062760654826

/-! ## A204057.P15493747951214927095

`A008550(A061579(n)+A002024(n+1))`
-/

namespace A204057.P15493747951214927095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A061579 n + A002024 (n + 1)).toNat

end

end A204057.P15493747951214927095

/-! ## A204057.P16346796106943256573

`A008550(A143956(n+2)+n+1)`
-/

namespace A204057.P16346796106943256573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A143956 (n + 2) + (n + 1 : ℤ)).toNat

end

end A204057.P16346796106943256573

/-! ## A204057.P17103736373724714801

`A008550(A038722(n+2)+A002024(n+1))`
-/

namespace A204057.P17103736373724714801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A038722 (n + 2) + A002024 (n + 1)).toNat

end

end A204057.P17103736373724714801

/-! ## A204057.P1378016151297601938

`A008550(A380649(n+1))`
-/

namespace A204057.P1378016151297601938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A380649 (n + 1)).toNat

end

end A204057.P1378016151297601938

/-!
# A204060: G.f.: Sum_{n>=1} Fibonacci(n^2)*x^(n^2).

The programs for A204060, the canonical program `A204060.P7267899911717568045` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204060 has offset 1).

The definition of A204060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204060.P7267899911717568045

`A000045((n+1)*Δ[floor(sqrt(n))])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204060

/-- `A000045((n+1)*Δ[floor(sqrt(n))])` -/
def P7267899911717568045.Spec : Prop :=
  ∀ n, P7267899911717568045.a n = A204060 (n + 1)

theorem P7267899911717568045.correct : P7267899911717568045.Spec := by
  intro n
  simp only [A204060, Nat.add_sub_cancel]

end A204060

/-! ## A204060.P3982124168205305614

`and(or(n, -1), A000045(A037213(n+1)²))`
-/

namespace A204060.P3982124168205305614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor (n : ℤ) (-1)) (A000045 (A037213 (n + 1) ^ 2).toNat)

end

end A204060.P3982124168205305614

namespace A204060

/-- `and(or(n, -1), A000045(A037213(n+1)²))` -/
def P3982124168205305614.Spec : Prop :=
  ∀ n, P3982124168205305614.a n = A204060 (n + 1)

end A204060

/-! ## A204060.P2857908433761076032

`A000045(n+1)*char[n²-1]`
-/

namespace A204060.P2857908433761076032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A204060.P2857908433761076032

namespace A204060

/-- `A000045(n+1)*char[n²-1]` -/
def P2857908433761076032.Spec : Prop :=
  ∀ n, P2857908433761076032.a n = A204060 (n + 1)

end A204060

/-! ## A204060.P4161939969520410874

`∑[A212804(n)]*Δ[A000196(n)]`
-/

namespace A204060.P4161939969520410874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A204060.P4161939969520410874

namespace A204060

/-- `∑[A212804(n)]*Δ[A000196(n)]` -/
def P4161939969520410874.Spec : Prop :=
  ∀ n, P4161939969520410874.a n = A204060 (n + 1)

end A204060

/-! ## A204060.P37613625296719171

`and(1, A106828(n))*A000045(n+1)`
-/

namespace A204060.P37613625296719171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A106828 n) * A000045 (n + 1)

end

end A204060.P37613625296719171

namespace A204060

/-- `and(1, A106828(n))*A000045(n+1)` -/
def P37613625296719171.Spec : Prop :=
  ∀ n, P37613625296719171.a n = A204060 (n + 1)

end A204060

/-! ## A204060.P15158137490739837701

`(2-A169695(n+1))*A000045(n+1)`
-/

namespace A204060.P15158137490739837701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A169695 (n + 1)) * A000045 (n + 1)

end

end A204060.P15158137490739837701

namespace A204060

/-- `(2-A169695(n+1))*A000045(n+1)` -/
def P15158137490739837701.Spec : Prop :=
  ∀ n, P15158137490739837701.a n = A204060 (n + 1)

end A204060

/-! ## A204060.P13979958486843714924

`A000005(n+1)%2*A000045(n+1)`
-/

namespace A204060.P13979958486843714924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 2 * A000045 (n + 1)

end

end A204060.P13979958486843714924

namespace A204060

/-- `A000005(n+1)%2*A000045(n+1)` -/
def P13979958486843714924.Spec : Prop :=
  ∀ n, P13979958486843714924.a n = A204060 (n + 1)

end A204060

/-! ## A204060.P12514488833388113045

`A092265(n+1)%2*A000045(n+1)`
-/

namespace A204060.P12514488833388113045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092265 (n + 1)) 2 * A000045 (n + 1)

end

end A204060.P12514488833388113045

namespace A204060

/-- `A092265(n+1)%2*A000045(n+1)` -/
def P12514488833388113045.Spec : Prop :=
  ∀ n, P12514488833388113045.a n = A204060 (n + 1)

end A204060

/-! ## A204060.P12892565309231469348

`(A000196(n+1)-A000196(n))*A000045(n+1)`
-/

namespace A204060.P12892565309231469348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 (n + 1) - A000196 n) * A000045 (n + 1)

end

end A204060.P12892565309231469348

namespace A204060

/-- `(A000196(n+1)-A000196(n))*A000045(n+1)` -/
def P12892565309231469348.Spec : Prop :=
  ∀ n, P12892565309231469348.a n = A204060 (n + 1)

end A204060

/-! ## A204060.P11565944262984999585

`A006498(2*n)/A000045(n+1)*A010052(n+1)`
-/

namespace A204060.P11565944262984999585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006498 (2 * n) : ℚ) / (A000045 (n + 1) : ℚ) * (A010052 (n + 1) : ℚ)

end

end A204060.P11565944262984999585

namespace A204060

/-- `A006498(2*n)/A000045(n+1)*A010052(n+1)` -/
def P11565944262984999585.Spec : Prop :=
  ∀ n, P11565944262984999585.a n = (A204060 (n + 1) : ℚ)

end A204060

/-!
# A204061: G.f.: exp( Sum_{n>=1} A001333(n)^2 * x^n/n ) where A001333(n) = A002203(n)/2, one-half the companion Pell numbers.

The programs for A204061, there is no canonical definition to state claims against.
-/

/-! ## A204061.P10381417396729358724

`A208034(n)-a(n-1)` with `a(0)=1`
-/

namespace A204061.P10381417396729358724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208034 n - a (n - 1)

end

end A204061.P10381417396729358724

/-! ## A204061.P2136981262773425556

`A273007(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A204061.P2136981262773425556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A273007 ((n : ℤ) * a (n - 1)).toNat

end

end A204061.P2136981262773425556

/-!
# A204062: Expansion of g.f.: exp( Sum_{n>=1} A002203(n)^2 * x^n/n ) where A002203 are the companion Pell numbers.

The programs for A204062, the canonical program `A204062.P11689450979468691787` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204062 has offset 0).

The definition of A204062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204062.P11689450979468691787

`1/8*(A001109(n+2)+(-1)^n*(n+2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204062

/-- `1/8*(A001109(n+2)+(-1)^n*(n+2))` -/
def P11689450979468691787.Spec : Prop :=
  ∀ n, P11689450979468691787.a n = (A204062 n : ℚ)

end A204062

/-! ## A204062.P14808538605195244595

`1/16*(A000129(2*n+4)+2*(-1)^n*(n+2))`
-/

namespace A204062.P14808538605195244595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 16 * (A000129 (2 * n + 4) + 2 * (-1) ^ n * (n + 2 : ℤ) : ℚ)

end

end A204062.P14808538605195244595

namespace A204062

/-- `1/16*(A000129(2*n+4)+2*(-1)^n*(n+2))` -/
def P14808538605195244595.Spec : Prop :=
  ∀ n, P14808538605195244595.a n = (A204062 n : ℚ)

end A204062

/-! ## A204062.P3876983379325452788

`ogf(1/(1-4x-10x^2-4x^3+x^4))`
-/

namespace A204062.P3876983379325452788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -10, -4, 1] n

end

end A204062.P3876983379325452788

namespace A204062

/-- `ogf(1/(1-4x-10x^2-4x^3+x^4))` -/
def P3876983379325452788.Spec : Prop :=
  ∀ n, P3876983379325452788.a n = A204062 n

end A204062

/-! ## A204062.P5526810278388238729

`A084158(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A204062.P5526810278388238729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084158 (n + 1) - a (n - 1)

end

end A204062.P5526810278388238729

namespace A204062

/-- `A084158(n+1)-a(n-1)` -/
def P5526810278388238729.Spec : Prop :=
  ∀ n, P5526810278388238729.a n = A204062 n

end A204062

/-! ## A204062.P6124400766908869471

`a(n-2)+A077985(n)²` with `a(0)=1, a(1)=4`
-/

namespace A204062.P6124400766908869471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + A077985 n ^ 2

end

end A204062.P6124400766908869471

namespace A204062

/-- `a(n-2)+A077985(n)²` -/
def P6124400766908869471.Spec : Prop :=
  ∀ n, P6124400766908869471.a n = A204062 n

end A204062

/-! ## A204062.P3437434656995650563

`a(n-2)+∑[A001333(n)]²` with `a(0)=1, a(1)=4`
-/

namespace A204062.P3437434656995650563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A204062.P3437434656995650563

namespace A204062

/-- `a(n-2)+∑[A001333(n)]²` -/
def P3437434656995650563.Spec : Prop :=
  ∀ n, P3437434656995650563.a n = A204062 n

end A204062

/-! ## A204062.P5106678568279202049

`a(n-2)+Δ[A024537(n)]²` with `a(0)=1, a(1)=4`
-/

namespace A204062.P5106678568279202049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (f1 (n + 1) - f1 n) ^ 2

end

end A204062.P5106678568279202049

namespace A204062

/-- `a(n-2)+Δ[A024537(n)]²` -/
def P5106678568279202049.Spec : Prop :=
  ∀ n, P5106678568279202049.a n = A204062 n

end A204062

/-! ## A204062.P15827535293293475434

`a(n-2)+A000129(n+1)²` with `a(0)=1, a(1)=4`
-/

namespace A204062.P15827535293293475434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + A000129 (n + 1) ^ 2

end

end A204062.P15827535293293475434

namespace A204062

/-- `a(n-2)+A000129(n+1)²` -/
def P15827535293293475434.Spec : Prop :=
  ∀ n, P15827535293293475434.a n = A204062 n

end A204062

/-! ## A204062.P2148444667588710024

`∑[A176981(n+2)²-a(n-1)]` with `a(0)=1`
-/

namespace A204062.P2148444667588710024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A176981 (n + 2) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204062.P2148444667588710024

namespace A204062

/-- `∑[A176981(n+2)²-a(n-1)]` -/
def P2148444667588710024.Spec : Prop :=
  ∀ n, P2148444667588710024.a n = A204062 n

end A204062

/-! ## A204062.P17721583000235465867

`a(n-2)+A228405(∑[n+2])²` with `a(0)=1, a(1)=4`
-/

namespace A204062.P17721583000235465867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + A228405 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A204062.P17721583000235465867

namespace A204062

/-- `a(n-2)+A228405(∑[n+2])²` -/
def P17721583000235465867.Spec : Prop :=
  ∀ n, P17721583000235465867.a n = A204062 n

end A204062

/-! ## A204062.P871351986199366554

`∑[A001653(n+1)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A204062.P871351986199366554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001653 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A204062.P871351986199366554

namespace A204062

/-- `∑[A001653(n+1)-a(n-1)]-a(n-1)` -/
def P871351986199366554.Spec : Prop :=
  ∀ n, P871351986199366554.a n = A204062 n

end A204062

/-! ## A204062.P937430835988034920

`a(n-2)+(A006684(n)-A106515(n))²` with `a(0)=1, a(1)=4`
-/

namespace A204062.P937430835988034920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (A006684 n - A106515 n) ^ 2

end

end A204062.P937430835988034920

namespace A204062

/-- `a(n-2)+(A006684(n)-A106515(n))²` -/
def P937430835988034920.Spec : Prop :=
  ∀ n, P937430835988034920.a n = A204062 n

end A204062

/-!
# A204064: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k + n*x) / (1 + k*x + n*x^2).

The programs for A204064, there is no canonical definition to state claims against.
-/

/-! ## A204064.P13480888145347326468

`ceil(A229046(n+1)/2)`
-/

namespace A204064.P13480888145347326468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A229046 (n + 1) : ℚ) / 2⌉

end

end A204064.P13480888145347326468

/-! ## A204064.P2787035649362668793

`A229046(n*a((n-1)%2)+1)/2` with `a(0)=1`
-/

namespace A204064.P2787035649362668793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A229046 (SequenceMachineLib.roundAway ((n : ℚ) * a (Int.tmod ((n : ℤ) - 1) 2).toNat + 1)).toNat : ℚ) / 2

end

end A204064.P2787035649362668793

/-! ## A204064.P1554001289125459172

`A229046(n+1)/(4*n+2-A004277(2*n))`
-/

namespace A204064.P1554001289125459172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229046 (n + 1) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A204064.P1554001289125459172

/-! ## A204064.P15005065433720855020

`A229046(n+1)/A020639(A004277(n))`
-/

namespace A204064.P15005065433720855020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229046 (n + 1) : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A204064.P15005065433720855020

/-! ## A204064.P13718346468775650206

`A229046(n+1)/A020639(A265284(n))`
-/

namespace A204064.P13718346468775650206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229046 (n + 1) : ℚ) / (A020639 (A265284 n).toNat : ℚ)

end

end A204064.P13718346468775650206

/-! ## A204064.P15651227607410171677

`A229046(n+1)/A034444(A020639(n+1))`
-/

namespace A204064.P15651227607410171677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229046 (n + 1) : ℚ) / (A034444 (A020639 (n + 1)).toNat : ℚ)

end

end A204064.P15651227607410171677

/-! ## A204064.P9667966916027161851

`A229046(n+1)/A020639(A008706(2*n))`
-/

namespace A204064.P9667966916027161851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229046 (n + 1) : ℚ) / (A020639 (A008706 (2 * n)).toNat : ℚ)

end

end A204064.P9667966916027161851

/-! ## A204064.P3291690630546635482

`A229046(n+1)/A020639(A008706(n)+n)`
-/

namespace A204064.P3291690630546635482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229046 (n + 1) : ℚ) / (A020639 (A008706 n + (n : ℤ)).toNat : ℚ)

end

end A204064.P3291690630546635482

/-! ## A204064.P10897982046893811213

`A229046(n+1)/A034444(A034444(2*n+1))`
-/

namespace A204064.P10897982046893811213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229046 (n + 1) : ℚ) / (A034444 (A034444 (2 * n + 1)).toNat : ℚ)

end

end A204064.P10897982046893811213

/-!
# A204065: Least nonnegative integer k with n+k and n+k^2 both prime.

The programs for A204065, there is no canonical definition to state claims against.
-/

/-! ## A204065.P16627100430314702418

`A005171(n+1)*A243145(n+1)`
-/

namespace A204065.P16627100430314702418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A243145 (n + 1)

end

end A204065.P16627100430314702418

/-! ## A204065.P8852052787822539593

`(1-A010051(n+1))*A243145(n+1)`
-/

namespace A204065.P8852052787822539593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A243145 (n + 1)

end

end A204065.P8852052787822539593

/-! ## A204065.P9145127612030754179

`(A014684(n+1)-n)*A243145(n+1)`
-/

namespace A204065.P9145127612030754179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) - (n : ℤ)) * A243145 (n + 1)

end

end A204065.P9145127612030754179

/-! ## A204065.P6236776711061941778

`A010051(A026234(n+1))*A243145(n+1)`
-/

namespace A204065.P6236776711061941778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A026234 (n + 1)).toNat * A243145 (n + 1)

end

end A204065.P6236776711061941778

/-! ## A204065.P12984540140851716158

`A000007(A049084(n+1))*A243145(n+1)`
-/

namespace A204065.P12984540140851716158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049084 (n + 1)).toNat * A243145 (n + 1)

end

end A204065.P12984540140851716158

/-! ## A204065.P11884787000026952210

`A243145(n+1)%(A014963(n+1)-A097062(n+1))`
-/

namespace A204065.P11884787000026952210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243145 (n + 1)) (A014963 (n + 1) - A097062 (n + 1))

end

end A204065.P11884787000026952210

/-! ## A204065.P16456456252421580931

`A243145(n+1)%A259175(n+1)`
-/

namespace A204065.P16456456252421580931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243145 (n + 1)) (A259175 (n + 1))

end

end A204065.P16456456252421580931

/-!
# A204066: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (n + k*x) / (1 + n*x + k*x^2).

The programs for A204066, there is no canonical definition to state claims against.
-/

/-! ## A204066.P17565241947436727576

`A073081(∑[A072372(n)])`
-/

namespace A204066.P17565241947436727576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204066.P17565241947436727576

/-! ## A204066.P8129461185824679896

`A296655(A187595(n+1)*A263780(n))`
-/

namespace A204066.P8129461185824679896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296655 (A187595 (n + 1) * A263780 n).toNat

end

end A204066.P8129461185824679896

/-!
# A204069: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204069, there is no canonical definition to state claims against.
-/

/-! ## A204069.P16951763054060700443

`A204076((n+1)²+n²)`
-/

namespace A204069.P16951763054060700443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 ((n + 1) ^ 2 + n ^ 2)

end

end A204069.P16951763054060700443

/-! ## A204069.P1671993591088653258

`record[A204076(A330613(n+1))]`
-/

namespace A204069.P1671993591088653258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204069.P1671993591088653258

/-! ## A204069.P13842697605610783630

`(A223203(n+2)+1)/2`
-/

namespace A204069.P13842697605610783630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223203 (n + 2) + 1 : ℚ) / 2

end

end A204069.P13842697605610783630

/-! ## A204069.P15015374020876710696

`ceil(A203828(n+1)/6)`
-/

namespace A204069.P15015374020876710696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203828 (n + 1) : ℚ) / 6⌉

end

end A204069.P15015374020876710696

/-!
# A204070: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204070, the canonical program `A204070.P10338910400716795253` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204070 has offset 1).

The definition of A204070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204070.P10338910400716795253

`ceil(A223204(n+2)/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204070

/-- `ceil(A223204(n+2)/2)` -/
def P10338910400716795253.Spec : Prop :=
  ∀ n, P10338910400716795253.a n = A204070 (n + 1)

theorem P10338910400716795253.correct : P10338910400716795253.Spec := by
  intro n
  simp only [A204070, Nat.add_sub_cancel]

end A204070

/-! ## A204070.P10061695944153142832

`floor(A003557(A005117(n+1))+A223204(n+2)/2)`
-/

namespace A204070.P10061695944153142832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003557 (A005117 (n + 1)).toNat : ℚ) + (A223204 (n + 2) : ℚ) / 2⌋

end

end A204070.P10061695944153142832

namespace A204070

/-- `floor(A003557(A005117(n+1))+A223204(n+2)/2)` -/
def P10061695944153142832.Spec : Prop :=
  ∀ n, P10061695944153142832.a n = A204070 (n + 1)

end A204070

/-! ## A204070.P3297812042568652730

`floor(A259936(A006530(n+1))+A223204(n+2)/2)`
-/

namespace A204070.P3297812042568652730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259936 (A006530 (n + 1)).toNat : ℚ) + (A223204 (n + 2) : ℚ) / 2⌋

end

end A204070.P3297812042568652730

namespace A204070

/-- `floor(A259936(A006530(n+1))+A223204(n+2)/2)` -/
def P3297812042568652730.Spec : Prop :=
  ∀ n, P3297812042568652730.a n = A204070 (n + 1)

end A204070

/-! ## A204070.P16321017380594369750

`ceil(A203829(n+1)/6)`
-/

namespace A204070.P16321017380594369750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203829 (n + 1) : ℚ) / 6⌉

end

end A204070.P16321017380594369750

namespace A204070

/-- `ceil(A203829(n+1)/6)` -/
def P16321017380594369750.Spec : Prop :=
  ∀ n, P16321017380594369750.a n = A204070 (n + 1)

theorem P16321017380594369750.correct : P16321017380594369750.Spec := by
  intro n
  simp only [A204070, Nat.add_sub_cancel, A204070.P16321017380594369750.a, A204070.P10338910400716795253.a, A203829, A203829.P4022856505637105064.a, A223204, A223204.P11673993963763712133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204070

/-! ## A204070.P2998111883541156154

`floor(A066328(A100587(n+1)+1)+A203829(n+1)/6)`
-/

namespace A204070.P2998111883541156154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066328 (A100587 (n + 1) + 1).toNat : ℚ) + (A203829 (n + 1) : ℚ) / 6⌋

end

end A204070.P2998111883541156154

namespace A204070

/-- `floor(A066328(A100587(n+1)+1)+A203829(n+1)/6)` -/
def P2998111883541156154.Spec : Prop :=
  ∀ n, P2998111883541156154.a n = A204070 (n + 1)

end A204070

/-!
# A204071: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204071, there is no canonical definition to state claims against.
-/

/-! ## A204071.P12927531091242662970

`ceil(A223205(n+2)/2)`
-/

namespace A204071.P12927531091242662970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A223205 (n + 2) : ℚ) / 2⌉

end

end A204071.P12927531091242662970

/-! ## A204071.P8738564343901333924

`ceil(A203830(n+1)/6)`
-/

namespace A204071.P8738564343901333924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203830 (n + 1) : ℚ) / 6⌉

end

end A204071.P8738564343901333924

/-! ## A204071.P13967198808347360526

`A204076(∑[n+2]+4)`
-/

namespace A204071.P13967198808347360526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204071.P13967198808347360526

/-! ## A204071.P1902131464624379877

`lcm(2, A204076(A167614(n+1)))`
-/

namespace A204071.P1902131464624379877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204076 (A167614 (n + 1)).toNat)

end

end A204071.P1902131464624379877

/-! ## A204071.P1458034987201916292

`A204076(A167614(n+1))+A025438(n)`
-/

namespace A204071.P1458034987201916292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A167614 (n + 1)).toNat + A025438 n

end

end A204071.P1458034987201916292

/-!
# A204072: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204072, there is no canonical definition to state claims against.
-/

/-! ## A204072.P6762562529599372730

`ceil(A223206(n+2)/2)`
-/

namespace A204072.P6762562529599372730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A223206 (n + 2) : ℚ) / 2⌉

end

end A204072.P6762562529599372730

/-! ## A204072.P4627121806475746866

`ceil(A203831(n+1)/6)`
-/

namespace A204072.P4627121806475746866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203831 (n + 1) : ℚ) / 6⌉

end

end A204072.P4627121806475746866

/-! ## A204072.P9564946653487537981

`A204076(A374004(n+1))`
-/

namespace A204072.P9564946653487537981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A374004 (n + 1)).toNat

end

end A204072.P9564946653487537981

/-! ## A204072.P17174947155724056814

`A204076(A055999(n)+10)`
-/

namespace A204072.P17174947155724056814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A055999 n + 10).toNat

end

end A204072.P17174947155724056814

/-! ## A204072.P14429533504256887951

`A204076(A167614(n+2)+1)`
-/

namespace A204072.P14429533504256887951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A167614 (n + 2) + 1).toNat

end

end A204072.P14429533504256887951

/-!
# A204073: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204073, there is no canonical definition to state claims against.
-/

/-! ## A204073.P6056274941198883792

`(A223207(n+2)+1)/2`
-/

namespace A204073.P6056274941198883792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223207 (n + 2) + 1 : ℚ) / 2

end

end A204073.P6056274941198883792

/-! ## A204073.P7255160143271985644

`ceil(A203832(n+1)/6)`
-/

namespace A204073.P7255160143271985644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203832 (n + 1) : ℚ) / 6⌉

end

end A204073.P7255160143271985644

/-! ## A204073.P11037670415584371134

`round(A008683(4*(n+1))+A203832(n+1)/6)`
-/

namespace A204073.P11037670415584371134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (4 * (n + 1)) : ℚ) + (A203832 (n + 1) : ℚ) / 6)

end

end A204073.P11037670415584371134

/-! ## A204073.P3744575042697578830

`A204076(A374005(n+1))`
-/

namespace A204073.P3744575042697578830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A374005 (n + 1)).toNat

end

end A204073.P3744575042697578830

/-! ## A204073.P5641615971790081124

`A204076(A167499(n+3))`
-/

namespace A204073.P5641615971790081124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A167499 (n + 3)).toNat

end

end A204073.P5641615971790081124

/-!
# A204074: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204074, there is no canonical definition to state claims against.
-/

/-! ## A204074.P17425795507811324898

`ceil(A203833(n+1)/6)`
-/

namespace A204074.P17425795507811324898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203833 (n + 1) : ℚ) / 6⌉

end

end A204074.P17425795507811324898

/-! ## A204074.P11093234101912239357

`(A223208(n+2)+1)/2`
-/

namespace A204074.P11093234101912239357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223208 (n + 2) + 1 : ℚ) / 2

end

end A204074.P11093234101912239357

/-! ## A204074.P1150970722227332730

`A204076(A374007(n+1))`
-/

namespace A204074.P1150970722227332730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A374007 (n + 1)).toNat

end

end A204074.P1150970722227332730

/-! ## A204074.P2394844009270920739

`ceil(A203835(Δ[A264443(n+1)]-1)/6)`
-/

namespace A204074.P2394844009270920739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203835 (f1 (n + 1) - f1 n - 1).toNat : ℚ) / 6⌉

end

end A204074.P2394844009270920739

/-!
# A204075: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204075, there is no canonical definition to state claims against.
-/

/-! ## A204075.P10676229656086279880

`ceil(A203834(n+1)/6)`
-/

namespace A204075.P10676229656086279880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203834 (n + 1) : ℚ) / 6⌉

end

end A204075.P10676229656086279880

/-! ## A204075.P4337314212136155677

`A204076(A374008(n+1))`
-/

namespace A204075.P4337314212136155677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A374008 (n + 1)).toNat

end

end A204075.P4337314212136155677

/-! ## A204075.P14495669069284198170

`A204076(A027379(4-(n-2*n))+10)`
-/

namespace A204075.P14495669069284198170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204076 (A027379 (4 - ((n : ℤ) - (2 * n : ℤ))).toNat + 10).toNat

end

end A204075.P14495669069284198170

/-!
# A204076: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204076, there is no canonical definition to state claims against.
-/

/-! ## A204076.P8169419152937942392

`ceil(A203835(n+1)/6)`
-/

namespace A204076.P8169419152937942392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A203835 (n + 1) : ℚ) / 6⌉

end

end A204076.P8169419152937942392

/-! ## A204076.P15655552862661877536

`round(A203835((n+1)%a(n-1))/6)` with `a(0)=8`
-/

namespace A204076.P15655552862661877536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  SequenceMachineLib.roundAway ((A203835 (Int.tmod (n + 1 : ℤ) (a (n - 1))).toNat : ℚ) / 6)

end

end A204076.P15655552862661877536

/-! ## A204076.P4775406607506159457

`round(A203835(n+1)/6)*char[A064429(n)]`
-/

namespace A204076.P4775406607506159457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203835 (n + 1) : ℚ) / 6) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A204076.P4775406607506159457

/-! ## A204076.P13956640230689846315

`round(A203835(n+1)/6)*char[A071045(n)]`
-/

namespace A204076.P13956640230689846315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203835 (n + 1) : ℚ) / 6) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A204076.P13956640230689846315

/-! ## A204076.P2062483589960772786

`round(A203835(n+1)/6)*A057427(n+1)`
-/

namespace A204076.P2062483589960772786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203835 (n + 1) : ℚ) / 6) * A057427 (n + 1)

end

end A204076.P2062483589960772786

/-! ## A204076.P9245224049009408307

`char[A016827(2*n+1)]+round(A203835(n+1)/6)`
-/

namespace A204076.P9245224049009408307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A203835 (n + 1) : ℚ) / 6)

end

end A204076.P9245224049009408307

/-! ## A204076.P9529931769589003350

`floor(A203835(n+1)/6-A280193(A099375(n)))`
-/

namespace A204076.P9529931769589003350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A203835 (n + 1) : ℚ) / 6 - (A280193 (A099375 n).toNat : ℚ)⌋

end

end A204076.P9529931769589003350

/-! ## A204076.P1654411885024140300

`floor(A000035(A001650(n+1))+A203835(n+1)/6)`
-/

namespace A204076.P1654411885024140300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000035 (A001650 (n + 1)).toNat : ℚ) + (A203835 (n + 1) : ℚ) / 6⌋

end

end A204076.P1654411885024140300

/-! ## A204076.P14618409479466902238

`A292144(A322356(n+1))+round(A203835(n+1)/6)`
-/

namespace A204076.P14618409479466902238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (A322356 (n + 1)).toNat + SequenceMachineLib.roundAway ((A203835 (n + 1) : ℚ) / 6)

end

end A204076.P14618409479466902238

/-!
# A204077: Number of n X n 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A204077, there is no canonical definition to state claims against.
-/

/-! ## A204077.P9770114902496000682

`A204084(∑[4*n]+1)`
-/

namespace A204077.P9770114902496000682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204077.P9770114902496000682

/-! ## A204077.P14811395530725182119

`record[A204084(A326454(n))]`
-/

namespace A204077.P14811395530725182119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A326454 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204077.P14811395530725182119

/-! ## A204077.P15754996435539850444

`lcm(2, A204084(A001844(n)))`
-/

namespace A204077.P15754996435539850444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204084 (A001844 n).toNat)

end

end A204077.P15754996435539850444

/-! ## A204077.P16243915918095696810

`record[A204084(Δ[A235355(n)])]`
-/

namespace A204077.P16243915918095696810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204077.P16243915918095696810

/-!
# A204078: Number of nX2 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A204078, the canonical program `A204078.P4825604268406451473` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204078 has offset 1).

The definition of A204078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204078.P189605518242863040

`4*round(2^(n+1)/7)²`
-/

namespace A204078.P189605518242863040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((2 ^ (n + 1) : ℚ) / 7) ^ 2

end

end A204078.P189605518242863040

namespace A204078

/-- `4*round(2^(n+1)/7)²` -/
def P189605518242863040.Spec : Prop :=
  ∀ n, P189605518242863040.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P4825604268406451473

`A152732(n+2)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204078

/-- `A152732(n+2)²` -/
def P4825604268406451473.Spec : Prop :=
  ∀ n, P4825604268406451473.a n = A204078 (n + 1)

theorem P4825604268406451473.correct : P4825604268406451473.Spec := by
  intro n
  simp only [A204078, Nat.add_sub_cancel]

end A204078

/-! ## A204078.P6540264605399394629

`Δ[A063823(n+2)]²`
-/

namespace A204078.P6540264605399394629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063823 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A204078.P6540264605399394629

namespace A204078

/-- `Δ[A063823(n+2)]²` -/
def P6540264605399394629.Spec : Prop :=
  ∀ n, P6540264605399394629.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P5548066116589785320

`Δ[or(1, A077947(n))]²`
-/

namespace A204078.P5548066116589785320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077947 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A204078.P5548066116589785320

namespace A204078

/-- `Δ[or(1, A077947(n))]²` -/
def P5548066116589785320.Spec : Prop :=
  ∀ n, P5548066116589785320.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P14140705152082080207

`(1-or(1, A046630(n)))²`
-/

namespace A204078.P14140705152082080207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.lor 1 (A046630 n)) ^ 2

end

end A204078.P14140705152082080207

namespace A204078

/-- `(1-or(1, A046630(n)))²` -/
def P14140705152082080207.Spec : Prop :=
  ∀ n, P14140705152082080207.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P6922680629428748860

`Δ[Δ[2*A178455(n)]]²`
-/

namespace A204078.P6922680629428748860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178455 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A204078.P6922680629428748860

namespace A204078

/-- `Δ[Δ[2*A178455(n)]]²` -/
def P6922680629428748860.Spec : Prop :=
  ∀ n, P6922680629428748860.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P9035900758015202802

`Δ[2*A155803(n+1)]²`
-/

namespace A204078.P9035900758015202802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A204078.P9035900758015202802

namespace A204078

/-- `Δ[2*A155803(n+1)]²` -/
def P9035900758015202802.Spec : Prop :=
  ∀ n, P9035900758015202802.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P5689269407118757814

`(A010892(n)-A077972(n))²`
-/

namespace A204078.P5689269407118757814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010892 n - A077972 n) ^ 2

end

end A204078.P5689269407118757814

namespace A204078

/-- `(A010892(n)-A077972(n))²` -/
def P5689269407118757814.Spec : Prop :=
  ∀ n, P5689269407118757814.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P6381088035388192261

`(A049347(n)-A077947(n))²`
-/

namespace A204078.P6381088035388192261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 n - A077947 n) ^ 2

end

end A204078.P6381088035388192261

namespace A204078

/-- `(A049347(n)-A077947(n))²` -/
def P6381088035388192261.Spec : Prop :=
  ∀ n, P6381088035388192261.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P14316033183603520263

`(A049347(n)-abs(A077972(n)))²`
-/

namespace A204078.P14316033183603520263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 n - |A077972 n|) ^ 2

end

end A204078.P14316033183603520263

namespace A204078

/-- `(A049347(n)-abs(A077972(n)))²` -/
def P14316033183603520263.Spec : Prop :=
  ∀ n, P14316033183603520263.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P17539581452771442146

`(A049347(n)-∑[A078010(n)])²`
-/

namespace A204078.P17539581452771442146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 n - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A204078.P17539581452771442146

namespace A204078

/-- `(A049347(n)-∑[A078010(n)])²` -/
def P17539581452771442146.Spec : Prop :=
  ∀ n, P17539581452771442146.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P14127005820726116466

`(A294627(n+1)-A078010(n))²`
-/

namespace A204078.P14127005820726116466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294627 (n + 1) - A078010 n) ^ 2

end

end A204078.P14127005820726116466

namespace A204078

/-- `(A294627(n+1)-A078010(n))²` -/
def P14127005820726116466.Spec : Prop :=
  ∀ n, P14127005820726116466.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P10096883650821258420

`(A011655(n+2)-A046630(n))²`
-/

namespace A204078.P10096883650821258420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 (n + 2) - A046630 n) ^ 2

end

end A204078.P10096883650821258420

namespace A204078

/-- `(A011655(n+2)-A046630(n))²` -/
def P10096883650821258420.Spec : Prop :=
  ∀ n, P10096883650821258420.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P6412273100930648562

`(A057078(2*n)-A077947(n))²`
-/

namespace A204078.P6412273100930648562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 (2 * n) - A077947 n) ^ 2

end

end A204078.P6412273100930648562

namespace A204078

/-- `(A057078(2*n)-A077947(n))²` -/
def P6412273100930648562.Spec : Prop :=
  ∀ n, P6412273100930648562.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P8643827670988748052

`(2*(A077947(n)-A078010(n)))²`
-/

namespace A204078.P8643827670988748052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A077947 n - A078010 n)) ^ 2

end

end A204078.P8643827670988748052

namespace A204078

/-- `(2*(A077947(n)-A078010(n)))²` -/
def P8643827670988748052.Spec : Prop :=
  ∀ n, P8643827670988748052.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P6964117858869591885

`(A010892(4*n)-A077947(n))²`
-/

namespace A204078.P6964117858869591885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010892 (4 * n) - A077947 n) ^ 2

end

end A204078.P6964117858869591885

namespace A204078

/-- `(A010892(4*n)-A077947(n))²` -/
def P6964117858869591885.Spec : Prop :=
  ∀ n, P6964117858869591885.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P941752661709587944

`and(A046630(n), A134067(n+1))²`
-/

namespace A204078.P941752661709587944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046630 n) (A134067 (n + 1)) ^ 2

end

end A204078.P941752661709587944

namespace A204078

/-- `and(A046630(n), A134067(n+1))²` -/
def P941752661709587944.Spec : Prop :=
  ∀ n, P941752661709587944.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P15081545593416904505

`(A057078(n+1)-A078010(n+1))²`
-/

namespace A204078.P15081545593416904505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 (n + 1) - A078010 (n + 1)) ^ 2

end

end A204078.P15081545593416904505

namespace A204078

/-- `(A057078(n+1)-A078010(n+1))²` -/
def P15081545593416904505.Spec : Prop :=
  ∀ n, P15081545593416904505.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P1965797088025230746

`(A077947(n)+A049347(2*n+1))²`
-/

namespace A204078.P1965797088025230746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077947 n + A049347 (2 * n + 1)) ^ 2

end

end A204078.P1965797088025230746

namespace A204078

/-- `(A077947(n)+A049347(2*n+1))²` -/
def P1965797088025230746.Spec : Prop :=
  ∀ n, P1965797088025230746.a n = A204078 (n + 1)

end A204078

/-! ## A204078.P4584344784685537845

`(A063823(n+2)-A063823(n+3))²`
-/

namespace A204078.P4584344784685537845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063823 (n + 2) - A063823 (n + 3)) ^ 2

end

end A204078.P4584344784685537845

namespace A204078

/-- `(A063823(n+2)-A063823(n+3))²` -/
def P4584344784685537845.Spec : Prop :=
  ∀ n, P4584344784685537845.a n = A204078 (n + 1)

end A204078

/-!
# A204079: Number of nX3 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A204079, there is no canonical definition to state claims against.
-/

/-! ## A204079.P16115230481058412119

`A204084(∑[n+2]+4)`
-/

namespace A204079.P16115230481058412119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204079.P16115230481058412119

/-! ## A204079.P14498915092206791750

`lcm(2, A204084(A167614(n+1)))`
-/

namespace A204079.P14498915092206791750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204084 (A167614 (n + 1)).toNat)

end

end A204079.P14498915092206791750

/-! ## A204079.P18201114435321097482

`A204084(A167614(n+1))+A011731(n)`
-/

namespace A204079.P18201114435321097482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A167614 (n + 1)).toNat + A011731 n

end

end A204079.P18201114435321097482

/-! ## A204079.P13566959652059759129

`A057427(n)*A204084(A167614(n+1))`
-/

namespace A204079.P13566959652059759129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A204084 (A167614 (n + 1)).toNat

end

end A204079.P13566959652059759129

/-! ## A204079.P9687188514972699171

`A204084(A167614(n+1))%A008700(n)`
-/

namespace A204079.P9687188514972699171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204084 (A167614 (n + 1)).toNat) (A008700 n)

end

end A204079.P9687188514972699171

/-!
# A204080: Number of nX4 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A204080, there is no canonical definition to state claims against.
-/

/-! ## A204080.P14473913197987744531

`A204084(A374004(n+1))`
-/

namespace A204080.P14473913197987744531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A374004 (n + 1)).toNat

end

end A204080.P14473913197987744531

/-! ## A204080.P2641483838915301069

`A204084(A141214(n)+7)`
-/

namespace A204080.P2641483838915301069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A141214 n + 7).toNat

end

end A204080.P2641483838915301069

/-! ## A204080.P12103481854930691978

`A204084(A052905(n)+9)`
-/

namespace A204080.P12103481854930691978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A052905 n + 9).toNat

end

end A204080.P12103481854930691978

/-! ## A204080.P16892755898172122734

`A204084(A055999(n)+10)`
-/

namespace A204080.P16892755898172122734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A055999 n + 10).toNat

end

end A204080.P16892755898172122734

/-! ## A204080.P10582241723465784745

`A204084(A167614(n+2)+1)`
-/

namespace A204080.P10582241723465784745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A167614 (n + 2) + 1).toNat

end

end A204080.P10582241723465784745

/-!
# A204081: Number of nX5 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A204081, there is no canonical definition to state claims against.
-/

/-! ## A204081.P2038967840373042039

`A204084(A374005(n+1))`
-/

namespace A204081.P2038967840373042039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A374005 (n + 1)).toNat

end

end A204081.P2038967840373042039

/-! ## A204081.P332131528414952322

`A204084(A155212(n)+13)`
-/

namespace A204081.P332131528414952322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A155212 n + 13).toNat

end

end A204081.P332131528414952322

/-! ## A204081.P2024939274566805315

`A204084(A056000(n)+15)`
-/

namespace A204081.P2024939274566805315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A056000 n + 15).toNat

end

end A204081.P2024939274566805315

/-! ## A204081.P9800165575149437196

`A204084(eq[7, A066657(n)])`
-/

namespace A204081.P9800165575149437196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204081.P9800165575149437196

/-! ## A204081.P14155615272770203871

`A204084(eq[6, A131818(n+1)])`
-/

namespace A204081.P14155615272770203871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204081.P14155615272770203871

/-!
# A204082: Number of nX6 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A204082, there is no canonical definition to state claims against.
-/

/-! ## A204082.P2151779055521459389

`A204084(A374007(n+1))`
-/

namespace A204082.P2151779055521459389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A374007 (n + 1)).toNat

end

end A204082.P2151779055521459389

/-! ## A204082.P17059400441095548369

`A204084(eq[7, A131818(n+1)])`
-/

namespace A204082.P17059400441095548369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204082.P17059400441095548369

/-! ## A204082.P8098938769426899725

`A204084(eq[3, A219347(n)])`
-/

namespace A204082.P8098938769426899725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204082.P8098938769426899725

/-! ## A204082.P17257540541037504044

`A204084(eq[5, A193592(n)])`
-/

namespace A204082.P17257540541037504044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204082.P17257540541037504044

/-! ## A204082.P10911899268028702807

`A204084(A000096(n+5)-4)`
-/

namespace A204082.P10911899268028702807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A000096 (n + 5) - 4).toNat

end

end A204082.P10911899268028702807

/-!
# A204083: Number of nX7 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A204083, there is no canonical definition to state claims against.
-/

/-! ## A204083.P12919112178377378479

`A204084(A374008(n+1))`
-/

namespace A204083.P12919112178377378479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A374008 (n + 1)).toNat

end

end A204083.P12919112178377378479

/-! ## A204083.P9277364200247439039

`A204084(A000124(n+6)+6)`
-/

namespace A204083.P9277364200247439039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (A000124 (n + 6) + 6).toNat

end

end A204083.P9277364200247439039

/-! ## A204083.P10482582365897079009

`A204084(eq[8, A131818(n+1)])`
-/

namespace A204083.P10482582365897079009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204083.P10482582365897079009

/-! ## A204083.P12912732972031808212

`A204084(eq[4, A219347(n)])`
-/

namespace A204083.P12912732972031808212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204083.P12912732972031808212

/-! ## A204083.P682194572260978470

`A204084(eq[6, A193592(n)])`
-/

namespace A204083.P682194572260978470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204083.P682194572260978470

/-!
# A204084: T(n,k)=Number of nXk 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

The programs for A204084, there is no canonical definition to state claims against.
-/

/-! ## A204084.P2566436575605078934

`and(A157211(n), A249134(A036717(n)))`
-/

namespace A204084.P2566436575605078934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157211 n) (A249134 (A036717 n).toNat)

end

end A204084.P2566436575605078934

/-! ## A204084.P14315157075443482507

`A049472(A269520(3*(n+1))%A142467(n))`
-/

namespace A204084.P14315157075443482507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (Int.tmod (A269520 (3 * (n + 1))) (A142467 n)).toNat

end

end A204084.P14315157075443482507

/-!
# A204085: Consider integers m such that both m and 2m are decimal pandigital numbers (A050278). The sequence gives indices of m in A050278.

The programs for A204085, there is no canonical definition to state claims against.
-/

/-! ## A204085.P5486562842373703987

`eq[0, A260736(xor(1, n))]`
-/

namespace A204085.P5486562842373703987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204085.P5486562842373703987

/-! ## A204085.P17913575633904038388

`eq[32, A275725(n+32)]`
-/

namespace A204085.P17913575633904038388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 (n + 32)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204085.P17913575633904038388

/-! ## A204085.P18264226670917848323

`eq[32, A275725(n)]-32`
-/

namespace A204085.P18264226670917848323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 32

end

end A204085.P18264226670917848323

/-! ## A204085.P12459095553141436440

`eq[n, A292570(or(1, n))]`
-/

namespace A204085.P12459095553141436440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292570 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204085.P12459095553141436440

/-! ## A204085.P1860669022979591778

`eq[gcd(2, n)², A260736(n)]`
-/

namespace A204085.P1860669022979591778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204085.P1860669022979591778

/-!
# A204086: Least term of A004767 with exactly 2n divisors.

The programs for A204086, there is no canonical definition to state claims against.
-/

/-! ## A204086.P16580949461150845607

`4*A078714(n+1)-1`
-/

namespace A204086.P16580949461150845607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A078714 (n + 1) - 1

end

end A204086.P16580949461150845607

/-! ## A204086.P10658992413920524670

`(-1)^A017653(n)+4*A078714(n+1)`
-/

namespace A204086.P10658992413920524670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A017653 n : ℤ) + (4 * A078714 (n + 1) : ℚ)

end

end A204086.P10658992413920524670

/-! ## A204086.P13747375298072277944

`(-1)^A274660(n)+4*A078714(n+1)`
-/

namespace A204086.P13747375298072277944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A274660 n : ℤ) + (4 * A078714 (n + 1) : ℚ)

end

end A204086.P13747375298072277944

/-! ## A204086.P5714395179016608913

`(-1)^A001359(n+1)+4*A078714(n+1)`
-/

namespace A204086.P5714395179016608913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001359 (n + 1) : ℤ) + (4 * A078714 (n + 1) : ℚ)

end

end A204086.P5714395179016608913

/-! ## A204086.P12219772554025999360

`(-1)^A007591(n+1)+4*A078714(n+1)`
-/

namespace A204086.P12219772554025999360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A007591 (n + 1) : ℤ) + (4 * A078714 (n + 1) : ℚ)

end

end A204086.P12219772554025999360

/-! ## A204086.P2421111328189217837

`(-1)^A144396(n+1)+4*A078714(n+1)`
-/

namespace A204086.P2421111328189217837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A144396 (n + 1) : ℤ) + (4 * A078714 (n + 1) : ℚ)

end

end A204086.P2421111328189217837

/-! ## A204086.P11762577987892163964

`(-1)^(A034936(n+1)+2)+4*A078714(n+1)`
-/

namespace A204086.P11762577987892163964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A034936 (n + 1) + 2 : ℤ) + (4 * A078714 (n + 1) : ℚ)

end

end A204086.P11762577987892163964

/-! ## A204086.P14295039466031228835

`A008683(A151800(n))+4*A078714(n+1)`
-/

namespace A204086.P14295039466031228835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + 4 * A078714 (n + 1)

end

end A204086.P14295039466031228835

/-! ## A204086.P12031286841446678361

`A008683(A034694(n+1))+4*A078714(n+1)`
-/

namespace A204086.P12031286841446678361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A034694 (n + 1)).toNat + 4 * A078714 (n + 1)

end

end A204086.P12031286841446678361

/-!
# A204087: Reduced Pascal triangle: C_R(n,m) = A003418(n) / max(A003418(m), A003418(n-m)), m=0,...,n.

The programs for A204087, the canonical program `A204087.P6569582494000110394` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204087 has offset 0).

The definition of A204087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204087.P6569582494000110394

`A003418(A003056(n))/A003418(A003984(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A204087

/-- `A003418(A003056(n))/A003418(A003984(n))` -/
def P6569582494000110394.Spec : Prop :=
  ∀ n, P6569582494000110394.a n = (A204087 n : ℚ)

end A204087

/-! ## A204087.P10965540110833050714

`gcd(A067049(A061579(n)), A067049(n))`
-/

namespace A204087.P10965540110833050714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067049 (A061579 n).toNat) (A067049 n)

end

end A204087.P10965540110833050714

namespace A204087

/-- `gcd(A067049(A061579(n)), A067049(n))` -/
def P10965540110833050714.Spec : Prop :=
  ∀ n, (P10965540110833050714.a n : ℤ) = A204087 n

end A204087

/-! ## A204087.P11855723062554680764

`gcd(A010952(A117973(n+1)), A080381(n))`
-/

namespace A204087.P11855723062554680764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010952 (A117973 (n + 1)).toNat) (A080381 n)

end

end A204087.P11855723062554680764

namespace A204087

/-- `gcd(A010952(A117973(n+1)), A080381(n))` -/
def P11855723062554680764.Spec : Prop :=
  ∀ n, (P11855723062554680764.a n : ℤ) = A204087 n

end A204087

/-! ## A204087.P3547146405283629598

`A080381(n)-A085981(A045912(n))`
-/

namespace A204087.P3547146405283629598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080381 n - A085981 (A045912 n).toNat

end

end A204087.P3547146405283629598

namespace A204087

/-- `A080381(n)-A085981(A045912(n))` -/
def P3547146405283629598.Spec : Prop :=
  ∀ n, P3547146405283629598.a n = A204087 n

end A204087

/-! ## A204087.P8231026088123897874

`gcd(A056943(A184945(n)), A080381(n))`
-/

namespace A204087.P8231026088123897874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056943 (A184945 n).toNat) (A080381 n)

end

end A204087.P8231026088123897874

namespace A204087

/-- `gcd(A056943(A184945(n)), A080381(n))` -/
def P8231026088123897874.Spec : Prop :=
  ∀ n, (P8231026088123897874.a n : ℤ) = A204087 n

end A204087

/-!
# A204089: The number of 1 by n Haunted Mirror Maze puzzles with a unique solution ending with a mirror, where mirror orientation is fixed.

The programs for A204089, the canonical program `A204089.P13946411282974147177` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204089 has offset 0).

The definition of A204089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204089.P13946411282974147177

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204089

/-- `4*a(n-1)-2*a(n-2)` -/
def P13946411282974147177.Spec : Prop :=
  ∀ n, P13946411282974147177.a n = A204089 n

theorem P13946411282974147177.correct : P13946411282974147177.Spec := by
  intro n
  simp only [A204089]

end A204089

/-! ## A204089.P3594145904441909557

`ogf((1-3x+2x^2)/(1-4x+2x^2))`
-/

namespace A204089.P3594145904441909557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -4, 2] n

end

end A204089.P3594145904441909557

namespace A204089

/-- `ogf((1-3x+2x^2)/(1-4x+2x^2))` -/
def P3594145904441909557.Spec : Prop :=
  ∀ n, P3594145904441909557.a n = A204089 n

end A204089

/-! ## A204089.P1393862760519590691

`ceil((2+sqrt(2))*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A204089.P1393862760519590691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(2 + Real.sqrt (2 : ℝ)) * (a (n - 1) : ℝ)⌉

end

end A204089.P1393862760519590691

namespace A204089

/-- `ceil((2+sqrt(2))*a(n-1))` -/
def P1393862760519590691.Spec : Prop :=
  ∀ n, P1393862760519590691.a n = A204089 n

end A204089

/-! ## A204089.P17867954267070899411

`Δ[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A204089.P17867954267070899411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204089.P17867954267070899411

namespace A204089

/-- `Δ[floor((sqrt(2)+2)*a(n-1))]` -/
def P17867954267070899411.Spec : Prop :=
  ∀ n, P17867954267070899411.a n = A204089 n

end A204089

/-! ## A204089.P181472706831505557

`∑[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A204089.P181472706831505557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204089.P181472706831505557

namespace A204089

/-- `∑[floor((sqrt(2)+2)*a(n-1))]` -/
def P181472706831505557.Spec : Prop :=
  ∀ n, P181472706831505557.a n = A204089 n

end A204089

/-! ## A204089.P3192582165808869981

`∑[round((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A204089.P3192582165808869981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204089.P3192582165808869981

namespace A204089

/-- `∑[round((sqrt(2)+2)*a(n-1))]` -/
def P3192582165808869981.Spec : Prop :=
  ∀ n, P3192582165808869981.a n = A204089 n

end A204089

/-! ## A204089.P12503773465009224625

`A007068(abs(1-2*n))`
-/

namespace A204089.P12503773465009224625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 |1 - (2 * n : ℤ)|.toNat

end

end A204089.P12503773465009224625

namespace A204089

/-- `A007068(abs(1-2*n))` -/
def P12503773465009224625.Spec : Prop :=
  ∀ n, P12503773465009224625.a n = A204089 n

end A204089

/-! ## A204089.P9085252781804518645

`A007070(n-ceil(sin(n)²))`
-/

namespace A204089.P9085252781804518645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A204089.P9085252781804518645

namespace A204089

/-- `A007070(n-ceil(sin(n)²))` -/
def P9085252781804518645.Spec : Prop :=
  ∀ n, P9085252781804518645.a n = A204089 n

end A204089

/-! ## A204089.P6796489622934144723

`A007070((n-1)%(n+1))`
-/

namespace A204089.P6796489622934144723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A204089.P6796489622934144723

namespace A204089

/-- `A007070((n-1)%(n+1))` -/
def P6796489622934144723.Spec : Prop :=
  ∀ n, P6796489622934144723.a n = A204089 n

end A204089

/-! ## A204089.P2982067163246672916

`A007070(floor(acot(n))-1+n)`
-/

namespace A204089.P2982067163246672916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (n : ℤ)).toNat

end

end A204089.P2982067163246672916

namespace A204089

/-- `A007070(floor(acot(n))-1+n)` -/
def P2982067163246672916.Spec : Prop :=
  ∀ n, P2982067163246672916.a n = A204089 n

end A204089

/-! ## A204089.P15441528537659978410

`A007052(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A204089.P15441528537659978410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007052 (n - 1) + a (n - 1)

end

end A204089.P15441528537659978410

namespace A204089

/-- `A007052(n-1)+a(n-1)` -/
def P15441528537659978410.Spec : Prop :=
  ∀ n, P15441528537659978410.a n = A204089 n

end A204089

/-! ## A204089.P3143098780662259294

`A048580(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A204089.P3143098780662259294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A048580 (n - 2) + a (n - 1)

end

end A204089.P3143098780662259294

namespace A204089

/-- `A048580(n-2)+a(n-1)` -/
def P3143098780662259294.Spec : Prop :=
  ∀ n, P3143098780662259294.a n = A204089 n

end A204089

/-! ## A204089.P11509164806628193779

`A111567(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A204089.P11509164806628193779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A111567 (n - 1) - a (n - 1)

end

end A204089.P11509164806628193779

namespace A204089

/-- `A111567(n-1)-a(n-1)` -/
def P11509164806628193779.Spec : Prop :=
  ∀ n, P11509164806628193779.a n = A204089 n

end A204089

/-! ## A204089.P8566073401012509561

`A062112(A004277(n))`
-/

namespace A204089.P8566073401012509561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (A004277 n).toNat

end

end A204089.P8566073401012509561

namespace A204089

/-- `A062112(A004277(n))` -/
def P8566073401012509561.Spec : Prop :=
  ∀ n, P8566073401012509561.a n = A204089 n

end A204089

/-! ## A204089.P18273061431783999256

`A007070(log2(A011782(n)))`
-/

namespace A204089.P18273061431783999256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A204089.P18273061431783999256

namespace A204089

/-- `A007070(log2(A011782(n)))` -/
def P18273061431783999256.Spec : Prop :=
  ∀ n, P18273061431783999256.a n = A204089 n

end A204089

/-! ## A204089.P7220205768626598943

`A062112(A004275(n+1))`
-/

namespace A204089.P7220205768626598943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (A004275 (n + 1)).toNat

end

end A204089.P7220205768626598943

namespace A204089

/-- `A062112(A004275(n+1))` -/
def P7220205768626598943.Spec : Prop :=
  ∀ n, P7220205768626598943.a n = A204089 n

end A204089

/-! ## A204089.P5264911776109223070

`A007070(A289207(n+1))`
-/

namespace A204089.P5264911776109223070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (A289207 (n + 1)).toNat

end

end A204089.P5264911776109223070

namespace A204089

/-- `A007070(A289207(n+1))` -/
def P5264911776109223070.Spec : Prop :=
  ∀ n, P5264911776109223070.a n = A204089 n

end A204089

/-! ## A204089.P4112295526357801813

`A121720(A004280(n+2))`
-/

namespace A204089.P4112295526357801813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (A004280 (n + 2)).toNat

end

end A204089.P4112295526357801813

namespace A204089

/-- `A121720(A004280(n+2))` -/
def P4112295526357801813.Spec : Prop :=
  ∀ n, P4112295526357801813.a n = A204089 n

end A204089

/-! ## A204089.P7462668658763835389

`A062112(A300576(n+2))`
-/

namespace A204089.P7462668658763835389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (A300576 (n + 2)).toNat

end

end A204089.P7462668658763835389

namespace A204089

/-- `A062112(A300576(n+2))` -/
def P7462668658763835389.Spec : Prop :=
  ∀ n, P7462668658763835389.a n = A204089 n

end A204089

/-! ## A204089.P9181969036321904154

`A007070(val(A011782(n), 2))`
-/

namespace A204089.P9181969036321904154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (SequenceMachineLib.valuation (A011782 n).toNat 2)

end

end A204089.P9181969036321904154

namespace A204089

/-- `A007070(val(A011782(n), 2))` -/
def P9181969036321904154.Spec : Prop :=
  ∀ n, P9181969036321904154.a n = A204089 n

end A204089

/-!
# A204090: The number of 1 X n Haunted Mirror Maze puzzles with a unique solution where mirror orientation is fixed.

The programs for A204090, the canonical program `A204090.P18152268944840387246` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204090 has offset 0).

The definition of A204090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204090.P18152268944840387246

`A204089(n+1)-2^(n+1)+2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204090

/-- `A204089(n+1)-2^(n+1)+2` -/
def P18152268944840387246.Spec : Prop :=
  ∀ n, P18152268944840387246.a n = A204090 n

theorem P18152268944840387246.correct : P18152268944840387246.Spec := by
  intro n
  simp only [A204090]

end A204090

/-! ## A204090.P13614195806749420896

`7*a(n-1)-16*a(n-2)+14*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=34`
-/

namespace A204090.P13614195806749420896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8, 34] fun n a =>
  7 * a (n - 1) - 16 * a (n - 2) + 14 * a (n - 3) - 4 * a (n - 4)

end

end A204090.P13614195806749420896

namespace A204090

/-- `7*a(n-1)-16*a(n-2)+14*a(n-3)-4*a(n-4)` -/
def P13614195806749420896.Spec : Prop :=
  ∀ n, P13614195806749420896.a n = A204090 n

end A204090

/-! ## A204090.P11412959941651056755

`A005022(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A204090.P11412959941651056755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005022 (n - 1) + a (n - 1)

end

end A204090.P11412959941651056755

namespace A204090

/-- `A005022(n-1)+a(n-1)` -/
def P11412959941651056755.Spec : Prop :=
  ∀ n, P11412959941651056755.a n = A204090 n

end A204090

/-! ## A204090.P6984559667554650525

`A007070(n)-A000918(n+1)`
-/

namespace A204090.P6984559667554650525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - A000918 (n + 1)

end

end A204090.P6984559667554650525

namespace A204090

/-- `A007070(n)-A000918(n+1)` -/
def P6984559667554650525.Spec : Prop :=
  ∀ n, P6984559667554650525.a n = A204090 n

end A204090

/-! ## A204090.P5430182168900252767

`A122958(n+2)+A007070(n)`
-/

namespace A204090.P5430182168900252767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 (n + 2) + A007070 n

end

end A204090.P5430182168900252767

namespace A204090

/-- `A122958(n+2)+A007070(n)` -/
def P5430182168900252767.Spec : Prop :=
  ∀ n, P5430182168900252767.a n = A204090 n

end A204090

/-! ## A204090.P4165943504105129156

`A007070(n)+1-A126646(n)`
-/

namespace A204090.P4165943504105129156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + (1 - A126646 n)

end

end A204090.P4165943504105129156

namespace A204090

/-- `A007070(n)+1-A126646(n)` -/
def P4165943504105129156.Spec : Prop :=
  ∀ n, P4165943504105129156.a n = A204090 n

end A204090

/-! ## A204090.P6885276982862098359

`A007070(n)-2*A000225(n)`
-/

namespace A204090.P6885276982862098359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - 2 * A000225 n

end

end A204090.P6885276982862098359

namespace A204090

/-- `A007070(n)-2*A000225(n)` -/
def P6885276982862098359.Spec : Prop :=
  ∀ n, P6885276982862098359.a n = A204090 n

end A204090

/-! ## A204090.P16310758492904589835

`2*A003480(n)-A095121(n)`
-/

namespace A204090.P16310758492904589835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003480 n - A095121 n

end

end A204090.P16310758492904589835

namespace A204090

/-- `2*A003480(n)-A095121(n)` -/
def P16310758492904589835.Spec : Prop :=
  ∀ n, P16310758492904589835.a n = A204090 n

end A204090

/-! ## A204090.P856409979188630697

`∑[A007052(n)-A000079(n)]+1`
-/

namespace A204090.P856409979188630697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A204090.P856409979188630697

namespace A204090

/-- `∑[A007052(n)-A000079(n)]+1` -/
def P856409979188630697.Spec : Prop :=
  ∀ n, P856409979188630697.a n = A204090 n

end A204090

/-! ## A204090.P17325458583992825732

`∑[A007052(n)-2*A131577(n)]`
-/

namespace A204090.P17325458583992825732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n - 2 * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204090.P17325458583992825732

namespace A204090

/-- `∑[A007052(n)-2*A131577(n)]` -/
def P17325458583992825732.Spec : Prop :=
  ∀ n, P17325458583992825732.a n = A204090 n

end A204090

/-! ## A204090.P17795332635406475003

`A007070(n)+2-A000079(n+1)`
-/

namespace A204090.P17795332635406475003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + (2 - A000079 (n + 1))

end

end A204090.P17795332635406475003

namespace A204090

/-- `A007070(n)+2-A000079(n+1)` -/
def P17795332635406475003.Spec : Prop :=
  ∀ n, P17795332635406475003.a n = A204090 n

end A204090

/-! ## A204090.P11997054571304021851

`A068912(2*n)-A000918(n+1)`
-/

namespace A204090.P11997054571304021851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068912 (2 * n) - A000918 (n + 1)

end

end A204090.P11997054571304021851

namespace A204090

/-- `A068912(2*n)-A000918(n+1)` -/
def P11997054571304021851.Spec : Prop :=
  ∀ n, P11997054571304021851.a n = A204090 n

end A204090

/-! ## A204090.P16886607246716553249

`A204089(n+1)-2*A000225(n)`
-/

namespace A204090.P16886607246716553249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1) - 2 * A000225 n

end

end A204090.P16886607246716553249

namespace A204090

/-- `A204089(n+1)-2*A000225(n)` -/
def P16886607246716553249.Spec : Prop :=
  ∀ n, P16886607246716553249.a n = A204090 n

theorem P16886607246716553249.correct : P16886607246716553249.Spec := by
  intro n
  simp only [A204090, Nat.add_sub_cancel, A204090.P16886607246716553249.a, A204090.P18152268944840387246.a, A000225, A000225.P6535533121115206393.a, A204089, A204089.P13946411282974147177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204090

/-! ## A204090.P6615667049976744492

`A204089(n+1)+1-A000225(n+1)`
-/

namespace A204090.P6615667049976744492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1) + (1 - A000225 (n + 1))

end

end A204090.P6615667049976744492

namespace A204090

/-- `A204089(n+1)+1-A000225(n+1)` -/
def P6615667049976744492.Spec : Prop :=
  ∀ n, P6615667049976744492.a n = A204090 n

theorem P6615667049976744492.correct : P6615667049976744492.Spec := by
  intro n
  simp only [A204090, Nat.add_sub_cancel, A204090.P6615667049976744492.a, A204090.P18152268944840387246.a, A000225, A000225.P6535533121115206393.a, A204089, A204089.P13946411282974147177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204090

/-! ## A204090.P7787803120708751949

`A068912(2*n)+2-A000079(n+1)`
-/

namespace A204090.P7787803120708751949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068912 (2 * n) + (2 - A000079 (n + 1))

end

end A204090.P7787803120708751949

namespace A204090

/-- `A068912(2*n)+2-A000079(n+1)` -/
def P7787803120708751949.Spec : Prop :=
  ∀ n, P7787803120708751949.a n = A204090 n

end A204090

/-! ## A204090.P14698855269521607023

`A006012(n+1)-∑[∑[A024175(n+1)]]`
-/

namespace A204090.P14698855269521607023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204090.P14698855269521607023

namespace A204090

/-- `A006012(n+1)-∑[∑[A024175(n+1)]]` -/
def P14698855269521607023.Spec : Prop :=
  ∀ n, P14698855269521607023.a n = A204090 n

end A204090

/-! ## A204090.P1107060241560206607

`A007068(2*n+1)+2-A000079(n+1)`
-/

namespace A204090.P1107060241560206607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (2 * n + 1) + (2 - A000079 (n + 1))

end

end A204090.P1107060241560206607

namespace A204090

/-- `A007068(2*n+1)+2-A000079(n+1)` -/
def P1107060241560206607.Spec : Prop :=
  ∀ n, P1107060241560206607.a n = A204090 n

end A204090

/-! ## A204090.P7002090397963587065

`A007070(n)-A095121(n)%A007070(n)`
-/

namespace A204090.P7002090397963587065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - Int.tmod (A095121 n) (A007070 n)

end

end A204090.P7002090397963587065

namespace A204090

/-- `A007070(n)-A095121(n)%A007070(n)` -/
def P7002090397963587065.Spec : Prop :=
  ∀ n, P7002090397963587065.a n = A204090 n

end A204090

/-! ## A204090.P13163611301848463083

`A204089(n+1)+A204092(n)-A107839(n)`
-/

namespace A204090.P13163611301848463083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1) + (A204092 n - A107839 n)

end

end A204090.P13163611301848463083

namespace A204090

/-- `A204089(n+1)+A204092(n)-A107839(n)` -/
def P13163611301848463083.Spec : Prop :=
  ∀ n, P13163611301848463083.a n = A204090 n

end A204090

/-!
# A204091: The number of 1 X n Haunted Mirror Maze puzzles with a unique solution ending with a mirror.

The programs for A204091, the canonical program `A204091.P3000982397375792201` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204091 has offset 0).

The definition of A204091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204091.P3000982397375792201

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=10`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204091

/-- `5*a(n-1)-2*a(n-2)` -/
def P3000982397375792201.Spec : Prop :=
  ∀ n, P3000982397375792201.a n = A204091 n

theorem P3000982397375792201.correct : P3000982397375792201.Spec := by
  intro n
  simp only [A204091]

end A204091

/-! ## A204091.P5908623889531742454

`ogf((1-3x+2x^2)/(1-5x+2x^2))`
-/

namespace A204091.P5908623889531742454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -5, 2] n

end

end A204091.P5908623889531742454

namespace A204091

/-- `ogf((1-3x+2x^2)/(1-5x+2x^2))` -/
def P5908623889531742454.Spec : Prop :=
  ∀ n, P5908623889531742454.a n = A204091 n

end A204091

/-! ## A204091.P17952760593221891119

`∑[A147722(n-char[1])]`
-/

namespace A204091.P17952760593221891119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204091.P17952760593221891119

namespace A204091

/-- `∑[A147722(n-char[1])]` -/
def P17952760593221891119.Spec : Prop :=
  ∀ n, P17952760593221891119.a n = A204091 n

end A204091

/-! ## A204091.P15184463615949577445

`floor(acot(n)-A106709(n))`
-/

namespace A204091.P15184463615949577445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A106709 n : ℝ)⌋

end

end A204091.P15184463615949577445

namespace A204091

/-- `floor(acot(n)-A106709(n))` -/
def P15184463615949577445.Spec : Prop :=
  ∀ n, P15184463615949577445.a n = A204091 n

end A204091

/-! ## A204091.P8974540322084640286

`record[and((-1)^n, A109165(n))]`
-/

namespace A204091.P8974540322084640286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A109165 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204091.P8974540322084640286

namespace A204091

/-- `record[and((-1)^n, A109165(n))]` -/
def P8974540322084640286.Spec : Prop :=
  ∀ n, P8974540322084640286.a n = A204091 n

end A204091

/-! ## A204091.P9293373001115011803

`A147722(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A204091.P9293373001115011803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A147722 n + a (n - 1)

end

end A204091.P9293373001115011803

namespace A204091

/-- `A147722(n)+a(n-1)` -/
def P9293373001115011803.Spec : Prop :=
  ∀ n, P9293373001115011803.a n = A204091 n

end A204091

/-! ## A204091.P17988989511949798384

`record[A109165(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A204091.P17988989511949798384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A109165 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204091.P17988989511949798384

namespace A204091

/-- `record[A109165(C(n, a(n-1)))]` -/
def P17988989511949798384.Spec : Prop :=
  ∀ n, P17988989511949798384.a n = A204091 n

end A204091

/-! ## A204091.P7530062967694547857

`A079162(A004277(n))`
-/

namespace A204091.P7530062967694547857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (A004277 n).toNat

end

end A204091.P7530062967694547857

namespace A204091

/-- `A079162(A004277(n))` -/
def P7530062967694547857.Spec : Prop :=
  ∀ n, P7530062967694547857.a n = A204091 n

end A204091

/-! ## A204091.P8402206773620478951

`A109165(A004273(n))`
-/

namespace A204091.P8402206773620478951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (A004273 n).toNat

end

end A204091.P8402206773620478951

namespace A204091

/-- `A109165(A004273(n))` -/
def P8402206773620478951.Spec : Prop :=
  ∀ n, P8402206773620478951.a n = A204091 n

end A204091

/-! ## A204091.P1858819384235695068

`A079162(A004275(n+1))`
-/

namespace A204091.P1858819384235695068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (A004275 (n + 1)).toNat

end

end A204091.P1858819384235695068

namespace A204091

/-- `A079162(A004275(n+1))` -/
def P1858819384235695068.Spec : Prop :=
  ∀ n, P1858819384235695068.a n = A204091 n

end A204091

/-! ## A204091.P17990228928751703096

`A079162(A028310(2*n))`
-/

namespace A204091.P17990228928751703096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (A028310 (2 * n)).toNat

end

end A204091.P17990228928751703096

namespace A204091

/-- `A079162(A028310(2*n))` -/
def P17990228928751703096.Spec : Prop :=
  ∀ n, P17990228928751703096.a n = A204091 n

end A204091

/-! ## A204091.P12341423951751767984

`A079162(A028310(n)+n)`
-/

namespace A204091.P12341423951751767984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (A028310 n + (n : ℤ)).toNat

end

end A204091.P12341423951751767984

namespace A204091

/-- `A079162(A028310(n)+n)` -/
def P12341423951751767984.Spec : Prop :=
  ∀ n, P12341423951751767984.a n = A204091 n

end A204091

/-! ## A204091.P244324445943777391

`A000007(n)-A106709(n)`
-/

namespace A204091.P244324445943777391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A106709 n

end

end A204091.P244324445943777391

namespace A204091

/-- `A000007(n)-A106709(n)` -/
def P244324445943777391.Spec : Prop :=
  ∀ n, P244324445943777391.a n = A204091 n

end A204091

/-! ## A204091.P6461139387017060978

`∩[A079162(n), A109165(n)]`
-/

namespace A204091.P6461139387017060978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204091.P6461139387017060978

namespace A204091

/-- `∩[A079162(n), A109165(n)]` -/
def P6461139387017060978.Spec : Prop :=
  ∀ n, (P6461139387017060978.a n : ℤ) = A204091 n

end A204091

/-! ## A204091.P7629862485999154945

`Δ[A249581(2*A004273(n))]`
-/

namespace A204091.P7629862485999154945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (2 * A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204091.P7629862485999154945

namespace A204091

/-- `Δ[A249581(2*A004273(n))]` -/
def P7629862485999154945.Spec : Prop :=
  ∀ n, P7629862485999154945.a n = A204091 n

end A204091

/-! ## A204091.P10112598946967974102

`A006012(n)%2-A106709(n)`
-/

namespace A204091.P10112598946967974102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006012 n) 2 - A106709 n

end

end A204091.P10112598946967974102

namespace A204091

/-- `A006012(n)%2-A106709(n)` -/
def P10112598946967974102.Spec : Prop :=
  ∀ n, P10112598946967974102.a n = A204091 n

end A204091

/-! ## A204091.P8082608892201479491

`A007070(n)%2-A106709(n)`
-/

namespace A204091.P8082608892201479491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007070 n) 2 - A106709 n

end

end A204091.P8082608892201479491

namespace A204091

/-- `A007070(n)%2-A106709(n)` -/
def P8082608892201479491.Spec : Prop :=
  ∀ n, P8082608892201479491.a n = A204091 n

end A204091

/-! ## A204091.P13903956193319586950

`A079162(A204689(2*n)+2*n)`
-/

namespace A204091.P13903956193319586950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (A204689 (2 * n) + (2 * n : ℤ)).toNat

end

end A204091.P13903956193319586950

namespace A204091

/-- `A079162(A204689(2*n)+2*n)` -/
def P13903956193319586950.Spec : Prop :=
  ∀ n, P13903956193319586950.a n = A204091 n

end A204091

/-! ## A204091.P2643999065567383720

`A079162(2*n)+and(1, A079162(n+1))`
-/

namespace A204091.P2643999065567383720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (2 * n) + Int.land 1 (A079162 (n + 1))

end

end A204091.P2643999065567383720

namespace A204091

/-- `A079162(2*n)+and(1, A079162(n+1))` -/
def P2643999065567383720.Spec : Prop :=
  ∀ n, P2643999065567383720.a n = A204091 n

end A204091

/-! ## A204091.P14966548387023262476

`floor(∑[A147722(n)]-n/A184656(n+1))`
-/

namespace A204091.P14966548387023262476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (n : ℚ) / (A184656 (n + 1) : ℚ)⌋

end

end A204091.P14966548387023262476

namespace A204091

/-- `floor(∑[A147722(n)]-n/A184656(n+1))` -/
def P14966548387023262476.Spec : Prop :=
  ∀ n, P14966548387023262476.a n = A204091 n

end A204091

/-!
# A204092: The number of 1 by n Haunted Mirror Maze puzzles with a unique solution.

The programs for A204092, the canonical program `A204092.P8991072946071474963` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204092 has offset 0).

The definition of A204092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204092.P8991072946071474963

`8*a(n-1)-19*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=17, a(3)=91`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204092

/-- `8*a(n-1)-19*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P8991072946071474963.Spec : Prop :=
  ∀ n, P8991072946071474963.a n = A204092 n

theorem P8991072946071474963.correct : P8991072946071474963.Spec := by
  intro n
  simp only [A204092]

end A204092

/-! ## A204092.P8917496590421948986

`A204091(n+1)/2-2^(n+1)+2`
-/

namespace A204092.P8917496590421948986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204091 (n + 1) : ℚ) / 2 - (2 ^ (n + 1) : ℚ) + 2

end

end A204092.P8917496590421948986

namespace A204092

/-- `A204091(n+1)/2-2^(n+1)+2` -/
def P8917496590421948986.Spec : Prop :=
  ∀ n, P8917496590421948986.a n = (A204092 n : ℚ)

end A204092

/-! ## A204092.P1305767832660688650

`A107839(n)-2^n+2-2^n`
-/

namespace A204092.P1305767832660688650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n - (2 ^ n : ℤ) + 2 - (2 ^ n : ℤ)

end

end A204092.P1305767832660688650

namespace A204092

/-- `A107839(n)-2^n+2-2^n` -/
def P1305767832660688650.Spec : Prop :=
  ∀ n, P1305767832660688650.a n = A204092 n

end A204092

/-! ## A204092.P11670871823076636236

`∑[A052913(n)-A155559(n)]`
-/

namespace A204092.P11670871823076636236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n - A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204092.P11670871823076636236

namespace A204092

/-- `∑[A052913(n)-A155559(n)]` -/
def P11670871823076636236.Spec : Prop :=
  ∀ n, P11670871823076636236.a n = A204092 n

end A204092

/-! ## A204092.P8678564405959080773

`A107839(n)-A000918(n+1)`
-/

namespace A204092.P8678564405959080773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n - A000918 (n + 1)

end

end A204092.P8678564405959080773

namespace A204092

/-- `A107839(n)-A000918(n+1)` -/
def P8678564405959080773.Spec : Prop :=
  ∀ n, P8678564405959080773.a n = A204092 n

end A204092

/-! ## A204092.P10885907707707229511

`A107839(n)-2*A000225(n)`
-/

namespace A204092.P10885907707707229511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n - 2 * A000225 n

end

end A204092.P10885907707707229511

namespace A204092

/-- `A107839(n)-2*A000225(n)` -/
def P10885907707707229511.Spec : Prop :=
  ∀ n, P10885907707707229511.a n = A204092 n

end A204092

/-! ## A204092.P1380599994892191510

`A107839(n)+A204090(n)-A204089(n+1)`
-/

namespace A204092.P1380599994892191510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n + (A204090 n - A204089 (n + 1))

end

end A204092.P1380599994892191510

namespace A204092

/-- `A107839(n)+A204090(n)-A204089(n+1)` -/
def P1380599994892191510.Spec : Prop :=
  ∀ n, P1380599994892191510.a n = A204092 n

end A204092

/-! ## A204092.P16553108285947384298

`A107839(n)-A127330(∑[n])`
-/

namespace A204092.P16553108285947384298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n - A127330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204092.P16553108285947384298

namespace A204092

/-- `A107839(n)-A127330(∑[n])` -/
def P16553108285947384298.Spec : Prop :=
  ∀ n, P16553108285947384298.a n = A204092 n

end A204092

/-!
# A204093: Numbers whose set of base-10 digits is {0,6}.

The programs for A204093, the canonical program `A204093.P12830992095828407750` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204093 has offset 0).

The definition of A204093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204093.P12830992095828407750

`6*A007088(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204093

/-- `6*A007088(n)` -/
def P12830992095828407750.Spec : Prop :=
  ∀ n, P12830992095828407750.a n = A204093 n

theorem P12830992095828407750.correct : P12830992095828407750.Spec := by
  intro n
  simp only [A204093]

end A204093

/-! ## A204093.P8463910744156628227

`6*sqrt(A063009(n))`
-/

namespace A204093.P8463910744156628227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  6 * Real.sqrt (A063009 n : ℝ)

end

end A204093.P8463910744156628227

namespace A204093

/-- `6*sqrt(A063009(n))` -/
def P8463910744156628227.Spec : Prop :=
  ∀ n, P8463910744156628227.a n = (A204093 n : ℝ)

end A204093

/-! ## A204093.P5702026973143866212

`2*A169966(n+1)`
-/

namespace A204093.P5702026973143866212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169966 (n + 1)

end

end A204093.P5702026973143866212

namespace A204093

/-- `2*A169966(n+1)` -/
def P5702026973143866212.Spec : Prop :=
  ∀ n, P5702026973143866212.a n = A204093 n

theorem P5702026973143866212.correct : P5702026973143866212.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P5702026973143866212.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-! ## A204093.P8336580230607091442

`3*A169965(n+1)`
-/

namespace A204093.P8336580230607091442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A169965 (n + 1)

end

end A204093.P8336580230607091442

namespace A204093

/-- `3*A169965(n+1)` -/
def P8336580230607091442.Spec : Prop :=
  ∀ n, P8336580230607091442.a n = A204093 n

theorem P8336580230607091442.correct : P8336580230607091442.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P8336580230607091442.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-! ## A204093.P14815083023785457604

`2/3*A097256(n)`
-/

namespace A204093.P14815083023785457604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A097256 n : ℚ)

end

end A204093.P14815083023785457604

namespace A204093

/-- `2/3*A097256(n)` -/
def P14815083023785457604.Spec : Prop :=
  ∀ n, P14815083023785457604.a n = (A204093 n : ℚ)

end A204093

/-! ## A204093.P7410802489947851501

`3/4*A204095(n)`
-/

namespace A204093.P7410802489947851501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A204095 n : ℚ)

end

end A204093.P7410802489947851501

namespace A204093

/-- `3/4*A204095(n)` -/
def P7410802489947851501.Spec : Prop :=
  ∀ n, P7410802489947851501.a n = (A204093 n : ℚ)

theorem P7410802489947851501.correct : P7410802489947851501.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P7410802489947851501.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-! ## A204093.P12316400246961411313

`3/5*A099820(n)`
-/

namespace A204093.P12316400246961411313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A099820 n : ℚ)

end

end A204093.P12316400246961411313

namespace A204093

/-- `3/5*A099820(n)` -/
def P12316400246961411313.Spec : Prop :=
  ∀ n, P12316400246961411313.a n = (A204093 n : ℚ)

end A204093

/-! ## A204093.P3009104848985096159

`3/2*A169967(n+1)`
-/

namespace A204093.P3009104848985096159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A169967 (n + 1) : ℚ)

end

end A204093.P3009104848985096159

namespace A204093

/-- `3/2*A169967(n+1)` -/
def P3009104848985096159.Spec : Prop :=
  ∀ n, P3009104848985096159.a n = (A204093 n : ℚ)

theorem P3009104848985096159.correct : P3009104848985096159.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P3009104848985096159.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-! ## A204093.P2097483938233504977

`A204094(n)-A007088(n)`
-/

namespace A204093.P2097483938233504977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n - A007088 n

end

end A204093.P2097483938233504977

namespace A204093

/-- `A204094(n)-A007088(n)` -/
def P2097483938233504977.Spec : Prop :=
  ∀ n, P2097483938233504977.a n = A204093 n

theorem P2097483938233504977.correct : P2097483938233504977.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P2097483938233504977.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-! ## A204093.P14018987603560835422

`A204094(n)-sqrt(A063009(n))`
-/

namespace A204093.P14018987603560835422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℝ) - Real.sqrt (A063009 n : ℝ)

end

end A204093.P14018987603560835422

namespace A204093

/-- `A204094(n)-sqrt(A063009(n))` -/
def P14018987603560835422.Spec : Prop :=
  ∀ n, P14018987603560835422.a n = (A204093 n : ℝ)

end A204093

/-! ## A204093.P3059150466972193785

`A169964(n+1)+A007088(n)`
-/

namespace A204093.P3059150466972193785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1) + A007088 n

end

end A204093.P3059150466972193785

namespace A204093

/-- `A169964(n+1)+A007088(n)` -/
def P3059150466972193785.Spec : Prop :=
  ∀ n, P3059150466972193785.a n = A204093 n

theorem P3059150466972193785.correct : P3059150466972193785.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P3059150466972193785.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-! ## A204093.P16009113719740541237

`A097256(n)-A169966(n+1)`
-/

namespace A204093.P16009113719740541237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - A169966 (n + 1)

end

end A204093.P16009113719740541237

namespace A204093

/-- `A097256(n)-A169966(n+1)` -/
def P16009113719740541237.Spec : Prop :=
  ∀ n, P16009113719740541237.a n = A204093 n

end A204093

/-! ## A204093.P11578812851883726645

`A099820(n)-A169967(n+1)`
-/

namespace A204093.P11578812851883726645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n - A169967 (n + 1)

end

end A204093.P11578812851883726645

namespace A204093

/-- `A099820(n)-A169967(n+1)` -/
def P11578812851883726645.Spec : Prop :=
  ∀ n, P11578812851883726645.a n = A204093 n

end A204093

/-! ## A204093.P8094792449958091778

`A204095(n)-A169965(n+1)`
-/

namespace A204093.P8094792449958091778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n - A169965 (n + 1)

end

end A204093.P8094792449958091778

namespace A204093

/-- `A204095(n)-A169965(n+1)` -/
def P8094792449958091778.Spec : Prop :=
  ∀ n, P8094792449958091778.a n = A204093 n

theorem P8094792449958091778.correct : P8094792449958091778.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P8094792449958091778.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-! ## A204093.P15867336072987829558

`A007088(n)+A099820(n)/2`
-/

namespace A204093.P15867336072987829558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) + (A099820 n : ℚ) / 2

end

end A204093.P15867336072987829558

namespace A204093

/-- `A007088(n)+A099820(n)/2` -/
def P15867336072987829558.Spec : Prop :=
  ∀ n, P15867336072987829558.a n = (A204093 n : ℚ)

end A204093

/-! ## A204093.P18426733544253771907

`2*(A099820(n)-A204094(n))`
-/

namespace A204093.P18426733544253771907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099820 n - A204094 n)

end

end A204093.P18426733544253771907

namespace A204093

/-- `2*(A099820(n)-A204094(n))` -/
def P18426733544253771907.Spec : Prop :=
  ∀ n, P18426733544253771907.a n = A204093 n

end A204093

/-! ## A204093.P4177436537991917810

`2*A204095(n)-A099820(n)`
-/

namespace A204093.P4177436537991917810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204095 n - A099820 n

end

end A204093.P4177436537991917810

namespace A204093

/-- `2*A204095(n)-A099820(n)` -/
def P4177436537991917810.Spec : Prop :=
  ∀ n, P4177436537991917810.a n = A204093 n

end A204093

/-! ## A204093.P16442357342858447696

`2*A204094(n)-A204095(n)`
-/

namespace A204093.P16442357342858447696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204094 n - A204095 n

end

end A204093.P16442357342858447696

namespace A204093

/-- `2*A204094(n)-A204095(n)` -/
def P16442357342858447696.Spec : Prop :=
  ∀ n, P16442357342858447696.a n = A204093 n

theorem P16442357342858447696.correct : P16442357342858447696.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P16442357342858447696.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-! ## A204093.P6842069892865112706

`A204094(n)-A097256(n)/9`
-/

namespace A204093.P6842069892865112706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℚ) - (A097256 n : ℚ) / 9

end

end A204093.P6842069892865112706

namespace A204093

/-- `A204094(n)-A097256(n)/9` -/
def P6842069892865112706.Spec : Prop :=
  ∀ n, P6842069892865112706.a n = (A204093 n : ℚ)

end A204093

/-! ## A204093.P14643201661855198896

`A169967(n+1)+A169965(n+1)`
-/

namespace A204093.P14643201661855198896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (n + 1) + A169965 (n + 1)

end

end A204093.P14643201661855198896

namespace A204093

/-- `A169967(n+1)+A169965(n+1)` -/
def P14643201661855198896.Spec : Prop :=
  ∀ n, P14643201661855198896.a n = A204093 n

theorem P14643201661855198896.correct : P14643201661855198896.Spec := by
  intro n
  simp only [A204093, Nat.add_sub_cancel, A204093.P14643201661855198896.a, A204093.P12830992095828407750.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204093

/-!
# A204094: Numbers whose set of base 10 digits is {0,7}.

The programs for A204094, the canonical program `A204094.P6203249824050151500` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204094 has offset 0).

The definition of A204094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204094.P6203249824050151500

`7*A007088(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204094

/-- `7*A007088(n)` -/
def P6203249824050151500.Spec : Prop :=
  ∀ n, P6203249824050151500.a n = A204094 n

theorem P6203249824050151500.correct : P6203249824050151500.Spec := by
  intro n
  simp only [A204094]

end A204094

/-! ## A204094.P777094700589336299

`7*sqrt(A063009(n))`
-/

namespace A204094.P777094700589336299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  7 * Real.sqrt (A063009 n : ℝ)

end

end A204094.P777094700589336299

namespace A204094

/-- `7*sqrt(A063009(n))` -/
def P777094700589336299.Spec : Prop :=
  ∀ n, P777094700589336299.a n = (A204094 n : ℝ)

end A204094

/-! ## A204094.P3567375321357566258

`7/6*A204093(n)`
-/

namespace A204094.P3567375321357566258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 6 * (A204093 n : ℚ)

end

end A204094.P3567375321357566258

namespace A204094

/-- `7/6*A204093(n)` -/
def P3567375321357566258.Spec : Prop :=
  ∀ n, P3567375321357566258.a n = (A204094 n : ℚ)

theorem P3567375321357566258.correct : P3567375321357566258.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P3567375321357566258.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P10499608343116420015

`7/8*A204095(n)`
-/

namespace A204094.P10499608343116420015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 8 * (A204095 n : ℚ)

end

end A204094.P10499608343116420015

namespace A204094

/-- `7/8*A204095(n)` -/
def P10499608343116420015.Spec : Prop :=
  ∀ n, P10499608343116420015.a n = (A204094 n : ℚ)

theorem P10499608343116420015.correct : P10499608343116420015.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P10499608343116420015.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P3384928515704765076

`7/9*A097256(n)`
-/

namespace A204094.P3384928515704765076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 9 * (A097256 n : ℚ)

end

end A204094.P3384928515704765076

namespace A204094

/-- `7/9*A097256(n)` -/
def P3384928515704765076.Spec : Prop :=
  ∀ n, P3384928515704765076.a n = (A204094 n : ℚ)

end A204094

/-! ## A204094.P8567591830080645875

`7*(A228071(n)+n)`
-/

namespace A204094.P8567591830080645875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A228071 n + (n : ℤ))

end

end A204094.P8567591830080645875

namespace A204094

/-- `7*(A228071(n)+n)` -/
def P8567591830080645875.Spec : Prop :=
  ∀ n, P8567591830080645875.a n = A204094 n

theorem P8567591830080645875.correct : P8567591830080645875.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P8567591830080645875.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A228071, A228071.P9444289082571793754.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P13232717705709973312

`7*A169966(n+1)/3`
-/

namespace A204094.P13232717705709973312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A169966 (n + 1) : ℚ) / 3)

end

end A204094.P13232717705709973312

namespace A204094

/-- `7*A169966(n+1)/3` -/
def P13232717705709973312.Spec : Prop :=
  ∀ n, P13232717705709973312.a n = (A204094 n : ℚ)

theorem P13232717705709973312.correct : P13232717705709973312.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P13232717705709973312.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P3946710800822752631

`7*A169967(n+1)/4`
-/

namespace A204094.P3946710800822752631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A169967 (n + 1) : ℚ) / 4)

end

end A204094.P3946710800822752631

namespace A204094

/-- `7*A169967(n+1)/4` -/
def P3946710800822752631.Spec : Prop :=
  ∀ n, P3946710800822752631.a n = (A204094 n : ℚ)

theorem P3946710800822752631.correct : P3946710800822752631.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P3946710800822752631.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P886914282571727663

`A204093(n)+A007088(n)`
-/

namespace A204094.P886914282571727663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n + A007088 n

end

end A204094.P886914282571727663

namespace A204094

/-- `A204093(n)+A007088(n)` -/
def P886914282571727663.Spec : Prop :=
  ∀ n, P886914282571727663.a n = A204094 n

theorem P886914282571727663.correct : P886914282571727663.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P886914282571727663.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P6614156129857733877

`A204095(n)-A007088(n)`
-/

namespace A204094.P6614156129857733877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n - A007088 n

end

end A204094.P6614156129857733877

namespace A204094

/-- `A204095(n)-A007088(n)` -/
def P6614156129857733877.Spec : Prop :=
  ∀ n, P6614156129857733877.a n = A204094 n

theorem P6614156129857733877.correct : P6614156129857733877.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P6614156129857733877.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P11974506767166122005

`A204093(n)+sqrt(A063009(n))`
-/

namespace A204094.P11974506767166122005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℝ) + Real.sqrt (A063009 n : ℝ)

end

end A204094.P11974506767166122005

namespace A204094

/-- `A204093(n)+sqrt(A063009(n))` -/
def P11974506767166122005.Spec : Prop :=
  ∀ n, P11974506767166122005.a n = (A204094 n : ℝ)

end A204094

/-! ## A204094.P15730510615245277397

`A204095(n)-sqrt(A063009(n))`
-/

namespace A204094.P15730510615245277397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℝ) - Real.sqrt (A063009 n : ℝ)

end

end A204094.P15730510615245277397

namespace A204094

/-- `A204095(n)-sqrt(A063009(n))` -/
def P15730510615245277397.Spec : Prop :=
  ∀ n, P15730510615245277397.a n = (A204094 n : ℝ)

end A204094

/-! ## A204094.P9602463546739276456

`A097256(n)-A169965(n+1)`
-/

namespace A204094.P9602463546739276456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - A169965 (n + 1)

end

end A204094.P9602463546739276456

namespace A204094

/-- `A097256(n)-A169965(n+1)` -/
def P9602463546739276456.Spec : Prop :=
  ∀ n, P9602463546739276456.a n = A204094 n

end A204094

/-! ## A204094.P10863018540337275617

`A099820(n)-A169966(n+1)`
-/

namespace A204094.P10863018540337275617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n - A169966 (n + 1)

end

end A204094.P10863018540337275617

namespace A204094

/-- `A099820(n)-A169966(n+1)` -/
def P10863018540337275617.Spec : Prop :=
  ∀ n, P10863018540337275617.a n = A204094 n

end A204094

/-! ## A204094.P9297065035949851347

`2*A204095(n)-A097256(n)`
-/

namespace A204094.P9297065035949851347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204095 n - A097256 n

end

end A204094.P9297065035949851347

namespace A204094

/-- `2*A204095(n)-A097256(n)` -/
def P9297065035949851347.Spec : Prop :=
  ∀ n, P9297065035949851347.a n = A204094 n

end A204094

/-! ## A204094.P4249528168952203673

`(A204095(n)+A204093(n))/2`
-/

namespace A204094.P4249528168952203673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n + A204093 n : ℚ) / 2

end

end A204094.P4249528168952203673

namespace A204094

/-- `(A204095(n)+A204093(n))/2` -/
def P4249528168952203673.Spec : Prop :=
  ∀ n, P4249528168952203673.a n = (A204094 n : ℚ)

theorem P4249528168952203673.correct : P4249528168952203673.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P4249528168952203673.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P14345055082262943423

`A099820(n)-A204093(n)/2`
-/

namespace A204094.P14345055082262943423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 n : ℚ) - (A204093 n : ℚ) / 2

end

end A204094.P14345055082262943423

namespace A204094

/-- `A099820(n)-A204093(n)/2` -/
def P14345055082262943423.Spec : Prop :=
  ∀ n, P14345055082262943423.a n = (A204094 n : ℚ)

end A204094

/-! ## A204094.P12977119853590139956

`A169965(n+1)+A169964(n+1)`
-/

namespace A204094.P12977119853590139956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1) + A169964 (n + 1)

end

end A204094.P12977119853590139956

namespace A204094

/-- `A169965(n+1)+A169964(n+1)` -/
def P12977119853590139956.Spec : Prop :=
  ∀ n, P12977119853590139956.a n = A204094 n

theorem P12977119853590139956.correct : P12977119853590139956.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P12977119853590139956.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P4409654290077039

`A169967(n+1)+A169966(n+1)`
-/

namespace A204094.P4409654290077039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (n + 1) + A169966 (n + 1)

end

end A204094.P4409654290077039

namespace A204094

/-- `A169967(n+1)+A169966(n+1)` -/
def P4409654290077039.Spec : Prop :=
  ∀ n, P4409654290077039.a n = A204094 n

theorem P4409654290077039.correct : P4409654290077039.Spec := by
  intro n
  simp only [A204094, Nat.add_sub_cancel, A204094.P4409654290077039.a, A204094.P6203249824050151500.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204094

/-! ## A204094.P17429132801084925203

`(A169964(n+1)+A097256(n))/2`
-/

namespace A204094.P17429132801084925203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (n + 1) + A097256 n : ℚ) / 2

end

end A204094.P17429132801084925203

namespace A204094

/-- `(A169964(n+1)+A097256(n))/2` -/
def P17429132801084925203.Spec : Prop :=
  ∀ n, P17429132801084925203.a n = (A204094 n : ℚ)

end A204094

/-!
# A204095: Numbers whose base 10 digits are a subset of {0, 8}.

The programs for A204095, the canonical program `A204095.P12496041222764549128` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204095 has offset 0).

The definition of A204095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204095.P12496041222764549128

`8*A007088(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204095

/-- `8*A007088(n)` -/
def P12496041222764549128.Spec : Prop :=
  ∀ n, P12496041222764549128.a n = A204095 n

theorem P12496041222764549128.correct : P12496041222764549128.Spec := by
  intro n
  simp only [A204095]

end A204095

/-! ## A204095.P5535139744863447137

`and(5*(2*a(floor(n/2))-(-1)^n+1)-n%2, -2)` with `a(0)=0`
-/

namespace A204095.P5535139744863447137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) - ((n % 2 : ℕ) : ℤ)) (-2)

end

end A204095.P5535139744863447137

namespace A204095

/-- `and(5*(2*a(floor(n/2))-(-1)^n+1)-n%2, -2)` -/
def P5535139744863447137.Spec : Prop :=
  ∀ n, P5535139744863447137.a n = A204095 n

end A204095

/-! ## A204095.P13955283430133570302

`8*sqrt(A063009(n))`
-/

namespace A204095.P13955283430133570302
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * Real.sqrt (A063009 n : ℝ)

end

end A204095.P13955283430133570302

namespace A204095

/-- `8*sqrt(A063009(n))` -/
def P13955283430133570302.Spec : Prop :=
  ∀ n, P13955283430133570302.a n = (A204095 n : ℝ)

end A204095

/-! ## A204095.P7999440437245144117

`2*A169967(n+1)`
-/

namespace A204095.P7999440437245144117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169967 (n + 1)

end

end A204095.P7999440437245144117

namespace A204095

/-- `2*A169967(n+1)` -/
def P7999440437245144117.Spec : Prop :=
  ∀ n, P7999440437245144117.a n = A204095 n

theorem P7999440437245144117.correct : P7999440437245144117.Spec := by
  intro n
  simp only [A204095, Nat.add_sub_cancel, A204095.P7999440437245144117.a, A204095.P12496041222764549128.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204095

/-! ## A204095.P234630466164995236

`4*A169965(n+1)`
-/

namespace A204095.P234630466164995236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A169965 (n + 1)

end

end A204095.P234630466164995236

namespace A204095

/-- `4*A169965(n+1)` -/
def P234630466164995236.Spec : Prop :=
  ∀ n, P234630466164995236.a n = A204095 n

theorem P234630466164995236.correct : P234630466164995236.Spec := by
  intro n
  simp only [A204095, Nat.add_sub_cancel, A204095.P234630466164995236.a, A204095.P12496041222764549128.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204095

/-! ## A204095.P6080664351226283017

`4/3*A204093(n)`
-/

namespace A204095.P6080664351226283017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A204093 n : ℚ)

end

end A204095.P6080664351226283017

namespace A204095

/-- `4/3*A204093(n)` -/
def P6080664351226283017.Spec : Prop :=
  ∀ n, P6080664351226283017.a n = (A204095 n : ℚ)

theorem P6080664351226283017.correct : P6080664351226283017.Spec := by
  intro n
  simp only [A204095, Nat.add_sub_cancel, A204095.P6080664351226283017.a, A204095.P12496041222764549128.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204095

/-! ## A204095.P13457681849143655446

`4/5*A099820(n)`
-/

namespace A204095.P13457681849143655446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A099820 n : ℚ)

end

end A204095.P13457681849143655446

namespace A204095

/-- `4/5*A099820(n)` -/
def P13457681849143655446.Spec : Prop :=
  ∀ n, P13457681849143655446.a n = (A204095 n : ℚ)

end A204095

/-! ## A204095.P9103590680319633937

`8*(A228071(n)+n)`
-/

namespace A204095.P9103590680319633937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A228071 n + (n : ℤ))

end

end A204095.P9103590680319633937

namespace A204095

/-- `8*(A228071(n)+n)` -/
def P9103590680319633937.Spec : Prop :=
  ∀ n, P9103590680319633937.a n = A204095 n

theorem P9103590680319633937.correct : P9103590680319633937.Spec := by
  intro n
  simp only [A204095, Nat.add_sub_cancel, A204095.P9103590680319633937.a, A204095.P12496041222764549128.a, A007088, A007088.P12432121332583687413.a, A228071, A228071.P9444289082571793754.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204095

/-! ## A204095.P6696216749644862690

`A204094(n)+A007088(n)`
-/

namespace A204095.P6696216749644862690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n + A007088 n

end

end A204095.P6696216749644862690

namespace A204095

/-- `A204094(n)+A007088(n)` -/
def P6696216749644862690.Spec : Prop :=
  ∀ n, P6696216749644862690.a n = A204095 n

theorem P6696216749644862690.correct : P6696216749644862690.Spec := by
  intro n
  simp only [A204095, Nat.add_sub_cancel, A204095.P6696216749644862690.a, A204095.P12496041222764549128.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204095

/-! ## A204095.P2599931537236986590

`A097256(n)-A007088(n)`
-/

namespace A204095.P2599931537236986590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - A007088 n

end

end A204095.P2599931537236986590

namespace A204095

/-- `A097256(n)-A007088(n)` -/
def P2599931537236986590.Spec : Prop :=
  ∀ n, P2599931537236986590.a n = A204095 n

end A204095

/-! ## A204095.P12490919703923061876

`A204094(n)+sqrt(A063009(n))`
-/

namespace A204095.P12490919703923061876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℝ) + Real.sqrt (A063009 n : ℝ)

end

end A204095.P12490919703923061876

namespace A204095

/-- `A204094(n)+sqrt(A063009(n))` -/
def P12490919703923061876.Spec : Prop :=
  ∀ n, P12490919703923061876.a n = (A204095 n : ℝ)

end A204095

/-! ## A204095.P15994246612228323324

`A204093(n)+A169965(n+1)`
-/

namespace A204095.P15994246612228323324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n + A169965 (n + 1)

end

end A204095.P15994246612228323324

namespace A204095

/-- `A204093(n)+A169965(n+1)` -/
def P15994246612228323324.Spec : Prop :=
  ∀ n, P15994246612228323324.a n = A204095 n

theorem P15994246612228323324.correct : P15994246612228323324.Spec := by
  intro n
  simp only [A204095, Nat.add_sub_cancel, A204095.P15994246612228323324.a, A204095.P12496041222764549128.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204095

/-! ## A204095.P13334929071611877179

`A099820(n)-A169965(n+1)`
-/

namespace A204095.P13334929071611877179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n - A169965 (n + 1)

end

end A204095.P13334929071611877179

namespace A204095

/-- `A099820(n)-A169965(n+1)` -/
def P13334929071611877179.Spec : Prop :=
  ∀ n, P13334929071611877179.a n = A204095 n

end A204095

/-! ## A204095.P9055937435677637292

`2*A097256(n)-A099820(n)`
-/

namespace A204095.P9055937435677637292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097256 n - A099820 n

end

end A204095.P9055937435677637292

namespace A204095

/-- `2*A097256(n)-A099820(n)` -/
def P9055937435677637292.Spec : Prop :=
  ∀ n, P9055937435677637292.a n = A204095 n

end A204095

/-! ## A204095.P4027674920873806367

`(A204094(n)+A097256(n))/2`
-/

namespace A204095.P4027674920873806367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n + A097256 n : ℚ) / 2

end

end A204095.P4027674920873806367

namespace A204095

/-- `(A204094(n)+A097256(n))/2` -/
def P4027674920873806367.Spec : Prop :=
  ∀ n, P4027674920873806367.a n = (A204095 n : ℚ)

end A204095

/-! ## A204095.P15500951493337632345

`2*(A099820(n)-A204093(n))`
-/

namespace A204095.P15500951493337632345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099820 n - A204093 n)

end

end A204095.P15500951493337632345

namespace A204095

/-- `2*(A099820(n)-A204093(n))` -/
def P15500951493337632345.Spec : Prop :=
  ∀ n, P15500951493337632345.a n = A204095 n

end A204095

/-! ## A204095.P9189753109468859725

`2*A204094(n)-A204093(n)`
-/

namespace A204095.P9189753109468859725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204094 n - A204093 n

end

end A204095.P9189753109468859725

namespace A204095

/-- `2*A204094(n)-A204093(n)` -/
def P9189753109468859725.Spec : Prop :=
  ∀ n, P9189753109468859725.a n = A204095 n

theorem P9189753109468859725.correct : P9189753109468859725.Spec := by
  intro n
  simp only [A204095, Nat.add_sub_cancel, A204095.P9189753109468859725.a, A204095.P12496041222764549128.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204095

/-! ## A204095.P13743177335376687901

`A169966(n+1)+A169964(n+1)`
-/

namespace A204095.P13743177335376687901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (n + 1) + A169964 (n + 1)

end

end A204095.P13743177335376687901

namespace A204095

/-- `A169966(n+1)+A169964(n+1)` -/
def P13743177335376687901.Spec : Prop :=
  ∀ n, P13743177335376687901.a n = A204095 n

theorem P13743177335376687901.correct : P13743177335376687901.Spec := by
  intro n
  simp only [A204095, Nat.add_sub_cancel, A204095.P13743177335376687901.a, A204095.P12496041222764549128.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204095

/-! ## A204095.P12704430302555283197

`2*(A097256(n)-A169964(n+1))`
-/

namespace A204095.P12704430302555283197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097256 n - A169964 (n + 1))

end

end A204095.P12704430302555283197

namespace A204095

/-- `2*(A097256(n)-A169964(n+1))` -/
def P12704430302555283197.Spec : Prop :=
  ∀ n, P12704430302555283197.a n = A204095 n

end A204095

/-! ## A204095.P15716798996858610988

`A169966(n+1)+A099820(n)/2`
-/

namespace A204095.P15716798996858610988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (n + 1) : ℚ) + (A099820 n : ℚ) / 2

end

end A204095.P15716798996858610988

namespace A204095

/-- `A169966(n+1)+A099820(n)/2` -/
def P15716798996858610988.Spec : Prop :=
  ∀ n, P15716798996858610988.a n = (A204095 n : ℚ)

end A204095

/-!
# A204099: Number of integers between successive twin prime pairs.

The programs for A204099, the canonical program `A204099.P7675691963156403861` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204099 has offset 1).

The definition of A204099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204099.P4751194064263836208

`3*A204100(n+1)`
-/

namespace A204099.P4751194064263836208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A204100 (n + 1)

end

end A204099.P4751194064263836208

namespace A204099

/-- `3*A204100(n+1)` -/
def P4751194064263836208.Spec : Prop :=
  ∀ n, P4751194064263836208.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P7675691963156403861

`A014681(A167132(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A204099

/-- `A014681(A167132(n+1))` -/
def P7675691963156403861.Spec : Prop :=
  ∀ n, P7675691963156403861.a n = A204099 (n + 1)

theorem P7675691963156403861.correct : P7675691963156403861.Spec := by
  intro n
  simp only [A204099, Nat.add_sub_cancel]

end A204099

/-! ## A204099.P1837091645239010141

`A008585(A204100(n+1))`
-/

namespace A204099.P1837091645239010141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A204100 (n + 1)).toNat

end

end A204099.P1837091645239010141

namespace A204099

/-- `A008585(A204100(n+1))` -/
def P1837091645239010141.Spec : Prop :=
  ∀ n, P1837091645239010141.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P151009570217318939

`A289207(A167132(n+1)+1)`
-/

namespace A204099.P151009570217318939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A167132 (n + 1) + 1).toNat

end

end A204099.P151009570217318939

namespace A204099

/-- `A289207(A167132(n+1)+1)` -/
def P151009570217318939.Spec : Prop :=
  ∀ n, P151009570217318939.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P1862215767039600750

`A289207(A053319(n+1)-1)`
-/

namespace A204099.P1862215767039600750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A053319 (n + 1) - 1).toNat

end

end A204099.P1862215767039600750

namespace A204099

/-- `A289207(A053319(n+1)-1)` -/
def P1862215767039600750.Spec : Prop :=
  ∀ n, P1862215767039600750.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P13259577281104769583

`A014681(A053319(n+1)-2)`
-/

namespace A204099.P13259577281104769583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A053319 (n + 1) - 2).toNat

end

end A204099.P13259577281104769583

namespace A204099

/-- `A014681(A053319(n+1)-2)` -/
def P13259577281104769583.Spec : Prop :=
  ∀ n, P13259577281104769583.a n = A204099 (n + 1)

theorem P13259577281104769583.correct : P13259577281104769583.Spec := by
  intro n
  simp only [A204099, Nat.add_sub_cancel, A204099.P13259577281104769583.a, A204099.P7675691963156403861.a, A014681, A014681.P5993139036264792398.a, A053319, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A167132, A167132.P340755037681699501.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204099

/-! ## A204099.P13454637738477200153

`A167132(n+1)+A057428(n)`
-/

namespace A204099.P13454637738477200153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) + A057428 n

end

end A204099.P13454637738477200153

namespace A204099

/-- `A167132(n+1)+A057428(n)` -/
def P13454637738477200153.Spec : Prop :=
  ∀ n, P13454637738477200153.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P4174149970564764797

`A167132(n+1)-A057427(n)`
-/

namespace A204099.P4174149970564764797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) - A057427 n

end

end A204099.P4174149970564764797

namespace A204099

/-- `A167132(n+1)-A057427(n)` -/
def P4174149970564764797.Spec : Prop :=
  ∀ n, P4174149970564764797.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P14662468156532236202

`A014681(Δ[A001359(n+1)]-2)`
-/

namespace A204099.P14662468156532236202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (n + 1) - f1 n - 2).toNat

end

end A204099.P14662468156532236202

namespace A204099

/-- `A014681(Δ[A001359(n+1)]-2)` -/
def P14662468156532236202.Spec : Prop :=
  ∀ n, P14662468156532236202.a n = A204099 (n + 1)

theorem P14662468156532236202.correct : P14662468156532236202.Spec := by
  intro n
  simp only [A204099, Nat.add_sub_cancel, A204099.P14662468156532236202.f1, A204099.P14662468156532236202.a, A204099.P7675691963156403861.a, A001359, A001359.P8865495035699438537.a, A014681, A014681.P5993139036264792398.a, A167132, A167132.P340755037681699501.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204099

/-! ## A204099.P5903003489307359233

`A028310(A053319(n+1)-2)-1`
-/

namespace A204099.P5903003489307359233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053319 (n + 1) - 2).toNat - 1

end

end A204099.P5903003489307359233

namespace A204099

/-- `A028310(A053319(n+1)-2)-1` -/
def P5903003489307359233.Spec : Prop :=
  ∀ n, P5903003489307359233.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P9291974865209275227

`A204136(n+1)+A048614(n+1)`
-/

namespace A204099.P9291974865209275227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204136 (n + 1) + A048614 (n + 1)

end

end A204099.P9291974865209275227

namespace A204099

/-- `A204136(n+1)+A048614(n+1)` -/
def P9291974865209275227.Spec : Prop :=
  ∀ n, P9291974865209275227.a n = A204099 (n + 1)

theorem P9291974865209275227.correct : P9291974865209275227.Spec := by
  intro n
  simp only [A204099, Nat.add_sub_cancel, A204099.P9291974865209275227.a, A204099.P7675691963156403861.a, A014681, A014681.P5993139036264792398.a, A048614, A048614.P8089396376325747707.a, A167132, A167132.P340755037681699501.a, A204136, A204136.P1811365136690881817.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A027833, A027833.P2673229578852313683.f2, A027833.P2673229578852313683.f3, A027833.P2673229578852313683.f1, A027833.P2673229578852313683.a, A001223, A001223.P5083310856331133973.a, A077800, A077800.P16009445446139691322.a, A046933, A046933.P9479947770746769512.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204099

/-! ## A204099.P16006210114911234546

`A167132(n+1)+A000007(n)-1`
-/

namespace A204099.P16006210114911234546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) + (A000007 n - 1)

end

end A204099.P16006210114911234546

namespace A204099

/-- `A167132(n+1)+A000007(n)-1` -/
def P16006210114911234546.Spec : Prop :=
  ∀ n, P16006210114911234546.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P5302626564971593599

`A053319(n+1)-A157532(n+1)`
-/

namespace A204099.P5302626564971593599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 1) - A157532 (n + 1)

end

end A204099.P5302626564971593599

namespace A204099

/-- `A053319(n+1)-A157532(n+1)` -/
def P5302626564971593599.Spec : Prop :=
  ∀ n, P5302626564971593599.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P9633491709237013819

`Δ[A001359(n+1)]-A157532(n+1)`
-/

namespace A204099.P9633491709237013819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A157532 (n + 1)

end

end A204099.P9633491709237013819

namespace A204099

/-- `Δ[A001359(n+1)]-A157532(n+1)` -/
def P9633491709237013819.Spec : Prop :=
  ∀ n, P9633491709237013819.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P16584698949283329272

`A167132(n+1)-A323022(A167132(n+1)+1)`
-/

namespace A204099.P16584698949283329272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) - A323022 (A167132 (n + 1) + 1).toNat

end

end A204099.P16584698949283329272

namespace A204099

/-- `A167132(n+1)-A323022(A167132(n+1)+1)` -/
def P16584698949283329272.Spec : Prop :=
  ∀ n, P16584698949283329272.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P9407262944012564428

`A001359(n+2)-(A057427(n)+A006512(n+1))`
-/

namespace A204099.P9407262944012564428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - (A057427 n + A006512 (n + 1))

end

end A204099.P9407262944012564428

namespace A204099

/-- `A001359(n+2)-(A057427(n)+A006512(n+1))` -/
def P9407262944012564428.Spec : Prop :=
  ∀ n, P9407262944012564428.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P2015136017733625197

`Δ[A111166(n+1)]-3`
-/

namespace A204099.P2015136017733625197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A204099.P2015136017733625197

namespace A204099

/-- `Δ[A111166(n+1)]-3` -/
def P2015136017733625197.Spec : Prop :=
  ∀ n, P2015136017733625197.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P7687658460777367747

`A265760(2*(n+1))-(A265760(2*n+1)+1)`
-/

namespace A204099.P7687658460777367747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (2 * (n + 1)) - (A265760 (2 * n + 1) + 1)

end

end A204099.P7687658460777367747

namespace A204099

/-- `A265760(2*(n+1))-(A265760(2*n+1)+1)` -/
def P7687658460777367747.Spec : Prop :=
  ∀ n, P7687658460777367747.a n = A204099 (n + 1)

end A204099

/-! ## A204099.P5389448742997731189

`A001097(2*(n+1))-(A141044(n+1)+A001097(2*n+1))`
-/

namespace A204099.P5389448742997731189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (n + 1)) - (A141044 (n + 1) + A001097 (2 * n + 1))

end

end A204099.P5389448742997731189

namespace A204099

/-- `A001097(2*(n+1))-(A141044(n+1)+A001097(2*n+1))` -/
def P5389448742997731189.Spec : Prop :=
  ∀ n, P5389448742997731189.a n = A204099 (n + 1)

end A204099

