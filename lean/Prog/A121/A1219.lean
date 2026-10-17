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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A121900: a(n) = ceiling((Pi - e)*sqrt(n)).

The programs for A121900, the canonical program `A121900.P10645591275071809845` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121900 has offset 0).

The definition of A121900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((π-e)*sqrt(n))` (program `A121900.P10645591275071809845`, by `A121900.P10645591275071809845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121900.P10645591275071809845

`ceil((π-e)*sqrt(n))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121900

/-- `ceil((π-e)*sqrt(n))` -/
def P10645591275071809845.Spec : Prop :=
  ∀ n, P10645591275071809845.a n = A121900 n

theorem P10645591275071809845.correct : P10645591275071809845.Spec := by
  intro n
  simp only [A121900]

end A121900

/-! ## A121900.P8167409334511542166

`(floor((π-e)*sqrt(n))+1)%(n+1)`
-/

namespace A121900.P8167409334511542166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(Real.pi - Real.exp 1) * Real.sqrt (n : ℝ)⌋ + 1) (n + 1 : ℤ)

end

end A121900.P8167409334511542166

namespace A121900

/-- `(floor((π-e)*sqrt(n))+1)%(n+1)` -/
def P8167409334511542166.Spec : Prop :=
  ∀ n, P8167409334511542166.a n = A121900 n

end A121900

/-! ## A121900.P99134060709240413

`floor((π-e)*sqrt(n))-(floor(acot(n))-1)`
-/

namespace A121900.P99134060709240413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi - Real.exp 1) * Real.sqrt (n : ℝ)⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A121900.P99134060709240413

namespace A121900

/-- `floor((π-e)*sqrt(n))-(floor(acot(n))-1)` -/
def P99134060709240413.Spec : Prop :=
  ∀ n, P99134060709240413.a n = A121900 n

end A121900

/-! ## A121900.P11013511681397137548

`A121902(n)+A057427(n)`
-/

namespace A121900.P11013511681397137548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 n + A057427 n

end

end A121900.P11013511681397137548

namespace A121900

/-- `A121902(n)+A057427(n)` -/
def P11013511681397137548.Spec : Prop :=
  ∀ n, P11013511681397137548.a n = A121900 n

end A121900

/-! ## A121900.P8450983719525892703

`A121902(n)-A057428(n)`
-/

namespace A121900.P8450983719525892703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 n - A057428 n

end

end A121900.P8450983719525892703

namespace A121900

/-- `A121902(n)-A057428(n)` -/
def P8450983719525892703.Spec : Prop :=
  ∀ n, P8450983719525892703.a n = A121900 n

end A121900

/-! ## A121900.P16971865894805322044

`A121902(n)+ceil(sin(2*n-A135481(n))²)`
-/

namespace A121900.P16971865894805322044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 n + ⌈Real.sin ((2 * n : ℤ) - A135481 n : ℝ) ^ 2⌉

end

end A121900.P16971865894805322044

namespace A121900

/-- `A121902(n)+ceil(sin(2*n-A135481(n))²)` -/
def P16971865894805322044.Spec : Prop :=
  ∀ n, P16971865894805322044.a n = A121900 n

end A121900

/-! ## A121900.P13553083469289710780

`A127321(∑[A060990(A046092(2*n+3))])`
-/

namespace A121900.P13553083469289710780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A046092 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121900.P13553083469289710780

namespace A121900

/-- `A127321(∑[A060990(A046092(2*n+3))])` -/
def P13553083469289710780.Spec : Prop :=
  ∀ n, P13553083469289710780.a n = A121900 n

end A121900

/-!
# A121901: a(n) = floor((Pi + e)*sqrt(n)).

The programs for A121901, the canonical program `A121901.P13934201212248486637` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121901 has offset 0).

The definition of A121901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((π+e)*sqrt(n))` (program `A121901.P13934201212248486637`, by `A121901.P13934201212248486637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121901.P13934201212248486637

`floor((π+e)*sqrt(n))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121901

/-- `floor((π+e)*sqrt(n))` -/
def P13934201212248486637.Spec : Prop :=
  ∀ n, P13934201212248486637.a n = A121901 n

theorem P13934201212248486637.correct : P13934201212248486637.Spec := by
  intro n
  simp only [A121901]

end A121901

/-! ## A121901.P4806756127416631957

`A121899(n)+A057428(n)`
-/

namespace A121901.P4806756127416631957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 n + A057428 n

end

end A121901.P4806756127416631957

namespace A121901

/-- `A121899(n)+A057428(n)` -/
def P4806756127416631957.Spec : Prop :=
  ∀ n, P4806756127416631957.a n = A121901 n

end A121901

/-! ## A121901.P5232258147463703278

`A121899(n)-A057427(n)`
-/

namespace A121901.P5232258147463703278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 n - A057427 n

end

end A121901.P5232258147463703278

namespace A121901

/-- `A121899(n)-A057427(n)` -/
def P5232258147463703278.Spec : Prop :=
  ∀ n, P5232258147463703278.a n = A121901 n

end A121901

/-! ## A121901.P14034237889115685991

`∑{e}[A067695(n+1), A121899(n)-#]`
-/

namespace A121901.P14034237889115685991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A121899 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A121901.P14034237889115685991

namespace A121901

/-- `∑{e}[A067695(n+1), A121899(n)-#]` -/
def P14034237889115685991.Spec : Prop :=
  ∀ n, P14034237889115685991.a n = A121901 n

end A121901

/-! ## A121901.P6535629002260663672

`A121899(n)-A001221(A006530(n+1))`
-/

namespace A121901.P6535629002260663672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 n - A001221 (A006530 (n + 1)).toNat

end

end A121901.P6535629002260663672

namespace A121901

/-- `A121899(n)-A001221(A006530(n+1))` -/
def P6535629002260663672.Spec : Prop :=
  ∀ n, P6535629002260663672.a n = A121901 n

end A121901

/-! ## A121901.P10487973391338814259

`A121854(n)+A121899(n)-A121855(n)`
-/

namespace A121901.P10487973391338814259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121899 n - A121855 n)

end

end A121901.P10487973391338814259

namespace A121901

/-- `A121854(n)+A121899(n)-A121855(n)` -/
def P10487973391338814259.Spec : Prop :=
  ∀ n, P10487973391338814259.a n = A121901 n

end A121901

/-! ## A121901.P7148580705601155672

`A121856(n)+A121899(n)-A121857(n)`
-/

namespace A121901.P7148580705601155672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + (A121899 n - A121857 n)

end

end A121901.P7148580705601155672

namespace A121901

/-- `A121856(n)+A121899(n)-A121857(n)` -/
def P7148580705601155672.Spec : Prop :=
  ∀ n, P7148580705601155672.a n = A121901 n

end A121901

/-! ## A121901.P11111079630096241687

`A121899(n)+A121902(n)-A121900(n)`
-/

namespace A121901.P11111079630096241687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 n + (A121902 n - A121900 n)

end

end A121901.P11111079630096241687

namespace A121901

/-- `A121899(n)+A121902(n)-A121900(n)` -/
def P11111079630096241687.Spec : Prop :=
  ∀ n, P11111079630096241687.a n = A121901 n

end A121901

/-! ## A121901.P13308300059448734123

`A121899(n)+A121925(n)-A121929(n)`
-/

namespace A121901.P13308300059448734123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 n + (A121925 n - A121929 n)

end

end A121901.P13308300059448734123

namespace A121901

/-- `A121899(n)+A121925(n)-A121929(n)` -/
def P13308300059448734123.Spec : Prop :=
  ∀ n, P13308300059448734123.a n = A121901 n

end A121901

/-! ## A121901.P8795522346861522642

`A121899(n)-A057428(n²)²`
-/

namespace A121901.P8795522346861522642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 n - A057428 (n ^ 2) ^ 2

end

end A121901.P8795522346861522642

namespace A121901

/-- `A121899(n)-A057428(n²)²` -/
def P8795522346861522642.Spec : Prop :=
  ∀ n, P8795522346861522642.a n = A121901 n

end A121901

/-!
# A121902: a(n) = floor((Pi - e)*sqrt(n)).

The programs for A121902, the canonical program `A121902.P10115326510357495227` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121902 has offset 0).

The definition of A121902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((π-e)*sqrt(n))` (program `A121902.P10115326510357495227`, by `A121902.P10115326510357495227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121902.P10115326510357495227

`floor((π-e)*sqrt(n))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121902

/-- `floor((π-e)*sqrt(n))` -/
def P10115326510357495227.Spec : Prop :=
  ∀ n, P10115326510357495227.a n = A121902 n

theorem P10115326510357495227.correct : P10115326510357495227.Spec := by
  intro n
  simp only [A121902]

end A121902

/-! ## A121902.P3183896391649928161

`(ceil((π-e)*sqrt(n))-1)%round(1/acot(n))`
-/

namespace A121902.P3183896391649928161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(Real.pi - Real.exp 1) * Real.sqrt (n : ℝ)⌉ - 1) (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)))

end

end A121902.P3183896391649928161

namespace A121902

/-- `(ceil((π-e)*sqrt(n))-1)%round(1/acot(n))` -/
def P3183896391649928161.Spec : Prop :=
  ∀ n, P3183896391649928161.a n = A121902 n

end A121902

/-! ## A121902.P11996994442545653985

`round(log(cosh(A121900(n))))`
-/

namespace A121902.P11996994442545653985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (A121900 n : ℝ)))

end

end A121902.P11996994442545653985

namespace A121902

/-- `round(log(cosh(A121900(n))))` -/
def P11996994442545653985.Spec : Prop :=
  ∀ n, P11996994442545653985.a n = A121902 n

end A121902

/-! ## A121902.P6284781943647067688

`A121900(n)+A057428(n)`
-/

namespace A121902.P6284781943647067688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 n + A057428 n

end

end A121902.P6284781943647067688

namespace A121902

/-- `A121900(n)+A057428(n)` -/
def P6284781943647067688.Spec : Prop :=
  ∀ n, P6284781943647067688.a n = A121902 n

end A121902

/-! ## A121902.P9021828364259866120

`A121900(n)-A057427(n)`
-/

namespace A121902.P9021828364259866120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 n - A057427 n

end

end A121902.P9021828364259866120

namespace A121902

/-- `A121900(n)-A057427(n)` -/
def P9021828364259866120.Spec : Prop :=
  ∀ n, P9021828364259866120.a n = A121902 n

end A121902

/-! ## A121902.P9137861059609429907

`A121854(n)+A121900(n)-A121855(n)`
-/

namespace A121902.P9137861059609429907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121900 n - A121855 n)

end

end A121902.P9137861059609429907

namespace A121902

/-- `A121854(n)+A121900(n)-A121855(n)` -/
def P9137861059609429907.Spec : Prop :=
  ∀ n, P9137861059609429907.a n = A121902 n

end A121902

/-! ## A121902.P3736268107703562510

`A135665(A134914((2*n+1)²))`
-/

namespace A121902.P3736268107703562510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A134914 ((2 * n + 1) ^ 2)).toNat

end

end A121902.P3736268107703562510

namespace A121902

/-- `A135665(A134914((2*n+1)²))` -/
def P3736268107703562510.Spec : Prop :=
  ∀ n, P3736268107703562510.a n = A121902 n

end A121902

/-!
# A121903: a(n) = ceiling(Pi^(n*e)).

The programs for A121903, there is no canonical definition to state claims against.
-/

/-! ## A121903.P18031304795622996201

`ceil(π^(e*n))`
-/

namespace A121903.P18031304795622996201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ (Real.exp 1 * (n : ℝ))⌉

end

end A121903.P18031304795622996201

/-! ## A121903.P16669944925479331004

`A121904(n)+A121900(A121900(n))`
-/

namespace A121903.P16669944925479331004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121904 n + A121900 (A121900 n).toNat

end

end A121903.P16669944925479331004

/-! ## A121903.P11122194286953133870

`A121904(n)+A001222(A066169(n+1))`
-/

namespace A121903.P11122194286953133870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121904 n + A001222 (A066169 (n + 1)).toNat

end

end A121903.P11122194286953133870

/-! ## A121903.P14749281238428061174

`A121904(n)+A100073(A066149(n+1))`
-/

namespace A121903.P14749281238428061174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121904 n + A100073 (A066149 (n + 1)).toNat

end

end A121903.P14749281238428061174

/-! ## A121903.P14888686201935917692

`A121855(n)+A121904(n)-A121854(n)`
-/

namespace A121903.P14888686201935917692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121904 n - A121854 n)

end

end A121903.P14888686201935917692

/-! ## A121903.P10415661669298251387

`A121857(n)+A121904(n)-A121856(n)`
-/

namespace A121903.P10415661669298251387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + (A121904 n - A121856 n)

end

end A121903.P10415661669298251387

/-!
# A121904: a(n) = floor(Pi^(n*e)).

The programs for A121904, there is no canonical definition to state claims against.
-/

/-! ## A121904.P13049515750541637156

`floor(π^(e*n))`
-/

namespace A121904.P13049515750541637156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ (Real.exp 1 * (n : ℝ))⌋

end

end A121904.P13049515750541637156

/-! ## A121904.P15877097006611963073

`A121903(n)-A127775(C(2, n+2)+1)`
-/

namespace A121904.P15877097006611963073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121903 n - A127775 (Nat.choose 2 (n + 2) + 1)

end

end A121904.P15877097006611963073

/-! ## A121904.P6710406784893587196

`A121903(n)-A121900(A121900(n))`
-/

namespace A121904.P6710406784893587196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121903 n - A121900 (A121900 n).toNat

end

end A121904.P6710406784893587196

/-! ## A121904.P139214963315679849

`A121903(n)-A304465(A006530(n+1))`
-/

namespace A121904.P139214963315679849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121903 n - A304465 (A006530 (n + 1)).toNat

end

end A121904.P139214963315679849

/-! ## A121904.P10961302893543707847

`A121901(n)+A121903(n)-A121899(n)`
-/

namespace A121904.P10961302893543707847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n + (A121903 n - A121899 n)

end

end A121904.P10961302893543707847

/-!
# A121905: a(n) = ceiling(e^(n*Pi)).

The programs for A121905, there is no canonical definition to state claims against.
-/

/-! ## A121905.P9451044530512068822

`ceil(exp(π*n))`
-/

namespace A121905.P9451044530512068822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Real.pi * (n : ℝ))⌉

end

end A121905.P9451044530512068822

/-! ## A121905.P9513435142431857330

`A347029(2*n)`
-/

namespace A121905.P9513435142431857330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347029 (2 * n)

end

end A121905.P9513435142431857330

/-! ## A121905.P966835102879146156

`record[A347029(n)/(-1)^n]`
-/

namespace A121905.P966835102879146156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347029 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121905.P966835102879146156

/-! ## A121905.P15759629276226204692

`A062360(n)+1-floor(acot(n))`
-/

namespace A121905.P15759629276226204692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062360 n + (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A121905.P15759629276226204692

/-! ## A121905.P2316100912558918156

`A062360(n)+A057427(n)`
-/

namespace A121905.P2316100912558918156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062360 n + A057427 n

end

end A121905.P2316100912558918156

/-! ## A121905.P5509396669523113463

`A060456(n²)+A057427(n)`
-/

namespace A121905.P5509396669523113463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060456 (n ^ 2) + A057427 n

end

end A121905.P5509396669523113463

/-! ## A121905.P3549201729317606145

`A062360(n)+char[A007306(n)]`
-/

namespace A121905.P3549201729317606145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062360 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121905.P3549201729317606145

/-! ## A121905.P2869165734277866585

`A124507(2*n)+char[A029579(n)]`
-/

namespace A121905.P2869165734277866585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124507 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121905.P2869165734277866585

/-! ## A121905.P17847996538992531350

`A252742(A124508(2*n+1))+A124507(2*n)`
-/

namespace A121905.P17847996538992531350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A124508 (2 * n + 1)).toNat + A124507 (2 * n)

end

end A121905.P17847996538992531350

/-! ## A121905.P10200247291471377612

`A252742(A124511(2*n+1))+A124507(2*n)`
-/

namespace A121905.P10200247291471377612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A124511 (2 * n + 1)).toNat + A124507 (2 * n)

end

end A121905.P10200247291471377612

/-!
# A121906: Excess of n-th 3-almost prime A014612 over previous prime.

The programs for A121906, there is no canonical definition to state claims against.
-/

/-! ## A121906.P2550039910807065519

`A049711(A014612(n+1))`
-/

namespace A121906.P2550039910807065519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A014612 (n + 1)).toNat

end

end A121906.P2550039910807065519

/-! ## A121906.P13161034608295295779

`A175851(A014612(n+1)-1)`
-/

namespace A121906.P13161034608295295779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A014612 (n + 1) - 1).toNat

end

end A121906.P13161034608295295779

/-! ## A121906.P16065453338559268022

`A175851(eq[1, A101605(n+1)])`
-/

namespace A121906.P16065453338559268022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121906.P16065453338559268022

/-! ## A121906.P12800958185360666952

`A175851(eq[3, A001222(n+1)])`
-/

namespace A121906.P12800958185360666952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121906.P12800958185360666952

/-! ## A121906.P9627803957900556293

`A175851(eq[3, A008481(n+1)])`
-/

namespace A121906.P9627803957900556293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121906.P9627803957900556293

/-! ## A121906.P7670218902771572691

`A049711(eq[3, A001222(n+1)]+1)`
-/

namespace A121906.P7670218902771572691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121906.P7670218902771572691

/-! ## A121906.P11595609883657766850

`A064722(eq[3, A001222(n+1)]+1)`
-/

namespace A121906.P11595609883657766850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121906.P11595609883657766850

/-! ## A121906.P1440719683948643514

`A064722(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=3`
-/

namespace A121906.P1440719683948643514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121906.P1440719683948643514

/-!
# A121907: Expansion of g.f.: (1 + x + x^2)/(1 - 2*x - 2*x^2).

The programs for A121907, the canonical program `A121907.P8467463221226147892` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121907 has offset 0).

The definition of A121907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121907.P8467463221226147892

`2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121907

/-- `2*(a(n-1)+a(n-2))` -/
def P8467463221226147892.Spec : Prop :=
  ∀ n, (P8467463221226147892.a n : ℤ) = A121907 n

theorem P8467463221226147892.correct : P8467463221226147892.Spec := by
  intro n
  simp only [A121907]

end A121907

/-! ## A121907.P17050712503018123983

`Δ[round((sqrt(3)+1)*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A121907.P17050712503018123983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121907.P17050712503018123983

namespace A121907

/-- `Δ[round((sqrt(3)+1)*a(n-1))]` -/
def P17050712503018123983.Spec : Prop :=
  ∀ n, P17050712503018123983.a n = A121907 n

end A121907

/-! ## A121907.P9991982185447586566

`Δ[A052945(n)]`
-/

namespace A121907.P9991982185447586566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121907.P9991982185447586566

namespace A121907

/-- `Δ[A052945(n)]` -/
def P9991982185447586566.Spec : Prop :=
  ∀ n, P9991982185447586566.a n = A121907 n

end A121907

/-! ## A121907.P15885708739386081669

`floor(A083337(n+1)/2)`
-/

namespace A121907.P15885708739386081669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083337 (n + 1) : ℚ) / 2⌋

end

end A121907.P15885708739386081669

namespace A121907

/-- `floor(A083337(n+1)/2)` -/
def P15885708739386081669.Spec : Prop :=
  ∀ n, P15885708739386081669.a n = A121907 n

end A121907

/-! ## A121907.P1884383896659568011

`floor(3*A002605(n+1)/2)`
-/

namespace A121907.P1884383896659568011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A002605 (n + 1) : ℚ) / 2)⌋

end

end A121907.P1884383896659568011

namespace A121907

/-- `floor(3*A002605(n+1)/2)` -/
def P1884383896659568011.Spec : Prop :=
  ∀ n, P1884383896659568011.a n = A121907 n

end A121907

/-! ## A121907.P3998881429758438858

`A212823(n+2)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A121907.P3998881429758438858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A212823 (n + 2) - a (n - 1)

end

end A121907.P3998881429758438858

namespace A121907

/-- `A212823(n+2)-a(n-1)` -/
def P3998881429758438858.Spec : Prop :=
  ∀ n, P3998881429758438858.a n = A121907 n

end A121907

/-! ## A121907.P12120707342191302800

`A122553(n)*A155020(n)`
-/

namespace A121907.P12120707342191302800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A155020 n

end

end A121907.P12120707342191302800

namespace A121907

/-- `A122553(n)*A155020(n)` -/
def P12120707342191302800.Spec : Prop :=
  ∀ n, P12120707342191302800.a n = A121907 n

end A121907

/-! ## A121907.P16835080887905757133

`Δ[A155020(n)+A002605(n)]`
-/

namespace A121907.P16835080887905757133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n + A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121907.P16835080887905757133

namespace A121907

/-- `Δ[A155020(n)+A002605(n)]` -/
def P16835080887905757133.Spec : Prop :=
  ∀ n, P16835080887905757133.a n = A121907 n

end A121907

/-! ## A121907.P4846341127490273784

`A026150(n)+Δ[A155020(n)]`
-/

namespace A121907.P4846341127490273784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n + (f1 (n + 1) - f1 n)

end

end A121907.P4846341127490273784

namespace A121907

/-- `A026150(n)+Δ[A155020(n)]` -/
def P4846341127490273784.Spec : Prop :=
  ∀ n, P4846341127490273784.a n = A121907 n

end A121907

/-! ## A121907.P4854642672968404990

`∑[A080040(n)]-A155020(n)`
-/

namespace A121907.P4854642672968404990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A155020 n

end

end A121907.P4854642672968404990

namespace A121907

/-- `∑[A080040(n)]-A155020(n)` -/
def P4854642672968404990.Spec : Prop :=
  ∀ n, P4854642672968404990.a n = A121907 n

end A121907

/-! ## A121907.P13707088224866754664

`A052945(n+1)-A052945(n)`
-/

namespace A121907.P13707088224866754664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (n + 1) - A052945 n

end

end A121907.P13707088224866754664

namespace A121907

/-- `A052945(n+1)-A052945(n)` -/
def P13707088224866754664.Spec : Prop :=
  ∀ n, P13707088224866754664.a n = A121907 n

end A121907

/-! ## A121907.P10653687813472678881

`Δ[A000007(n)+Δ[A155020(n)]]`
-/

namespace A121907.P10653687813472678881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121907.P10653687813472678881

namespace A121907

/-- `Δ[A000007(n)+Δ[A155020(n)]]` -/
def P10653687813472678881.Spec : Prop :=
  ∀ n, P10653687813472678881.a n = A121907 n

end A121907

/-! ## A121907.P10561135040986780434

`A028859(n)+A002605((2*n)%(n+1))`
-/

namespace A121907.P10561135040986780434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n + A002605 (2 * n % (n + 1))

end

end A121907.P10561135040986780434

namespace A121907

/-- `A028859(n)+A002605((2*n)%(n+1))` -/
def P10561135040986780434.Spec : Prop :=
  ∀ n, P10561135040986780434.a n = A121907 n

end A121907

/-! ## A121907.P9655878522965755155

`A080040(n)-(A052945(n)-A083337(n))`
-/

namespace A121907.P9655878522965755155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n - (A052945 n - A083337 n)

end

end A121907.P9655878522965755155

namespace A121907

/-- `A080040(n)-(A052945(n)-A083337(n))` -/
def P9655878522965755155.Spec : Prop :=
  ∀ n, P9655878522965755155.a n = A121907 n

end A121907

/-! ## A121907.P2942206517173490936

`round(A028859(n)/A155020(n))*A155020(n)`
-/

namespace A121907.P2942206517173490936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A028859 n : ℚ) / (A155020 n : ℚ)) * A155020 n

