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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B001.C011
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
import Seq.B007.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A066800: Number of different eventual period lengths for power sequences mod n; i.e., number of different period lengths of repeating digits of 1/n in different bases.

The programs for A066800, there is no canonical definition to state claims against.
-/

/-! ## A066800.P4295914202427922089

`A000005(A002322(n+1))`
-/

namespace A066800.P4295914202427922089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002322 (n + 1)).toNat

end

end A066800.P4295914202427922089

/-! ## A066800.P11546773109354595807

`A000005(A263027(n+1)-1)`
-/

namespace A066800.P11546773109354595807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A263027 (n + 1) - 1).toNat

end

end A066800.P11546773109354595807

/-! ## A066800.P15976889129371378279

`A193169(n+1)+A191613(n+1)`
-/

namespace A066800.P15976889129371378279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193169 (n + 1) + A191613 (n + 1)

end

end A066800.P15976889129371378279

/-! ## A066800.P6676162337351265

`A000005(1-A277127(n+1)+n)`
-/

namespace A066800.P6676162337351265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 - A277127 (n + 1) + (n : ℤ)).toNat

end

end A066800.P6676162337351265

/-! ## A066800.P16383692905424703829

`A032741(1-A277127(n+1)+n)+1`
-/

namespace A066800.P16383692905424703829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (1 - A277127 (n + 1) + (n : ℤ)).toNat + 1

end

end A066800.P16383692905424703829

/-! ## A066800.P2003912940726371440

`A000005((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A034380(n+1))`
-/

namespace A066800.P2003912940726371440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A066800.P2003912940726371440

/-! ## A066800.P7792993459189945817

`A032741((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A034380(n+1))+1`
-/

namespace A066800.P7792993459189945817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat + 1

end

end A066800.P7792993459189945817

/-! ## A066800.P11575340049077254683

`A191613(n+1)+A001227(A002322(n+1))`
-/

namespace A066800.P11575340049077254683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (n + 1) + A001227 (A002322 (n + 1)).toNat

end

end A066800.P11575340049077254683

/-! ## A066800.P12528012330125569283

`A000005(A000010(n+1)-A104194(n+1))`
-/

namespace A066800.P12528012330125569283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) - A104194 (n + 1)).toNat

end

end A066800.P12528012330125569283

/-! ## A066800.P8003123553083202486

`A000005(A000010(n+1)/A034380(n+1))`
-/

namespace A066800.P8003123553083202486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A066800.P8003123553083202486

/-! ## A066800.P3472124276599077228

`A000005(gcd(A000010(n+1), A104194(n+1)))`
-/

namespace A066800.P3472124276599077228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000010 (n + 1)) (A104194 (n + 1)))

end

end A066800.P3472124276599077228

/-! ## A066800.P8370784124291305730

`A000005((n-A219428(n+1))/A034380(n+1))`
-/

namespace A066800.P8370784124291305730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((n : ℤ) - A219428 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A066800.P8370784124291305730

/-! ## A066800.P6475599263354756843

`A000005((1-A051953(n+1)+n)/A034380(n+1))`
-/

namespace A066800.P6475599263354756843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A066800.P6475599263354756843

/-! ## A066800.P795617689571900511

`A000005(∏{p}[n+1, #-1]*A003557(n+1)/A034380(n+1))`
-/

namespace A066800.P795617689571900511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A066800.P795617689571900511

/-! ## A066800.P14379245978937213573

`A000005((n+1)/∏{p}[n+1, #]*A173557(n+1)/A034380(n+1))`
-/

namespace A066800.P14379245978937213573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A066800.P14379245978937213573

/-! ## A066800.P9120567505907651123

`A000005((A048865(n+1)+A048864(n+1))/A034380(n+1))`
-/

namespace A066800.P9120567505907651123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A048865 (n + 1) + A048864 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A066800.P9120567505907651123

/-! ## A066800.P4295634202281450215

`A000005(A046073(n+1)/A034380(n+1)*A060594(n+1))`
-/

namespace A066800.P4295634202281450215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A046073 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ) * (A060594 (n + 1) : ℚ))).toNat

end

end A066800.P4295634202281450215

/-! ## A066800.P11925483623856466

`A000005(A353643(n+1)/A034380(n+1)*A353644(n+1))`
-/

namespace A066800.P11925483623856466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A353643 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ) * (A353644 (n + 1) : ℚ))).toNat

end

end A066800.P11925483623856466

/-! ## A066800.P7915847476111533033

`A032741(A353643(n+1)*A353644(n+1)/A034380(n+1))+1`
-/

namespace A066800.P7915847476111533033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A353643 (n + 1) * A353644 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat + 1

end

end A066800.P7915847476111533033

/-! ## A066800.P18298618818208258155

`A183063(2*A002322(n+1))`
-/

namespace A066800.P18298618818208258155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A002322 (n + 1)).toNat

end

end A066800.P18298618818208258155

/-!
# A066802: a(n) = binomial(6*n,3*n).

The programs for A066802, the canonical program `A066802.P9844520095216327590` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066802 has offset 0).

The definition of A066802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*n, 3*n)` (program `A066802.P9844520095216327590`, by `A066802.P9844520095216327590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066802.P18056673962600003327

`A000984(3*n)`
-/

namespace A066802.P18056673962600003327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (3 * n)

end

end A066802.P18056673962600003327

namespace A066802

/-- `A000984(3*n)` -/
def P18056673962600003327.Spec : Prop :=
  ∀ n, P18056673962600003327.a n = A066802 n

theorem P18056673962600003327.correct : P18056673962600003327.Spec := by
  intro n
  simp only [A066802, Nat.add_sub_cancel, A066802.P18056673962600003327.a, A066802.P9844520095216327590.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066802

/-! ## A066802.P9844520095216327590

`C(6*n, 3*n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066802

/-- `C(6*n, 3*n)` -/
def P9844520095216327590.Spec : Prop :=
  ∀ n, (P9844520095216327590.a n : ℤ) = A066802 n

theorem P9844520095216327590.correct : P9844520095216327590.Spec := by
  intro n
  simp only [A066802]

end A066802

/-! ## A066802.P8392310094390015264

`A187442(2*n)`
-/

namespace A066802.P8392310094390015264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187442 (2 * n)

end

end A066802.P8392310094390015264

namespace A066802

/-- `A187442(2*n)` -/
def P8392310094390015264.Spec : Prop :=
  ∀ n, P8392310094390015264.a n = A066802 n

end A066802

/-! ## A066802.P1173489608703380869

`A001405(6*n)`
-/

namespace A066802.P1173489608703380869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (6 * n)

end

end A066802.P1173489608703380869

namespace A066802

/-- `A001405(6*n)` -/
def P1173489608703380869.Spec : Prop :=
  ∀ n, P1173489608703380869.a n = A066802 n

end A066802

/-! ## A066802.P5309617351537069412

`A063886(6*n)`
-/

namespace A066802.P5309617351537069412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (6 * n)

end

end A066802.P5309617351537069412

namespace A066802

/-- `A063886(6*n)` -/
def P5309617351537069412.Spec : Prop :=
  ∀ n, P5309617351537069412.a n = A066802 n

end A066802

/-! ## A066802.P6453107814281434394

`A081668(6*n)`
-/

namespace A066802.P6453107814281434394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (6 * n)

end

end A066802.P6453107814281434394

namespace A066802

/-- `A081668(6*n)` -/
def P6453107814281434394.Spec : Prop :=
  ∀ n, P6453107814281434394.a n = A066802 n

end A066802

/-! ## A066802.P10047598624557589510

`A089849(6*n)`
-/

namespace A066802.P10047598624557589510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (6 * n)

end

end A066802.P10047598624557589510

namespace A066802

/-- `A089849(6*n)` -/
def P10047598624557589510.Spec : Prop :=
  ∀ n, P10047598624557589510.a n = A066802 n

end A066802

/-! ## A066802.P8089066809639629007

`A126869(6*n)`
-/

namespace A066802.P8089066809639629007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (6 * n)

end

end A066802.P8089066809639629007

namespace A066802

/-- `A126869(6*n)` -/
def P8089066809639629007.Spec : Prop :=
  ∀ n, P8089066809639629007.a n = A066802 n

end A066802

/-! ## A066802.P415065097178598768

`A126930(6*n)`
-/

namespace A066802.P415065097178598768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (6 * n)

end

end A066802.P415065097178598768

namespace A066802

/-- `A126930(6*n)` -/
def P415065097178598768.Spec : Prop :=
  ∀ n, P415065097178598768.a n = A066802 n

end A066802

/-! ## A066802.P15522643149605231822

`A128014(6*n)`
-/

namespace A066802.P15522643149605231822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (6 * n)

end

end A066802.P15522643149605231822

namespace A066802

/-- `A128014(6*n)` -/
def P15522643149605231822.Spec : Prop :=
  ∀ n, P15522643149605231822.a n = A066802 n

end A066802

/-!
# A066803: a(n) = gcd(2^n + 1, 3^n + 1).

The programs for A066803, the canonical program `A066803.P10767619645163118416` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066803 has offset 1).

The definition of A066803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2^(n+1)+1, 3^(n+1)+1)` (program `A066803.P10767619645163118416`, by `A066803.P10767619645163118416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066803.P10767619645163118416

`gcd(2^(n+1)+1, 3^(n+1)+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066803

/-- `gcd(2^(n+1)+1, 3^(n+1)+1)` -/
def P10767619645163118416.Spec : Prop :=
  ∀ n, (P10767619645163118416.a n : ℤ) = A066803 (n + 1)

theorem P10767619645163118416.correct : P10767619645163118416.Spec := by
  intro n
  simp only [A066803, Nat.add_sub_cancel]

end A066803

/-!
# A066804: Sum of diagonal elements and those below it for a square matrix of integers, starting with 1.

The programs for A066804, the canonical program `A066804.P11561275245386188277` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066804 has offset 1).

The definition of A066804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066804.P3744739999068814447

`ogf((1+3x+4x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A066804.P3744739999068814447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, -5, 10, -10, 5, -1] n

end

end A066804.P3744739999068814447

namespace A066804

/-- `ogf((1+3x+4x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3744739999068814447.Spec : Prop :=
  ∀ n, P3744739999068814447.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P11048657350488467048

`(n+1)*(n+2)*(2*(n+1)²-(n+1)+2)/6`
-/

namespace A066804.P11048657350488467048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 2) : ℚ) / 6

end

end A066804.P11048657350488467048

namespace A066804

/-- `(n+1)*(n+2)*(2*(n+1)²-(n+1)+2)/6` -/
def P11048657350488467048.Spec : Prop :=
  ∀ n, P11048657350488467048.a n = (A066804 (n + 1) : ℚ)

theorem P11048657350488467048.correct : P11048657350488467048.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A066804, Nat.add_sub_cancel, A066804.P11048657350488467048.a, A066804.P11561275245386188277.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A066804, Nat.add_sub_cancel, A066804.P11048657350488467048.a, A066804.P11561275245386188277.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A066804

/-! ## A066804.P11561275245386188277

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=34, a(3)=100, a(4)=235`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066804

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11561275245386188277.Spec : Prop :=
  ∀ n, P11561275245386188277.a n = A066804 (n + 1)

theorem P11561275245386188277.correct : P11561275245386188277.Spec := by
  intro n
  simp only [A066804, Nat.add_sub_cancel]

end A066804

/-! ## A066804.P4418678219753919384

`(n+1)*A000217(n+1)-∑{#}[n, (n+1-4*#)*A000217(#)]`
-/

namespace A066804.P4418678219753919384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000217 (n + 1) - ∑ k ∈ Finset.range (f1 n + 1), ((n + 1 : ℤ) - (4 * k : ℤ)) * A000217 k

end

end A066804.P4418678219753919384

namespace A066804

/-- `(n+1)*A000217(n+1)-∑{#}[n, (n+1-4*#)*A000217(#)]` -/
def P4418678219753919384.Spec : Prop :=
  ∀ n, P4418678219753919384.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P14983944400625914317

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=1, a(1)=5`
-/

namespace A066804.P14983944400625914317
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066804.P14983944400625914317

namespace A066804

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P14983944400625914317.Spec : Prop :=
  ∀ n, (P14983944400625914317.a n : ℤ) = A066804 (n + 1)

end A066804

/-! ## A066804.P8890871898997387418

`C(n+2, 2)+n*∑[(n+1)²]`
-/

namespace A066804.P8890871898997387418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066804.P8890871898997387418

namespace A066804

/-- `C(n+2, 2)+n*∑[(n+1)²]` -/
def P8890871898997387418.Spec : Prop :=
  ∀ n, (P8890871898997387418.a n : ℤ) = A066804 (n + 1)

end A066804

/-! ## A066804.P15286880096749040513

`∑[C(2*(n+1), 3)]+C(n+3, 3)`
-/

namespace A066804.P15286880096749040513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 3) 3

end

end A066804.P15286880096749040513

namespace A066804

/-- `∑[C(2*(n+1), 3)]+C(n+3, 3)` -/
def P15286880096749040513.Spec : Prop :=
  ∀ n, (P15286880096749040513.a n : ℤ) = A066804 (n + 1)

end A066804

/-! ## A066804.P508386317136441074

`∑[A332698(n)+1]`
-/

namespace A066804.P508386317136441074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332698 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066804.P508386317136441074

namespace A066804

/-- `∑[A332698(n)+1]` -/
def P508386317136441074.Spec : Prop :=
  ∀ n, P508386317136441074.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P11495344106025909075

`∑[∑[A054567(n+1)]]`
-/

namespace A066804.P11495344106025909075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066804.P11495344106025909075

namespace A066804

/-- `∑[∑[A054567(n+1)]]` -/
def P11495344106025909075.Spec : Prop :=
  ∀ n, P11495344106025909075.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P18387774339362638846

`∑[A331987(n)+n+1]`
-/

namespace A066804.P18387774339362638846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066804.P18387774339362638846

namespace A066804

/-- `∑[A331987(n)+n+1]` -/
def P18387774339362638846.Spec : Prop :=
  ∀ n, P18387774339362638846.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P7709547589185117328

`∑[A132124(n)+(n+1)²]`
-/

namespace A066804.P7709547589185117328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066804.P7709547589185117328

namespace A066804

/-- `∑[A132124(n)+(n+1)²]` -/
def P7709547589185117328.Spec : Prop :=
  ∀ n, P7709547589185117328.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P10000763520241906505

`A289643(n)+∑[(n+1)²]`
-/

namespace A066804.P10000763520241906505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A066804.P10000763520241906505

namespace A066804

/-- `A289643(n)+∑[(n+1)²]` -/
def P10000763520241906505.Spec : Prop :=
  ∀ n, P10000763520241906505.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P9387498397700669791

`∑[∑[A054569(n+1)-n]]`
-/

namespace A066804.P9387498397700669791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054569 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066804.P9387498397700669791

namespace A066804

/-- `∑[∑[A054569(n+1)-n]]` -/
def P9387498397700669791.Spec : Prop :=
  ∀ n, P9387498397700669791.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P12418831779623802976

`∑[A100178(n+1)]-∑[∑[n]]`
-/

namespace A066804.P12418831779623802976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A066804.P12418831779623802976

namespace A066804

/-- `∑[A100178(n+1)]-∑[∑[n]]` -/
def P12418831779623802976.Spec : Prop :=
  ∀ n, P12418831779623802976.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P4389301370207801721

`∑[A205342(n+1)-(n+1)²]`
-/

namespace A066804.P4389301370207801721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205342 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066804.P4389301370207801721

namespace A066804

/-- `∑[A205342(n+1)-(n+1)²]` -/
def P4389301370207801721.Spec : Prop :=
  ∀ n, P4389301370207801721.a n = A066804 (n + 1)

end A066804

/-! ## A066804.P7068278903887397535

`A187673(n)-A005582(n)`
-/

namespace A066804.P7068278903887397535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n - A005582 n

end

end A066804.P7068278903887397535

namespace A066804

/-- `A187673(n)-A005582(n)` -/
def P7068278903887397535.Spec : Prop :=
  ∀ n, P7068278903887397535.a n = A066804 (n + 1)

end A066804

/-!
# A066806: Expansion of Product_{k>=1} (1+x^k)^A001055(k).

The programs for A066806, there is no canonical definition to state claims against.
-/

/-! ## A066806.P1249688265724927837

`A321567(n)+A044941(A016116(n))`
-/

namespace A066806.P1249688265724927837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321567 n + A044941 (A016116 n).toNat

end

end A066806.P1249688265724927837

/-! ## A066806.P3598357329004644039

`A002264(3*A321567(n))`
-/

namespace A066806.P3598357329004644039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A321567 n).toNat

end

end A066806.P3598357329004644039

/-! ## A066806.P18245936676526390818

`A051176(3*A321567(n))`
-/

namespace A066806.P18245936676526390818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (3 * A321567 n).toNat

end

end A066806.P18245936676526390818

/-! ## A066806.P11567601377366122916

`A151842(3*A321567(n))`
-/

namespace A066806.P11567601377366122916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151842 (3 * A321567 n).toNat

end

end A066806.P11567601377366122916

/-! ## A066806.P13715349415481217701

`A289437(3*A321567(n))`
-/

namespace A066806.P13715349415481217701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (3 * A321567 n).toNat

end

end A066806.P13715349415481217701

/-!
# A066807: 

The programs for A066807, there is no canonical definition to state claims against.
-/

/-! ## A066807.P17039122479817090926

`∏[A064078(Δ[3^n])]`
-/

namespace A066807.P17039122479817090926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066807.P17039122479817090926

/-!
# A066808: a(n) = F(n)-1 mod 2^n+1 with F(n) = n-th Fermat number = 1+2^2^n.

The programs for A066808, there is no canonical definition to state claims against.
-/

/-! ## A066808.P10763905653907507082

`A000079(A182256(n))%A000051(n)`
-/

namespace A066808.P10763905653907507082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A182256 n).toNat) (A000051 n)

end

end A066808.P10763905653907507082

/-! ## A066808.P14178894912577855284

`A062173(2^n+1)`
-/

namespace A066808.P14178894912577855284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (2 ^ n + 1)

end

end A066808.P14178894912577855284

/-! ## A066808.P157932249480957467

`and(-1, A062173(or(1, 2^n)))`
-/

namespace A066808.P157932249480957467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A062173 (Nat.lor 1 (2 ^ n)))

end

end A066808.P157932249480957467

/-! ## A066808.P16026153973529920452

`and(-1, A062173(A000051(n)))`
-/

namespace A066808.P16026153973529920452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A062173 (A000051 n).toNat)

end

end A066808.P16026153973529920452

/-! ## A066808.P3209452059006674113

`A062173(or(1, 2^n))%A000079(n)`
-/

namespace A066808.P3209452059006674113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062173 (Nat.lor 1 (2 ^ n))) (A000079 n)

end

end A066808.P3209452059006674113

/-!
# A066809: a(n) = sum of modular offsets: mod[n+c,b]-(mod[n,b]+c) for c<=b<=n.

The programs for A066809, the canonical program `A066809.P13037445779185629992` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066809 has offset 1).

The definition of A066809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3920 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066809.P13037445779185629992

`∑[∑[n+1]-∑{d}[n+1, (#%(n+1))²]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066809

/-- `∑[∑[n+1]-∑{d}[n+1, (#%(n+1))²]]` -/
def P13037445779185629992.Spec : Prop :=
  ∀ n, P13037445779185629992.a n = A066809 (n + 1)

theorem P13037445779185629992.correct : P13037445779185629992.Spec := by
  intro n
  simp only [A066809, Nat.add_sub_cancel]

end A066809

/-! ## A066809.P11696135629915997863

`∑[n+1]+∑[∑[n]-(∑{d}[n+1, #²]-(n+1)²)]`
-/

namespace A066809.P11696135629915997863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (((∑ d ∈ Nat.divisors (f4 n), d ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A066809.P11696135629915997863

namespace A066809

/-- `∑[n+1]+∑[∑[n]-(∑{d}[n+1, #²]-(n+1)²)]` -/
def P11696135629915997863.Spec : Prop :=
  ∀ n, P11696135629915997863.a n = A066809 (n + 1)

end A066809

/-! ## A066809.P14417985424089062660

`A309176(n+1)+∑[n+1]`
-/

namespace A066809.P14417985424089062660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309176 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A066809.P14417985424089062660

namespace A066809

/-- `A309176(n+1)+∑[n+1]` -/
def P14417985424089062660.Spec : Prop :=
  ∀ n, P14417985424089062660.a n = A066809 (n + 1)

end A066809

/-! ## A066809.P15866568022608023974

`∑[∑[n+1]-A067558(n+1)]`
-/

namespace A066809.P15866568022608023974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A067558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066809.P15866568022608023974

namespace A066809

/-- `∑[∑[n+1]-A067558(n+1)]` -/
def P15866568022608023974.Spec : Prop :=
  ∀ n, P15866568022608023974.a n = A066809 (n + 1)

end A066809

/-! ## A066809.P10473012075626259737

`∑[∑[n+1]]-A279847(n+1)`
-/

namespace A066809.P10473012075626259737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A279847 (n + 1)

end

end A066809.P10473012075626259737

namespace A066809

/-- `∑[∑[n+1]]-A279847(n+1)` -/
def P10473012075626259737.Spec : Prop :=
  ∀ n, P10473012075626259737.a n = A066809 (n + 1)

end A066809

/-!
# A066810: Expansion of x^2/((1-3*x)*(1-2*x)^2).

The programs for A066810, the canonical program `A066810.P10107864647593630781` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066810 has offset 0).

The definition of A066810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-7x+16x^2-12x^3))` (program `A066810.P10107864647593630781`, by `A066810.P10107864647593630781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066810.P10107864647593630781

`ogf(x^2/(1-7x+16x^2-12x^3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066810

/-- `ogf(x^2/(1-7x+16x^2-12x^3))` -/
def P10107864647593630781.Spec : Prop :=
  ∀ n, P10107864647593630781.a n = A066810 n

theorem P10107864647593630781.correct : P10107864647593630781.Spec := by
  intro n
  simp only [A066810]

end A066810

/-! ## A066810.P9867124349195660700

`3^n-2^n-n*2^(n-1)`
-/

namespace A066810.P9867124349195660700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) - (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A066810.P9867124349195660700

namespace A066810

/-- `3^n-2^n-n*2^(n-1)` -/
def P9867124349195660700.Spec : Prop :=
  ∀ n, P9867124349195660700.a n = (A066810 n : ℚ)

end A066810

/-! ## A066810.P7771700614431068410

`abs(3^n-A001792(n))`
-/

namespace A066810.P7771700614431068410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A001792 n|

end

end A066810.P7771700614431068410

namespace A066810

/-- `abs(3^n-A001792(n))` -/
def P7771700614431068410.Spec : Prop :=
  ∀ n, P7771700614431068410.a n = A066810 n

end A066810

/-! ## A066810.P1257775306332936870

`abs(3^n-A211164(Δ[n²]))`
-/

namespace A066810.P1257775306332936870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A211164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A066810.P1257775306332936870

namespace A066810

/-- `abs(3^n-A211164(Δ[n²]))` -/
def P1257775306332936870.Spec : Prop :=
  ∀ n, P1257775306332936870.a n = A066810 n

end A066810

/-! ## A066810.P443757641215246142

`abs(3^n-2^n-A001787(n))`
-/

namespace A066810.P443757641215246142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - (2 ^ n : ℤ) - A001787 n|

end

end A066810.P443757641215246142

namespace A066810

/-- `abs(3^n-2^n-A001787(n))` -/
def P443757641215246142.Spec : Prop :=
  ∀ n, P443757641215246142.a n = A066810 n

end A066810

/-! ## A066810.P7891642399154162316

`ceil(A000244(n)-2^(n-1)/tan(acot(n+2)))`
-/

namespace A066810.P7891642399154162316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000244 n : ℝ) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (n + 2 : ℝ))⌉

end

end A066810.P7891642399154162316

namespace A066810

/-- `ceil(A000244(n)-2^(n-1)/tan(acot(n+2)))` -/
def P7891642399154162316.Spec : Prop :=
  ∀ n, P7891642399154162316.a n = A066810 n

end A066810

/-! ## A066810.P3330616737844681972

`∑[A025192(n)-A045623(n)]`
-/

namespace A066810.P3330616737844681972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066810.P3330616737844681972

namespace A066810

/-- `∑[A025192(n)-A045623(n)]` -/
def P3330616737844681972.Spec : Prop :=
  ∀ n, P3330616737844681972.a n = A066810 n

end A066810

/-! ## A066810.P6330399819847318198

`Δ[A003462(n)-A001787(n)]`
-/

namespace A066810.P6330399819847318198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066810.P6330399819847318198

namespace A066810

/-- `Δ[A003462(n)-A001787(n)]` -/
def P6330399819847318198.Spec : Prop :=
  ∀ n, P6330399819847318198.a n = A066810 n

end A066810

/-! ## A066810.P7787079686662514607

`Δ[A007051(n)-A001787(n)]`
-/

namespace A066810.P7787079686662514607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066810.P7787079686662514607

namespace A066810

/-- `Δ[A007051(n)-A001787(n)]` -/
def P7787079686662514607.Spec : Prop :=
  ∀ n, P7787079686662514607.a n = A066810 n

end A066810

/-! ## A066810.P3830031714478902710

`(A000244(n)-A001792(n))%A254362(n)`
-/

namespace A066810.P3830031714478902710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n - A001792 n) (A254362 n)

end

end A066810.P3830031714478902710

namespace A066810

/-- `(A000244(n)-A001792(n))%A254362(n)` -/
def P3830031714478902710.Spec : Prop :=
  ∀ n, P3830031714478902710.a n = A066810 n

end A066810

/-! ## A066810.P10555246981003877114

`A376585(n)%A084869(n)`
-/

namespace A066810.P10555246981003877114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376585 n) (A084869 n)

end

end A066810.P10555246981003877114

namespace A066810

/-- `A376585(n)%A084869(n)` -/
def P10555246981003877114.Spec : Prop :=
  ∀ n, P10555246981003877114.a n = A066810 n

end A066810

/-!
# A066811: Numbers k such that the concatenation of odd numbers from 1 to k is a prime.

The programs for A066811, there is no canonical definition to state claims against.
-/

/-! ## A066811.P14327545340315235036

`2*A046036(n+1)-1`
-/

namespace A066811.P14327545340315235036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046036 (n + 1) - 1

end

end A066811.P14327545340315235036

/-!
# A066812: Numbers k such that phi(k+1) = phi(k-1).

The programs for A066812, there is no canonical definition to state claims against.
-/

/-! ## A066812.P9302877005472545048

`A001494(n+1)+1`
-/

namespace A066812.P9302877005472545048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001494 (n + 1) + 1

end

end A066812.P9302877005472545048

/-! ## A066812.P4474084876130314070

`record[A273943(A179186(n+1))+1]`
-/

namespace A066812.P4474084876130314070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A179186 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066812.P4474084876130314070

/-! ## A066812.P16866010571858449478

`record[A305897(A179186(n+1))]`
-/

namespace A066812.P16866010571858449478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A179186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066812.P16866010571858449478

/-! ## A066812.P2404153336987993376

`eq[A000010(n+1), A000010(n+3)]+2`
-/

namespace A066812.P2404153336987993376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066812.P2404153336987993376

/-! ## A066812.P8452056150471640318

`record[A318518(A179186(n+1)+2)]`
-/

namespace A066812.P8452056150471640318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A179186 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066812.P8452056150471640318

/-! ## A066812.P12380567430845216087

`A020725(A001494(n+1))`
-/

namespace A066812.P12380567430845216087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A001494 (n + 1)).toNat

end

end A066812.P12380567430845216087

/-! ## A066812.P1598396510696108303

`record[A325563(A179186(n+1)+2)]`
-/

namespace A066812.P1598396510696108303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A179186 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066812.P1598396510696108303

/-!
# A066813: a(n) = lcm(phi(n), phi(n+1)).

The programs for A066813, the canonical program `A066813.P13109803990709663601` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066813 has offset 1).

The definition of A066813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A000010(n+1), A000010(n+2))` (program `A066813.P13109803990709663601`, by `A066813.P13109803990709663601.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066813.P7006376518967832927

`A083542(n+1)/A058515(n+1)`
-/

namespace A066813.P7006376518967832927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083542 (n + 1) : ℚ) / (A058515 (n + 1) : ℚ)

end

end A066813.P7006376518967832927

namespace A066813

/-- `A083542(n+1)/A058515(n+1)` -/
def P7006376518967832927.Spec : Prop :=
  ∀ n, P7006376518967832927.a n = (A066813 (n + 1) : ℚ)

end A066813

/-! ## A066813.P13109803990709663601

`lcm(A000010(n+1), A000010(n+2))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A066813

/-- `lcm(A000010(n+1), A000010(n+2))` -/
def P13109803990709663601.Spec : Prop :=
  ∀ n, (P13109803990709663601.a n : ℤ) = A066813 (n + 1)

theorem P13109803990709663601.correct : P13109803990709663601.Spec := by
  intro n
  simp only [A066813, Nat.add_sub_cancel]

end A066813

/-! ## A066813.P15946866973234656462

`lcm(Δ[A005728(n)], A000010(n+2))`
-/

namespace A066813.P15946866973234656462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000010 (n + 2))

end

end A066813.P15946866973234656462

namespace A066813

/-- `lcm(Δ[A005728(n)], A000010(n+2))` -/
def P15946866973234656462.Spec : Prop :=
  ∀ n, (P15946866973234656462.a n : ℤ) = A066813 (n + 1)

end A066813

/-! ## A066813.P4644553390110753123

`lcm(A109606(n+1)+1, Δ[A002088(n+1)])`
-/

namespace A066813.P4644553390110753123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109606 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A066813.P4644553390110753123

namespace A066813

/-- `lcm(A109606(n+1)+1, Δ[A002088(n+1)])` -/
def P4644553390110753123.Spec : Prop :=
  ∀ n, (P4644553390110753123.a n : ℤ) = A066813 (n + 1)

end A066813

/-! ## A066813.P14068197864750501851

`A000010(n+1)/A058515(n+1)*A000010(n+2)`
-/

namespace A066813.P14068197864750501851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A058515 (n + 1) : ℚ) * (A000010 (n + 2) : ℚ)

end

end A066813.P14068197864750501851

namespace A066813

/-- `A000010(n+1)/A058515(n+1)*A000010(n+2)` -/
def P14068197864750501851.Spec : Prop :=
  ∀ n, P14068197864750501851.a n = (A066813 (n + 1) : ℚ)

end A066813

/-! ## A066813.P12912469056393311813

`sqrt(lcm(A127473(n+1), A127473(n+2)))`
-/

namespace A066813.P12912469056393311813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (A127473 (n + 1)) (A127473 (n + 2)) : ℝ)

end

end A066813.P12912469056393311813

namespace A066813

/-- `sqrt(lcm(A127473(n+1), A127473(n+2)))` -/
def P12912469056393311813.Spec : Prop :=
  ∀ n, P12912469056393311813.a n = (A066813 (n + 1) : ℝ)

end A066813

/-! ## A066813.P9915909556917125451

`lcm(n-A219428(n+1), Δ[A049643(n+1)])`
-/

namespace A066813.P9915909556917125451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A219428 (n + 1)) (f1 (n + 1) - f1 n)

end

end A066813.P9915909556917125451

namespace A066813

/-- `lcm(n-A219428(n+1), Δ[A049643(n+1)])` -/
def P9915909556917125451.Spec : Prop :=
  ∀ n, (P9915909556917125451.a n : ℤ) = A066813 (n + 1)

end A066813

/-!
# A066814: Smallest prime p such that (p-1) has n divisors, or 0 if no such prime exists.

The programs for A066814, there is no canonical definition to state claims against.
-/

/-! ## A066814.P16457335966165643590

`A093438(A037019(n+1)%A273407(n))`
-/

namespace A066814.P16457335966165643590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093438 (Int.tmod (A037019 (n + 1)) (A273407 n)).toNat

end

end A066814.P16457335966165643590

/-! ## A066814.P14309601444311697168

`A093438(A037019(n+1))`
-/

namespace A066814.P14309601444311697168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093438 (A037019 (n + 1)).toNat

end

end A066814.P14309601444311697168

/-!
# A066815: Number of partitions of n into sums of products.

The programs for A066815, there is no canonical definition to state claims against.
-/

/-! ## A066815.P15595639028776982963

`A285333(A332639(n))+A033677(A321360(n)²)`
-/

namespace A066815.P15595639028776982963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A332639 n).toNat + A033677 (A321360 n ^ 2).toNat

end

end A066815.P15595639028776982963

/-! ## A066815.P16931299566806264027

`A229300(A004101(n))`
-/

namespace A066815.P16931299566806264027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A004101 n).toNat

end

end A066815.P16931299566806264027

/-! ## A066815.P13496726946667266348

`A326530(n+3)+A225859(A195308(n+2))`
-/

namespace A066815.P13496726946667266348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326530 (n + 3) + A225859 (A195308 (n + 2)).toNat

end

end A066815.P13496726946667266348

/-! ## A066815.P16927127793942706036

`A263028(A182269(n))%A343154(3*n+1)`
-/

namespace A066815.P16927127793942706036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263028 (A182269 n).toNat) (A343154 (3 * n + 1))

