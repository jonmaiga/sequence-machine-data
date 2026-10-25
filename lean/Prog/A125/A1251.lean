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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
# A125100: Triangle read by rows: T(n,k) = Fibonacci(k+1)*binomial(n,k) + (k+1)*binomial(n,k+1) (0 <= k <= n).

The programs for A125100, the canonical program `A125100.P12778823753129633113` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125100 has offset 0).

The definition of A125100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125100.P7065407025017114118

`A216973(n)+A094436(n)`
-/

namespace A125100.P7065407025017114118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A094436 n

end

end A125100.P7065407025017114118

namespace A125100

/-- `A216973(n)+A094436(n)` -/
def P7065407025017114118.Spec : Prop :=
  ∀ n, P7065407025017114118.a n = A125100 n

end A125100

/-! ## A125100.P12778823753129633113

`A007318(n)*A132923(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A125100

/-- `A007318(n)*A132923(n+1)` -/
def P12778823753129633113.Spec : Prop :=
  ∀ n, P12778823753129633113.a n = A125100 n

theorem P12778823753129633113.correct : P12778823753129633113.Spec := by
  intro n
  simp only [A125100]

end A125100

/-! ## A125100.P3914711773454027062

`A094436(n)+A007318(n)*A025581(n)`
-/

namespace A125100.P3914711773454027062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n + A007318 n * A025581 n

end

end A125100.P3914711773454027062

namespace A125100

/-- `A094436(n)+A007318(n)*A025581(n)` -/
def P3914711773454027062.Spec : Prop :=
  ∀ n, P3914711773454027062.a n = A125100 n

theorem P3914711773454027062.correct : P3914711773454027062.Spec := by
  intro n
  simp only [A125100, Nat.add_sub_cancel, A125100.P3914711773454027062.a, A125100.P12778823753129633113.a, A007318, A007318.P302227728145965961.a, A025581, A025581.P420762180635059694.a, A094436, A094436.P7881674701604932164.a, A132923, A132923.P17938700751564380223.a, A004736, A004736.P10337537277358081527.a, A104763, A104763.P5539537034161833375.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125100

/-! ## A125100.P5583633617304403295

`A094436(n)-A057428(n)*A216973(n)`
-/

namespace A125100.P5583633617304403295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n - A057428 n * A216973 n

end

end A125100.P5583633617304403295

namespace A125100

/-- `A094436(n)-A057428(n)*A216973(n)` -/
def P5583633617304403295.Spec : Prop :=
  ∀ n, P5583633617304403295.a n = A125100 n

end A125100

/-! ## A125100.P12595962260463696046

`(A104763(n+1)+A025581(n))*A007318(n)`
-/

namespace A125100.P12595962260463696046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104763 (n + 1) + A025581 n) * A007318 n

end

end A125100.P12595962260463696046

namespace A125100

/-- `(A104763(n+1)+A025581(n))*A007318(n)` -/
def P12595962260463696046.Spec : Prop :=
  ∀ n, P12595962260463696046.a n = A125100 n

theorem P12595962260463696046.correct : P12595962260463696046.Spec := by
  intro n
  simp only [A125100, Nat.add_sub_cancel, A125100.P12595962260463696046.a, A125100.P12778823753129633113.a, A007318, A007318.P302227728145965961.a, A025581, A025581.P420762180635059694.a, A104763, A104763.P5539537034161833375.a, A132923, A132923.P17938700751564380223.a, A000045, A000045.P11838749114346432762.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A010054, A010054.P18347828677204923252.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125100

/-! ## A125100.P16921411838258338652

`(A132921(n+1)-A002262(n))*A007318(n)`
-/

namespace A125100.P16921411838258338652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132921 (n + 1) - A002262 n) * A007318 n

end

end A125100.P16921411838258338652

namespace A125100

/-- `(A132921(n+1)-A002262(n))*A007318(n)` -/
def P16921411838258338652.Spec : Prop :=
  ∀ n, P16921411838258338652.a n = A125100 n

end A125100

/-! ## A125100.P2138031544260192650

`(A025581(n)+A000045(A134868(n+1)))*A007318(n)`
-/

namespace A125100.P2138031544260192650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + A000045 (A134868 (n + 1)).toNat) * A007318 n

end

end A125100.P2138031544260192650

namespace A125100

/-- `(A025581(n)+A000045(A134868(n+1)))*A007318(n)` -/
def P2138031544260192650.Spec : Prop :=
  ∀ n, P2138031544260192650.a n = A125100 n

end A125100

/-! ## A125100.P5382930499720056728

`A216973(n)+A094441(A061579(n))`
-/

namespace A125100.P5382930499720056728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A094441 (A061579 n).toNat

end

end A125100.P5382930499720056728

namespace A125100

/-- `A216973(n)+A094441(A061579(n))` -/
def P5382930499720056728.Spec : Prop :=
  ∀ n, P5382930499720056728.a n = A125100 n

end A125100

/-! ## A125100.P6208974217343933879

`A094436(n)-∑[A141692(n)]`
-/

namespace A125100.P6208974217343933879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125100.P6208974217343933879

namespace A125100

/-- `A094436(n)-∑[A141692(n)]` -/
def P6208974217343933879.Spec : Prop :=
  ∀ n, P6208974217343933879.a n = A125100 n

end A125100

/-!
# A125101: T(n,k) = k*binomial(n-1,k-1) + Fibonacci(k)*binomial(n-1,k) (1 <= k <= n).

The programs for A125101, the canonical program `A125101.P2466795799174689552` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125101 has offset 1).

The definition of A125101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125101.P2466795799174689552

`A094435(n+1)+A103406(n)-A094436(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A125101

/-- `A094435(n+1)+A103406(n)-A094436(n)` -/
def P2466795799174689552.Spec : Prop :=
  ∀ n, P2466795799174689552.a n = A125101 (n + 1)

theorem P2466795799174689552.correct : P2466795799174689552.Spec := by
  intro n
  simp only [A125101, Nat.add_sub_cancel]

end A125101

/-! ## A125101.P705043836054843445

`A347277(A187829(n+1))+A103406(n)`
-/

namespace A125101.P705043836054843445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347277 (A187829 (n + 1)).toNat + A103406 n

end

end A125101.P705043836054843445

namespace A125101

/-- `A347277(A187829(n+1))+A103406(n)` -/
def P705043836054843445.Spec : Prop :=
  ∀ n, P705043836054843445.a n = A125101 (n + 1)

end A125101

/-! ## A125101.P6496198231719004931

`A208519(n+1)-A025456(A000637(n))`
-/

namespace A125101.P6496198231719004931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208519 (n + 1) - A025456 (A000637 n).toNat

end

end A125101.P6496198231719004931

namespace A125101

/-- `A208519(n+1)-A025456(A000637(n))` -/
def P6496198231719004931.Spec : Prop :=
  ∀ n, P6496198231719004931.a n = A125101 (n + 1)

end A125101

/-! ## A125101.P14844089263839630340

`A085203(n)+A007318(A157221(n))`
-/

namespace A125101.P14844089263839630340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085203 n + A007318 (A157221 n).toNat

end

end A125101.P14844089263839630340

namespace A125101

/-- `A085203(n)+A007318(A157221(n))` -/
def P14844089263839630340.Spec : Prop :=
  ∀ n, P14844089263839630340.a n = A125101 (n + 1)

end A125101

/-! ## A125101.P12568025696476891434

`or(A124727(n+1), A124761(A334778(n)))`
-/

namespace A125101.P12568025696476891434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124727 (n + 1)) (A124761 (A334778 n).toNat)

end

end A125101.P12568025696476891434

namespace A125101

/-- `or(A124727(n+1), A124761(A334778(n)))` -/
def P12568025696476891434.Spec : Prop :=
  ∀ n, P12568025696476891434.a n = A125101 (n + 1)

end A125101

/-!
# A125102: Triangle read by rows: T(n,k)=(k+1)binomial(n,k) + [3-(-1)^k]binomial(n,k+1)/2 (0<=k<=n).

The programs for A125102, there is no canonical definition to state claims against.
-/

/-! ## A125102.P9087778287234938201

`A326029(A013610(n))+A274602(n+1)`
-/

namespace A125102.P9087778287234938201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326029 (A013610 n).toNat + A274602 (n + 1)

end

end A125102.P9087778287234938201

/-! ## A125102.P3300004241471319573

`A333219(A210220(n+1)%A139182(n+1))`
-/

namespace A125102.P3300004241471319573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (Int.tmod (A210220 (n + 1)) (A139182 (n + 1))).toNat

end

end A125102.P3300004241471319573

/-! ## A125102.P5304633233485434608

`A333219(A210220(n+1))%A353939(2*(n+1))`
-/

namespace A125102.P5304633233485434608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333219 (A210220 (n + 1)).toNat) (A353939 (2 * (n + 1)))

end

end A125102.P5304633233485434608

/-! ## A125102.P4377198751984043961

`A341359(∑[n])+A274602(n+1)`
-/

namespace A125102.P4377198751984043961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341359 (∑ j ∈ Finset.range (n + 1), f1 j) + A274602 (n + 1)

end

end A125102.P4377198751984043961

/-! ## A125102.P4656647933225574967

`A274602(n+1)+A001511(A022182(n))`
-/

namespace A125102.P4656647933225574967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274602 (n + 1) + A001511 (A022182 n).toNat

end

end A125102.P4656647933225574967

/-!
# A125103: Triangle read by rows: T(n,k) = binomial(n,k) + 2^k*binomial(n,k+1) (0 <= k <= n).

The programs for A125103, the canonical program `A125103.P929349591085917062` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125103 has offset 0).

The definition of A125103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125103.P929349591085917062

`A007318(n)+A193862(n)-A013609(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A125103

/-- `A007318(n)+A193862(n)-A013609(n)` -/
def P929349591085917062.Spec : Prop :=
  ∀ n, P929349591085917062.a n = A125103 n

theorem P929349591085917062.correct : P929349591085917062.Spec := by
  intro n
  simp only [A125103]

end A125103

/-! ## A125103.P6875491153786330245

`A198321(n+1)+A082137(n+1)`
-/

namespace A125103.P6875491153786330245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A082137 (n + 1)

end

end A125103.P6875491153786330245

namespace A125103

/-- `A198321(n+1)+A082137(n+1)` -/
def P6875491153786330245.Spec : Prop :=
  ∀ n, P6875491153786330245.a n = A125103 n

end A125103

/-! ## A125103.P6388386499878205101

`floor(A007318(n)+A013609(n+1)/2)`
-/

namespace A125103.P6388386499878205101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 n : ℚ) + (A013609 (n + 1) : ℚ) / 2⌋

end

end A125103.P6388386499878205101

namespace A125103

/-- `floor(A007318(n)+A013609(n+1)/2)` -/
def P6388386499878205101.Spec : Prop :=
  ∀ n, P6388386499878205101.a n = A125103 n

end A125103

/-! ## A125103.P9222016432286622590

`floor((A028326(n)+A013609(n+1))/2)`
-/

namespace A125103.P9222016432286622590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028326 n + A013609 (n + 1) : ℚ) / 2⌋

end

end A125103.P9222016432286622590

namespace A125103

/-- `floor((A028326(n)+A013609(n+1))/2)` -/
def P9222016432286622590.Spec : Prop :=
  ∀ n, P9222016432286622590.a n = A125103 n

end A125103

/-! ## A125103.P8455125692723653967

`floor((A134058(n)+A013609(n+1))/2)`
-/

namespace A125103.P8455125692723653967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134058 n + A013609 (n + 1) : ℚ) / 2⌋

end

end A125103.P8455125692723653967

namespace A125103

/-- `floor((A134058(n)+A013609(n+1))/2)` -/
def P8455125692723653967.Spec : Prop :=
  ∀ n, P8455125692723653967.a n = A125103 n

end A125103

/-! ## A125103.P15164369951202684575

`ceil((A109128(n)+A013609(n+1))/2)`
-/

namespace A125103.P15164369951202684575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n + A013609 (n + 1) : ℚ) / 2⌉

end

end A125103.P15164369951202684575

namespace A125103

/-- `ceil((A109128(n)+A013609(n+1))/2)` -/
def P15164369951202684575.Spec : Prop :=
  ∀ n, P15164369951202684575.a n = A125103 n

end A125103

/-! ## A125103.P1770613391381592293

`A082137(n+1)+A131115(n)-A131114(n)`
-/

namespace A125103.P1770613391381592293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 (n + 1) + (A131115 n - A131114 n)

end

end A125103.P1770613391381592293

namespace A125103

/-- `A082137(n+1)+A131115(n)-A131114(n)` -/
def P1770613391381592293.Spec : Prop :=
  ∀ n, P1770613391381592293.a n = A125103 n

end A125103

/-! ## A125103.P14990070286662037261

`A007318(n)+A007318(n+1)*A140531(n+1)`
-/

namespace A125103.P14990070286662037261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A007318 (n + 1) * A140531 (n + 1)

end

end A125103.P14990070286662037261

namespace A125103

/-- `A007318(n)+A007318(n+1)*A140531(n+1)` -/
def P14990070286662037261.Spec : Prop :=
  ∀ n, P14990070286662037261.a n = A125103 n

end A125103

/-! ## A125103.P9034818037405398203

`A007318(n+1)+A082137(n+1)-A080233(n+1)`
-/

namespace A125103.P9034818037405398203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A082137 (n + 1) - A080233 (n + 1))

end

end A125103.P9034818037405398203

namespace A125103

/-- `A007318(n+1)+A082137(n+1)-A080233(n+1)` -/
def P9034818037405398203.Spec : Prop :=
  ∀ n, P9034818037405398203.a n = A125103 n

end A125103

/-! ## A125103.P2636678616348430291

`A025480(A013609(n+1))+A007318(n)`
-/

namespace A125103.P2636678616348430291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A013609 (n + 1)).toNat + A007318 n

end

end A125103.P2636678616348430291

namespace A125103

/-- `A025480(A013609(n+1))+A007318(n)` -/
def P2636678616348430291.Spec : Prop :=
  ∀ n, P2636678616348430291.a n = A125103 n

end A125103

/-!
# A125104: Triangle read by rows counting compositions (ordered partitions) by minimal part size.

The programs for A125104, there is no canonical definition to state claims against.
-/

/-! ## A125104.P4434313227560094378

`A105147(∑[char[∑[n]]]²-n)`
-/

namespace A125104.P4434313227560094378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105147 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A125104.P4434313227560094378

/-! ## A125104.P3107188911710204886

`A105147(A038722(n+1))%((n+2)^3)`
-/

namespace A125104.P3107188911710204886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105147 (A038722 (n + 1)).toNat) ((n + 2) ^ 3 : ℤ)

end

end A125104.P3107188911710204886

/-! ## A125104.P955233376612417922

`A105147(A038722(n+1))^A178334(n)`
-/

namespace A125104.P955233376612417922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105147 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A125104.P955233376612417922

/-! ## A125104.P7224290506104565237

`gcd(A000038(n), A105147(A038722(n+1)))`
-/

namespace A125104.P7224290506104565237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A105147 (A038722 (n + 1)).toNat)

end

end A125104.P7224290506104565237

/-! ## A125104.P604960361199823209

`lcm(A020985(n), A105147(A038722(n+1)))`
-/

namespace A125104.P604960361199823209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A105147 (A038722 (n + 1)).toNat)

end

end A125104.P604960361199823209

/-! ## A125104.P11897783543822211040

`and(A105147(A038722(n+1)), A126646(n))`
-/

namespace A125104.P11897783543822211040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105147 (A038722 (n + 1)).toNat) (A126646 n)

end

end A125104.P11897783543822211040

/-! ## A125104.P14881905724751223461

`and(A105147(A038722(n+1)), A260196(n))`
-/

namespace A125104.P14881905724751223461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105147 (A038722 (n + 1)).toNat) (A260196 n)

end

end A125104.P14881905724751223461

/-! ## A125104.P16238475856286996950

`∑{d}[A105147(A038722(n+1)), A000010(#)]`
-/

namespace A125104.P16238475856286996950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105147 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A125104.P16238475856286996950

/-! ## A125104.P1721746796987627363

`A000010(C(2, n)!)*A105147(A038722(n+1))`
-/

namespace A125104.P1721746796987627363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A105147 (A038722 (n + 1)).toNat

end

end A125104.P1721746796987627363

/-! ## A125104.P885805849728172899

`A105147(A038722(n+1))^and(1, A000040(n+1))`
-/

namespace A125104.P885805849728172899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105147 (A038722 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A125104.P885805849728172899

/-! ## A125104.P13724474156157193464

`∏{e}[A000040(n+3), A105147(A038722(n+1))^#]`
-/

namespace A125104.P13724474156157193464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A105147 (A038722 (n + 1)).toNat ^ Nat.factorization (f1 n).natAbs p

end

end A125104.P13724474156157193464

/-!
# A125105: Triangular array with the first half of the odd-indexed rows of A048004.

The programs for A125105, there is no canonical definition to state claims against.
-/

/-! ## A125105.P11275653398076724468

`A048004(A341706(n+1)-1)`
-/

namespace A125105.P11275653398076724468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (A341706 (n + 1) - 1).toNat

end

end A125105.P11275653398076724468

/-! ## A125105.P17672027286167683093

`A048004(A341706(gcd(n, A198954(n))))`
-/

namespace A125105.P17672027286167683093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (A341706 (Int.gcd (n : ℤ) (A198954 n))).toNat

end

end A125105.P17672027286167683093

/-! ## A125105.P5795626687731831690

`A048004(A185869(n+1)-A002260(n+1))`
-/

namespace A125105.P5795626687731831690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (A185869 (n + 1) - A002260 (n + 1)).toNat

end

end A125105.P5795626687731831690

/-! ## A125105.P15212819230598527729

`A284639(A210485(n)+A055496(n+1))`
-/

namespace A125105.P15212819230598527729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284639 (A210485 n + A055496 (n + 1)).toNat

end

end A125105.P15212819230598527729

/-! ## A125105.P5984077297095858786

`A317491(A013611(n))%A261993(2*(n+1))`
-/

namespace A125105.P5984077297095858786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317491 (A013611 n).toNat) (A261993 (2 * (n + 1)))

end

end A125105.P5984077297095858786

/-!
# A125106: Enumeration of partitions by binary representation: each 1 is a part; the part size is 1 more than the number of 0's in the rest of the number.

The programs for A125106, there is no canonical definition to state claims against.
-/

/-! ## A125106.P5032777297396590910

`A214411(A000045(n+1))+A066099(n+1)`
-/

namespace A125106.P5032777297396590910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A000045 (n + 1)).toNat + A066099 (n + 1)

end

end A125106.P5032777297396590910

/-! ## A125106.P14526052339798522923

`A122840(A139061(n+1))+A066099(n+1)`
-/

namespace A125106.P14526052339798522923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A139061 (n + 1)).toNat + A066099 (n + 1)

end

end A125106.P14526052339798522923

/-! ## A125106.P1658610319070002050

`A341613(A011260(n+1))+A066099(n+1)`
-/

namespace A125106.P1658610319070002050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (A011260 (n + 1)).toNat + A066099 (n + 1)

end

end A125106.P1658610319070002050

/-! ## A125106.P15806064986046899412

`A285931(A353833(2*(n+1)))+A066099(n+1)`
-/

namespace A125106.P15806064986046899412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285931 (A353833 (2 * (n + 1))).toNat + A066099 (n + 1)

end

end A125106.P15806064986046899412

/-! ## A125106.P3661042284114130068

`A066099(n+1)+A014021(A156039(3*n+1))`
-/

namespace A125106.P3661042284114130068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (n + 1) + A014021 (A156039 (3 * n + 1)).toNat

end

end A125106.P3661042284114130068

/-!
# A125107: Subtract compositions (A011782) from Catalan numbers (A000108).

The programs for A125107, the canonical program `A125107.P14562720571296376294` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125107 has offset 0).

The definition of A125107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125107.P14562720571296376294