end

end A121907.P2942206517173490936

namespace A121907

/-- `round(A028859(n)/A155020(n))*A155020(n)` -/
def P2942206517173490936.Spec : Prop :=
  ∀ n, P2942206517173490936.a n = A121907 n

end A121907

/-! ## A121907.P16412249038820548862

`A074323(2*n)/A074323(2*n+1)*A002605(n+1)`
-/

namespace A121907.P16412249038820548862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074323 (2 * n) : ℚ) / (A074323 (2 * n + 1) : ℚ) * (A002605 (n + 1) : ℚ)

end

end A121907.P16412249038820548862

namespace A121907

/-- `A074323(2*n)/A074323(2*n+1)*A002605(n+1)` -/
def P16412249038820548862.Spec : Prop :=
  ∀ n, P16412249038820548862.a n = (A121907 n : ℚ)

end A121907

/-! ## A121907.P5748662150122072543

`floor(floor(A239171(n+1)/2)/2)`
-/

namespace A121907.P5748662150122072543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A239171 (n + 1) : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A121907.P5748662150122072543

namespace A121907

/-- `floor(floor(A239171(n+1)/2)/2)` -/
def P5748662150122072543.Spec : Prop :=
  ∀ n, P5748662150122072543.a n = A121907 n

end A121907

/-!
# A121908: S-D transform of Catalan numbers A000108.

The programs for A121908, there is no canonical definition to state claims against.
-/

/-! ## A121908.P4421742742063239353

`A002330(A108289(n))-floor(n/(n%2+1))`
-/

namespace A121908.P4421742742063239353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A108289 n).toNat - ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

end

end A121908.P4421742742063239353

/-! ## A121908.P12688999747067049113

`A033151(A000085(n))+A015442(n)`
-/

namespace A121908.P12688999747067049113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033151 (A000085 n).toNat + A015442 n

end

end A121908.P12688999747067049113

/-! ## A121908.P9110370310578444094

`A038548(A335626(n))+A015442(n)`
-/

namespace A121908.P9110370310578444094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A335626 n).toNat + A015442 n

end

end A121908.P9110370310578444094

/-!
# A121909: S-D transform of factorial numbers A000142.

The programs for A121909, there is no canonical definition to state claims against.
-/

/-! ## A121909.P6358302148657244194

`A008766(A005418(n+1))`
-/

namespace A121909.P6358302148657244194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (A005418 (n + 1)).toNat

end

end A121909.P6358302148657244194

/-! ## A121909.P15955514581137530368

`A008766(A006606(n+1))`
-/

namespace A121909.P15955514581137530368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (A006606 (n + 1)).toNat

end

end A121909.P15955514581137530368

/-! ## A121909.P9732917842483050136

`A008766(A120421(n+1))`
-/

namespace A121909.P9732917842483050136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (A120421 (n + 1)).toNat

end

end A121909.P9732917842483050136

/-!
# A121910: a(n) = 3*a(n-1)*a(n-2)*a(n-3)*a(n-4) - a(n-5), with a(1)=a(2)=a(3)=a(4)=a(5)=1.

The programs for A121910, the canonical program `A121910.P1619398035755532751` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121910 has offset 1).

The definition of A121910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` (program `A121910.P1619398035755532751`, by `A121910.P1619398035755532751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121910.P1619398035755532751

`3*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121910

/-- `3*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` -/
def P1619398035755532751.Spec : Prop :=
  ∀ n, P1619398035755532751.a n = A121910 (n + 1)

theorem P1619398035755532751.correct : P1619398035755532751.Spec := by
  intro n
  simp only [A121910, Nat.add_sub_cancel]

end A121910

/-! ## A121910.P7929906129768466968

`A333487(n²+2)+A072880(n+1)`
-/

namespace A121910.P7929906129768466968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (n ^ 2 + 2) + A072880 (n + 1)

end

end A121910.P7929906129768466968

namespace A121910

/-- `A333487(n²+2)+A072880(n+1)` -/
def P7929906129768466968.Spec : Prop :=
  ∀ n, P7929906129768466968.a n = A121910 (n + 1)

end A121910

/-! ## A121910.P5437130475076732087

`A072880(n+1)+A045701(A072881(n+1))`
-/

namespace A121910.P5437130475076732087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072880 (n + 1) + A045701 (A072881 (n + 1)).toNat

end

end A121910.P5437130475076732087

namespace A121910

/-- `A072880(n+1)+A045701(A072881(n+1))` -/
def P5437130475076732087.Spec : Prop :=
  ∀ n, P5437130475076732087.a n = A121910 (n + 1)

end A121910

/-! ## A121910.P18356584228848434844

`A057723(A275947(n)+A072880(n+1))`
-/

namespace A121910.P18356584228848434844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A275947 n + A072880 (n + 1)).toNat

end

end A121910.P18356584228848434844

namespace A121910

/-- `A057723(A275947(n)+A072880(n+1))` -/
def P18356584228848434844.Spec : Prop :=
  ∀ n, P18356584228848434844.a n = A121910 (n + 1)

end A121910

/-! ## A121910.P13006642204881776345

`A072797(A072880(n+1)*A124772(n))`
-/

namespace A121910.P13006642204881776345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A072880 (n + 1) * A124772 n).toNat

end

end A121910.P13006642204881776345

namespace A121910

/-- `A072797(A072880(n+1)*A124772(n))` -/
def P13006642204881776345.Spec : Prop :=
  ∀ n, P13006642204881776345.a n = A121910 (n + 1)

end A121910

/-!
# A121912: Numbers k such that 10^k == 10 (mod k).

The programs for A121912, there is no canonical definition to state claims against.
-/

/-! ## A121912.P5622537191584973425

`∪[A121014(n+1), Δ[A007504(n)]]`
-/

namespace A121912.P5622537191584973425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121912.P5622537191584973425

/-! ## A121912.P9497444910022144096

`∪[A000040(n+1), A121014(n+1)]`
-/

namespace A121912.P9497444910022144096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121912.P9497444910022144096

/-! ## A121912.P4924370722459844524

`∪[A008578(n+1), A121014(n+1)]`
-/

namespace A121912.P4924370722459844524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121912.P4924370722459844524

/-! ## A121912.P831468403315015306

`∪[A116974(n+1), A121014(n+1)]`
-/

namespace A121912.P831468403315015306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121912.P831468403315015306

/-! ## A121912.P11265862521024369177

`∪[A324050(n+1), A121014(n+1)]`
-/

namespace A121912.P11265862521024369177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121912.P11265862521024369177

/-! ## A121912.P6272282321948258764

`∪[A153519(n+1), A324050(n+1)]`
-/

namespace A121912.P6272282321948258764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121912.P6272282321948258764

/-! ## A121912.P5781184646265481054

`∪[∑[A054541(n+1)], A121014(n+1)]`
-/

namespace A121912.P5781184646265481054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A121912.P5781184646265481054

/-!
# A121913: a(n) = 2^(n*(2*n+3)) = 2^A014106(n).

The programs for A121913, the canonical program `A121913.P13311321548365192136` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121913 has offset 0).

The definition of A121913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n*(2*n+3))` (program `A121913.P13311321548365192136`, by `A121913.P13311321548365192136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121913.P13311321548365192136

`2^(n*(2*n+3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121913

/-- `2^(n*(2*n+3))` -/
def P13311321548365192136.Spec : Prop :=
  ∀ n, (P13311321548365192136.a n : ℤ) = A121913 n

theorem P13311321548365192136.correct : P13311321548365192136.Spec := by
  intro n
  simp only [A121913]

end A121913

/-! ## A121913.P864906356104751402

`∏[16*a(n-1)]` with `a(0)=1, a(1)=32`
-/

namespace A121913.P864906356104751402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 32] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121913.P864906356104751402

namespace A121913

/-- `∏[16*a(n-1)]` -/
def P864906356104751402.Spec : Prop :=
  ∀ n, (P864906356104751402.a n : ℤ) = A121913 n

end A121913

/-! ## A121913.P14379020401679258824

`floor(2^(∑[a(n-1)+4]-1))` with `a(0)=1`
-/

namespace A121913.P14379020401679258824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ)⌋

end

end A121913.P14379020401679258824

namespace A121913

/-- `floor(2^(∑[a(n-1)+4]-1))` -/
def P14379020401679258824.Spec : Prop :=
  ∀ n, P14379020401679258824.a n = A121913 n

end A121913

/-! ## A121913.P1865894790491235383

`lcm(2, 4^(n+1)/2)^(n+1)/2`
-/

namespace A121913.P1865894790491235383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((4 ^ (n + 1) : ℚ) / 2)) ^ (n + 1) : ℚ) / 2

end

end A121913.P1865894790491235383

namespace A121913

/-- `lcm(2, 4^(n+1)/2)^(n+1)/2` -/
def P1865894790491235383.Spec : Prop :=
  ∀ n, P1865894790491235383.a n = (A121913 n : ℚ)

end A121913

/-! ## A121913.P1189729253593948751

`record[2^floor(n/2)^xor(1, xor(1, n)+1)]`
-/

namespace A121913.P1189729253593948751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ Nat.xor 1 (Nat.xor 1 n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121913.P1189729253593948751

namespace A121913

/-- `record[2^floor(n/2)^xor(1, xor(1, n)+1)]` -/
def P1189729253593948751.Spec : Prop :=
  ∀ n, P1189729253593948751.a n = (A121913 n : ℚ)

end A121913

/-!
# A121914: Numbers m such that (partial sums of m times (m 1's)) + 1 is prime; or m such that Sum_{k=1..m} A053422(k) + 1 is prime.

The programs for A121914, there is no canonical definition to state claims against.
-/

/-! ## A121914.P18065695671593678078

`∑[∑[A035517(A346650(n))]]`
-/

namespace A121914.P18065695671593678078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (A346650 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121914.P18065695671593678078

/-!
# A121915: a(n) = floor((Pi+e)^(n*Pi)).

The programs for A121915, there is no canonical definition to state claims against.
-/

/-! ## A121915.P3133078454651682454

`A121918(n)-char[A051597(n)]`
-/

namespace A121915.P3133078454651682454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121918 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121915.P3133078454651682454

/-! ## A121915.P160514089691902066

`A121918(n)-char[A121878(n+1)]`
-/

namespace A121915.P160514089691902066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121918 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121915.P160514089691902066

/-! ## A121915.P681251381078332801

`A121918(n)-A121900(A121900(n))`
-/

namespace A121915.P681251381078332801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121918 n - A121900 (A121900 n).toNat

end

end A121915.P681251381078332801

/-! ## A121915.P12756436130883834476

`A121918(n)-A001221(A046644(n+1))`
-/

namespace A121915.P12756436130883834476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121918 n - A001221 (A046644 (n + 1)).toNat

end

end A121915.P12756436130883834476

/-! ## A121915.P9467991726627561016

`A121904(n)+A121918(n)-A121903(n)`
-/

namespace A121915.P9467991726627561016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121904 n + (A121918 n - A121903 n)

end

end A121915.P9467991726627561016

/-!
# A121916: a(n) = floor((Pi+e)^(n*e)).

The programs for A121916, there is no canonical definition to state claims against.
-/

/-! ## A121916.P10864339249487719356

`floor((π+e)^(n*e))`
-/

namespace A121916.P10864339249487719356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi + Real.exp 1) ^ ((n : ℝ) * Real.exp 1)⌋

end

end A121916.P10864339249487719356

/-! ## A121916.P12041195447511966238

`A121917(n)-char[A051597(n)]`
-/

namespace A121916.P12041195447511966238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121917 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121916.P12041195447511966238

/-! ## A121916.P2071261848109282663

`A121917(n)-char[A333478(n+1)]`
-/

namespace A121916.P2071261848109282663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333478 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121917 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121916.P2071261848109282663

/-! ## A121916.P15845435610474230028

`A121917(n)-A121900(A121900(n))`
-/

namespace A121916.P15845435610474230028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121917 n - A121900 (A121900 n).toNat

end

end A121916.P15845435610474230028

/-! ## A121916.P9992716047613245367

`A121917(n)-A001222(A008578(n+1))`
-/

namespace A121916.P9992716047613245367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121917 n - A001222 (A008578 (n + 1)).toNat

end

end A121916.P9992716047613245367

/-!
# A121917: a(n) = ceiling((Pi+e)^(n*e)).

The programs for A121917, there is no canonical definition to state claims against.
-/

/-! ## A121917.P8592151531544921381

`ceil((π+e)^(n*e))`
-/

namespace A121917.P8592151531544921381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.pi + Real.exp 1) ^ ((n : ℝ) * Real.exp 1)⌉