end

end A066815.P16927127793942706036

/-! ## A066815.P6420456152339962365

`A050322(A331049(n+1))+A002024(A088305(n))-A000016(n)`
-/

namespace A066815.P6420456152339962365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A331049 (n + 1)).toNat + (A002024 (A088305 n).toNat - A000016 n)

end

end A066815.P6420456152339962365

/-!
# A066816: Expansion of Product_{k>=1} (1 + A001055(k)*x^k).

The programs for A066816, there is no canonical definition to state claims against.
-/

/-! ## A066816.P17423603155765835950

`A128559(A027336(n)+1)+A005843(A064459(n))`
-/

namespace A066816.P17423603155765835950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A027336 n + 1).toNat + A005843 (A064459 n).toNat

end

end A066816.P17423603155765835950

/-! ## A066816.P13941840607226023663

`A280399(A027926(n))+A128559(A027336(n)+1)`
-/

namespace A066816.P13941840607226023663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280399 (A027926 n).toNat + A128559 (A027336 n + 1).toNat

end

end A066816.P13941840607226023663

/-! ## A066816.P4422451080813798204

`xor(A211856(n), A336551(A078679(n)))`
-/

namespace A066816.P4422451080813798204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A211856 n) (A336551 (A078679 n).toNat)

end

end A066816.P4422451080813798204

/-! ## A066816.P3286587808677871844

`A111660(A238494(n+1)+A124094(n))`
-/

namespace A066816.P3286587808677871844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A238494 (n + 1) + A124094 n).toNat

end

end A066816.P3286587808677871844

/-! ## A066816.P8516874833539961271

`A211856(n)+A057918(A215982(n+3))`
-/

namespace A066816.P8516874833539961271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211856 n + A057918 (A215982 (n + 3)).toNat

end

end A066816.P8516874833539961271

/-!
# A066818: a(n) is the least k such that n + Sum_{i=1..k} A005384(i) is prime; or 0 if none exists.

The programs for A066818, there is no canonical definition to state claims against.
-/

/-! ## A066818.P9272280695618036655

`gcd(A121844(n+2), A158289(34*n²))`
-/

namespace A066818.P9272280695618036655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121844 (n + 2)) (A158289 (34 * n ^ 2))

end

end A066818.P9272280695618036655

/-! ## A066818.P5428861306995024412

`gcd(A064446(n+3), A139081(A000793(2*n+3)))`
-/

namespace A066818.P5428861306995024412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064446 (n + 3)) (A139081 (A000793 (2 * n + 3)).toNat)

end

end A066818.P5428861306995024412

/-! ## A066818.P18130781201762615110

`gcd(∑[A176589(3*n+2)], A176562(n+2))`
-/

namespace A066818.P18130781201762615110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176589 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A176562 (n + 2))

end

end A066818.P18130781201762615110

/-! ## A066818.P4258685445993235496

`gcd(A086167(n+1), A347820(A008706(n)))`
-/

namespace A066818.P4258685445993235496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086167 (n + 1)) (A347820 (A008706 n).toNat)

end

end A066818.P4258685445993235496

/-! ## A066818.P1868189688181285547

`A056539(gcd(A023457(n), A037100(n+1)))`
-/

namespace A066818.P1868189688181285547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.gcd (A023457 n) (A037100 (n + 1)))

end

end A066818.P1868189688181285547

/-!
# A066819: Sum of the first n Sophie Germain primes.

The programs for A066819, the canonical program `A066819.P7416250439416697940` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066819 has offset 1).

The definition of A066819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066819.P7416250439416697940

`∑[A005384(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A066819

/-- `∑[A005384(n+1)]` -/
def P7416250439416697940.Spec : Prop :=
  ∀ n, P7416250439416697940.a n = A066819 (n + 1)

theorem P7416250439416697940.correct : P7416250439416697940.Spec := by
  intro n
  simp only [A066819, Nat.add_sub_cancel]

end A066819

/-! ## A066819.P18142304334312051046

`∑[A176045(n+1)-1]`
-/

namespace A066819.P18142304334312051046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P18142304334312051046

namespace A066819

/-- `∑[A176045(n+1)-1]` -/
def P18142304334312051046.Spec : Prop :=
  ∀ n, P18142304334312051046.a n = A066819 (n + 1)

theorem P18142304334312051046.correct : P18142304334312051046.Spec := by
  intro n
  simp only [A066819, Nat.add_sub_cancel, A066819.P18142304334312051046.f1, A066819.P18142304334312051046.a, A066819.P7416250439416697940.f1, A066819.P7416250439416697940.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066819

/-! ## A066819.P3777242414965180981

`∑[A077065(n+1)/2]`
-/

namespace A066819.P3777242414965180981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077065 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P3777242414965180981

namespace A066819

/-- `∑[A077065(n+1)/2]` -/
def P3777242414965180981.Spec : Prop :=
  ∀ n, P3777242414965180981.a n = (A066819 (n + 1) : ℚ)

theorem P3777242414965180981.correct : P3777242414965180981.Spec := by
  intro n
  simp only [A066819, Nat.add_sub_cancel, A066819.P3777242414965180981.f1, A066819.P3777242414965180981.a, A066819.P7416250439416697940.f1, A066819.P7416250439416697940.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066819

/-! ## A066819.P8841303419702763387

`∑[floor(A005385(n+1)/2)]`
-/

namespace A066819.P8841303419702763387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005385 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P8841303419702763387

namespace A066819

/-- `∑[floor(A005385(n+1)/2)]` -/
def P8841303419702763387.Spec : Prop :=
  ∀ n, P8841303419702763387.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P1327661629827274855

`∑[floor(A175666(n+1)/3)]`
-/

namespace A066819.P1327661629827274855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175666 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P1327661629827274855

namespace A066819

/-- `∑[floor(A175666(n+1)/3)]` -/
def P1327661629827274855.Spec : Prop :=
  ∀ n, P1327661629827274855.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P858484269071375944

`∑[A074259(n)+a(n-1)]` with `a(0)=2`
-/

namespace A066819.P858484269071375944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A074259 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P858484269071375944

namespace A066819

/-- `∑[A074259(n)+a(n-1)]` -/
def P858484269071375944.Spec : Prop :=
  ∀ n, P858484269071375944.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P18276529160523968091

`(A066869(n+1)-(n+1))/2`
-/

namespace A066819.P18276529160523968091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066869 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A066819.P18276529160523968091

namespace A066819

/-- `(A066869(n+1)-(n+1))/2` -/
def P18276529160523968091.Spec : Prop :=
  ∀ n, P18276529160523968091.a n = (A066819 (n + 1) : ℚ)

end A066819

/-! ## A066819.P7682255052548696932

`∑[A175666(n+1)-A005385(n+1)]`
-/

namespace A066819.P7682255052548696932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 1) - A005385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P7682255052548696932

namespace A066819

/-- `∑[A175666(n+1)-A005385(n+1)]` -/
def P7682255052548696932.Spec : Prop :=
  ∀ n, P7682255052548696932.a n = A066819 (n + 1)

theorem P7682255052548696932.correct : P7682255052548696932.Spec := by
  intro n
  simp only [A066819, Nat.add_sub_cancel, A066819.P7682255052548696932.f1, A066819.P7682255052548696932.a, A066819.P7416250439416697940.f1, A066819.P7416250439416697940.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A175666, A175666.P11802829545752177848.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066819

/-! ## A066819.P16219368244969408593

`∑[A156592(n+1)/A005385(n+1)]`
-/

namespace A066819.P16219368244969408593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156592 (n + 1) : ℚ) / (A005385 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P16219368244969408593

namespace A066819

/-- `∑[A156592(n+1)/A005385(n+1)]` -/
def P16219368244969408593.Spec : Prop :=
  ∀ n, P16219368244969408593.a n = (A066819 (n + 1) : ℚ)

end A066819

/-! ## A066819.P18144512941012206576

`∑[p?[A246857(n+1)]]`
-/

namespace A066819.P18144512941012206576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P18144512941012206576

namespace A066819

/-- `∑[p?[A246857(n+1)]]` -/
def P18144512941012206576.Spec : Prop :=
  ∀ n, P18144512941012206576.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P18300721093677113292

`∑[p?[A348511(n+1)]]`
-/

namespace A066819.P18300721093677113292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P18300721093677113292

namespace A066819

/-- `∑[p?[A348511(n+1)]]` -/
def P18300721093677113292.Spec : Prop :=
  ∀ n, P18300721093677113292.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P13780669526378147239

`∑[record[A112037(n+2)]]`
-/

namespace A066819.P13780669526378147239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112037 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P13780669526378147239

namespace A066819

/-- `∑[record[A112037(n+2)]]` -/
def P13780669526378147239.Spec : Prop :=
  ∀ n, P13780669526378147239.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P10493692869897619833

`∑[p?[A259973(n+1)]]`
-/

namespace A066819.P10493692869897619833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P10493692869897619833

namespace A066819

/-- `∑[p?[A259973(n+1)]]` -/
def P10493692869897619833.Spec : Prop :=
  ∀ n, P10493692869897619833.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P13086414123629440843

`∑[p?[A078762(n+1)]]`
-/

namespace A066819.P13086414123629440843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P13086414123629440843

namespace A066819

/-- `∑[p?[A078762(n+1)]]` -/
def P13086414123629440843.Spec : Prop :=
  ∀ n, P13086414123629440843.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P4656755413861394114

`∑[p?[A054639(n+1)]]`
-/

namespace A066819.P4656755413861394114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P4656755413861394114

namespace A066819

/-- `∑[p?[A054639(n+1)]]` -/
def P4656755413861394114.Spec : Prop :=
  ∀ n, P4656755413861394114.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P3285444941586838072

`∑[p?[A014109(n+1)]]`
-/

namespace A066819.P3285444941586838072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P3285444941586838072

namespace A066819

/-- `∑[p?[A014109(n+1)]]` -/
def P3285444941586838072.Spec : Prop :=
  ∀ n, P3285444941586838072.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P688663980457217639

`∑[p?[A156541(n+1)]]`
-/

namespace A066819.P688663980457217639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P688663980457217639

namespace A066819

/-- `∑[p?[A156541(n+1)]]` -/
def P688663980457217639.Spec : Prop :=
  ∀ n, P688663980457217639.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P6539752522265230829

`∑[p?[A074821(n+1)]]`
-/

namespace A066819.P6539752522265230829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P6539752522265230829

namespace A066819

/-- `∑[p?[A074821(n+1)]]` -/
def P6539752522265230829.Spec : Prop :=
  ∀ n, P6539752522265230829.a n = A066819 (n + 1)

end A066819

/-! ## A066819.P9749165226838185623

`∑[p?[A117360(n+1)]]`
-/

namespace A066819.P9749165226838185623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066819.P9749165226838185623

namespace A066819

/-- `∑[p?[A117360(n+1)]]` -/
def P9749165226838185623.Spec : Prop :=
  ∀ n, P9749165226838185623.a n = A066819 (n + 1)

end A066819

/-!
# A066821: Numbers k such that phi(k^2-1)/(k-1) is an integer.

The programs for A066821, there is no canonical definition to state claims against.
-/

/-! ## A066821.P2258635583050546234

`record[(4*n+2)/A347050(3*(n+1))]`
-/

namespace A066821.P2258635583050546234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (A347050 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066821.P2258635583050546234

/-! ## A066821.P4364326556732078472

`∑[A335616(A001519(n))]+1`
-/

namespace A066821.P4364326556732078472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (A001519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066821.P4364326556732078472

/-! ## A066821.P13739846330830947155

`∑[A322483(A126358(abs(1-n)))]`
-/

namespace A066821.P13739846330830947155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A126358 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066821.P13739846330830947155

/-! ## A066821.P13532214972887605330

`∑[A348001(Δ[A302422(n+1)])]`
-/

namespace A066821.P13532214972887605330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302422 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348001 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066821.P13532214972887605330

/-! ## A066821.P12924523707344277645

`eq[A092248(n+1), A177886(n+1)]`
-/

namespace A066821.P12924523707344277645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066821.P12924523707344277645

/-!
# A066822: The fourth column of A038622, triangular array that counts rooted polyominoes.

The programs for A066822, the canonical program `A066822.P225537740992169790` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066822 has offset 0).

The definition of A066822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066822.P225537740992169790

`record[A005773(n)-A002026(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066822

/-- `record[A005773(n)-A002026(n)]` -/
def P225537740992169790.Spec : Prop :=
  ∀ n, P225537740992169790.a n = A066822 n

theorem P225537740992169790.correct : P225537740992169790.Spec := by
  intro n
  simp only [A066822]

end A066822

/-! ## A066822.P3252351061489144268

`A014532(n+1)+A025181(n+4)-A014531(n+2)`
-/

namespace A066822.P3252351061489144268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014532 (n + 1) + (A025181 (n + 4) - A014531 (n + 2))

end

end A066822.P3252351061489144268

namespace A066822

/-- `A014532(n+1)+A025181(n+4)-A014531(n+2)` -/
def P3252351061489144268.Spec : Prop :=
  ∀ n, P3252351061489144268.a n = A066822 n

end A066822

/-! ## A066822.P16977911392557708030

`A014532(n+2)-A014531(n+2)`
-/

namespace A066822.P16977911392557708030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014532 (n + 2) - A014531 (n + 2)

end

end A066822.P16977911392557708030

namespace A066822

/-- `A014532(n+2)-A014531(n+2)` -/
def P16977911392557708030.Spec : Prop :=
  ∀ n, P16977911392557708030.a n = A066822 n

end A066822

/-! ## A066822.P7182609373366154838

`A014532(n+1)+A014533(n+1)-A025182(n+4)`
-/

namespace A066822.P7182609373366154838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014532 (n + 1) + (A014533 (n + 1) - A025182 (n + 4))

end

end A066822.P7182609373366154838

namespace A066822

/-- `A014532(n+1)+A014533(n+1)-A025182(n+4)` -/
def P7182609373366154838.Spec : Prop :=
  ∀ n, P7182609373366154838.a n = A066822 n

end A066822

/-! ## A066822.P3554253161683655857

`A038622(∑[n+3]+6)`
-/

namespace A066822.P3554253161683655857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A066822.P3554253161683655857

namespace A066822

/-- `A038622(∑[n+3]+6)` -/
def P3554253161683655857.Spec : Prop :=
  ∀ n, P3554253161683655857.a n = A066822 n

end A066822

/-! ## A066822.P11003160904676441716

`A038622(A166136(n+2)-3)^A178334(n)`
-/

namespace A066822.P11003160904676441716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038622 (A166136 (n + 2) - 3).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A066822.P11003160904676441716

namespace A066822

/-- `A038622(A166136(n+2)-3)^A178334(n)` -/
def P11003160904676441716.Spec : Prop :=
  ∀ n, P11003160904676441716.a n = (A066822 n : ℚ)

end A066822

/-!
# A066824: Sum of the reciprocals of the partitions of n enumerated in A058360.

The programs for A066824, there is no canonical definition to state claims against.
-/

/-! ## A066824.P7119274640951986439

`A121900(5*A294365(n))`
-/

namespace A066824.P7119274640951986439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (5 * A294365 n).toNat

end

end A066824.P7119274640951986439

/-! ## A066824.P3224151422234982872

`A145813(A145813(n+5))+1+n`
-/

namespace A066824.P3224151422234982872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145813 (A145813 (n + 5)).toNat + 1 + (n : ℤ)

end

end A066824.P3224151422234982872

/-! ## A066824.P15244307011102054811

`∑[A000120(ceil(A015898(n+1)/2))]`
-/

namespace A066824.P15244307011102054811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌈(A015898 (n + 1) : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066824.P15244307011102054811

/-! ## A066824.P11778674524922128833

`A073137(n)+A056556(A093128(n))`
-/

namespace A066824.P11778674524922128833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n + A056556 (A093128 n).toNat

end

end A066824.P11778674524922128833

/-! ## A066824.P11746381160008398458

`A319951(A000045(n))+A258376(n+1)`
-/

namespace A066824.P11746381160008398458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A000045 n).toNat + A258376 (n + 1)

end

end A066824.P11746381160008398458

/-!
# A066826: Numbers k that divide the average of prime(k-1) and prime(k).

The programs for A066826, there is no canonical definition to state claims against.
-/

/-! ## A066826.P15184515689330133031

`filter[A225939(n+2), A296077(#)]`
-/

namespace A066826.P15184515689330133031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225939 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296077 (f1 j).toNat = 1) n)

end

end A066826.P15184515689330133031

/-! ## A066826.P3138544289352829815

`filter[A225939(n+1), A257680(#)]`
-/

namespace A066826.P3138544289352829815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A066826.P3138544289352829815

/-! ## A066826.P10078654013554290506

`A225939(A273975(3*n+5)+A028429(n+1))`
-/

namespace A066826.P10078654013554290506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225939 (A273975 (3 * n + 5) + A028429 (n + 1)).toNat

end

end A066826.P10078654013554290506

/-!
# A066827: a(n) = gcd(2^((n*(n+1)/2)) + 1, 2^n + 1).

The programs for A066827, the canonical program `A066827.P7370217274580639833` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066827 has offset 1).

The definition of A066827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2^((n+1)*(n+2)/2)+1, 2^(n+1)+1)` (program `A066827.P7370217274580639833`, by `A066827.P7370217274580639833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066827.P707976576246797167

`ogf((3-2x-16x^4)/(1-x-16x^4+16x^5))`
-/

namespace A066827.P707976576246797167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 0, 0, -16] [1, -1, 0, 0, -16, 16] n

end

end A066827.P707976576246797167

namespace A066827

/-- `ogf((3-2x-16x^4)/(1-x-16x^4+16x^5))` -/
def P707976576246797167.Spec : Prop :=
  ∀ n, P707976576246797167.a n = A066827 (n + 1)

end A066827

/-! ## A066827.P7370217274580639833

`gcd(2^((n+1)*(n+2)/2)+1, 2^(n+1)+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066827

/-- `gcd(2^((n+1)*(n+2)/2)+1, 2^(n+1)+1)` -/
def P7370217274580639833.Spec : Prop :=
  ∀ n, (P7370217274580639833.a n : ℤ) = A066827 (n + 1)

theorem P7370217274580639833.correct : P7370217274580639833.Spec := by
  intro n
  simp only [A066827, Nat.add_sub_cancel]

end A066827

/-! ## A066827.P5843057182366451309

`(2%gcd(4, n))^(n+1)+1`
-/

namespace A066827.P5843057182366451309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 % Nat.gcd 4 n) ^ (n + 1) + 1

end

end A066827.P5843057182366451309

namespace A066827

/-- `(2%gcd(4, n))^(n+1)+1` -/
def P5843057182366451309.Spec : Prop :=
  ∀ n, (P5843057182366451309.a n : ℤ) = A066827 (n + 1)

end A066827

/-! ## A066827.P3074128986727311495

`(1-(-1)^∑[∑[n+1]])^(n+1)+1`
-/

namespace A066827.P3074128986727311495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) ^ (n + 1) + 1

end

end A066827.P3074128986727311495

namespace A066827

/-- `(1-(-1)^∑[∑[n+1]])^(n+1)+1` -/
def P3074128986727311495.Spec : Prop :=
  ∀ n, P3074128986727311495.a n = A066827 (n + 1)

end A066827

/-! ## A066827.P15883599034315619318

`or(1, A177704(n+3)^(n+1))`
-/

namespace A066827.P15883599034315619318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A177704 (n + 3) ^ (n + 1))

end

end A066827.P15883599034315619318

namespace A066827

/-- `or(1, A177704(n+3)^(n+1))` -/
def P15883599034315619318.Spec : Prop :=
  ∀ n, P15883599034315619318.a n = A066827 (n + 1)

end A066827

/-! ## A066827.P4905972413897384404

`A052552(A047487(n+1))`
-/

namespace A066827.P4905972413897384404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (A047487 (n + 1)).toNat

end

end A066827.P4905972413897384404

namespace A066827

/-- `A052552(A047487(n+1))` -/
def P4905972413897384404.Spec : Prop :=
  ∀ n, P4905972413897384404.a n = A066827 (n + 1)

end A066827

/-! ## A066827.P14832293722699072679

`A052552(A047482(n+2))`
-/

namespace A066827.P14832293722699072679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (A047482 (n + 2)).toNat

end

end A066827.P14832293722699072679

namespace A066827

/-- `A052552(A047482(n+2))` -/
def P14832293722699072679.Spec : Prop :=
  ∀ n, P14832293722699072679.a n = A066827 (n + 1)

end A066827

/-! ## A066827.P18147547563058140882

`A052552(A047533(n+2))`
-/

namespace A066827.P18147547563058140882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (A047533 (n + 2)).toNat

end

end A066827.P18147547563058140882

namespace A066827

/-- `A052552(A047533(n+2))` -/
def P18147547563058140882.Spec : Prop :=
  ∀ n, P18147547563058140882.a n = A066827 (n + 1)

end A066827

/-! ## A066827.P9253823907379924878

`A052552(A047606(n+2))`
-/

namespace A066827.P9253823907379924878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (A047606 (n + 2)).toNat

end

end A066827.P9253823907379924878

namespace A066827

/-- `A052552(A047606(n+2))` -/
def P9253823907379924878.Spec : Prop :=
  ∀ n, P9253823907379924878.a n = A066827 (n + 1)

end A066827

/-! ## A066827.P13706534931456762706

`and(A263806(n)+2, A263806(A291326(n+2)))`
-/

namespace A066827.P13706534931456762706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263806 n + 2) (A263806 (A291326 (n + 2)).toNat)

end

end A066827.P13706534931456762706

namespace A066827

/-- `and(A263806(n)+2, A263806(A291326(n+2)))` -/
def P13706534931456762706.Spec : Prop :=
  ∀ n, P13706534931456762706.a n = A066827 (n + 1)

end A066827

/-! ## A066827.P15012355705982549633

`A376102(A269403(n+1))`
-/

namespace A066827.P15012355705982549633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376102 (A269403 (n + 1)).toNat

end

end A066827.P15012355705982549633

namespace A066827

/-- `A376102(A269403(n+1))` -/
def P15012355705982549633.Spec : Prop :=
  ∀ n, P15012355705982549633.a n = A066827 (n + 1)

end A066827

/-!
# A066828: Numbers k that divide the average of prime(k-1) and prime(k+1).

The programs for A066828, there is no canonical definition to state claims against.
-/

/-! ## A066828.P7521386547173043851

`A260989(A396008(n+1))`
-/

namespace A066828.P7521386547173043851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260989 (A396008 (n + 1)).toNat

end

end A066828.P7521386547173043851

/-!
# A066829: Parity of Omega(n): a(n) = 1 if n is the product of an odd number of primes; 0 if product of even number of primes.

The programs for A066829, the canonical program `A066829.P3721516859256189271` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066829 has offset 1).

The definition of A066829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066829.P3721516859256189271

`1-A065043(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A066829

/-- `1-A065043(n+1)` -/
def P3721516859256189271.Spec : Prop :=
  ∀ n, P3721516859256189271.a n = A066829 (n + 1)

theorem P3721516859256189271.correct : P3721516859256189271.Spec := by
  intro n
  simp only [A066829, Nat.add_sub_cancel]

end A066829

/-! ## A066829.P8352109081246227239

`A001222(n+1)%2`
-/

namespace A066829.P8352109081246227239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1)) 2

end

end A066829.P8352109081246227239

namespace A066829

/-- `A001222(n+1)%2` -/
def P8352109081246227239.Spec : Prop :=
  ∀ n, P8352109081246227239.a n = A066829 (n + 1)

theorem P8352109081246227239.correct : P8352109081246227239.Spec := by
  intro n
  simp only [A066829, Nat.add_sub_cancel, A066829.P8352109081246227239.a, A066829.P3721516859256189271.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A065043, A065043.P15027714353296076488.a, A007421, A007421.P6096517627125049268.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066829

/-! ## A066829.P17089878353190518791

`A349905(n+1)%2`
-/

namespace A066829.P17089878353190518791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349905 (n + 1)) 2

end

end A066829.P17089878353190518791

namespace A066829

/-- `A349905(n+1)%2` -/
def P17089878353190518791.Spec : Prop :=
  ∀ n, P17089878353190518791.a n = A066829 (n + 1)

end A066829

/-! ## A066829.P3136932526789453344

`(1-A008836(n+1))/2`
-/

namespace A066829.P3136932526789453344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A008836 (n + 1) : ℚ) / 2

end

end A066829.P3136932526789453344

namespace A066829