`A000108(n)-A011782(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125107

/-- `A000108(n)-A011782(n)` -/
def P14562720571296376294.Spec : Prop :=
  ∀ n, P14562720571296376294.a n = A125107 n

theorem P14562720571296376294.correct : P14562720571296376294.Spec := by
  intro n
  simp only [A125107]

end A125107

/-! ## A125107.P4685419741309499842

`∑[A289597(n)-1]`
-/

namespace A125107.P4685419741309499842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289597 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125107.P4685419741309499842

namespace A125107

/-- `∑[A289597(n)-1]` -/
def P4685419741309499842.Spec : Prop :=
  ∀ n, P4685419741309499842.a n = A125107 n

end A125107

/-! ## A125107.P2838752837739347887

`abs(A168491(n))-ceil(2^(n-1))`
-/

namespace A125107.P2838752837739347887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A125107.P2838752837739347887

namespace A125107

/-- `abs(A168491(n))-ceil(2^(n-1))` -/
def P2838752837739347887.Spec : Prop :=
  ∀ n, P2838752837739347887.a n = A125107 n

end A125107

/-! ## A125107.P17414115257242842024

`A120588(n+1)-round(2^(n-1))`
-/

namespace A125107.P17414115257242842024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A125107.P17414115257242842024

namespace A125107

/-- `A120588(n+1)-round(2^(n-1))` -/
def P17414115257242842024.Spec : Prop :=
  ∀ n, P17414115257242842024.a n = A125107 n

end A125107

/-! ## A125107.P12417352079167748084

`floor(A028303(2*n)-2^(n-1))`
-/

namespace A125107.P12417352079167748084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028303 (2 * n) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A125107.P12417352079167748084

namespace A125107

/-- `floor(A028303(2*n)-2^(n-1))` -/
def P12417352079167748084.Spec : Prop :=
  ∀ n, P12417352079167748084.a n = A125107 n

end A125107

/-! ## A125107.P14311190780085321430

`floor(A126324(2*n)-2^(n-1))`
-/

namespace A125107.P14311190780085321430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126324 (2 * n) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A125107.P14311190780085321430

namespace A125107

/-- `floor(A126324(2*n)-2^(n-1))` -/
def P14311190780085321430.Spec : Prop :=
  ∀ n, P14311190780085321430.a n = A125107 n

end A125107

/-! ## A125107.P18002953824477250297

`floor(A097331(Δ[n²])-2^(n-1))`
-/

namespace A125107.P18002953824477250297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A125107.P18002953824477250297

namespace A125107

/-- `floor(A097331(Δ[n²])-2^(n-1))` -/
def P18002953824477250297.Spec : Prop :=
  ∀ n, P18002953824477250297.a n = A125107 n

end A125107

/-! ## A125107.P7505681100166261357

`floor(abs(A115140(n+1))-2^(n-1))`
-/

namespace A125107.P7505681100166261357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|A115140 (n + 1)| : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A125107.P7505681100166261357

namespace A125107

/-- `floor(abs(A115140(n+1))-2^(n-1))` -/
def P7505681100166261357.Spec : Prop :=
  ∀ n, P7505681100166261357.a n = A125107 n

end A125107

/-! ## A125107.P14223732245213741786

`A000108(round(sqrt(n²+1)))-ceil(2^(n-1))`
-/

namespace A125107.P14223732245213741786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A125107.P14223732245213741786

namespace A125107

/-- `A000108(round(sqrt(n²+1)))-ceil(2^(n-1))` -/
def P14223732245213741786.Spec : Prop :=
  ∀ n, P14223732245213741786.a n = A125107 n

end A125107

/-! ## A125107.P13751692092034712354

`A122958(n)+A120304(n)`
-/

namespace A125107.P13751692092034712354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n + A120304 n

end

end A125107.P13751692092034712354

namespace A125107

/-- `A122958(n)+A120304(n)` -/
def P13751692092034712354.Spec : Prop :=
  ∀ n, P13751692092034712354.a n = A125107 n

end A125107

/-! ## A125107.P16615400946925427418

`A377659(n)+A153008(n)`
-/

namespace A125107.P16615400946925427418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377659 n + A153008 n

end

end A125107.P16615400946925427418

namespace A125107

/-- `A377659(n)+A153008(n)` -/
def P16615400946925427418.Spec : Prop :=
  ∀ n, P16615400946925427418.a n = A125107 n

theorem P16615400946925427418.correct : P16615400946925427418.Spec := by
  intro n
  simp only [A125107, Nat.add_sub_cancel, A125107.P16615400946925427418.a, A125107.P14562720571296376294.a, A000108, A000108.P17551949696095299361.a, A011782, A011782.P7461078519819856082.a, A153008, A153008.P2284221830349422742.a, A377659, A377659.P12368812019478080147.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A125107

/-! ## A125107.P9207981204799134406

`A141353(n)-A003945(n)`
-/

namespace A125107.P9207981204799134406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141353 n - A003945 n

end

end A125107.P9207981204799134406

namespace A125107

/-- `A141353(n)-A003945(n)` -/
def P9207981204799134406.Spec : Prop :=
  ∀ n, P9207981204799134406.a n = A125107 n

end A125107

/-! ## A125107.P7472763380126504683

`A132807(n)-A083329(n)`
-/

namespace A125107.P7472763380126504683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n - A083329 n

end

end A125107.P7472763380126504683

namespace A125107

/-- `A132807(n)-A083329(n)` -/
def P7472763380126504683.Spec : Prop :=
  ∀ n, P7472763380126504683.a n = A125107 n

end A125107

/-! ## A125107.P4259833224122493025

`A141351(n)-A094373(n)`
-/

namespace A125107.P4259833224122493025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n - A094373 n

end

end A125107.P4259833224122493025

namespace A125107

/-- `A141351(n)-A094373(n)` -/
def P4259833224122493025.Spec : Prop :=
  ∀ n, P4259833224122493025.a n = A125107 n

end A125107

/-! ## A125107.P6809492334922147249

`A028304(2*n)-A011782(n)`
-/

namespace A125107.P6809492334922147249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - A011782 n

end

end A125107.P6809492334922147249

namespace A125107

/-- `A028304(2*n)-A011782(n)` -/
def P6809492334922147249.Spec : Prop :=
  ∀ n, P6809492334922147249.a n = A125107 n

end A125107

/-! ## A125107.P11308546046848439207

`A126120(2*n)-A011782(n)`
-/

namespace A125107.P11308546046848439207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A011782 n

end

end A125107.P11308546046848439207

namespace A125107

/-- `A126120(2*n)-A011782(n)` -/
def P11308546046848439207.Spec : Prop :=
  ∀ n, P11308546046848439207.a n = A125107 n

end A125107

/-! ## A125107.P3544320516902683640

`record[A126120(n+1)]-A131577(n)`
-/

namespace A125107.P3544320516902683640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A131577 n

end

end A125107.P3544320516902683640

namespace A125107

/-- `record[A126120(n+1)]-A131577(n)` -/
def P3544320516902683640.Spec : Prop :=
  ∀ n, P3544320516902683640.a n = A125107 n

end A125107

/-! ## A125107.P603161262073262883

`A089408(2*n+1)-A011782(n)`
-/

namespace A125107.P603161262073262883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - A011782 n

end

end A125107.P603161262073262883

namespace A125107

/-- `A089408(2*n+1)-A011782(n)` -/
def P603161262073262883.Spec : Prop :=
  ∀ n, P603161262073262883.a n = A125107 n

end A125107

/-! ## A125107.P14909936994939909294

`A028304(2*n)-A166444(n+1)`
-/

namespace A125107.P14909936994939909294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - A166444 (n + 1)

end

end A125107.P14909936994939909294

namespace A125107

/-- `A028304(2*n)-A166444(n+1)` -/
def P14909936994939909294.Spec : Prop :=
  ∀ n, P14909936994939909294.a n = A125107 n

end A125107

/-! ## A125107.P6907380676933626316

`A097331(2*n+1)-Δ[A034008(n+1)]`
-/

namespace A125107.P6907380676933626316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A125107.P6907380676933626316

namespace A125107

/-- `A097331(2*n+1)-Δ[A034008(n+1)]` -/
def P6907380676933626316.Spec : Prop :=
  ∀ n, P6907380676933626316.a n = A125107 n

end A125107

/-!
# A125108: Column sums of a Gaussian polynomial-shaped array. Row sums generate the Eulerian array A008292.

The programs for A125108, there is no canonical definition to state claims against.
-/

/-! ## A125108.P13641101226535058509

`A213526(abs(A361791(n)))`
-/

namespace A125108.P13641101226535058509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213526 |A361791 n|.toNat

end

end A125108.P13641101226535058509

/-! ## A125108.P15954504397439927833

`A116410(n)+A005833(n)`
-/

namespace A125108.P15954504397439927833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116410 n + A005833 n

end

end A125108.P15954504397439927833

/-! ## A125108.P17409337152615913607

`A099216(n)-A357283(n)`
-/

namespace A125108.P17409337152615913607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099216 n - A357283 n

end

end A125108.P17409337152615913607

/-! ## A125108.P2910479096627227776

`A368672(n)-A325927(n)`
-/

namespace A125108.P2910479096627227776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368672 n - A325927 n

end

end A125108.P2910479096627227776

/-!
# A125109: Differences between consecutive weird numbers.

The programs for A125109, there is no canonical definition to state claims against.
-/

/-! ## A125109.P1389805972355429195

`A006037(n+2)-A006037(n+1)`
-/

namespace A125109.P1389805972355429195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 2) - A006037 (n + 1)

end

end A125109.P1389805972355429195

/-! ## A125109.P2374718083620314617

`Δ[A006037(n+1)]`
-/

namespace A125109.P2374718083620314617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125109.P2374718083620314617

/-! ## A125109.P11902005550665919078

`abs(Δ[A006037(1-(n-2*n))])`
-/

namespace A125109.P11902005550665919078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A125109.P11902005550665919078

/-! ## A125109.P10013506515377576965

`Δ[record[A006037(A329048(n))]]`
-/

namespace A125109.P10013506515377576965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125109.P10013506515377576965

/-! ## A125109.P3484136497241982950

`Δ[record[A006037(A344180(n))]]`
-/

namespace A125109.P3484136497241982950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125109.P3484136497241982950

/-! ## A125109.P10385247339984104079

`Δ[record[A006037(A141256(n))]]`
-/

namespace A125109.P10385247339984104079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125109.P10385247339984104079

/-!
# A125110: Cubes which have a partition as the sum of 2 squares.

The programs for A125110, the canonical program `A125110.P17127943066742272730` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125110 has offset 1).

The definition of A125110 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125110.P17127943066742272730

`A001481(n+1)^3`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A125110

/-- `A001481(n+1)^3` -/
def P17127943066742272730.Spec : Prop :=
  ∀ n, P17127943066742272730.a n = A125110 (n + 1)

theorem P17127943066742272730.correct : P17127943066742272730.Spec := by
  intro n
  simp only [A125110, Nat.add_sub_cancel]

end A125110

/-! ## A125110.P76176850013413897

`eq[1, A229062(n)]^3`
-/

namespace A125110.P76176850013413897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A125110.P76176850013413897

namespace A125110

/-- `eq[1, A229062(n)]^3` -/
def P76176850013413897.Spec : Prop :=
  ∀ n, (P76176850013413897.a n : ℤ) = A125110 (n + 1)

theorem P76176850013413897.correct : P76176850013413897.Spec := by
  intro n
  simp only [A125110, Nat.add_sub_cancel, A125110.P76176850013413897.f1, A125110.P76176850013413897.f2, A125110.P76176850013413897.a, A125110.P17127943066742272730.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, A069011, A069011.P9337676359071489470.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125110

/-! ## A125110.P4695432535856817922

`(A166687(n+1)-1)^3`
-/

namespace A125110.P4695432535856817922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166687 (n + 1) - 1) ^ 3

end

end A125110.P4695432535856817922

namespace A125110

/-- `(A166687(n+1)-1)^3` -/
def P4695432535856817922.Spec : Prop :=
  ∀ n, P4695432535856817922.a n = A125110 (n + 1)

theorem P4695432535856817922.correct : P4695432535856817922.Spec := by
  intro n
  simp only [A125110, Nat.add_sub_cancel, A125110.P4695432535856817922.a, A125110.P17127943066742272730.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A166687, A166687.P18219030986989704232.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, A069011, A069011.P9337676359071489470.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125110

/-! ## A125110.P10073324346026967969

`∪[n², A000404(n+1)]^3`
-/

namespace A125110.P10073324346026967969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A125110.P10073324346026967969

namespace A125110

/-- `∪[n², A000404(n+1)]^3` -/
def P10073324346026967969.Spec : Prop :=
  ∀ n, (P10073324346026967969.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P18431705085078657441

`∪[A000415(n+1), n²]^3`
-/

namespace A125110.P18431705085078657441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n ^ 3

end

end A125110.P18431705085078657441

namespace A125110

/-- `∪[A000415(n+1), n²]^3` -/
def P18431705085078657441.Spec : Prop :=
  ∀ n, (P18431705085078657441.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P11400315133394424132

`(A166687(n+1)-1)*(A128106(n+1)/2)²`
-/

namespace A125110.P11400315133394424132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166687 (n + 1) - 1 : ℚ) * ((A128106 (n + 1) : ℚ) / 2) ^ 2

end

end A125110.P11400315133394424132

namespace A125110

/-- `(A166687(n+1)-1)*(A128106(n+1)/2)²` -/
def P11400315133394424132.Spec : Prop :=
  ∀ n, P11400315133394424132.a n = (A125110 (n + 1) : ℚ)

end A125110

/-! ## A125110.P15456476067799911225

`eq[0, A070176(n)]^3`
-/

namespace A125110.P15456476067799911225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A125110.P15456476067799911225

namespace A125110

/-- `eq[0, A070176(n)]^3` -/
def P15456476067799911225.Spec : Prop :=
  ∀ n, (P15456476067799911225.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P4356714122943662774

`lt[0, A104794(n)²]^3`
-/

namespace A125110.P4356714122943662774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A125110.P4356714122943662774

namespace A125110

/-- `lt[0, A104794(n)²]^3` -/
def P4356714122943662774.Spec : Prop :=
  ∀ n, (P4356714122943662774.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P898651434823153598

`A000578(A001481(n+1))`
-/

namespace A125110.P898651434823153598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A001481 (n + 1)).toNat

end

end A125110.P898651434823153598

namespace A125110

/-- `A000578(A001481(n+1))` -/
def P898651434823153598.Spec : Prop :=
  ∀ n, P898651434823153598.a n = A125110 (n + 1)

end A125110

/-! ## A125110.P4423546381471239420

`A000578(eq[0, A070176(n)])`
-/

namespace A125110.P4423546381471239420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125110.P4423546381471239420

namespace A125110

/-- `A000578(eq[0, A070176(n)])` -/
def P4423546381471239420.Spec : Prop :=
  ∀ n, P4423546381471239420.a n = A125110 (n + 1)

end A125110

/-! ## A125110.P5342324760839436985

`A000578(lt[A070176(n), 1])`
-/

namespace A125110.P5342324760839436985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A125110.P5342324760839436985

namespace A125110

/-- `A000578(lt[A070176(n), 1])` -/
def P5342324760839436985.Spec : Prop :=
  ∀ n, P5342324760839436985.a n = A125110 (n + 1)

end A125110

/-! ## A125110.P4895905804556802164

`A000578(comp[A022544(n+1)])`
-/

namespace A125110.P4895905804556802164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125110.P4895905804556802164

namespace A125110

/-- `A000578(comp[A022544(n+1)])` -/
def P4895905804556802164.Spec : Prop :=
  ∀ n, P4895905804556802164.a n = A125110 (n + 1)

end A125110

/-! ## A125110.P16121276832423672276

`∪[A001014(n), A050803(n+1)]`
-/

namespace A125110.P16121276832423672276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125110.P16121276832423672276

namespace A125110

/-- `∪[A001014(n), A050803(n+1)]` -/
def P16121276832423672276.Spec : Prop :=
  ∀ n, (P16121276832423672276.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P11933724071210296905

`A034828(A128106(n+1))`
-/

namespace A125110.P11933724071210296905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A128106 (n + 1)).toNat

end

end A125110.P11933724071210296905

namespace A125110

/-- `A034828(A128106(n+1))` -/
def P11933724071210296905.Spec : Prop :=
  ∀ n, P11933724071210296905.a n = A125110 (n + 1)

end A125110

/-! ## A125110.P339906028151508932

`∩[A230314(n+1), n*n²]`
-/

namespace A125110.P339906028151508932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A125110.P339906028151508932

namespace A125110

/-- `∩[A230314(n+1), n*n²]` -/
def P339906028151508932.Spec : Prop :=
  ∀ n, (P339906028151508932.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P10034145263945060555

`∩[A000578(n), A230314(n+1)]`
-/

namespace A125110.P10034145263945060555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125110.P10034145263945060555

namespace A125110

/-- `∩[A000578(n), A230314(n+1)]` -/
def P10034145263945060555.Spec : Prop :=
  ∀ n, (P10034145263945060555.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P9217069668261251103

`∩[A109900(n), A230314(n+1)]`
-/

namespace A125110.P9217069668261251103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125110.P9217069668261251103

namespace A125110

/-- `∩[A109900(n), A230314(n+1)]` -/
def P9217069668261251103.Spec : Prop :=
  ∀ n, (P9217069668261251103.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P5581738731361191164

`∩[A125084(n+1), A230314(n+1)]`
-/

namespace A125110.P5581738731361191164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125110.P5581738731361191164

namespace A125110

/-- `∩[A125084(n+1), A230314(n+1)]` -/
def P5581738731361191164.Spec : Prop :=
  ∀ n, (P5581738731361191164.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P11581799297752413204

`∩[A349201(n+1), A230314(n+1)]`
-/

namespace A125110.P11581799297752413204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125110.P11581799297752413204

namespace A125110

/-- `∩[A349201(n+1), A230314(n+1)]` -/
def P11581799297752413204.Spec : Prop :=
  ∀ n, (P11581799297752413204.a n : ℤ) = A125110 (n + 1)

end A125110

/-! ## A125110.P11623800323878890152

`A336820(∑[n+2])^3`
-/

namespace A125110.P11623800323878890152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A125110.P11623800323878890152

namespace A125110

/-- `A336820(∑[n+2])^3` -/
def P11623800323878890152.Spec : Prop :=
  ∀ n, P11623800323878890152.a n = A125110 (n + 1)

end A125110

/-!
# A125111: Cubes which do not have a partition as the sum of 2 squares.

The programs for A125111, the canonical program `A125111.P6188776523873180640` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125111 has offset 1).

The definition of A125111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125111.P6188776523873180640

`A022544(n+1)^3`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A125111

/-- `A022544(n+1)^3` -/
def P6188776523873180640.Spec : Prop :=
  ∀ n, P6188776523873180640.a n = A125111 (n + 1)

theorem P6188776523873180640.correct : P6188776523873180640.Spec := by
  intro n
  simp only [A125111, Nat.add_sub_cancel]

end A125111

/-! ## A125111.P18037224519843581573

`comp[A163547(n)]^3`
-/

namespace A125111.P18037224519843581573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A125111.P18037224519843581573

namespace A125111

/-- `comp[A163547(n)]^3` -/
def P18037224519843581573.Spec : Prop :=
  ∀ n, (P18037224519843581573.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P16479761554688934666

`comp[A001481(n+1)]^3`
-/

namespace A125111.P16479761554688934666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A125111.P16479761554688934666

namespace A125111

/-- `comp[A001481(n+1)]^3` -/
def P16479761554688934666.Spec : Prop :=
  ∀ n, (P16479761554688934666.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P8152029080050977823

`comp[A163531(n)]^3`
-/

namespace A125111.P8152029080050977823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A125111.P8152029080050977823

namespace A125111

/-- `comp[A163531(n)]^3` -/
def P8152029080050977823.Spec : Prop :=
  ∀ n, (P8152029080050977823.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P2834236342398408452

`∩[A179125(n+1), A396778(n+1)]`
-/

namespace A125111.P2834236342398408452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P2834236342398408452

namespace A125111

/-- `∩[A179125(n+1), A396778(n+1)]` -/
def P2834236342398408452.Spec : Prop :=
  ∀ n, (P2834236342398408452.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P4983723552546419906

`comp[A069011(n)]^3`
-/

namespace A125111.P4983723552546419906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A125111.P4983723552546419906

namespace A125111

/-- `comp[A069011(n)]^3` -/
def P4983723552546419906.Spec : Prop :=
  ∀ n, (P4983723552546419906.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P8071560500517091180

`eq[0, A000161(n)]^3`
-/

namespace A125111.P8071560500517091180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A125111.P8071560500517091180

namespace A125111

/-- `eq[0, A000161(n)]^3` -/
def P8071560500517091180.Spec : Prop :=
  ∀ n, (P8071560500517091180.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P420406142791373455

`A000578(A022544(n+1))`
-/

namespace A125111.P420406142791373455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A022544 (n + 1)).toNat

end

end A125111.P420406142791373455

namespace A125111

/-- `A000578(A022544(n+1))` -/
def P420406142791373455.Spec : Prop :=
  ∀ n, P420406142791373455.a n = A125111 (n + 1)

end A125111

/-! ## A125111.P17531066330644009736

`A000578(lt[0, A070176(n)])`
-/

namespace A125111.P17531066330644009736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125111.P17531066330644009736

namespace A125111

/-- `A000578(lt[0, A070176(n)])` -/
def P17531066330644009736.Spec : Prop :=
  ∀ n, P17531066330644009736.a n = A125111 (n + 1)

end A125111

/-! ## A125111.P16426546554822302190

`A000578(lt[2, A002828(n)])`
-/

namespace A125111.P16426546554822302190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125111.P16426546554822302190

namespace A125111

/-- `A000578(lt[2, A002828(n)])` -/
def P16426546554822302190.Spec : Prop :=
  ∀ n, P16426546554822302190.a n = A125111 (n + 1)

end A125111

/-! ## A125111.P9154706641957972227

`A000578(comp[A001481(n+1)])`
-/

namespace A125111.P9154706641957972227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125111.P9154706641957972227

namespace A125111

/-- `A000578(comp[A001481(n+1)])` -/
def P9154706641957972227.Spec : Prop :=
  ∀ n, P9154706641957972227.a n = A125111 (n + 1)

end A125111

/-! ## A125111.P7624854656381826447

`∩[A396778(n+1), A000578(n)]`
-/

namespace A125111.P7624854656381826447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P7624854656381826447

namespace A125111

/-- `∩[A396778(n+1), A000578(n)]` -/
def P7624854656381826447.Spec : Prop :=
  ∀ n, (P7624854656381826447.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P5051883244677429099

`∩[A184628(n+1), A396778(n+1)]`
-/

namespace A125111.P5051883244677429099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P5051883244677429099

namespace A125111

/-- `∩[A184628(n+1), A396778(n+1)]` -/
def P5051883244677429099.Spec : Prop :=
  ∀ n, (P5051883244677429099.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P16685088474140662306

`∩[A396778(n+1), A109900(n)]`
-/

namespace A125111.P16685088474140662306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P16685088474140662306

namespace A125111

/-- `∩[A396778(n+1), A109900(n)]` -/
def P16685088474140662306.Spec : Prop :=
  ∀ n, (P16685088474140662306.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P516411448919021830

`∩[A210433(n+1), A396778(n+1)]`
-/

namespace A125111.P516411448919021830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P516411448919021830

namespace A125111

/-- `∩[A210433(n+1), A396778(n+1)]` -/
def P516411448919021830.Spec : Prop :=
  ∀ n, (P516411448919021830.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P11555031872810337432

`∩[A349201(n+1), A396778(n+1)]`
-/

namespace A125111.P11555031872810337432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P11555031872810337432

namespace A125111

/-- `∩[A349201(n+1), A396778(n+1)]` -/
def P11555031872810337432.Spec : Prop :=
  ∀ n, (P11555031872810337432.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P1882596413108462304

`∩[A396778(n+1), A006501(n)]`
-/

namespace A125111.P1882596413108462304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P1882596413108462304

namespace A125111

/-- `∩[A396778(n+1), A006501(n)]` -/
def P1882596413108462304.Spec : Prop :=
  ∀ n, (P1882596413108462304.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P12856145757110781939

`∩[A053012(n+1), A396778(n+1)]`
-/

namespace A125111.P12856145757110781939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P12856145757110781939

namespace A125111

/-- `∩[A053012(n+1), A396778(n+1)]` -/
def P12856145757110781939.Spec : Prop :=
  ∀ n, (P12856145757110781939.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P663697518818948982

`∩[A057097(n+1), A396778(n+1)]`
-/

namespace A125111.P663697518818948982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P663697518818948982

namespace A125111

/-- `∩[A057097(n+1), A396778(n+1)]` -/
def P663697518818948982.Spec : Prop :=
  ∀ n, (P663697518818948982.a n : ℤ) = A125111 (n + 1)

end A125111

/-! ## A125111.P12701883455258262229

`∩[A126200(n+1), A396778(n+1)]`
-/

namespace A125111.P12701883455258262229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125111.P12701883455258262229

namespace A125111

/-- `∩[A126200(n+1), A396778(n+1)]` -/
def P12701883455258262229.Spec : Prop :=
  ∀ n, (P12701883455258262229.a n : ℤ) = A125111 (n + 1)

end A125111

/-!
# A125113: Numbers n such that 2n-1, 4n-1, 8n-1, 16n-1, 32n-1 and 64n-1 are primes.

The programs for A125113, there is no canonical definition to state claims against.
-/

/-! ## A125113.P18143844104420018397

`ceil(A023330(n+1)/2)`
-/

namespace A125113.P18143844104420018397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023330 (n + 1) : ℚ) / 2⌉

end

end A125113.P18143844104420018397

/-! ## A125113.P13796677556724503609

`or(round(A023330(n+1)/2), A000007(n))`
-/

namespace A125113.P13796677556724503609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A023330 (n + 1) : ℚ) / 2)) (A000007 n)

end

end A125113.P13796677556724503609

/-! ## A125113.P6675169610428145120

`A007814(2*n+5)+(A023330(n+1)+1)/2`
-/

namespace A125113.P6675169610428145120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (2 * n + 5) : ℚ) + (A023330 (n + 1) + 1 : ℚ) / 2

end

end A125113.P6675169610428145120

/-! ## A125113.P249560123712087443

`round(A023330(n+1)/A000005(A007693(n+1)))`
-/

namespace A125113.P249560123712087443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023330 (n + 1) : ℚ) / (A000005 (A007693 (n + 1)).toNat : ℚ))

end

end A125113.P249560123712087443

/-! ## A125113.P8028623933388015608

`round(A023330(n+1)/A000005(A023228(n+1)))`
-/

namespace A125113.P8028623933388015608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023330 (n + 1) : ℚ) / (A000005 (A023228 (n + 1)).toNat : ℚ))

end

end A125113.P8028623933388015608

/-! ## A125113.P12329483232111193451

`round(A023330(n+1)/A000005(A023256(n+1)))`
-/

namespace A125113.P12329483232111193451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023330 (n + 1) : ℚ) / (A000005 (A023256 (n + 1)).toNat : ℚ))

end

end A125113.P12329483232111193451

/-! ## A125113.P3255832306457805984

`∩[A101994(n+1), A124494(n+1)]`
-/

namespace A125113.P3255832306457805984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125113.P3255832306457805984

/-! ## A125113.P6321932972186146062

`∩[A101994(n+1), A124017(n+1)]`
-/

namespace A125113.P6321932972186146062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125113.P6321932972186146062

/-! ## A125113.P5085471417789634546

`round(A023330(n+1)/A000005(A023260(n+1)))`
-/

namespace A125113.P5085471417789634546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023330 (n + 1) : ℚ) / (A000005 (A023260 (n + 1)).toNat : ℚ))

end

end A125113.P5085471417789634546

/-!
# A125114: Sum of the first n weird numbers.

The programs for A125114, there is no canonical definition to state claims against.
-/

/-! ## A125114.P15206486433287691235

`∑[A006037(n+1)]`
-/

namespace A125114.P15206486433287691235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P15206486433287691235

/-! ## A125114.P1276443066655235140

`∑[lcm(2, A006037(Δ[n²]-n))]`
-/

namespace A125114.P1276443066655235140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A006037 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P1276443066655235140

/-! ## A125114.P1407171928211433801

`∑[record[A006037(A022446(n))]]`
-/

namespace A125114.P1407171928211433801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P1407171928211433801

/-! ## A125114.P7848889890162554509

`∑[record[A006037(A028920(n))]]`
-/

namespace A125114.P7848889890162554509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P7848889890162554509

/-! ## A125114.P15923421917533979945

`∑[record[A006037(A065648(n))]]`
-/

namespace A125114.P15923421917533979945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P15923421917533979945

/-! ## A125114.P6449324087061085720

`∑[record[A006037(A134478(n))]]`
-/

namespace A125114.P6449324087061085720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P6449324087061085720

/-! ## A125114.P286330980088303287

`∑[record[A006037(A141256(n))]]`
-/

namespace A125114.P286330980088303287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P286330980088303287

/-! ## A125114.P12665146230778512925

`∑[record[A006037(A158416(n))]]`
-/

namespace A125114.P12665146230778512925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P12665146230778512925

/-! ## A125114.P14387249999278426104

`∑[record[A006037(A324347(n))]]`
-/

namespace A125114.P14387249999278426104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P14387249999278426104

/-! ## A125114.P4932626249141769842

`∑[∪[A002975(n+1), A348631(n+1)]]`
-/

namespace A125114.P4932626249141769842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348631 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125114.P4932626249141769842

/-!
# A125115: Differences between consecutive abundant numbers.

The programs for A125115, the canonical program `A125115.P9586527931005899637` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125115 has offset 1).

The definition of A125115 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125115.P9586527931005899637

`A005101(n+2)-A005101(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125115

/-- `A005101(n+2)-A005101(n+1)` -/
def P9586527931005899637.Spec : Prop :=
  ∀ n, P9586527931005899637.a n = A125115 (n + 1)

theorem P9586527931005899637.correct : P9586527931005899637.Spec := by
  intro n
  simp only [A125115, Nat.add_sub_cancel]

end A125115

/-! ## A125115.P9710475686930217193

`Δ[∪[A087245(n+1), A087248(n+1)]]`
-/

namespace A125115.P9710475686930217193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P9710475686930217193

namespace A125115

/-- `Δ[∪[A087245(n+1), A087248(n+1)]]` -/
def P9710475686930217193.Spec : Prop :=
  ∀ n, P9710475686930217193.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P6155791432960003498

`Δ[∪[A087245(n+1), A129656(n+1)]]`
-/

namespace A125115.P6155791432960003498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P6155791432960003498

namespace A125115

/-- `Δ[∪[A087245(n+1), A129656(n+1)]]` -/
def P6155791432960003498.Spec : Prop :=
  ∀ n, P6155791432960003498.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P2326288902925870661

`Δ[A005101(n+1)]`
-/

namespace A125115.P2326288902925870661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125115.P2326288902925870661

namespace A125115

/-- `Δ[A005101(n+1)]` -/
def P2326288902925870661.Spec : Prop :=
  ∀ n, P2326288902925870661.a n = A125115 (n + 1)

theorem P2326288902925870661.correct : P2326288902925870661.Spec := by
  intro n
  simp only [A125115, Nat.add_sub_cancel, A125115.P2326288902925870661.f1, A125115.P2326288902925870661.a, A125115.P9586527931005899637.a, SequenceMachineLib.memo_apply]

end A125115

/-! ## A125115.P3207724491152167530

`Δ[A224907(n+1)/2]`
-/

namespace A125115.P3207724491152167530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125115.P3207724491152167530

namespace A125115

/-- `Δ[A224907(n+1)/2]` -/
def P3207724491152167530.Spec : Prop :=
  ∀ n, P3207724491152167530.a n = (A125115 (n + 1) : ℚ)

theorem P3207724491152167530.correct : P3207724491152167530.Spec := by
  intro n
  simp only [A125115, Nat.add_sub_cancel, A125115.P3207724491152167530.f1, A125115.P3207724491152167530.a, A125115.P9586527931005899637.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A224907, A224907.P17184024121669876912.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A125115

/-! ## A125115.P2944139690343370482

`Δ[eq[1, A060862(n+1)]]`
-/

namespace A125115.P2944139690343370482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P2944139690343370482

namespace A125115

/-- `Δ[eq[1, A060862(n+1)]]` -/
def P2944139690343370482.Spec : Prop :=
  ∀ n, P2944139690343370482.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P10937890149026037035

`Δ[lt[2*(n+1), A000203(n+1)]]`
-/

namespace A125115.P10937890149026037035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P10937890149026037035

namespace A125115

/-- `Δ[lt[2*(n+1), A000203(n+1)]]` -/
def P10937890149026037035.Spec : Prop :=
  ∀ n, P10937890149026037035.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P11616084761428228043

`A001281(Δ[A224907(n+1)])`
-/

namespace A125115.P11616084761428228043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A125115.P11616084761428228043

namespace A125115

/-- `A001281(Δ[A224907(n+1)])` -/
def P11616084761428228043.Spec : Prop :=
  ∀ n, P11616084761428228043.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P17485283478343864038

`A005101(n+2)+A005101(n+1)*A153881(n+2)`
-/

namespace A125115.P17485283478343864038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2) + A005101 (n + 1) * A153881 (n + 2)

end

end A125115.P17485283478343864038

namespace A125115

/-- `A005101(n+2)+A005101(n+1)*A153881(n+2)` -/
def P17485283478343864038.Spec : Prop :=
  ∀ n, P17485283478343864038.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P2618956708447730118

`Δ[lt[A033879(n+1), 0]]`
-/

namespace A125115.P2618956708447730118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P2618956708447730118

namespace A125115

/-- `Δ[lt[A033879(n+1), 0]]` -/
def P2618956708447730118.Spec : Prop :=
  ∀ n, P2618956708447730118.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P11428604540923271973

`Δ[lt[A336564(n+1), A336563(n+1)]]`
-/

namespace A125115.P11428604540923271973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P11428604540923271973

namespace A125115

/-- `Δ[lt[A336564(n+1), A336563(n+1)]]` -/
def P11428604540923271973.Spec : Prop :=
  ∀ n, P11428604540923271973.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P236163880074648819

`Δ[lt[0, A080224(n+1)]]`
-/

namespace A125115.P236163880074648819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P236163880074648819

namespace A125115

/-- `Δ[lt[0, A080224(n+1)]]` -/
def P236163880074648819.Spec : Prop :=
  ∀ n, P236163880074648819.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P2121888267632005756

`Δ[lt[1, A033880(n+1)]]`
-/

namespace A125115.P2121888267632005756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P2121888267632005756

namespace A125115

/-- `Δ[lt[1, A033880(n+1)]]` -/
def P2121888267632005756.Spec : Prop :=
  ∀ n, P2121888267632005756.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P16102683950099925146

`Δ[lt[1, A237588(n+1)]]`
-/

namespace A125115.P16102683950099925146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P16102683950099925146

namespace A125115

/-- `Δ[lt[1, A237588(n+1)]]` -/
def P16102683950099925146.Spec : Prop :=
  ∀ n, P16102683950099925146.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P5334750449740030200

`Δ[lt[2*n, A039653(n)]]`
-/

namespace A125115.P5334750449740030200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P5334750449740030200

namespace A125115

/-- `Δ[lt[2*n, A039653(n)]]` -/
def P5334750449740030200.Spec : Prop :=
  ∀ n, P5334750449740030200.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P18215647913875463146

`Δ[lt[n+1, A001065(n+1)]]`
-/

namespace A125115.P18215647913875463146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125115.P18215647913875463146

namespace A125115

/-- `Δ[lt[n+1, A001065(n+1)]]` -/
def P18215647913875463146.Spec : Prop :=
  ∀ n, P18215647913875463146.a n = A125115 (n + 1)

end A125115

/-! ## A125115.P11429187172792512285

`Δ[A091194(A217740(n+1))]`
-/

namespace A125115.P11429187172792512285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A217740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125115.P11429187172792512285

namespace A125115

/-- `Δ[A091194(A217740(n+1))]` -/
def P11429187172792512285.Spec : Prop :=
  ∀ n, P11429187172792512285.a n = A125115 (n + 1)

end A125115

/-!
# A125117: First differences of A034887.

The programs for A125117, the canonical program `A125117.P5427261234910330641` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125117 has offset 0).