end

end A121917.P8592151531544921381

/-! ## A121917.P11556152847461060536

`A121916(n)+A057427(n)`
-/

namespace A121917.P11556152847461060536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121916 n + A057427 n

end

end A121917.P11556152847461060536

/-! ## A121917.P1670124831781778080

`A121916(n)-A057428(n)`
-/

namespace A121917.P1670124831781778080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121916 n - A057428 n

end

end A121917.P1670124831781778080

/-! ## A121917.P4477074548607769974

`A121916(n)+char[A246276(n+1)]`
-/

namespace A121917.P4477074548607769974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121916 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121917.P4477074548607769974

/-! ## A121917.P9384288711722632639

`A121916(n)+A121900(A121900(n))`
-/

namespace A121917.P9384288711722632639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121916 n + A121900 (A121900 n).toNat

end

end A121917.P9384288711722632639

/-!
# A121918: a(n) = ceiling((Pi+e)^(n*Pi)).

The programs for A121918, there is no canonical definition to state claims against.
-/

/-! ## A121918.P14119567635428086707

`A121915(n)+abs(A062157(n))`
-/

namespace A121918.P14119567635428086707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121915 n + |A062157 n|

end

end A121918.P14119567635428086707

/-! ## A121918.P3119839997901681299

`A121915(n)+char[A007318(n)]`
-/

namespace A121918.P3119839997901681299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121915 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121918.P3119839997901681299

/-! ## A121918.P2954455925143095303

`A121915(n)+1-A000007(n)`
-/

namespace A121918.P2954455925143095303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121915 n + (1 - A000007 n)

end

end A121918.P2954455925143095303

/-! ## A121918.P17841166302395041446

`A121915(n)-A062157(2*n)`
-/

namespace A121918.P17841166302395041446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121915 n - A062157 (2 * n)

end

end A121918.P17841166302395041446

/-!
# A121920: a(n) = n-th integer from among those positive integers k where GCD(k,n) = prime power >1. a(1) = 1.

The programs for A121920, there is no canonical definition to state claims against.
-/

/-! ## A121920.P17593777526626677149

`A020639(n+1)*A031218(A077168(n))`
-/

namespace A121920.P17593777526626677149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A031218 (A077168 n).toNat

end

end A121920.P17593777526626677149

/-! ## A121920.P17365386061702954752

`A031218(n+1)*A135679(A077168(n))`
-/

namespace A121920.P17365386061702954752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (n + 1) * A135679 (A077168 n).toNat

end

end A121920.P17365386061702954752

/-! ## A121920.P6922004405126832335

`(A081155(A081155(n))+n)*A020639(n+1)`
-/

namespace A121920.P6922004405126832335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081155 (A081155 n).toNat + (n : ℤ)) * A020639 (n + 1)

end

end A121920.P6922004405126832335

/-! ## A121920.P14040984584898543958

`A285109(n+1)-A180026(A285109(n+1))`
-/

namespace A121920.P14040984584898543958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1) - A180026 (A285109 (n + 1)).toNat

end

end A121920.P14040984584898543958

/-! ## A121920.P16710157506948358372

`A020639(n+1)*A034699(A002805(n+1))`
-/

namespace A121920.P16710157506948358372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A034699 (A002805 (n + 1)).toNat

end

end A121920.P16710157506948358372

/-!
# A121921: a(n) = A102897(n) - 1.

The programs for A121921, there is no canonical definition to state claims against.
-/

/-! ## A121921.P9793400708747645785

`A102897(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121921.P9793400708747645785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102897 n - 1

end

end A121921.P9793400708747645785

/-! ## A121921.P12975161388791240114

`2*A102896(n)-1`
-/

namespace A121921.P12975161388791240114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102896 n - 1

end

end A121921.P12975161388791240114

/-! ## A121921.P15181639547776045571

`A134824(n+2)+A102897(n)`
-/

namespace A121921.P15181639547776045571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A102897 n

end

end A121921.P15181639547776045571

/-!
# A121923: a(n) = smallest odd m such that (m^n + (m+2)^n)/2 is prime.

The programs for A121923, there is no canonical definition to state claims against.
-/

/-! ## A121923.P17844068198591665448

`p?[A282698(3*n+4)+A282694(n)]`
-/

namespace A121923.P17844068198591665448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282698 (3 * n + 4) + A282694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121923.P17844068198591665448

/-!
# A121924: Number of splitting steps that one can take with a sequence of n 2's.

The programs for A121924, the canonical program `A121924.P18026522257178001485` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121924 has offset 1).

The definition of A121924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121924.P9914221309451537587

`∑[C(comp[∑[n]]-n, 2)-(n+1)]`
-/

namespace A121924.P9914221309451537587
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P9914221309451537587

namespace A121924

/-- `∑[C(comp[∑[n]]-n, 2)-(n+1)]` -/
def P9914221309451537587.Spec : Prop :=
  ∀ n, P9914221309451537587.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P5718688653903750122

`∑[C(comp[∑[n]]-n, 2)-n-1]`
-/

namespace A121924.P5718688653903750122
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P5718688653903750122

namespace A121924

/-- `∑[C(comp[∑[n]]-n, 2)-n-1]` -/
def P5718688653903750122.Spec : Prop :=
  ∀ n, P5718688653903750122.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P18026522257178001485

`∑[A025581(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A121924

/-- `∑[A025581(n)]` -/
def P18026522257178001485.Spec : Prop :=
  ∀ n, P18026522257178001485.a n = A121924 (n + 1)

theorem P18026522257178001485.correct : P18026522257178001485.Spec := by
  intro n
  simp only [A121924, Nat.add_sub_cancel]

end A121924

/-! ## A121924.P7109287907164758771

`∑[log2(A130321(n))]`
-/

namespace A121924.P7109287907164758771
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P7109287907164758771

namespace A121924

/-- `∑[log2(A130321(n))]` -/
def P7109287907164758771.Spec : Prop :=
  ∀ n, P7109287907164758771.a n = (A121924 (n + 1) : ℝ)

end A121924

/-! ## A121924.P7098891921475397869

`∑[val(A036561(n), 2)]`
-/

namespace A121924.P7098891921475397869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P7098891921475397869

namespace A121924

/-- `∑[val(A036561(n), 2)]` -/
def P7098891921475397869.Spec : Prop :=
  ∀ n, (P7098891921475397869.a n : ℤ) = A121924 (n + 1)

end A121924

/-! ## A121924.P17705015447206056157

`∑[abs(∑[A167407(n)])]`
-/

namespace A121924.P17705015447206056157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P17705015447206056157

namespace A121924

/-- `∑[abs(∑[A167407(n)])]` -/
def P17705015447206056157.Spec : Prop :=
  ∀ n, P17705015447206056157.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P1756513617177823845

`∑[sqrt(A095831(n+1))]`
-/

namespace A121924.P1756513617177823845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A095831 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P1756513617177823845

namespace A121924

/-- `∑[sqrt(A095831(n+1))]` -/
def P1756513617177823845.Spec : Prop :=
  ∀ n, P1756513617177823845.a n = (A121924 (n + 1) : ℝ)

end A121924

/-! ## A121924.P13237392870369383994

`∑[log2(A262616(n))/2]`
-/

namespace A121924.P13237392870369383994
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A262616 n : ℝ) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P13237392870369383994

namespace A121924

/-- `∑[log2(A262616(n))/2]` -/
def P13237392870369383994.Spec : Prop :=
  ∀ n, P13237392870369383994.a n = (A121924 (n + 1) : ℝ)

end A121924

/-! ## A121924.P715951077121418687

`∑[∑[1-A155124(n)]]`
-/

namespace A121924.P715951077121418687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A155124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P715951077121418687

namespace A121924

/-- `∑[∑[1-A155124(n)]]` -/
def P715951077121418687.Spec : Prop :=
  ∀ n, P715951077121418687.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P13459221816776102745

`∑[A004736(n+1)-1]`
-/

namespace A121924.P13459221816776102745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P13459221816776102745

namespace A121924

/-- `∑[A004736(n+1)-1]` -/
def P13459221816776102745.Spec : Prop :=
  ∀ n, P13459221816776102745.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P17168775887691421546

`∑[A057554(2*(n+1))]`
-/

namespace A121924.P17168775887691421546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P17168775887691421546

namespace A121924

/-- `∑[A057554(2*(n+1))]` -/
def P17168775887691421546.Spec : Prop :=
  ∀ n, P17168775887691421546.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P8320684680996941002

`∑[(A099375(n)-1)/2]`
-/

namespace A121924.P8320684680996941002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P8320684680996941002

namespace A121924

/-- `∑[(A099375(n)-1)/2]` -/
def P8320684680996941002.Spec : Prop :=
  ∀ n, P8320684680996941002.a n = (A121924 (n + 1) : ℚ)

end A121924

/-! ## A121924.P8111006552764470715

`A212013(n+1)-(n+1)`
-/

namespace A121924.P8111006552764470715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212013 (n + 1) - (n + 1 : ℤ)

end

end A121924.P8111006552764470715

namespace A121924

/-- `A212013(n+1)-(n+1)` -/
def P8111006552764470715.Spec : Prop :=
  ∀ n, P8111006552764470715.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P3204976402403703022

`∑[sqrt(A055461(n+1))-1]`
-/

namespace A121924.P3204976402403703022
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P3204976402403703022

namespace A121924

/-- `∑[sqrt(A055461(n+1))-1]` -/
def P3204976402403703022.Spec : Prop :=
  ∀ n, P3204976402403703022.a n = (A121924 (n + 1) : ℝ)

end A121924

/-! ## A121924.P18162235766558764833

`∑[log2(A090988(n+1))-1]`
-/

namespace A121924.P18162235766558764833
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P18162235766558764833

namespace A121924

/-- `∑[log2(A090988(n+1))-1]` -/
def P18162235766558764833.Spec : Prop :=
  ∀ n, P18162235766558764833.a n = (A121924 (n + 1) : ℝ)

end A121924

/-! ## A121924.P12120547157482273772

`∑[A127739(n+1)-(n+1)]`
-/

namespace A121924.P12120547157482273772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P12120547157482273772

namespace A121924

/-- `∑[A127739(n+1)-(n+1)]` -/
def P12120547157482273772.Spec : Prop :=
  ∀ n, P12120547157482273772.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P16518142825623330489

`∑[A004202(n+1)%(n+1)]`
-/

namespace A121924.P16518142825623330489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P16518142825623330489

namespace A121924

/-- `∑[A004202(n+1)%(n+1)]` -/
def P16518142825623330489.Spec : Prop :=
  ∀ n, P16518142825623330489.a n = A121924 (n + 1)

end A121924

/-! ## A121924.P3927328387410525238

`A212014(n+1)/2-(n+1)`
-/

namespace A121924.P3927328387410525238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212014 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A121924.P3927328387410525238

namespace A121924

/-- `A212014(n+1)/2-(n+1)` -/
def P3927328387410525238.Spec : Prop :=
  ∀ n, P3927328387410525238.a n = (A121924 (n + 1) : ℚ)

end A121924

/-! ## A121924.P234596985007168454

`(A394927(n+1)-(n+1))/2`
-/

namespace A121924.P234596985007168454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394927 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A121924.P234596985007168454

namespace A121924

/-- `(A394927(n+1)-(n+1))/2` -/
def P234596985007168454.Spec : Prop :=
  ∀ n, P234596985007168454.a n = (A121924 (n + 1) : ℚ)

end A121924

/-! ## A121924.P18018000096162352621

`∑[A064801(n+1)]-(n+1)²`
-/

namespace A121924.P18018000096162352621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A121924.P18018000096162352621

namespace A121924

/-- `∑[A064801(n+1)]-(n+1)²` -/
def P18018000096162352621.Spec : Prop :=
  ∀ n, P18018000096162352621.a n = A121924 (n + 1)

end A121924

/-!
# A121925: a(n) = floor(n*(Pi^e + e^Pi)).

The programs for A121925, the canonical program `A121925.P11732988073024696344` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121925 has offset 0).

The definition of A121925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(π^e+e^π))` (program `A121925.P11732988073024696344`, by `A121925.P11732988073024696344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121925.P11732988073024696344

`floor(n*(π^e+e^π))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121925

/-- `floor(n*(π^e+e^π))` -/
def P11732988073024696344.Spec : Prop :=
  ∀ n, P11732988073024696344.a n = A121925 n

theorem P11732988073024696344.correct : P11732988073024696344.Spec := by
  intro n
  simp only [A121925]

end A121925

/-! ## A121925.P18261880152405265618

`A121929(n)+A057428(n)`
-/

namespace A121925.P18261880152405265618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n + A057428 n

end

end A121925.P18261880152405265618

namespace A121925

/-- `A121929(n)+A057428(n)` -/
def P18261880152405265618.Spec : Prop :=
  ∀ n, P18261880152405265618.a n = A121925 n

end A121925

/-! ## A121925.P11045767786415723730

`A121929(n)-A057427(n)`
-/

namespace A121925.P11045767786415723730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n - A057427 n

end

end A121925.P11045767786415723730

namespace A121925

/-- `A121929(n)-A057427(n)` -/
def P11045767786415723730.Spec : Prop :=
  ∀ n, P11045767786415723730.a n = A121925 n

end A121925

/-! ## A121925.P8732604045024092645

`A121929(n)-A019426(2*n)`
-/

namespace A121925.P8732604045024092645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n - A019426 (2 * n)

end

end A121925.P8732604045024092645

namespace A121925

/-- `A121929(n)-A019426(2*n)` -/
def P8732604045024092645.Spec : Prop :=
  ∀ n, P8732604045024092645.a n = A121925 n

end A121925

/-! ## A121925.P18375026826446661205

`A121929(n)-char[A284120(n+1)]`
-/

namespace A121925.P18375026826446661205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121925.P18375026826446661205

namespace A121925

/-- `A121929(n)-char[A284120(n+1)]` -/
def P18375026826446661205.Spec : Prop :=
  ∀ n, P18375026826446661205.a n = A121925 n

end A121925

/-! ## A121925.P11291343821511688075

`A121929(n)-A019426(A005843(n))²`
-/

namespace A121925.P11291343821511688075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n - A019426 (A005843 n).toNat ^ 2

end

end A121925.P11291343821511688075

namespace A121925

/-- `A121929(n)-A019426(A005843(n))²` -/
def P11291343821511688075.Spec : Prop :=
  ∀ n, P11291343821511688075.a n = A121925 n

end A121925

/-! ## A121925.P8880545643203630978

`A121854(n)+A121929(n)-A121855(n)`
-/

namespace A121925.P8880545643203630978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121929 n - A121855 n)

end

end A121925.P8880545643203630978

namespace A121925

/-- `A121854(n)+A121929(n)-A121855(n)` -/
def P8880545643203630978.Spec : Prop :=
  ∀ n, P8880545643203630978.a n = A121925 n

end A121925

/-! ## A121925.P11316898897140811268

`A121856(n)+A121929(n)-A121857(n)`
-/

namespace A121925.P11316898897140811268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + (A121929 n - A121857 n)

end

end A121925.P11316898897140811268

namespace A121925

/-- `A121856(n)+A121929(n)-A121857(n)` -/
def P11316898897140811268.Spec : Prop :=
  ∀ n, P11316898897140811268.a n = A121925 n

end A121925

/-! ## A121925.P7484620665274922741

`A121901(n)+A121929(n)-A121899(n)`
-/

namespace A121925.P7484620665274922741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n + (A121929 n - A121899 n)

end

end A121925.P7484620665274922741

namespace A121925

/-- `A121901(n)+A121929(n)-A121899(n)` -/
def P7484620665274922741.Spec : Prop :=
  ∀ n, P7484620665274922741.a n = A121925 n

end A121925

/-! ## A121925.P12832120021893039110

`A121929(n)+A121930(n)-A121928(n)`
-/

namespace A121925.P12832120021893039110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n + (A121930 n - A121928 n)

end

end A121925.P12832120021893039110

namespace A121925

/-- `A121929(n)+A121930(n)-A121928(n)` -/
def P12832120021893039110.Spec : Prop :=
  ∀ n, P12832120021893039110.a n = A121925 n

end A121925

/-! ## A121925.P9200773174379716498

`A153151(A121929(n))`
-/

namespace A121925.P9200773174379716498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A121929 n).toNat

end

end A121925.P9200773174379716498

namespace A121925

/-- `A153151(A121929(n))` -/
def P9200773174379716498.Spec : Prop :=
  ∀ n, P9200773174379716498.a n = A121925 n

end A121925

/-! ## A121925.P9261970239031958144

`A121929(n)-A057428(n²)²`
-/

namespace A121925.P9261970239031958144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n - A057428 (n ^ 2) ^ 2

end

end A121925.P9261970239031958144

namespace A121925

/-- `A121929(n)-A057428(n²)²` -/
def P9261970239031958144.Spec : Prop :=
  ∀ n, P9261970239031958144.a n = A121925 n

end A121925

/-!
# A121926: a(n) = prime(n) + n!.

The programs for A121926, there is no canonical definition to state claims against.
-/

/-! ## A121926.P17380352323606640502

`eq[1, ∑{e}[n, #]]+(n+1)!`
-/

namespace A121926.P17380352323606640502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + Nat.factorial (n + 1)

end

end A121926.P17380352323606640502

/-! ## A121926.P9494764486656202196

`record[∑{p}[n+2, #]]+(n+1)!`
-/

namespace A121926.P9494764486656202196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Nat.factorial (n + 1)

end

end A121926.P9494764486656202196

/-! ## A121926.P5451687534416724058

`eq[n+1, ∑{d}[n, #]]+(n+1)!`
-/

namespace A121926.P5451687534416724058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + Nat.factorial (n + 1)

end

end A121926.P5451687534416724058

/-! ## A121926.P13845054217251830092

`A000040(n+1)+(n+1)!`
-/

namespace A121926.P13845054217251830092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (Nat.factorial (n + 1) : ℤ)

end

end A121926.P13845054217251830092

/-! ## A121926.P8842438214816896984

`A008578(n+2)+∏[n+1]`
-/

namespace A121926.P8842438214816896984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A121926.P8842438214816896984

/-! ## A121926.P9220698306237514323

`record[A006530(n+2)]+(n+1)!`
-/

namespace A121926.P9220698306237514323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.factorial (n + 1) : ℤ)

end

end A121926.P9220698306237514323

/-! ## A121926.P10954379720331487534

`record[A020639(n+2)]+(n+1)!`
-/

namespace A121926.P10954379720331487534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.factorial (n + 1) : ℤ)