/-- `(1-A008836(n+1))/2` -/
def P3136932526789453344.Spec : Prop :=
  ∀ n, P3136932526789453344.a n = (A066829 (n + 1) : ℚ)

end A066829

/-! ## A066829.P870012082552300317

`A000035(A001222(n+1))`
-/

namespace A066829.P870012082552300317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001222 (n + 1)).toNat

end

end A066829.P870012082552300317

namespace A066829

/-- `A000035(A001222(n+1))` -/
def P870012082552300317.Spec : Prop :=
  ∀ n, P870012082552300317.a n = A066829 (n + 1)

end A066829

/-! ## A066829.P15027236917098881938

`A353556(n+1)+A353558(n+1)`
-/

namespace A066829.P15027236917098881938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (n + 1) + A353558 (n + 1)

end

end A066829.P15027236917098881938

namespace A066829

/-- `A353556(n+1)+A353558(n+1)` -/
def P15027236917098881938.Spec : Prop :=
  ∀ n, P15027236917098881938.a n = A066829 (n + 1)

theorem P15027236917098881938.correct : P15027236917098881938.Spec := by
  intro n
  simp only [A066829, Nat.add_sub_cancel, A066829.P15027236917098881938.a, A066829.P3721516859256189271.a, A065043, A065043.P15027714353296076488.a, A353556, A353556.P11551021480269532198.a, A353558, A353558.P5510355116585189927.a, A000035, A000035.P2023072528413494694.a, A007421, A007421.P6096517627125049268.a, A353557, A353557.P3482545693705023104.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A059841, A059841.P7264174615531153985.a, A095112, A095112.P8729457893508808626.f1, A095112.P8729457893508808626.a, A000010, A000010.P4673923239450215316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066829

/-! ## A066829.P14517312402562958716

`A358751(n+1)+A358753(n+1)`
-/

namespace A066829.P14517312402562958716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358751 (n + 1) + A358753 (n + 1)

end

end A066829.P14517312402562958716

namespace A066829

/-- `A358751(n+1)+A358753(n+1)` -/
def P14517312402562958716.Spec : Prop :=
  ∀ n, P14517312402562958716.a n = A066829 (n + 1)

theorem P14517312402562958716.correct : P14517312402562958716.Spec := by
  intro n
  simp only [A066829, Nat.add_sub_cancel, A066829.P14517312402562958716.a, A066829.P3721516859256189271.a, A065043, A065043.P15027714353296076488.a, A358751, A358751.P1149310267110724188.a, A358753, A358753.P12282633013976382741.a, A003961, A003961.P5996473960037614004.a, A007421, A007421.P6096517627125049268.a, A358771, A358771.P5761548446586358589.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A129283, A129283.P3962818557550655141.a, A253885, A253885.P16715555451856890624.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A243501, A243501.P10707292738867961998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066829

/-! ## A066829.P17119880718978183798

`∑{e}[n+1, #]%2`
-/

namespace A066829.P17119880718978183798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A066829.P17119880718978183798

namespace A066829

/-- `∑{e}[n+1, #]%2` -/
def P17119880718978183798.Spec : Prop :=
  ∀ n, (P17119880718978183798.a n : ℤ) = A066829 (n + 1)

end A066829

/-! ## A066829.P12322200673471582522

`and(1, ∑{e}[n+1, #])`
-/

namespace A066829.P12322200673471582522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A066829.P12322200673471582522

namespace A066829

/-- `and(1, ∑{e}[n+1, #])` -/
def P12322200673471582522.Spec : Prop :=
  ∀ n, (P12322200673471582522.a n : ℤ) = A066829 (n + 1)

end A066829

/-! ## A066829.P13126765160696255380

`2-gcd(2, ∑{e}[n+1, #])`
-/

namespace A066829.P13126765160696255380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)

end

end A066829.P13126765160696255380

namespace A066829

/-- `2-gcd(2, ∑{e}[n+1, #])` -/
def P13126765160696255380.Spec : Prop :=
  ∀ n, P13126765160696255380.a n = A066829 (n + 1)

end A066829

/-! ## A066829.P266173074850866064

`val(∑{e}[n+1, #]²+1, 2)`
-/

namespace A066829.P266173074850866064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2 + 1) 2

end

end A066829.P266173074850866064

namespace A066829

/-- `val(∑{e}[n+1, #]²+1, 2)` -/
def P266173074850866064.Spec : Prop :=
  ∀ n, (P266173074850866064.a n : ℤ) = A066829 (n + 1)

end A066829

/-! ## A066829.P14631895735252651132

`or(-2, ∑{e}[n+1, #])+2`
-/

namespace A066829.P14631895735252651132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-2) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + 2

end

end A066829.P14631895735252651132

namespace A066829

/-- `or(-2, ∑{e}[n+1, #])+2` -/
def P14631895735252651132.Spec : Prop :=
  ∀ n, P14631895735252651132.a n = A066829 (n + 1)

end A066829

/-! ## A066829.P9048793748350612010

`∑{p}[n+1, val(n+1, #)]%2`
-/

namespace A066829.P9048793748350612010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p) % 2

end

end A066829.P9048793748350612010

namespace A066829

/-- `∑{p}[n+1, val(n+1, #)]%2` -/
def P9048793748350612010.Spec : Prop :=
  ∀ n, (P9048793748350612010.a n : ℤ) = A066829 (n + 1)

end A066829

/-! ## A066829.P14379608522008512198

`and(1, -∑{e}[2*n-(n-1), #])`
-/

namespace A066829.P14379608522008512198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A066829.P14379608522008512198

namespace A066829

/-- `and(1, -∑{e}[2*n-(n-1), #])` -/
def P14379608522008512198.Spec : Prop :=
  ∀ n, P14379608522008512198.a n = A066829 (n + 1)

end A066829

/-! ## A066829.P10472617772356406848

`and(1, ∑{e}[2*n-(n-1), #]²)`
-/

namespace A066829.P10472617772356406848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2)

end

end A066829.P10472617772356406848

namespace A066829

/-- `and(1, ∑{e}[2*n-(n-1), #]²)` -/
def P10472617772356406848.Spec : Prop :=
  ∀ n, (P10472617772356406848.a n : ℤ) = A066829 (n + 1)

end A066829

/-! ## A066829.P4494490029417876070

`and(1, ∑{p}[n+1, val(n+1, #)^#])`
-/

namespace A066829.P4494490029417876070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p ^ p)

end

end A066829.P4494490029417876070

namespace A066829

/-- `and(1, ∑{p}[n+1, val(n+1, #)^#])` -/
def P4494490029417876070.Spec : Prop :=
  ∀ n, (P4494490029417876070.a n : ℤ) = A066829 (n + 1)

end A066829

/-! ## A066829.P16580772062132603966

`2-A007421(n+1)`
-/

namespace A066829.P16580772062132603966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007421 (n + 1)

end

end A066829.P16580772062132603966

namespace A066829

/-- `2-A007421(n+1)` -/
def P16580772062132603966.Spec : Prop :=
  ∀ n, P16580772062132603966.a n = A066829 (n + 1)

theorem P16580772062132603966.correct : P16580772062132603966.Spec := by
  intro n
  simp only [A066829, Nat.add_sub_cancel, A066829.P16580772062132603966.a, A066829.P3721516859256189271.a, A007421, A007421.P6096517627125049268.a, A065043, A065043.P15027714353296076488.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066829

/-! ## A066829.P9064222996188525842

`A065043(2*(n+1))`
-/

namespace A066829.P9064222996188525842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * (n + 1))

end

end A066829.P9064222996188525842

namespace A066829

/-- `A065043(2*(n+1))` -/
def P9064222996188525842.Spec : Prop :=
  ∀ n, P9064222996188525842.a n = A066829 (n + 1)

end A066829

/-! ## A066829.P16054481994105732710

`A353555(2*(n+1))`
-/

namespace A066829.P16054481994105732710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (2 * (n + 1))

end

end A066829.P16054481994105732710

namespace A066829

/-- `A353555(2*(n+1))` -/
def P16054481994105732710.Spec : Prop :=
  ∀ n, P16054481994105732710.a n = A066829 (n + 1)

end A066829

/-! ## A066829.P15613253347034699927

`A353556(4*(n+1))`
-/

namespace A066829.P15613253347034699927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (4 * (n + 1))

end

end A066829.P15613253347034699927

namespace A066829

/-- `A353556(4*(n+1))` -/
def P15613253347034699927.Spec : Prop :=
  ∀ n, P15613253347034699927.a n = A066829 (n + 1)

end A066829

/-!
# A066830: a(n) = lcm(n+1, n-1).

The programs for A066830, the canonical program `A066830.P3867822238760821357` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066830 has offset 1).

The definition of A066830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+2, n)` (program `A066830.P3867822238760821357`, by `A066830.P3867822238760821357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066830.P3867822238760821357

`lcm(n+2, n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066830

/-- `lcm(n+2, n)` -/
def P3867822238760821357.Spec : Prop :=
  ∀ n, (P3867822238760821357.a n : ℤ) = A066830 (n + 1)

theorem P3867822238760821357.correct : P3867822238760821357.Spec := by
  intro n
  simp only [A066830, Nat.add_sub_cancel]

end A066830

/-! ## A066830.P17107779006205772267

`ogf((3x+4x^2+6x^3-x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A066830.P17107779006205772267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4, 6, 0, -1] [1, 0, -3, 0, 3, 0, -1] n

end

end A066830.P17107779006205772267

namespace A066830

/-- `ogf((3x+4x^2+6x^3-x^5)/(1-3x^2+3x^4-x^6))` -/
def P17107779006205772267.Spec : Prop :=
  ∀ n, P17107779006205772267.a n = A066830 (n + 1)

end A066830

/-! ## A066830.P18127611172649281958

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=15, a(4)=12, a(5)=35`
-/

namespace A066830.P18127611172649281958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 15, 12, 35] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A066830.P18127611172649281958

namespace A066830

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P18127611172649281958.Spec : Prop :=
  ∀ n, P18127611172649281958.a n = A066830 (n + 1)

end A066830

/-! ## A066830.P7242562302392059291

`(n+2)*gcd(n, ∑[n])`
-/

namespace A066830.P7242562302392059291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066830.P7242562302392059291

namespace A066830

/-- `(n+2)*gcd(n, ∑[n])` -/
def P7242562302392059291.Spec : Prop :=
  ∀ n, (P7242562302392059291.a n : ℤ) = A066830 (n + 1)

end A066830

/-! ## A066830.P4992704347077375116

`lcm(2, record[n*(n-2)])/2`
-/

namespace A066830.P4992704347077375116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2

end

end A066830.P4992704347077375116

namespace A066830

/-- `lcm(2, record[n*(n-2)])/2` -/
def P4992704347077375116.Spec : Prop :=
  ∀ n, P4992704347077375116.a n = (A066830 (n + 1) : ℚ)

end A066830

/-! ## A066830.P5453855098040459671

`(n+2)*n/gcd(2, n²)`
-/

namespace A066830.P5453855098040459671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ))

end

end A066830.P5453855098040459671

namespace A066830

/-- `(n+2)*n/gcd(2, n²)` -/
def P5453855098040459671.Spec : Prop :=
  ∀ n, P5453855098040459671.a n = (A066830 (n + 1) : ℚ)

end A066830

/-! ## A066830.P10320574363122249042

`(n+2)*n/(2-n%2)`
-/

namespace A066830.P10320574363122249042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ))

end

end A066830.P10320574363122249042

namespace A066830

/-- `(n+2)*n/(2-n%2)` -/
def P10320574363122249042.Spec : Prop :=
  ∀ n, P10320574363122249042.a n = (A066830 (n + 1) : ℚ)

end A066830

/-! ## A066830.P10590107120482663159

`(n+2)*n/(2-and(1, n))`
-/

namespace A066830.P10590107120482663159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))

end

end A066830.P10590107120482663159

namespace A066830

/-- `(n+2)*n/(2-and(1, n))` -/
def P10590107120482663159.Spec : Prop :=
  ∀ n, P10590107120482663159.a n = (A066830 (n + 1) : ℚ)

end A066830

/-! ## A066830.P14076286755342820188

`gcd(n*(n+2), C((n+1)², 2))`
-/

namespace A066830.P14076286755342820188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n * (n + 2)) (Nat.choose ((n + 1) ^ 2) 2)

end

end A066830.P14076286755342820188

namespace A066830

/-- `gcd(n*(n+2), C((n+1)², 2))` -/
def P14076286755342820188.Spec : Prop :=
  ∀ n, (P14076286755342820188.a n : ℤ) = A066830 (n + 1)

end A066830

/-! ## A066830.P13549608540128207032

`n*(∑[n+2]%(n+2)+1)`
-/

namespace A066830.P13549608540128207032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) + 1)

end

end A066830.P13549608540128207032

namespace A066830

/-- `n*(∑[n+2]%(n+2)+1)` -/
def P13549608540128207032.Spec : Prop :=
  ∀ n, (P13549608540128207032.a n : ℤ) = A066830 (n + 1)

end A066830

/-! ## A066830.P14790060997351468257

`sqrt(lcm((2*n-(n-2))², n²))`
-/

namespace A066830.P14790060997351468257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (((2 * n : ℤ) - ((n : ℤ) - 2)) ^ 2) (n ^ 2 : ℤ) : ℝ)

end

end A066830.P14790060997351468257

namespace A066830

/-- `sqrt(lcm((2*n-(n-2))², n²))` -/
def P14790060997351468257.Spec : Prop :=
  ∀ n, P14790060997351468257.a n = (A066830 (n + 1) : ℝ)

end A066830

/-! ## A066830.P12836812409679026466

`n*(n+2)/(∑[(-1)^n]+1)`
-/

namespace A066830.P12836812409679026466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ)

end

end A066830.P12836812409679026466

namespace A066830

/-- `n*(n+2)/(∑[(-1)^n]+1)` -/
def P12836812409679026466.Spec : Prop :=
  ∀ n, P12836812409679026466.a n = (A066830 (n + 1) : ℚ)

end A066830

/-! ## A066830.P17900594624344228055

`(n+2)*n/(and(1, n+1)+1)`
-/

namespace A066830.P17900594624344228055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ))

end

end A066830.P17900594624344228055

namespace A066830

/-- `(n+2)*n/(and(1, n+1)+1)` -/
def P17900594624344228055.Spec : Prop :=
  ∀ n, P17900594624344228055.a n = (A066830 (n + 1) : ℚ)

end A066830

/-! ## A066830.P17150977595259400192

`(n+2)/(n-2)*a(n-2)` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A066830.P17150977595259400192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3, 4] fun n a =>
  (n + 2 : ℚ) / ((n : ℤ) - 2 : ℚ) * a (n - 2)

end

end A066830.P17150977595259400192

namespace A066830

/-- `(n+2)/(n-2)*a(n-2)` -/
def P17150977595259400192.Spec : Prop :=
  ∀ n, P17150977595259400192.a n = (A066830 (n + 1) : ℚ)

end A066830

/-! ## A066830.P10219468128921603119

`(n+2)*gcd(n+1, n-1)*n/2`
-/

namespace A066830.P10219468128921603119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ) * ((n : ℚ) / 2)

end

end A066830.P10219468128921603119

namespace A066830

/-- `(n+2)*gcd(n+1, n-1)*n/2` -/
def P10219468128921603119.Spec : Prop :=
  ∀ n, P10219468128921603119.a n = (A066830 (n + 1) : ℚ)

end A066830

/-! ## A066830.P11103699594696567898

`a(n-2)+n*gcd(4, 2*a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A066830.P11103699594696567898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + n * Nat.gcd 4 (2 * a (n - 1))

end

end A066830.P11103699594696567898

namespace A066830

/-- `a(n-2)+n*gcd(4, 2*a(n-1))` -/
def P11103699594696567898.Spec : Prop :=
  ∀ n, (P11103699594696567898.a n : ℤ) = A066830 (n + 1)

end A066830

/-! ## A066830.P1654141345188117029

`sqrt(A171522(n))`
-/

namespace A066830.P1654141345188117029
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A171522 n : ℝ)

end

end A066830.P1654141345188117029

namespace A066830

/-- `sqrt(A171522(n))` -/
def P1654141345188117029.Spec : Prop :=
  ∀ n, P1654141345188117029.a n = (A066830 (n + 1) : ℝ)

end A066830

/-! ## A066830.P15481819003877504144

`n*A145051(n+1)`
-/

namespace A066830.P15481819003877504144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145051 (n + 1)

end

end A066830.P15481819003877504144

namespace A066830

/-- `n*A145051(n+1)` -/
def P15481819003877504144.Spec : Prop :=
  ∀ n, P15481819003877504144.a n = A066830 (n + 1)

end A066830

/-! ## A066830.P6628076899565696125

`(n+2)*A026741(n)`
-/

namespace A066830.P6628076899565696125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026741 n

end

end A066830.P6628076899565696125

namespace A066830

/-- `(n+2)*A026741(n)` -/
def P6628076899565696125.Spec : Prop :=
  ∀ n, P6628076899565696125.a n = A066830 (n + 1)

end A066830

/-!
# A066831: Numbers k such that sigma(k) divides sigma(phi(k)).

The programs for A066831, there is no canonical definition to state claims against.
-/

/-! ## A066831.P10019160349415114330

`lt[A000203(A000010(n+1))%A143348(n+1), 1]+1`
-/

namespace A066831.P10019160349415114330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A000010 (n + 1)).toNat) (A143348 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066831.P10019160349415114330

/-!
# A066835: a(n) = omega((prime(n)-1)! + 1), where omega is given by A001221, primes in A000040.

The programs for A066835, there is no canonical definition to state claims against.
-/

/-! ## A066835.P5609793375264188597

`A066856(A006093(n+1))`
-/

namespace A066835.P5609793375264188597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066856 (A006093 (n + 1)).toNat

end

end A066835.P5609793375264188597

/-! ## A066835.P14606187519805857023

`A066856(p?[xor(1, n)]-1)`
-/

namespace A066835.P14606187519805857023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066856 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A066835.P14606187519805857023

/-! ## A066835.P12011834604529279130

`A066856(record[A037225(n)])`
-/

namespace A066835.P12011834604529279130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066856 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066835.P12011834604529279130

/-! ## A066835.P2762933373596738730

`A066856(A039915(n+1))`
-/

namespace A066835.P2762933373596738730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066856 (A039915 (n + 1)).toNat

end

end A066835.P2762933373596738730

/-! ## A066835.P3653818751131841247

`A066856(A156037(n+1))`
-/

namespace A066835.P3653818751131841247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066856 (A156037 (n + 1)).toNat

end

end A066835.P3653818751131841247

/-!
# A066838: Product of primes < n that do not divide n.

The programs for A066838, the canonical program `A066838.P8327435795258635139` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066838 has offset 1).

The definition of A066838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066838.P8327435795258635139

`A034386(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066838

/-- `A034386(n+1)/A007947(n+1)` -/
def P8327435795258635139.Spec : Prop :=
  ∀ n, P8327435795258635139.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P6754002671024184981

`A083720(n+1)*A083722(n+1)`
-/

namespace A066838.P6754002671024184981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083720 (n + 1) * A083722 (n + 1)

end

end A066838.P6754002671024184981

namespace A066838

/-- `A083720(n+1)*A083722(n+1)` -/
def P6754002671024184981.Spec : Prop :=
  ∀ n, P6754002671024184981.a n = A066838 (n + 1)

end A066838

/-! ## A066838.P10803420188446691140

`A048633(n+1)/A007947(n+1)*A056610(n+1)`
-/

namespace A066838.P10803420188446691140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048633 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A056610 (n + 1) : ℚ)

end

end A066838.P10803420188446691140

namespace A066838

/-- `A048633(n+1)/A007947(n+1)*A056610(n+1)` -/
def P10803420188446691140.Spec : Prop :=
  ∀ n, P10803420188446691140.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P11253673633212876980

`gcd(n*lcm(n+1, a(n-1))/(n+1), A034386(n))` with `a(0)=1`
-/

namespace A066838.P11253673633212876980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.lcm (n + 1) (a (n - 1)) : ℚ) / (n + 1 : ℚ)))) (A034386 n)

end

end A066838.P11253673633212876980

namespace A066838

/-- `gcd(n*lcm(n+1, a(n-1))/(n+1), A034386(n))` -/
def P11253673633212876980.Spec : Prop :=
  ∀ n, (P11253673633212876980.a n : ℤ) = A066838 (n + 1)

end A066838

/-! ## A066838.P12967101543993969296

`A034386(n)/A334085(n+1)`
-/

namespace A066838.P12967101543993969296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A334085 (n + 1) : ℚ)

end

end A066838.P12967101543993969296

namespace A066838

/-- `A034386(n)/A334085(n+1)` -/
def P12967101543993969296.Spec : Prop :=
  ∀ n, P12967101543993969296.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P17580760640508591

`A300951(2*n)/gcd(n+1, A300951(n+1))`
-/

namespace A066838.P17580760640508591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (Int.gcd (n + 1 : ℤ) (A300951 (n + 1)) : ℚ)

end

end A066838.P17580760640508591

namespace A066838

/-- `A300951(2*n)/gcd(n+1, A300951(n+1))` -/
def P17580760640508591.Spec : Prop :=
  ∀ n, P17580760640508591.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P15891440009087272855

`∏[A089026(n+1)]/A007947(n+1)`
-/

namespace A066838.P15891440009087272855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A066838.P15891440009087272855

namespace A066838

/-- `∏[A089026(n+1)]/A007947(n+1)` -/
def P15891440009087272855.Spec : Prop :=
  ∀ n, P15891440009087272855.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P2871709549466227049

`A002110(A000720(n+1))/∏{p}[n+1, #]`
-/

namespace A066838.P2871709549466227049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A000720 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A066838.P2871709549466227049

namespace A066838

/-- `A002110(A000720(n+1))/∏{p}[n+1, #]` -/
def P2871709549466227049.Spec : Prop :=
  ∀ n, P2871709549466227049.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P2014734336943211064

`∏[A089026(n+1)]/∏{d}[n+1, A089026(#)]`
-/

namespace A066838.P2014734336943211064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∏ d ∈ Nat.divisors (f2 n), A089026 d : ℤ) : ℚ)

end

end A066838.P2014734336943211064

namespace A066838

/-- `∏[A089026(n+1)]/∏{d}[n+1, A089026(#)]` -/
def P2014734336943211064.Spec : Prop :=
  ∀ n, P2014734336943211064.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P7379013573663455506

`A002110(A000720(n+1))/A007947(n+1)`
-/

namespace A066838.P7379013573663455506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A000720 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A066838.P7379013573663455506

namespace A066838

/-- `A002110(A000720(n+1))/A007947(n+1)` -/
def P7379013573663455506.Spec : Prop :=
  ∀ n, P7379013573663455506.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P14635432293662563494

`lcm(A007947(n+1), A056606(n))/A007947(n+1)`
-/

namespace A066838.P14635432293662563494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007947 (n + 1)) (A056606 n) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A066838.P14635432293662563494

namespace A066838

/-- `lcm(A007947(n+1), A056606(n))/A007947(n+1)` -/
def P14635432293662563494.Spec : Prop :=
  ∀ n, P14635432293662563494.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P10377823505414249940

`A005361(n+1)/A000026(n+1)*A034386(n+1)`
-/

namespace A066838.P10377823505414249940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) / (A000026 (n + 1) : ℚ) * (A034386 (n + 1) : ℚ)

end

end A066838.P10377823505414249940

namespace A066838

/-- `A005361(n+1)/A000026(n+1)*A034386(n+1)` -/
def P10377823505414249940.Spec : Prop :=
  ∀ n, P10377823505414249940.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P16591130984972230251

`A056606(n+1)/A007947(n+1)*A056609(n+1)`
-/

namespace A066838.P16591130984972230251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056606 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A056609 (n + 1) : ℚ)

end

end A066838.P16591130984972230251

namespace A066838

/-- `A056606(n+1)/A007947(n+1)*A056609(n+1)` -/
def P16591130984972230251.Spec : Prop :=
  ∀ n, P16591130984972230251.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P8748485864333940148

`∏[A089026(n+1)]/(A324369(n+1)*A324371(n+1))`
-/

namespace A066838.P8748485864333940148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A324369 (n + 1) * A324371 (n + 1) : ℚ)

end

end A066838.P8748485864333940148

namespace A066838

/-- `∏[A089026(n+1)]/(A324369(n+1)*A324371(n+1))` -/
def P8748485864333940148.Spec : Prop :=
  ∀ n, P8748485864333940148.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P3567885194703654728

`∏[A089026(n+1)]/(A064987(n+1)/(n+1)-(n+1)-A326143(n+1))`
-/

namespace A066838.P3567885194703654728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ) - (A326143 (n + 1) : ℚ))

end

end A066838.P3567885194703654728

namespace A066838

/-- `∏[A089026(n+1)]/(A064987(n+1)/(n+1)-(n+1)-A326143(n+1))` -/
def P3567885194703654728.Spec : Prop :=
  ∀ n, P3567885194703654728.a n = (A066838 (n + 1) : ℚ)

end A066838

/-! ## A066838.P2370538620493189517

`gcd(A034386(n), A038610(n+1))`
-/

namespace A066838.P2370538620493189517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A038610 (n + 1))

end

end A066838.P2370538620493189517

namespace A066838

/-- `gcd(A034386(n), A038610(n+1))` -/
def P2370538620493189517.Spec : Prop :=
  ∀ n, (P2370538620493189517.a n : ℤ) = A066838 (n + 1)

end A066838

/-!
# A066839: a(n) = sum of positive divisors k of n with k <= sqrt(n).

The programs for A066839, the canonical program `A066839.P8681928931411064379` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066839 has offset 1).

The definition of A066839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037213, A070039, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066839.P8681928931411064379