The definition of A125117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125117.P5427261234910330641

`Δ[floor(n/log2(10))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125117

/-- `Δ[floor(n/log2(10))]` -/
def P5427261234910330641.Spec : Prop :=
  ∀ n, P5427261234910330641.a n = A125117 n

theorem P5427261234910330641.correct : P5427261234910330641.Spec := by
  intro n
  simp only [A125117]

end A125117

/-!
# A125118: Triangle read by rows: T(n,k) = value of the n-th repunit in base (k+1) representation, 1<=k<=n.

The programs for A125118, there is no canonical definition to state claims against.
-/

/-! ## A125118.P12773645510477361223

`A033677(A156291(n+1))`
-/

namespace A125118.P12773645510477361223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A156291 (n + 1)).toNat

end

end A125118.P12773645510477361223

/-!
# A125119: Values of repunits with odd length L in base (L+3)/2 representation.

The programs for A125119, there is no canonical definition to state claims against.
-/

/-! ## A125119.P3366707125908863291

`((n+2)^(2*n+1)-1)/(n+1)`
-/

namespace A125119.P3366707125908863291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ (2 * n + 1) : ℤ) - 1 : ℚ) / (n + 1 : ℚ)

end

end A125119.P3366707125908863291

/-! ## A125119.P10163772578851912111

`A125118((n+1)²+n²)`
-/

namespace A125119.P10163772578851912111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125118 ((n + 1) ^ 2 + n ^ 2)

end

end A125119.P10163772578851912111

/-! ## A125119.P18375705161783223552

`round(((n+2)^A005408(n)-1)/(n+1))`
-/

namespace A125119.P18375705161783223552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 2 : ℚ) ^ (A005408 n : ℤ) - 1) / (n + 1 : ℚ))

end

end A125119.P18375705161783223552

/-! ## A125119.P8392816712731873317

`A055129(A062708(n+1))`
-/

namespace A125119.P8392816712731873317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (A062708 (n + 1)).toNat

end

end A125119.P8392816712731873317

/-! ## A125119.P6274780263493458649

`A055129(A081268(n)+1)`
-/

namespace A125119.P6274780263493458649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (A081268 n + 1).toNat

end

end A125119.P6274780263493458649

/-!
# A125120: Sum of values of repunits of length n in base b representation with 1

The programs for A125120, there is no canonical definition to state claims against.
-/

/-! ## A125120.P14021849907371976407

`A011371(A001147(n)*A190488(2*n+1))`
-/

namespace A125120.P14021849907371976407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A001147 n * A190488 (2 * n + 1)).toNat

end

end A125120.P14021849907371976407

/-!
# A125121: Sturdy numbers: n such that in binary notation k*n has at least as many 1-bits as n for all k>0.

The programs for A125121, there is no canonical definition to state claims against.
-/

/-! ## A125121.P5971966581776049737

`eq[A000120(n+1), A086342(n+1)]+1`
-/

namespace A125121.P5971966581776049737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A125121.P5971966581776049737

/-! ## A125121.P8507519466447605629

`eq[A000120(n), A086342(A028310(n))]`
-/

namespace A125121.P8507519466447605629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125121.P8507519466447605629

/-! ## A125121.P16814897296314287988

`eq[A043276(A001316(n)), A086342(n)]`
-/

namespace A125121.P16814897296314287988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125121.P16814897296314287988

/-! ## A125121.P13622435146744161156

`eq[A070939(A038573(n)), A086342(n)]`
-/

namespace A125121.P13622435146744161156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A038573 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125121.P13622435146744161156

/-! ## A125121.P17184037939874103028

`eq[A000120(n), A086342(A257088(n))]`
-/

namespace A125121.P17184037939874103028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125121.P17184037939874103028

/-! ## A125121.P14289320642711712700

`eq[A000120(n), A086342(A008574(n))]`
-/

namespace A125121.P14289320642711712700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125121.P14289320642711712700

/-! ## A125121.P13880173264328200720

`eq[A000120(n), A086342(A022144(n))]`
-/

namespace A125121.P13880173264328200720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125121.P13880173264328200720

/-! ## A125121.P16807361039895851506

`eq[A000120(n), A086342(A234275(n))]`
-/

namespace A125121.P16807361039895851506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125121.P16807361039895851506

/-! ## A125121.P8298814034018717464

`eq[1, A143073(n+1)+1]+1`
-/

namespace A125121.P8298814034018717464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143073 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125121.P8298814034018717464

/-! ## A125121.P13085518852390732025

`record[n+1-A000040(n+1)*A143073(n+1)]`
-/

namespace A125121.P13085518852390732025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A143073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125121.P13085518852390732025

/-! ## A125121.P4993733480361373155

`eq[1, A143069(n+1)]+1`
-/

namespace A125121.P4993733480361373155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125121.P4993733480361373155

/-! ## A125121.P1370517365720714965

`lt[A143069(2*(n+1)), 3]+1`
-/

namespace A125121.P1370517365720714965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A125121.P1370517365720714965

/-!
# A125122: First differences of A034888.

The programs for A125122, the canonical program `A125122.P12366772529962582986` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125122 has offset 0).

The definition of A125122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125122.P12366772529962582986

`char[A054965(n+1)-1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125122

/-- `char[A054965(n+1)-1]` -/
def P12366772529962582986.Spec : Prop :=
  ∀ n, (P12366772529962582986.a n : ℤ) = A125122 n

theorem P12366772529962582986.correct : P12366772529962582986.Spec := by
  intro n
  simp only [A125122]

end A125122

/-!
# A125127: Array L(k,n) read by antidiagonals: k-step Lucas numbers.

The programs for A125127, there is no canonical definition to state claims against.
-/

/-! ## A125127.P8298034392968975865

`A247505(eq[0, A103451(n)])`
-/

namespace A125127.P8298034392968975865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125127.P8298034392968975865

/-! ## A125127.P16190673915162470199

`A247505(eq[0, A103452(n)])`
-/

namespace A125127.P16190673915162470199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125127.P16190673915162470199

/-! ## A125127.P15759162861700126010

`A247505(eq[0, A158821(n)])`
-/

namespace A125127.P15759162861700126010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125127.P15759162861700126010

/-! ## A125127.P4434782766864739826

`A247505(lt[0, A004247(n)])`
-/

namespace A125127.P4434782766864739826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125127.P4434782766864739826

/-! ## A125127.P3598907324424756728

`A247505(lt[0, A014473(n)])`
-/

namespace A125127.P3598907324424756728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125127.P3598907324424756728

/-! ## A125127.P17237993319671828763

`A247505(lt[0, A247505(n)])`
-/

namespace A125127.P17237993319671828763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125127.P17237993319671828763

/-! ## A125127.P3515704199829113917

`A247505(eq[2, A154325(n)])`
-/

namespace A125127.P3515704199829113917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125127.P3515704199829113917

/-! ## A125127.P11155703994817559970

`filter[A247505(n), A023532(#)]`
-/

namespace A125127.P11155703994817559970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A125127.P11155703994817559970

/-! ## A125127.P18296858632816835661

`filter[A247505(n), A168046(#)]`
-/

namespace A125127.P18296858632816835661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A125127.P18296858632816835661

/-! ## A125127.P2030883431479080871

`filter[A247505(n), A168181(#)]`
-/

namespace A125127.P2030883431479080871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A125127.P2030883431479080871

/-!
# A125128: a(n) = 2^(n+1) - n - 2, or partial sums of main diagonal of array A125127 of k-step Lucas numbers.

The programs for A125128, the canonical program `A125128.P15302475142462672969` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125128 has offset 1).

The definition of A125128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)-(n+1)-2` (program `A125128.P15302475142462672969`, by `A125128.P15302475142462672969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125128.P15302475142462672969

`2^(n+2)-(n+1)-2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125128

/-- `2^(n+2)-(n+1)-2` -/
def P15302475142462672969.Spec : Prop :=
  ∀ n, P15302475142462672969.a n = A125128 (n + 1)

theorem P15302475142462672969.correct : P15302475142462672969.Spec := by
  intro n
  simp only [A125128, Nat.add_sub_cancel]

end A125128

/-! ## A125128.P2559249471660142325

`A000295(n+2)`
-/

namespace A125128.P2559249471660142325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 2)

end

end A125128.P2559249471660142325

namespace A125128

/-- `A000295(n+2)` -/
def P2559249471660142325.Spec : Prop :=
  ∀ n, P2559249471660142325.a n = A125128 (n + 1)

theorem P2559249471660142325.correct : P2559249471660142325.Spec := by
  intro n
  simp only [A125128, Nat.add_sub_cancel, A125128.P2559249471660142325.a, A125128.P15302475142462672969.a, A000295, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A125128

/-! ## A125128.P6133861665565750037

`∑[ogf(1/(1-3x+2x^2))]`
-/

namespace A125128.P6133861665565750037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P6133861665565750037

namespace A125128

/-- `∑[ogf(1/(1-3x+2x^2))]` -/
def P6133861665565750037.Spec : Prop :=
  ∀ n, P6133861665565750037.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P7727484723926395307

`ogf(1/(1-4x+5x^2-2x^3))`
-/

namespace A125128.P7727484723926395307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 5, -2] n

end

end A125128.P7727484723926395307

namespace A125128

/-- `ogf(1/(1-4x+5x^2-2x^3))` -/
def P7727484723926395307.Spec : Prop :=
  ∀ n, P7727484723926395307.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P8118505682575481596

`record[ceil(2^(n-1)-n)]`
-/

namespace A125128.P8118505682575481596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125128.P8118505682575481596

namespace A125128

/-- `record[ceil(2^(n-1)-n)]` -/
def P8118505682575481596.Spec : Prop :=
  ∀ n, P8118505682575481596.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P12989299140945461865

`abs(∑[∑[2*a(n-1)]])` with `a(0)=1`
-/

namespace A125128.P12989299140945461865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P12989299140945461865

namespace A125128

/-- `abs(∑[∑[2*a(n-1)]])` -/
def P12989299140945461865.Spec : Prop :=
  ∀ n, (P12989299140945461865.a n : ℤ) = A125128 (n + 1)

end A125128

/-! ## A125128.P15890961348698331866

`floor(∑[∑[2*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A125128.P15890961348698331866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P15890961348698331866

namespace A125128

/-- `floor(∑[∑[2*a(n-1)]])` -/
def P15890961348698331866.Spec : Prop :=
  ∀ n, (P15890961348698331866.a n : ℤ) = A125128 (n + 1)

end A125128

/-! ## A125128.P7731057630983547202

`ceil(∑[∑[2*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A125128.P7731057630983547202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P7731057630983547202

namespace A125128

/-- `ceil(∑[∑[2*a(n-1)]])` -/
def P7731057630983547202.Spec : Prop :=
  ∀ n, (P7731057630983547202.a n : ℤ) = A125128 (n + 1)

end A125128

/-! ## A125128.P6040292171457841545

`round(∑[∑[2*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A125128.P6040292171457841545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P6040292171457841545

namespace A125128

/-- `round(∑[∑[2*a(n-1)]])` -/
def P6040292171457841545.Spec : Prop :=
  ∀ n, (P6040292171457841545.a n : ℤ) = A125128 (n + 1)

end A125128

/-! ## A125128.P971305403999593122

`abs(or(n+3, -2^(n+2)))`
-/

namespace A125128.P971305403999593122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 3 : ℤ) (-(2 ^ (n + 2) : ℤ))|

end

end A125128.P971305403999593122

namespace A125128

/-- `abs(or(n+3, -2^(n+2)))` -/
def P971305403999593122.Spec : Prop :=
  ∀ n, P971305403999593122.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P13215936237387942329

`-or(n+3, -2^(n+2))`
-/

namespace A125128.P13215936237387942329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n + 3 : ℤ) (-(2 ^ (n + 2) : ℤ))

end

end A125128.P13215936237387942329

namespace A125128

/-- `-or(n+3, -2^(n+2))` -/
def P13215936237387942329.Spec : Prop :=
  ∀ n, P13215936237387942329.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P11005296401143831802

`abs(xor(n+3, -2^(n+2)))`
-/

namespace A125128.P11005296401143831802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 3 : ℤ) (-(2 ^ (n + 2) : ℤ))|

end

end A125128.P11005296401143831802

namespace A125128

/-- `abs(xor(n+3, -2^(n+2)))` -/
def P11005296401143831802.Spec : Prop :=
  ∀ n, P11005296401143831802.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P7393848403571214650

`-xor(n+3, -2^(n+2))`
-/

namespace A125128.P7393848403571214650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n + 3 : ℤ) (-(2 ^ (n + 2) : ℤ))

end

end A125128.P7393848403571214650

namespace A125128

/-- `-xor(n+3, -2^(n+2))` -/
def P7393848403571214650.Spec : Prop :=
  ∀ n, P7393848403571214650.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P4191348000781048204

`-∑[-∑[2*a(n-1)]]` with `a(0)=1`
-/

namespace A125128.P4191348000781048204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125128.P4191348000781048204

namespace A125128

/-- `-∑[-∑[2*a(n-1)]]` -/
def P4191348000781048204.Spec : Prop :=
  ∀ n, P4191348000781048204.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P16290304198655182918

`∑[∑[a(n-1)+a(n-1)]]` with `a(0)=1`
-/

namespace A125128.P16290304198655182918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P16290304198655182918

namespace A125128

/-- `∑[∑[a(n-1)+a(n-1)]]` -/
def P16290304198655182918.Spec : Prop :=
  ∀ n, (P16290304198655182918.a n : ℤ) = A125128 (n + 1)

end A125128

/-! ## A125128.P8677799012158793112

`(2*a(n-1)/(n+1)+1)*(n+1)` with `a(0)=1`
-/

namespace A125128.P8677799012158793112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (a (n - 1) / (n + 1 : ℚ)) + 1) * (n + 1 : ℚ)

end

end A125128.P8677799012158793112

namespace A125128

/-- `(2*a(n-1)/(n+1)+1)*(n+1)` -/
def P8677799012158793112.Spec : Prop :=
  ∀ n, P8677799012158793112.a n = (A125128 (n + 1) : ℚ)

end A125128

/-! ## A125128.P2105400126616226790

`∑[A126646(n)]`
-/

namespace A125128.P2105400126616226790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P2105400126616226790

namespace A125128

/-- `∑[A126646(n)]` -/
def P2105400126616226790.Spec : Prop :=
  ∀ n, P2105400126616226790.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P4755010102586207006

`A130103(n+2)`
-/

namespace A125128.P4755010102586207006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130103 (n + 2)

end

end A125128.P4755010102586207006

namespace A125128

/-- `A130103(n+2)` -/
def P4755010102586207006.Spec : Prop :=
  ∀ n, P4755010102586207006.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P16593766333054157424

`∑[∑[A000079(n)]]`
-/

namespace A125128.P16593766333054157424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P16593766333054157424

namespace A125128

/-- `∑[∑[A000079(n)]]` -/
def P16593766333054157424.Spec : Prop :=
  ∀ n, P16593766333054157424.a n = A125128 (n + 1)

end A125128

/-! ## A125128.P16414286348671128902

`∑[record[A077896(n)]]`
-/

namespace A125128.P16414286348671128902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125128.P16414286348671128902

namespace A125128

/-- `∑[record[A077896(n)]]` -/
def P16414286348671128902.Spec : Prop :=
  ∀ n, P16414286348671128902.a n = A125128 (n + 1)

end A125128

/-!
# A125130: Successive sums of consecutive primes that form a triangular grid.

The programs for A125130, the canonical program `A125130.P6259504309083317485` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125130 has offset 1).