end

end A121926.P10954379720331487534

/-! ## A121926.P70036483993083466

`(n+1)!+record[A000010(n+1)+1]`
-/

namespace A121926.P70036483993083466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121926.P70036483993083466

/-! ## A121926.P6064970760425801893

`A000142(n+1)+A000040(n+1)`
-/

namespace A121926.P6064970760425801893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + A000040 (n + 1)

end

end A121926.P6064970760425801893

/-! ## A121926.P3971405813633560402

`A052849(n+1)-A261809(n+1)`
-/

namespace A121926.P3971405813633560402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 (n + 1) - A261809 (n + 1)

end

end A121926.P3971405813633560402

/-!
# A121928: a(n) = ceiling(n*(e^Pi - Pi^e)).

The programs for A121928, the canonical program `A121928.P6163887505123670755` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121928 has offset 0).

The definition of A121928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121928.P6163887505123670755

`ceil(n*(exp(π)-π^e))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121928

/-- `ceil(n*(exp(π)-π^e))` -/
def P6163887505123670755.Spec : Prop :=
  ∀ n, P6163887505123670755.a n = A121928 n

theorem P6163887505123670755.correct : P6163887505123670755.Spec := by
  intro n
  simp only [A121928]

end A121928

/-! ## A121928.P11754723630725298246

`(A121930(n)+1)%(n+1)`
-/

namespace A121928.P11754723630725298246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121930 n + 1) (n + 1 : ℤ)

end

end A121928.P11754723630725298246

namespace A121928

/-- `(A121930(n)+1)%(n+1)` -/
def P11754723630725298246.Spec : Prop :=
  ∀ n, P11754723630725298246.a n = A121928 n

end A121928

/-! ## A121928.P16419876513039220845

`A121930(n)+A057427(n)`
-/

namespace A121928.P16419876513039220845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121930 n + A057427 n

end

end A121928.P16419876513039220845

namespace A121928

/-- `A121930(n)+A057427(n)` -/
def P16419876513039220845.Spec : Prop :=
  ∀ n, P16419876513039220845.a n = A121928 n

end A121928

/-! ## A121928.P17760563219966008510

`A121930(n)-A057428(n)`
-/

namespace A121928.P17760563219966008510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121930 n - A057428 n

end

end A121928.P17760563219966008510

namespace A121928

/-- `A121930(n)-A057428(n)` -/
def P17760563219966008510.Spec : Prop :=
  ∀ n, P17760563219966008510.a n = A121928 n

end A121928

/-! ## A121928.P4832897106312314059

`A121930(n)+A001065(A020639(n+1))`
-/

namespace A121928.P4832897106312314059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121930 n + A001065 (A020639 (n + 1)).toNat

end

end A121928.P4832897106312314059

namespace A121928

/-- `A121930(n)+A001065(A020639(n+1))` -/
def P4832897106312314059.Spec : Prop :=
  ∀ n, P4832897106312314059.a n = A121928 n

end A121928

/-! ## A121928.P666726653402016679

`A121855(n)+A121930(n)-A121854(n)`
-/

namespace A121928.P666726653402016679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121930 n - A121854 n)

end

end A121928.P666726653402016679

namespace A121928

/-- `A121855(n)+A121930(n)-A121854(n)` -/
def P666726653402016679.Spec : Prop :=
  ∀ n, P666726653402016679.a n = A121928 n

end A121928

/-! ## A121928.P7548749740674270144

`A121857(n)+A121930(n)-A121856(n)`
-/

namespace A121928.P7548749740674270144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + (A121930 n - A121856 n)

end

end A121928.P7548749740674270144

namespace A121928

/-- `A121857(n)+A121930(n)-A121856(n)` -/
def P7548749740674270144.Spec : Prop :=
  ∀ n, P7548749740674270144.a n = A121928 n

end A121928

/-! ## A121928.P1843973835538429136

`A121929(n)+A121930(n)-A121925(n)`
-/

namespace A121928.P1843973835538429136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n + (A121930 n - A121925 n)

end

end A121928.P1843973835538429136

namespace A121928

/-- `A121929(n)+A121930(n)-A121925(n)` -/
def P1843973835538429136.Spec : Prop :=
  ∀ n, P1843973835538429136.a n = A121928 n

end A121928

/-! ## A121928.P4904293551983102472

`A121930(n)+1-A010051(A000096(n+1)+1)`
-/

namespace A121928.P4904293551983102472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121930 n + (1 - A010051 (A000096 (n + 1) + 1).toNat)

end

end A121928.P4904293551983102472

namespace A121928

/-- `A121930(n)+1-A010051(A000096(n+1)+1)` -/
def P4904293551983102472.Spec : Prop :=
  ∀ n, P4904293551983102472.a n = A121928 n

end A121928

/-! ## A121928.P4982502480353203690

`A121930(n)+1-A010051(A000096(n+2))`
-/

namespace A121928.P4982502480353203690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121930 n + (1 - A010051 (A000096 (n + 2)).toNat)

end

end A121928.P4982502480353203690

namespace A121928

/-- `A121930(n)+1-A010051(A000096(n+2))` -/
def P4982502480353203690.Spec : Prop :=
  ∀ n, P4982502480353203690.a n = A121928 n

end A121928

/-! ## A121928.P812185806030333107

`A302203(n)+n-A178832(n)`
-/

namespace A121928.P812185806030333107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302203 n + ((n : ℤ) - A178832 n)

end

end A121928.P812185806030333107

namespace A121928

/-- `A302203(n)+n-A178832(n)` -/
def P812185806030333107.Spec : Prop :=
  ∀ n, P812185806030333107.a n = A121928 n

end A121928

/-!
# A121929: a(n) = ceiling(n*(e^Pi + Pi^e)).

The programs for A121929, the canonical program `A121929.P14835949815795357527` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121929 has offset 0).

The definition of A121929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(e^π+π^e))` (program `A121929.P14835949815795357527`, by `A121929.P14835949815795357527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121929.P14835949815795357527

`ceil(n*(e^π+π^e))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121929

/-- `ceil(n*(e^π+π^e))` -/
def P14835949815795357527.Spec : Prop :=
  ∀ n, P14835949815795357527.a n = A121929 n

theorem P14835949815795357527.correct : P14835949815795357527.Spec := by
  intro n
  simp only [A121929]

end A121929

/-! ## A121929.P15116083227662351761

`A121925(n)+A057427(n)`
-/

namespace A121929.P15116083227662351761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121925 n + A057427 n

end

end A121929.P15116083227662351761

namespace A121929

/-- `A121925(n)+A057427(n)` -/
def P15116083227662351761.Spec : Prop :=
  ∀ n, P15116083227662351761.a n = A121929 n

end A121929

/-! ## A121929.P17516612972276096252

`A121925(n)-A057428(n)`
-/

namespace A121929.P17516612972276096252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121925 n - A057428 n

end

end A121929.P17516612972276096252

namespace A121929

/-- `A121925(n)-A057428(n)` -/
def P17516612972276096252.Spec : Prop :=
  ∀ n, P17516612972276096252.a n = A121929 n

end A121929

/-! ## A121929.P11355933460169016621

`∑{e}[A020639(n+1), A121925(n)+#]`
-/

namespace A121929.P11355933460169016621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A121925 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A121929.P11355933460169016621

namespace A121929

/-- `∑{e}[A020639(n+1), A121925(n)+#]` -/
def P11355933460169016621.Spec : Prop :=
  ∀ n, P11355933460169016621.a n = A121929 n

end A121929

/-! ## A121929.P17937444759603404109

`A121855(n)+A121925(n)-A121854(n)`
-/

namespace A121929.P17937444759603404109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121925 n - A121854 n)

end

end A121929.P17937444759603404109

namespace A121929

/-- `A121855(n)+A121925(n)-A121854(n)` -/
def P17937444759603404109.Spec : Prop :=
  ∀ n, P17937444759603404109.a n = A121929 n

end A121929

/-! ## A121929.P10992303675517557092

`A121857(n)+A121925(n)-A121856(n)`
-/

namespace A121929.P10992303675517557092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + (A121925 n - A121856 n)

end

end A121929.P10992303675517557092

namespace A121929

/-- `A121857(n)+A121925(n)-A121856(n)` -/
def P10992303675517557092.Spec : Prop :=
  ∀ n, P10992303675517557092.a n = A121929 n

end A121929

/-! ## A121929.P17070153479334367690

`A121925(n)+A121928(n)-A121930(n)`
-/

namespace A121929.P17070153479334367690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121925 n + (A121928 n - A121930 n)

end

end A121929.P17070153479334367690

namespace A121929

/-- `A121925(n)+A121928(n)-A121930(n)` -/
def P17070153479334367690.Spec : Prop :=
  ∀ n, P17070153479334367690.a n = A121929 n

end A121929

/-! ## A121929.P14939593824825785134

`A016789(A008590(2*n))-(A057354(6*n)+2)`
-/

namespace A121929.P14939593824825785134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A008590 (2 * n)).toNat - (A057354 (6 * n) + 2)

end

end A121929.P14939593824825785134

namespace A121929

/-- `A016789(A008590(2*n))-(A057354(6*n)+2)` -/
def P14939593824825785134.Spec : Prop :=
  ∀ n, P14939593824825785134.a n = A121929 n

end A121929

/-! ## A121929.P9534284561438512516

`A153152(A121925(n))`
-/

namespace A121929.P9534284561438512516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A121925 n).toNat

end

end A121929.P9534284561438512516

namespace A121929

/-- `A153152(A121925(n))` -/
def P9534284561438512516.Spec : Prop :=
  ∀ n, P9534284561438512516.a n = A121929 n

end A121929

/-! ## A121929.P5138115244080587885

`A121925(n)+A057428(n²)²`
-/

namespace A121929.P5138115244080587885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121925 n + A057428 (n ^ 2) ^ 2

end

end A121929.P5138115244080587885

namespace A121929

/-- `A121925(n)+A057428(n²)²` -/
def P5138115244080587885.Spec : Prop :=
  ∀ n, P5138115244080587885.a n = A121929 n

end A121929

/-!
# A121930: a(n) = floor(n*(e^Pi - Pi^e)).

The programs for A121930, the canonical program `A121930.P11086668406027745670` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121930 has offset 0).

The definition of A121930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121930.P11086668406027745670