`A070039(n+1)+A037213(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A066839

/-- `A070039(n+1)+A037213(n+1)` -/
def P8681928931411064379.Spec : Prop :=
  ∀ n, P8681928931411064379.a n = A066839 (n + 1)

theorem P8681928931411064379.correct : P8681928931411064379.Spec := by
  intro n
  simp only [A066839, Nat.add_sub_cancel]

end A066839

/-! ## A066839.P169567383942716546

`Δ[A160664(n)]-A238535(n+1)`
-/

namespace A066839.P169567383942716546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238535 (n + 1)

end

end A066839.P169567383942716546

namespace A066839

/-- `Δ[A160664(n)]-A238535(n+1)` -/
def P169567383942716546.Spec : Prop :=
  ∀ n, P169567383942716546.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P2648758276046038441

`A333751(n+1)+A097974(n+1)`
-/

namespace A066839.P2648758276046038441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333751 (n + 1) + A097974 (n + 1)

end

end A066839.P2648758276046038441

namespace A066839

/-- `A333751(n+1)+A097974(n+1)` -/
def P2648758276046038441.Spec : Prop :=
  ∀ n, P2648758276046038441.a n = A066839 (n + 1)

theorem P2648758276046038441.correct : P2648758276046038441.Spec := by
  intro n
  simp only [A066839, Nat.add_sub_cancel, A066839.P2648758276046038441.a, A066839.P8681928931411064379.a, A037213, A037213.P7544062464691828526.a, A070039, A070039.P4114878800283860445.a, A097974, A097974.P5758962285217898307.f1, A097974.P5758962285217898307.a, A333751, A333751.P276282366171106930.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A060866, A060866.P6702575079618569107.a, A070038, A070038.P10485026428736281518.a, A072504, A072504.P15978785907571623922.a, A000194, A000194.P3625933274776871084.a, A003418, A003418.P6976248655893080794.a, A079667, A079667.P14511190976572101937.a, A038548, A038548.P12593795823109361725.a, A357259, A357259.P10940546597892317752.f1, A357259.P10940546597892317752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066839

/-! ## A066839.P8846460874033096694

`A060866(n+1)-A070038(n+1)`
-/

namespace A066839.P8846460874033096694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - A070038 (n + 1)

end

end A066839.P8846460874033096694

namespace A066839

/-- `A060866(n+1)-A070038(n+1)` -/
def P8846460874033096694.Spec : Prop :=
  ∀ n, P8846460874033096694.a n = A066839 (n + 1)

theorem P8846460874033096694.correct : P8846460874033096694.Spec := by
  intro n
  simp only [A066839, Nat.add_sub_cancel, A066839.P8846460874033096694.a, A066839.P8681928931411064379.a, A037213, A037213.P7544062464691828526.a, A060866, A060866.P6702575079618569107.a, A070038, A070038.P10485026428736281518.a, A070039, A070039.P4114878800283860445.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A079667, A079667.P14511190976572101937.a, A038548, A038548.P12593795823109361725.a, A357259, A357259.P10940546597892317752.f1, A357259.P10940546597892317752.a, A000005, A000005.P16091521709108585461.a, A056924, A056924.P8846060015044098494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066839

/-! ## A066839.P8626989479331943754

`A070038(n+1)-A079667(n+1)`
-/

namespace A066839.P8626989479331943754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A079667 (n + 1)

end

end A066839.P8626989479331943754

namespace A066839

/-- `A070038(n+1)-A079667(n+1)` -/
def P8626989479331943754.Spec : Prop :=
  ∀ n, P8626989479331943754.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P18258694197315490918

`A117004(n+1)-A070039(n+1)`
-/

namespace A066839.P18258694197315490918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1) - A070039 (n + 1)

end

end A066839.P18258694197315490918

namespace A066839

/-- `A117004(n+1)-A070039(n+1)` -/
def P18258694197315490918.Spec : Prop :=
  ∀ n, P18258694197315490918.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P12778702804405860401

`A000203(n+1)-A238535(n+1)`
-/

namespace A066839.P12778702804405860401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A238535 (n + 1)

end

end A066839.P12778702804405860401

namespace A066839

/-- `A000203(n+1)-A238535(n+1)` -/
def P12778702804405860401.Spec : Prop :=
  ∀ n, P12778702804405860401.a n = A066839 (n + 1)

theorem P12778702804405860401.correct : P12778702804405860401.Spec := by
  intro n
  simp only [A066839, Nat.add_sub_cancel, A066839.P12778702804405860401.a, A066839.P8681928931411064379.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A070039, A070039.P4114878800283860445.a, A238535, A238535.P17843489111370782226.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A070038, A070038.P10485026428736281518.a, A060866, A060866.P6702575079618569107.a, A079667, A079667.P14511190976572101937.a, A038548, A038548.P12593795823109361725.a, A357259, A357259.P10940546597892317752.f1, A357259.P10940546597892317752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066839

/-! ## A066839.P15828240634501317816

`2*A069289(n+1)-A333782(n+1)`
-/

namespace A066839.P15828240634501317816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069289 (n + 1) - A333782 (n + 1)

end

end A066839.P15828240634501317816

namespace A066839

/-- `2*A069289(n+1)-A333782(n+1)` -/
def P15828240634501317816.Spec : Prop :=
  ∀ n, P15828240634501317816.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P10260016644200705728

`(A060866(n+1)-A079667(n+1))/2`
-/

namespace A066839.P10260016644200705728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060866 (n + 1) - A079667 (n + 1) : ℚ) / 2

end

end A066839.P10260016644200705728

namespace A066839

/-- `(A060866(n+1)-A079667(n+1))/2` -/
def P10260016644200705728.Spec : Prop :=
  ∀ n, P10260016644200705728.a n = (A066839 (n + 1) : ℚ)

end A066839

/-! ## A066839.P2763763235012229030

`A070039(n+1)+A348953(n+1)+A348608(n+1)`
-/

namespace A066839.P2763763235012229030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + (A348953 (n + 1) + A348608 (n + 1))

end

end A066839.P2763763235012229030

namespace A066839

/-- `A070039(n+1)+A348953(n+1)+A348608(n+1)` -/
def P2763763235012229030.Spec : Prop :=
  ∀ n, P2763763235012229030.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P12090793620079484046

`A000203(n+1)+A037213(n+1)-A070038(n+1)`
-/

namespace A066839.P12090793620079484046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A037213 (n + 1) - A070038 (n + 1))

end

end A066839.P12090793620079484046

namespace A066839

/-- `A000203(n+1)+A037213(n+1)-A070038(n+1)` -/
def P12090793620079484046.Spec : Prop :=
  ∀ n, P12090793620079484046.a n = A066839 (n + 1)

theorem P12090793620079484046.correct : P12090793620079484046.Spec := by
  intro n
  simp only [A066839, Nat.add_sub_cancel, A066839.P12090793620079484046.a, A066839.P8681928931411064379.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A070038, A070038.P10485026428736281518.a, A070039, A070039.P4114878800283860445.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A060866, A060866.P6702575079618569107.a, A079667, A079667.P14511190976572101937.a, A038548, A038548.P12593795823109361725.a, A357259, A357259.P10940546597892317752.f1, A357259.P10940546597892317752.a, A000005, A000005.P16091521709108585461.a, A056924, A056924.P8846060015044098494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066839

/-! ## A066839.P16303241111521746220

`A000203(n+1)+A070038(n+1)-A117003(n+1)`
-/

namespace A066839.P16303241111521746220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A070038 (n + 1) - A117003 (n + 1))

end

end A066839.P16303241111521746220

namespace A066839

/-- `A000203(n+1)+A070038(n+1)-A117003(n+1)` -/
def P16303241111521746220.Spec : Prop :=
  ∀ n, P16303241111521746220.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P6173991433612265063

`A070038(n+1)+A117004(n+1)-A000203(n+1)`
-/

namespace A066839.P6173991433612265063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) + (A117004 (n + 1) - A000203 (n + 1))

end

end A066839.P6173991433612265063

namespace A066839

/-- `A070038(n+1)+A117004(n+1)-A000203(n+1)` -/
def P6173991433612265063.Spec : Prop :=
  ∀ n, P6173991433612265063.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P15681545327464649912

`A000203(n+1)+A070039(n+1)-A337177(n+1)`
-/

namespace A066839.P15681545327464649912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A070039 (n + 1) - A337177 (n + 1))

end

end A066839.P15681545327464649912

namespace A066839

/-- `A000203(n+1)+A070039(n+1)-A337177(n+1)` -/
def P15681545327464649912.Spec : Prop :=
  ∀ n, P15681545327464649912.a n = A066839 (n + 1)

theorem P15681545327464649912.correct : P15681545327464649912.Spec := by
  intro n
  simp only [A066839, Nat.add_sub_cancel, A066839.P15681545327464649912.a, A066839.P8681928931411064379.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A070039, A070039.P4114878800283860445.a, A337177, A337177.P8469730324832837897.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A070038, A070038.P10485026428736281518.a, A060866, A060866.P6702575079618569107.a, A079667, A079667.P14511190976572101937.a, A038548, A038548.P12593795823109361725.a, A357259, A357259.P10940546597892317752.f1, A357259.P10940546597892317752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066839

/-! ## A066839.P5381927422034726486

`A038548(n+1)+A070038(n+1)-A357259(n+1)`
-/

namespace A066839.P5381927422034726486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A070038 (n + 1) - A357259 (n + 1))

end

end A066839.P5381927422034726486

namespace A066839

/-- `A038548(n+1)+A070038(n+1)-A357259(n+1)` -/
def P5381927422034726486.Spec : Prop :=
  ∀ n, P5381927422034726486.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P9885948681279173018

`A070039(n+1)+A000188(n+1)*A010052(n+1)`
-/

namespace A066839.P9885948681279173018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + A000188 (n + 1) * A010052 (n + 1)

end

end A066839.P9885948681279173018

namespace A066839

/-- `A070039(n+1)+A000188(n+1)*A010052(n+1)` -/
def P9885948681279173018.Spec : Prop :=
  ∀ n, P9885948681279173018.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P6990794234362193656

`A070039(n+1)+A000196(n+1)*A010052(n+1)`
-/

namespace A066839.P6990794234362193656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + A000196 (n + 1) * A010052 (n + 1)

end

end A066839.P6990794234362193656

namespace A066839

/-- `A070039(n+1)+A000196(n+1)*A010052(n+1)` -/
def P6990794234362193656.Spec : Prop :=
  ∀ n, P6990794234362193656.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P4795365548031952444

`A070038(n+1)-(A088580(n+1)-(A117004(n+1)+1))`
-/

namespace A066839.P4795365548031952444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A088580 (n + 1) - (A117004 (n + 1) + 1))

end

end A066839.P4795365548031952444

namespace A066839

/-- `A070038(n+1)-(A088580(n+1)-(A117004(n+1)+1))` -/
def P4795365548031952444.Spec : Prop :=
  ∀ n, P4795365548031952444.a n = A066839 (n + 1)

end A066839

/-! ## A066839.P10537820374547166811

`A070038(n+1)-(A245092(2*n+1)-A117004(n+1))`
-/

namespace A066839.P10537820374547166811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A245092 (2 * n + 1) - A117004 (n + 1))

end

end A066839.P10537820374547166811

namespace A066839

/-- `A070038(n+1)-(A245092(2*n+1)-A117004(n+1))` -/
def P10537820374547166811.Spec : Prop :=
  ∀ n, P10537820374547166811.a n = A066839 (n + 1)

end A066839

/-!
# A066840: Sum of positive integers k where k <= n/2 and gcd(k,n) = 1.

The programs for A066840, there is no canonical definition to state claims against.
-/

/-! ## A066840.P11284325968705145490

`A124440(n+1)-A340714(abs(1-n)+2)`
-/

namespace A066840.P11284325968705145490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124440 (n + 1) - A340714 (|1 - (n : ℤ)| + 2).toNat

end

end A066840.P11284325968705145490

/-! ## A066840.P17929602919234809932

`(A334628(n+1)+A295574(n+1))/(n+1)`
-/

namespace A066840.P17929602919234809932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334628 (n + 1) + A295574 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A066840.P17929602919234809932

/-! ## A066840.P8324187455238303477

`lcm(n+1, A023896(n+1))-A124440(n+1)`
-/

namespace A066840.P8324187455238303477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A023896 (n + 1)) : ℤ) - A124440 (n + 1)

end

end A066840.P8324187455238303477

/-! ## A066840.P759839084235699530

`(A124440(n+1)-A340714(n+1))%A008531(n)`
-/

namespace A066840.P759839084235699530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124440 (n + 1) - A340714 (n + 1)) (A008531 n)

end

end A066840.P759839084235699530

/-! ## A066840.P4402872053448852258

`A124440(n+1)%A133263(n)-A340714(n+1)`
-/

namespace A066840.P4402872053448852258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124440 (n + 1)) (A133263 n) - A340714 (n + 1)

end

end A066840.P4402872053448852258

/-! ## A066840.P10731569473753393695

`A124446(n+1)/A124440(n+1)*A124447(n+1)`
-/

namespace A066840.P10731569473753393695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124446 (n + 1) : ℚ) / (A124440 (n + 1) : ℚ) * (A124447 (n + 1) : ℚ)

end

end A066840.P10731569473753393695

/-! ## A066840.P7601682176720288815

`A038572(floor(A002618(n+1)/2)-A340714(n+1))`
-/

namespace A066840.P7601682176720288815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (⌊(A002618 (n + 1) : ℚ) / 2⌋ - A340714 (n + 1)).toNat

end

end A066840.P7601682176720288815

/-! ## A066840.P17418280246553445971

`A004525(floor(A002618(n+1)/2)-A340714(n+1))`
-/

namespace A066840.P17418280246553445971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (⌊(A002618 (n + 1) : ℚ) / 2⌋ - A340714 (n + 1)).toNat

end

end A066840.P17418280246553445971

/-! ## A066840.P18205369859344971169

`A026741(floor(A002618(n+1)/2)-A340714(n+1))`
-/

namespace A066840.P18205369859344971169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (⌊(A002618 (n + 1) : ℚ) / 2⌋ - A340714 (n + 1)).toNat

end

end A066840.P18205369859344971169

/-! ## A066840.P4632095862606953287

`A193676(n+1)+2*A282601(n+1)`
-/

namespace A066840.P4632095862606953287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193676 (n + 1) + 2 * A282601 (n + 1)

end

end A066840.P4632095862606953287

/-!
# A066841: a(n) = Product{k|n} k^(n/k); product is over the positive divisors of n.

The programs for A066841, the canonical program `A066841.P9103371975686681261` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066841 has offset 1).

The definition of A066841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066841.P11400527578849095710

`∏{d}[n+1, #^ceil(n/#)]`
-/

namespace A066841.P11400527578849095710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (⌈(n : ℚ) / (d : ℚ)⌉ : ℤ)

end

end A066841.P11400527578849095710

namespace A066841

/-- `∏{d}[n+1, #^ceil(n/#)]` -/
def P11400527578849095710.Spec : Prop :=
  ∀ n, P11400527578849095710.a n = (A066841 (n + 1) : ℚ)

end A066841

/-! ## A066841.P2510026888790168351

`∏{d}[n+1, root(#, #)]^(n+1)`
-/

namespace A066841.P2510026888790168351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / (d : ℝ))) ^ (n + 1)

end

end A066841.P2510026888790168351

namespace A066841

/-- `∏{d}[n+1, root(#, #)]^(n+1)` -/
def P2510026888790168351.Spec : Prop :=
  ∀ n, P2510026888790168351.a n = (A066841 (n + 1) : ℝ)

end A066841

/-! ## A066841.P9103371975686681261

`floor(∏{d}[n+1, ((n+1)/#)^#])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066841

/-- `floor(∏{d}[n+1, ((n+1)/#)^#])` -/
def P9103371975686681261.Spec : Prop :=
  ∀ n, P9103371975686681261.a n = A066841 (n + 1)

theorem P9103371975686681261.correct : P9103371975686681261.Spec := by
  intro n
  simp only [A066841, Nat.add_sub_cancel]

end A066841

/-! ## A066841.P14765904045749323892

`round(∏{d}[n+1, ((n+1)/#)^#])`
-/

namespace A066841.P14765904045749323892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d)

end

end A066841.P14765904045749323892

namespace A066841

/-- `round(∏{d}[n+1, ((n+1)/#)^#])` -/
def P14765904045749323892.Spec : Prop :=
  ∀ n, P14765904045749323892.a n = A066841 (n + 1)

end A066841

/-! ## A066841.P12199751721465035566

`A140554(n)+a(n-1)` with `a(0)=1`
-/

namespace A066841.P12199751721465035566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140554 n + a (n - 1)

end

end A066841.P12199751721465035566

namespace A066841

/-- `A140554(n)+a(n-1)` -/
def P12199751721465035566.Spec : Prop :=
  ∀ n, P12199751721465035566.a n = A066841 (n + 1)

theorem P12199751721465035566.correct : P12199751721465035566.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A066841, Nat.add_sub_cancel, A066841.P12199751721465035566.a, A066841.P9103371975686681261.f1, A066841.P9103371975686681261.a, A140554, A140554.P8177830334213448867.f1, A140554.P8177830334213448867.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A066841, Nat.add_sub_cancel, A066841.P12199751721465035566.a, A066841.P9103371975686681261.f1, A066841.P9103371975686681261.a, A140554, A140554.P8177830334213448867.f1, A140554.P8177830334213448867.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A066841

/-! ## A066841.P5732513801401108028

`∑[A140554(A065033(2*n))]`
-/

namespace A066841.P5732513801401108028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140554 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066841.P5732513801401108028

namespace A066841

/-- `∑[A140554(A065033(2*n))]` -/
def P5732513801401108028.Spec : Prop :=
  ∀ n, P5732513801401108028.a n = A066841 (n + 1)

end A066841

/-!
# A066842: a(n) = Product_{k|n} k^k; product is over the positive divisors, k, of n.

The programs for A066842, there is no canonical definition to state claims against.
-/

/-! ## A066842.P10201158318804036549

`∏{d}[n+1, #^#]`
-/

namespace A066842.P10201158318804036549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d ^ d

end

end A066842.P10201158318804036549

/-! ## A066842.P3014281908656770466

`∏{d}[n+1, root(#, 2/#)]²`
-/

namespace A066842.P3014281908656770466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / (2 / (d : ℚ) : ℝ))) ^ 2

end

end A066842.P3014281908656770466

/-! ## A066842.P4117846288457968696

`2^∑{d}[n+1, #*log2(#)]`
-/

namespace A066842.P4117846288457968696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) * Real.logb 2 (d : ℝ))

end

end A066842.P4117846288457968696

/-!
# A066843: a(n) = Product_{k=1..n} d(k); d(k) = A000005(k) is the number of positive divisors of k.

The programs for A066843, the canonical program `A066843.P18056148427984289734` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066843 has offset 0).

The definition of A066843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066843.P18056148427984289734

`a(n-1)*A000005(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066843

/-- `a(n-1)*A000005(n)` -/
def P18056148427984289734.Spec : Prop :=
  ∀ n, P18056148427984289734.a n = A066843 n

theorem P18056148427984289734.correct : P18056148427984289734.Spec := by
  intro n
  simp only [A066843]

end A066843

/-! ## A066843.P11609085839140646616

`∏[∏{e}[n, #+1]]`
-/

namespace A066843.P11609085839140646616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P11609085839140646616

namespace A066843

/-- `∏[∏{e}[n, #+1]]` -/
def P11609085839140646616.Spec : Prop :=
  ∀ n, (P11609085839140646616.a n : ℤ) = A066843 n

end A066843

/-! ## A066843.P15603950071232502732

`a(n-1)*∏{e}[n, #+1]` with `a(0)=1`
-/

namespace A066843.P15603950071232502732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A066843.P15603950071232502732

namespace A066843

/-- `a(n-1)*∏{e}[n, #+1]` -/
def P15603950071232502732.Spec : Prop :=
  ∀ n, (P15603950071232502732.a n : ℤ) = A066843 n

end A066843

/-! ## A066843.P17039538626667047902

`∏[Δ[A350102(n)]]`
-/

namespace A066843.P17039538626667047902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P17039538626667047902

namespace A066843

/-- `∏[Δ[A350102(n)]]` -/
def P17039538626667047902.Spec : Prop :=
  ∀ n, P17039538626667047902.a n = A066843 n

end A066843

/-! ## A066843.P17480232136897828946

`∏[A032741(n)+1]`
-/

namespace A066843.P17480232136897828946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P17480232136897828946

namespace A066843

/-- `∏[A032741(n)+1]` -/
def P17480232136897828946.Spec : Prop :=
  ∀ n, P17480232136897828946.a n = A066843 n

end A066843

/-! ## A066843.P7801505342512087818

`∏[A000005(A028310(n))]`
-/

namespace A066843.P7801505342512087818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P7801505342512087818

namespace A066843

/-- `∏[A000005(A028310(n))]` -/
def P7801505342512087818.Spec : Prop :=
  ∀ n, P7801505342512087818.a n = A066843 n

end A066843

/-! ## A066843.P8813537886112255197

`∏[A000005(n+1)]/A000005(n+1)`
-/

namespace A066843.P8813537886112255197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A066843.P8813537886112255197

namespace A066843

/-- `∏[A000005(n+1)]/A000005(n+1)` -/
def P8813537886112255197.Spec : Prop :=
  ∀ n, P8813537886112255197.a n = (A066843 n : ℚ)

end A066843

/-! ## A066843.P7371636063138506899

`abs(∏[A329484(n+1)]/A329484(n+1))`
-/

namespace A066843.P7371636063138506899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A329484 (n + 1) : ℚ)|

end

end A066843.P7371636063138506899

namespace A066843

/-- `abs(∏[A329484(n+1)]/A329484(n+1))` -/
def P7371636063138506899.Spec : Prop :=
  ∀ n, P7371636063138506899.a n = (A066843 n : ℚ)

end A066843

/-! ## A066843.P6886311425318792816

`∏[A055894(∑[n])]`
-/

namespace A066843.P6886311425318792816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055894 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P6886311425318792816

namespace A066843

/-- `∏[A055894(∑[n])]` -/
def P6886311425318792816.Spec : Prop :=
  ∀ n, P6886311425318792816.a n = A066843 n

end A066843

/-! ## A066843.P6399259718725679405

`∏[A194621(∑[n])]`
-/

namespace A066843.P6399259718725679405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P6399259718725679405

namespace A066843

/-- `∏[A194621(∑[n])]` -/
def P6399259718725679405.Spec : Prop :=
  ∀ n, P6399259718725679405.a n = A066843 n

end A066843

/-! ## A066843.P12636153623121962628

`∏[A238130(∑[n])]`
-/

namespace A066843.P12636153623121962628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P12636153623121962628

namespace A066843

/-- `∏[A238130(∑[n])]` -/
def P12636153623121962628.Spec : Prop :=
  ∀ n, P12636153623121962628.a n = A066843 n

end A066843

/-! ## A066843.P4542297021851979028

`∏[A238353(∑[n])]`
-/

namespace A066843.P4542297021851979028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P4542297021851979028

namespace A066843

/-- `∏[A238353(∑[n])]` -/
def P4542297021851979028.Spec : Prop :=
  ∀ n, P4542297021851979028.a n = A066843 n

end A066843

/-! ## A066843.P1381479234348907115

`a(n-1)*A046951(n²)` with `a(0)=1`
-/

namespace A066843.P1381479234348907115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A046951 (n ^ 2)

end

end A066843.P1381479234348907115

namespace A066843

/-- `a(n-1)*A046951(n²)` -/
def P1381479234348907115.Spec : Prop :=
  ∀ n, P1381479234348907115.a n = A066843 n

end A066843

/-! ## A066843.P9828636979560654178

`a(n-1)*A322483(n²)` with `a(0)=1`
-/

namespace A066843.P9828636979560654178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A322483 (n ^ 2)

end

end A066843.P9828636979560654178

namespace A066843

/-- `a(n-1)*A322483(n²)` -/
def P9828636979560654178.Spec : Prop :=
  ∀ n, P9828636979560654178.a n = A066843 n

end A066843

/-! ## A066843.P9870607597695423729

`a(n-1)*A332712(n²)` with `a(0)=1`
-/

namespace A066843.P9870607597695423729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A332712 (n ^ 2)

end

end A066843.P9870607597695423729

namespace A066843

/-- `a(n-1)*A332712(n²)` -/
def P9870607597695423729.Spec : Prop :=
  ∀ n, P9870607597695423729.a n = A066843 n

end A066843

/-! ## A066843.P16560958570102565313

`a(n-1)*A365171(n²)` with `a(0)=1`
-/

namespace A066843.P16560958570102565313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A365171 (n ^ 2)

end

end A066843.P16560958570102565313

namespace A066843

/-- `a(n-1)*A365171(n²)` -/
def P16560958570102565313.Spec : Prop :=
  ∀ n, P16560958570102565313.a n = A066843 n

end A066843

/-! ## A066843.P14167295518614455817

`a(n-1)*A367987(n²)` with `a(0)=1`
-/

namespace A066843.P14167295518614455817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A367987 (n ^ 2)

end

end A066843.P14167295518614455817

namespace A066843

/-- `a(n-1)*A367987(n²)` -/
def P14167295518614455817.Spec : Prop :=
  ∀ n, P14167295518614455817.a n = A066843 n

end A066843

/-!
# A066844: Film speeds.

The programs for A066844, there is no canonical definition to state claims against.
-/

/-! ## A066844.P1939705393271777873

`A320522(A329254(n+2)+1)`
-/

namespace A066844.P1939705393271777873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320522 (A329254 (n + 2) + 1).toNat

end

end A066844.P1939705393271777873

/-!
# A066845: a(n) = (lcm_{k=0..n} (2^k + 1))/(lcm_{k=0..n-1} (2^k + 1)).

The programs for A066845, there is no canonical definition to state claims against.
-/

/-! ## A066845.P9310744557021867215

`A020501(A022998(n+1)+A000038(n))`
-/

namespace A066845.P9310744557021867215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020501 (A022998 (n + 1) + A000038 n).toNat

end

end A066845.P9310744557021867215

/-! ## A066845.P7083768856877515553

`A019320(2*(n+1))`
-/

namespace A066845.P7083768856877515553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (2 * (n + 1))

end

end A066845.P7083768856877515553

/-! ## A066845.P17240579237043914842

`or(1, A019320(n+2+n))`
-/

namespace A066845.P17240579237043914842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A019320 (n + 2 + n))

end

end A066845.P17240579237043914842

/-! ## A066845.P6410136499815905816

`-Δ[-∑[A019320(2*n)]]`
-/

namespace A066845.P6410136499815905816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A066845.P6410136499815905816

/-! ## A066845.P8009178574435273340

`A064078(2*(n+1))*A250208(2*(n+1))`
-/

namespace A066845.P8009178574435273340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (2 * (n + 1)) * A250208 (2 * (n + 1))

end

end A066845.P8009178574435273340

/-!
# A066846: Numbers of the form a^a + b^b, a >= b > 0.

The programs for A066846, the canonical program `A066846.P13614351158377627118` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066846 has offset 0).

The definition of A066846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066846.P13614351158377627118

`A033918(n+1)+A000312(A002024(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066846

/-- `A033918(n+1)+A000312(A002024(n+1))` -/
def P13614351158377627118.Spec : Prop :=
  ∀ n, P13614351158377627118.a n = A066846 n

theorem P13614351158377627118.correct : P13614351158377627118.Spec := by
  intro n
  simp only [A066846]

end A066846

/-! ## A066846.P2379823159510058387

`A033918(n+1)+A033918(A127739(n+1))`
-/

namespace A066846.P2379823159510058387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) + A033918 (A127739 (n + 1)).toNat

end

end A066846.P2379823159510058387

namespace A066846

/-- `A033918(n+1)+A033918(A127739(n+1))` -/
def P2379823159510058387.Spec : Prop :=
  ∀ n, P2379823159510058387.a n = A066846 n

end A066846

/-! ## A066846.P10714076151080737370

`A218347(A080036(n+1))`
-/

namespace A066846.P10714076151080737370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218347 (A080036 (n + 1)).toNat

end

end A066846.P10714076151080737370

namespace A066846

/-- `A218347(A080036(n+1))` -/
def P10714076151080737370.Spec : Prop :=
  ∀ n, P10714076151080737370.a n = A066846 n

end A066846

/-! ## A066846.P3791552438614866076

`A218347(A007401(n+1)+2)`
-/

namespace A066846.P3791552438614866076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218347 (A007401 (n + 1) + 2).toNat

end

end A066846.P3791552438614866076

namespace A066846

/-- `A218347(A007401(n+1)+2)` -/
def P3791552438614866076.Spec : Prop :=
  ∀ n, P3791552438614866076.a n = A066846 n

end A066846

/-! ## A066846.P16010421624896339651

`A218347(A003056(n)+n+3)`
-/

namespace A066846.P16010421624896339651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218347 (A003056 n + (n + 3 : ℤ)).toNat

end

end A066846.P16010421624896339651

namespace A066846

/-- `A218347(A003056(n)+n+3)` -/
def P16010421624896339651.Spec : Prop :=
  ∀ n, P16010421624896339651.a n = A066846 n

end A066846

/-!
# A066847: Integers of the form m! + n!, m and n = positive integers.

The programs for A066847, the canonical program `A066847.P11671662793605075886` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066847 has offset 0).

The definition of A066847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066847.P9586543934663891905

`A166350(n+1)+∑[char[∑[n]]]!`
-/

namespace A066847.P9586543934663891905
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) + (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A066847.P9586543934663891905

namespace A066847

/-- `A166350(n+1)+∑[char[∑[n]]]!` -/
def P9586543934663891905.Spec : Prop :=
  ∀ n, P9586543934663891905.a n = A066847 n

end A066847

/-! ## A066847.P4163275067643895587

`A166350(n+1)+A130493(n+1)`
-/

namespace A066847.P4163275067643895587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) + A130493 (n + 1)

end

end A066847.P4163275067643895587

namespace A066847

/-- `A166350(n+1)+A130493(n+1)` -/
def P4163275067643895587.Spec : Prop :=
  ∀ n, P4163275067643895587.a n = A066847 n

end A066847

/-! ## A066847.P9854395836587596039

`record[A226005(n+1)!+A226005(n)!]`
-/

namespace A066847.P9854395836587596039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A226005 (n + 1)).toNat + Nat.factorial (A226005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066847.P9854395836587596039

namespace A066847

/-- `record[A226005(n+1)!+A226005(n)!]` -/
def P9854395836587596039.Spec : Prop :=
  ∀ n, (P9854395836587596039.a n : ℤ) = A066847 n

end A066847

/-! ## A066847.P11671662793605075886

`A002024(n+1)!+A002260(n+1)!`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066847

/-- `A002024(n+1)!+A002260(n+1)!` -/
def P11671662793605075886.Spec : Prop :=
  ∀ n, (P11671662793605075886.a n : ℤ) = A066847 n

theorem P11671662793605075886.correct : P11671662793605075886.Spec := by
  intro n
  simp only [A066847]

end A066847

/-! ## A066847.P10636904880180739704

`A166350(A004736(n+1)+n)+A166350(n+1)`
-/

namespace A066847.P10636904880180739704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A004736 (n + 1) + (n : ℤ)).toNat + A166350 (n + 1)

end

end A066847.P10636904880180739704

namespace A066847

/-- `A166350(A004736(n+1)+n)+A166350(n+1)` -/
def P10636904880180739704.Spec : Prop :=
  ∀ n, P10636904880180739704.a n = A066847 n

end A066847

/-! ## A066847.P8097023734324525798

`(A233543(n)+A094310(n+1))*A002260(n+1)`
-/

namespace A066847.P8097023734324525798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233543 n + A094310 (n + 1)) * A002260 (n + 1)

end

end A066847.P8097023734324525798

namespace A066847

/-- `(A233543(n)+A094310(n+1))*A002260(n+1)` -/
def P8097023734324525798.Spec : Prop :=
  ∀ n, P8097023734324525798.a n = A066847 n

end A066847

/-! ## A066847.P5571143705818564534

`A166350(n+1)+A002260(n+1)*A094310(n+1)`
-/

namespace A066847.P5571143705818564534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) + A002260 (n + 1) * A094310 (n + 1)

end

end A066847.P5571143705818564534

namespace A066847

/-- `A166350(n+1)+A002260(n+1)*A094310(n+1)` -/
def P5571143705818564534.Spec : Prop :=
  ∀ n, P5571143705818564534.a n = A066847 n

end A066847

/-! ## A066847.P6476049159224491692

`(A051683(n+1)+A001563(A002260(n+1)))/A002260(n+1)`
-/

namespace A066847.P6476049159224491692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (n + 1) + A001563 (A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A066847.P6476049159224491692

namespace A066847

/-- `(A051683(n+1)+A001563(A002260(n+1)))/A002260(n+1)` -/
def P6476049159224491692.Spec : Prop :=
  ∀ n, P6476049159224491692.a n = (A066847 n : ℚ)

end A066847

/-! ## A066847.P8294794266409804278

`A000120(A023758(n+2))!+A002024(n+1)!`
-/

namespace A066847.P8294794266409804278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 (A023758 (n + 2)).toNat).toNat + Nat.factorial (A002024 (n + 1)).toNat

end

end A066847.P8294794266409804278

namespace A066847

/-- `A000120(A023758(n+2))!+A002024(n+1)!` -/
def P8294794266409804278.Spec : Prop :=
  ∀ n, (P8294794266409804278.a n : ℤ) = A066847 n

end A066847

/-! ## A066847.P17920290527507204984

`record[Δ[A188064(2*n)]]`
-/

namespace A066847.P17920290527507204984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188064 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066847.P17920290527507204984

namespace A066847

/-- `record[Δ[A188064(2*n)]]` -/
def P17920290527507204984.Spec : Prop :=
  ∀ n, P17920290527507204984.a n = A066847 n

end A066847

/-!
# A066848: Consider sequence of fractions A066657/A066658 produced by ratios of terms in A066720; let m = smallest integer such that all fractions 1/n, 2/n, ..., (n-1)/n have appeared when we reach A066720(m) = k; sequence gives values of k; set a(n) = -1 if some fraction i/n never appears.

The programs for A066848, there is no canonical definition to state claims against.
-/

/-! ## A066848.P7343919624563676898

`A066720(A066849(n+1))`
-/

namespace A066848.P7343919624563676898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (A066849 (n + 1)).toNat

end

end A066848.P7343919624563676898

/-!
# A066849: Consider sequence of fractions A066657/A066658 produced by ratios of terms in A066720; let m = smallest integer such that all fractions 1/n, 2/n, ..., (n-1)/n have appeared when we reach A066720(m) = k; sequence gives values of m; set a(n) = -1 if some fraction i/n never appears.

The programs for A066849, there is no canonical definition to state claims against.
-/

/-! ## A066849.P8592987834856622020

`A181391(A199685(n)-1)-1`
-/

namespace A066849.P8592987834856622020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A199685 n - 1).toNat - 1

end

end A066849.P8592987834856622020

/-!
# A066851: Number of ordered solutions (x,y,z) to xy + yz + zx = n with x,y,z >= 1.

The programs for A066851, there is no canonical definition to state claims against.
-/

/-! ## A066851.P9030754390902771259

`A067751(n+1)-3*A000005(n+1)`
-/

namespace A066851.P9030754390902771259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067751 (n + 1) - 3 * A000005 (n + 1)

end

end A066851.P9030754390902771259

/-! ## A066851.P6940992654650882630

`∑{d}[n+1, A010052(#)*A066958((n+1)/#)]`
-/

namespace A066851.P6940992654650882630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A066958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066851.P6940992654650882630

/-! ## A066851.P12774041197949122348

`A316864(A221364(n))+A066958(n+1)`
-/

namespace A066851.P12774041197949122348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A221364 n).toNat + A066958 (n + 1)

end

end A066851.P12774041197949122348

/-! ## A066851.P3945087248965515405

`A072401(A000712(n))+A066958(n+1)`
-/

namespace A066851.P3945087248965515405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (A000712 n).toNat + A066958 (n + 1)

end

end A066851.P3945087248965515405

/-! ## A066851.P17539773747662245932

`or(A066958(n+1), A346632(A116608(3*n+1)))`
-/

namespace A066851.P17539773747662245932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066958 (n + 1)) (A346632 (A116608 (3 * n + 1)).toNat)