The definition of A125130 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125130.P6259504309083317485

`A007504(A000217(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A125130

/-- `A007504(A000217(n+1))` -/
def P6259504309083317485.Spec : Prop :=
  ∀ n, P6259504309083317485.a n = A125130 (n + 1)

theorem P6259504309083317485.correct : P6259504309083317485.Spec := by
  intro n
  simp only [A125130, Nat.add_sub_cancel]

end A125130

/-! ## A125130.P6475818101419503872

`∑[A007468(n+1)]`
-/

namespace A125130.P6475818101419503872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125130.P6475818101419503872

namespace A125130

/-- `∑[A007468(n+1)]` -/
def P6475818101419503872.Spec : Prop :=
  ∀ n, P6475818101419503872.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P1453021821822849147

`∑[record[A007468(A141256(n))]]`
-/

namespace A125130.P1453021821822849147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125130.P1453021821822849147

namespace A125130

/-- `∑[record[A007468(A141256(n))]]` -/
def P1453021821822849147.Spec : Prop :=
  ∀ n, P1453021821822849147.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P11614061614020631386

`A007504(∑[n+1])`
-/

namespace A125130.P11614061614020631386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125130.P11614061614020631386

namespace A125130

/-- `A007504(∑[n+1])` -/
def P11614061614020631386.Spec : Prop :=
  ∀ n, P11614061614020631386.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P9682718594730853076

`∑[abs(Δ[A007504(∑[n])])]`
-/

namespace A125130.P9682718594730853076
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125130.P9682718594730853076

namespace A125130

/-- `∑[abs(Δ[A007504(∑[n])])]` -/
def P9682718594730853076.Spec : Prop :=
  ∀ n, P9682718594730853076.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P18215019500921623549

`record[A007504(A008795(n))]`
-/

namespace A125130.P18215019500921623549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A008795 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125130.P18215019500921623549

namespace A125130

/-- `record[A007504(A008795(n))]` -/
def P18215019500921623549.Spec : Prop :=
  ∀ n, P18215019500921623549.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P5923633178126323659

`record[A007504(A025796(n))]`
-/

namespace A125130.P5923633178126323659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A025796 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125130.P5923633178126323659

namespace A125130

/-- `record[A007504(A025796(n))]` -/
def P5923633178126323659.Spec : Prop :=
  ∀ n, P5923633178126323659.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P512997215302759603

`record[A007504(abs(A145063(n)))]`
-/

namespace A125130.P512997215302759603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125130.P512997215302759603

namespace A125130

/-- `record[A007504(abs(A145063(n)))]` -/
def P512997215302759603.Spec : Prop :=
  ∀ n, P512997215302759603.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P499680184771773959

`A007504(A253145(n))+A000038(n)`
-/

namespace A125130.P499680184771773959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A253145 n).toNat + A000038 n

end

end A125130.P499680184771773959

namespace A125130

/-- `A007504(A253145(n))+A000038(n)` -/
def P499680184771773959.Spec : Prop :=
  ∀ n, P499680184771773959.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P6252237002049986470

`record[A007504(A286158(n+1))]`
-/

namespace A125130.P6252237002049986470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A286158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125130.P6252237002049986470

namespace A125130

/-- `record[A007504(A286158(n+1))]` -/
def P6252237002049986470.Spec : Prop :=
  ∀ n, P6252237002049986470.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P4773812031841299312

`A237589(∑[n+1])+1`
-/

namespace A125130.P4773812031841299312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A125130.P4773812031841299312

namespace A125130

/-- `A237589(∑[n+1])+1` -/
def P4773812031841299312.Spec : Prop :=
  ∀ n, P4773812031841299312.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P5823513118819704139

`A362419(∑[n+1])/2`
-/

namespace A125130.P5823513118819704139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362419 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A125130.P5823513118819704139

namespace A125130

/-- `A362419(∑[n+1])/2` -/
def P5823513118819704139.Spec : Prop :=
  ∀ n, P5823513118819704139.a n = (A125130 (n + 1) : ℚ)

end A125130

/-! ## A125130.P3074297347725733417

`A036439(C(n+2, 2)+1)-2`
-/

namespace A125130.P3074297347725733417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (Nat.choose (n + 2) 2 + 1) - 2

end

end A125130.P3074297347725733417

namespace A125130

/-- `A036439(C(n+2, 2)+1)-2` -/
def P3074297347725733417.Spec : Prop :=
  ∀ n, P3074297347725733417.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P5550100597165093620

`A014284(A000124(n+1))-1`
-/

namespace A125130.P5550100597165093620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (A000124 (n + 1)).toNat - 1

end

end A125130.P5550100597165093620

namespace A125130

/-- `A014284(A000124(n+1))-1` -/
def P5550100597165093620.Spec : Prop :=
  ∀ n, P5550100597165093620.a n = A125130 (n + 1)

end A125130

/-! ## A125130.P9203473810788616128

`record[A007504(n+1)/A106516(n)]`
-/

namespace A125130.P9203473810788616128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A106516 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125130.P9203473810788616128

namespace A125130

/-- `record[A007504(n+1)/A106516(n)]` -/
def P9203473810788616128.Spec : Prop :=
  ∀ n, P9203473810788616128.a n = (A125130 (n + 1) : ℚ)

end A125130

/-! ## A125130.P2561996004692735808

`record[A007504(n+1)/A112626(n)]`
-/

namespace A125130.P2561996004692735808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A112626 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125130.P2561996004692735808

namespace A125130

/-- `record[A007504(n+1)/A112626(n)]` -/
def P2561996004692735808.Spec : Prop :=
  ∀ n, P2561996004692735808.a n = (A125130 (n + 1) : ℚ)

end A125130

/-! ## A125130.P11581569231027210549

`record[A007504(n+1)/A038255(n)]`
-/

namespace A125130.P11581569231027210549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125130.P11581569231027210549

namespace A125130

/-- `record[A007504(n+1)/A038255(n)]` -/
def P11581569231027210549.Spec : Prop :=
  ∀ n, P11581569231027210549.a n = (A125130 (n + 1) : ℚ)

end A125130

/-! ## A125130.P12529347984564736691

`record[A007504(n+1)/A027466(n)]`
-/

namespace A125130.P12529347984564736691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A027466 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125130.P12529347984564736691

namespace A125130

/-- `record[A007504(n+1)/A027466(n)]` -/
def P12529347984564736691.Spec : Prop :=
  ∀ n, P12529347984564736691.a n = (A125130 (n + 1) : ℚ)

end A125130

/-!
# A125131: Product 1-p, where p ranges over the prime factors of n with multiplicity.

The programs for A125131, the canonical program `A125131.P2814879206416894113` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125131 has offset 1).

The definition of A125131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125131.P2880174151397069062

`A003958(n+1)*A008836(n+1)`
-/

namespace A125131.P2880174151397069062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A008836 (n + 1)

end

end A125131.P2880174151397069062

namespace A125131

/-- `A003958(n+1)*A008836(n+1)` -/
def P2880174151397069062.Spec : Prop :=
  ∀ n, P2880174151397069062.a n = A125131 (n + 1)

end A125131

/-! ## A125131.P1188124095942601907

`∑{d}[n+1, A325126(#)]`
-/

namespace A125131.P1188124095942601907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A325126 d

end

end A125131.P1188124095942601907

namespace A125131

/-- `∑{d}[n+1, A325126(#)]` -/
def P1188124095942601907.Spec : Prop :=
  ∀ n, P1188124095942601907.a n = A125131 (n + 1)

end A125131

/-! ## A125131.P2814879206416894113

`∏{d}[n+1, 1-A120007(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125131

/-- `∏{d}[n+1, 1-A120007(#)]` -/
def P2814879206416894113.Spec : Prop :=
  ∀ n, P2814879206416894113.a n = A125131 (n + 1)

theorem P2814879206416894113.correct : P2814879206416894113.Spec := by
  intro n
  simp only [A125131, Nat.add_sub_cancel]

end A125131

/-! ## A125131.P16414367957145052458

`A079579(n+1)/A061019(n+1)`
-/

namespace A125131.P16414367957145052458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079579 (n + 1) : ℚ) / (A061019 (n + 1) : ℚ)

end

end A125131.P16414367957145052458

namespace A125131

/-- `A079579(n+1)/A061019(n+1)` -/
def P16414367957145052458.Spec : Prop :=
  ∀ n, P16414367957145052458.a n = (A125131 (n + 1) : ℚ)

end A125131

/-! ## A125131.P5313530775957966876

`A166632(n+1)/A165872(n+1)`
-/

namespace A125131.P5313530775957966876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A165872 (n + 1) : ℚ)

end

end A125131.P5313530775957966876

namespace A125131

/-- `A166632(n+1)/A165872(n+1)` -/
def P5313530775957966876.Spec : Prop :=
  ∀ n, P5313530775957966876.a n = (A125131 (n + 1) : ℚ)

end A125131

/-! ## A125131.P4909411513180642858

`∏{d}[n+1, 2-A000203(A014963(#))]`
-/

namespace A125131.P4909411513180642858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (2 - A000203 (A014963 d).toNat)

end

end A125131.P4909411513180642858

namespace A125131

/-- `∏{d}[n+1, 2-A000203(A014963(#))]` -/
def P4909411513180642858.Spec : Prop :=
  ∀ n, P4909411513180642858.a n = A125131 (n + 1)

end A125131

/-! ## A125131.P1284511202041966602

`A003958(n+1)*A008683(A007913(n+1))`
-/

namespace A125131.P1284511202041966602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A008683 (A007913 (n + 1)).toNat

end

end A125131.P1284511202041966602

namespace A125131

/-- `A003958(n+1)*A008683(A007913(n+1))` -/
def P1284511202041966602.Spec : Prop :=
  ∀ n, P1284511202041966602.a n = A125131 (n + 1)

end A125131

/-! ## A125131.P8825697437796000136

`A003958(n+1)*A290099(A061142(n+1))`
-/

namespace A125131.P8825697437796000136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A290099 (A061142 (n + 1)).toNat

end

end A125131.P8825697437796000136

namespace A125131

/-- `A003958(n+1)*A290099(A061142(n+1))` -/
def P8825697437796000136.Spec : Prop :=
  ∀ n, P8825697437796000136.a n = A125131 (n + 1)

end A125131

/-! ## A125131.P13192293087209243112

`A166635(n+1)/A167315(A061142(n+1))`
-/

namespace A125131.P13192293087209243112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166635 (n + 1) : ℚ) / (A167315 (A061142 (n + 1)).toNat : ℚ)

end

end A125131.P13192293087209243112

namespace A125131

/-- `A166635(n+1)/A167315(A061142(n+1))` -/
def P13192293087209243112.Spec : Prop :=
  ∀ n, P13192293087209243112.a n = (A125131 (n + 1) : ℚ)

end A125131

/-! ## A125131.P18126100712797977450

`A173557(n+1)/A007947(n+1)*A325126(n+1)`
-/

namespace A125131.P18126100712797977450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A325126 (n + 1) : ℚ)

end

end A125131.P18126100712797977450

namespace A125131

/-- `A173557(n+1)/A007947(n+1)*A325126(n+1)` -/
def P18126100712797977450.Spec : Prop :=
  ∀ n, P18126100712797977450.a n = (A125131 (n + 1) : ℚ)

end A125131

/-! ## A125131.P12629030338465480656

`A359433((n+1)²)`
-/

namespace A125131.P12629030338465480656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359433 ((n + 1) ^ 2)

end

end A125131.P12629030338465480656

namespace A125131

/-- `A359433((n+1)²)` -/
def P12629030338465480656.Spec : Prop :=
  ∀ n, P12629030338465480656.a n = A125131 (n + 1)

end A125131

/-! ## A125131.P16477628353933266398

`A325126((n+1)²)/A325126(n+1)`
-/

namespace A125131.P16477628353933266398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325126 ((n + 1) ^ 2) : ℚ) / (A325126 (n + 1) : ℚ)

end

end A125131.P16477628353933266398

namespace A125131

/-- `A325126((n+1)²)/A325126(n+1)` -/
def P16477628353933266398.Spec : Prop :=
  ∀ n, P16477628353933266398.a n = (A125131 (n + 1) : ℚ)

end A125131

/-! ## A125131.P1147785134632599218

`∏{d}[n+1, 1-A051953(A014963(#)²)]`
-/

namespace A125131.P1147785134632599218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (1 - A051953 (A014963 d ^ 2).toNat)

end

end A125131.P1147785134632599218

namespace A125131

/-- `∏{d}[n+1, 1-A051953(A014963(#)²)]` -/
def P1147785134632599218.Spec : Prop :=
  ∀ n, P1147785134632599218.a n = A125131 (n + 1)

end A125131

/-!
# A125132: Self-describing sequence: sequence starts with a(1) = 1 and a(n) is chosen to be the smallest positive number not already in the sequence such that the assertion "sequence gives the positions of the odd digits when the sequence is read as a string of digits" is true.

The programs for A125132, there is no canonical definition to state claims against.
-/

/-! ## A125132.P15990590106398500501

`A079313(lt[A107700(n+1), (n+1)²])`
-/

namespace A125132.P15990590106398500501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107700 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079313 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A125132.P15990590106398500501

/-!
# A125133: Numbers missing from A125132.

The programs for A125133, there is no canonical definition to state claims against.
-/

/-! ## A125133.P5147989116460574320

`comp[A125132(n+1)-1]+1`
-/

namespace A125133.P5147989116460574320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125132 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A125133.P5147989116460574320

/-! ## A125133.P16671846794466684806

`record[A169909(n+3)-2]`
-/

namespace A125133.P16671846794466684806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169909 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125133.P16671846794466684806

/-! ## A125133.P5999875032032203644

`A105360(A007091(n+3))`
-/

namespace A125133.P5999875032032203644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (A007091 (n + 3)).toNat

end

end A125133.P5999875032032203644

/-! ## A125133.P4777802572239911410

`A122080(A007091(n+3)-1)`
-/

namespace A125133.P4777802572239911410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (A007091 (n + 3) - 1).toNat

end

end A125133.P4777802572239911410

/-! ## A125133.P14167186602860777590

`eq[11, A065031(A078137(n+1))]`
-/

namespace A125133.P14167186602860777590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A078137 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125133.P14167186602860777590

/-!
# A125137: a(n) = p^p + 1, where p = prime(n).

The programs for A125137, the canonical program `A125137.P4810731587468724038` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125137 has offset 1).

The definition of A125137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125137.P4810731587468724038