`floor(n*(exp(π)-π^e))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121930

/-- `floor(n*(exp(π)-π^e))` -/
def P11086668406027745670.Spec : Prop :=
  ∀ n, P11086668406027745670.a n = A121930 n

theorem P11086668406027745670.correct : P11086668406027745670.Spec := by
  intro n
  simp only [A121930]

end A121930

/-! ## A121930.P5360566758053364620

`A121928(n)+A057428(n)`
-/

namespace A121930.P5360566758053364620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121928 n + A057428 n

end

end A121930.P5360566758053364620

namespace A121930

/-- `A121928(n)+A057428(n)` -/
def P5360566758053364620.Spec : Prop :=
  ∀ n, P5360566758053364620.a n = A121930 n

end A121930

/-! ## A121930.P3887594237357237451

`A121928(n)-A057427(n)`
-/

namespace A121930.P3887594237357237451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121928 n - A057427 n

end

end A121930.P3887594237357237451

namespace A121930

/-- `A121928(n)-A057427(n)` -/
def P3887594237357237451.Spec : Prop :=
  ∀ n, P3887594237357237451.a n = A121930 n

end A121930

/-! ## A121930.P9716269453827007684

`A121928(A004277(n)-n)-1`
-/

namespace A121930.P9716269453827007684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121928 (A004277 n - (n : ℤ)).toNat - 1

end

end A121930.P9716269453827007684

namespace A121930

/-- `A121928(A004277(n)-n)-1` -/
def P9716269453827007684.Spec : Prop :=
  ∀ n, P9716269453827007684.a n = A121930 n

end A121930

/-! ## A121930.P10844981953450107198

`A121928(n)-A260738(A001316(n))`
-/

namespace A121930.P10844981953450107198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121928 n - A260738 (A001316 n).toNat

end

end A121930.P10844981953450107198

namespace A121930

/-- `A121928(n)-A260738(A001316(n))` -/
def P10844981953450107198.Spec : Prop :=
  ∀ n, P10844981953450107198.a n = A121930 n

end A121930

/-! ## A121930.P18004340001327191250

`A121854(n)+A121928(n)-A121855(n)`
-/

namespace A121930.P18004340001327191250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121928 n - A121855 n)

end

end A121930.P18004340001327191250

namespace A121930

/-- `A121854(n)+A121928(n)-A121855(n)` -/
def P18004340001327191250.Spec : Prop :=
  ∀ n, P18004340001327191250.a n = A121930 n

end A121930

/-! ## A121930.P18393605073284804914

`A121856(n)+A121928(n)-A121857(n)`
-/

namespace A121930.P18393605073284804914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + (A121928 n - A121857 n)

end

end A121930.P18393605073284804914

namespace A121930

/-- `A121856(n)+A121928(n)-A121857(n)` -/
def P18393605073284804914.Spec : Prop :=
  ∀ n, P18393605073284804914.a n = A121930 n

end A121930

/-! ## A121930.P10994557350692429735

`A121901(n)+A121928(n)-A121899(n)`
-/

namespace A121930.P10994557350692429735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n + (A121928 n - A121899 n)

end

end A121930.P10994557350692429735

namespace A121930

/-- `A121901(n)+A121928(n)-A121899(n)` -/
def P10994557350692429735.Spec : Prop :=
  ∀ n, P10994557350692429735.a n = A121930 n

end A121930

/-! ## A121930.P2640598818395743876

`A121925(n)+A121928(n)-A121929(n)`
-/

namespace A121930.P2640598818395743876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121925 n + (A121928 n - A121929 n)

end

end A121930.P2640598818395743876

namespace A121930

/-- `A121925(n)+A121928(n)-A121929(n)` -/
def P2640598818395743876.Spec : Prop :=
  ∀ n, P2640598818395743876.a n = A121930 n

end A121930

/-! ## A121930.P16991154502190968224

`A121928(n)-A057428(n²)²`
-/

namespace A121930.P16991154502190968224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121928 n - A057428 (n ^ 2) ^ 2

end

end A121930.P16991154502190968224

namespace A121930

/-- `A121928(n)-A057428(n²)²` -/
def P16991154502190968224.Spec : Prop :=
  ∀ n, P16991154502190968224.a n = A121930 n

end A121930

/-! ## A121930.P645865539951472839

`A032615(A121854(n²))-A032615(n)`
-/

namespace A121930.P645865539951472839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A121854 (n ^ 2)).toNat - A032615 n

end

end A121930.P645865539951472839

namespace A121930

/-- `A032615(A121854(n²))-A032615(n)` -/
def P645865539951472839.Spec : Prop :=
  ∀ n, P645865539951472839.a n = A121930 n

end A121930

/-!
# A121932: Enumeration of Cayley graphs. See page 24 of Marni Mishna's Master's thesis for details.

The programs for A121932, there is no canonical definition to state claims against.
-/

/-! ## A121932.P16373005097586278981

`A367554(A254667(n))`
-/

namespace A121932.P16373005097586278981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367554 (A254667 n).toNat

end

end A121932.P16373005097586278981

/-! ## A121932.P15801929154679848623

`A367554(A118868(n+1))`
-/

namespace A121932.P15801929154679848623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367554 (A118868 (n + 1)).toNat

end

end A121932.P15801929154679848623

/-! ## A121932.P12634293050929927487

`A367554(A396071(n+1))`
-/

namespace A121932.P12634293050929927487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367554 (A396071 (n + 1)).toNat

end

end A121932.P12634293050929927487

/-! ## A121932.P10749353793322419357

`A367554(A273662(n+2))`
-/

namespace A121932.P10749353793322419357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367554 (A273662 (n + 2)).toNat

end

end A121932.P10749353793322419357

/-! ## A121932.P2101287445394360338

`A367554(A063524(n)+n)`
-/

namespace A121932.P2101287445394360338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367554 (A063524 n + (n : ℤ)).toNat

end

end A121932.P2101287445394360338

/-!
# A121933: Number of labeled digraphs with n arcs for which every vertex has indegree at least one and outdegree at least one.

The programs for A121933, there is no canonical definition to state claims against.
-/

/-! ## A121933.P7571343128993841965

`A054916(eq[n^(n%2), ∑{digits}[n, #]])`
-/

namespace A121933.P7571343128993841965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054916 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A121933.P7571343128993841965

/-! ## A121933.P17184045674749516467

`A088413(A122447(n)+1)`
-/

namespace A121933.P17184045674749516467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088413 (A122447 n + 1).toNat

end

end A121933.P17184045674749516467

/-!
# A121934: Smallest positive number m such that m == i (mod i+1) for all 1<=i<=n.

The programs for A121934, the canonical program `A121934.P13105352355279889485` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121934 has offset 1).

The definition of A121934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121934.P13105352355279889485

`∑[abs(Δ[lcm(n, a(n-1))])]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121934

/-- `∑[abs(Δ[lcm(n, a(n-1))])]` -/
def P13105352355279889485.Spec : Prop :=
  ∀ n, P13105352355279889485.a n = A121934 (n + 1)

theorem P13105352355279889485.correct : P13105352355279889485.Spec := by
  intro n
  simp only [A121934, Nat.add_sub_cancel]

end A121934

/-! ## A121934.P5110503487430278545

`lcm(n+1, a(n-1)+1)-1` with `a(0)=1`
-/

namespace A121934.P5110503487430278545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 1 : ℤ) (a (n - 1) + 1) : ℤ) - 1

end

end A121934.P5110503487430278545

namespace A121934

/-- `lcm(n+1, a(n-1)+1)-1` -/
def P5110503487430278545.Spec : Prop :=
  ∀ n, P5110503487430278545.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P12364251425749698175

`or(1, A070198(n))`
-/

namespace A121934.P12364251425749698175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A070198 n)

end

end A121934.P12364251425749698175

namespace A121934

/-- `or(1, A070198(n))` -/
def P12364251425749698175.Spec : Prop :=
  ∀ n, P12364251425749698175.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P11929692818042093248

`or(1, ∑[A119944(n)])`
-/

namespace A121934.P11929692818042093248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121934.P11929692818042093248

namespace A121934

/-- `or(1, ∑[A119944(n)])` -/
def P11929692818042093248.Spec : Prop :=
  ∀ n, P11929692818042093248.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P593330033148676129

`A070198(A028310(n))`
-/

namespace A121934.P593330033148676129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (A028310 n).toNat

end

end A121934.P593330033148676129

namespace A121934

/-- `A070198(A028310(n))` -/
def P593330033148676129.Spec : Prop :=
  ∀ n, P593330033148676129.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P11817049347834103115

`A070198(A000007(n)+n)`
-/

namespace A121934.P11817049347834103115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (A000007 n + (n : ℤ)).toNat

end

end A121934.P11817049347834103115

namespace A121934

/-- `A070198(A000007(n)+n)` -/
def P11817049347834103115.Spec : Prop :=
  ∀ n, P11817049347834103115.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P10038102776301038129

`xor(A000007(n), A070198(n))`
-/

namespace A121934.P10038102776301038129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A070198 n)

end

end A121934.P10038102776301038129

namespace A121934

/-- `xor(A000007(n), A070198(n))` -/
def P10038102776301038129.Spec : Prop :=
  ∀ n, P10038102776301038129.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P1236785968298062123

`A255047(n)+A059794(n+1)`
-/

namespace A121934.P1236785968298062123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A059794 (n + 1)

end

end A121934.P1236785968298062123

namespace A121934

/-- `A255047(n)+A059794(n+1)` -/
def P1236785968298062123.Spec : Prop :=
  ∀ n, P1236785968298062123.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P7326211218235755882

`A060401(n+1)-A065475(n+1)`
-/

namespace A121934.P7326211218235755882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 1) - A065475 (n + 1)

end

end A121934.P7326211218235755882

namespace A121934

/-- `A060401(n+1)-A065475(n+1)` -/
def P7326211218235755882.Spec : Prop :=
  ∀ n, P7326211218235755882.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P819313540742916275

`A089263(2*n+1)+A003418(n+1)`
-/

namespace A121934.P819313540742916275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (2 * n + 1) + A003418 (n + 1)

end

end A121934.P819313540742916275

namespace A121934

/-- `A089263(2*n+1)+A003418(n+1)` -/
def P819313540742916275.Spec : Prop :=
  ∀ n, P819313540742916275.a n = A121934 (n + 1)

end A121934

/-! ## A121934.P6890746293327404966

`A003418(n+1)-A001065(A008578(n+1))`
-/

namespace A121934.P6890746293327404966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - A001065 (A008578 (n + 1)).toNat

end

end A121934.P6890746293327404966

namespace A121934

/-- `A003418(n+1)-A001065(A008578(n+1))` -/
def P6890746293327404966.Spec : Prop :=
  ∀ n, P6890746293327404966.a n = A121934 (n + 1)

end A121934

/-!
# A121936: Number of digraphs with labeled vertices and labeled arcs, with n arcs and with no vertex of indegree 0 or outdegree 0.

The programs for A121936, there is no canonical definition to state claims against.
-/

/-! ## A121936.P3804044627829206918

`A296068(C(∑[n]+2, 2)-comp[2*(n+2)])`
-/

namespace A121936.P3804044627829206918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296068 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 - SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A121936.P3804044627829206918

/-!
# A121937: a(n) = least m >= 2 such that (n mod m) > (n+2 mod m).

The programs for A121937, there is no canonical definition to state claims against.
-/

/-! ## A121937.P4456194026633903309

`A090369(C(n+3, 2))`
-/

namespace A121937.P4456194026633903309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (Nat.choose (n + 3) 2)

end

end A121937.P4456194026633903309

/-! ## A121937.P4216079399244302250

`A090369(∑[n+2]+1)`
-/

namespace A121937.P4216079399244302250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121937.P4216079399244302250

/-! ## A121937.P9918380050871544696

`A090369(A000217(n+2))%(n+10)`
-/

namespace A121937.P9918380050871544696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090369 (A000217 (n + 2)).toNat) (n + 10 : ℤ)

end

end A121937.P9918380050871544696

/-! ## A121937.P7740376588227339315

`∑{p}[A090369(A000217(n+2)), A090369(#)]`
-/

namespace A121937.P7740376588227339315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A000217 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A090369 p

end

end A121937.P7740376588227339315

/-! ## A121937.P17626836900856341043

`A090369(A000217(n+2))+n*A000038(n)`
-/

namespace A121937.P17626836900856341043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A000217 (n + 2)).toNat + (n : ℤ) * A000038 n

end

end A121937.P17626836900856341043

/-! ## A121937.P12741136288924052617

`and(1, A000040(n+1))^n*A090369(A000217(n+2))`
-/

namespace A121937.P12741136288924052617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) ^ n * A090369 (A000217 (n + 2)).toNat

end

end A121937.P12741136288924052617

/-! ## A121937.P234661150450471846

`A130703(A090369(2*(n+1)))+A090369(A000217(n+2))`
-/

namespace A121937.P234661150450471846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130703 (A090369 (2 * (n + 1))).toNat + A090369 (A000217 (n + 2)).toNat

end

end A121937.P234661150450471846

/-! ## A121937.P7266605315766258317

`A292269((n+2)*(n+3))`
-/

namespace A121937.P7266605315766258317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 ((n + 2) * (n + 3))

end

end A121937.P7266605315766258317

/-!
# A121938: Primes of the form (3^k + 5^k)/2^3 = A074606(k)/8.

The programs for A121938, there is no canonical definition to state claims against.
-/

/-! ## A121938.P1709772872812172362

`A079773(A122853(n+1))`
-/

namespace A121938.P1709772872812172362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079773 (A122853 (n + 1)).toNat

end

end A121938.P1709772872812172362

/-!
# A121939: Palindromic numbers that contain the sum of their digits as a substring.

The programs for A121939, there is no canonical definition to state claims against.
-/

/-! ## A121939.P6890732370119317863

`∩[A002113(n+1), A052018(n+2)]`
-/

namespace A121939.P6890732370119317863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121939.P6890732370119317863

/-! ## A121939.P17662268481225950823

`∩[A052018(n+1), A110751(n+1)]`
-/

namespace A121939.P17662268481225950823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121939.P17662268481225950823

/-! ## A121939.P14609952335102054409

`filter[A052018(n+2), A136522(#)]`
-/

namespace A121939.P14609952335102054409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A121939.P14609952335102054409

/-! ## A121939.P17831218986981103844

`filter[A385158(n+1), A136522(#)]`
-/

namespace A121939.P17831218986981103844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A121939.P17831218986981103844

/-! ## A121939.P1229260061228600441

`filter[A249515(n+2), A136522(#)]`
-/

namespace A121939.P1229260061228600441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249515 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A121939.P1229260061228600441

/-!
# A121940: Product of the first n primes of the form 6k+1.

The programs for A121940, there is no canonical definition to state claims against.
-/

/-! ## A121940.P17250682661408481239

`∏[p?[3*n+1]]`
-/

namespace A121940.P17250682661408481239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121940.P17250682661408481239

/-! ## A121940.P13916958125285591293

`∏[or(1, p?[3*n-2])]`
-/

namespace A121940.P13916958125285591293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121940.P13916958125285591293

/-! ## A121940.P3104456849816634738

`∏[∏{d}[p?[3*n-2], #]]`
-/

namespace A121940.P3104456849816634738
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121940.P3104456849816634738

/-! ## A121940.P13758866905227805793

`∏[A002476(n+1)]`
-/

namespace A121940.P13758866905227805793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121940.P13758866905227805793

/-! ## A121940.P4583911594901034904

`∏[A272409(n+1)]`
-/

namespace A121940.P4583911594901034904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121940.P4583911594901034904

/-!
# A121941: Number of unlabeled connected simple graphs with n nodes of degree 4 or less.

The programs for A121941, there is no canonical definition to state claims against.
-/

/-! ## A121941.P14197278153190365680

`A056172(A362893(n)²)+1`
-/

namespace A121941.P14197278153190365680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A362893 n ^ 2).toNat + 1

end

end A121941.P14197278153190365680

/-! ## A121941.P10562047031491494168

`A338546(A004148(n))+A102605(n)`
-/

namespace A121941.P10562047031491494168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338546 (A004148 n).toNat + A102605 n

end

end A121941.P10562047031491494168

/-! ## A121941.P11593889512863413952

`A112689(A350589(n)+A122366(n))`
-/

namespace A121941.P11593889512863413952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A350589 n + A122366 n).toNat

end

end A121941.P11593889512863413952

/-! ## A121941.P5610324127309130351

`A338546(A004148(n))+A253638(n+1)`
-/

namespace A121941.P5610324127309130351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338546 (A004148 n).toNat + A253638 (n + 1)

end

end A121941.P5610324127309130351

/-!
# A121942: Number of digraphs of hydrogen bonded water clusters.

The programs for A121942, there is no canonical definition to state claims against.
-/

/-! ## A121942.P13879148805287850046

`A049780(A144729(n+1)-6)`
-/

namespace A121942.P13879148805287850046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 (A144729 (n + 1) - 6).toNat

end

end A121942.P13879148805287850046

/-!
# A121944: Composite number of the form 4n^2+1.

The programs for A121944, the canonical program `A121944.P13014670239025665609` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121944 has offset 1).

The definition of A121944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121944.P13621979031272317761

`4*A229134(n+1)+1`
-/

namespace A121944.P13621979031272317761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A229134 (n + 1) + 1

end

end A121944.P13621979031272317761

namespace A121944

/-- `4*A229134(n+1)+1` -/
def P13621979031272317761.Spec : Prop :=
  ∀ n, P13621979031272317761.a n = A121944 (n + 1)

end A121944

/-! ## A121944.P6989560558325969976

`(2*A094550(n+1))²+1`
-/

namespace A121944.P6989560558325969976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A094550 (n + 1)) ^ 2 + 1

end

end A121944.P6989560558325969976

namespace A121944

/-- `(2*A094550(n+1))²+1` -/
def P6989560558325969976.Spec : Prop :=
  ∀ n, P6989560558325969976.a n = A121944 (n + 1)

end A121944

/-! ## A121944.P13590085106832795709

`A053755(A094550(n+1))`
-/

namespace A121944.P13590085106832795709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A094550 (n + 1)).toNat

end

end A121944.P13590085106832795709

namespace A121944

/-- `A053755(A094550(n+1))` -/
def P13590085106832795709.Spec : Prop :=
  ∀ n, P13590085106832795709.a n = A121944 (n + 1)

end A121944

/-! ## A121944.P13014670239025665609

`∩[A050800(n+1), A053755(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A121944

/-- `∩[A050800(n+1), A053755(n)]` -/
def P13014670239025665609.Spec : Prop :=
  ∀ n, (P13014670239025665609.a n : ℤ) = A121944 (n + 1)

theorem P13014670239025665609.correct : P13014670239025665609.Spec := by
  intro n
  simp only [A121944, Nat.add_sub_cancel]

end A121944

/-! ## A121944.P5343419118733356664

`∩[A050800(n+1), A389957(n+1)]`
-/

namespace A121944.P5343419118733356664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P5343419118733356664

namespace A121944

/-- `∩[A050800(n+1), A389957(n+1)]` -/
def P5343419118733356664.Spec : Prop :=
  ∀ n, (P5343419118733356664.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P15677860537806581595

`∩[A050800(n+1), A146328(n+1)]`
-/

namespace A121944.P15677860537806581595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P15677860537806581595

namespace A121944

/-- `∩[A050800(n+1), A146328(n+1)]` -/
def P15677860537806581595.Spec : Prop :=
  ∀ n, (P15677860537806581595.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P15012331205310842263

`∩[(2*n)²+1, A134406(n+1)]`
-/

namespace A121944.P15012331205310842263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P15012331205310842263

namespace A121944

/-- `∩[(2*n)²+1, A134406(n+1)]` -/
def P15012331205310842263.Spec : Prop :=
  ∀ n, (P15012331205310842263.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P2671399864917803310

`∩[A134406(n+1), A053755(n)]`
-/

namespace A121944.P2671399864917803310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P2671399864917803310

namespace A121944

/-- `∩[A134406(n+1), A053755(n)]` -/
def P2671399864917803310.Spec : Prop :=
  ∀ n, (P2671399864917803310.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P16153838181477414460

`∩[A134406(n+1), A146328(n+1)]`
-/

namespace A121944.P16153838181477414460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P16153838181477414460

namespace A121944

/-- `∩[A134406(n+1), A146328(n+1)]` -/
def P16153838181477414460.Spec : Prop :=
  ∀ n, (P16153838181477414460.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P9882698650551289539

`∩[A134406(n+1), A389957(n+1)]`
-/

namespace A121944.P9882698650551289539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P9882698650551289539

namespace A121944

/-- `∩[A134406(n+1), A389957(n+1)]` -/
def P9882698650551289539.Spec : Prop :=
  ∀ n, (P9882698650551289539.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P8621989271697842602

`∩[A050800(n+1), A080335(n)]`
-/

namespace A121944.P8621989271697842602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P8621989271697842602

namespace A121944

/-- `∩[A050800(n+1), A080335(n)]` -/
def P8621989271697842602.Spec : Prop :=
  ∀ n, (P8621989271697842602.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P5566118216052037699

`∩[A134406(n+1), A080335(n)]`
-/

namespace A121944.P5566118216052037699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P5566118216052037699

namespace A121944

/-- `∩[A134406(n+1), A080335(n)]` -/
def P5566118216052037699.Spec : Prop :=
  ∀ n, (P5566118216052037699.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P16100477844512943435

`∩[A050800(n+1), A214345(n)]`
-/

namespace A121944.P16100477844512943435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P16100477844512943435

namespace A121944

/-- `∩[A050800(n+1), A214345(n)]` -/
def P16100477844512943435.Spec : Prop :=
  ∀ n, (P16100477844512943435.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P7692947473184397049

`∩[A134406(n+1), A214345(n)]`
-/

namespace A121944.P7692947473184397049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P7692947473184397049

namespace A121944

/-- `∩[A134406(n+1), A214345(n)]` -/
def P7692947473184397049.Spec : Prop :=
  ∀ n, (P7692947473184397049.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P2385067434773396855

`∩[A050800(n+1), A245906(n+1)]`
-/

namespace A121944.P2385067434773396855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P2385067434773396855

namespace A121944

/-- `∩[A050800(n+1), A245906(n+1)]` -/
def P2385067434773396855.Spec : Prop :=
  ∀ n, (P2385067434773396855.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P15504815128066975596

`∩[A050800(n+1), A286264(n+1)]`
-/

namespace A121944.P15504815128066975596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P15504815128066975596

namespace A121944

/-- `∩[A050800(n+1), A286264(n+1)]` -/
def P15504815128066975596.Spec : Prop :=
  ∀ n, (P15504815128066975596.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P15918882833352362858

`∩[A134406(n+1), A245906(n+1)]`
-/

namespace A121944.P15918882833352362858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P15918882833352362858

namespace A121944

/-- `∩[A134406(n+1), A245906(n+1)]` -/
def P15918882833352362858.Spec : Prop :=
  ∀ n, (P15918882833352362858.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P684545201518902856

`∩[A134406(n+1), A286264(n+1)]`
-/

namespace A121944.P684545201518902856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P684545201518902856

namespace A121944

/-- `∩[A134406(n+1), A286264(n+1)]` -/
def P684545201518902856.Spec : Prop :=
  ∀ n, (P684545201518902856.a n : ℤ) = A121944 (n + 1)

end A121944

/-! ## A121944.P16459548249554969113

`A002522(2*A094550(n+1))`
-/

namespace A121944.P16459548249554969113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (2 * A094550 (n + 1)).toNat

end

end A121944.P16459548249554969113

namespace A121944

/-- `A002522(2*A094550(n+1))` -/
def P16459548249554969113.Spec : Prop :=
  ∀ n, P16459548249554969113.a n = A121944 (n + 1)

end A121944

/-! ## A121944.P1946718174146000169

`∩[A050800(n+1), A081345(n)]`
-/

namespace A121944.P1946718174146000169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P1946718174146000169

namespace A121944

/-- `∩[A050800(n+1), A081345(n)]` -/
def P1946718174146000169.Spec : Prop :=
  ∀ n, (P1946718174146000169.a n : ℤ) = A121944 (n + 1)

end A121944

/-!
# A121945: a(n) is the sum of the first n factorials in decreasing powers from n to 1. a(n) = Sum_{k = 1..n} k!^(n-k+1).

The programs for A121945, there is no canonical definition to state claims against.
-/

/-! ## A121945.P17539581926463156191

`A056162(n+2)-2`
-/

namespace A121945.P17539581926463156191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056162 (n + 2) - 2

end

end A121945.P17539581926463156191

/-! ## A121945.P13301361778057275029

`record[Δ[A056162(A056926(n))]]`
-/

namespace A121945.P13301361778057275029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056162 (A056926 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121945.P13301361778057275029

/-! ## A121945.P3549802890022121817

`record[Δ[A056162(A004736(n+1))]]`
-/

namespace A121945.P3549802890022121817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056162 (A004736 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121945.P3549802890022121817

/-! ## A121945.P17192487737581707391

`record[Δ[A056162(A010766(n+1))]]`
-/

namespace A121945.P17192487737581707391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056162 (A010766 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121945.P17192487737581707391

/-! ## A121945.P2473914285804755737

`record[Δ[A056162(A055396(n+1))]]`
-/

namespace A121945.P2473914285804755737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056162 (A055396 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121945.P2473914285804755737

/-!
# A121946: Let r be the matrix {{1,1},{0,1}} and b={{1,0},{1,0}}. Let A be the semigroup generated by r and b. a(n) is the number of words of length n in A.

The programs for A121946, there is no canonical definition to state claims against.
-/

/-! ## A121946.P11319534951917130446

`∑[A034891(abs(1-n))]`
-/

namespace A121946.P11319534951917130446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121946.P11319534951917130446

/-! ## A121946.P2241005231963559543

`∑[∑[A000607(abs(1-n))]]+1`
-/

namespace A121946.P2241005231963559543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121946.P2241005231963559543

/-! ## A121946.P14231935101196634833

`A034891(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A121946.P14231935101196634833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034891 (n - 1) + a (n - 1)

end

end A121946.P14231935101196634833

/-! ## A121946.P572201861509558611

`∑[A034891(n)-A000607(n)]+1`
-/

namespace A121946.P572201861509558611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n - A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121946.P572201861509558611

/-! ## A121946.P816677696864985168

`A024000(A034891(n))+∑[A034891(n)]`
-/

namespace A121946.P816677696864985168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A034891 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121946.P816677696864985168

/-!
# A121948: Floor of n-th 3-almost prime / n.

The programs for A121948, the canonical program `A121948.P3244360123003645214` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121948 has offset 1).