end

end A066851.P17539773747662245932

/-!
# A066852: Odd values arising in A066820.

The programs for A066852, there is no canonical definition to state claims against.
-/

/-! ## A066852.P8653671305785399457

`record[A093178(A066820(n+1))]`
-/

namespace A066852.P8653671305785399457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A066820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066852.P8653671305785399457

/-!
# A066853: Number of different remainders (or residues) for the Fibonacci numbers (A000045) when divided by n (i.e., the size of the set of F(i) mod n over all i).

The programs for A066853, there is no canonical definition to state claims against.
-/

/-! ## A066853.P15880967683490646231

`1-A118965(n+1)+n`
-/

namespace A066853.P15880967683490646231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A118965 (n + 1) + (n : ℤ)

end

end A066853.P15880967683490646231

/-! ## A066853.P10413809801719538548

`A024000(A118965(n+1))+n`
-/

namespace A066853.P10413809801719538548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A118965 (n + 1)).toNat + (n : ℤ)

end

end A066853.P10413809801719538548

/-! ## A066853.P627746242228782525

`abs(A118965(n+1)+A001478(n+1))`
-/

namespace A066853.P627746242228782525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118965 (n + 1) + A001478 (n + 1)|

end

end A066853.P627746242228782525

/-! ## A066853.P12306698479282000889

`A028242(2*n)-A118965(A028242(2*n))`
-/

namespace A066853.P12306698479282000889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - A118965 (A028242 (2 * n)).toNat

end

end A066853.P12306698479282000889

/-! ## A066853.P14532654952932594023

`A008611(3*n)-A118965(A008611(3*n))`
-/

namespace A066853.P14532654952932594023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) - A118965 (A008611 (3 * n)).toNat

end

end A066853.P14532654952932594023

/-! ## A066853.P14065580659228714882

`A004736(A118965(n+1)+A000124(n))`
-/

namespace A066853.P14065580659228714882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A118965 (n + 1) + A000124 n).toNat

end

end A066853.P14065580659228714882

/-! ## A066853.P14549330112232281008

`A025581(A118965(n+1)+A000217(n))+1`
-/

namespace A066853.P14549330112232281008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A118965 (n + 1) + A000217 n).toNat + 1

end

end A066853.P14549330112232281008

/-! ## A066853.P17587721752012293553

`A025581(A118965(n+1)+∑[n+1])`
-/

namespace A066853.P17587721752012293553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A118965 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A066853.P17587721752012293553

/-! ## A066853.P10401182219091133245

`Δ[eq[0, A189768(n+1)]]`
-/

namespace A066853.P10401182219091133245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189768 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A066853.P10401182219091133245

/-! ## A066853.P1210240352178476019

`A004736(A118965(n+1)+A001844(n))`
-/

namespace A066853.P1210240352178476019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A118965 (n + 1) + A001844 n).toNat

end

end A066853.P1210240352178476019

/-!
# A066855: Triangle T(n,k) of numbers of representations of n as a sum of k products of positive integers, k=1..n. 1 is not allowed as a factor, unless it is the only factor.Representations which differ only in the order of terms or factors are considered equivalent.

The programs for A066855, there is no canonical definition to state claims against.
-/

/-! ## A066855.P1073933397316384631

`A054123(n)+A000007(A152877(n))`
-/

namespace A066855.P1073933397316384631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n + A000007 (A152877 n).toNat

end

end A066855.P1073933397316384631

/-! ## A066855.P13243046001777634427

`A054123(n)*A349082(A051890(n))`
-/

namespace A066855.P13243046001777634427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n * A349082 (A051890 n).toNat

end

end A066855.P13243046001777634427

/-! ## A066855.P7764220118071921317

`∑{d}[A108756(n), A131296(A147028(#))]`
-/

namespace A066855.P7764220118071921317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A131296 (A147028 d).toNat

end

end A066855.P7764220118071921317

/-! ## A066855.P9949715699022606132

`A001222(A225640(n)+A225630(n)!)`
-/

namespace A066855.P9949715699022606132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225640 n + (Nat.factorial (A225630 n).toNat : ℤ)).toNat

end

end A066855.P9949715699022606132

/-! ## A066855.P6871430573747485514

`A119672(A121416(n))`
-/

namespace A066855.P6871430573747485514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119672 (A121416 n).toNat

end

end A066855.P6871430573747485514

/-!
# A066856: a(n) = omega(n!+1), where omega is the number of distinct primes dividing n, A001221.

The programs for A066856, there is no canonical definition to state claims against.
-/

/-! ## A066856.P18335847870846668733

`floor(log2(A064144(n+1)))`
-/

namespace A066856.P18335847870846668733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A064144 (n + 1)).toNat

end

end A066856.P18335847870846668733

/-! ## A066856.P18228929675293396650

`∑{e}[A064144(C(2, n²)+n+1), #]`
-/

namespace A066856.P18228929675293396650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064144 (Nat.choose 2 (n ^ 2) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A066856.P18228929675293396650

/-! ## A066856.P8208922473476765214

`A000523(A064144(n+1))`
-/

namespace A066856.P8208922473476765214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A064144 (n + 1)).toNat

end

end A066856.P8208922473476765214

/-! ## A066856.P15072006329652859300

`A000120(A064144(n+1)-1)`
-/

namespace A066856.P15072006329652859300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064144 (n + 1) - 1).toNat

end

end A066856.P15072006329652859300

/-! ## A066856.P13820400143596025468

`∑{e}[A064144(A000027(n+1)), #]`
-/

namespace A066856.P13820400143596025468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064144 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A066856.P13820400143596025468

/-! ## A066856.P18329571263503914207

`A001222(A064144(n+1)²)/2`
-/

namespace A066856.P18329571263503914207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A064144 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A066856.P18329571263503914207

/-! ## A066856.P3151979446161291557

`A070939(2*A064144(n+1))-2`
-/

namespace A066856.P3151979446161291557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A064144 (n + 1)).toNat - 2

end

end A066856.P3151979446161291557

/-! ## A066856.P13513943449328043739

`A054990(n+1)+A084846(n+1)²-1`
-/

namespace A066856.P13513943449328043739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1) + (A084846 (n + 1) ^ 2 - 1)

end

end A066856.P13513943449328043739

/-! ## A066856.P3872687317497027790

`A054990(n+1)-log2(A092984(n+1))`
-/

namespace A066856.P3872687317497027790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054990 (n + 1) : ℝ) - Real.logb 2 (A092984 (n + 1) : ℝ)

end

end A066856.P3872687317497027790

/-!
# A066857: Smallest number k such that n! - k is a square.

The programs for A066857, the canonical program `A066857.P5971232569893465926` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066857 has offset 1).

The definition of A066857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066857.P14689071120187051504

`(n+1)!-floor(sqrt((n+1)!))²`
-/

namespace A066857.P14689071120187051504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (Nat.sqrt (Nat.factorial (n + 1)) ^ 2 : ℤ)

end

end A066857.P14689071120187051504

namespace A066857

/-- `(n+1)!-floor(sqrt((n+1)!))²` -/
def P14689071120187051504.Spec : Prop :=
  ∀ n, P14689071120187051504.a n = A066857 (n + 1)

end A066857

/-! ## A066857.P13555576893188229448

`(n+1)!-A055226(n+1)²`
-/

namespace A066857.P13555576893188229448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A055226 (n + 1) ^ 2

end

end A066857.P13555576893188229448

namespace A066857

/-- `(n+1)!-A055226(n+1)²` -/
def P13555576893188229448.Spec : Prop :=
  ∀ n, P13555576893188229448.a n = A066857 (n + 1)

end A066857

/-! ## A066857.P5971232569893465926

`A053186((n+1)!)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066857

/-- `A053186((n+1)!)` -/
def P5971232569893465926.Spec : Prop :=
  ∀ n, P5971232569893465926.a n = A066857 (n + 1)

theorem P5971232569893465926.correct : P5971232569893465926.Spec := by
  intro n
  simp only [A066857, Nat.add_sub_cancel]

end A066857

/-! ## A066857.P18406207529697006605

`A000142(n+1)-A055226(n+1)²`
-/

namespace A066857.P18406207529697006605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A055226 (n + 1) ^ 2

end

end A066857.P18406207529697006605

namespace A066857

/-- `A000142(n+1)-A055226(n+1)²` -/
def P18406207529697006605.Spec : Prop :=
  ∀ n, P18406207529697006605.a n = A066857 (n + 1)

end A066857

/-!
# A066858: Smallest k>1 such that for each integer x, x^k=x or x^k=0 (mod n); or 0 if no such k exists.

The programs for A066858, there is no canonical definition to state claims against.
-/

/-! ## A066858.P6795379206848126767

`A263027(n+2)%A099375(A022105(n))`
-/

namespace A066858.P6795379206848126767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263027 (n + 2)) (A099375 (A022105 n).toNat)

end

end A066858.P6795379206848126767

/-! ## A066858.P14767349821273919093

`A263027(n+2)-A326292(A193958(n))`
-/

namespace A066858.P14767349821273919093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 2) - A326292 (A193958 n).toNat

end

end A066858.P14767349821273919093

/-!
# A066859: Product of sums of divisors and non-divisors.

The programs for A066859, the canonical program `A066859.P18175774334382217177` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066859 has offset 1).

The definition of A066859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066859.P18175774334382217177

`A000203(n+1)*A024816(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066859

/-- `A000203(n+1)*A024816(n+1)` -/
def P18175774334382217177.Spec : Prop :=
  ∀ n, P18175774334382217177.a n = A066859 (n + 1)

theorem P18175774334382217177.correct : P18175774334382217177.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel]

end A066859

/-! ## A066859.P18182495481734200997

`Δ[A160664(n)]*A024816(n+1)`
-/

namespace A066859.P18182495481734200997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A024816 (n + 1)

end

end A066859.P18182495481734200997

namespace A066859

/-- `Δ[A160664(n)]*A024816(n+1)` -/
def P18182495481734200997.Spec : Prop :=
  ∀ n, P18182495481734200997.a n = A066859 (n + 1)

end A066859

/-! ## A066859.P9610305240933387638

`A024816(n+1)*A245092(Δ[n²])`
-/

namespace A066859.P9610305240933387638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066859.P9610305240933387638

namespace A066859

/-- `A024816(n+1)*A245092(Δ[n²])` -/
def P9610305240933387638.Spec : Prop :=
  ∀ n, P9610305240933387638.a n = A066859 (n + 1)

end A066859

/-! ## A066859.P2218074292947994570

`∑[A340793(n+1)]*A024816(n+1)`
-/

namespace A066859.P2218074292947994570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A024816 (n + 1)

end

end A066859.P2218074292947994570

namespace A066859

/-- `∑[A340793(n+1)]*A024816(n+1)` -/
def P2218074292947994570.Spec : Prop :=
  ∀ n, P2218074292947994570.a n = A066859 (n + 1)

end A066859

/-! ## A066859.P5640001420494196822

`(A039653(n+1)+1)*A024816(n+1)`
-/

namespace A066859.P5640001420494196822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1) * A024816 (n + 1)

end

end A066859.P5640001420494196822

namespace A066859

/-- `(A039653(n+1)+1)*A024816(n+1)` -/
def P5640001420494196822.Spec : Prop :=
  ∀ n, P5640001420494196822.a n = A066859 (n + 1)

end A066859

/-! ## A066859.P3384291542685485284

`(A088580(n+1)-1)*A024816(n+1)`
-/

namespace A066859.P3384291542685485284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A024816 (n + 1)

end

end A066859.P3384291542685485284

namespace A066859

/-- `(A088580(n+1)-1)*A024816(n+1)` -/
def P3384291542685485284.Spec : Prop :=
  ∀ n, P3384291542685485284.a n = A066859 (n + 1)

theorem P3384291542685485284.correct : P3384291542685485284.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P3384291542685485284.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P7093258824314590457

`A024816(n+1)/2*A074400(n+1)`
-/

namespace A066859.P7093258824314590457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024816 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A066859.P7093258824314590457

namespace A066859

/-- `A024816(n+1)/2*A074400(n+1)` -/
def P7093258824314590457.Spec : Prop :=
  ∀ n, P7093258824314590457.a n = (A066859 (n + 1) : ℚ)

theorem P7093258824314590457.correct : P7093258824314590457.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P7093258824314590457.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P746069462871882917

`A239050(n+1)/4*A024816(n+1)`
-/

namespace A066859.P746069462871882917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (n + 1) : ℚ) / 4 * (A024816 (n + 1) : ℚ)

end

end A066859.P746069462871882917

namespace A066859

/-- `A239050(n+1)/4*A024816(n+1)` -/
def P746069462871882917.Spec : Prop :=
  ∀ n, P746069462871882917.a n = (A066859 (n + 1) : ℚ)

theorem P746069462871882917.correct : P746069462871882917.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P746069462871882917.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A239050, A239050.P11778751463060976919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P5817904208768840372

`floor(sqrt(A258774(n+1)))*A024816(n+1)`
-/

namespace A066859.P5817904208768840372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A258774 (n + 1)) * A024816 (n + 1)

end

end A066859.P5817904208768840372

namespace A066859

/-- `floor(sqrt(A258774(n+1)))*A024816(n+1)` -/
def P5817904208768840372.Spec : Prop :=
  ∀ n, P5817904208768840372.a n = A066859 (n + 1)

end A066859

/-! ## A066859.P14733455483407822658

`(∑[n]-A001065(n+1))*A000203(n+1)`
-/

namespace A066859.P14733455483407822658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1)) * A000203 (n + 1)

end

end A066859.P14733455483407822658

namespace A066859

/-- `(∑[n]-A001065(n+1))*A000203(n+1)` -/
def P14733455483407822658.Spec : Prop :=
  ∀ n, P14733455483407822658.a n = A066859 (n + 1)

end A066859

/-! ## A066859.P16165334797122496386

`(A001065(n+1)+1+n)*A024816(n+1)`
-/

namespace A066859.P16165334797122496386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ)) * A024816 (n + 1)

end

end A066859.P16165334797122496386

namespace A066859

/-- `(A001065(n+1)+1+n)*A024816(n+1)` -/
def P16165334797122496386.Spec : Prop :=
  ∀ n, P16165334797122496386.a n = A066859 (n + 1)

theorem P16165334797122496386.correct : P16165334797122496386.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P16165334797122496386.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A024816, A024816.P5963848523726637929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P11567042849315916429

`A064987(n+1)/(n+1)*A024816(n+1)`
-/

namespace A066859.P11567042849315916429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) * (A024816 (n + 1) : ℚ)

end

end A066859.P11567042849315916429

namespace A066859

/-- `A064987(n+1)/(n+1)*A024816(n+1)` -/
def P11567042849315916429.Spec : Prop :=
  ∀ n, P11567042849315916429.a n = (A066859 (n + 1) : ℚ)

end A066859

/-! ## A066859.P11693798885638374684

`(A237588(n+1)+Δ[n²])*A024816(n+1)`
-/

namespace A066859.P11693798885638374684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A024816 (n + 1)

end

end A066859.P11693798885638374684

namespace A066859

/-- `(A237588(n+1)+Δ[n²])*A024816(n+1)` -/
def P11693798885638374684.Spec : Prop :=
  ∀ n, P11693798885638374684.a n = A066859 (n + 1)

theorem P11693798885638374684.correct : P11693798885638374684.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P11693798885638374684.f1, A066859.P11693798885638374684.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A237588, A237588.P10590847318200798620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P15765763907431114713

`((n+1)²-A235799(n+1))*A024816(n+1)`
-/

namespace A066859.P15765763907431114713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A235799 (n + 1)) * A024816 (n + 1)

end

end A066859.P15765763907431114713

namespace A066859

/-- `((n+1)²-A235799(n+1))*A024816(n+1)` -/
def P15765763907431114713.Spec : Prop :=
  ∀ n, P15765763907431114713.a n = A066859 (n + 1)

theorem P15765763907431114713.correct : P15765763907431114713.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P15765763907431114713.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A235799, A235799.P7816509240272329688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P5939226744777433605

`(2*(n+1)-A033879(n+1))*A024816(n+1)`
-/

namespace A066859.P5939226744777433605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A033879 (n + 1)) * A024816 (n + 1)

end

end A066859.P5939226744777433605

namespace A066859

/-- `(2*(n+1)-A033879(n+1))*A024816(n+1)` -/
def P5939226744777433605.Spec : Prop :=
  ∀ n, P5939226744777433605.a n = A066859 (n + 1)

theorem P5939226744777433605.correct : P5939226744777433605.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P5939226744777433605.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P2877802376851786352

`(A253145(n)-A024816(n+1))*A024816(n+1)`
-/

namespace A066859.P2877802376851786352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253145 n - A024816 (n + 1)) * A024816 (n + 1)

end

end A066859.P2877802376851786352

namespace A066859

/-- `(A253145(n)-A024816(n+1))*A024816(n+1)` -/
def P2877802376851786352.Spec : Prop :=
  ∀ n, P2877802376851786352.a n = A066859 (n + 1)

end A066859

/-! ## A066859.P2033284348236040768

`(A048146(n+1)+A034448(n+1))*A024816(n+1)`
-/

namespace A066859.P2033284348236040768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1)) * A024816 (n + 1)

end

end A066859.P2033284348236040768

namespace A066859

/-- `(A048146(n+1)+A034448(n+1))*A024816(n+1)` -/
def P2033284348236040768.Spec : Prop :=
  ∀ n, P2033284348236040768.a n = A066859 (n + 1)

theorem P2033284348236040768.correct : P2033284348236040768.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P2033284348236040768.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A048146, A048146.P9985884013456677192.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P180097466910564594

`(A082052(n+1)+A050449(n+1))*A024816(n+1)`
-/

namespace A066859.P180097466910564594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082052 (n + 1) + A050449 (n + 1)) * A024816 (n + 1)

end

end A066859.P180097466910564594

namespace A066859

/-- `(A082052(n+1)+A050449(n+1))*A024816(n+1)` -/
def P180097466910564594.Spec : Prop :=
  ∀ n, P180097466910564594.a n = A066859 (n + 1)

theorem P180097466910564594.correct : P180097466910564594.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P180097466910564594.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P5759942784633195467

`(A117004(n+1)+A079667(n+1))*A024816(n+1)`
-/

namespace A066859.P5759942784633195467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117004 (n + 1) + A079667 (n + 1)) * A024816 (n + 1)

end

end A066859.P5759942784633195467

namespace A066859

/-- `(A117004(n+1)+A079667(n+1))*A024816(n+1)` -/
def P5759942784633195467.Spec : Prop :=
  ∀ n, P5759942784633195467.a n = A066859 (n + 1)

theorem P5759942784633195467.correct : P5759942784633195467.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P5759942784633195467.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024816, A024816.P5963848523726637929.a, A079667, A079667.P14511190976572101937.a, A117004, A117004.P4665019715661931704.a, A038548, A038548.P12593795823109361725.a, A357259, A357259.P10940546597892317752.f1, A357259.P10940546597892317752.a, A000005, A000005.P16091521709108585461.a, A056924, A056924.P8846060015044098494.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-! ## A066859.P2560902355501665708

`(A244048(n+1)+A004125(n+1))*A000203(n+1)`
-/

namespace A066859.P2560902355501665708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244048 (n + 1) + A004125 (n + 1)) * A000203 (n + 1)

end

end A066859.P2560902355501665708

namespace A066859

/-- `(A244048(n+1)+A004125(n+1))*A000203(n+1)` -/
def P2560902355501665708.Spec : Prop :=
  ∀ n, P2560902355501665708.a n = A066859 (n + 1)