`A051674(n+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125137

/-- `A051674(n+1)+1` -/
def P4810731587468724038.Spec : Prop :=
  ∀ n, P4810731587468724038.a n = A125137 (n + 1)

theorem P4810731587468724038.correct : P4810731587468724038.Spec := by
  intro n
  simp only [A125137, Nat.add_sub_cancel]

end A125137

/-! ## A125137.P6703978420021637735

`record[∑{p}[n+2, #^#+1]]`
-/

namespace A125137.P6703978420021637735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (p ^ p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125137.P6703978420021637735

namespace A125137

/-- `record[∑{p}[n+2, #^#+1]]` -/
def P6703978420021637735.Spec : Prop :=
  ∀ n, (P6703978420021637735.a n : ℤ) = A125137 (n + 1)

end A125137

/-! ## A125137.P14785575543852002476

`record[∏{p}[n+2, #^#+1]]`
-/

namespace A125137.P14785575543852002476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (p ^ p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125137.P14785575543852002476

namespace A125137

/-- `record[∏{p}[n+2, #^#+1]]` -/
def P14785575543852002476.Spec : Prop :=
  ∀ n, (P14785575543852002476.a n : ℤ) = A125137 (n + 1)

end A125137

/-! ## A125137.P17877429154679415911

`record[A351749(n+2)]`
-/

namespace A125137.P17877429154679415911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125137.P17877429154679415911

namespace A125137

/-- `record[A351749(n+2)]` -/
def P17877429154679415911.Spec : Prop :=
  ∀ n, P17877429154679415911.a n = A125137 (n + 1)

end A125137

/-! ## A125137.P12041267647119906604

`∑{d}[A000040(n+1), #^#]`
-/

namespace A125137.P12041267647119906604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ d

end

end A125137.P12041267647119906604

namespace A125137

/-- `∑{d}[A000040(n+1), #^#]` -/
def P12041267647119906604.Spec : Prop :=
  ∀ n, (P12041267647119906604.a n : ℤ) = A125137 (n + 1)

end A125137

/-!
# A125139: SENSigma: Multiplicative with a(p^e) = p*(p^e-1)/(p-1) - (-1)^e.

The programs for A125139, there is no canonical definition to state claims against.
-/

/-! ## A125139.P3235035624139265112

`or(A049417(n+1), A162296(A325709(n+1)))`
-/

namespace A125139.P3235035624139265112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049417 (n + 1)) (A162296 (A325709 (n + 1)).toNat)

end

end A125139.P3235035624139265112

/-! ## A125139.P13179973255441397394

`∑{d}[n+1, #]-A348326((n+2)/2*and(n+1, -(n+1)))`
-/

namespace A125139.P13179973255441397394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A348326 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / 2 * (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A125139.P13179973255441397394

/-! ## A125139.P137506041764459737

`A049417(A187829(n+1))+char[8]`
-/

namespace A125139.P137506041764459737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A187829 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A125139.P137506041764459737

/-! ## A125139.P5136384356002522561

`∑{d}[n+1, #]-A305615(A050358(n+1))`
-/

namespace A125139.P5136384356002522561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A305615 (A050358 (n + 1)).toNat

end

end A125139.P5136384356002522561

/-! ## A125139.P5478080747414696168

`A362424(A107428(n+1))+A049417(n+1)`
-/

namespace A125139.P5478080747414696168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362424 (A107428 (n + 1)).toNat + A049417 (n + 1)

end

end A125139.P5478080747414696168

/-!
# A125141: a(1) = 2; for n>1, a(n)=SENSigma(a(n-1)), where SENSigma(m) = (-1)^((Sum_i r_i)+Omega(m))*Sum_{d|m} (-1)^((Sum_j Max(r_j))+Omega(d))*d = Product_i (Sum_{1<=s_i<=r_i} p_i^s_i)+(-1)^(r_i+1) if m=Product_i p_i^r_i, d=Product_j p_j^r_j, p_j^max(r_j) is the largest power of p_j dividing m.

The programs for A125141, there is no canonical definition to state claims against.
-/

/-! ## A125141.P8090673962187062281

`A125139(a(n-1))` with `a(0)=2`
-/

namespace A125141.P8090673962187062281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A125139 (a (n - 1)).toNat

end

end A125141.P8090673962187062281

/-! ## A125141.P1941670551220312141

`record[A125139(a(A057979(n)))]` with `a(0)=2`
-/

namespace A125141.P1941670551220312141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A125139 (f1 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125141.P1941670551220312141

/-! ## A125141.P1018730137558714960

`A304117(2*a(n-1)²)` with `a(0)=2`
-/

namespace A125141.P1018730137558714960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A304117 (2 * a (n - 1) ^ 2).toNat

end

end A125141.P1018730137558714960

/-! ## A125141.P11613118199343797927

`A365404(2*a(n-1)²)` with `a(0)=2`
-/

namespace A125141.P11613118199343797927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A365404 (2 * a (n - 1) ^ 2).toNat

end

end A125141.P11613118199343797927

/-! ## A125141.P5759435835277784719

`A059460(A032555(n+1))`
-/

namespace A125141.P5759435835277784719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059460 (A032555 (n + 1)).toNat

end

end A125141.P5759435835277784719

/-!
# A125143: Almkvist-Zudilin numbers: Sum_{k=0..n} (-1)^(n-k) * ((3^(n-3*k) * (3*k)!) / (k!)^3) * binomial(n,3*k) * binomial(n+k,k).

The programs for A125143, there is no canonical definition to state claims against.
-/

/-! ## A125143.P14351022172131650332

`A157142(n)-A364033(A001396(n))`
-/

namespace A125143.P14351022172131650332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n - A364033 (A001396 n).toNat

end

end A125143.P14351022172131650332

/-!
# A125144: Increments in the number of decimal digits of 4^n.

The programs for A125144, the canonical program `A125144.P4815380664485321966` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125144 has offset 1).

The definition of A125144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125144.P4815380664485321966

`Δ[floor(2*(n+1)/log2(10))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125144

/-- `Δ[floor(2*(n+1)/log2(10))]` -/
def P4815380664485321966.Spec : Prop :=
  ∀ n, P4815380664485321966.a n = A125144 (n + 1)

theorem P4815380664485321966.correct : P4815380664485321966.Spec := by
  intro n
  simp only [A125144, Nat.add_sub_cancel]

end A125144

/-!
# A125145: a(n) = 3a(n-1) + 3a(n-2). a(0) = 1, a(1) = 4.

The programs for A125145, the canonical program `A125145.P8771103558545831814` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125145 has offset 0).

The definition of A125145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)` (program `A125145.P8771103558545831814`, by `A125145.P8771103558545831814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125145.P8771103558545831814

`3*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125145

/-- `3*a(n-1)+3*a(n-2)` -/
def P8771103558545831814.Spec : Prop :=
  ∀ n, (P8771103558545831814.a n : ℤ) = A125145 n

theorem P8771103558545831814.correct : P8771103558545831814.Spec := by
  intro n
  simp only [A125145]

end A125145

/-! ## A125145.P579645397604460239

`A030195(n)+A030195(n+1)`
-/

namespace A125145.P579645397604460239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 n + A030195 (n + 1)

end

end A125145.P579645397604460239

namespace A125145

/-- `A030195(n)+A030195(n+1)` -/
def P579645397604460239.Spec : Prop :=
  ∀ n, P579645397604460239.a n = A125145 n

end A125145

/-! ## A125145.P10085665589770718400

`(((3+sqrt(21))/2)^(n+2)-((3-sqrt(21))/2)^(n+2))/(3*sqrt(21))`
-/

namespace A125145.P10085665589770718400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((3 + Real.sqrt (21 : ℝ)) / 2) ^ (n + 2) - ((3 - Real.sqrt (21 : ℝ)) / 2) ^ (n + 2)) / (3 * Real.sqrt (21 : ℝ))

end

end A125145.P10085665589770718400

namespace A125145

/-- `(((3+sqrt(21))/2)^(n+2)-((3-sqrt(21))/2)^(n+2))/(3*sqrt(21))` -/
def P10085665589770718400.Spec : Prop :=
  ∀ n, P10085665589770718400.a n = (A125145 n : ℝ)

theorem P10085665589770718400.correct : P10085665589770718400.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A125145, Nat.add_sub_cancel, A125145.P10085665589770718400.a, A125145.P8771103558545831814.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A125145, Nat.add_sub_cancel, A125145.P10085665589770718400.a, A125145.P8771103558545831814.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125145

/-! ## A125145.P9158745370271751649

`ogf((1+x)/(1-3x-3x^2))`
-/

namespace A125145.P9158745370271751649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, -3] n

end

end A125145.P9158745370271751649

namespace A125145

/-- `ogf((1+x)/(1-3x-3x^2))` -/
def P9158745370271751649.Spec : Prop :=
  ∀ n, P9158745370271751649.a n = A125145 n

end A125145

/-! ## A125145.P17331995649694412175

`3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A125145.P17331995649694412175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A125145.P17331995649694412175

namespace A125145

/-- `3*(a(n-1)+a(n-2))` -/
def P17331995649694412175.Spec : Prop :=
  ∀ n, (P17331995649694412175.a n : ℤ) = A125145 n

theorem P17331995649694412175.correct : P17331995649694412175.Spec := by
  intro n
  simp only [A125145, Nat.add_sub_cancel, A125145.P17331995649694412175.a, A125145.P8771103558545831814.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125145

/-! ## A125145.P9802182858412127599

`3*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A125145.P9802182858412127599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A125145.P9802182858412127599

namespace A125145

/-- `3*(a(n-1)-floor(-a(n-2)))` -/
def P9802182858412127599.Spec : Prop :=
  ∀ n, P9802182858412127599.a n = A125145 n

end A125145

/-! ## A125145.P12082054059120214369

`3*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A125145.P12082054059120214369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A125145.P12082054059120214369

namespace A125145

/-- `3*(a(n-1)-ceil(-a(n-2)))` -/
def P12082054059120214369.Spec : Prop :=
  ∀ n, P12082054059120214369.a n = A125145 n

end A125145

/-! ## A125145.P4442602088487359582

`3*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A125145.P4442602088487359582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A125145.P4442602088487359582

namespace A125145

/-- `3*(a(n-1)-round(-a(n-2)))` -/
def P4442602088487359582.Spec : Prop :=
  ∀ n, P4442602088487359582.a n = A125145 n

end A125145

/-! ## A125145.P1859707445848053650

`3-3*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A125145.P1859707445848053650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 - 3 * (1 - a (n - 1) - a (n - 2))

end

end A125145.P1859707445848053650

namespace A125145

/-- `3-3*(1-a(n-1)-a(n-2))` -/
def P1859707445848053650.Spec : Prop :=
  ∀ n, P1859707445848053650.a n = A125145 n

end A125145

/-! ## A125145.P224368524426180407

`A134927(n)+A106435(n)`
-/

namespace A125145.P224368524426180407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134927 n + A106435 n

end

end A125145.P224368524426180407

namespace A125145

/-- `A134927(n)+A106435(n)` -/
def P224368524426180407.Spec : Prop :=
  ∀ n, P224368524426180407.a n = A125145 n

end A125145

/-! ## A125145.P6679709932880673176

`∑[A155116(n)+A030195(n)]`
-/

namespace A125145.P6679709932880673176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 n + A030195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125145.P6679709932880673176

namespace A125145

/-- `∑[A155116(n)+A030195(n)]` -/
def P6679709932880673176.Spec : Prop :=
  ∀ n, P6679709932880673176.a n = A125145 n

end A125145

/-! ## A125145.P1373307955036457265

`A108411(n)*A136211(n+1)`
-/

namespace A125145.P1373307955036457265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A136211 (n + 1)

end

end A125145.P1373307955036457265

namespace A125145

/-- `A108411(n)*A136211(n+1)` -/
def P1373307955036457265.Spec : Prop :=
  ∀ n, P1373307955036457265.a n = A125145 n

end A125145

/-! ## A125145.P5501079751352271685

`A108306(n)-2*A030195(n)`
-/

namespace A125145.P5501079751352271685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 n - 2 * A030195 n

end

end A125145.P5501079751352271685

namespace A125145

/-- `A108306(n)-2*A030195(n)` -/
def P5501079751352271685.Spec : Prop :=
  ∀ n, P5501079751352271685.a n = A125145 n

end A125145

/-! ## A125145.P14381733061217072461

`∑[2*A202206(n)]-A202206(n)`
-/

namespace A125145.P14381733061217072461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A202206 n

end

end A125145.P14381733061217072461

namespace A125145

/-- `∑[2*A202206(n)]-A202206(n)` -/
def P14381733061217072461.Spec : Prop :=
  ∀ n, P14381733061217072461.a n = A125145 n

end A125145

/-! ## A125145.P634000081279800925

`A055010(n+1)/A033484(n+1)*A155116(n+1)`
-/

namespace A125145.P634000081279800925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055010 (n + 1) : ℚ) / (A033484 (n + 1) : ℚ) * (A155116 (n + 1) : ℚ)

end

end A125145.P634000081279800925

namespace A125145

/-- `A055010(n+1)/A033484(n+1)*A155116(n+1)` -/
def P634000081279800925.Spec : Prop :=
  ∀ n, P634000081279800925.a n = (A125145 n : ℚ)

end A125145

/-! ## A125145.P10533027998892959002

`Δ[A103820(n)/3]`
-/

namespace A125145.P10533027998892959002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103820 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125145.P10533027998892959002

namespace A125145

/-- `Δ[A103820(n)/3]` -/
def P10533027998892959002.Spec : Prop :=
  ∀ n, P10533027998892959002.a n = (A125145 n : ℚ)

end A125145

/-! ## A125145.P17510868363738954498

`Δ[A196472(n+1)/2]`
-/

namespace A125145.P17510868363738954498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196472 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125145.P17510868363738954498

namespace A125145

/-- `Δ[A196472(n+1)/2]` -/
def P17510868363738954498.Spec : Prop :=
  ∀ n, P17510868363738954498.a n = (A125145 n : ℚ)

end A125145

/-! ## A125145.P1942759287325245159

`A155116(n+1)/A123620(n+1)*A155116(n+1)`
-/

namespace A125145.P1942759287325245159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155116 (n + 1) : ℚ) / (A123620 (n + 1) : ℚ) * (A155116 (n + 1) : ℚ)

end

end A125145.P1942759287325245159

namespace A125145

/-- `A155116(n+1)/A123620(n+1)*A155116(n+1)` -/
def P1942759287325245159.Spec : Prop :=
  ∀ n, P1942759287325245159.a n = (A125145 n : ℚ)

end A125145

/-! ## A125145.P9215418797586682332

`A000302(n)-A351529(n)`
-/

namespace A125145.P9215418797586682332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A351529 n

end

end A125145.P9215418797586682332

namespace A125145

/-- `A000302(n)-A351529(n)` -/
def P9215418797586682332.Spec : Prop :=
  ∀ n, P9215418797586682332.a n = A125145 n

theorem P9215418797586682332.correct : P9215418797586682332.Spec := by
  intro n
  simp only [A125145, Nat.add_sub_cancel, A125145.P9215418797586682332.a, A125145.P8771103558545831814.a, A000302, A000302.P5166485833484575275.a, A351529, A351529.P4768600791599762228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A125145

/-! ## A125145.P17780853800397805465

`A123620(n+1)/A000302(n+1)*A000302(n)`
-/

namespace A125145.P17780853800397805465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123620 (n + 1) : ℚ) / (A000302 (n + 1) : ℚ) * (A000302 n : ℚ)

end

end A125145.P17780853800397805465

namespace A125145

/-- `A123620(n+1)/A000302(n+1)*A000302(n)` -/
def P17780853800397805465.Spec : Prop :=
  ∀ n, P17780853800397805465.a n = (A125145 n : ℚ)

end A125145

/-!
# A125146: Primes p such that (p + nextprime + p) and also (p + previousprime + p) are primes.

The programs for A125146, there is no canonical definition to state claims against.
-/

/-! ## A125146.P14127943067023702150

`record[gcd(A114230(n+4), A114262(n+2))]`
-/

namespace A125146.P14127943067023702150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114230 (n + 4)) (A114262 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125146.P14127943067023702150

/-! ## A125146.P2188600647982989457

`∩[A173971(n+1), A151800(A175914(n+1))]`
-/

namespace A125146.P2188600647982989457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A175914 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125146.P2188600647982989457

/-!
# A125158: The fractal sequence associated with A125150.

The programs for A125158, there is no canonical definition to state claims against.
-/

/-! ## A125158.P9458430413191338979

`A051903(A121755(2*(n+2))*A353867(n+1))`
-/

namespace A125158.P9458430413191338979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A121755 (2 * (n + 2)) * A353867 (n + 1)).toNat

end

end A125158.P9458430413191338979

/-! ## A125158.P12479220082919748074

`A305829(A324347(n)%A194133(3*n+4))`
-/

namespace A125158.P12479220082919748074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305829 (Int.tmod (A324347 n) (A194133 (3 * n + 4))).toNat

end

end A125158.P12479220082919748074

/-! ## A125158.P298048616185150535

`gcd((floor(n/(xor(n, n+1)+1))+1)², A217016(n+1))`
-/

namespace A125158.P298048616185150535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ^ 2) (A217016 (n + 1))

end

end A125158.P298048616185150535

/-! ## A125158.P4603807449997317239

`A325813(A036765(n)+56)`
-/

namespace A125158.P4603807449997317239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325813 (A036765 n + 56).toNat

end

end A125158.P4603807449997317239

/-! ## A125158.P2996064399199027846

`A112384(n)-A308064(A022168(2*n))`
-/

namespace A125158.P2996064399199027846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112384 n - A308064 (A022168 (2 * n)).toNat

end

end A125158.P2996064399199027846

/-!
# A125160: The fractal sequence associated with A125152.

The programs for A125160, there is no canonical definition to state claims against.
-/

/-! ## A125160.P11528876797281458541

`A055396(A052330(2^n))`
-/

namespace A125160.P11528876797281458541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A052330 (2 ^ n)).toNat

end

end A125160.P11528876797281458541

/-! ## A125160.P12373308356706939534

`A061395(A052330(2^n)²)`
-/

namespace A125160.P12373308356706939534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A052330 (2 ^ n) ^ 2).toNat

end

end A125160.P12373308356706939534

/-! ## A125160.P9007911707548546440

`A066328(A052330(2^n)²)`
-/

namespace A125160.P9007911707548546440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A052330 (2 ^ n) ^ 2).toNat

end

end A125160.P9007911707548546440

/-! ## A125160.P1585421615226625398

`A297109(A052330(2^n)²)`
-/

namespace A125160.P1585421615226625398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A052330 (2 ^ n) ^ 2).toNat

end

end A125160.P1585421615226625398

/-! ## A125160.P3576541201938462329

`A061395(A052330(Δ[2^n]))`
-/

namespace A125160.P3576541201938462329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A052330 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A125160.P3576541201938462329

/-!
# A125163: Numbers m such that no prime exists of the form k! + m; or A125162(m) = 0.

The programs for A125163, there is no canonical definition to state claims against.
-/

/-! ## A125163.P5694565157309831840

`eq[0, A245714(n+1)]+1`
-/

namespace A125163.P5694565157309831840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125163.P5694565157309831840

/-! ## A125163.P5187760137227613446

`eq[0, A241423(n+2)]+2`
-/

namespace A125163.P5187760137227613446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241423 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A125163.P5187760137227613446

/-! ## A125163.P13327036487295406563

`lt[A241423(round(acot(n)+n)), 1]`
-/

namespace A125163.P13327036487295406563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241423 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125163.P13327036487295406563

/-! ## A125163.P8510633147703301840

`lt[A245714(round(sqrt(n²+1))), 1]`
-/

namespace A125163.P8510633147703301840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125163.P8510633147703301840

/-! ## A125163.P17853159299155489619

`eq[0, A245714(A028310(n))]`
-/

namespace A125163.P17853159299155489619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125163.P17853159299155489619

/-! ## A125163.P8709066270574166372

`eq[log2(A110560(n)), A163811(n)]`
-/

namespace A125163.P8709066270574166372
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A110560 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A125163.P8709066270574166372

/-! ## A125163.P4309524548004610685

`eq[sin(A091685(n)), A278907(n)]`
-/

namespace A125163.P4309524548004610685
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A091685 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A125163.P4309524548004610685

/-! ## A125163.P4957994536373197932

`eq[A091685(n), A168141(n+1)]`
-/

namespace A125163.P4957994536373197932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125163.P4957994536373197932

/-! ## A125163.P5006869674891557657

`eq[A120387(n+1), A163811(n)]`
-/

namespace A125163.P5006869674891557657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125163.P5006869674891557657

/-! ## A125163.P5823641671184266444

`∩[A047229(n+1), A308833(n+1)]`
-/

namespace A125163.P5823641671184266444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125163.P5823641671184266444

/-!
# A125164: Positive integers n such that no prime exists of the form (k! + 3n - 1), (k! + 3n) or (k! + 3n + 1) for any k.

The programs for A125164, there is no canonical definition to state claims against.
-/

/-! ## A125164.P2332315947069744325

`floor(A092256(n+1)/3)`
-/

namespace A125164.P2332315947069744325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092256 (n + 1) : ℚ) / 3⌋

end

end A125164.P2332315947069744325

/-! ## A125164.P4698416196811908038

`2*A059324(n+1)+1`
-/

namespace A125164.P4698416196811908038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059324 (n + 1) + 1

end

end A125164.P4698416196811908038

/-! ## A125164.P16271711465296174182

`2*A046953(n+1)-1`
-/

namespace A125164.P16271711465296174182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046953 (n + 1) - 1

end

end A125164.P16271711465296174182

/-! ## A125164.P8296412099283652833

`2*A153245(n+1)-3`
-/

namespace A125164.P8296412099283652833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153245 (n + 1) - 3

end

end A125164.P8296412099283652833

/-! ## A125164.P8028719922974566599

`eq[0, A002126(3*n+2)]`
-/

namespace A125164.P8028719922974566599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125164.P8028719922974566599

/-! ## A125164.P17540553169735217254

`eq[0, A107279(3*n+2)]`
-/

namespace A125164.P17540553169735217254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125164.P17540553169735217254

/-! ## A125164.P2264523054246956786

`eq[1, A107393(3*n+2)]`
-/

namespace A125164.P2264523054246956786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125164.P2264523054246956786

/-! ## A125164.P422687680680117943

`lt[2, A107286(3*n+2)]`
-/

namespace A125164.P422687680680117943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125164.P422687680680117943

/-! ## A125164.P7740134488192981759

`∩[2*n+1, A153170(n+1)]`
-/

namespace A125164.P7740134488192981759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125164.P7740134488192981759

/-! ## A125164.P17189273176001971069

`∩[2*n, A199593(n+1)]-1`
-/

namespace A125164.P17189273176001971069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199593 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A125164.P17189273176001971069

/-!
# A125165: Triangle read by rows: T(n,k) = C(n,k) + 3*C(n,k+1) + 2*C(n,k+2) (0<=k<=n).

The programs for A125165, the canonical program `A125165.P1719362185260033778` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125165 has offset 0).

The definition of A125165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125165.P15805949306121217127

`A233295(n)/A059268(n)`
-/

namespace A125165.P15805949306121217127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233295 n : ℚ) / (A059268 n : ℚ)

end

end A125165.P15805949306121217127

namespace A125165

/-- `A233295(n)/A059268(n)` -/
def P15805949306121217127.Spec : Prop :=
  ∀ n, P15805949306121217127.a n = (A125165 n : ℚ)

end A125165

/-! ## A125165.P7167579058874601743

`2*A125232(n+1)-A125233(n)`
-/

namespace A125165.P7167579058874601743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125232 (n + 1) - A125233 n

end

end A125165.P7167579058874601743

namespace A125165

/-- `2*A125232(n+1)-A125233(n)` -/
def P7167579058874601743.Spec : Prop :=
  ∀ n, P7167579058874601743.a n = A125165 n

theorem P7167579058874601743.correct : P7167579058874601743.Spec := by
  intro n
  simp only [A125165, Nat.add_sub_cancel, A125165.P7167579058874601743.a, A125165.P1719362185260033778.a, A104712, A104712.P8393777965278521263.a, A125232, A125232.P7385240608015978380.a, A125233, A125233.P3882684822699850619.a, A135278, A135278.P10862305414900331449.a, A014410, A014410.P12420516935091573692.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A010054, A010054.P18347828677204923252.a, A000217, A000217.P10269402890581615239.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125165

/-! ## A125165.P1719362185260033778

`2*A104712(n+2)-A135278(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125165

/-- `2*A104712(n+2)-A135278(n)` -/
def P1719362185260033778.Spec : Prop :=
  ∀ n, P1719362185260033778.a n = A125165 n

theorem P1719362185260033778.correct : P1719362185260033778.Spec := by
  intro n
  simp only [A125165]

end A125165

/-! ## A125165.P15234940031189118050

`(A125232(n+1)+A104712(n+2))/2`
-/

namespace A125165.P15234940031189118050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125232 (n + 1) + A104712 (n + 2) : ℚ) / 2

end

end A125165.P15234940031189118050

namespace A125165

/-- `(A125232(n+1)+A104712(n+2))/2` -/
def P15234940031189118050.Spec : Prop :=
  ∀ n, P15234940031189118050.a n = (A125165 n : ℚ)

theorem P15234940031189118050.correct : P15234940031189118050.Spec := by
  intro n
  simp only [A125165, Nat.add_sub_cancel, A125165.P15234940031189118050.a, A125165.P1719362185260033778.a, A104712, A104712.P8393777965278521263.a, A125232, A125232.P7385240608015978380.a, A135278, A135278.P10862305414900331449.a, A014410, A014410.P12420516935091573692.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A010054, A010054.P18347828677204923252.a, A000217, A000217.P10269402890581615239.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125165

/-! ## A125165.P8353479191497192909

`A104712(n+2)+A125233(n)-A125232(n+1)`
-/

namespace A125165.P8353479191497192909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) + (A125233 n - A125232 (n + 1))

end

end A125165.P8353479191497192909

namespace A125165

/-- `A104712(n+2)+A125233(n)-A125232(n+1)` -/
def P8353479191497192909.Spec : Prop :=
  ∀ n, P8353479191497192909.a n = A125165 n

theorem P8353479191497192909.correct : P8353479191497192909.Spec := by
  intro n
  simp only [A125165, Nat.add_sub_cancel, A125165.P8353479191497192909.a, A125165.P1719362185260033778.a, A104712, A104712.P8393777965278521263.a, A125232, A125232.P7385240608015978380.a, A125233, A125233.P3882684822699850619.a, A135278, A135278.P10862305414900331449.a, A014410, A014410.P12420516935091573692.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A010054, A010054.P18347828677204923252.a, A000217, A000217.P10269402890581615239.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125165

/-! ## A125165.P3745912658677265340

`A104712(n+2)+A104712(n+2)-A074909(n+1)`
-/

namespace A125165.P3745912658677265340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) + (A104712 (n + 2) - A074909 (n + 1))

end

end A125165.P3745912658677265340

namespace A125165

/-- `A104712(n+2)+A104712(n+2)-A074909(n+1)` -/
def P3745912658677265340.Spec : Prop :=
  ∀ n, P3745912658677265340.a n = A125165 n

theorem P3745912658677265340.correct : P3745912658677265340.Spec := by
  intro n
  simp only [A125165, Nat.add_sub_cancel, A125165.P3745912658677265340.a, A125165.P1719362185260033778.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A104712, A104712.P8393777965278521263.a, A135278, A135278.P10862305414900331449.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125165

/-! ## A125165.P1211547610792599150

`A110813(n)+A110813(n+1)%A125662(n)`
-/

namespace A125165.P1211547610792599150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n + Int.tmod (A110813 (n + 1)) (A125662 n)

end

end A125165.P1211547610792599150

namespace A125165

/-- `A110813(n)+A110813(n+1)%A125662(n)` -/
def P1211547610792599150.Spec : Prop :=
  ∀ n, P1211547610792599150.a n = A125165 n

end A125165

/-! ## A125165.P3957656517530020248

`A110813(comp[∑[n]])`
-/

namespace A125165.P3957656517530020248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A125165.P3957656517530020248

namespace A125165

/-- `A110813(comp[∑[n]])` -/
def P3957656517530020248.Spec : Prop :=
  ∀ n, P3957656517530020248.a n = A125165 n

end A125165

/-! ## A125165.P1844382162412553912

`A183153(A007401(n+2))`
-/

namespace A125165.P1844382162412553912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183153 (A007401 (n + 2)).toNat

end

end A125165.P1844382162412553912

namespace A125165

/-- `A183153(A007401(n+2))` -/
def P1844382162412553912.Spec : Prop :=
  ∀ n, P1844382162412553912.a n = A125165 n

end A125165

/-! ## A125165.P1079645731209880775

`2*A135278(A014132(n+1))-A135278(n)`
-/

namespace A125165.P1079645731209880775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 (A014132 (n + 1)).toNat - A135278 n

end

end A125165.P1079645731209880775

namespace A125165

/-- `2*A135278(A014132(n+1))-A135278(n)` -/
def P1079645731209880775.Spec : Prop :=
  ∀ n, P1079645731209880775.a n = A125165 n

end A125165

/-! ## A125165.P1700907275017680553

`A029655(comp[∑[n]]+1)`
-/

namespace A125165.P1700907275017680553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A125165.P1700907275017680553

namespace A125165

/-- `A029655(comp[∑[n]]+1)` -/
def P1700907275017680553.Spec : Prop :=
  ∀ n, P1700907275017680553.a n = A125165 n

end A125165

/-! ## A125165.P9494160065794482023

`A029637(2*A004736(n+1)+n)`
-/

namespace A125165.P9494160065794482023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A125165.P9494160065794482023

namespace A125165

/-- `A029637(2*A004736(n+1)+n)` -/
def P9494160065794482023.Spec : Prop :=
  ∀ n, P9494160065794482023.a n = A125165 n

end A125165

/-! ## A125165.P9082607716234408437

`A029637(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A125165.P9082607716234408437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A125165.P9082607716234408437

namespace A125165

/-- `A029637(A004736(n+1)+A004736(n+1)+n)` -/
def P9082607716234408437.Spec : Prop :=
  ∀ n, P9082607716234408437.a n = A125165 n

end A125165

/-! ## A125165.P3389480745424112048

`A029653(lt[1, A208332(n+1)])`
-/

namespace A125165.P3389480745424112048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125165.P3389480745424112048

namespace A125165

/-- `A029653(lt[1, A208332(n+1)])` -/
def P3389480745424112048.Spec : Prop :=
  ∀ n, P3389480745424112048.a n = A125165 n

end A125165

/-! ## A125165.P17466055603051255623

`A029653(lt[2, A029635(n)]+1)`
-/

namespace A125165.P17466055603051255623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A125165.P17466055603051255623

namespace A125165

/-- `A029653(lt[2, A029635(n)]+1)` -/
def P17466055603051255623.Spec : Prop :=
  ∀ n, P17466055603051255623.a n = A125165 n

end A125165

/-! ## A125165.P18350141196286231965

`A029653(lt[2, A029653(n)]+1)`
-/

namespace A125165.P18350141196286231965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A125165.P18350141196286231965

namespace A125165

/-- `A029653(lt[2, A029653(n)]+1)` -/
def P18350141196286231965.Spec : Prop :=
  ∀ n, P18350141196286231965.a n = A125165 n

end A125165

/-! ## A125165.P15091384233160300843

`A208510(lt[2, A029635(n)]+2)`
-/

namespace A125165.P15091384233160300843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A125165.P15091384233160300843

namespace A125165

/-- `A208510(lt[2, A029635(n)]+2)` -/
def P15091384233160300843.Spec : Prop :=
  ∀ n, P15091384233160300843.a n = A125165 n

end A125165

/-! ## A125165.P11637199727171008669

`A208510(lt[1, A208510(n+1)]+2)`
-/

namespace A125165.P11637199727171008669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A125165.P11637199727171008669

namespace A125165

/-- `A208510(lt[1, A208510(n+1)]+2)` -/
def P11637199727171008669.Spec : Prop :=
  ∀ n, P11637199727171008669.a n = A125165 n

end A125165

/-! ## A125165.P1014880839439807903

`A029635((n+1-A080036(n+1))²-(n+1))`
-/

namespace A125165.P1014880839439807903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (((n + 1 : ℤ) - A080036 (n + 1)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A125165.P1014880839439807903

namespace A125165

/-- `A029635((n+1-A080036(n+1))²-(n+1))` -/
def P1014880839439807903.Spec : Prop :=
  ∀ n, P1014880839439807903.a n = A125165 n

end A125165

/-!
# A125166: Triangle R(n,k), companion to A125165, left column n^3.

The programs for A125166, the canonical program `A125166.P14270815675974663489` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125166 has offset 0).

The definition of A125166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125166.P14270815675974663489

`A090850(A279891(n)+5+n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A125166

/-- `A090850(A279891(n)+5+n)` -/
def P14270815675974663489.Spec : Prop :=
  ∀ n, P14270815675974663489.a n = A125166 n

theorem P14270815675974663489.correct : P14270815675974663489.Spec := by
  intro n
  simp only [A125166]

end A125166

/-! ## A125166.P5112237691798406443

`A046902(A003057(n+2)²-(n+1))`
-/

namespace A125166.P5112237691798406443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A003057 (n + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A125166.P5112237691798406443

namespace A125166

/-- `A046902(A003057(n+2)²-(n+1))` -/
def P5112237691798406443.Spec : Prop :=
  ∀ n, P5112237691798406443.a n = A125166 n

end A125166

/-! ## A125166.P12157193332206470181

`A046902((A002024(n+1)+1)²-(n+1))`
-/

namespace A125166.P12157193332206470181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 ((A002024 (n + 1) + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A125166.P12157193332206470181

namespace A125166

/-- `A046902((A002024(n+1)+1)²-(n+1))` -/
def P12157193332206470181.Spec : Prop :=
  ∀ n, P12157193332206470181.a n = A125166 n

end A125166

/-! ## A125166.P18381618224697853511

`A046902(A099375(n)+A014132(n+1))`
-/

namespace A125166.P18381618224697853511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A099375 n + A014132 (n + 1)).toNat

end

end A125166.P18381618224697853511

namespace A125166

/-- `A046902(A099375(n)+A014132(n+1))` -/
def P18381618224697853511.Spec : Prop :=
  ∀ n, P18381618224697853511.a n = A125166 n

end A125166

/-! ## A125166.P16699230193381340992

`A046902(A099375(n)+eq[1, A035214(n)])`
-/

namespace A125166.P16699230193381340992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A099375 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A125166.P16699230193381340992

namespace A125166

/-- `A046902(A099375(n)+eq[1, A035214(n)])` -/
def P16699230193381340992.Spec : Prop :=
  ∀ n, P16699230193381340992.a n = A125166 n

end A125166

/-!
# A125167: Numbers n such that the n-th prime + n-th nonprime is itself prime.

The programs for A125167, the canonical program `A125167.P1604038269256208614` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125167 has offset 1).

The definition of A125167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125167.P1604038269256208614

`eq[1, A001222(A141468(n+1)+A008578(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A125167

/-- `eq[1, A001222(A141468(n+1)+A008578(n+1))]` -/
def P1604038269256208614.Spec : Prop :=
  ∀ n, (P1604038269256208614.a n : ℤ) = A125167 (n + 1)

theorem P1604038269256208614.correct : P1604038269256208614.Spec := by
  intro n
  simp only [A125167, Nat.add_sub_cancel]

end A125167

/-! ## A125167.P6596951748602082498

`eq[1, A010051(A141468(n+1)+A008578(n+1))]`
-/

namespace A125167.P6596951748602082498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A141468 (n + 1) + A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125167.P6596951748602082498

namespace A125167

/-- `eq[1, A010051(A141468(n+1)+A008578(n+1))]` -/
def P6596951748602082498.Spec : Prop :=
  ∀ n, (P6596951748602082498.a n : ℤ) = A125167 (n + 1)

end A125167

/-! ## A125167.P7586084571298188276

`eq[2, A000005(A141468(n+1)+A008578(n+1))]`
-/

namespace A125167.P7586084571298188276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A141468 (n + 1) + A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125167.P7586084571298188276

namespace A125167

/-- `eq[2, A000005(A141468(n+1)+A008578(n+1))]` -/
def P7586084571298188276.Spec : Prop :=
  ∀ n, (P7586084571298188276.a n : ℤ) = A125167 (n + 1)

end A125167

/-! ## A125167.P6586874134675237686

`lt[A000005(A018252(n+1)+A000040(n+1)), 3]+1`
-/

namespace A125167.P6586874134675237686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018252 (n + 1) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A125167.P6586874134675237686

namespace A125167

/-- `lt[A000005(A018252(n+1)+A000040(n+1)), 3]+1` -/
def P6586874134675237686.Spec : Prop :=
  ∀ n, (P6586874134675237686.a n : ℤ) = A125167 (n + 1)

end A125167

/-! ## A125167.P865975800402686260

`eq[1, A074206(A022797(n+1))]+1`
-/

namespace A125167.P865975800402686260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A022797 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125167.P865975800402686260

namespace A125167

/-- `eq[1, A074206(A022797(n+1))]+1` -/
def P865975800402686260.Spec : Prop :=
  ∀ n, (P865975800402686260.a n : ℤ) = A125167 (n + 1)

end A125167

/-! ## A125167.P13875447268465645023

`record[A008619(2*n)/A074206(A022797(n+1))]`
-/

namespace A125167.P13875447268465645023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A074206 (A022797 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125167.P13875447268465645023

namespace A125167

/-- `record[A008619(2*n)/A074206(A022797(n+1))]` -/
def P13875447268465645023.Spec : Prop :=
  ∀ n, P13875447268465645023.a n = (A125167 (n + 1) : ℚ)

end A125167

/-! ## A125167.P12216384139201902054

`record[A052938(2*n)/A074206(A022797(n+1))]`
-/

namespace A125167.P12216384139201902054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * n) : ℚ) / (A074206 (A022797 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125167.P12216384139201902054

namespace A125167

/-- `record[A052938(2*n)/A074206(A022797(n+1))]` -/
def P12216384139201902054.Spec : Prop :=
  ∀ n, P12216384139201902054.a n = (A125167 (n + 1) : ℚ)

end A125167

/-! ## A125167.P1007627308130300909

`record[A328399(2*n)/A074206(A022797(n+1))]`
-/

namespace A125167.P1007627308130300909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328399 (2 * n) : ℚ) / (A074206 (A022797 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125167.P1007627308130300909

namespace A125167

/-- `record[A328399(2*n)/A074206(A022797(n+1))]` -/
def P1007627308130300909.Spec : Prop :=
  ∀ n, P1007627308130300909.a n = (A125167 (n + 1) : ℚ)

end A125167

/-! ## A125167.P9711224759761092892

`record[A000027(n+1)%A014963(A022797(n+1))]`
-/

namespace A125167.P9711224759761092892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A014963 (A022797 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125167.P9711224759761092892

namespace A125167

/-- `record[A000027(n+1)%A014963(A022797(n+1))]` -/
def P9711224759761092892.Spec : Prop :=
  ∀ n, P9711224759761092892.a n = A125167 (n + 1)

end A125167

/-!
# A125168: a(n) = gcd(n, A032741(n)) where A032741(n) is the number of proper divisors of n.

The programs for A125168, the canonical program `A125168.P75422063822245844` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125168 has offset 1).

The definition of A125168 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125168.P75422063822245844

`gcd(n+1, A032741(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125168

/-- `gcd(n+1, A032741(n+1))` -/
def P75422063822245844.Spec : Prop :=
  ∀ n, (P75422063822245844.a n : ℤ) = A125168 (n + 1)

theorem P75422063822245844.correct : P75422063822245844.Spec := by
  intro n
  simp only [A125168, Nat.add_sub_cancel]

end A125168

/-! ## A125168.P11086744229568555810

`gcd(n+1, A325765(n))`
-/

namespace A125168.P11086744229568555810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A325765 n)

end

end A125168.P11086744229568555810

namespace A125168

/-- `gcd(n+1, A325765(n))` -/
def P11086744229568555810.Spec : Prop :=
  ∀ n, (P11086744229568555810.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P3564962076738188123

`gcd(Δ[A006218(n)]-1, (n+1)%(n+2))`
-/

namespace A125168.P3564962076738188123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n - 1) (((n + 1) % (n + 2) : ℕ) : ℤ)

end

end A125168.P3564962076738188123

namespace A125168

/-- `gcd(Δ[A006218(n)]-1, (n+1)%(n+2))` -/
def P3564962076738188123.Spec : Prop :=
  ∀ n, (P3564962076738188123.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P9827413438559316126

`gcd(A070824(n+1)+1, ϕ²-(ϕ-n))`
-/

namespace A125168.P9827413438559316126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070824 (n + 1) + 1) (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))))

end

end A125168.P9827413438559316126

namespace A125168

/-- `gcd(A070824(n+1)+1, ϕ²-(ϕ-n))` -/
def P9827413438559316126.Spec : Prop :=
  ∀ n, (P9827413438559316126.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P2840164266506648970

`gcd(∏{e}[n+1, #+1]-1, A038040(n+1))`
-/

namespace A125168.P2840164266506648970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1) (A038040 (n + 1))

end

end A125168.P2840164266506648970

namespace A125168

/-- `gcd(∏{e}[n+1, #+1]-1, A038040(n+1))` -/
def P2840164266506648970.Spec : Prop :=
  ∀ n, (P2840164266506648970.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P7200877916367246420

`gcd(A131738(n), A158907(n+1))`
-/

namespace A125168.P7200877916367246420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A158907 (n + 1))

end

end A125168.P7200877916367246420

namespace A125168

/-- `gcd(A131738(n), A158907(n+1))` -/
def P7200877916367246420.Spec : Prop :=
  ∀ n, (P7200877916367246420.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P5675538395052553889

`gcd(A345741(n+1)-n, A011379(n))`
-/

namespace A125168.P5675538395052553889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345741 (n + 1) - (n : ℤ)) (A011379 n)

end

end A125168.P5675538395052553889

namespace A125168

/-- `gcd(A345741(n+1)-n, A011379(n))` -/
def P5675538395052553889.Spec : Prop :=
  ∀ n, (P5675538395052553889.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P1099831305225763271

`gcd(n-A345741(n+1), A101362(n))`
-/

namespace A125168.P1099831305225763271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A345741 (n + 1)) (A101362 n)

end

end A125168.P1099831305225763271

namespace A125168

/-- `gcd(n-A345741(n+1), A101362(n))` -/
def P1099831305225763271.Spec : Prop :=
  ∀ n, (P1099831305225763271.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P9908394006152854510

`gcd(1-Δ[A006218(n)], A038040(n+1))`
-/

namespace A125168.P9908394006152854510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (f1 (n + 1) - f1 n)) (A038040 (n + 1))

end

end A125168.P9908394006152854510

namespace A125168

/-- `gcd(1-Δ[A006218(n)], A038040(n+1))` -/
def P9908394006152854510.Spec : Prop :=
  ∀ n, (P9908394006152854510.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P586409853927021871

`gcd(A049820(n+1)+1, A005451(n+1))`
-/

namespace A125168.P586409853927021871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049820 (n + 1) + 1) (A005451 (n + 1))

end

end A125168.P586409853927021871

namespace A125168

/-- `gcd(A049820(n+1)+1, A005451(n+1))` -/
def P586409853927021871.Spec : Prop :=
  ∀ n, (P586409853927021871.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P8183490239893297014

`gcd(A286002(n+1)+1, A064505(n+1))`
-/

namespace A125168.P8183490239893297014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286002 (n + 1) + 1) (A064505 (n + 1))

end

end A125168.P8183490239893297014

namespace A125168

/-- `gcd(A286002(n+1)+1, A064505(n+1))` -/
def P8183490239893297014.Spec : Prop :=
  ∀ n, (P8183490239893297014.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P17516621727497673851

`gcd(A000005(n+1)-1, A048671(n+1))`
-/

namespace A125168.P17516621727497673851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1) - 1) (A048671 (n + 1))

end

end A125168.P17516621727497673851

namespace A125168

/-- `gcd(A000005(n+1)-1, A048671(n+1))` -/
def P17516621727497673851.Spec : Prop :=
  ∀ n, (P17516621727497673851.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P16637856698250209024

`gcd(1-A065998(n+1), A171526(n+1))`
-/

namespace A125168.P16637856698250209024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A065998 (n + 1)) (A171526 (n + 1))

end

end A125168.P16637856698250209024

namespace A125168

/-- `gcd(1-A065998(n+1), A171526(n+1))` -/
def P16637856698250209024.Spec : Prop :=
  ∀ n, (P16637856698250209024.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P621440818294618227

`gcd(A062249(n+1)+n, A014683(n+1))`
-/

namespace A125168.P621440818294618227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062249 (n + 1) + (n : ℤ)) (A014683 (n + 1))

end

end A125168.P621440818294618227

namespace A125168

/-- `gcd(A062249(n+1)+n, A014683(n+1))` -/
def P621440818294618227.Spec : Prop :=
  ∀ n, (P621440818294618227.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P11094306569811862657

`gcd(A140482(n+1)+n, A181440(n+1))`
-/

namespace A125168.P11094306569811862657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140482 (n + 1) + (n : ℤ)) (A181440 (n + 1))

end

end A125168.P11094306569811862657

namespace A125168

/-- `gcd(A140482(n+1)+n, A181440(n+1))` -/
def P11094306569811862657.Spec : Prop :=
  ∀ n, (P11094306569811862657.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P13447571052711725818

`gcd(A049820(n+1)-n, A009230(n+1))`
-/

namespace A125168.P13447571052711725818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049820 (n + 1) - (n : ℤ)) (A009230 (n + 1))

end

end A125168.P13447571052711725818

namespace A125168

/-- `gcd(A049820(n+1)-n, A009230(n+1))` -/
def P13447571052711725818.Spec : Prop :=
  ∀ n, (P13447571052711725818.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P546174170915518544

`gcd(A286002(n+1)-n, A033286(n+1))`
-/

namespace A125168.P546174170915518544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286002 (n + 1) - (n : ℤ)) (A033286 (n + 1))

end

end A125168.P546174170915518544

namespace A125168

/-- `gcd(A286002(n+1)-n, A033286(n+1))` -/
def P546174170915518544.Spec : Prop :=
  ∀ n, (P546174170915518544.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P12966048848249812180

`gcd(A062249(n+1)-1, A000027(A000027(n+1)))`
-/

namespace A125168.P12966048848249812180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062249 (n + 1) - 1) (A000027 (A000027 (n + 1)).toNat)

end

end A125168.P12966048848249812180

namespace A125168

/-- `gcd(A062249(n+1)-1, A000027(A000027(n+1)))` -/
def P12966048848249812180.Spec : Prop :=
  ∀ n, (P12966048848249812180.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P2239298403434956487

`gcd(A000005(n+1)+n, (n+1)*A000040(n+2))`
-/

namespace A125168.P2239298403434956487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1) + (n : ℤ)) ((n + 1 : ℤ) * A000040 (n + 2))

end

end A125168.P2239298403434956487

namespace A125168

/-- `gcd(A000005(n+1)+n, (n+1)*A000040(n+2))` -/
def P2239298403434956487.Spec : Prop :=
  ∀ n, (P2239298403434956487.a n : ℤ) = A125168 (n + 1)

end A125168

/-! ## A125168.P12119185691256429020

`gcd(A060401(n+1), A062968(n+1))`
-/

namespace A125168.P12119185691256429020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060401 (n + 1)) (A062968 (n + 1))

end

end A125168.P12119185691256429020

namespace A125168

/-- `gcd(A060401(n+1), A062968(n+1))` -/
def P12119185691256429020.Spec : Prop :=
  ∀ n, (P12119185691256429020.a n : ℤ) = A125168 (n + 1)

end A125168

/-!
# A125169: a(n) = 16*n + 15.

The programs for A125169, the canonical program `A125169.P15085034264192254056` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125169 has offset 0).