The definition of A121948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121948.P3244360123003645214

`floor(Δ[A110209(n)]/(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121948

/-- `floor(Δ[A110209(n)]/(n+1))` -/
def P3244360123003645214.Spec : Prop :=
  ∀ n, P3244360123003645214.a n = A121948 (n + 1)

theorem P3244360123003645214.correct : P3244360123003645214.Spec := by
  intro n
  simp only [A121948, Nat.add_sub_cancel]

end A121948

/-!
# A121949: Number of isomeric aza-benzenoids with one nitrogen atom and n hexagons.

The programs for A121949, there is no canonical definition to state claims against.
-/

/-! ## A121949.P7193509529000207782

`A057354(A373930(n+1)+A000032(n))`
-/

namespace A121949.P7193509529000207782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A373930 (n + 1) + A000032 n).toNat

end

end A121949.P7193509529000207782

/-! ## A121949.P2376630064606736818

`A110656(A256583(n+1)+A256561(n+1))`
-/

namespace A121949.P2376630064606736818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A256583 (n + 1) + A256561 (n + 1)).toNat

end

end A121949.P2376630064606736818

/-!
# A121953: a(n) = (n-2)*a(n-2) + a(n-3), with a(1)=0, a(2)=1, a(3)=1.

The programs for A121953, the canonical program `A121953.P2300416717599325498` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121953 has offset 1).

The definition of A121953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121953.P2300416717599325498

`a(n-3)+(n-1)*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121953

/-- `a(n-3)+(n-1)*a(n-2)` -/
def P2300416717599325498.Spec : Prop :=
  ∀ n, P2300416717599325498.a n = A121953 (n + 1)

theorem P2300416717599325498.correct : P2300416717599325498.Spec := by
  intro n
  simp only [A121953, Nat.add_sub_cancel]

end A121953

/-! ## A121953.P9294126571809487901

`floor(a(n-3))-(1-n)*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A121953.P9294126571809487901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) - (1 - (n : ℤ)) * a (n - 2)

end

end A121953.P9294126571809487901

namespace A121953

/-- `floor(a(n-3))-(1-n)*a(n-2)` -/
def P9294126571809487901.Spec : Prop :=
  ∀ n, P9294126571809487901.a n = A121953 (n + 1)

theorem P9294126571809487901.correct : P9294126571809487901.Spec := by
  intro n
  simp only [A121953, Nat.add_sub_cancel, A121953.P9294126571809487901.a, A121953.P2300416717599325498.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A121953

/-! ## A121953.P3212414429631704074

`a(n-3)-(a(n-2)-n*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A121953.P3212414429631704074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) - (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A121953.P3212414429631704074

namespace A121953

/-- `a(n-3)-(a(n-2)-n*a(n-2))` -/
def P3212414429631704074.Spec : Prop :=
  ∀ n, P3212414429631704074.a n = A121953 (n + 1)

end A121953

/-! ## A121953.P13085046281714381702

`a(n-3)+a(n-2)*A023443(n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A121953.P13085046281714381702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + a (n - 2) * A023443 n

end

end A121953.P13085046281714381702

namespace A121953

/-- `a(n-3)+a(n-2)*A023443(n)` -/
def P13085046281714381702.Spec : Prop :=
  ∀ n, P13085046281714381702.a n = A121953 (n + 1)

end A121953

/-! ## A121953.P5109157030654905656

`A257639(∑[n!+1]+1)-1`
-/

namespace A121953.P5109157030654905656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A121953.P5109157030654905656

namespace A121953

/-- `A257639(∑[n!+1]+1)-1` -/
def P5109157030654905656.Spec : Prop :=
  ∀ n, P5109157030654905656.a n = A121953 (n + 1)

end A121953

/-!
# A121955: Expansion of x^2*(9 + 8*x - 8*x^2)/((1+x-x^2)*(1-2*x-4*x^2)).

The programs for A121955, the canonical program `A121955.P2824422519943043015` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121955 has offset 1).

The definition of A121955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121955.P2824422519943043015

`a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=9, a(2)=17, a(3)=72`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121955

/-- `a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` -/
def P2824422519943043015.Spec : Prop :=
  ∀ n, P2824422519943043015.a n = A121955 (n + 1)

theorem P2824422519943043015.correct : P2824422519943043015.Spec := by
  intro n
  simp only [A121955, Nat.add_sub_cancel]

end A121955

/-! ## A121955.P521547655800895411

`Δ[A094633(n)+∑[A093042(n)]]`
-/

namespace A121955.P521547655800895411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094633 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121955.P521547655800895411

namespace A121955

/-- `Δ[A094633(n)+∑[A093042(n)]]` -/
def P521547655800895411.Spec : Prop :=
  ∀ n, P521547655800895411.a n = A121955 (n + 1)

end A121955

/-! ## A121955.P6734394596217233083

`A093042(n+1)+Δ[A094633(n)]`
-/

namespace A121955.P6734394596217233083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093042 (n + 1) + (f1 (n + 1) - f1 n)

end

end A121955.P6734394596217233083

namespace A121955

/-- `A093042(n+1)+Δ[A094633(n)]` -/
def P6734394596217233083.Spec : Prop :=
  ∀ n, P6734394596217233083.a n = A121955 (n + 1)

end A121955

/-! ## A121955.P35876241953053909

`A093042(n+1)+A094633(n+1)-A094633(n)`
-/

namespace A121955.P35876241953053909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093042 (n + 1) + (A094633 (n + 1) - A094633 n)

end

end A121955.P35876241953053909

namespace A121955

/-- `A093042(n+1)+A094633(n+1)-A094633(n)` -/
def P35876241953053909.Spec : Prop :=
  ∀ n, P35876241953053909.a n = A121955 (n + 1)

end A121955

/-!
# A121956: a(n) = a(n-1) + (n-2)*a(n-2) + a(n-3) starting a(0)=0, a(1)=a(2)=1.

The programs for A121956, the canonical program `A121956.P14076684783713542451` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121956 has offset 0).

The definition of A121956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-2)*a(n-2)+a(n-3)` (program `A121956.P14076684783713542451`, by `A121956.P14076684783713542451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121956.P14076684783713542451

`a(n-1)+(n-2)*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121956

/-- `a(n-1)+(n-2)*a(n-2)+a(n-3)` -/
def P14076684783713542451.Spec : Prop :=
  ∀ n, P14076684783713542451.a n = A121956 n

theorem P14076684783713542451.correct : P14076684783713542451.Spec := by
  intro n
  simp only [A121956]

end A121956

/-!
# A121958: a(n) = a(n-2) + (n^2 - 3*n + 1)*a(n-1) with a(1)=0, a(2)=1, a(3)=1.

The programs for A121958, there is no canonical definition to state claims against.
-/

/-! ## A121958.P10700021962134847748

`a(n-2)+(n²-(n+1))*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A121958.P10700021962134847748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((n ^ 2 : ℤ) - (n + 1 : ℤ)) * a (n - 1)

end

end A121958.P10700021962134847748

/-! ## A121958.P5725211619403494164

`A045331(A303760(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6`
-/

namespace A121958.P5725211619403494164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 6] fun n a =>
  A045331 (A303760 (a (n - 1)).toNat).toNat

end

end A121958.P5725211619403494164

/-!
# A121959: a(n) = (n-3)*a(n-1) + a(n-4), with a(1)=0, a(2)=1, a(3)=2, a(4)=3.

The programs for A121959, there is no canonical definition to state claims against.
-/

/-! ## A121959.P13448638183658425672

`a(n-4)+(n-2)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A121959.P13448638183658425672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 4) + ((n : ℤ) - 2) * a (n - 1)

end

end A121959.P13448638183658425672

/-! ## A121959.P11148368540318781739

`A091226(A020105(n)+n)`
-/

namespace A121959.P11148368540318781739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A020105 n + (n : ℤ)).toNat

end

end A121959.P11148368540318781739

/-! ## A121959.P16233046742069997141

`A132270(A016777(2*(n-1)*a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A121959.P16233046742069997141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A132270 (A016777 (2 * (((n : ℤ) - 1) * a (n - 1)) - a (n - 2)).toNat).toNat

end

end A121959.P16233046742069997141

/-! ## A121959.P2232528144718068166

`A008618(A339440(n)+A094023(2*(n+2)))`
-/

namespace A121959.P2232528144718068166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A339440 n + A094023 (2 * (n + 2))).toNat

end

end A121959.P2232528144718068166

/-!
# A121960: Expansion of g.f. x*(1 +30*x +49*x^2 -71*x^3 -116*x^4)/((1+2*x)*(1-2*x^2) *(1-2*x-4*x^2)).

The programs for A121960, the canonical program `A121960.P11350275140019188531` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121960 has offset 1).

The definition of A121960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121960.P11350275140019188531

`10*a(n-2)+8*a(n-3)-16*a(n-4)-16*a(n-5)` with `a(0)=1, a(1)=30, a(2)=59, a(3)=237, a(4)=698`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121960

/-- `10*a(n-2)+8*a(n-3)-16*a(n-4)-16*a(n-5)` -/
def P11350275140019188531.Spec : Prop :=
  ∀ n, P11350275140019188531.a n = A121960 (n + 1)

theorem P11350275140019188531.correct : P11350275140019188531.Spec := by
  intro n
  simp only [A121960, Nat.add_sub_cancel]

end A121960

/-!
# A121961: Expansion of g.f.: 1/( (1+2*x)*(1-2*x-4*x^2)*(1-2*x^2)^2 ).

The programs for A121961, there is no canonical definition to state claims against.
-/

/-! ## A121961.P13108549039998989477

`ceil(xor(1, n)/2)*A096667(A316980(n))`
-/

namespace A121961.P13108549039998989477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ * A096667 (A316980 n).toNat

end

end A121961.P13108549039998989477

/-! ## A121961.P18417461236963964479

`A091202(lcm(A091198(n), A100621(n)))`
-/

namespace A121961.P18417461236963964479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (Int.lcm (A091198 n) (A100621 n))

end

end A121961.P18417461236963964479

/-!
# A121963: Expansion of x^2*(1 + 2*x + 7*x^2 - 3*x^3 + x^4)/(1 - 26*x^3 - x^6).

The programs for A121963, the canonical program `A121963.P795155847865887877` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121963 has offset 1).

The definition of A121963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121963.P795155847865887877

`26*a(n-3)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=23, a(5)=53`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121963

/-- `26*a(n-3)+a(n-6)` -/
def P795155847865887877.Spec : Prop :=
  ∀ n, (P795155847865887877.a n : ℤ) = A121963 (n + 1)

theorem P795155847865887877.correct : P795155847865887877.Spec := by
  intro n
  simp only [A121963, Nat.add_sub_cancel]

end A121963

/-! ## A121963.P14935950400550249707

`A080405(Δ[∏[A155940(n+1)]])`
-/

namespace A121963.P14935950400550249707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (f1 (n + 1) - f1 n).toNat

end

end A121963.P14935950400550249707

namespace A121963

/-- `A080405(Δ[∏[A155940(n+1)]])` -/
def P14935950400550249707.Spec : Prop :=
  ∀ n, P14935950400550249707.a n = A121963 (n + 1)

end A121963

/-!
# A121966: a(n) = a(n-1) - (n-1)*a(n-2), with a(0) = 1, a(1) = 2.

The programs for A121966, the canonical program `A121966.P9033503086846636359` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121966 has offset 0).

The definition of A121966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-(n-1)*a(n-2)` (program `A121966.P9033503086846636359`, by `A121966.P9033503086846636359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121966.P9033503086846636359

`a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121966

/-- `a(n-1)-(n-1)*a(n-2)` -/
def P9033503086846636359.Spec : Prop :=
  ∀ n, P9033503086846636359.a n = A121966 n

theorem P9033503086846636359.correct : P9033503086846636359.Spec := by
  intro n
  simp only [A121966]

end A121966

/-! ## A121966.P9668157990627776129

`a(n-1)+a(n-2)/(1-n)^-1` with `a(0)=1, a(1)=2`
-/

namespace A121966.P9668157990627776129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) / (1 - (n : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A121966.P9668157990627776129

namespace A121966

/-- `a(n-1)+a(n-2)/(1-n)^-1` -/
def P9668157990627776129.Spec : Prop :=
  ∀ n, P9668157990627776129.a n = (A121966 n : ℚ)

end A121966

/-! ## A121966.P3314656450424977292

`a(n-1)-a(n-2)*A023443(n)` with `a(0)=1, a(1)=2`
-/

namespace A121966.P3314656450424977292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - a (n - 2) * A023443 n

end

end A121966.P3314656450424977292

namespace A121966

/-- `a(n-1)-a(n-2)*A023443(n)` -/
def P3314656450424977292.Spec : Prop :=
  ∀ n, P3314656450424977292.a n = A121966 n

end A121966

/-!
# A121967: Binary expansion of root of cos x = x.

The programs for A121967, there is no canonical definition to state claims against.
-/

/-! ## A121967.P12001455196665986218

`ceil(atan(Δ[A182101(n)]))`
-/

namespace A121967.P12001455196665986218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (f1 (n + 1) - f1 n : ℝ)⌉

end

end A121967.P12001455196665986218

/-! ## A121967.P2362279166119592060

`A000045(Δ[A182101(n)]+1)`
-/

namespace A121967.P2362279166119592060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n + 1).toNat

end

end A121967.P2362279166119592060

/-! ## A121967.P16365930017183489749

`A003415(Δ[A182101(n)]+1)`
-/

namespace A121967.P16365930017183489749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n + 1).toNat

end

end A121967.P16365930017183489749

/-! ## A121967.P365052291140508963

`A000007(1-Δ[A182101(n)])`
-/

namespace A121967.P365052291140508963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A121967.P365052291140508963

/-! ## A121967.P7263702968729661316

`A000700(1-Δ[A182101(n)])`
-/

namespace A121967.P7263702968729661316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A121967.P7263702968729661316

/-! ## A121967.P2371736514507568882

`A001221(Δ[A182101(n)]+2)`
-/

namespace A121967.P2371736514507568882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 2).toNat

end

end A121967.P2371736514507568882

/-! ## A121967.P8597316564711780967

`A001222(Δ[A182101(n)]+2)`
-/

namespace A121967.P8597316564711780967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 2).toNat

end

end A121967.P8597316564711780967

/-! ## A121967.P8234506379454025557

`A000161(2-Δ[A182101(n)])`
-/

namespace A121967.P8234506379454025557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A121967.P8234506379454025557

/-! ## A121967.P2525096456828810372

`A003849(2-Δ[A182101(n)])`
-/

namespace A121967.P2525096456828810372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A121967.P2525096456828810372

/-! ## A121967.P13591430484399483444

`A008683(Δ[A182101(n)]+5)`
-/

namespace A121967.P13591430484399483444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n + 5).toNat

end

end A121967.P13591430484399483444

/-! ## A121967.P6978295699441960674

`A008683(7-Δ[A182101(n)])`
-/

namespace A121967.P6978295699441960674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (7 - (f1 (n + 1) - f1 n)).toNat

end

end A121967.P6978295699441960674

/-! ## A121967.P17317650355688116364

`A000007(and(2, Δ[A182101(n)]))`
-/

namespace A121967.P17317650355688116364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land 2 (f1 (n + 1) - f1 n)).toNat

end

end A121967.P17317650355688116364

/-! ## A121967.P793555204212245484

`A003849((Δ[A182101(n)]+1)²)`
-/

namespace A121967.P793555204212245484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 ((f1 (n + 1) - f1 n + 1) ^ 2).toNat

end

end A121967.P793555204212245484

/-!
# A121968: a(n) = 2*a(n-1) - a(n-2) + n + 1.

The programs for A121968, the canonical program `A121968.P10566213458025629875` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121968 has offset 1).

The definition of A121968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+n+1` (program `A121968.P10566213458025629875`, by `A121968.P10566213458025629875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121968.P10566213458025629875