theorem P2560902355501665708.correct : P2560902355501665708.Spec := by
  intro n
  simp only [A066859, Nat.add_sub_cancel, A066859.P2560902355501665708.a, A066859.P18175774334382217177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A004125, A004125.P17154347137318566864.a, A024816, A024816.P5963848523726637929.a, A244048, A244048.P6865276920681536651.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066859

/-!
# A066860: The sum of the non-divisors of n (less than n) is a multiple of the sum of the divisors of n.

The programs for A066860, there is no canonical definition to state claims against.
-/

/-! ## A066860.P16405016463970828871

`A076617(n+3)`
-/

namespace A066860.P16405016463970828871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076617 (n + 3)

end

end A066860.P16405016463970828871

/-! ## A066860.P4218306702614046187

`record[A076617(A052938(xor(1, n)))]`
-/

namespace A066860.P4218306702614046187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076617 (A052938 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066860.P4218306702614046187

/-! ## A066860.P6306510464632834712

`record[A076617(A052938(abs(1-n)))]`
-/

namespace A066860.P6306510464632834712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076617 (A052938 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066860.P6306510464632834712

/-! ## A066860.P11187173787499788188

`record[A076617(A327467(n))]`
-/

namespace A066860.P11187173787499788188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076617 (A327467 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066860.P11187173787499788188

/-! ## A066860.P17323664712834165842

`eq[A000007(n), A232324(n+2)]+2`
-/

namespace A066860.P17323664712834165842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232324 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066860.P17323664712834165842

/-!
# A066861: For x > 0 let f(x) = x/2 if x is even, f(x) = (3*x+1)/2 if x is odd (3x+1 or Collatz problem). Sequence gives numbers such that k-1 applications of f lead to k for some k > 0.

The programs for A066861, there is no canonical definition to state claims against.
-/

/-! ## A066861.P11917413129413908988

`lt[0, A258769(n+1)]+1`
-/

namespace A066861.P11917413129413908988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066861.P11917413129413908988

/-! ## A066861.P9608473287543713812

`lt[0, A258769(A000038(n)+n)]`
-/

namespace A066861.P9608473287543713812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258769 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066861.P9608473287543713812

/-! ## A066861.P2954612406201316752

`eq[3, A204892(a(A258769(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A066861.P2954612406201316752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A204892 (f2 (A258769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066861.P2954612406201316752

/-! ## A066861.P11917639965310602395

`eq[3, A211673(a(A258769(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A066861.P11917639965310602395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A211673 (f2 (A258769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066861.P11917639965310602395

/-! ## A066861.P12057930701862454015

`eq[3, A266977(a(A258769(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A066861.P12057930701862454015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A266977 (f2 (A258769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066861.P12057930701862454015

/-! ## A066861.P5834069069823167641

`eq[3, A210435(a(A258769(n)))]` with `a(0)=5, a(1)=3`
-/

namespace A066861.P5834069069823167641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n f2 =>
  A210435 (f2 (A258769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066861.P5834069069823167641

/-! ## A066861.P8110636604144638298

`eq[3, A265751(a(A258769(n)))]` with `a(0)=12, a(1)=3`
-/

namespace A066861.P8110636604144638298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [12, 3] fun n f2 =>
  A265751 (f2 (A258769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066861.P8110636604144638298

/-! ## A066861.P6724342437429525303

`lt[0, A258825(2*(n+1))]+1`
-/

namespace A066861.P6724342437429525303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258825 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066861.P6724342437429525303

/-! ## A066861.P14126340842386927185

`lt[0, A258825(A004277(n))]`
-/

namespace A066861.P14126340842386927185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258825 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066861.P14126340842386927185

/-! ## A066861.P10705955262303026368

`lt[0, A258825(A316571(n+1))]`
-/

namespace A066861.P10705955262303026368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258825 (A316571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066861.P10705955262303026368

/-!
# A066862: Numbers k such that k divides Sum_{i=1..k} gcd(k,i) = A018804(k).

The programs for A066862, there is no canonical definition to state claims against.
-/

/-! ## A066862.P17480927798288472696

`record[gcd(n+1, A006579(n+1))]`
-/

namespace A066862.P17480927798288472696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006579 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066862.P17480927798288472696

/-! ## A066862.P5692338188916606600

`record[gcd(A018804(n+2), n+2)]`
-/

namespace A066862.P5692338188916606600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018804 (n + 2)) (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066862.P5692338188916606600

/-! ## A066862.P14215394880073954626

`lt[A018804(n+1)%(n+1), 1]+1`
-/

namespace A066862.P14215394880073954626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018804 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066862.P14215394880073954626

/-! ## A066862.P1822046352015711197

`record[A028310(gcd(n, A209295(n)))]`
-/

namespace A066862.P1822046352015711197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A209295 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066862.P1822046352015711197

/-! ## A066862.P12208749100526436914

`record[gcd(A000027(n+1), A209295(n+1))]`
-/

namespace A066862.P12208749100526436914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A209295 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066862.P12208749100526436914

/-!
# A066863: Number of binary arrangements without adjacent 1's on n X n staggered hexagonal grid.

The programs for A066863, there is no canonical definition to state claims against.
-/

/-! ## A066863.P1153922212203780216

`A303273(A089243(2*n))+n`
-/

namespace A066863.P1153922212203780216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 (A089243 (2 * n)).toNat + (n : ℤ)

end

end A066863.P1153922212203780216

/-!
# A066864: Number of binary arrangements without adjacent 1's on n X n rhombic hexagonal grid.

The programs for A066864, there is no canonical definition to state claims against.
-/

/-! ## A066864.P6557904627600874750

`A226444(∑[4*(n+1)])`
-/

namespace A066864.P6557904627600874750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066864.P6557904627600874750

/-! ## A066864.P14911309660771230156

`record[A226444(∑[A108354(n)])]`
-/

namespace A066864.P14911309660771230156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066864.P14911309660771230156

/-! ## A066864.P6501958218074906288

`record[A226444(A226725(n+1))]`
-/

namespace A066864.P6501958218074906288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066864.P6501958218074906288

/-! ## A066864.P8943955143262197773

`record[A226444(n*A008619(n))]`
-/

namespace A066864.P8943955143262197773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066864.P8943955143262197773

/-! ## A066864.P5825321403407070314

`record[A226444(gcd(n, A049581(n)))]`
-/

namespace A066864.P5825321403407070314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (Int.gcd (n : ℤ) (A049581 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066864.P5825321403407070314

/-!
# A066867: Numbers n such that 2^n has 7 as its fourth decimal digit from the right.

The programs for A066867, there is no canonical definition to state claims against.
-/

/-! ## A066867.P14503831786169828049

`log2(A068345(n+1))`
-/

namespace A066867.P14503831786169828049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A068345 (n + 1) : ℝ)

end

end A066867.P14503831786169828049

/-!
# A066869: Sum of the first n safe primes.

The programs for A066869, the canonical program `A066869.P3582981788937882207` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066869 has offset 1).

The definition of A066869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066869.P3582981788937882207

`∑[A005385(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A066869

/-- `∑[A005385(n+1)]` -/
def P3582981788937882207.Spec : Prop :=
  ∀ n, P3582981788937882207.a n = A066869 (n + 1)

theorem P3582981788937882207.correct : P3582981788937882207.Spec := by
  intro n
  simp only [A066869, Nat.add_sub_cancel]

end A066869

/-! ## A066869.P10706682674766794197

`∑[A077065(n+1)+1]`
-/

namespace A066869.P10706682674766794197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P10706682674766794197

namespace A066869

/-- `∑[A077065(n+1)+1]` -/
def P10706682674766794197.Spec : Prop :=
  ∀ n, P10706682674766794197.a n = A066869 (n + 1)

theorem P10706682674766794197.correct : P10706682674766794197.Spec := by
  intro n
  simp only [A066869, Nat.add_sub_cancel, A066869.P10706682674766794197.f1, A066869.P10706682674766794197.a, A066869.P3582981788937882207.f1, A066869.P3582981788937882207.a, A005385, A005385.P12850744102754472242.a, A077065, A077065.P3431251406781570749.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066869

/-! ## A066869.P9659499571411135214

`∑[2*A005384(n+1)+1]`
-/

namespace A066869.P9659499571411135214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005384 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P9659499571411135214

namespace A066869

/-- `∑[2*A005384(n+1)+1]` -/
def P9659499571411135214.Spec : Prop :=
  ∀ n, P9659499571411135214.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P3245775311848558874

`∑[2*A176045(n+1)-1]`
-/

namespace A066869.P3245775311848558874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176045 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P3245775311848558874

namespace A066869

/-- `∑[2*A176045(n+1)-1]` -/
def P3245775311848558874.Spec : Prop :=
  ∀ n, P3245775311848558874.a n = A066869 (n + 1)

theorem P3245775311848558874.correct : P3245775311848558874.Spec := by
  intro n
  simp only [A066869, Nat.add_sub_cancel, A066869.P3245775311848558874.f1, A066869.P3245775311848558874.a, A066869.P3582981788937882207.f1, A066869.P3582981788937882207.a, A005385, A005385.P12850744102754472242.a, A176045, A176045.P10228396740254184789.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066869

/-! ## A066869.P17430252391140909192

`2*A066819(n+1)+n+1`
-/

namespace A066869.P17430252391140909192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066819 (n + 1) + (n + 1 : ℤ)

end

end A066869.P17430252391140909192

namespace A066869

/-- `2*A066819(n+1)+n+1` -/
def P17430252391140909192.Spec : Prop :=
  ∀ n, P17430252391140909192.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P9790003081055528378

`∑[A194593(n+2)/2]`
-/

namespace A066869.P9790003081055528378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194593 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P9790003081055528378

namespace A066869

/-- `∑[A194593(n+2)/2]` -/
def P9790003081055528378.Spec : Prop :=
  ∀ n, P9790003081055528378.a n = (A066869 (n + 1) : ℚ)

end A066869

/-! ## A066869.P15196045505008938082

`∑[A079148(n+3)]`
-/

namespace A066869.P15196045505008938082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P15196045505008938082

namespace A066869

/-- `∑[A079148(n+3)]` -/
def P15196045505008938082.Spec : Prop :=
  ∀ n, P15196045505008938082.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P3062971857477386255

`∑[p?[A065966(n+1)]]`
-/

namespace A066869.P3062971857477386255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P3062971857477386255

namespace A066869

/-- `∑[p?[A065966(n+1)]]` -/
def P3062971857477386255.Spec : Prop :=
  ∀ n, P3062971857477386255.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P9350534286302691420

`∑[p?[A395563(n+1)]]`
-/

namespace A066869.P9350534286302691420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P9350534286302691420

namespace A066869

/-- `∑[p?[A395563(n+1)]]` -/
def P9350534286302691420.Spec : Prop :=
  ∀ n, P9350534286302691420.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P17650914657823725810

`∑[record[A023590(n+1)]]`
-/

namespace A066869.P17650914657823725810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P17650914657823725810

namespace A066869

/-- `∑[record[A023590(n+1)]]` -/
def P17650914657823725810.Spec : Prop :=
  ∀ n, P17650914657823725810.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P7368743940006446405

`∑[record[A023592(n+1)]]`
-/

namespace A066869.P7368743940006446405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P7368743940006446405

namespace A066869

/-- `∑[record[A023592(n+1)]]` -/
def P7368743940006446405.Spec : Prop :=
  ∀ n, P7368743940006446405.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P2605280625093507463

`∑[record[A023594(n+1)]]`
-/

namespace A066869.P2605280625093507463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P2605280625093507463

namespace A066869

/-- `∑[record[A023594(n+1)]]` -/
def P2605280625093507463.Spec : Prop :=
  ∀ n, P2605280625093507463.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P631005848354804653

`∑[p?[A072055(n+1)]]`
-/

namespace A066869.P631005848354804653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P631005848354804653

namespace A066869

/-- `∑[p?[A072055(n+1)]]` -/
def P631005848354804653.Spec : Prop :=
  ∀ n, P631005848354804653.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P4205351432725892318

`∑[p?[A100484(n+1)+1]]`
-/

namespace A066869.P4205351432725892318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P4205351432725892318

namespace A066869

/-- `∑[p?[A100484(n+1)+1]]` -/
def P4205351432725892318.Spec : Prop :=
  ∀ n, P4205351432725892318.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P6350734781832722313

`∑[p?[2*A000040(n+1)+1]]`
-/

namespace A066869.P6350734781832722313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P6350734781832722313

namespace A066869

/-- `∑[p?[2*A000040(n+1)+1]]` -/
def P6350734781832722313.Spec : Prop :=
  ∀ n, P6350734781832722313.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P6573398871621224947

`∑[A072055(A072192(n+1))]`
-/

namespace A066869.P6573398871621224947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (A072192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P6573398871621224947

namespace A066869

/-- `∑[A072055(A072192(n+1))]` -/
def P6573398871621224947.Spec : Prop :=
  ∀ n, P6573398871621224947.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P18089220013919730829

`∑[p?[2*record[A020639(n+2)]+1]]`
-/

namespace A066869.P18089220013919730829
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P18089220013919730829

namespace A066869

/-- `∑[p?[2*record[A020639(n+2)]+1]]` -/
def P18089220013919730829.Spec : Prop :=
  ∀ n, P18089220013919730829.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P12514440645538423408

`∑[A070846(A005384(n+1))]`
-/

namespace A066869.P12514440645538423408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A005384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P12514440645538423408

namespace A066869

/-- `∑[A070846(A005384(n+1))]` -/
def P12514440645538423408.Spec : Prop :=
  ∀ n, P12514440645538423408.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P13210658733648485837

`∑[record[A006530(2*A000040(n+1)+1)]]`
-/

namespace A066869.P13210658733648485837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000040 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P13210658733648485837

namespace A066869

/-- `∑[record[A006530(2*A000040(n+1)+1)]]` -/
def P13210658733648485837.Spec : Prop :=
  ∀ n, P13210658733648485837.a n = A066869 (n + 1)

end A066869

/-! ## A066869.P17470191720045056219

`∑[record[A020639(2*A000040(n+1)+1)]]`
-/

namespace A066869.P17470191720045056219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A000040 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066869.P17470191720045056219

namespace A066869

/-- `∑[record[A020639(2*A000040(n+1)+1)]]` -/
def P17470191720045056219.Spec : Prop :=
  ∀ n, P17470191720045056219.a n = A066869 (n + 1)

end A066869

/-!
# A066872: a(n) = prime(n)^2 + 1.

The programs for A066872, the canonical program `A066872.P16166098773502812344` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066872 has offset 1).

The definition of A066872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)²+1` (program `A066872.P16166098773502812344`, by `A066872.P16166098773502812344.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066872.P16309924819967402

`1+A001248(n+1)`
-/

namespace A066872.P16309924819967402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001248 (n + 1)

end

end A066872.P16309924819967402

namespace A066872

/-- `1+A001248(n+1)` -/
def P16309924819967402.Spec : Prop :=
  ∀ n, P16309924819967402.a n = A066872 (n + 1)

theorem P16309924819967402.correct : P16309924819967402.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P16309924819967402.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-! ## A066872.P16166098773502812344

`A000040(n+1)²+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066872

/-- `A000040(n+1)²+1` -/
def P16166098773502812344.Spec : Prop :=
  ∀ n, P16166098773502812344.a n = A066872 (n + 1)

theorem P16166098773502812344.correct : P16166098773502812344.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel]

end A066872

/-! ## A066872.P13381333334338429412

`A002522(A000040(n+1))`
-/

namespace A066872.P13381333334338429412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A000040 (n + 1)).toNat

end

end A066872.P13381333334338429412

namespace A066872

/-- `A002522(A000040(n+1))` -/
def P13381333334338429412.Spec : Prop :=
  ∀ n, P13381333334338429412.a n = A066872 (n + 1)

end A066872

/-! ## A066872.P797274729999034341

`A000203(A000040(n+1)^3)/A000203(A000040(n+1))`
-/

namespace A066872.P797274729999034341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A000040 (n + 1) ^ 3).toNat : ℚ) / (A000203 (A000040 (n + 1)).toNat : ℚ)

end

end A066872.P797274729999034341

namespace A066872

/-- `A000203(A000040(n+1)^3)/A000203(A000040(n+1))` -/
def P797274729999034341.Spec : Prop :=
  ∀ n, P797274729999034341.a n = (A066872 (n + 1) : ℚ)

end A066872

/-! ## A066872.P5564542876657870730

`A061725(n+1)-1`
-/

namespace A066872.P5564542876657870730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - 1

end

end A066872.P5564542876657870730

namespace A066872

/-- `A061725(n+1)-1` -/
def P5564542876657870730.Spec : Prop :=
  ∀ n, P5564542876657870730.a n = A066872 (n + 1)

theorem P5564542876657870730.correct : P5564542876657870730.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P5564542876657870730.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061725, A061725.P7248628641150990420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-! ## A066872.P12301393534385176883

`A084920(n+1)+2`
-/

namespace A066872.P12301393534385176883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + 2

end

end A066872.P12301393534385176883

namespace A066872

/-- `A084920(n+1)+2` -/
def P12301393534385176883.Spec : Prop :=
  ∀ n, P12301393534385176883.a n = A066872 (n + 1)

theorem P12301393534385176883.correct : P12301393534385176883.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P12301393534385176883.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-! ## A066872.P16850714012569542798

`A049001(n+1)+3`
-/

namespace A066872.P16850714012569542798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 3

end

end A066872.P16850714012569542798

namespace A066872

/-- `A049001(n+1)+3` -/
def P16850714012569542798.Spec : Prop :=
  ∀ n, P16850714012569542798.a n = A066872 (n + 1)

theorem P16850714012569542798.correct : P16850714012569542798.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P16850714012569542798.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-! ## A066872.P9573933500217965017

`A182200(n+1)+4`
-/

namespace A066872.P9573933500217965017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + 4

end

end A066872.P9573933500217965017

namespace A066872

/-- `A182200(n+1)+4` -/
def P9573933500217965017.Spec : Prop :=
  ∀ n, P9573933500217965017.a n = A066872 (n + 1)

theorem P9573933500217965017.correct : P9573933500217965017.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P9573933500217965017.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A182200, A182200.P11759421930425352337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-! ## A066872.P17267455807911996034

`A287922(n+1)-3`
-/

namespace A066872.P17267455807911996034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1) - 3

end

end A066872.P17267455807911996034

namespace A066872

/-- `A287922(n+1)-3` -/
def P17267455807911996034.Spec : Prop :=
  ∀ n, P17267455807911996034.a n = A066872 (n + 1)

end A066872

/-! ## A066872.P14843481351334041203

`A166010(n+1)+5`
-/

namespace A066872.P14843481351334041203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + 5

end

end A066872.P14843481351334041203

namespace A066872

/-- `A166010(n+1)+5` -/
def P14843481351334041203.Spec : Prop :=
  ∀ n, P14843481351334041203.a n = A066872 (n + 1)

theorem P14843481351334041203.correct : P14843481351334041203.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P14843481351334041203.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A166010, A166010.P2375559703123786713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-! ## A066872.P9058617571764731761

`A153480(n)/2+3`
-/

namespace A066872.P9058617571764731761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153480 n : ℚ) / 2 + 3

end

end A066872.P9058617571764731761

namespace A066872

/-- `A153480(n)/2+3` -/
def P9058617571764731761.Spec : Prop :=
  ∀ n, P9058617571764731761.a n = (A066872 (n + 1) : ℚ)

theorem P9058617571764731761.correct : P9058617571764731761.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P9058617571764731761.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153480, A153480.P7601742437354690742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-! ## A066872.P4703703861858643507

`Δ[A007504(n)]²+1`
-/

namespace A066872.P4703703861858643507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A066872.P4703703861858643507

namespace A066872

/-- `Δ[A007504(n)]²+1` -/
def P4703703861858643507.Spec : Prop :=
  ∀ n, P4703703861858643507.a n = A066872 (n + 1)

end A066872

/-! ## A066872.P3342195660760489372

`Δ[A008348(n)]²+1`
-/

namespace A066872.P3342195660760489372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A066872.P3342195660760489372

namespace A066872

/-- `Δ[A008348(n)]²+1` -/
def P3342195660760489372.Spec : Prop :=
  ∀ n, P3342195660760489372.a n = A066872 (n + 1)

end A066872

/-! ## A066872.P1243153224576737567

`Δ[A022837(n)]²+1`
-/

namespace A066872.P1243153224576737567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A066872.P1243153224576737567

namespace A066872

/-- `Δ[A022837(n)]²+1` -/
def P1243153224576737567.Spec : Prop :=
  ∀ n, P1243153224576737567.a n = A066872 (n + 1)

end A066872

/-! ## A066872.P3826947178183786897

`Δ[A064365(n)]²+1`
-/

namespace A066872.P3826947178183786897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A066872.P3826947178183786897

namespace A066872

/-- `Δ[A064365(n)]²+1` -/
def P3826947178183786897.Spec : Prop :=
  ∀ n, P3826947178183786897.a n = A066872 (n + 1)

end A066872

/-! ## A066872.P13035967403880356092

`Δ[A309222(n)]²+1`
-/

namespace A066872.P13035967403880356092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A066872.P13035967403880356092

namespace A066872

/-- `Δ[A309222(n)]²+1` -/
def P13035967403880356092.Spec : Prop :=
  ∀ n, P13035967403880356092.a n = A066872 (n + 1)

end A066872

/-! ## A066872.P338051618332319870

`1+A000040(n+1)²`
-/

namespace A066872.P338051618332319870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000040 (n + 1) ^ 2

end

end A066872.P338051618332319870

namespace A066872

/-- `1+A000040(n+1)²` -/
def P338051618332319870.Spec : Prop :=
  ∀ n, P338051618332319870.a n = A066872 (n + 1)

theorem P338051618332319870.correct : P338051618332319870.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P338051618332319870.a, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066872

/-! ## A066872.P999735608666057204

`A079704(n+1)/2+1`
-/

namespace A066872.P999735608666057204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2 + 1

end

end A066872.P999735608666057204

namespace A066872

/-- `A079704(n+1)/2+1` -/
def P999735608666057204.Spec : Prop :=
  ∀ n, P999735608666057204.a n = (A066872 (n + 1) : ℚ)

theorem P999735608666057204.correct : P999735608666057204.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P999735608666057204.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079704, A079704.P2518524558801344655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-! ## A066872.P13067747331742063789

`A079705(n+1)/3+1`
-/

namespace A066872.P13067747331742063789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) : ℚ) / 3 + 1

end

end A066872.P13067747331742063789

namespace A066872

/-- `A079705(n+1)/3+1` -/
def P13067747331742063789.Spec : Prop :=
  ∀ n, P13067747331742063789.a n = (A066872 (n + 1) : ℚ)

theorem P13067747331742063789.correct : P13067747331742063789.Spec := by
  intro n
  simp only [A066872, Nat.add_sub_cancel, A066872.P13067747331742063789.a, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079705, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066872

/-!
# A066873: Number of amicable pairs where smaller term of the pair is less than 10^n.

The programs for A066873, there is no canonical definition to state claims against.
-/

/-! ## A066873.P4640566420598498556

`A295556(A373638(n))`
-/

namespace A066873.P4640566420598498556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295556 (A373638 n).toNat

end

end A066873.P4640566420598498556

/-! ## A066873.P10854782928043758828

`A112671(A261049(n)+1)`
-/

namespace A066873.P10854782928043758828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112671 (A261049 n + 1).toNat

end

end A066873.P10854782928043758828

/-! ## A066873.P398290312347091395

`A000108(n)-A003263(A000670(n))`
-/

namespace A066873.P398290312347091395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A003263 (A000670 n).toNat

end

end A066873.P398290312347091395

/-!
# A066874: Number of partitions of n into unitary divisors of n.

The programs for A066874, there is no canonical definition to state claims against.
-/

/-! ## A066874.P237605572918405730

`A210442(A007947(n+1))+A055396(A000799(n+1))`
-/

namespace A066874.P237605572918405730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A007947 (n + 1)).toNat + A055396 (A000799 (n + 1)).toNat

end

end A066874.P237605572918405730

/-! ## A066874.P5457232492129221526

`A210442(A088835(n+1))+A055396(A000799(n+1))`
-/

namespace A066874.P5457232492129221526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A088835 (n + 1)).toNat + A055396 (A000799 (n + 1)).toNat

end

end A066874.P5457232492129221526

/-!
# A066875: Numbers k such that prime(k+1) + prime(k-1) = 2*prime(k).

The programs for A066875, there is no canonical definition to state claims against.
-/

/-! ## A066875.P15112880711074256790

`A000720(A006562(n+1))`
-/

namespace A066875.P15112880711074256790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006562 (n + 1)).toNat

end

end A066875.P15112880711074256790

/-! ## A066875.P12169772437149823850

`A064113(n+1)+1`
-/

namespace A066875.P12169772437149823850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1) + 1

end

end A066875.P12169772437149823850

/-! ## A066875.P14422950619822256448

`A356347(n+1)-1`
-/

namespace A066875.P14422950619822256448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356347 (n + 1) - 1

end

end A066875.P14422950619822256448

/-! ## A066875.P1865877833103542654

`∑[A333216(n+1)]+1`
-/

namespace A066875.P1865877833103542654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066875.P1865877833103542654

/-! ## A066875.P11559150373508584692

`A333216(n+1)+A173390(n+1)`
-/

namespace A066875.P11559150373508584692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (n + 1) + A173390 (n + 1)

end

end A066875.P11559150373508584692

/-! ## A066875.P16141118275199818832

`A173390(n+2)`
-/

namespace A066875.P16141118275199818832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (n + 2)

end

end A066875.P16141118275199818832

/-! ## A066875.P1789378164581320630

`A066491(2*(n+1))`
-/

namespace A066875.P1789378164581320630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066491 (2 * (n + 1))

end

end A066875.P1789378164581320630

/-! ## A066875.P10613621070760835995

`A066491(Δ[n²])+1`
-/

namespace A066875.P10613621070760835995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A066875.P10613621070760835995

/-! ## A066875.P8853723697418949188

`lt[A036263(n+1)², 1]+2`
-/

namespace A066875.P8853723697418949188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A066875.P8853723697418949188

/-! ## A066875.P14942056571046428126

`∑[A145024(n+1)]`
-/

namespace A066875.P14942056571046428126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066875.P14942056571046428126

/-! ## A066875.P13453313359152314636

`lt[A079054(n+2)², 1]+2`
-/

namespace A066875.P13453313359152314636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A066875.P13453313359152314636

/-! ## A066875.P7127785544241138877

`∩[A046868(n+1), A216075(n+1)]`
-/

namespace A066875.P7127785544241138877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066875.P7127785544241138877

/-! ## A066875.P6900859541974749810

`eq[1, A179835(n+1)]+1`
-/

namespace A066875.P6900859541974749810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066875.P6900859541974749810

/-! ## A066875.P15599833348480647958

`eq[1, A053597(n+1)]+2`
-/

namespace A066875.P15599833348480647958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066875.P15599833348480647958

/-! ## A066875.P5643418446407867076

`eq[1, A073272(n+1)]+2`
-/

namespace A066875.P5643418446407867076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066875.P5643418446407867076

/-! ## A066875.P16325009383718028604

`eq[1, A073274(n+1)]+2`
-/

namespace A066875.P16325009383718028604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066875.P16325009383718028604

/-! ## A066875.P13394396677254842117

`eq[1, A083552(n+1)]+2`
-/

namespace A066875.P13394396677254842117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066875.P13394396677254842117

/-! ## A066875.P14196056153773450997

`lt[2, A031217(n+1)]+2`
-/

namespace A066875.P14196056153773450997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A066875.P14196056153773450997

/-! ## A066875.P12612935777132949154

`eq[2, A108415(n+2)]+2`
-/

namespace A066875.P12612935777132949154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066875.P12612935777132949154

/-!
# A066876: Numbers n such that prime(k+2) + prime(k-2) = 2*prime(k).

The programs for A066876, the canonical program `A066876.P931542748291788386` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066876 has offset 1).

The definition of A066876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066876.P12935311541737692222

`eq[A115061(n+3), A115061(n+1)]+2`
-/

namespace A066876.P12935311541737692222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066876.P12935311541737692222

namespace A066876

/-- `eq[A115061(n+3), A115061(n+1)]+2` -/
def P12935311541737692222.Spec : Prop :=
  ∀ n, (P12935311541737692222.a n : ℤ) = A066876 (n + 1)

end A066876

/-! ## A066876.P931542748291788386

`eq[A159461((2*n)%(n+1)+1), A159461(n+2)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A066876

/-- `eq[A159461((2*n)%(n+1)+1), A159461(n+2)]+1` -/
def P931542748291788386.Spec : Prop :=
  ∀ n, (P931542748291788386.a n : ℤ) = A066876 (n + 1)

theorem P931542748291788386.correct : P931542748291788386.Spec := by
  intro n
  simp only [A066876, Nat.add_sub_cancel]

end A066876

/-! ## A066876.P13967195418444652078

`A000720(A179208(n+1))`
-/

namespace A066876.P13967195418444652078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A179208 (n + 1)).toNat

end

end A066876.P13967195418444652078

namespace A066876

/-- `A000720(A179208(n+1))` -/
def P13967195418444652078.Spec : Prop :=
  ∀ n, P13967195418444652078.a n = A066876 (n + 1)

end A066876

/-! ## A066876.P4105058949793030953

`A061395(or(1, A179208(n+1)))`
-/

namespace A066876.P4105058949793030953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A179208 (n + 1))).toNat

end

end A066876.P4105058949793030953

namespace A066876

/-- `A061395(or(1, A179208(n+1)))` -/
def P4105058949793030953.Spec : Prop :=
  ∀ n, P4105058949793030953.a n = A066876 (n + 1)

end A066876

/-! ## A066876.P17450438320731077158

`A061395(A179208(n+1)%A017318(n))`
-/

namespace A066876.P17450438320731077158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A179208 (n + 1)) (A017318 n)).toNat

end

end A066876.P17450438320731077158

namespace A066876

/-- `A061395(A179208(n+1)%A017318(n))` -/
def P17450438320731077158.Spec : Prop :=
  ∀ n, P17450438320731077158.a n = A066876 (n + 1)

end A066876

/-! ## A066876.P8912310393064110709

`A061395(A179208(n+1))%A030078(n+1)`
-/

namespace A066876.P8912310393064110709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A179208 (n + 1)).toNat) (A030078 (n + 1))

end

end A066876.P8912310393064110709

namespace A066876

/-- `A061395(A179208(n+1))%A030078(n+1)` -/
def P8912310393064110709.Spec : Prop :=
  ∀ n, P8912310393064110709.a n = A066876 (n + 1)

end A066876

/-! ## A066876.P6224726788272495402

`A061395(2*A179208(n+1))`
-/

namespace A066876.P6224726788272495402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A179208 (n + 1)).toNat

end

end A066876.P6224726788272495402

namespace A066876

/-- `A061395(2*A179208(n+1))` -/
def P6224726788272495402.Spec : Prop :=
  ∀ n, P6224726788272495402.a n = A066876 (n + 1)

end A066876

/-!
# A066877: a(n) = omega(n!-1), where omega is the number of distinct primes dividing n, A001221.

The programs for A066877, there is no canonical definition to state claims against.
-/

/-! ## A066877.P6328106918220131235

`A001222(A064145(round(sqrt(n²+1))+1))`
-/

namespace A066877.P6328106918220131235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064145 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat).toNat

end

end A066877.P6328106918220131235

/-! ## A066877.P12525069538791064864

`and(A001055(A020335(3*n+2)), A054991(n+1))`
-/

namespace A066877.P12525069538791064864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001055 (A020335 (3 * n + 2)).toNat) (A054991 (n + 1))

end

end A066877.P12525069538791064864

/-!
# A066878: Primes of the form p^3 - 2 where p is prime.

The programs for A066878, there is no canonical definition to state claims against.
-/

/-! ## A066878.P2909056421514988523

`p?[A038599(n+1)]^3-2`
-/

namespace A066878.P2909056421514988523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3 - 2

end

end A066878.P2909056421514988523

/-! ## A066878.P17919910217354507722

`A178251(n+1)^3-2`
-/

namespace A066878.P17919910217354507722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1) ^ 3 - 2

end

end A066878.P17919910217354507722

/-! ## A066878.P13057833725652327755

`∩[A038600(n+1), A153481(n+1)]`
-/

namespace A066878.P13057833725652327755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066878.P13057833725652327755

/-! ## A066878.P16032823801796830212

`A270437(A178251(n+1))-2`
-/

namespace A066878.P16032823801796830212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270437 (A178251 (n + 1)).toNat - 2

end

end A066878.P16032823801796830212

/-! ## A066878.P2582011934012975977

`A077037(A178251(n+1))`
-/

namespace A066878.P2582011934012975977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077037 (A178251 (n + 1)).toNat

end

end A066878.P2582011934012975977

/-! ## A066878.P2523890500912419024

`A181758(p?[A038599(n+1)])`
-/

namespace A066878.P2523890500912419024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181758 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066878.P2523890500912419024

/-! ## A066878.P3672953946830521286

`A000578(p?[A038599(n+1)])-2`
-/

namespace A066878.P3672953946830521286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A066878.P3672953946830521286

/-! ## A066878.P16347274519750543091

`∩[A153481(n+1), A181758(n+1)]`
-/

namespace A066878.P16347274519750543091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066878.P16347274519750543091

/-! ## A066878.P12064000304124673462

`∩[A038600(n+1), A389431(n+1)]`
-/

namespace A066878.P12064000304124673462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066878.P12064000304124673462

/-!
# A066879: n such that there are as many 1's as 0's in the base 2 expansion of Floor(n/2).

The programs for A066879, the canonical program `A066879.P3288200711147566699` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066879 has offset 1).

The definition of A066879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066879.P3288200711147566699

`∪[2*A031443(n+1)+1, 2*A031443(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A066879

/-- `∪[2*A031443(n+1)+1, 2*A031443(n+1)]` -/
def P3288200711147566699.Spec : Prop :=
  ∀ n, (P3288200711147566699.a n : ℤ) = A066879 (n + 1)

theorem P3288200711147566699.correct : P3288200711147566699.Spec := by
  intro n
  simp only [A066879, Nat.add_sub_cancel]

end A066879

/-! ## A066879.P1352119628912412428

`eq[0, A037861(floor(n/2))]`
-/

namespace A066879.P1352119628912412428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066879.P1352119628912412428

namespace A066879

/-- `eq[0, A037861(floor(n/2))]` -/
def P1352119628912412428.Spec : Prop :=
  ∀ n, (P1352119628912412428.a n : ℤ) = A066879 (n + 1)

end A066879

/-! ## A066879.P2628842769176196220

`eq[2, A099246(floor(n/2))]`
-/

namespace A066879.P2628842769176196220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066879.P2628842769176196220

namespace A066879

/-- `eq[2, A099246(floor(n/2))]` -/
def P2628842769176196220.Spec : Prop :=
  ∀ n, (P2628842769176196220.a n : ℤ) = A066879 (n + 1)

end A066879

/-! ## A066879.P3341897622993230939

`eq[A105812(n), A145037(n)]`
-/

namespace A066879.P3341897622993230939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066879.P3341897622993230939

namespace A066879

/-- `eq[A105812(n), A145037(n)]` -/
def P3341897622993230939.Spec : Prop :=
  ∀ n, (P3341897622993230939.a n : ℤ) = A066879 (n + 1)

end A066879

/-! ## A066879.P16247940691820478063

`eq[-A037861(n), A105812(n)]`
-/

namespace A066879.P16247940691820478063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066879.P16247940691820478063

namespace A066879

/-- `eq[-A037861(n), A105812(n)]` -/
def P16247940691820478063.Spec : Prop :=
  ∀ n, (P16247940691820478063.a n : ℤ) = A066879 (n + 1)

end A066879

/-! ## A066879.P17164260173586024638

`eq[A037861(n), A089263(A266662(n))]`
-/

namespace A066879.P17164260173586024638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A266662 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066879.P17164260173586024638

namespace A066879

/-- `eq[A037861(n), A089263(A266662(n))]` -/
def P17164260173586024638.Spec : Prop :=
  ∀ n, (P17164260173586024638.a n : ℤ) = A066879 (n + 1)

end A066879

/-! ## A066879.P2218656471027035131

`eq[A037861(n), A105812(A037861(n)+n)]`
-/

namespace A066879.P2218656471027035131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A037861 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066879.P2218656471027035131

namespace A066879

/-- `eq[A037861(n), A105812(A037861(n)+n)]` -/
def P2218656471027035131.Spec : Prop :=
  ∀ n, (P2218656471027035131.a n : ℤ) = A066879 (n + 1)

end A066879

/-! ## A066879.P15159310373105166061

`eq[A037861(n), A056594(A266447(n))]`
-/

namespace A066879.P15159310373105166061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A266447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066879.P15159310373105166061

namespace A066879

/-- `eq[A037861(n), A056594(A266447(n))]` -/
def P15159310373105166061.Spec : Prop :=
  ∀ n, (P15159310373105166061.a n : ℤ) = A066879 (n + 1)

end A066879

/-! ## A066879.P2641721046572577333

`eq[A037861(n), A105812(A013634(n))]`
-/

namespace A066879.P2641721046572577333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A013634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066879.P2641721046572577333

namespace A066879

/-- `eq[A037861(n), A105812(A013634(n))]` -/
def P2641721046572577333.Spec : Prop :=
  ∀ n, (P2641721046572577333.a n : ℤ) = A066879 (n + 1)

end A066879

/-!
# A066880: Biased numbers: n such that all terms of the sequence f(n), f(f(n)), f(f(f(n))), ..., 1, where f(k) = floor(k/2), are odd.

The programs for A066880, the canonical program `A066880.P14339248073713596955` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066880 has offset 1).

The definition of A066880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066880.P7708062122067617113

`ogf((2+3x-2x^3)/(1-3x^2+2x^4))`
-/

namespace A066880.P7708062122067617113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 0, -2] [1, 0, -3, 0, 2] n

end

end A066880.P7708062122067617113

namespace A066880

/-- `ogf((2+3x-2x^3)/(1-3x^2+2x^4))` -/
def P7708062122067617113.Spec : Prop :=
  ∀ n, P7708062122067617113.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P14339248073713596955

`2^floor((n+4)/2)-1-(n+1)%2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066880

/-- `2^floor((n+4)/2)-1-(n+1)%2` -/
def P14339248073713596955.Spec : Prop :=
  ∀ n, P14339248073713596955.a n = (A066880 (n + 1) : ℚ)

end A066880

/-! ## A066880.P16409786325335019029

`or(n, lcm(2, a(n-1)))` with `a(0)=2`
-/

namespace A066880.P16409786325335019029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor n (Nat.lcm 2 (a (n - 1)))

end

end A066880.P16409786325335019029

namespace A066880

/-- `or(n, lcm(2, a(n-1)))` -/
def P16409786325335019029.Spec : Prop :=
  ∀ n, (P16409786325335019029.a n : ℤ) = A066880 (n + 1)

end A066880

/-! ## A066880.P8018453257755359698

`or(n, 2*(∏[gcd(2, n)]-1))`
-/

namespace A066880.P8018453257755359698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (2 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1))

end

end A066880.P8018453257755359698

namespace A066880

/-- `or(n, 2*(∏[gcd(2, n)]-1))` -/
def P8018453257755359698.Spec : Prop :=
  ∀ n, P8018453257755359698.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P10598715104697019540

`or(n, ∑[2*a(n-2)])` with `a(0)=2, a(1)=0`
-/

namespace A066880.P10598715104697019540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066880.P10598715104697019540

namespace A066880

/-- `or(n, ∑[2*a(n-2)])` -/
def P10598715104697019540.Spec : Prop :=
  ∀ n, (P10598715104697019540.a n : ℤ) = A066880 (n + 1)

end A066880

/-! ## A066880.P7114519159334583301

`or(n, 2*(∏[-or(n, -2)]-1))`
-/

namespace A066880.P7114519159334583301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (2 * (∏ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A066880.P7114519159334583301

namespace A066880

/-- `or(n, 2*(∏[-or(n, -2)]-1))` -/
def P7114519159334583301.Spec : Prop :=
  ∀ n, P7114519159334583301.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P9932335193946476115

`or(a(n-1)+1, a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A066880.P9932335193946476115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Nat.lor (a (n - 1) + 1) (a (n - 2))

end

end A066880.P9932335193946476115

namespace A066880

/-- `or(a(n-1)+1, a(n-2))` -/
def P9932335193946476115.Spec : Prop :=
  ∀ n, (P9932335193946476115.a n : ℤ) = A066880 (n + 1)

end A066880

/-! ## A066880.P3300863967651076307

`or(2*a(n-2), a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A066880.P3300863967651076307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Nat.lor (2 * a (n - 2)) (a (n - 2))

end

end A066880.P3300863967651076307

namespace A066880

/-- `or(2*a(n-2), a(n-2))` -/
def P3300863967651076307.Spec : Prop :=
  ∀ n, (P3300863967651076307.a n : ℤ) = A066880 (n + 1)

end A066880

/-! ## A066880.P10772836701855006031

`2*(a(n-2)+1)-n%2` with `a(0)=2, a(1)=3`
-/

namespace A066880.P10772836701855006031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * (a (n - 2) + 1) - ((n % 2 : ℕ) : ℤ)

end

end A066880.P10772836701855006031

namespace A066880

/-- `2*(a(n-2)+1)-n%2` -/
def P10772836701855006031.Spec : Prop :=
  ∀ n, P10772836701855006031.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P6647837108483764411

`a(n-1)+a(n-1)^and(1, n+1)` with `a(0)=2`
-/

namespace A066880.P6647837108483764411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + a (n - 1) ^ Nat.land 1 (n + 1)

end

end A066880.P6647837108483764411

namespace A066880

/-- `a(n-1)+a(n-1)^and(1, n+1)` -/
def P6647837108483764411.Spec : Prop :=
  ∀ n, (P6647837108483764411.a n : ℤ) = A066880 (n + 1)

end A066880

/-! ## A066880.P7882415074154241118

`a(n-1)+gcd((n+2)%2, a(n-1))` with `a(0)=2`
-/

namespace A066880.P7882415074154241118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.gcd ((n + 2) % 2) (a (n - 1))

end

end A066880.P7882415074154241118

namespace A066880

/-- `a(n-1)+gcd((n+2)%2, a(n-1))` -/
def P7882415074154241118.Spec : Prop :=
  ∀ n, (P7882415074154241118.a n : ℤ) = A066880 (n + 1)

end A066880

/-! ## A066880.P15246025353588661076

`2-(a(n-2)%2-2*a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A066880.P15246025353588661076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 - (Int.tmod (a (n - 2)) 2 - 2 * a (n - 2))

end

end A066880.P15246025353588661076

namespace A066880

/-- `2-(a(n-2)%2-2*a(n-2))` -/
def P15246025353588661076.Spec : Prop :=
  ∀ n, P15246025353588661076.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P12953857554084212682

`2-(1-a(n-1))*gcd(4, a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A066880.P12953857554084212682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 - (1 - a (n - 1)) * (Int.gcd 4 (a (n - 2)) : ℤ)

end

end A066880.P12953857554084212682

namespace A066880

/-- `2-(1-a(n-1))*gcd(4, a(n-2))` -/
def P12953857554084212682.Spec : Prop :=
  ∀ n, P12953857554084212682.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P17232649829238048995

`a(n-2)+a(n-1)%2+a(n-2)+1` with `a(0)=2, a(1)=3`
-/

namespace A066880.P17232649829238048995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (a (n - 1) % 2 + (a (n - 2) + 1))

end

end A066880.P17232649829238048995

namespace A066880

/-- `a(n-2)+a(n-1)%2+a(n-2)+1` -/
def P17232649829238048995.Spec : Prop :=
  ∀ n, (P17232649829238048995.a n : ℤ) = A066880 (n + 1)

end A066880

/-! ## A066880.P3440548021943992671

`3-((2-a(n-1))%a(n-2)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A066880.P3440548021943992671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 - (Int.tmod (2 - a (n - 1)) (a (n - 2)) - a (n - 2))

end

end A066880.P3440548021943992671

namespace A066880

/-- `3-((2-a(n-1))%a(n-2)-a(n-2))` -/
def P3440548021943992671.Spec : Prop :=
  ∀ n, P3440548021943992671.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P16547350456413320472

`A075427(n+1)`
-/

namespace A066880.P16547350456413320472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (n + 1)

end

end A066880.P16547350456413320472

namespace A066880

/-- `A075427(n+1)` -/
def P16547350456413320472.Spec : Prop :=
  ∀ n, P16547350456413320472.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P3160802091690954389

`A097110(n+2)-1`
-/

namespace A066880.P3160802091690954389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 (n + 2) - 1

end

end A066880.P3160802091690954389

namespace A066880

/-- `A097110(n+2)-1` -/
def P3160802091690954389.Spec : Prop :=
  ∀ n, P3160802091690954389.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P16459927790277163855

`or(n, A056453(n+3))`
-/

namespace A066880.P16459927790277163855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A056453 (n + 3))

end

end A066880.P16459927790277163855

namespace A066880

/-- `or(n, A056453(n+3))` -/
def P16459927790277163855.Spec : Prop :=
  ∀ n, P16459927790277163855.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P15628449915174778554

`or(n, 2*A052551(n))`
-/

namespace A066880.P15628449915174778554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (2 * A052551 n)

end

end A066880.P15628449915174778554

namespace A066880

/-- `or(n, 2*A052551(n))` -/
def P15628449915174778554.Spec : Prop :=
  ∀ n, P15628449915174778554.a n = A066880 (n + 1)

end A066880

/-! ## A066880.P12240695666361477844

`record[A075427(abs(1-n))]`
-/

namespace A066880.P12240695666361477844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066880.P12240695666361477844

namespace A066880

/-- `record[A075427(abs(1-n))]` -/
def P12240695666361477844.Spec : Prop :=
  ∀ n, P12240695666361477844.a n = A066880 (n + 1)

end A066880

/-!
# A066882: Number of partitions of n into prime divisors of n.

The programs for A066882, there is no canonical definition to state claims against.
-/

/-! ## A066882.P5954477847501031140

`A107329(A000217(abs(1-n)+1))`
-/

namespace A066882.P5954477847501031140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107329 (A000217 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A066882.P5954477847501031140

/-! ## A066882.P18380411266304326452

`A258198(2*A284463(n))`
-/

namespace A066882.P18380411266304326452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (2 * A284463 n).toNat

end

end A066882.P18380411266304326452

/-! ## A066882.P13419350413754488399

`A109301(A284463(n)+1)`
-/

namespace A066882.P13419350413754488399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (A284463 n + 1).toNat

end

end A066882.P13419350413754488399

/-! ## A066882.P13800949505330899991

`A151962(5*A284463(n))`
-/

namespace A066882.P13800949505330899991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 (5 * A284463 n).toNat

end

end A066882.P13800949505330899991

/-! ## A066882.P9046889150876483405

`A000194(A056792(A284463(n)²))`
-/

namespace A066882.P9046889150876483405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A056792 (A284463 n ^ 2).toNat).toNat

end

end A066882.P9046889150876483405

/-!
# A066883: Number of primes in the interval [p(n), p(n)^2] minus p(n), where p(n) is the n-th prime.

The programs for A066883, the canonical program `A066883.P6672544760734734469` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066883 has offset 1).

The definition of A066883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066883.P6672544760734734469

`A054272(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066883

/-- `A054272(n+1)-A000040(n+1)` -/
def P6672544760734734469.Spec : Prop :=
  ∀ n, P6672544760734734469.a n = A066883 (n + 1)

theorem P6672544760734734469.correct : P6672544760734734469.Spec := by
  intro n
  simp only [A066883, Nat.add_sub_cancel]

end A066883

/-! ## A066883.P10068883826851574554

`∑[A050216(n)]-A095116(n+1)`
-/

namespace A066883.P10068883826851574554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095116 (n + 1)

end

end A066883.P10068883826851574554

namespace A066883

/-- `∑[A050216(n)]-A095116(n+1)` -/
def P10068883826851574554.Spec : Prop :=
  ∀ n, P10068883826851574554.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P5654660377074024586

`A054272(n+1)-Δ[A007504(n)]`
-/

namespace A066883.P5654660377074024586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) - (f1 (n + 1) - f1 n)

end

end A066883.P5654660377074024586

namespace A066883

/-- `A054272(n+1)-Δ[A007504(n)]` -/
def P5654660377074024586.Spec : Prop :=
  ∀ n, P5654660377074024586.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P17510800910852639609

`A000879(n+1)-A095116(n+1)`
-/

namespace A066883.P17510800910852639609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - A095116 (n + 1)

end

end A066883.P17510800910852639609

namespace A066883

/-- `A000879(n+1)-A095116(n+1)` -/
def P17510800910852639609.Spec : Prop :=
  ∀ n, P17510800910852639609.a n = A066883 (n + 1)

theorem P17510800910852639609.correct : P17510800910852639609.Spec := by
  intro n
  simp only [A066883, Nat.add_sub_cancel, A066883.P17510800910852639609.a, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A095116, A095116.P2789422422958858773.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066883

/-! ## A066883.P10711221294585168053

`A250473(n+1)-A008864(n+1)`
-/

namespace A066883.P10711221294585168053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - A008864 (n + 1)

end

end A066883.P10711221294585168053

namespace A066883

/-- `A250473(n+1)-A008864(n+1)` -/
def P10711221294585168053.Spec : Prop :=
  ∀ n, P10711221294585168053.a n = A066883 (n + 1)

theorem P10711221294585168053.correct : P10711221294585168053.Spec := by
  intro n
  simp only [A066883, Nat.add_sub_cancel, A066883.P10711221294585168053.a, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A054272, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066883

/-! ## A066883.P13705970598731196614

`A250474(n+1)-A052147(n+1)`
-/

namespace A066883.P13705970598731196614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - A052147 (n + 1)

end

end A066883.P13705970598731196614

namespace A066883

/-- `A250474(n+1)-A052147(n+1)` -/
def P13705970598731196614.Spec : Prop :=
  ∀ n, P13705970598731196614.a n = A066883 (n + 1)

theorem P13705970598731196614.correct : P13705970598731196614.Spec := by
  intro n
  simp only [A066883, Nat.add_sub_cancel, A066883.P13705970598731196614.a, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066883

/-! ## A066883.P6233132254194029228

`∑[A050216(n)-1]-A006093(n+1)`
-/

namespace A066883.P6233132254194029228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006093 (n + 1)

end

end A066883.P6233132254194029228

namespace A066883

/-- `∑[A050216(n)-1]-A006093(n+1)` -/
def P6233132254194029228.Spec : Prop :=
  ∀ n, P6233132254194029228.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P10816021547298903933

`∑[A050216(n)]-(A000040(n+1)+n)`
-/

namespace A066883.P10816021547298903933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000040 (n + 1) + (n : ℤ))

end

end A066883.P10816021547298903933

namespace A066883

/-- `∑[A050216(n)]-(A000040(n+1)+n)` -/
def P10816021547298903933.Spec : Prop :=
  ∀ n, P10816021547298903933.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P2178657538905259581

`A000879(n+1)-(Δ[A007504(n)]+n)`
-/

namespace A066883.P2178657538905259581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A066883.P2178657538905259581

namespace A066883

/-- `A000879(n+1)-(Δ[A007504(n)]+n)` -/
def P2178657538905259581.Spec : Prop :=
  ∀ n, P2178657538905259581.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P9536779179038016649

`A250473(n+1)-(A000040(n+1)+1)`
-/

namespace A066883.P9536779179038016649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - (A000040 (n + 1) + 1)

end

end A066883.P9536779179038016649

namespace A066883

/-- `A250473(n+1)-(A000040(n+1)+1)` -/
def P9536779179038016649.Spec : Prop :=
  ∀ n, P9536779179038016649.a n = A066883 (n + 1)

theorem P9536779179038016649.correct : P9536779179038016649.Spec := by
  intro n
  simp only [A066883, Nat.add_sub_cancel, A066883.P9536779179038016649.a, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054272, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066883

/-! ## A066883.P4342081376238856073

`A250474(n+1)-(A000040(n+1)+2)`
-/

namespace A066883.P4342081376238856073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - (A000040 (n + 1) + 2)

end

end A066883.P4342081376238856073

namespace A066883

/-- `A250474(n+1)-(A000040(n+1)+2)` -/
def P4342081376238856073.Spec : Prop :=
  ∀ n, P4342081376238856073.a n = A066883 (n + 1)

theorem P4342081376238856073.correct : P4342081376238856073.Spec := by
  intro n
  simp only [A066883, Nat.add_sub_cancel, A066883.P4342081376238856073.a, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066883

/-! ## A066883.P15564019331222904657

`A250473(n+1)-(A040976(n+1)+3)`
-/

namespace A066883.P15564019331222904657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - (A040976 (n + 1) + 3)

end

end A066883.P15564019331222904657

namespace A066883

/-- `A250473(n+1)-(A040976(n+1)+3)` -/
def P15564019331222904657.Spec : Prop :=
  ∀ n, P15564019331222904657.a n = A066883 (n + 1)

theorem P15564019331222904657.correct : P15564019331222904657.Spec := by
  intro n
  simp only [A066883, Nat.add_sub_cancel, A066883.P15564019331222904657.a, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A054272, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066883

/-! ## A066883.P8640586784170377348

`A000879(n+1)-(A000040(n+1)+n)`
-/

namespace A066883.P8640586784170377348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - (A000040 (n + 1) + (n : ℤ))

end

end A066883.P8640586784170377348

namespace A066883

/-- `A000879(n+1)-(A000040(n+1)+n)` -/
def P8640586784170377348.Spec : Prop :=
  ∀ n, P8640586784170377348.a n = A066883 (n + 1)

theorem P8640586784170377348.correct : P8640586784170377348.Spec := by
  intro n
  simp only [A066883, Nat.add_sub_cancel, A066883.P8640586784170377348.a, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066883

/-! ## A066883.P10294961038072959070

`A250473(n+1)-record[A000010(n+1)+2]`
-/

namespace A066883.P10294961038072959070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066883.P10294961038072959070

namespace A066883

/-- `A250473(n+1)-record[A000010(n+1)+2]` -/
def P10294961038072959070.Spec : Prop :=
  ∀ n, P10294961038072959070.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P13888881986176839768

`A276824(n+1)+A007504(n)-n`
-/

namespace A066883.P13888881986176839768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276824 (n + 1) + (A007504 n - (n : ℤ))

end

end A066883.P13888881986176839768

namespace A066883

/-- `A276824(n+1)+A007504(n)-n` -/
def P13888881986176839768.Spec : Prop :=
  ∀ n, P13888881986176839768.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P4404931870158678379

`A062773(n+1)-A014688(n+1)`
-/

namespace A066883.P4404931870158678379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - A014688 (n + 1)

end

end A066883.P4404931870158678379

namespace A066883

/-- `A062773(n+1)-A014688(n+1)` -/
def P4404931870158678379.Spec : Prop :=
  ∀ n, P4404931870158678379.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P4480389356837908391

`A250473(n+1)-(lt[A039651(n+1), 1]+2)`
-/

namespace A066883.P4480389356837908391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ)

end

end A066883.P4480389356837908391

namespace A066883

/-- `A250473(n+1)-(lt[A039651(n+1), 1]+2)` -/
def P4480389356837908391.Spec : Prop :=
  ∀ n, P4480389356837908391.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P768984325247590454

`A073882(A008578(n+2))-A008578(n+2)`
-/

namespace A066883.P768984325247590454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (A008578 (n + 2)).toNat - A008578 (n + 2)

end

end A066883.P768984325247590454

namespace A066883

/-- `A073882(A008578(n+2))-A008578(n+2)` -/
def P768984325247590454.Spec : Prop :=
  ∀ n, P768984325247590454.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P108074813375155201

`A073882(A182986(n+2))-A182986(n+2)`
-/

namespace A066883.P108074813375155201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (A182986 (n + 2)).toNat - A182986 (n + 2)

end

end A066883.P108074813375155201

namespace A066883

/-- `A073882(A182986(n+2))-A182986(n+2)` -/
def P108074813375155201.Spec : Prop :=
  ∀ n, P108074813375155201.a n = A066883 (n + 1)

end A066883

/-! ## A066883.P1209208853081086138

`A079047(n+1)-A006093(n+1)`
-/

namespace A066883.P1209208853081086138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079047 (n + 1) - A006093 (n + 1)

end

end A066883.P1209208853081086138

namespace A066883

/-- `A079047(n+1)-A006093(n+1)` -/
def P1209208853081086138.Spec : Prop :=
  ∀ n, P1209208853081086138.a n = A066883 (n + 1)

end A066883

/-!
# A066884: Square array read by upward antidiagonals where the n-th row contains the positive integers with n binary 1's.

The programs for A066884, there is no canonical definition to state claims against.
-/

/-! ## A066884.P12341141844468527431

`A067576(∑[char[∑[n]]]²-n)`
-/

namespace A066884.P12341141844468527431
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067576 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A066884.P12341141844468527431

/-! ## A066884.P17464031578253385406

`A020985(n)²*A067576(A038722(n+1))`
-/

namespace A066884.P17464031578253385406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A067576 (A038722 (n + 1)).toNat

end

end A066884.P17464031578253385406

/-! ## A066884.P1916418355314943705

`A067576(A038722(n+1))+A000007(n+1)`
-/

namespace A066884.P1916418355314943705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067576 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A066884.P1916418355314943705

/-! ## A066884.P4886586592552762662

`A067576(A061579(n)+1)/gcd(2, A004767(n))`
-/

namespace A066884.P4886586592552762662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067576 (A061579 n + 1).toNat : ℚ) / (Int.gcd 2 (A004767 n) : ℚ)

end

end A066884.P4886586592552762662

/-! ## A066884.P15897072915191613277

`A008836(n+1)²*A067576(A038722(n+1))`
-/

namespace A066884.P15897072915191613277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A067576 (A038722 (n + 1)).toNat

end

end A066884.P15897072915191613277

/-! ## A066884.P15467117945369754120

`A067576(A038722(n+1))%A293321(n)`
-/

namespace A066884.P15467117945369754120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067576 (A038722 (n + 1)).toNat) (A293321 n)

end

end A066884.P15467117945369754120

/-! ## A066884.P4263556709885400985

`A139432(A139433(n+1))+A067576(A038722(n+1))`
-/

namespace A066884.P4263556709885400985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 (A139433 (n + 1)).toNat + A067576 (A038722 (n + 1)).toNat

end

end A066884.P4263556709885400985

/-! ## A066884.P7966562028011621009

`A263018(A067576(n+1))`
-/

namespace A066884.P7966562028011621009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263018 (A067576 (n + 1)).toNat

end

end A066884.P7966562028011621009

/-!
# A066885: a(n) = (prime(n)^2 + 1)/2.

The programs for A066885, the canonical program `A066885.P10827567578802423542` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066885 has offset 2).

The definition of A066885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066885.P10827567578802423542

`1+A084921(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066885

/-- `1+A084921(n+2)` -/
def P10827567578802423542.Spec : Prop :=
  ∀ n, P10827567578802423542.a n = A066885 (n + 2)

theorem P10827567578802423542.correct : P10827567578802423542.Spec := by
  intro n
  simp only [A066885, Nat.add_sub_cancel]

end A066885

/-! ## A066885.P17692264754124849268

`(A000040(n+2)²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066885.P17692264754124849268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) ^ 2 + 1 : ℚ) / 2

end

end A066885.P17692264754124849268

namespace A066885

/-- `(A000040(n+2)²+1)/2` -/
def P17692264754124849268.Spec : Prop :=
  ∀ n, P17692264754124849268.a n = (A066885 (n + 2) : ℚ)

end A066885

/-! ## A066885.P17430499538154745320

`ceil(p?[2*n+1]²/2)`
-/

namespace A066885.P17430499538154745320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 2⌉

end

end A066885.P17430499538154745320

namespace A066885

/-- `ceil(p?[2*n+1]²/2)` -/
def P17430499538154745320.Spec : Prop :=
  ∀ n, P17430499538154745320.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P14728566704807189067

`round(p?[2*n+1]²/2)`
-/

namespace A066885.P14728566704807189067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 2)

end

end A066885.P14728566704807189067

namespace A066885

/-- `round(p?[2*n+1]²/2)` -/
def P14728566704807189067.Spec : Prop :=
  ∀ n, P14728566704807189067.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P2338315841450326980

`ceil(cosh(log(p?[2*n+1]²)))`
-/

namespace A066885.P2338315841450326980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℝ))⌉

end

end A066885.P2338315841450326980

namespace A066885

/-- `ceil(cosh(log(p?[2*n+1]²)))` -/
def P2338315841450326980.Spec : Prop :=
  ∀ n, P2338315841450326980.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P4790370310913550002

`round(cosh(log(p?[2*n+1]²)))`
-/

namespace A066885.P4790370310913550002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℝ)))