The definition of A125169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n+15` (program `A125169.P15085034264192254056`, by `A125169.P15085034264192254056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125169.P15085034264192254056

`16*n+15`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125169

/-- `16*n+15` -/
def P15085034264192254056.Spec : Prop :=
  ∀ n, (P15085034264192254056.a n : ℤ) = A125169 n

theorem P15085034264192254056.correct : P15085034264192254056.Spec := by
  intro n
  simp only [A125169]

end A125169

/-!
# A125170: Binomial transform of an infinite lower triangular matrix with (1,1,2,4,8,...) in every column and the rest zeros. Let the left column = A007051, then for k > 1, T(n,k) = (n-1,k) + (n-1,k-1).

The programs for A125170, there is no canonical definition to state claims against.
-/

/-! ## A125170.P14968070454890489195

`(A106516(n)+A007318(n))/2`
-/

namespace A125170.P14968070454890489195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106516 n + A007318 n : ℚ) / 2

end

end A125170.P14968070454890489195

/-! ## A125170.P13530660323381110184

`A160760(A014132(n+1))`
-/

namespace A125170.P13530660323381110184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A014132 (n + 1)).toNat

end

end A125170.P13530660323381110184

/-! ## A125170.P8356769842845851780

`A160760(eq[0, A010054(n)])`
-/

namespace A125170.P8356769842845851780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125170.P8356769842845851780

/-! ## A125170.P10918257605038752730

`A160760(A007401(n+1)+1)`
-/

namespace A125170.P10918257605038752730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A007401 (n + 1) + 1).toNat

end

end A125170.P10918257605038752730

/-! ## A125170.P4578021473678169086

`A160760(A003056(n)+2+n)`
-/

namespace A125170.P4578021473678169086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A003056 n + 2 + (n : ℤ)).toNat

end

end A125170.P4578021473678169086

/-! ## A125170.P1356990880499086926

`A160760(∑[A073424(n)]+n+2)`
-/

namespace A125170.P1356990880499086926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)).toNat

end

end A125170.P1356990880499086926

/-! ## A125170.P10546019899458632670

`A160760(A002024(n+1)+1+n)`
-/

namespace A125170.P10546019899458632670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A002024 (n + 1) + 1 + (n : ℤ)).toNat

end

end A125170.P10546019899458632670

/-! ## A125170.P694316323549820010

`A160760(3*(n+1)-A001614(n+1))`
-/

namespace A125170.P694316323549820010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 ((3 * (n + 1) : ℤ) - A001614 (n + 1)).toNat

end

end A125170.P694316323549820010

/-! ## A125170.P17514382281361122683

`2*A106516(n)-A106516(A014132(n+1))`
-/

namespace A125170.P17514382281361122683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106516 n - A106516 (A014132 (n + 1)).toNat

end

end A125170.P17514382281361122683

/-! ## A125170.P9769964529663250200

`A067337(A099375(n)+n)`
-/

namespace A125170.P9769964529663250200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067337 (A099375 n + (n : ℤ)).toNat

end

end A125170.P9769964529663250200

/-!
# A125171: Riordan array ((1-x)/(1-3*x+x^2),x/(1-x)) read by rows.

The programs for A125171, there is no canonical definition to state claims against.
-/

/-! ## A125171.P11698679264279735428

`A193924(∑[A035214(n)])`
-/

namespace A125171.P11698679264279735428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125171.P11698679264279735428

/-! ## A125171.P9652975446607458324

`A193924(A014132(n+1))`
-/

namespace A125171.P9652975446607458324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (A014132 (n + 1)).toNat

end

end A125171.P9652975446607458324

/-! ## A125171.P17945931873900609128

`A193924(eq[0, A010054(n)])`
-/

namespace A125171.P17945931873900609128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125171.P17945931873900609128

/-! ## A125171.P6262459463784902601

`A193924(eq[0, A106459(n)])`
-/

namespace A125171.P6262459463784902601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125171.P6262459463784902601

/-! ## A125171.P15413146093307573031

`A193924(eq[1, A035214(n)])`
-/

namespace A125171.P15413146093307573031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125171.P15413146093307573031

/-! ## A125171.P17949521734220142895

`A193924(A080036(n+1)-1)`
-/

namespace A125171.P17949521734220142895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (A080036 (n + 1) - 1).toNat

end

end A125171.P17949521734220142895

/-! ## A125171.P10277470789468754490

`A193924(lt[A193929(n), A193923(n)])`
-/

namespace A125171.P10277470789468754490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125171.P10277470789468754490

/-! ## A125171.P13227027865075037663

`A193924(lt[A193929(n), A193924(n)]+1)`
-/

namespace A125171.P13227027865075037663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A125171.P13227027865075037663

/-! ## A125171.P15580358552747072730

`A193923(A099375(n)+n)`
-/

namespace A125171.P15580358552747072730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A099375 n + (n : ℤ)).toNat

end

end A125171.P15580358552747072730

/-! ## A125171.P11433330357870532474

`A193923(A061579(∑[A035214(n)]))`
-/

namespace A125171.P11433330357870532474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A125171.P11433330357870532474

/-! ## A125171.P16701819108013659361

`A193923(A038722(n+1)+A003056(n))`
-/

namespace A125171.P16701819108013659361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A038722 (n + 1) + A003056 n).toNat

end

end A125171.P16701819108013659361

/-! ## A125171.P12370830737346084537

`A193923(A061579(n)+A002024(n+1))`
-/

namespace A125171.P12370830737346084537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A061579 n + A002024 (n + 1)).toNat

end

end A125171.P12370830737346084537

/-! ## A125171.P16679732166031626259

`A294453(A245300(A061579(n)))`
-/

namespace A125171.P16679732166031626259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A245300 (A061579 n).toNat).toNat

end

end A125171.P16679732166031626259

/-! ## A125171.P12598137940279498352

`A193924(lt[n, A193923(n)²²])`
-/

namespace A125171.P12598137940279498352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193923 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125171.P12598137940279498352

/-!
# A125172: Triangle T(n,k) with partial column sums of the even-indexed Fibonacci numbers.

The programs for A125172, there is no canonical definition to state claims against.
-/

/-! ## A125172.P18077227447166274357

`2*A125171(n)-A121460(n+1)`
-/

namespace A125172.P18077227447166274357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125171 n - A121460 (n + 1)

end

end A125172.P18077227447166274357

/-! ## A125172.P17566788245221970244

`A193667(A061579(n))`
-/

namespace A125172.P17566788245221970244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A061579 n).toNat

end

end A125172.P17566788245221970244

/-! ## A125172.P3597972956831722785

`A193667(A038722(n+1)-1)`
-/

namespace A125172.P3597972956831722785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A038722 (n + 1) - 1).toNat

end

end A125172.P3597972956831722785

/-! ## A125172.P2095013876047005143

`A193667(A038722(n+2))`
-/

namespace A125172.P2095013876047005143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A038722 (n + 2)).toNat

end

end A125172.P2095013876047005143

/-! ## A125172.P4710956241390070511

`A125171(comp[∑[n]])`
-/

namespace A125172.P4710956241390070511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A125172.P4710956241390070511

/-! ## A125172.P2973358937303488558

`xor(2, xor(2, A125171(A014132(n+1))))`
-/