`2*a(n-1)-a(n-2)+n+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121968

/-- `2*a(n-1)-a(n-2)+n+1` -/
def P10566213458025629875.Spec : Prop :=
  ∀ n, P10566213458025629875.a n = A121968 (n + 1)

theorem P10566213458025629875.correct : P10566213458025629875.Spec := by
  intro n
  simp only [A121968, Nat.add_sub_cancel]

end A121968

/-! ## A121968.P2120708733236828608

`∑[abs(2-∑[n+1])]`
-/

namespace A121968.P2120708733236828608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121968.P2120708733236828608

namespace A121968

/-- `∑[abs(2-∑[n+1])]` -/
def P2120708733236828608.Spec : Prop :=
  ∀ n, P2120708733236828608.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P18193314224149061738

`C(n+3, 3)-2*n`
-/

namespace A121968.P18193314224149061738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - (2 * n : ℤ)

end

end A121968.P18193314224149061738

namespace A121968

/-- `C(n+3, 3)-2*n` -/
def P18193314224149061738.Spec : Prop :=
  ∀ n, P18193314224149061738.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P13725657393245065703

`C(n+3, 3)-n-n`
-/

namespace A121968.P13725657393245065703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - (n : ℤ) - (n : ℤ)

end

end A121968.P13725657393245065703

namespace A121968

/-- `C(n+3, 3)-n-n` -/
def P13725657393245065703.Spec : Prop :=
  ∀ n, P13725657393245065703.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P13789277170140560457

`∑[C(n, 2)]+n²+1`
-/

namespace A121968.P13789277170140560457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 + 1)

end

end A121968.P13789277170140560457

namespace A121968

/-- `∑[C(n, 2)]+n²+1` -/
def P13789277170140560457.Spec : Prop :=
  ∀ n, (P13789277170140560457.a n : ℤ) = A121968 (n + 1)

end A121968

/-! ## A121968.P3645226820462510285

`∑[n²]-(C(n, 3)-1)`
-/

namespace A121968.P3645226820462510285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.choose n 3 : ℤ) - 1)

end

end A121968.P3645226820462510285

namespace A121968

/-- `∑[n²]-(C(n, 3)-1)` -/
def P3645226820462510285.Spec : Prop :=
  ∀ n, P3645226820462510285.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P10755862642040004403

`∑[∑[n+1]]-comp[or(1, n)]`
-/

namespace A121968.P10755862642040004403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

end

end A121968.P10755862642040004403

namespace A121968

/-- `∑[∑[n+1]]-comp[or(1, n)]` -/
def P10755862642040004403.Spec : Prop :=
  ∀ n, P10755862642040004403.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P5396208015583392215

`∑[∑[n+1]]-lcm(2, 2*n)`
-/

namespace A121968.P5396208015583392215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lcm 2 (2 * n) : ℤ)

end

end A121968.P5396208015583392215

namespace A121968

/-- `∑[∑[n+1]]-lcm(2, 2*n)` -/
def P5396208015583392215.Spec : Prop :=
  ∀ n, P5396208015583392215.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P16297987266179639092

`∑[n+1]+a(n-1)-2` with `a(0)=1`
-/

namespace A121968.P16297987266179639092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (a (n - 1) - 2)

end

end A121968.P16297987266179639092

namespace A121968

/-- `∑[n+1]+a(n-1)-2` -/
def P16297987266179639092.Spec : Prop :=
  ∀ n, P16297987266179639092.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P710932809437860501

`2-∑[a(n-1)-1-n]` with `a(0)=1`
-/

namespace A121968.P710932809437860501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121968.P710932809437860501

namespace A121968

/-- `2-∑[a(n-1)-1-n]` -/
def P710932809437860501.Spec : Prop :=
  ∀ n, P710932809437860501.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P3669661477433867266

`-(Δ[-C(n+3, 4)]+2*n)`
-/

namespace A121968.P3669661477433867266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 3) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + (2 * n : ℤ))

end

end A121968.P3669661477433867266

namespace A121968

/-- `-(Δ[-C(n+3, 4)]+2*n)` -/
def P3669661477433867266.Spec : Prop :=
  ∀ n, P3669661477433867266.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P9602943481462675978

`∑[∑[n+1]]-record[and(n, n+1)]`
-/

namespace A121968.P9602943481462675978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℤ)

end

end A121968.P9602943481462675978

namespace A121968

/-- `∑[∑[n+1]]-record[and(n, n+1)]` -/
def P9602943481462675978.Spec : Prop :=
  ∀ n, P9602943481462675978.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P10458812649923474383

`a(n-2)+(n+1)²-4` with `a(0)=1, a(1)=2`
-/

namespace A121968.P10458812649923474383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (((n + 1) ^ 2 : ℤ) - 4)

end

end A121968.P10458812649923474383

namespace A121968

/-- `a(n-2)+(n+1)²-4` -/
def P10458812649923474383.Spec : Prop :=
  ∀ n, P10458812649923474383.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P5184084408665531191

`∑[∑[n+1]-gcd(2, 2*n)]+2`
-/

namespace A121968.P5184084408665531191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.gcd 2 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A121968.P5184084408665531191

namespace A121968

/-- `∑[∑[n+1]-gcd(2, 2*n)]+2` -/
def P5184084408665531191.Spec : Prop :=
  ∀ n, P5184084408665531191.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P8157113226209344496

`∑[∑[n+1]]-xor(1, 2*n+1)`
-/

namespace A121968.P8157113226209344496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.xor 1 (2 * n + 1) : ℤ)

end

end A121968.P8157113226209344496

namespace A121968

/-- `∑[∑[n+1]]-xor(1, 2*n+1)` -/
def P8157113226209344496.Spec : Prop :=
  ∀ n, P8157113226209344496.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P15945507341789218915

`∑[∑[n-1]]+lcm(n, n+1)+2`
-/

namespace A121968.P15945507341789218915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lcm n (n + 1) + 2 : ℤ)

end

end A121968.P15945507341789218915

namespace A121968

/-- `∑[∑[n-1]]+lcm(n, n+1)+2` -/
def P15945507341789218915.Spec : Prop :=
  ∀ n, P15945507341789218915.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P12636215745972503291

`∑[2*n]-(n-1-∑[C(n, 2)])`
-/

namespace A121968.P12636215745972503291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A121968.P12636215745972503291

namespace A121968

/-- `∑[2*n]-(n-1-∑[C(n, 2)])` -/
def P12636215745972503291.Spec : Prop :=
  ∀ n, P12636215745972503291.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P11292112338728325230

`abs(2*n-C(2*n-(n-3), 3))`
-/

namespace A121968.P11292112338728325230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (Nat.choose ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat 3 : ℤ)|

end

end A121968.P11292112338728325230

namespace A121968

/-- `abs(2*n-C(2*n-(n-3), 3))` -/
def P11292112338728325230.Spec : Prop :=
  ∀ n, P11292112338728325230.a n = A121968 (n + 1)

end A121968

/-! ## A121968.P2694480248847881218

`∑[∑[(n+1)%(n+1)²]]-(n-1)`
-/

namespace A121968.P2694480248847881218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A121968.P2694480248847881218

namespace A121968

/-- `∑[∑[(n+1)%(n+1)²]]-(n-1)` -/
def P2694480248847881218.Spec : Prop :=
  ∀ n, P2694480248847881218.a n = A121968 (n + 1)

end A121968

/-!
# A121971: a(n) is the smallest number such that pi(n) divides n a record-breaking prime number of times.

The programs for A121971, there is no canonical definition to state claims against.
-/

/-! ## A121971.P10552290690779478084

`A038625(eq[1, ∑{e}[n, #]])`
-/

namespace A121971.P10552290690779478084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A121971.P10552290690779478084

/-! ## A121971.P12980361733807162779

`A038625(p?[abs(xor(n, -2))])`
-/

namespace A121971.P12980361733807162779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121971.P12980361733807162779

/-! ## A121971.P12635494656726852396

`A038625(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A121971.P12635494656726852396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A121971.P12635494656726852396

/-! ## A121971.P16485495664049644915

`A038625(∏{p}[xor(1, p?[n%3+n])+1, #])`
-/

namespace A121971.P16485495664049644915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A121971.P16485495664049644915

/-! ## A121971.P7700022697693371303

`A038625(A390240(n))`
-/

namespace A121971.P7700022697693371303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (A390240 n).toNat

end

end A121971.P7700022697693371303

/-!
# A121976: Increasing sequence of odd primes such that abundancy(a(1)*...*a(n)) < 2, where abundancy(k) = A000203(k)/k. Generates "near perfect numbers".

The programs for A121976, there is no canonical definition to state claims against.
-/

/-! ## A121976.P2816287632876712249

`A248714(A365574(n))`
-/

namespace A121976.P2816287632876712249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248714 (A365574 n).toNat

end

end A121976.P2816287632876712249

/-!
# A121978: Numbers k such that (2*k^2)^8 + 1 is prime.

The programs for A121978, there is no canonical definition to state claims against.
-/

/-! ## A121978.P10618677276885904770

`eq[1, A194003(2*n²)]`
-/

namespace A121978.P10618677276885904770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121978.P10618677276885904770

/-! ## A121978.P11189934736841899329

`lt[A194003(∑[a(n-1)+4]), 2]+1` with `a(0)=2`
-/

namespace A121978.P11189934736841899329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A121978.P11189934736841899329

/-! ## A121978.P2579722888582983645

`lt[A194003(A001105(n+1)), 2]+1`
-/

namespace A121978.P2579722888582983645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (A001105 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A121978.P2579722888582983645

/-! ## A121978.P13905001763928423805

`lt[A194003(A047838(2*(n+1))+1), 2]+1`
-/

namespace A121978.P13905001763928423805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (A047838 (2 * (n + 1)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A121978.P13905001763928423805

/-! ## A121978.P7009320164088139538

`A002262(∩[A006314(n+1), A001105(n)])`
-/

namespace A121978.P7009320164088139538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A121978.P7009320164088139538

/-!
# A121979: Numbers k such that (2*k^2)^4 + 1 is prime.

The programs for A121979, there is no canonical definition to state claims against.
-/

/-! ## A121979.P2656851807270958702

`record[A056926(A000059(n+1))]`
-/

namespace A121979.P2656851807270958702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A000059 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121979.P2656851807270958702

/-! ## A121979.P17608826557979500259

`eq[1, A193929(2*n²)]`
-/

namespace A121979.P17608826557979500259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121979.P17608826557979500259

/-! ## A121979.P5566942280803280799

`eq[2, A193562(2*n²)]`
-/

namespace A121979.P5566942280803280799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121979.P5566942280803280799

/-!
# A121980: Positive integers z, without duplication, in x^3+y^3=z^2.

The programs for A121980, there is no canonical definition to state claims against.
-/

/-! ## A121980.P16170881783708306053

`∪[A038597(n+1), A217248(n+2)]`
-/

namespace A121980.P16170881783708306053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217248 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121980.P16170881783708306053

/-! ## A121980.P13807762037126406117

`sqrt(∩[A045980(n+2), n²])`
-/

namespace A121980.P13807762037126406117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045980 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A121980.P13807762037126406117

/-! ## A121980.P4184404885224906993

`record[A056926(A045980(n+2))]`
-/

namespace A121980.P4184404885224906993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A045980 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121980.P4184404885224906993

/-!
# A121982: Numbers k such that k^2 + 15 is prime.

The programs for A121982, there is no canonical definition to state claims against.
-/

/-! ## A121982.P6694930305855464412

`sqrt(A243450(n+1)-15)`
-/

namespace A121982.P6694930305855464412
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243450 (n + 1) - 15 : ℝ)

end

end A121982.P6694930305855464412

/-! ## A121982.P8372939681025939978

`sqrt(p?[n²+15]-15)`
-/

namespace A121982.P8372939681025939978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 15

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 15 : ℝ)

end

end A121982.P8372939681025939978

/-! ## A121982.P10831494420623021070

`sqrt(∩[A086303(n+1), n²])`
-/

namespace A121982.P10831494420623021070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A121982.P10831494420623021070

/-! ## A121982.P1976083450543722810

`eq[1, A001222(n²+15)]`
-/

namespace A121982.P1976083450543722810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121982.P1976083450543722810

/-! ## A121982.P16657846705944522947

`eq[2, A000005(n²+15)]`
-/

namespace A121982.P16657846705944522947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121982.P16657846705944522947

/-!
# A121984: a(n) = number of solutions to the Diophantine equation x+y^2+z^3=n^4 with positive x,y,z all distinct.

The programs for A121984, there is no canonical definition to state claims against.
-/

/-! ## A121984.P13837916260415993881

`∑[n*A282429(3*n+1)]-2*n`
-/

namespace A121984.P13837916260415993881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282429 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A121984.P13837916260415993881

/-!
# A121985: Denominator of PolyLog(-n, 1/n).

The programs for A121985, there is no canonical definition to state claims against.
-/

/-! ## A121985.P13108772146715011859

`gcd(n^A301901(n+1), A301898(n+1))`
-/

namespace A121985.P13108772146715011859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) ^ (A301901 (n + 1) : ℤ))) (A301898 (n + 1))

end

end A121985.P13108772146715011859

/-!
# A121986: Expansion of x*(-1+2*x-3*x^3+x^4)/((x^3+x^2+x-1) * (x-1)^2).

The programs for A121986, the canonical program `A121986.P11662521751701745419` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121986 has offset 1).

The definition of A121986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121986.P11662521751701745419

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121986

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` -/
def P11662521751701745419.Spec : Prop :=
  ∀ n, P11662521751701745419.a n = A121986 (n + 1)

theorem P11662521751701745419.correct : P11662521751701745419.Spec := by
  intro n
  simp only [A121986, Nat.add_sub_cancel]

end A121986

/-! ## A121986.P11994737426817513731

`1-(a(n-4)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A121986.P11994737426817513731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  1 - (a (n - 4) - a (n - 1) - a (n - 1))

end

end A121986.P11994737426817513731

namespace A121986

/-- `1-(a(n-4)-a(n-1)-a(n-1))` -/
def P11994737426817513731.Spec : Prop :=
  ∀ n, P11994737426817513731.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P7130198022655041997

`A000213(n)+∑[A192804(n)-1]`
-/

namespace A121986.P7130198022655041997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121986.P7130198022655041997

namespace A121986

/-- `A000213(n)+∑[A192804(n)-1]` -/
def P7130198022655041997.Spec : Prop :=
  ∀ n, P7130198022655041997.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P4790991237370408172

`2*a(n-1)-a(n-4)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A121986.P4790991237370408172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 4) + 1

end

end A121986.P4790991237370408172

namespace A121986

/-- `2*a(n-1)-a(n-4)+1` -/
def P4790991237370408172.Spec : Prop :=
  ∀ n, P4790991237370408172.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P4519044811136098030

`A145027(n+1)-A325473(n+1)`
-/

namespace A121986.P4519044811136098030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 1) - A325473 (n + 1)

end

end A121986.P4519044811136098030

namespace A121986

/-- `A145027(n+1)-A325473(n+1)` -/
def P4519044811136098030.Spec : Prop :=
  ∀ n, P4519044811136098030.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P364511343398723697

`A196787(n+2)-2*A000073(n)`
-/

namespace A121986.P364511343398723697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196787 (n + 2) - 2 * A000073 n

end

end A121986.P364511343398723697

namespace A121986

/-- `A196787(n+2)-2*A000073(n)` -/
def P364511343398723697.Spec : Prop :=
  ∀ n, P364511343398723697.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P10333641582623916638

`∑[A248098(n+1)]-record[A001590(n)]`
-/

namespace A121986.P10333641582623916638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A121986.P10333641582623916638

namespace A121986

/-- `∑[A248098(n+1)]-record[A001590(n)]` -/
def P10333641582623916638.Spec : Prop :=
  ∀ n, P10333641582623916638.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P11903972612474741503

`∑[A214899(n)-A192804(n)]-A000073(n)`
-/

namespace A121986.P11903972612474741503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000073 n

end

end A121986.P11903972612474741503

namespace A121986

/-- `∑[A214899(n)-A192804(n)]-A000073(n)` -/
def P11903972612474741503.Spec : Prop :=
  ∀ n, P11903972612474741503.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P3809511672666922235

`A081172(n)+A007800(n+1)%A078042(n)`
-/

namespace A121986.P3809511672666922235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + Int.tmod (A007800 (n + 1)) (A078042 n)

end

end A121986.P3809511672666922235

namespace A121986

/-- `A081172(n)+A007800(n+1)%A078042(n)` -/
def P3809511672666922235.Spec : Prop :=
  ∀ n, P3809511672666922235.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P544762760695231229

`floor((A280308(n)-n)/2)`
-/

namespace A121986.P544762760695231229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280308 n - (n : ℤ) : ℚ) / 2⌋

end

end A121986.P544762760695231229

namespace A121986

/-- `floor((A280308(n)-n)/2)` -/
def P544762760695231229.Spec : Prop :=
  ∀ n, P544762760695231229.a n = A121986 (n + 1)

end A121986

/-! ## A121986.P5004928812746479095

`ceil(A280308(n)/2-A008619(n))`
-/

namespace A121986.P5004928812746479095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280308 n : ℚ) / 2 - (A008619 n : ℚ)⌉

end

end A121986.P5004928812746479095

namespace A121986

/-- `ceil(A280308(n)/2-A008619(n))` -/
def P5004928812746479095.Spec : Prop :=
  ∀ n, P5004928812746479095.a n = A121986 (n + 1)

end A121986

/-!
# A121987: a(n + 4) = (n + 2)*(a(n + 3) - a(n) + 1) for n > 3, a(0) = a(1) = a(2) = a(3) = 1.

The programs for A121987, there is no canonical definition to state claims against.
-/

/-! ## A121987.P9979239511904205428

`A117922(A056864(n)!)`
-/

namespace A121987.P9979239511904205428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (Nat.factorial (A056864 n).toNat)

end

end A121987.P9979239511904205428

/-! ## A121987.P3656902621100380217

`A117922(A289207(n)!)`
-/

namespace A121987.P3656902621100380217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (Nat.factorial (A289207 n).toNat)

end

end A121987.P3656902621100380217

/-! ## A121987.P8081052388296441548

`A117922(A029168(2*n+1)!)`
-/

namespace A121987.P8081052388296441548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (Nat.factorial (A029168 (2 * n + 1)).toNat)

end

end A121987.P8081052388296441548

/-! ## A121987.P436206466392823733

`A117922(A001222(ceil(3*2^(n-3)))!)`
-/

namespace A121987.P436206466392823733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (Nat.factorial (A001222 ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉.toNat).toNat)

end

end A121987.P436206466392823733

/-! ## A121987.P8766897387660502242

`A266193(A297204(n)+A053252(n))`
-/

namespace A121987.P8766897387660502242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A297204 n + A053252 n).toNat

end

end A121987.P8766897387660502242

/-!
# A121988: Number of vertices of the n-th multiplihedron.

The programs for A121988, there is no canonical definition to state claims against.
-/

/-! ## A121988.P10842804638770166400

`A127631(∑[n]+1)`
-/

namespace A121988.P10842804638770166400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127631 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121988.P10842804638770166400

/-! ## A121988.P12931026701668459905

`record[A127631(n+1)]`
-/

namespace A121988.P12931026701668459905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121988.P12931026701668459905

/-! ## A121988.P15764319595688108201

`record[A127631(n)-C(2, n²)]`
-/

namespace A121988.P15764319595688108201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127631 n - (Nat.choose 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121988.P15764319595688108201

/-! ## A121988.P17381574643139474656

`record[A127631(n)-A000007(n)]`
-/

namespace A121988.P17381574643139474656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127631 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121988.P17381574643139474656

/-! ## A121988.P7308704428986567587

`A127631(A000124(n))^(2-A060576(n))`
-/

namespace A121988.P7308704428986567587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127631 (A000124 n).toNat : ℚ) ^ (2 - A060576 n : ℤ)

end

end A121988.P7308704428986567587

/-! ## A121988.P6211801158710329936

`lcm((-1)^A005117(n+1), A127631(A000124(n)))`
-/

namespace A121988.P6211801158710329936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A005117 (n + 1) : ℤ))) (A127631 (A000124 n).toNat)

end

end A121988.P6211801158710329936

/-!
# A121989: a(n) = (n - 1)*(a(n - 2) - a(n - 3) + 1), a(0) = a(1) = a(2) = 1.

The programs for A121989, the canonical program `A121989.P11373955910142847503` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121989 has offset 0).

The definition of A121989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(a(n-2)-a(n-3)+1)` (program `A121989.P11373955910142847503`, by `A121989.P11373955910142847503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121989.P11373955910142847503

`(n-1)*(a(n-2)-a(n-3)+1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121989

/-- `(n-1)*(a(n-2)-a(n-3)+1)` -/
def P11373955910142847503.Spec : Prop :=
  ∀ n, P11373955910142847503.a n = A121989 n

theorem P11373955910142847503.correct : P11373955910142847503.Spec := by
  intro n
  simp only [A121989]

end A121989

/-! ## A121989.P11359803198444648737

`(1-(a(n-3)-a(n-2)))*A023443(n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A121989.P11359803198444648737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  (1 - (a (n - 3) - a (n - 2))) * A023443 n

end

end A121989.P11359803198444648737

namespace A121989

/-- `(1-(a(n-3)-a(n-2)))*A023443(n)` -/
def P11359803198444648737.Spec : Prop :=
  ∀ n, P11359803198444648737.a n = A121989 n

end A121989

/-!
# A121990: Expansion of x*(1+9*x+2*x^2)/((1-x)*(1-3*x+x^2)).

The programs for A121990, the canonical program `A121990.P16624221705181389385` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121990 has offset 1).

The definition of A121990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121990.P16624221705181389385

`3*a(n-1)-a(n-2)+12` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121990

/-- `3*a(n-1)-a(n-2)+12` -/
def P16624221705181389385.Spec : Prop :=
  ∀ n, P16624221705181389385.a n = A121990 (n + 1)

theorem P16624221705181389385.correct : P16624221705181389385.Spec := by
  intro n
  simp only [A121990, Nat.add_sub_cancel]

end A121990

/-! ## A121990.P9961070622612348037

`A001519(n)+12*A027941(n)`
-/

namespace A121990.P9961070622612348037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 12 * A027941 n

end

end A121990.P9961070622612348037

namespace A121990

/-- `A001519(n)+12*A027941(n)` -/
def P9961070622612348037.Spec : Prop :=
  ∀ n, P9961070622612348037.a n = A121990 (n + 1)

end A121990

/-! ## A121990.P7088946775261111864

`A001519(n)+∑[A022346(2*n)]`
-/

namespace A121990.P7088946775261111864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121990.P7088946775261111864

namespace A121990

/-- `A001519(n)+∑[A022346(2*n)]` -/
def P7088946775261111864.Spec : Prop :=
  ∀ n, P7088946775261111864.a n = A121990 (n + 1)

end A121990

/-! ## A121990.P8023071150846590284

`A212804(2*n)+∑[A022346(2*n)]`
-/

namespace A121990.P8023071150846590284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121990.P8023071150846590284

namespace A121990

/-- `A212804(2*n)+∑[A022346(2*n)]` -/
def P8023071150846590284.Spec : Prop :=
  ∀ n, P8023071150846590284.a n = A121990 (n + 1)

end A121990

/-! ## A121990.P1243184185101790420

`A001519(n)+12*A000071(2*n+1)`
-/

namespace A121990.P1243184185101790420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 12 * A000071 (2 * n + 1)

end

end A121990.P1243184185101790420

namespace A121990

/-- `A001519(n)+12*A000071(2*n+1)` -/
def P1243184185101790420.Spec : Prop :=
  ∀ n, P1243184185101790420.a n = A121990 (n + 1)

end A121990

/-! ## A121990.P11009979812879110449

`A001360(n)+A001360(n)-A001906(n+1)`
-/

namespace A121990.P11009979812879110449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001360 n + (A001360 n - A001906 (n + 1))

end

end A121990.P11009979812879110449

namespace A121990

/-- `A001360(n)+A001360(n)-A001906(n+1)` -/
def P11009979812879110449.Spec : Prop :=
  ∀ n, P11009979812879110449.a n = A121990 (n + 1)

end A121990

/-! ## A121990.P5386363694515665780

`A122678(n+1)+A232584(n+1)-A122367(n+1)`
-/

namespace A121990.P5386363694515665780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122678 (n + 1) + (A232584 (n + 1) - A122367 (n + 1))

end

end A121990.P5386363694515665780

namespace A121990

/-- `A122678(n+1)+A232584(n+1)-A122367(n+1)` -/
def P5386363694515665780.Spec : Prop :=
  ∀ n, P5386363694515665780.a n = A121990 (n + 1)

end A121990

/-!
# A121991: a(n) = 3*a(n-1) - a(n-2) - a(n-3) + 12.

The programs for A121991, the canonical program `A121991.P535128383186515267` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121991 has offset 0).

The definition of A121991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-a(n-3)+12` (program `A121991.P535128383186515267`, by `A121991.P535128383186515267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121991.P535128383186515267

`3*a(n-1)-a(n-2)-a(n-3)+12` with `a(0)=0, a(1)=1, a(2)=13`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A121991

/-- `3*a(n-1)-a(n-2)-a(n-3)+12` -/
def P535128383186515267.Spec : Prop :=
  ∀ n, P535128383186515267.a n = A121991 n

theorem P535128383186515267.correct : P535128383186515267.Spec := by
  intro n
  simp only [A121991]

end A121991

/-! ## A121991.P12654466853967717787

`∑[A086377(a(n-1)+4)]` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A121991.P12654466853967717787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 12] fun n f1 =>
  A086377 (f1 (n - 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121991.P12654466853967717787

namespace A121991

/-- `∑[A086377(a(n-1)+4)]` -/
def P12654466853967717787.Spec : Prop :=
  ∀ n, P12654466853967717787.a n = A121991 n

end A121991

/-!
# A121993: Numbers k that yield a smaller number a(k) under the "Look and Say" function A045918.

The programs for A121993, there is no canonical definition to state claims against.
-/

/-! ## A121993.P1410110535747242813

`lt[A045918(n), n]`
-/

namespace A121993.P1410110535747242813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121993.P1410110535747242813

/-! ## A121993.P13741106455402264183

`A014181(A242474(n+3))`
-/

namespace A121993.P13741106455402264183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014181 (A242474 (n + 3)).toNat

end

end A121993.P13741106455402264183

/-! ## A121993.P10019199918984183965

`filter[A014181(n+3), A232750(#)]`
-/

namespace A121993.P10019199918984183965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014181 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A121993.P10019199918984183965

/-! ## A121993.P13625114284832841419

`∑{e}[A000079(n+3), A014181(#)]`
-/

namespace A121993.P13625114284832841419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014181 (Nat.factorization (f1 n).natAbs p)

end

end A121993.P13625114284832841419

/-! ## A121993.P7759386044208935622

`∩[A138593(n+1), A010785(n)]`
-/

namespace A121993.P7759386044208935622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121993.P7759386044208935622

/-!
# A121996: Sums of two squares mod 100.

The programs for A121996, there is no canonical definition to state claims against.
-/

/-! ## A121996.P5462116942653733547

`record[A004773(n)%A019320(n+1)]`
-/

namespace A121996.P5462116942653733547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004773 n) (A019320 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121996.P5462116942653733547

/-! ## A121996.P16375882334844510258

`lt[A038189(n), A355028(A142150(n))]`
-/

namespace A121996.P16375882334844510258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355028 (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121996.P16375882334844510258

/-! ## A121996.P7725590536377918531

`lt[A262352(A086334(n)), A270825(n)]`
-/

namespace A121996.P7725590536377918531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (A086334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121996.P7725590536377918531

/-! ## A121996.P3821927608287787167

`lt[A055747(A029579(n)), A287716(n+1)]`
-/

namespace A121996.P3821927608287787167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121996.P3821927608287787167

/-! ## A121996.P14365350490629075759

`lt[A265667(n), A338745(A075884(n+1))]`
-/

namespace A121996.P14365350490629075759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338745 (A075884 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121996.P14365350490629075759

/-!
# A121997: Count up to n, n times.

The programs for A121997, there is no canonical definition to state claims against.
-/

/-! ## A121997.P3974283495620363574

`A237451(n+1)+1`
-/

namespace A121997.P3974283495620363574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1) + 1

end

end A121997.P3974283495620363574

/-! ## A121997.P10125428406218166931

`A005496(A237451(n+1))`
-/

namespace A121997.P10125428406218166931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A237451 (n + 1)).toNat

end

end A121997.P10125428406218166931

/-! ## A121997.P13348379457619226

`A002024(A361172(n+1))`
-/

namespace A121997.P13348379457619226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A361172 (n + 1)).toNat

end

end A121997.P13348379457619226

/-! ## A121997.P1879285237974209696

`A128227(eq[0, A047998(n)])`
-/

namespace A121997.P1879285237974209696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P1879285237974209696

/-! ## A121997.P15379316584800880909

`A141539(eq[0, A047998(n)])`
-/

namespace A121997.P15379316584800880909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P15379316584800880909

/-! ## A121997.P17201713520835621038

`A141539(eq[0, A054923(n)])`
-/

namespace A121997.P17201713520835621038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P17201713520835621038

/-! ## A121997.P15999634829575124050

`A141539(eq[0, A079126(n)])`
-/

namespace A121997.P15999634829575124050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P15999634829575124050

/-! ## A121997.P10842998875867258112

`A193738(eq[0, A047998(n)])`
-/

namespace A121997.P10842998875867258112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P10842998875867258112

/-! ## A121997.P2514134055309389513

`A193738(eq[0, A054923(n)])`
-/

namespace A121997.P2514134055309389513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P2514134055309389513

/-! ## A121997.P6325691395991688888

`A193738(eq[0, A079126(n)])`
-/

namespace A121997.P6325691395991688888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P6325691395991688888

/-! ## A121997.P12655028364291396600

`A292477(eq[0, A047998(n)])`
-/

namespace A121997.P12655028364291396600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P12655028364291396600

/-! ## A121997.P7860230062871841447

`A292477(eq[0, A054923(n)])`
-/

namespace A121997.P7860230062871841447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P7860230062871841447

/-! ## A121997.P9723694741291417441

`A292477(eq[0, A079126(n)])`
-/

namespace A121997.P9723694741291417441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121997.P9723694741291417441

/-! ## A121997.P16796706077554556268

`A337835(2*A361172(n+1))`
-/

namespace A121997.P16796706077554556268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 (2 * A361172 (n + 1)).toNat

end

end A121997.P16796706077554556268

/-! ## A121997.P6129470229883732875

`A002260(eq[0, A047998(n)]+1)`
-/

namespace A121997.P6129470229883732875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121997.P6129470229883732875

/-! ## A121997.P262422360791826253

`A002260(eq[0, A054923(n)]+1)`
-/

namespace A121997.P262422360791826253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121997.P262422360791826253

/-! ## A121997.P7930982151070554092

`A002262(eq[0, A054923(n)]+1)`
-/

namespace A121997.P7930982151070554092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121997.P7930982151070554092

/-! ## A121997.P5552741870645521038

`A002260(eq[0, A079126(n)]+1)`
-/

namespace A121997.P5552741870645521038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121997.P5552741870645521038

/-! ## A121997.P7877844749530640610

`A002262(eq[0, A177517(n+1)]+1)`
-/

namespace A121997.P7877844749530640610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121997.P7877844749530640610

/-! ## A121997.P3176921513260170127

`A123578(A361172(2*n+1-n))`
-/

namespace A121997.P3176921513260170127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A361172 (2 * n + 1 - n)).toNat

end

end A121997.P3176921513260170127

/-!
# A121998: Table, n-th row gives numbers between 1 and n that have a common factor with n.

The programs for A121998, the canonical program `A121998.P10241062648816022235` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121998 has offset 2).

The definition of A121998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121998.P10241062648816022235

`A002260(eq[0, A054521(n+1)]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A121998

/-- `A002260(eq[0, A054521(n+1)]+1)` -/
def P10241062648816022235.Spec : Prop :=
  ∀ n, P10241062648816022235.a n = A121998 (n + 2)

theorem P10241062648816022235.correct : P10241062648816022235.Spec := by
  intro n
  simp only [A121998, Nat.add_sub_cancel]

end A121998

/-! ## A121998.P6065537065697859443

`A002260(lt[1, A050873(n+1)]+1)`
-/

namespace A121998.P6065537065697859443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A121998.P6065537065697859443

namespace A121998

/-- `A002260(lt[1, A050873(n+1)]+1)` -/
def P6065537065697859443.Spec : Prop :=
  ∀ n, P6065537065697859443.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P102568127538204063

`A002260(lt[A054521(n+1), 1]+1)`
-/

namespace A121998.P102568127538204063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A121998.P102568127538204063

namespace A121998

/-- `A002260(lt[A054521(n+1), 1]+1)` -/
def P102568127538204063.Spec : Prop :=
  ∀ n, P102568127538204063.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P14908332732990966104

`A002262(lt[A277227(n+1)², n]-1)+1`
-/

namespace A121998.P14908332732990966104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1) + 1

end

end A121998.P14908332732990966104

namespace A121998

/-- `A002262(lt[A277227(n+1)², n]-1)+1` -/
def P14908332732990966104.Spec : Prop :=
  ∀ n, P14908332732990966104.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P18419220261735778552

`A002262(lt[1, A002262(n)*A050870(n)])`
-/

namespace A121998.P18419220261735778552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A050870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121998.P18419220261735778552

namespace A121998

/-- `A002262(lt[1, A002262(n)*A050870(n)])` -/
def P18419220261735778552.Spec : Prop :=
  ∀ n, P18419220261735778552.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P17776402342165667557

`A002260(lt[1, A002260(n+1)*A050870(n)])`
-/

namespace A121998.P17776402342165667557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A050870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121998.P17776402342165667557

namespace A121998

/-- `A002260(lt[1, A002260(n+1)*A050870(n)])` -/
def P17776402342165667557.Spec : Prop :=
  ∀ n, P17776402342165667557.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P1864796705636485043

`A002260(lt[1/A002260(n+1), A050870(n)])`
-/

namespace A121998.P1864796705636485043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002260 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A121998.P1864796705636485043

namespace A121998

/-- `A002260(lt[1/A002260(n+1), A050870(n)])` -/
def P1864796705636485043.Spec : Prop :=
  ∀ n, P1864796705636485043.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P10593113359104917652

`A002260(A169582(n+1))`
-/

namespace A121998.P10593113359104917652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A169582 (n + 1)).toNat

end

end A121998.P10593113359104917652

namespace A121998

/-- `A002260(A169582(n+1))` -/
def P10593113359104917652.Spec : Prop :=
  ∀ n, P10593113359104917652.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P12197602082387202128

`A135223(A169582(n+1))+A000038(n+1)`
-/

namespace A121998.P12197602082387202128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (A169582 (n + 1)).toNat + A000038 (n + 1)

end

end A121998.P12197602082387202128

namespace A121998

/-- `A135223(A169582(n+1))+A000038(n+1)` -/
def P12197602082387202128.Spec : Prop :=
  ∀ n, P12197602082387202128.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P5997448316750569586

`A135223(A169582(n+1)%A045765(n+1))`
-/

namespace A121998.P5997448316750569586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (Int.tmod (A169582 (n + 1)) (A045765 (n + 1))).toNat

end

end A121998.P5997448316750569586

namespace A121998

/-- `A135223(A169582(n+1)%A045765(n+1))` -/
def P5997448316750569586.Spec : Prop :=
  ∀ n, P5997448316750569586.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P12085772295583114818

`A135223(A169582(n+1))%A239463(n+1)`
-/

namespace A121998.P12085772295583114818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135223 (A169582 (n + 1)).toNat) (A239463 (n + 1))

end

end A121998.P12085772295583114818

namespace A121998

/-- `A135223(A169582(n+1))%A239463(n+1)` -/
def P12085772295583114818.Spec : Prop :=
  ∀ n, P12085772295583114818.a n = A121998 (n + 2)

end A121998

/-! ## A121998.P4435867951342004703

`A010051(A182051(n+1))*A135223(A169582(n+1))`
-/

namespace A121998.P4435867951342004703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A182051 (n + 1)).toNat * A135223 (A169582 (n + 1)).toNat

end

end A121998.P4435867951342004703

namespace A121998

/-- `A010051(A182051(n+1))*A135223(A169582(n+1))` -/
def P4435867951342004703.Spec : Prop :=
  ∀ n, P4435867951342004703.a n = A121998 (n + 2)

end A121998