end

end A066885.P4790370310913550002

namespace A066885

/-- `round(cosh(log(p?[2*n+1]²)))` -/
def P4790370310913550002.Spec : Prop :=
  ∀ n, P4790370310913550002.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P10509422636480929031

`ceil(sinh(log(p?[2*n+1]²)))`
-/

namespace A066885.P10509422636480929031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℝ))⌉

end

end A066885.P10509422636480929031

namespace A066885

/-- `ceil(sinh(log(p?[2*n+1]²)))` -/
def P10509422636480929031.Spec : Prop :=
  ∀ n, P10509422636480929031.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P10765427713245768061

`(p?[2*n+1]²+1)/2`
-/

namespace A066885.P10765427713245768061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℚ) / 2

end

end A066885.P10765427713245768061

namespace A066885

/-- `(p?[2*n+1]²+1)/2` -/
def P10765427713245768061.Spec : Prop :=
  ∀ n, P10765427713245768061.a n = (A066885 (n + 2) : ℚ)

end A066885

/-! ## A066885.P15055377237836043174

`(lcm(2, p?[a(n-1)+2]²)+2)/4` with `a(0)=1`
-/

namespace A066885.P15055377237836043174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2) + 2 : ℚ) / 4

end

end A066885.P15055377237836043174

namespace A066885

/-- `(lcm(2, p?[a(n-1)+2]²)+2)/4` -/
def P15055377237836043174.Spec : Prop :=
  ∀ n, P15055377237836043174.a n = (A066885 (n + 2) : ℚ)

end A066885

/-! ## A066885.P4396090584372265827

`∑[A124434(n+1)]`
-/

namespace A066885.P4396090584372265827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066885.P4396090584372265827