namespace A125172.P2973358937303488558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A125171 (A014132 (n + 1)).toNat))

end

end A125172.P2973358937303488558

/-! ## A125172.P473759999051009943

`lcm(A033999(n), A125171(A014132(n+1)))`
-/

namespace A125172.P473759999051009943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A125171 (A014132 (n + 1)).toNat)

end

end A125172.P473759999051009943

/-! ## A125172.P11042204805459803346

`or(A000007(n), A125171(A014132(n+1)))`
-/

namespace A125172.P11042204805459803346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A125171 (A014132 (n + 1)).toNat)

end

end A125172.P11042204805459803346

/-! ## A125172.P8397288246021363045

`(1-2*A000035(n))²*A125171(A014132(n+1))`
-/

namespace A125172.P8397288246021363045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) ^ 2 * A125171 (A014132 (n + 1)).toNat

end

end A125172.P8397288246021363045

/-! ## A125172.P5617046433009582458

`A033999(2*n)*A125171(A014132(n+1))`
-/

namespace A125172.P5617046433009582458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A125171 (A014132 (n + 1)).toNat

end

end A125172.P5617046433009582458

/-! ## A125172.P2012549571865121117

`A057979(2*n)*A125171(A014132(n+1))`
-/

namespace A125172.P2012549571865121117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A125171 (A014132 (n + 1)).toNat

end

end A125172.P2012549571865121117

/-! ## A125172.P3361847036948288068

`A125171(A014132(n+1))+A035363(2*n+1)`
-/

namespace A125172.P3361847036948288068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A014132 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A125172.P3361847036948288068

/-! ## A125172.P18098887768199925694

`A125171(A014132(n+1))%A020701(n)`
-/

namespace A125172.P18098887768199925694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125171 (A014132 (n + 1)).toNat) (A020701 n)

end

end A125172.P18098887768199925694

/-! ## A125172.P10815841840020817611

`A014963(A228058(n+1))*A125171(A014132(n+1))`
-/

namespace A125172.P10815841840020817611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A228058 (n + 1)).toNat * A125171 (A014132 (n + 1)).toNat

end

end A125172.P10815841840020817611

/-! ## A125172.P11333172329980950471

`A014963(A000217(n+5))*A125171(A014132(n+1))`
-/

namespace A125172.P11333172329980950471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 5)).toNat * A125171 (A014132 (n + 1)).toNat

end

end A125172.P11333172329980950471

/-!
# A125173: Minimum number of "k-splits" required to transform {n} to {1}.

The programs for A125173, there is no canonical definition to state claims against.
-/

/-! ## A125173.P14222346086479883521

`A241216(n+1)+A010894(A252463(n+1))`
-/

namespace A125173.P14222346086479883521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (n + 1) + A010894 ((A252463 (n + 1)).toNat + 21)

end

end A125173.P14222346086479883521

/-! ## A125173.P15281574962620157266

`A241216(A199343(n))+A000038(n)*A240178(n)`
-/

namespace A125173.P15281574962620157266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (A199343 n).toNat + A000038 n * A240178 n

end

end A125173.P15281574962620157266

/-! ## A125173.P10000793212469655227

`and(A004273((2*n)²), A241216(A199343(n)))`
-/

namespace A125173.P10000793212469655227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 ((2 * n) ^ 2)) (A241216 (A199343 n).toNat)

end

end A125173.P10000793212469655227

/-! ## A125173.P18255800672971271283

`A241216(A199343(n))+A000007(A098474(n))`
-/

namespace A125173.P18255800672971271283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (A199343 n).toNat + A000007 (A098474 n).toNat

end

end A125173.P18255800672971271283

/-! ## A125173.P4776899680027467303

`A241216(lt[A000700(n+3), A000010(2*n+1)])`
-/

namespace A125173.P4776899680027467303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125173.P4776899680027467303

/-!
# A125175: Triangle T(n,k) = |A053123(n/2+k/2,k)| for even n+k, T(n,k)= A082985((n+k-1)/2,k) for odd n+k; read by rows, 0<=k<=n.

The programs for A125175, there is no canonical definition to state claims against.
-/

/-! ## A125175.P4915858018150893757

`or(A124764(A281891(n)), A210489(n))`
-/

namespace A125175.P4915858018150893757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124764 (A281891 n).toNat) (A210489 n)

end

end A125175.P4915858018150893757

/-! ## A125175.P3502423286585535406

`A007318(n)+A002262(n)*A112382(A273712(n))`
-/

namespace A125175.P3502423286585535406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A002262 n * A112382 (A273712 n).toNat

end

end A125175.P3502423286585535406

/-! ## A125175.P18224235810413174111

`or(A122922(A331278(n)), A210489(n))`
-/

namespace A125175.P18224235810413174111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122922 (A331278 n).toNat) (A210489 n)

end

end A125175.P18224235810413174111

/-! ## A125175.P13121948657840724482

`A034880(A007318(n)²)+A002262(n)`
-/

namespace A125175.P13121948657840724482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (A007318 n ^ 2).toNat + A002262 n

end

end A125175.P13121948657840724482

/-! ## A125175.P11638906281594660418

`A002262(n)+A000005(3^A101164(n))`
-/

namespace A125175.P11638906281594660418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A101164 n : ℤ))).toNat

end

end A125175.P11638906281594660418

/-!
# A125176: Row sums of A125175.

The programs for A125176, the canonical program `A125176.P743025516115653419` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125176 has offset 1).

The definition of A125176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125176.P743025516115653419

`2*a(n-1)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125176

/-- `2*a(n-1)` -/
def P743025516115653419.Spec : Prop :=
  ∀ n, (P743025516115653419.a n : ℤ) = A125176 (n + 1)

theorem P743025516115653419.correct : P743025516115653419.Spec := by
  intro n
  simp only [A125176, Nat.add_sub_cancel]

end A125176

/-! ## A125176.P1593391699864936734

`ogf((1+x+x^2)/(1-2x))`
-/

namespace A125176.P1593391699864936734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -2] n

end

end A125176.P1593391699864936734

namespace A125176

/-- `ogf((1+x+x^2)/(1-2x))` -/
def P1593391699864936734.Spec : Prop :=
  ∀ n, P1593391699864936734.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P7102226308985289325

`floor(7*2^(n-2))`
-/

namespace A125176.P7102226308985289325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A125176.P7102226308985289325

namespace A125176

/-- `floor(7*2^(n-2))` -/
def P7102226308985289325.Spec : Prop :=
  ∀ n, P7102226308985289325.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P2642854219789394390

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A125176.P2642854219789394390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + a (n - 1)

end

end A125176.P2642854219789394390

namespace A125176

/-- `a(n-1)+a(n-1)` -/
def P2642854219789394390.Spec : Prop :=
  ∀ n, (P2642854219789394390.a n : ℤ) = A125176 (n + 1)

theorem P2642854219789394390.correct : P2642854219789394390.Spec := by
  intro n
  simp only [A125176, Nat.add_sub_cancel, A125176.P2642854219789394390.a, A125176.P743025516115653419.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125176

/-! ## A125176.P3529755793758947666

`∑[a(n-1)-(char[3]-a(n-1))]` with `a(0)=1`
-/

namespace A125176.P3529755793758947666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125176.P3529755793758947666

namespace A125176

/-- `∑[a(n-1)-(char[3]-a(n-1))]` -/
def P3529755793758947666.Spec : Prop :=
  ∀ n, P3529755793758947666.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P16102947369965095258

`1-(2%n/2-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A125176.P16102947369965095258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - (((2 % n : ℕ) : ℚ) / 2 - a (n - 1) - a (n - 1))

end

end A125176.P16102947369965095258

namespace A125176

/-- `1-(2%n/2-a(n-1)-a(n-1))` -/
def P16102947369965095258.Spec : Prop :=
  ∀ n, P16102947369965095258.a n = (A125176 (n + 1) : ℚ)

end A125176

/-! ## A125176.P16370604914927447161

`a(n-1)-floor(1/(a(n-1)-4)-a(n-1))` with `a(0)=1`
-/

namespace A125176.P16370604914927447161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊1 / (a (n - 1) - 4 : ℚ) - (a (n - 1) : ℚ)⌋

end

end A125176.P16370604914927447161

namespace A125176

/-- `a(n-1)-floor(1/(a(n-1)-4)-a(n-1))` -/
def P16370604914927447161.Spec : Prop :=
  ∀ n, P16370604914927447161.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P5984690099680158671

`∑[A365062(n+1)]`
-/

namespace A125176.P5984690099680158671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125176.P5984690099680158671

namespace A125176

/-- `∑[A365062(n+1)]` -/
def P5984690099680158671.Spec : Prop :=
  ∀ n, P5984690099680158671.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P11088250849053227658

`2^n+∑[A098011(n+1)]-1`
-/

namespace A125176.P11088250849053227658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A125176.P11088250849053227658

namespace A125176

/-- `2^n+∑[A098011(n+1)]-1` -/
def P11088250849053227658.Spec : Prop :=
  ∀ n, P11088250849053227658.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P13418624266935029151

`A029750(A131098(n+1))`
-/

namespace A125176.P13418624266935029151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A131098 (n + 1)).toNat

end

end A125176.P13418624266935029151

namespace A125176

/-- `A029750(A131098(n+1))` -/
def P13418624266935029151.Spec : Prop :=
  ∀ n, P13418624266935029151.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P5410882904847940956

`A029748(A008486(n)-1)`
-/

namespace A125176.P5410882904847940956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (A008486 n - 1).toNat

end

end A125176.P5410882904847940956

namespace A125176

/-- `A029748(A008486(n)-1)` -/
def P5410882904847940956.Spec : Prop :=
  ∀ n, P5410882904847940956.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P16376613399052963534

`A130130(n)+A026622(n)`
-/

namespace A125176.P16376613399052963534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A026622 n

end

end A125176.P16376613399052963534

namespace A125176

/-- `A130130(n)+A026622(n)` -/
def P16376613399052963534.Spec : Prop :=
  ∀ n, P16376613399052963534.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P2581367830404376391

`A131577(n)+A084215(n)`
-/

namespace A125176.P2581367830404376391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A084215 n

end

end A125176.P2581367830404376391

namespace A125176

/-- `A131577(n)+A084215(n)` -/
def P2581367830404376391.Spec : Prop :=
  ∀ n, P2581367830404376391.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P5942063116440665809

`A267604(n)+A157928(n)`
-/

namespace A125176.P5942063116440665809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 n + A157928 n

end

end A125176.P5942063116440665809

namespace A125176

/-- `A267604(n)+A157928(n)` -/
def P5942063116440665809.Spec : Prop :=
  ∀ n, P5942063116440665809.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P14484077782512667905

`A397439(n)-A131577(n)`
-/

namespace A125176.P14484077782512667905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n - A131577 n

end

end A125176.P14484077782512667905

namespace A125176

/-- `A397439(n)-A131577(n)` -/
def P14484077782512667905.Spec : Prop :=
  ∀ n, P14484077782512667905.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P5407505291966893492

`or(A003945(n), A034008(n))`
-/

namespace A125176.P5407505291966893492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 n) (A034008 n)

end

end A125176.P5407505291966893492

namespace A125176

/-- `or(A003945(n), A034008(n))` -/
def P5407505291966893492.Spec : Prop :=
  ∀ n, P5407505291966893492.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P821998546285333114

`or(A011782(n), A084215(n))`
-/

namespace A125176.P821998546285333114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A084215 n)

end

end A125176.P821998546285333114

namespace A125176

/-- `or(A011782(n), A084215(n))` -/
def P821998546285333114.Spec : Prop :=
  ∀ n, P821998546285333114.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P11540820650970054976

`or(A003945(n), A166444(n))`
-/

namespace A125176.P11540820650970054976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 n) (A166444 n)

end

end A125176.P11540820650970054976

namespace A125176

/-- `or(A003945(n), A166444(n))` -/
def P11540820650970054976.Spec : Prop :=
  ∀ n, P11540820650970054976.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P17871849866559644949

`xor(A000975(n), A266721(n))`
-/

namespace A125176.P17871849866559644949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A266721 n)

end

end A125176.P17871849866559644949

namespace A125176

/-- `xor(A000975(n), A266721(n))` -/
def P17871849866559644949.Spec : Prop :=
  ∀ n, P17871849866559644949.a n = A125176 (n + 1)

end A125176

/-! ## A125176.P10159789840635567321

`A029748(A033627(n+2)-2)`
-/

namespace A125176.P10159789840635567321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (A033627 (n + 2) - 2).toNat

end

end A125176.P10159789840635567321

namespace A125176

/-- `A029748(A033627(n+2)-2)` -/
def P10159789840635567321.Spec : Prop :=
  ∀ n, P10159789840635567321.a n = A125176 (n + 1)

end A125176

/-!
# A125177: Triangle read by rows: T(n,0)=C(2n,n)/(n+1) for n>=0; T(n,n+1)=0; T(n,k)=T(n-1,k)+T(n-1,k-1) for 1<=k<=n.

The programs for A125177, there is no canonical definition to state claims against.
-/

/-! ## A125177.P15035026263374614357

`A321936(A130321(n))+A276067(n+2)`
-/

namespace A125177.P15035026263374614357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A130321 n).toNat + A276067 (n + 2)

end

end A125177.P15035026263374614357

/-! ## A125177.P9819354815361914656

`A085735(A276067(n+2))`
-/

namespace A125177.P9819354815361914656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A276067 (n + 2)).toNat

end

end A125177.P9819354815361914656

/-! ## A125177.P4906671494578571336

`A123068(A276067(n+2)+1)`
-/

namespace A125177.P4906671494578571336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A276067 (n + 2) + 1).toNat

end

end A125177.P4906671494578571336

/-! ## A125177.P15928659460930358199

`A085516(A125178(n))`
-/

namespace A125177.P15928659460930358199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A125178 n).toNat

end

end A125177.P15928659460930358199

/-! ## A125177.P10811287940226028320

`A316847(A117265(n))`
-/

namespace A125177.P10811287940226028320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316847 (A117265 n).toNat

end

end A125177.P10811287940226028320

/-!
# A125178: Triangle read by rows: T(n,0)=B(n) (the Bell numbers, A000110(n)), T(n,k)=0 for k < 0 or k > n, T(n,k) = T(n-1,k) + T(n-1,k-1) for n >= 1, 0 <= k <= n.

The programs for A125178, there is no canonical definition to state claims against.
-/

/-! ## A125178.P8189312846372771572

`A321936(2*A130321(n))+A125177(n)`
-/

namespace A125178.P8189312846372771572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (2 * A130321 n).toNat + A125177 n

end

end A125178.P8189312846372771572

/-! ## A125178.P4469148137518152998

`A020753(A125177(n))`
-/

namespace A125178.P4469148137518152998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A125177 n).toNat

end

end A125178.P4469148137518152998

/-! ## A125178.P13714150534066843152

`A002244(A121460(n+1))`
-/

namespace A125178.P13714150534066843152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002244 (A121460 (n + 1)).toNat

end

end A125178.P13714150534066843152

/-! ## A125178.P514850787896026517

`A055571(A125177(n)+1)`
-/

namespace A125178.P514850787896026517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A125177 n + 1).toNat

end

end A125178.P514850787896026517

/-! ## A125178.P588043238062086760

`A328003(A059418(n+1))`
-/

namespace A125178.P588043238062086760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A059418 (n + 1)).toNat

end

end A125178.P588043238062086760

/-!
# A125179: Triangle read by rows: T(n,1) = prime(n) (the n-th prime); T(n,k) = 0 for k > n; T(n,k) = T(n-1,k) + T(n-1,k-1) for 2 <= k <= n (1 <= k <= n).

The programs for A125179, there is no canonical definition to state claims against.
-/

/-! ## A125179.P11139515054818635151

`A254858(∑[2*n]%comp[∑[n]])`
-/

namespace A125179.P11139515054818635151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254858 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A125179.P11139515054818635151

/-! ## A125179.P12060727583934943509

`A254858(∑[char[∑[n]]]²-(n+1))`
-/

namespace A125179.P12060727583934943509
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254858 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A125179.P12060727583934943509

/-! ## A125179.P13924174644398986213

`or(char[1], A254858(A061579(n)))`
-/

namespace A125179.P13924174644398986213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254858 (A061579 n).toNat)

end

end A125179.P13924174644398986213

/-! ## A125179.P12340436734623575970

`A254858(A061579(n))%A167499(n)`
-/

namespace A125179.P12340436734623575970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254858 (A061579 n).toNat) (A167499 n)

end

end A125179.P12340436734623575970

/-! ## A125179.P14008750031714185476

`gcd(A000038(n), A254858(A061579(n)))`
-/

namespace A125179.P14008750031714185476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A254858 (A061579 n).toNat)

end

end A125179.P14008750031714185476

/-! ## A125179.P9544486199611258678

`lcm(A087960(n), A254858(A061579(n)))`
-/

namespace A125179.P9544486199611258678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A254858 (A061579 n).toNat)

end

end A125179.P9544486199611258678

/-! ## A125179.P6594147791385165895

`char[A026741(n)]*A254858(A061579(n))`
-/

namespace A125179.P6594147791385165895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254858 (A061579 n).toNat

end

end A125179.P6594147791385165895

/-! ## A125179.P13027110469509231176

`char[A071045(n)]*A254858(A061579(n))`
-/

namespace A125179.P13027110469509231176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254858 (A061579 n).toNat

end

end A125179.P13027110469509231176

/-!
# A125180: a(n) = 2*a(n-1) + prime(n) - prime(n-1), a(1)=2, where prime(n) denotes the n-th prime.

The programs for A125180, the canonical program `A125180.P1652341145907951050` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125180 has offset 1).

The definition of A125180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125180.P1652341145907951050

`A001223(n)+2*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A125180

/-- `A001223(n)+2*a(n-1)` -/
def P1652341145907951050.Spec : Prop :=
  ∀ n, P1652341145907951050.a n = A125180 (n + 1)

theorem P1652341145907951050.correct : P1652341145907951050.Spec := by
  intro n
  simp only [A125180, Nat.add_sub_cancel]

end A125180

/-! ## A125180.P8583730818351498613

`A075526(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A125180.P8583730818351498613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A075526 n + 2 * a (n - 1)

end

end A125180.P8583730818351498613

namespace A125180

/-- `A075526(n)+2*a(n-1)` -/
def P8583730818351498613.Spec : Prop :=
  ∀ n, P8583730818351498613.a n = A125180 (n + 1)

end A125180

/-! ## A125180.P10986778817952733517

`log2(A218075(n))+2*a(n-1)` with `a(0)=2`
-/

namespace A125180.P10986778817952733517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  Real.logb 2 (A218075 n : ℝ) + 2 * a (n - 1)

end

end A125180.P10986778817952733517

namespace A125180

/-- `log2(A218075(n))+2*a(n-1)` -/
def P10986778817952733517.Spec : Prop :=
  ∀ n, P10986778817952733517.a n = (A125180 (n + 1) : ℝ)

end A125180

/-! ## A125180.P15727795295593009329

`Δ[A028815(n)]+2*a(n-1)` with `a(0)=2`
-/

namespace A125180.P15727795295593009329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A125180.P15727795295593009329

namespace A125180

/-- `Δ[A028815(n)]+2*a(n-1)` -/
def P15727795295593009329.Spec : Prop :=
  ∀ n, P15727795295593009329.a n = A125180 (n + 1)

end A125180

/-! ## A125180.P9662685479605097758

`Δ[A000040(n)+2*a(n-1)]` with `a(0)=0`
-/

namespace A125180.P9662685479605097758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000040 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125180.P9662685479605097758

namespace A125180

/-- `Δ[A000040(n)+2*a(n-1)]` -/
def P9662685479605097758.Spec : Prop :=
  ∀ n, P9662685479605097758.a n = A125180 (n + 1)

end A125180

/-! ## A125180.P18245408275700350242

`A000079(n)+A053210(n)/2`
-/

namespace A125180.P18245408275700350242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) + (A053210 n : ℚ) / 2

end

end A125180.P18245408275700350242

namespace A125180

/-- `A000079(n)+A053210(n)/2` -/
def P18245408275700350242.Spec : Prop :=
  ∀ n, P18245408275700350242.a n = (A125180 (n + 1) : ℚ)

end A125180

/-! ## A125180.P4705867227489301510

`(A110299(n+1)+A000040(n+1))/2`
-/

namespace A125180.P4705867227489301510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110299 (n + 1) + A000040 (n + 1) : ℚ) / 2

end

end A125180.P4705867227489301510

namespace A125180

/-- `(A110299(n+1)+A000040(n+1))/2` -/
def P4705867227489301510.Spec : Prop :=
  ∀ n, P4705867227489301510.a n = (A125180 (n + 1) : ℚ)

end A125180

/-!
# A125181: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n whose ascent lengths form the k-th partition of the integer n; the partitions of n are ordered in the "Mathematica" ordering.

The programs for A125181, there is no canonical definition to state claims against.
-/

/-! ## A125181.P561962232201350832

`A306438(A129129(n+1))`
-/

namespace A125181.P561962232201350832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306438 (A129129 (n + 1)).toNat

end

end A125181.P561962232201350832

/-! ## A125181.P16476043966362108336

`A134264(gcd(2, A123899(n))+n)`
-/

namespace A125181.P16476043966362108336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134264 (Int.gcd 2 (A123899 n) + n)

end

end A125181.P16476043966362108336

/-! ## A125181.P17705693663030217382

`∏{p}[A011782(n), A134264(#+n)]`
-/

namespace A125181.P17705693663030217382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A134264 (p + n)

end

end A125181.P17705693663030217382

/-! ## A125181.P17542304158805477599

`A134264(n+2)%A016070(n+1)`
-/

namespace A125181.P17542304158805477599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134264 (n + 2)) (A016070 (n + 1))

end

end A125181.P17542304158805477599

/-! ## A125181.P12438779539888270696

`A134264(n+2)^A159346(A326549(n))`
-/

namespace A125181.P12438779539888270696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134264 (n + 2) : ℚ) ^ (A159346 (A326549 n).toNat : ℤ)

end

end A125181.P12438779539888270696

/-!
# A125184: Triangle read by rows: T(n,k) is the coefficient of t^k in the Stern polynomial B(n,t) (n>=0, k>=0).

The programs for A125184, there is no canonical definition to state claims against.
-/

/-! ## A125184.P18067321257317958401

`A136641(A026082(2*n+5))%A136662(n+1)`
-/

namespace A125184.P18067321257317958401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136641 (A026082 (2 * n + 5)).toNat) (A136662 (n + 1))

end

end A125184.P18067321257317958401

/-! ## A125184.P6793255194661356241

`A050370(or(A112798(2*n+3), A225556(n+3)))`
-/

namespace A125184.P6793255194661356241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (Int.lor (A112798 (2 * n + 3)) (A225556 (n + 3))).toNat

end

end A125184.P6793255194661356241

/-! ## A125184.P11979580568154658159

`A196228(A196228(A109276(A125883(n+2))))`
-/

namespace A125184.P11979580568154658159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (A196228 (A109276 (A125883 (n + 2)).toNat).toNat).toNat

end

end A125184.P11979580568154658159

/-! ## A125184.P15973454974584404555

`and(A043284(n+1), A076118(A001590(n)))`
-/

namespace A125184.P15973454974584404555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043284 (n + 1)) (A076118 (A001590 n).toNat)

end

end A125184.P15973454974584404555

/-! ## A125184.P10960546754111394190

`A052409(A323182(3*n+4)+2)%A099602(n+3)`
-/

namespace A125184.P10960546754111394190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (A323182 (3 * n + 4) + 2).toNat) (A099602 (n + 3))