namespace A066885

/-- `∑[A124434(n+1)]` -/
def P4396090584372265827.Spec : Prop :=
  ∀ n, P4396090584372265827.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P13067680420979300228

`A216244(n+2)+1`
-/

namespace A066885.P13067680420979300228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 2) + 1

end

end A066885.P13067680420979300228

namespace A066885

/-- `A216244(n+2)+1` -/
def P13067680420979300228.Spec : Prop :=
  ∀ n, P13067680420979300228.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P9756171968404599592

`A243887(n+1)+2`
-/

namespace A066885.P9756171968404599592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243887 (n + 1) + 2

end

end A066885.P9756171968404599592

namespace A066885

/-- `A243887(n+1)+2` -/
def P9756171968404599592.Spec : Prop :=
  ∀ n, P9756171968404599592.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P6197814730275063678

`A066872(n+2)/2`
-/

namespace A066885.P6197814730275063678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 2) : ℚ) / 2

end

end A066885.P6197814730275063678

namespace A066885

/-- `A066872(n+2)/2` -/
def P6197814730275063678.Spec : Prop :=
  ∀ n, P6197814730275063678.a n = (A066885 (n + 2) : ℚ)

end A066885

/-! ## A066885.P8462573842541985028

`2*A024701(n+1)+1`
-/

namespace A066885.P8462573842541985028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024701 (n + 1) + 1

end

end A066885.P8462573842541985028

namespace A066885

/-- `2*A024701(n+1)+1` -/
def P8462573842541985028.Spec : Prop :=
  ∀ n, P8462573842541985028.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P73964297628632940

`2*A074367(n+1)+3`
-/

namespace A066885.P73964297628632940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074367 (n + 1) + 3

end

end A066885.P73964297628632940

namespace A066885

/-- `2*A074367(n+1)+3` -/
def P73964297628632940.Spec : Prop :=
  ∀ n, P73964297628632940.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P10762269247444581200

`4*A061066(n+2)+1`
-/

namespace A066885.P10762269247444581200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061066 (n + 2) + 1

end

end A066885.P10762269247444581200

namespace A066885

/-- `4*A061066(n+2)+1` -/
def P10762269247444581200.Spec : Prop :=
  ∀ n, P10762269247444581200.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P10637762306150989834

`(A143928(n+1)+2)/4`
-/

namespace A066885.P10637762306150989834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143928 (n + 1) + 2 : ℚ) / 4

end

end A066885.P10637762306150989834

namespace A066885

/-- `(A143928(n+1)+2)/4` -/
def P10637762306150989834.Spec : Prop :=
  ∀ n, P10637762306150989834.a n = (A066885 (n + 2) : ℚ)

end A066885

/-! ## A066885.P8570116325450993334

`2*A222963(n+2)+5`
-/

namespace A066885.P8570116325450993334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222963 (n + 2) + 5

end

end A066885.P8570116325450993334

namespace A066885

/-- `2*A222963(n+2)+5` -/
def P8570116325450993334.Spec : Prop :=
  ∀ n, P8570116325450993334.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P921859513768340058

`ceil(A065091(n+1)²/2)`
-/

namespace A066885.P921859513768340058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065091 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A066885.P921859513768340058

namespace A066885

/-- `ceil(A065091(n+1)²/2)` -/
def P921859513768340058.Spec : Prop :=
  ∀ n, P921859513768340058.a n = A066885 (n + 2)

end A066885

/-! ## A066885.P9324682513829642878

`A144519(n+1)-A005097(n+1)`
-/

namespace A066885.P9324682513829642878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144519 (n + 1) - A005097 (n + 1)

end

end A066885.P9324682513829642878

namespace A066885

/-- `A144519(n+1)-A005097(n+1)` -/
def P9324682513829642878.Spec : Prop :=
  ∀ n, P9324682513829642878.a n = A066885 (n + 2)

end A066885

/-!
# A066886: Sum of the elements in any transversal of a prime(n) X prime(n) array containing the numbers from 1 to prime(n)^2 in standard order.

The programs for A066886, the canonical program `A066886.P15018994144281950338` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066886 has offset 1).

The definition of A066886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066886.P15018994144281950338

`A006003(A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066886

/-- `A006003(A000040(n+1))` -/
def P15018994144281950338.Spec : Prop :=
  ∀ n, P15018994144281950338.a n = A066886 (n + 1)

theorem P15018994144281950338.correct : P15018994144281950338.Spec := by
  intro n
  simp only [A066886, Nat.add_sub_cancel]

end A066886

/-! ## A066886.P15290808169999445484

`floor(A181150(n+1)/2)`
-/

namespace A066886.P15290808169999445484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181150 (n + 1) : ℚ) / 2⌋

end

end A066886.P15290808169999445484

namespace A066886

/-- `floor(A181150(n+1)/2)` -/
def P15290808169999445484.Spec : Prop :=
  ∀ n, P15290808169999445484.a n = A066886 (n + 1)

end A066886

/-! ## A066886.P4764263878725990486

`A127918(n+1)+A000040(n+1)`
-/

namespace A066886.P4764263878725990486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127918 (n + 1) + A000040 (n + 1)

end

end A066886.P4764263878725990486

namespace A066886

/-- `A127918(n+1)+A000040(n+1)` -/
def P4764263878725990486.Spec : Prop :=
  ∀ n, P4764263878725990486.a n = A066886 (n + 1)

end A066886

/-! ## A066886.P672235098058938435

`A138416(n+1)+A034953(n+1)`
-/

namespace A066886.P672235098058938435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) + A034953 (n + 1)

end

end A066886.P672235098058938435

namespace A066886

/-- `A138416(n+1)+A034953(n+1)` -/
def P672235098058938435.Spec : Prop :=
  ∀ n, P672235098058938435.a n = A066886 (n + 1)

end A066886

/-! ## A066886.P3036067700377529814

`A030078(n+1)-A127918(n+1)`
-/

namespace A066886.P3036067700377529814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A127918 (n + 1)

end

end A066886.P3036067700377529814

namespace A066886

/-- `A030078(n+1)-A127918(n+1)` -/
def P3036067700377529814.Spec : Prop :=
  ∀ n, P3036067700377529814.a n = A066886 (n + 1)

end A066886

/-! ## A066886.P15000137013175748289

`A179546(n+1)-A116995(n+1)`
-/

namespace A066886.P15000137013175748289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179546 (n + 1) - A116995 (n + 1)

end

end A066886.P15000137013175748289

namespace A066886

/-- `A179546(n+1)-A116995(n+1)` -/
def P15000137013175748289.Spec : Prop :=
  ∀ n, P15000137013175748289.a n = A066886 (n + 1)

end A066886

/-! ## A066886.P18255531090830263080

`A138424(n+1)/A084920(n+1)`
-/

namespace A066886.P18255531090830263080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138424 (n + 1) : ℚ) / (A084920 (n + 1) : ℚ)

end

end A066886.P18255531090830263080

namespace A066886

/-- `A138424(n+1)/A084920(n+1)` -/
def P18255531090830263080.Spec : Prop :=
  ∀ n, P18255531090830263080.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P5771525644077415092

`A138441(n+1)/A127917(n+1)`
-/

namespace A066886.P5771525644077415092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / (A127917 (n + 1) : ℚ)

end

end A066886.P5771525644077415092

namespace A066886

/-- `A138441(n+1)/A127917(n+1)` -/
def P5771525644077415092.Spec : Prop :=
  ∀ n, P5771525644077415092.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P9779129372767567168

`A138443(n+1)/A127918(n+1)`
-/

namespace A066886.P9779129372767567168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138443 (n + 1) : ℚ) / (A127918 (n + 1) : ℚ)

end

end A066886.P9779129372767567168

namespace A066886

/-- `A138443(n+1)/A127918(n+1)` -/
def P9779129372767567168.Spec : Prop :=
  ∀ n, P9779129372767567168.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P12559442507787024931

`A138445(n+1)/A127919(n+1)`
-/

namespace A066886.P12559442507787024931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) / (A127919 (n + 1) : ℚ)

end

end A066886.P12559442507787024931

namespace A066886

/-- `A138445(n+1)/A127919(n+1)` -/
def P12559442507787024931.Spec : Prop :=
  ∀ n, P12559442507787024931.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P15474382599657248243

`A138447(n+1)/A127920(n+1)`
-/

namespace A066886.P15474382599657248243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138447 (n + 1) : ℚ) / (A127920 (n + 1) : ℚ)

end

end A066886.P15474382599657248243

namespace A066886

/-- `A138447(n+1)/A127920(n+1)` -/
def P15474382599657248243.Spec : Prop :=
  ∀ n, P15474382599657248243.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P15151003253653686442

`A006093(n+1)+A127918(n+1)+1`
-/

namespace A066886.P15151003253653686442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A127918 (n + 1) + 1)

end

end A066886.P15151003253653686442

namespace A066886

/-- `A006093(n+1)+A127918(n+1)+1` -/
def P15151003253653686442.Spec : Prop :=
  ∀ n, P15151003253653686442.a n = A066886 (n + 1)

end A066886

/-! ## A066886.P4933016108557385694

`A008864(n+1)+A127918(n+1)-1`
-/

namespace A066886.P4933016108557385694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A127918 (n + 1) - 1)

end

end A066886.P4933016108557385694

namespace A066886

/-- `A008864(n+1)+A127918(n+1)-1` -/
def P4933016108557385694.Spec : Prop :=
  ∀ n, P4933016108557385694.a n = A066886 (n + 1)

end A066886

/-! ## A066886.P3926306945053840628

`(A030078(n+1)+A000040(n+1))/2`
-/

namespace A066886.P3926306945053840628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) + A000040 (n + 1) : ℚ) / 2

end

end A066886.P3926306945053840628

namespace A066886

/-- `(A030078(n+1)+A000040(n+1))/2` -/
def P3926306945053840628.Spec : Prop :=
  ∀ n, P3926306945053840628.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P2413349237606085760

`A000040(n+1)+A127917(n+1)/2`
-/

namespace A066886.P2413349237606085760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A127917 (n + 1) : ℚ) / 2

end

end A066886.P2413349237606085760

namespace A066886

/-- `A000040(n+1)+A127917(n+1)/2` -/
def P2413349237606085760.Spec : Prop :=
  ∀ n, P2413349237606085760.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P11375411179974301682

`A034953(n+1)+A135177(n+1)/2`
-/

namespace A066886.P11375411179974301682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034953 (n + 1) : ℚ) + (A135177 (n + 1) : ℚ) / 2

end

end A066886.P11375411179974301682

namespace A066886

/-- `A034953(n+1)+A135177(n+1)/2` -/
def P11375411179974301682.Spec : Prop :=
  ∀ n, P11375411179974301682.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P12959300709682512671

`(A135177(n+1)+A036690(n+1))/2`
-/

namespace A066886.P12959300709682512671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135177 (n + 1) + A036690 (n + 1) : ℚ) / 2

end

end A066886.P12959300709682512671

namespace A066886

/-- `(A135177(n+1)+A036690(n+1))/2` -/
def P12959300709682512671.Spec : Prop :=
  ∀ n, P12959300709682512671.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P8575657719200522769

`A138416(n+1)+A036690(n+1)/2`
-/

namespace A066886.P8575657719200522769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138416 (n + 1) : ℚ) + (A036690 (n + 1) : ℚ) / 2

end

end A066886.P8575657719200522769

namespace A066886

/-- `A138416(n+1)+A036690(n+1)/2` -/
def P8575657719200522769.Spec : Prop :=
  ∀ n, P8575657719200522769.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P5261769462297053670

`A135178(n+1)/2-A008837(n+1)`
-/

namespace A066886.P5261769462297053670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135178 (n + 1) : ℚ) / 2 - (A008837 (n + 1) : ℚ)

end

end A066886.P5261769462297053670

namespace A066886

/-- `A135178(n+1)/2-A008837(n+1)` -/
def P5261769462297053670.Spec : Prop :=
  ∀ n, P5261769462297053670.a n = (A066886 (n + 1) : ℚ)

end A066886

/-! ## A066886.P3903696549363552720

`A030078(n+1)-A127917(n+1)/2`
-/

namespace A066886.P3903696549363552720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) : ℚ) - (A127917 (n + 1) : ℚ) / 2

end

end A066886.P3903696549363552720

namespace A066886

/-- `A030078(n+1)-A127917(n+1)/2` -/
def P3903696549363552720.Spec : Prop :=
  ∀ n, P3903696549363552720.a n = (A066886 (n + 1) : ℚ)

end A066886

/-!
# A066887: Numbers k such that Omega(phi(k)) = Omega(k) where phi is the Euler totient function and Omega(k) is the number of repeated prime factors in k.

The programs for A066887, the canonical program `A066887.P10663022534384468358` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066887 has offset 1).

The definition of A066887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066887.P10663022534384468358

`eq[A001222(A000010(n+1)), A001222(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A066887

/-- `eq[A001222(A000010(n+1)), A001222(n+1)]+1` -/
def P10663022534384468358.Spec : Prop :=
  ∀ n, (P10663022534384468358.a n : ℤ) = A066887 (n + 1)

theorem P10663022534384468358.correct : P10663022534384468358.Spec := by
  intro n
  simp only [A066887, Nat.add_sub_cancel]

end A066887

/-! ## A066887.P8218618624954156613

`eq[log2(A061142(n+1)), A343911(n+1)]+1`
-/

namespace A066887.P8218618624954156613
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A066887.P8218618624954156613

namespace A066887

/-- `eq[log2(A061142(n+1)), A343911(n+1)]+1` -/
def P8218618624954156613.Spec : Prop :=
  ∀ n, (P8218618624954156613.a n : ℤ) = A066887 (n + 1)

end A066887

/-! ## A066887.P9743755677696178280

`eq[val(A165835(n+1), 2), A343911(n+1)]+1`
-/

namespace A066887.P9743755677696178280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066887.P9743755677696178280

namespace A066887

/-- `eq[val(A165835(n+1), 2), A343911(n+1)]+1` -/
def P9743755677696178280.Spec : Prop :=
  ∀ n, (P9743755677696178280.a n : ℤ) = A066887 (n + 1)

end A066887

/-! ## A066887.P14934448344537577472

`eq[A001222(n-A219428(n+1)), A001222(n+1)]+1`
-/

namespace A066887.P14934448344537577472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) - A219428 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066887.P14934448344537577472

namespace A066887

/-- `eq[A001222(n-A219428(n+1)), A001222(n+1)]+1` -/
def P14934448344537577472.Spec : Prop :=
  ∀ n, (P14934448344537577472.a n : ℤ) = A066887 (n + 1)

theorem P14934448344537577472.correct : P14934448344537577472.Spec := by
  intro n
  simp only [A066887, Nat.add_sub_cancel, A066887.P14934448344537577472.f1, A066887.P14934448344537577472.f2, A066887.P14934448344537577472.a, A066887.P10663022534384468358.f1, A066887.P10663022534384468358.f2, A066887.P10663022534384468358.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066887

/-! ## A066887.P3560776927854791415

`eq[A001222(1-A051953(n+1)+n), A001222(n+1)]+1`
-/

namespace A066887.P3560776927854791415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 - A051953 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066887.P3560776927854791415

namespace A066887

/-- `eq[A001222(1-A051953(n+1)+n), A001222(n+1)]+1` -/
def P3560776927854791415.Spec : Prop :=
  ∀ n, (P3560776927854791415.a n : ℤ) = A066887 (n + 1)

theorem P3560776927854791415.correct : P3560776927854791415.Spec := by
  intro n
  simp only [A066887, Nat.add_sub_cancel, A066887.P3560776927854791415.f1, A066887.P3560776927854791415.f2, A066887.P3560776927854791415.a, A066887.P10663022534384468358.f1, A066887.P10663022534384468358.f2, A066887.P10663022534384468358.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066887

/-! ## A066887.P14716941998786187684

`eq[A001222(A002618(n+1)/(n+1)), A001222(n+1)]+1`
-/

namespace A066887.P14716941998786187684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066887.P14716941998786187684

namespace A066887

/-- `eq[A001222(A002618(n+1)/(n+1)), A001222(n+1)]+1` -/
def P14716941998786187684.Spec : Prop :=
  ∀ n, (P14716941998786187684.a n : ℤ) = A066887 (n + 1)

end A066887

/-!
# A066888: Number of primes p between triangular numbers T(n) < p <= T(n+1).

The programs for A066888, there is no canonical definition to state claims against.
-/

/-! ## A066888.P6209925889572991927

`Δ[A111208(n)]`
-/

namespace A066888.P6209925889572991927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066888.P6209925889572991927

/-! ## A066888.P6946792857362727497

`A111208(n+1)-A111208(n)`
-/

namespace A066888.P6946792857362727497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 (n + 1) - A111208 n

end

end A066888.P6946792857362727497

/-! ## A066888.P18093551478895478312

`A282518(A185012(A000720(n+2))+n)`
-/

namespace A066888.P18093551478895478312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282518 (A185012 (A000720 (n + 2)).toNat + (n : ℤ)).toNat

end

end A066888.P18093551478895478312

/-! ## A066888.P9505805643037065931

`A185012(n+1)+A282518(A185012(n)+n)`
-/

namespace A066888.P9505805643037065931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 1) + A282518 (A185012 n + (n : ℤ)).toNat

end

end A066888.P9505805643037065931

/-! ## A066888.P7161440889916078228

`Δ[A000720(A151800(∑[n]))]`
-/

namespace A066888.P7161440889916078228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066888.P7161440889916078228

/-! ## A066888.P12450522086135148450

`Δ[A000720(A179865(n+1))]`
-/

namespace A066888.P12450522086135148450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066888.P12450522086135148450

/-! ## A066888.P11952330171920719095

`A083415(A266725(n+1))`
-/

namespace A066888.P11952330171920719095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (A266725 (n + 1)).toNat

end

end A066888.P11952330171920719095

/-! ## A066888.P10885239198181071199

`A000720(∑[n+1])-A230980(∑[n])`
-/

namespace A066888.P10885239198181071199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j) - A230980 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A066888.P10885239198181071199

/-! ## A066888.P11286806076049846545

`Δ[A230980(∑[n])]`
-/

namespace A066888.P11286806076049846545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066888.P11286806076049846545

/-! ## A066888.P8085677637224775962

`Δ[A033270(A097050(n))]`
-/

namespace A066888.P8085677637224775962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A097050 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066888.P8085677637224775962

/-!
# A066889: a(n) = g(P(n)+2) - P(n), where P(n) = Product_{k=1..n} Fibonacci(k) and g(i) is the smallest prime >= i.

The programs for A066889, there is no canonical definition to state claims against.
-/

/-! ## A066889.P12727661275067259725

`∑{p}[A286296(n+1), #]`
-/

namespace A066889.P12727661275067259725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A066889.P12727661275067259725

/-! ## A066889.P15124933164860192601

`A006530(A286296(n+1))`
-/

namespace A066889.P15124933164860192601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A286296 (n + 1)).toNat

end

end A066889.P15124933164860192601

/-! ## A066889.P6032651707088689062

`A286296(n+1)/A141044(n)`
-/

namespace A066889.P6032651707088689062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286296 (n + 1) : ℚ) / (A141044 n : ℚ)

end

end A066889.P6032651707088689062

/-! ## A066889.P15136269154221026549

`A020639(∏{d}[A286296(n+1), #])`
-/

namespace A066889.P15136269154221026549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A066889.P15136269154221026549

/-! ## A066889.P2696584095892043901

`A020639(∏{p}[A286296(n+1), #])`
-/

namespace A066889.P2696584095892043901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A066889.P2696584095892043901

/-!
# A066890: Cubes that are the sum of three distinct positive cubes.

The programs for A066890, there is no canonical definition to state claims against.
-/

/-! ## A066890.P14378327061001838482

`A023042(n+1)^3`
-/

namespace A066890.P14378327061001838482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (n + 1) ^ 3

end

end A066890.P14378327061001838482

/-! ## A066890.P7656094595231309161

`A000578(A023042(n+1))`
-/

namespace A066890.P7656094595231309161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A023042 (n + 1)).toNat

end

end A066890.P7656094595231309161

/-! ## A066890.P3200632078045168591

`record[A023042(A154958(n))^3]`
-/

namespace A066890.P3200632078045168591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (A154958 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066890.P3200632078045168591

/-! ## A066890.P11049776275196771731

`record[A023042(A291769(n))^3]`
-/

namespace A066890.P11049776275196771731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (A291769 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066890.P11049776275196771731

/-! ## A066890.P13007079609764572719

`record[A023042(A329048(n))^3]`
-/

namespace A066890.P13007079609764572719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (A329048 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066890.P13007079609764572719

/-! ## A066890.P18357288671727166783

`(A023042(n+1)%A001235(n+1))²*A023042(n+1)`
-/

namespace A066890.P18357288671727166783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023042 (n + 1)) (A001235 (n + 1)) ^ 2 * A023042 (n + 1)

end

end A066890.P18357288671727166783

/-! ## A066890.P6805074017054332920

`record[A023042(A134478(n))^3]`
-/

namespace A066890.P6805074017054332920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (A134478 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066890.P6805074017054332920

/-! ## A066890.P9254628803407432843

`record[A023042(A020986(n))^3]`
-/

namespace A066890.P9254628803407432843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (A020986 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066890.P9254628803407432843

/-! ## A066890.P9446575137468771938

`A023042(n+1)²*record[A023042(A020986(n))]`
-/

namespace A066890.P9446575137468771938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066890.P9446575137468771938

/-!
# A066894: Numbers k such that prime(2*k) - prime(k) == 0 (mod k).

The programs for A066894, there is no canonical definition to state claims against.
-/

/-! ## A066894.P9665580297714011687

`lt[A072473(n+1)%(n+1), 1]+1`
-/

namespace A066894.P9665580297714011687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072473 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066894.P9665580297714011687

/-!
# A066895: Numbers k such that k divides prime(k) + prime(k+1).

The programs for A066895, there is no canonical definition to state claims against.
-/

/-! ## A066895.P461657443186474083

`eq[n, gcd(n, A011974(n+1))]`
-/

namespace A066895.P461657443186474083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A011974 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066895.P461657443186474083

/-! ## A066895.P10069866369947465830

`eq[0, A001043(n+1)%(n+1)]+1`
-/

namespace A066895.P10069866369947465830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001043 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066895.P10069866369947465830

/-! ## A066895.P9307798716929519267

`eq[2, 2-A011974(n+2)%(n+1)]+1`
-/

namespace A066895.P9307798716929519267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A011974 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066895.P9307798716929519267

/-! ## A066895.P1690781056770453221

`eq[2, A025581(a(A001043(n)%n))]` with `a(0)=3`
-/

namespace A066895.P1690781056770453221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A025581 (f2 (Int.tmod (A001043 n) (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066895.P1690781056770453221

/-! ## A066895.P15136982068693902208

`eq[A011974(n+1)%(A000007(n)+n), C(2, n+2)]`
-/

namespace A066895.P15136982068693902208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011974 (n + 1)) (A000007 n + (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A066895.P15136982068693902208

/-!
# A066896: prime(2n) + prime(n) == 0 (mod n).

The programs for A066896, there is no canonical definition to state claims against.
-/

/-! ## A066896.P17549130926590605464

`lt[A090418(3*(n+1)), A025441(A007504(n+1))]`
-/

namespace A066896.P17549130926590605464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A007504 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066896.P17549130926590605464

/-! ## A066896.P8240467317745797179

`record[A320341(A029098(n))]`
-/

namespace A066896.P8240467317745797179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320341 (A029098 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066896.P8240467317745797179

/-! ## A066896.P566267020425040460

`A022307(A067237(n+1))`
-/

namespace A066896.P566267020425040460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A067237 (n + 1)).toNat

end

end A066896.P566267020425040460

/-! ## A066896.P955331190368370091

`eq[1, A001222(∑[A263296(n+1)])]`
-/

namespace A066896.P955331190368370091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066896.P955331190368370091

/-!
# A066897: Total number of odd parts in all partitions of n.

The programs for A066897, there is no canonical definition to state claims against.
-/

/-! ## A066897.P10519473927138174745

`A066898(n+1)+A209423(n+1)`
-/

namespace A066897.P10519473927138174745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066898 (n + 1) + A209423 (n + 1)

end

end A066897.P10519473927138174745

/-! ## A066897.P17159464689047950537

`A006128(n+1)-A066898(n+1)`
-/

namespace A066897.P17159464689047950537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A066898 (n + 1)

end

end A066897.P17159464689047950537

/-! ## A066897.P931742248103263830

`(A006128(n+1)+A209423(n+1))/2`
-/

namespace A066897.P931742248103263830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006128 (n + 1) + A209423 (n + 1) : ℚ) / 2

end

end A066897.P931742248103263830

/-! ## A066897.P5945429380574425707

`A207381(n+1)-A207382(n+1)`
-/

namespace A066897.P5945429380574425707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207381 (n + 1) - A207382 (n + 1)

end

end A066897.P5945429380574425707

/-! ## A066897.P13772049807008571748

`∑[A206433(n+1)]`
-/

namespace A066897.P13772049807008571748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066897.P13772049807008571748

/-! ## A066897.P9643437876571265579

`A066898(n+1)+A305123(n+1)+A305121(n+1)`
-/

namespace A066897.P9643437876571265579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066898 (n + 1) + (A305123 (n + 1) + A305121 (n + 1))

end

end A066897.P9643437876571265579

/-! ## A066897.P8342413243498484617

`∑[Δ[A006128(n)]-A206434(n+1)]`
-/

namespace A066897.P8342413243498484617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A206434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066897.P8342413243498484617

/-! ## A066897.P5154074302998741597

`A090868(2*(n+1))`
-/

namespace A066897.P5154074302998741597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090868 (2 * (n + 1))

end

end A066897.P5154074302998741597

/-! ## A066897.P17836930663708208541

`A207381(n+1)+A207381(n+1)-A066186(n+1)`
-/

namespace A066897.P17836930663708208541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207381 (n + 1) + (A207381 (n + 1) - A066186 (n + 1))

end

end A066897.P17836930663708208541

/-! ## A066897.P15264882142057614928

`A066186(n+1)-(A207382(n+1)+A207382(n+1))`
-/

namespace A066897.P15264882142057614928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A207382 (n + 1) + A207382 (n + 1))

end

end A066897.P15264882142057614928

/-! ## A066897.P16683701228295965124

`A245841(∑[n+1])`
-/

namespace A066897.P16683701228295965124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066897.P16683701228295965124

/-!
# A066898: Total number of even parts in all partitions of n.

The programs for A066898, there is no canonical definition to state claims against.
-/

/-! ## A066898.P15745774015178513699

`A066897(n+1)-A209423(n+1)`
-/

namespace A066898.P15745774015178513699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) - A209423 (n + 1)

end

end A066898.P15745774015178513699

/-! ## A066898.P15070052420570007470

`A006128(n+1)-A066897(n+1)`
-/

namespace A066898.P15070052420570007470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A066897 (n + 1)

end

end A066898.P15070052420570007470

/-! ## A066898.P5357807666482041274

`(A006128(n+1)-A209423(n+1))/2`
-/

namespace A066898.P5357807666482041274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006128 (n + 1) - A209423 (n + 1) : ℚ) / 2

end

end A066898.P5357807666482041274

/-! ## A066898.P18339330293860785334

`∑{#}[floor((n+1)/2)-1, A000005(#+1)*A000041(n+1-2*(#+1))]`
-/

namespace A066898.P18339330293860785334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (k + 1) * A000041 (n + 1 - 2 * (k + 1))

end

end A066898.P18339330293860785334

/-! ## A066898.P8635792120729309519

`∑[A206434(n+1)]`
-/

namespace A066898.P8635792120729309519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066898.P8635792120729309519

/-! ## A066898.P11183686249597806121

`A399074(n+1)+A399074(n+1)+A305121(n+1)`
-/

namespace A066898.P11183686249597806121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399074 (n + 1) + A399074 (n + 1) + A305121 (n + 1)

end

end A066898.P11183686249597806121

/-! ## A066898.P15393009570515032439

`A066897(n+1)-(A305123(n+1)+A305121(n+1))`
-/

namespace A066898.P15393009570515032439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) - (A305123 (n + 1) + A305121 (n + 1))

end

end A066898.P15393009570515032439

/-! ## A066898.P3891341769518866053

`A006128(n+1)-A090868(2*(n+1))`
-/

namespace A066898.P3891341769518866053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A090868 (2 * (n + 1))

end

end A066898.P3891341769518866053

/-! ## A066898.P12735511031296655946

`A006128(n+1)+A207382(n+1)-A207381(n+1)`
-/

namespace A066898.P12735511031296655946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A207382 (n + 1) - A207381 (n + 1))

end

end A066898.P12735511031296655946

/-! ## A066898.P14776865476728769363

`A245843(∑[n+1])`
-/

namespace A066898.P14776865476728769363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066898.P14776865476728769363