end

end A125184.P10960546754111394190

/-!
# A125185: Triangle read by rows: T(n,k) is the coefficient of t^k in the polynomial S(n,t)=[(1+t)(2+t)^n+(1-t)t^n]/2 (0<=k<=n).

The programs for A125185, the canonical program `A125185.P11360573012885096283` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125185 has offset 0).

The definition of A125185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125185.P11360573012885096283

`A115068(n+1)+A119468(n)-A038207(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A125185

/-- `A115068(n+1)+A119468(n)-A038207(n)` -/
def P11360573012885096283.Spec : Prop :=
  ∀ n, P11360573012885096283.a n = A125185 n

theorem P11360573012885096283.correct : P11360573012885096283.Spec := by
  intro n
  simp only [A125185]

end A125185

/-! ## A125185.P5916600441385273011

`A115068(n+1)-A080928(n)%A038207(n)`
-/

namespace A125185.P5916600441385273011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) - Int.tmod (A080928 n) (A038207 n)

end

end A125185.P5916600441385273011

namespace A125185

/-- `A115068(n+1)-A080928(n)%A038207(n)` -/
def P5916600441385273011.Spec : Prop :=
  ∀ n, P5916600441385273011.a n = A125185 n

end A125185

/-! ## A125185.P7569479336218622315

`A038207(n+1)-Δ[A115068(n+1)]`
-/

namespace A125185.P7569479336218622315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (n + 1) - (f1 (n + 1) - f1 n)

end

end A125185.P7569479336218622315

namespace A125185

/-- `A038207(n+1)-Δ[A115068(n+1)]` -/
def P7569479336218622315.Spec : Prop :=
  ∀ n, P7569479336218622315.a n = A125185 n

end A125185

/-! ## A125185.P6512290795208847824

`A105728(n+1)+A105728(n+2)-A038207(n)`
-/

namespace A125185.P6512290795208847824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105728 (n + 1) + (A105728 (n + 2) - A038207 n)

end

end A125185.P6512290795208847824

namespace A125185

/-- `A105728(n+1)+A105728(n+2)-A038207(n)` -/
def P6512290795208847824.Spec : Prop :=
  ∀ n, P6512290795208847824.a n = A125185 n

end A125185

/-! ## A125185.P16461705621692110629

`A038207(n+1)+A115068(n+1)-A115068(n+2)`
-/

namespace A125185.P16461705621692110629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (n + 1) + (A115068 (n + 1) - A115068 (n + 2))

end

end A125185.P16461705621692110629

namespace A125185

/-- `A038207(n+1)+A115068(n+1)-A115068(n+2)` -/
def P16461705621692110629.Spec : Prop :=
  ∀ n, P16461705621692110629.a n = A125185 n

end A125185

/-! ## A125185.P17770347926774745730

`A208532(∑[2*n]%comp[∑[n]])`
-/

namespace A125185.P17770347926774745730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208532 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A125185.P17770347926774745730

namespace A125185

/-- `A208532(∑[2*n]%comp[∑[n]])` -/
def P17770347926774745730.Spec : Prop :=
  ∀ n, P17770347926774745730.a n = A125185 n

end A125185

/-! ## A125185.P4903163250912075537

`A208532(∑[char[∑[n]]]²-(n+1))`
-/

namespace A125185.P4903163250912075537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208532 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A125185.P4903163250912075537

namespace A125185

/-- `A208532(∑[char[∑[n]]]²-(n+1))` -/
def P4903163250912075537.Spec : Prop :=
  ∀ n, P4903163250912075537.a n = A125185 n

end A125185

/-! ## A125185.P491715296628459971

`and(-1, A208532(A061579(n)))`
-/

namespace A125185.P491715296628459971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A208532 (A061579 n).toNat)

end

end A125185.P491715296628459971

namespace A125185

/-- `and(-1, A208532(A061579(n)))` -/
def P491715296628459971.Spec : Prop :=
  ∀ n, P491715296628459971.a n = A125185 n

end A125185

/-! ## A125185.P15299021524482017548

`ceil(A200139(A007401(n+1))/2)`
-/

namespace A125185.P15299021524482017548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A200139 (A007401 (n + 1)).toNat : ℚ) / 2⌉

end

end A125185.P15299021524482017548

namespace A125185

/-- `ceil(A200139(A007401(n+1))/2)` -/
def P15299021524482017548.Spec : Prop :=
  ∀ n, P15299021524482017548.a n = A125185 n

end A125185

/-! ## A125185.P10729395056004407770

`A198792(comp[∑[n-1]])+A119468(n)`
-/

namespace A125185.P10729395056004407770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A119468 n

end

end A125185.P10729395056004407770

namespace A125185

/-- `A198792(comp[∑[n-1]])+A119468(n)` -/
def P10729395056004407770.Spec : Prop :=
  ∀ n, P10729395056004407770.a n = A125185 n

end A125185

/-!
# A125186: Number of digits 1 in all hyperbinary representations of n. A hyperbinary representation of a nonnegative integer n is a representation of n as a sum of powers of 2, each power being used at most twice.

The programs for A125186, there is no canonical definition to state claims against.
-/

/-! ## A125186.P8759429980268469127

`A278530(n+1)-A002487(n+1)`
-/

namespace A125186.P8759429980268469127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278530 (n + 1) - A002487 (n + 1)

end

end A125186.P8759429980268469127

/-! ## A125186.P17129013342285071154

`A278530(n+1)+A278530(n+1)-A278530(2*(n+1))`
-/

namespace A125186.P17129013342285071154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278530 (n + 1) + (A278530 (n + 1) - A278530 (2 * (n + 1)))

end

end A125186.P17129013342285071154

/-! ## A125186.P7229912638775480606

`A055941(A277020(n+1))`
-/

namespace A125186.P7229912638775480606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A277020 (n + 1)).toNat

end

end A125186.P7229912638775480606

/-! ## A125186.P8526915890809665919

`∑{digits}[A054899(A178569(n+1)), #]`
-/

namespace A125186.P8526915890809665919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A178569 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A125186.P8526915890809665919

/-! ## A125186.P11586562584389442678

`A318995(A260443(n+1))`
-/

namespace A125186.P11586562584389442678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A260443 (n + 1)).toNat

end

end A125186.P11586562584389442678

/-!
# A125187: Number of Dumont permutations of the first kind of length 2n avoiding the patterns 1423 and 4132.

The programs for A125187, there is no canonical definition to state claims against.
-/

/-! ## A125187.P13147769553274817869

`A224747(2*n)`
-/

namespace A125187.P13147769553274817869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 (2 * n)

end

end A125187.P13147769553274817869

/-! ## A125187.P13166633755926429620

`A224747(n+n)+char[A069274(n+1)]`
-/

namespace A125187.P13166633755926429620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069274 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 (n + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A125187.P13166633755926429620

/-! ## A125187.P4515367979910827589

`A274112(eq[n, n*n%4])`
-/

namespace A125187.P4515367979910827589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125187.P4515367979910827589

/-! ## A125187.P8864145676300042286

`A274112(xor(3, A130824(n)))`
-/

namespace A125187.P8864145676300042286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (Int.xor 3 (A130824 n)).toNat

end

end A125187.P8864145676300042286

/-! ## A125187.P6477398829653799373

`A274112(record[A022998(n)+1])`
-/

namespace A125187.P6477398829653799373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125187.P6477398829653799373

/-! ## A125187.P48916446379575961

`A274112(A111284(n+1)-1)`
-/

namespace A125187.P48916446379575961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A111284 (n + 1) - 1).toNat

end

end A125187.P48916446379575961

/-! ## A125187.P18180787269922305239

`A274112(A004271(2*n)+1)`
-/

namespace A125187.P18180787269922305239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A004271 (2 * n) + 1).toNat

end

end A125187.P18180787269922305239

/-! ## A125187.P5253622787044325326

`A274112(2*A004275(n)+1)`
-/

namespace A125187.P5253622787044325326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (2 * A004275 n + 1).toNat

end

end A125187.P5253622787044325326

/-! ## A125187.P16337537271457556563

`A274112(A092535(2*n)-1)`
-/

namespace A125187.P16337537271457556563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A092535 (2 * n) - 1).toNat

end

end A125187.P16337537271457556563

/-! ## A125187.P3539282024298203944

`A274112(xor(3, A111284(n+1)))`
-/

namespace A125187.P3539282024298203944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (Int.xor 3 (A111284 (n + 1))).toNat

end

end A125187.P3539282024298203944

/-!
# A125188: Number of Dumont permutations of the first kind of length 2n avoiding the patterns 2413 and 4132. Also number of Dumont permutations of the first kind of length 2n avoiding the patterns 1423 and 3142.

The programs for A125188, there is no canonical definition to state claims against.
-/

/-! ## A125188.P7449599120633591851

`A126120(n)+A008615(A032164(n))`
-/

namespace A125188.P7449599120633591851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + A008615 (A032164 n).toNat

end

end A125188.P7449599120633591851

/-! ## A125188.P14760666464712215929

`A362597(n)+A025456(A000584(n))`
-/

namespace A125188.P14760666464712215929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362597 n + A025456 (A000584 n).toNat

end

end A125188.P14760666464712215929

/-! ## A125188.P12673245965792086218

`A362597(n)+A014376(A051026(n))`
-/

namespace A125188.P12673245965792086218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362597 n + A014376 (A051026 n).toNat

end

end A125188.P12673245965792086218

/-!
# A125189: Number of symmetric bushes with n edges. I.e., number of ordered trees with n edges, no non-root vertices of outdegree 1 and symmetrical with respect to the vertical axis passing through the root.

The programs for A125189, there is no canonical definition to state claims against.
-/

/-! ## A125189.P5040504144678408535

`A082958(abs(1-n))+A082958(n)`
-/

namespace A125189.P5040504144678408535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082958 |1 - (n : ℤ)|.toNat + A082958 n

end

end A125189.P5040504144678408535

/-! ## A125189.P11385378671850119126

`A003056(A032047(n+1)+1)`
-/

namespace A125189.P11385378671850119126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A032047 (n + 1) + 1).toNat

end

end A125189.P11385378671850119126

/-! ## A125189.P3457761262776980429

`A325400(A077419(n))`
-/

namespace A125189.P3457761262776980429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A077419 n).toNat

end

end A125189.P3457761262776980429

/-! ## A125189.P1283441537367142665

`A287864(A157725(n))`
-/

namespace A125189.P1283441537367142665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A157725 n).toNat

end

end A125189.P1283441537367142665

/-! ## A125189.P1571001542422623809

`A287864(A000045(n)+2)`
-/

namespace A125189.P1571001542422623809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A000045 n + 2).toNat

end

end A125189.P1571001542422623809

/-!
# A125190: Number of ascents in all Schroeder paths of length 2n.

The programs for A125190, the canonical program `A125190.P10223957240302189230` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125190 has offset 0).

The definition of A125190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125190.P1335889634747497753

`A110170(n)-A050146(n)`
-/

namespace A125190.P1335889634747497753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n - A050146 n

end

end A125190.P1335889634747497753

namespace A125190

/-- `A110170(n)-A050146(n)` -/
def P1335889634747497753.Spec : Prop :=
  ∀ n, P1335889634747497753.a n = A125190 n

end A125190

/-! ## A125190.P3891103311008540547

`A123164(n)-A155069(n)`
-/

namespace A125190.P3891103311008540547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n - A155069 n

end

end A125190.P3891103311008540547

namespace A125190

/-- `A123164(n)-A155069(n)` -/
def P3891103311008540547.Spec : Prop :=
  ∀ n, P3891103311008540547.a n = A125190 n

end A125190

/-! ## A125190.P10223957240302189230

`A123164(n)-abs(A086456(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A125190

/-- `A123164(n)-abs(A086456(n))` -/
def P10223957240302189230.Spec : Prop :=
  ∀ n, P10223957240302189230.a n = A125190 n

theorem P10223957240302189230.correct : P10223957240302189230.Spec := by
  intro n
  simp only [A125190]

end A125190

/-! ## A125190.P9793065720347032520

`A123164(n)-abs(A103137(n))`
-/

namespace A125190.P9793065720347032520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n - |A103137 n|

end

end A125190.P9793065720347032520

namespace A125190

/-- `A123164(n)-abs(A103137(n))` -/
def P9793065720347032520.Spec : Prop :=
  ∀ n, P9793065720347032520.a n = A125190 n

end A125190

/-! ## A125190.P3288353494266344910

`Δ[A050146(n)]-A002003(n)`
-/

namespace A125190.P3288353494266344910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002003 n

end

end A125190.P3288353494266344910

namespace A125190

/-- `Δ[A050146(n)]-A002003(n)` -/
def P3288353494266344910.Spec : Prop :=
  ∀ n, P3288353494266344910.a n = A125190 n

end A125190

/-! ## A125190.P3493283517425203527

`Δ[A050146(n)]%A123164(n)`
-/

namespace A125190.P3493283517425203527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A123164 n)

end

end A125190.P3493283517425203527

namespace A125190

/-- `Δ[A050146(n)]%A123164(n)` -/
def P3493283517425203527.Spec : Prop :=
  ∀ n, P3493283517425203527.a n = A125190 n

end A125190

/-! ## A125190.P13707190641047213484

`A247630(2*n)-A050146(n)`
-/

namespace A125190.P13707190641047213484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * n) - A050146 n

end

end A125190.P13707190641047213484

namespace A125190

/-- `A247630(2*n)-A050146(n)` -/
def P13707190641047213484.Spec : Prop :=
  ∀ n, P13707190641047213484.a n = A125190 n

end A125190

/-! ## A125190.P15533169341086963662

`A050146(n+1)-A050147(n+1)`
-/

namespace A125190.P15533169341086963662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - A050147 (n + 1)

end

end A125190.P15533169341086963662

namespace A125190

/-- `A050146(n+1)-A050147(n+1)` -/
def P15533169341086963662.Spec : Prop :=
  ∀ n, P15533169341086963662.a n = A125190 n

end A125190

/-! ## A125190.P3470127809401153288

`A110110(A004273(n))-A155069(n)`
-/

namespace A125190.P3470127809401153288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A004273 n).toNat - A155069 n

end

end A125190.P3470127809401153288

namespace A125190

/-- `A110110(A004273(n))-A155069(n)` -/
def P3470127809401153288.Spec : Prop :=
  ∀ n, P3470127809401153288.a n = A125190 n

end A125190

/-! ## A125190.P5038886122728021929

`A002003(n)+A006319(n)-A006318(n)`
-/

namespace A125190.P5038886122728021929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n + (A006319 n - A006318 n)

end

end A125190.P5038886122728021929

namespace A125190

/-- `A002003(n)+A006319(n)-A006318(n)` -/
def P5038886122728021929.Spec : Prop :=
  ∀ n, P5038886122728021929.a n = A125190 n

end A125190

/-! ## A125190.P1391530389757271613

`A002002(n)+A002002(n)%A050146(n)`
-/

namespace A125190.P1391530389757271613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + Int.tmod (A002002 n) (A050146 n)

end

end A125190.P1391530389757271613

namespace A125190

/-- `A002002(n)+A002002(n)%A050146(n)` -/
def P1391530389757271613.Spec : Prop :=
  ∀ n, P1391530389757271613.a n = A125190 n

end A125190

/-! ## A125190.P7762757600287380563

`A050146(n+1)-(A050146(n)+A002003(n))`
-/

namespace A125190.P7762757600287380563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - (A050146 n + A002003 n)

end

end A125190.P7762757600287380563

namespace A125190

/-- `A050146(n+1)-(A050146(n)+A002003(n))` -/
def P7762757600287380563.Spec : Prop :=
  ∀ n, P7762757600287380563.a n = A125190 n

end A125190

/-!
# A125191: Primes of the form k# + (k+1)# +- 1, where k# = A002110(k) = primorial(k).

The programs for A125191, there is no canonical definition to state claims against.
-/

/-! ## A125191.P4606902350101059919

`A147791(A270618(n))`
-/

namespace A125191.P4606902350101059919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147791 (A270618 n).toNat

end

end A125191.P4606902350101059919

/-!
# A125192: Number of 8 X 8 Franklin squares with magic sum 2n.

The programs for A125192, there is no canonical definition to state claims against.
-/

/-! ## A125192.P13362897125138293114

`and(A303159(n), A328841(A287423(n)))`
-/

namespace A125192.P13362897125138293114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A303159 n) (A328841 (A287423 n).toNat)

end

end A125192.P13362897125138293114

/-!
# A125193: Smallest prime p such that p^2 divides the numerator of generalized harmonic number H((p-1)/2,2n) = Sum[ 1/k^(2n), {k,1,(p-1)/2} ].

The programs for A125193, there is no canonical definition to state claims against.
-/

/-! ## A125193.P7384854756684273191

`p?[or(A029655(n), A282676(n))]`
-/

namespace A125193.P7384854756684273191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029655 n) (A282676 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125193.P7384854756684273191

/-! ## A125193.P1596241227920067167

`p?[A324894(A324877(3*n+2))]`
-/

namespace A125193.P1596241227920067167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324894 (A324877 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125193.P1596241227920067167

/-!
# A125195: Records in A127885.

The programs for A125195, there is no canonical definition to state claims against.
-/

/-! ## A125195.P15309037054238635491

`record[A127885(n+1)]`
-/

namespace A125195.P15309037054238635491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125195.P15309037054238635491

/-! ## A125195.P1930549448912479125

`A127885(A125686(n+1))`
-/

namespace A125195.P1930549448912479125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (A125686 (n + 1)).toNat

end

end A125195.P1930549448912479125

/-! ## A125195.P12397241897500206364

`record[A006577(n+1)-A127886(n+1)]`
-/

namespace A125195.P12397241897500206364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A127886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125195.P12397241897500206364

/-! ## A125195.P1117406102953530329

`record[A008908(n+1)-(A127886(n+1)+1)]`
-/

namespace A125195.P1117406102953530329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A127886 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125195.P1117406102953530329

/-! ## A125195.P16059137621596155583

`A023443(record[A008908(n+1)-A127886(n+1)])`
-/

namespace A125195.P16059137621596155583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A127886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125195.P16059137621596155583

/-!
# A125196: Number of magic labelings of the Petersen graph with magic sum n.

The programs for A125196, the canonical program `A125196.P720524230895024461` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125196 has offset 0).

The definition of A125196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125196.P720524230895024461

`∑[∑[∑[A195142(n)+2]-1]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125196

/-- `∑[∑[∑[A195142(n)+2]-1]]` -/
def P720524230895024461.Spec : Prop :=
  ∀ n, P720524230895024461.a n = A125196 n

theorem P720524230895024461.correct : P720524230895024461.Spec := by
  intro n
  simp only [A125196]

end A125196

/-! ## A125196.P8722226582700743257

`∑[∑[∑[A008253(n)-n%2]]]`
-/

namespace A125196.P8722226582700743257
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n - ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125196.P8722226582700743257

namespace A125196

/-- `∑[∑[∑[A008253(n)-n%2]]]` -/
def P8722226582700743257.Spec : Prop :=
  ∀ n, P8722226582700743257.a n = A125196 n

end A125196

/-! ## A125196.P18152607781440243506

`∑[∑[A007904(n)-A110654(n)]]`
-/

namespace A125196.P18152607781440243506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007904 n - A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125196.P18152607781440243506

namespace A125196

/-- `∑[∑[A007904(n)-A110654(n)]]` -/
def P18152607781440243506.Spec : Prop :=
  ∀ n, P18152607781440243506.a n = A125196 n

end A125196

/-! ## A125196.P12949527891973881268

`∑[A006322(n+1)-A212068(n+1)]`
-/

namespace A125196.P12949527891973881268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) - A212068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125196.P12949527891973881268

namespace A125196

/-- `∑[A006322(n+1)-A212068(n+1)]` -/
def P12949527891973881268.Spec : Prop :=
  ∀ n, P12949527891973881268.a n = A125196 n

end A125196

/-! ## A125196.P3830734805231846453

`∑[∑[∑[A047221(n²+1)]-1]]`
-/

namespace A125196.P3830734805231846453
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125196.P3830734805231846453

namespace A125196

/-- `∑[∑[∑[A047221(n²+1)]-1]]` -/
def P3830734805231846453.Spec : Prop :=
  ∀ n, P3830734805231846453.a n = A125196 n

end A125196

/-!
# A125198: Number of magical labelings of the octahedral graph of magic sum n.

The programs for A125198, the canonical program `A125198.P3131070599039127481` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125198 has offset 0).

The definition of A125198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125198.P3131070599039127481

`∑[∑[floor((((n+1)²+1)/2)²)]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125198

/-- `∑[∑[floor((((n+1)²+1)/2)²)]]` -/
def P3131070599039127481.Spec : Prop :=
  ∀ n, P3131070599039127481.a n = A125198 n

theorem P3131070599039127481.correct : P3131070599039127481.Spec := by
  intro n
  simp only [A125198]

end A125198

/-! ## A125198.P4649137020084978057

`∑[A335648(n+1)]+∑[A335648(n)]`
-/

namespace A125198.P4649137020084978057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A125198.P4649137020084978057

namespace A125198

/-- `∑[A335648(n+1)]+∑[A335648(n)]` -/
def P4649137020084978057.Spec : Prop :=
  ∀ n, P4649137020084978057.a n = A125198 n

end A125198

/-!
# A125199: Triangle read by rows: T(n,k) = 4*n*k - n - k, 1<=k<=n.

The programs for A125199, there is no canonical definition to state claims against.
-/

/-! ## A125199.P17290659816098797882

`floor(A241747(n)/4)`
-/

namespace A125199.P17290659816098797882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241747 n : ℚ) / 4⌋

end

end A125199.P17290659816098797882

/-! ## A125199.P6264326360579574689

`round(A241747(2*n-n)/4)`
-/

namespace A125199.P6264326360579574689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A241747 (2 * n - n) : ℚ) / 4)

end

end A125199.P6264326360579574689

/-! ## A125199.P9743076299743142641

`A002265(A241747(n))`
-/

namespace A125199.P9743076299743142641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A241747 n).toNat

end

end A125199.P9743076299743142641

/-! ## A125199.P6199070988803067399

`A144652(A185868(n+1))`
-/

namespace A125199.P6199070988803067399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144652 (A185868 (n + 1)).toNat

end

end A125199.P6199070988803067399

/-! ## A125199.P5151869219111900777

`A151890(A185869(n+1))/2`
-/

namespace A125199.P5151869219111900777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151890 (A185869 (n + 1)).toNat : ℚ) / 2

end

end A125199.P5151869219111900777

/-! ## A125199.P8199205823461629938

`∑{d}[round(A241747(n)/4), A000010(#)]`
-/

namespace A125199.P8199205823461629938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A241747 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A125199.P8199205823461629938

/-! ## A125199.P5167698438523190745

`A127780(n+1)+A079297(n+1)`
-/

namespace A125199.P5167698438523190745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127780 (n + 1) + A079297 (n + 1)

end

end A125199.P5167698438523190745

/-! ## A125199.P10362719607536041661

`A143218(n+1)+A094727(n+1)`
-/

namespace A125199.P10362719607536041661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143218 (n + 1) + A094727 (n + 1)

end

end A125199.P10362719607536041661

/-! ## A125199.P12578065614958190927

`A154684(n+1)+A129801(n+1)`
-/

namespace A125199.P12578065614958190927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + A129801 (n + 1)

end

end A125199.P12578065614958190927

/-! ## A125199.P718854592997650651

`A025581(n)+2*A079297(n+1)`
-/

namespace A125199.P718854592997650651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 2 * A079297 (n + 1)

end

end A125199.P718854592997650651

