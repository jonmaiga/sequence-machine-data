import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C044
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A172500: Numerator of fraction whose decimal representation has form 0.(n)(n)(n)...with repeating part n.

The programs for A172500, the canonical program `A172500.P16194948095997381437` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172500 has offset 1).

The definition of A172500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172500.P16194948095997381437

`(n+1)/A109848(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A172500

/-- `(n+1)/A109848(n+1)` -/
def P16194948095997381437.Spec : Prop :=
  ∀ n, P16194948095997381437.a n = (A172500 (n + 1) : ℚ)

end A172500

/-! ## A172500.P16744565383601329200

`gcd(n+1, A172503(n+1))`
-/

namespace A172500.P16744565383601329200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A172503 (n + 1))

end

end A172500.P16744565383601329200

namespace A172500

/-- `gcd(n+1, A172503(n+1))` -/
def P16744565383601329200.Spec : Prop :=
  ∀ n, (P16744565383601329200.a n : ℤ) = A172500 (n + 1)

end A172500

/-! ## A172500.P5307178009491179870

`lcm((n+1)², A111708(n))/A111708(n)`
-/

namespace A172500.P5307178009491179870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A111708 n) : ℚ) / (A111708 n : ℚ)

end

end A172500.P5307178009491179870

namespace A172500

/-- `lcm((n+1)², A111708(n))/A111708(n)` -/
def P5307178009491179870.Spec : Prop :=
  ∀ n, P5307178009491179870.a n = (A172500 (n + 1) : ℚ)

end A172500

/-! ## A172500.P7873604789800868995

`A172503(n+1)-(n+1)*A172502(n+1)`
-/

namespace A172500.P7873604789800868995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172503 (n + 1) - (n + 1 : ℤ) * A172502 (n + 1)

end

end A172500.P7873604789800868995

namespace A172500

/-- `A172503(n+1)-(n+1)*A172502(n+1)` -/
def P7873604789800868995.Spec : Prop :=
  ∀ n, P7873604789800868995.a n = A172500 (n + 1)

end A172500

/-! ## A172500.P1829114781616030851

`A028310(A172503(n+1)%A172502(n+1))`
-/

namespace A172500.P1829114781616030851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A172503 (n + 1)) (A172502 (n + 1))).toNat

end

end A172500.P1829114781616030851

namespace A172500

/-- `A028310(A172503(n+1)%A172502(n+1))` -/
def P1829114781616030851.Spec : Prop :=
  ∀ n, P1829114781616030851.a n = A172500 (n + 1)

end A172500

/-! ## A172500.P3475352905421198354

`A172503(n+1)²/A172503(A020338(n+1))`
-/

namespace A172500.P3475352905421198354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172503 (n + 1) ^ 2 : ℚ) / (A172503 (A020338 (n + 1)).toNat : ℚ)

end

end A172500.P3475352905421198354

namespace A172500

/-- `A172503(n+1)²/A172503(A020338(n+1))` -/
def P3475352905421198354.Spec : Prop :=
  ∀ n, P3475352905421198354.a n = (A172500 (n + 1) : ℚ)

end A172500

/-! ## A172500.P3470082386294014529

`(n+1)/gcd(n+1, ∑[(n+1)!])`
-/

namespace A172500.P3470082386294014529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A172500.P3470082386294014529

namespace A172500

/-- `(n+1)/gcd(n+1, ∑[(n+1)!])` -/
def P3470082386294014529.Spec : Prop :=
  ∀ n, P3470082386294014529.a n = (A172500 (n + 1) : ℚ)

end A172500

/-! ## A172500.P3013370339546446456

`A038566(A343634(n+1))`
-/

namespace A172500.P3013370339546446456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A343634 (n + 1)).toNat

end

end A172500.P3013370339546446456

namespace A172500

/-- `A038566(A343634(n+1))` -/
def P3013370339546446456.Spec : Prop :=
  ∀ n, P3013370339546446456.a n = A172500 (n + 1)

end A172500

/-!
# A172501: a(n) = binomial(n+8,8)*6^n.

The programs for A172501, the canonical program `A172501.P6615484569348506602` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172501 has offset 0).

The definition of A172501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*6^n` (program `A172501.P6615484569348506602`, by `A172501.P6615484569348506602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172501.P5180997877977722646

`6^n*C(n+8, 8)`
-/

namespace A172501.P5180997877977722646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (n + 8) 8

end

end A172501.P5180997877977722646

namespace A172501

/-- `6^n*C(n+8, 8)` -/
def P5180997877977722646.Spec : Prop :=
  ∀ n, (P5180997877977722646.a n : ℤ) = A172501 n

theorem P5180997877977722646.correct : P5180997877977722646.Spec := by
  intro n
  simp only [A172501, Nat.add_sub_cancel, A172501.P5180997877977722646.a, A172501.P6615484569348506602.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172501

/-! ## A172501.P6615484569348506602

`C(n+8, 8)*6^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A172501

/-- `C(n+8, 8)*6^n` -/
def P6615484569348506602.Spec : Prop :=
  ∀ n, (P6615484569348506602.a n : ℤ) = A172501 n

theorem P6615484569348506602.correct : P6615484569348506602.Spec := by
  intro n
  simp only [A172501]

end A172501

/-! ## A172501.P10176317011047963734

`3*(16/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A172501.P10176317011047963734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((16 / (n : ℚ) + 2) * a (n - 1))

end

end A172501.P10176317011047963734

namespace A172501

/-- `3*(16/n+2)*a(n-1)` -/
def P10176317011047963734.Spec : Prop :=
  ∀ n, P10176317011047963734.a n = (A172501 n : ℚ)

end A172501

/-! ## A172501.P6338864102955045190

`3^n*A140325(n)`
-/

namespace A172501.P6338864102955045190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A140325 n

end

end A172501.P6338864102955045190

namespace A172501

/-- `3^n*A140325(n)` -/
def P6338864102955045190.Spec : Prop :=
  ∀ n, P6338864102955045190.a n = A172501 n

end A172501

/-! ## A172501.P9610791055069198383

`6^n*A000581(n+8)`
-/

namespace A172501.P9610791055069198383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000581 (n + 8)

end

end A172501.P9610791055069198383

namespace A172501

/-- `6^n*A000581(n+8)` -/
def P9610791055069198383.Spec : Prop :=
  ∀ n, P9610791055069198383.a n = A172501 n

theorem P9610791055069198383.correct : P9610791055069198383.Spec := by
  intro n
  simp only [A172501, Nat.add_sub_cancel, A172501.P9610791055069198383.a, A172501.P6615484569348506602.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172501

/-! ## A172501.P15034008030243540665

`A000079(n)*A036222(n)`
-/

namespace A172501.P15034008030243540665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A036222 n

end

end A172501.P15034008030243540665

namespace A172501

/-- `A000079(n)*A036222(n)` -/
def P15034008030243540665.Spec : Prop :=
  ∀ n, P15034008030243540665.a n = A172501 n

end A172501

/-! ## A172501.P15771938103897369481

`lcm(A036222(n), A140325(n))`
-/

namespace A172501.P15771938103897369481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036222 n) (A140325 n)

end

end A172501.P15771938103897369481

namespace A172501

/-- `lcm(A036222(n), A140325(n))` -/
def P15771938103897369481.Spec : Prop :=
  ∀ n, (P15771938103897369481.a n : ℤ) = A172501 n

end A172501

/-! ## A172501.P4855252358077592124

`Δ[A000051(n)]*A036222(n)`
-/

namespace A172501.P4855252358077592124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036222 n

end

end A172501.P4855252358077592124

namespace A172501

/-- `Δ[A000051(n)]*A036222(n)` -/
def P4855252358077592124.Spec : Prop :=
  ∀ n, P4855252358077592124.a n = A172501 n

end A172501

/-! ## A172501.P16864612892731560446

`A131577(n+1)*A036222(n)`
-/

namespace A172501.P16864612892731560446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) * A036222 n

end

end A172501.P16864612892731560446

namespace A172501

/-- `A131577(n+1)*A036222(n)` -/
def P16864612892731560446.Spec : Prop :=
  ∀ n, P16864612892731560446.a n = A172501 n

end A172501

/-! ## A172501.P111472674526803713

`A000581(n+8)*A026549(2*n)`
-/

namespace A172501.P111472674526803713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A026549 (2 * n)

end

end A172501.P111472674526803713

namespace A172501

/-- `A000581(n+8)*A026549(2*n)` -/
def P111472674526803713.Spec : Prop :=
  ∀ n, P111472674526803713.a n = A172501 n

end A172501

/-!
# A172502: Denominator of fraction whose decimal representation has form 0.(n)(n)(n)...with repeating part n.

The programs for A172502, the canonical program `A172502.P9043156190337301137` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172502 has offset 1).

The definition of A172502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172502.P15483206703505825836

`ceil(A172503(n+1)/(n+1))-1`
-/

namespace A172502.P15483206703505825836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A172503 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A172502.P15483206703505825836

namespace A172502

/-- `ceil(A172503(n+1)/(n+1))-1` -/
def P15483206703505825836.Spec : Prop :=
  ∀ n, P15483206703505825836.a n = A172502 (n + 1)

end A172502

/-! ## A172502.P9043156190337301137

`lcm(n+1, A061601(n+1)+n+1)/(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A172502

/-- `lcm(n+1, A061601(n+1)+n+1)/(n+1)` -/
def P9043156190337301137.Spec : Prop :=
  ∀ n, P9043156190337301137.a n = (A172502 (n + 1) : ℚ)

end A172502

/-! ## A172502.P17914674157978074910

`(A089186(n+1)+n)/A109848(n+1)`
-/

namespace A172502.P17914674157978074910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089186 (n + 1) + (n : ℤ) : ℚ) / (A109848 (n + 1) : ℚ)

end

end A172502.P17914674157978074910

namespace A172502

/-- `(A089186(n+1)+n)/A109848(n+1)` -/
def P17914674157978074910.Spec : Prop :=
  ∀ n, P17914674157978074910.a n = (A172502 (n + 1) : ℚ)

end A172502

/-! ## A172502.P6451617251718156387

`A172500(n+1)+A109847(n+1)/(n+1)`
-/

namespace A172502.P6451617251718156387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172500 (n + 1) : ℚ) + (A109847 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A172502.P6451617251718156387

namespace A172502

/-- `A172500(n+1)+A109847(n+1)/(n+1)` -/
def P6451617251718156387.Spec : Prop :=
  ∀ n, P6451617251718156387.a n = (A172502 (n + 1) : ℚ)

end A172502

/-! ## A172502.P5441795812953747080

`(A172503(n+1)-A172500(n+1))/(n+1)`
-/

namespace A172502.P5441795812953747080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172503 (n + 1) - A172500 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A172502.P5441795812953747080

namespace A172502

/-- `(A172503(n+1)-A172500(n+1))/(n+1)` -/
def P5441795812953747080.Spec : Prop :=
  ∀ n, P5441795812953747080.a n = (A172502 (n + 1) : ℚ)

end A172502

/-! ## A172502.P8608847946331180520

`floor(A172503(A020338(n+1))/A020338(n+1))`
-/

namespace A172502.P8608847946331180520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172503 (A020338 (n + 1)).toNat : ℚ) / (A020338 (n + 1) : ℚ)⌋

end

end A172502.P8608847946331180520

namespace A172502

/-- `floor(A172503(A020338(n+1))/A020338(n+1))` -/
def P8608847946331180520.Spec : Prop :=
  ∀ n, P8608847946331180520.a n = A172502 (n + 1)

end A172502

/-! ## A172502.P14586111240751045052

`A038567(A343634(n+1)-1)`
-/

namespace A172502.P14586111240751045052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A343634 (n + 1) - 1).toNat

end

end A172502.P14586111240751045052

namespace A172502

/-- `A038567(A343634(n+1)-1)` -/
def P14586111240751045052.Spec : Prop :=
  ∀ n, P14586111240751045052.a n = A172502 (n + 1)

end A172502

/-!
# A172503: a(n) = numerator of fraction a/b, where gcd(a, b) = 1, whose decimal representation has the form (n).(n)(n)(n)... with period (n).

The programs for A172503, the canonical program `A172503.P2118640332743978140` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172503 has offset 1).

The definition of A172503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172503.P2118640332743978140

`A109847(n+1)+(n+2)*A172500(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A172503

/-- `A109847(n+1)+(n+2)*A172500(n+1)` -/
def P2118640332743978140.Spec : Prop :=
  ∀ n, P2118640332743978140.a n = A172503 (n + 1)

theorem P2118640332743978140.correct : P2118640332743978140.Spec := by
  intro n
  simp only [A172503, Nat.add_sub_cancel]

end A172503

/-! ## A172503.P11846504039340969900

`(A020338(n+1)-(n+1))/A109848(n+1)`
-/

namespace A172503.P11846504039340969900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) - (n + 1 : ℤ) : ℚ) / (A109848 (n + 1) : ℚ)

end

end A172503.P11846504039340969900

namespace A172503

/-- `(A020338(n+1)-(n+1))/A109848(n+1)` -/
def P11846504039340969900.Spec : Prop :=
  ∀ n, P11846504039340969900.a n = (A172503 (n + 1) : ℚ)

end A172503

/-! ## A172503.P12080813316224354596

`(A020338(n+1)-A127421(n+1))*A172500(n+1)`
-/

namespace A172503.P12080813316224354596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) - A127421 (n + 1)) * A172500 (n + 1)

end

end A172503.P12080813316224354596

namespace A172503

/-- `(A020338(n+1)-A127421(n+1))*A172500(n+1)` -/
def P12080813316224354596.Spec : Prop :=
  ∀ n, P12080813316224354596.a n = A172503 (n + 1)

end A172503

/-! ## A172503.P13857641987446516750

`A068822(n+1)*A078267(n+1)*A172500(n+1)`
-/

namespace A172503.P13857641987446516750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068822 (n + 1) * A078267 (n + 1) * A172500 (n + 1)

end

end A172503.P13857641987446516750

namespace A172503

/-- `A068822(n+1)*A078267(n+1)*A172500(n+1)` -/
def P13857641987446516750.Spec : Prop :=
  ∀ n, P13857641987446516750.a n = A172503 (n + 1)

end A172503

/-! ## A172503.P10940878587798260488

`A172500(n+1)+(n+1)*A172502(n+1)`
-/

namespace A172503.P10940878587798260488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (n + 1) + (n + 1 : ℤ) * A172502 (n + 1)

end

end A172503.P10940878587798260488

namespace A172503

/-- `A172500(n+1)+(n+1)*A172502(n+1)` -/
def P10940878587798260488.Spec : Prop :=
  ∀ n, P10940878587798260488.a n = A172503 (n + 1)

end A172503

/-! ## A172503.P4845883541884831735

`A172500(A020338(n+1)-(n+1))`
-/

namespace A172503.P4845883541884831735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (A020338 (n + 1) - (n + 1 : ℤ)).toNat

end

end A172503.P4845883541884831735

namespace A172503

/-- `A172500(A020338(n+1)-(n+1))` -/
def P4845883541884831735.Spec : Prop :=
  ∀ n, P4845883541884831735.a n = A172503 (n + 1)

end A172503

/-! ## A172503.P5049370367634185415

`A172500(A068824(n+1)+∑[A005408(n)])`
-/

namespace A172503.P5049370367634185415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (A068824 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172503.P5049370367634185415

namespace A172503

/-- `A172500(A068824(n+1)+∑[A005408(n)])` -/
def P5049370367634185415.Spec : Prop :=
  ∀ n, P5049370367634185415.a n = A172503 (n + 1)

end A172503

/-! ## A172503.P3559489033608305443

`A172500(A127421(n+1)+A089186(n+1))`
-/

namespace A172503.P3559489033608305443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (A127421 (n + 1) + A089186 (n + 1)).toNat

end

end A172503.P3559489033608305443

namespace A172503

/-- `A172500(A127421(n+1)+A089186(n+1))` -/
def P3559489033608305443.Spec : Prop :=
  ∀ n, P3559489033608305443.a n = A172503 (n + 1)

end A172503

/-! ## A172503.P10088085669320415641

`A172500(A111708(n+1)-A061601(n+1))`
-/

namespace A172503.P10088085669320415641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (A111708 (n + 1) - A061601 (n + 1)).toNat

end

end A172503.P10088085669320415641

namespace A172503

/-- `A172500(A111708(n+1)-A061601(n+1))` -/
def P10088085669320415641.Spec : Prop :=
  ∀ n, P10088085669320415641.a n = A172503 (n + 1)

end A172503

/-!
# A172504: a(n) = denominator of fraction a/b, where gcd(a, b) = 1, whose decimal representation has the form (n).(n)(n)(n)... with period (n).

The programs for A172504, there is no canonical definition to state claims against.
-/

/-! ## A172504.P13185042453138067549

`99/gcd(99, ∑[2*(n+1)]+(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))`
-/

namespace A172504.P13185042453138067549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  99 / (Int.gcd 99 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))) : ℚ)

end

end A172504.P13185042453138067549

/-! ## A172504.P13556476444772590126

`gcd(99, A037207(n+1))`
-/

namespace A172504.P13556476444772590126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 99 (A037207 (n + 1))

end

end A172504.P13556476444772590126

/-! ## A172504.P2968160961533201086

`A172502(n+1)%379`
-/

namespace A172504.P2968160961533201086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172502 (n + 1)) 379

end

end A172504.P2968160961533201086

/-! ## A172504.P7770803098470004436

`A172502(1-char[39]+n)`
-/

namespace A172504.P7770803098470004436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172502 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A172504.P7770803098470004436

/-! ## A172504.P4381243527644314596

`A348870(2*(n+1))+char[31]`
-/

namespace A172504.P4381243527644314596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348870 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A172504.P4381243527644314596

/-!
# A172505: a(n) = numerator of fraction a/b, where gcd(a, b) = 1, whose decimal representation has the form (1)(2)(3)...(n-1)(n).(1)(2)(3)...(n-1)(n)... with period (1)(2)(3)...(n-1)(n).

The programs for A172505, there is no canonical definition to state claims against.
-/

/-! ## A172505.P14433398975928303289

`A011557(n+1)*A172496(n+1)`
-/

namespace A172505.P14433398975928303289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) * A172496 (n + 1)

end

end A172505.P14433398975928303289

/-!
# A172507: a(n) = numerator of fraction a/b, where gcd(a, b) = 1, whose decimal representation has the form (n).(n).

The programs for A172507, there is no canonical definition to state claims against.
-/

/-! ## A172507.P18231453414351395814

`A020338(n+1)/gcd(n+1, (99-n)%90+1-∑{p}[(n+2)*n², val(#, 11)]!)`
-/

namespace A172507.P18231453414351395814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (Int.tmod (99 - (n : ℤ)) 90 + 1 - (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11) : ℤ)) : ℚ)

end

end A172507.P18231453414351395814

/-! ## A172507.P6466684839393696272

`(∑[2*(n+1)]+(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))/A068822(n+1)`
-/

namespace A172507.P6466684839393696272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ)) : ℤ) : ℚ) / (A068822 (n + 1) : ℚ)

end

end A172507.P6466684839393696272

/-! ## A172507.P9417172677384477133

`A020338(n+1)/A068822(n+1)`
-/

namespace A172507.P9417172677384477133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) : ℚ) / (A068822 (n + 1) : ℚ)

end

end A172507.P9417172677384477133

/-! ## A172507.P10074320449553645809

`A084854(∑[n+1])/A068822(n+1)`
-/

namespace A172507.P10074320449553645809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084854 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A068822 (n + 1) : ℚ)

end

end A172507.P10074320449553645809

/-! ## A172507.P16243513061278718953

`A020338(n+1)/gcd(n+1, A061601(n))`
-/

namespace A172507.P16243513061278718953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A061601 n) : ℚ)

end

end A172507.P16243513061278718953

/-!
# A172508: Prime numbers such that the differences between any pair of digits is prime.

The programs for A172508, there is no canonical definition to state claims against.
-/

/-! ## A172508.P9784036784656426345

`record[A137564(A181525(n+1))]`
-/

namespace A172508.P9784036784656426345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A181525 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172508.P9784036784656426345

/-! ## A172508.P6012037305779529539

`filter[A181525(n+1), A178788(#)]`
-/

namespace A172508.P6012037305779529539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A172508.P6012037305779529539

/-! ## A172508.P4701240493716621813

`∩[A010784(n+1), A181525(n+1)]`
-/

namespace A172508.P4701240493716621813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172508.P4701240493716621813

/-! ## A172508.P7064217793159277139

`∩[A029743(n+1), A181525(n+1)]`
-/

namespace A172508.P7064217793159277139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172508.P7064217793159277139

/-! ## A172508.P12499620180920287828

`∩[A181525(n+1), A181526(n+1)]`
-/

namespace A172508.P12499620180920287828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172508.P12499620180920287828

/-!
# A172510: a(n) = binomial(n + 4, 4) * 8^n.

The programs for A172510, the canonical program `A172510.P345942601950560389` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172510 has offset 0).

The definition of A172510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*8^n` (program `A172510.P345942601950560389`, by `A172510.P345942601950560389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172510.P345942601950560389

`C(n+4, 4)*8^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A172510

/-- `C(n+4, 4)*8^n` -/
def P345942601950560389.Spec : Prop :=
  ∀ n, (P345942601950560389.a n : ℤ) = A172510 n

theorem P345942601950560389.correct : P345942601950560389.Spec := by
  intro n
  simp only [A172510]

end A172510

/-! ## A172510.P16040698045277429812

`8^n*∑[∑[∑[n+1]]]`
-/

namespace A172510.P16040698045277429812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172510.P16040698045277429812

namespace A172510

/-- `8^n*∑[∑[∑[n+1]]]` -/
def P16040698045277429812.Spec : Prop :=
  ∀ n, (P16040698045277429812.a n : ℤ) = A172510 n

end A172510

/-! ## A172510.P2922498191844450493

`4^n*A344564(n)/3`
-/

namespace A172510.P2922498191844450493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) * A344564 n : ℚ) / 3

end

end A172510.P2922498191844450493

namespace A172510

/-- `4^n*A344564(n)/3` -/
def P2922498191844450493.Spec : Prop :=
  ∀ n, P2922498191844450493.a n = (A172510 n : ℚ)

end A172510

/-! ## A172510.P17045825252071545808

`A038279(A056000(n)+14)`
-/

namespace A172510.P17045825252071545808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (A056000 n + 14).toNat

end

end A172510.P17045825252071545808

namespace A172510

/-- `A038279(A056000(n)+14)` -/
def P17045825252071545808.Spec : Prop :=
  ∀ n, P17045825252071545808.a n = A172510 n

end A172510

/-! ## A172510.P12182617729988857182

`A038279(eq[4, A002262(n)])`
-/

namespace A172510.P12182617729988857182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172510.P12182617729988857182

namespace A172510

/-- `A038279(eq[4, A002262(n)])` -/
def P12182617729988857182.Spec : Prop :=
  ∀ n, P12182617729988857182.a n = A172510 n

end A172510

/-! ## A172510.P2673883910376368778

`A038279(eq[16, A059268(n)])`
-/

namespace A172510.P2673883910376368778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172510.P2673883910376368778

namespace A172510

/-- `A038279(eq[16, A059268(n)])` -/
def P2673883910376368778.Spec : Prop :=
  ∀ n, P2673883910376368778.a n = A172510 n

end A172510

/-! ## A172510.P13296400961035312499

`A038279(eq[5, A002260(n+1)])`
-/

namespace A172510.P13296400961035312499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172510.P13296400961035312499

namespace A172510

/-- `A038279(eq[5, A002260(n+1)])` -/
def P13296400961035312499.Spec : Prop :=
  ∀ n, P13296400961035312499.a n = A172510 n

end A172510

/-! ## A172510.P10504149571157672547

`A013615(eq[4, A025581(n)])`
-/

namespace A172510.P10504149571157672547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172510.P10504149571157672547

namespace A172510

/-- `A013615(eq[4, A025581(n)])` -/
def P10504149571157672547.Spec : Prop :=
  ∀ n, P10504149571157672547.a n = A172510 n

end A172510

/-! ## A172510.P12856098695013514899

`A013615(eq[16, A130321(n)])`
-/

namespace A172510.P12856098695013514899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172510.P12856098695013514899

namespace A172510

/-- `A013615(eq[16, A130321(n)])` -/
def P12856098695013514899.Spec : Prop :=
  ∀ n, P12856098695013514899.a n = A172510 n

end A172510

/-!
# A172511: a(n) = a(n-1) * (11*a(n-1) - a(n-2)) / (a(n-1) + 4*a(n-2)), with a(0) = a(1) = 1.

The programs for A172511, the canonical program `A172511.P15173495036774135615` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172511 has offset 0).

The definition of A172511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172511.P14614743974782590841

`ogf((1-10x+24x^2-15x^3+2x^4)/(1-11x+33x^2-33x^3+11x^4-x^5))`
-/

namespace A172511.P14614743974782590841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10, 24, -15, 2] [1, -11, 33, -33, 11, -1] n

end

end A172511.P14614743974782590841

namespace A172511

/-- `ogf((1-10x+24x^2-15x^3+2x^4)/(1-11x+33x^2-33x^3+11x^4-x^5))` -/
def P14614743974782590841.Spec : Prop :=
  ∀ n, P14614743974782590841.a n = A172511 n

end A172511

/-! ## A172511.P15173495036774135615

`11*a(n-1)-33*a(n-2)+33*a(n-3)-11*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=35`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A172511

/-- `11*a(n-1)-33*a(n-2)+33*a(n-3)-11*a(n-4)+a(n-5)` -/
def P15173495036774135615.Spec : Prop :=
  ∀ n, P15173495036774135615.a n = A172511 n

theorem P15173495036774135615.correct : P15173495036774135615.Spec := by
  intro n
  simp only [A172511]

end A172511

/-! ## A172511.P13746226079438327252

`a(n-1)*(11*a(n-1)-a(n-2))/(a(n-1)+4*a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172511.P13746226079438327252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (11 * a (n - 1) - a (n - 2)) / (a (n - 1) + 4 * a (n - 2))

end

end A172511.P13746226079438327252

namespace A172511

/-- `a(n-1)*(11*a(n-1)-a(n-2))/(a(n-1)+4*a(n-2))` -/
def P13746226079438327252.Spec : Prop :=
  ∀ n, P13746226079438327252.a n = (A172511 n : ℚ)

end A172511

/-! ## A172511.P14847566927522645058

`C(∑[ceil(a(n-1)/(2-ϕ))], 2)/3` with `a(0)=3, a(1)=0, a(2)=1`
-/

namespace A172511.P14847566927522645058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 1] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℚ) / 3

end

end A172511.P14847566927522645058

namespace A172511

/-- `C(∑[ceil(a(n-1)/(2-ϕ))], 2)/3` -/
def P14847566927522645058.Spec : Prop :=
  ∀ n, P14847566927522645058.a n = (A172511 n : ℚ)

end A172511

/-! ## A172511.P3109087371390002994

`C(A001519(n)+2, 2)/3`
-/

namespace A172511.P3109087371390002994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A001519 n + 2).toNat 2 : ℚ) / 3

end

end A172511.P3109087371390002994

namespace A172511

/-- `C(A001519(n)+2, 2)/3` -/
def P3109087371390002994.Spec : Prop :=
  ∀ n, P3109087371390002994.a n = (A172511 n : ℚ)

end A172511

/-! ## A172511.P8864798967513696604

`3*C(A032908(n)+1, 2)/9`
-/

namespace A172511.P8864798967513696604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (A032908 n + 1).toNat 2 : ℚ) / 9

end

end A172511.P8864798967513696604

namespace A172511

/-- `3*C(A032908(n)+1, 2)/9` -/
def P8864798967513696604.Spec : Prop :=
  ∀ n, P8864798967513696604.a n = (A172511 n : ℚ)

end A172511

/-!
# A172512: Partial sums of A057429.

The programs for A172512, there is no canonical definition to state claims against.
-/

/-! ## A172512.P17934525447403402222

`∑[A057429(n+1)]`
-/

namespace A172512.P17934525447403402222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172512.P17934525447403402222

/-! ## A172512.P497041254425013269

`∑[record[A057429(A028920(n))]]`
-/

namespace A172512.P497041254425013269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057429 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172512.P497041254425013269

/-! ## A172512.P16651375724735664562

`∑[record[A057429(A065648(n))]]`
-/

namespace A172512.P16651375724735664562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057429 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172512.P16651375724735664562

/-! ## A172512.P8996878030032923528

`∑[record[A057429(A106466(n))]]`
-/

namespace A172512.P8996878030032923528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057429 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172512.P8996878030032923528

/-! ## A172512.P10878821188516500877

`∑[p?[A088962(n+1)]]`
-/

namespace A172512.P10878821188516500877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088962 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172512.P10878821188516500877

/-!
# A172513: Complement of A167389.

The programs for A172513, there is no canonical definition to state claims against.
-/

/-! ## A172513.P11961449416498574708

`comp[floor(n/log(2))-28]`
-/

namespace A172513.P11961449416498574708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋ - 28

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A172513.P11961449416498574708

/-! ## A172513.P5484732907260886937

`A172515(n)+a(n-1)` with `a(0)=1`
-/

namespace A172513.P5484732907260886937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172515 n + a (n - 1)

end

end A172513.P5484732907260886937

/-! ## A172513.P18094564298065667138

`round(log(A398865(2*n+1)))`
-/

namespace A172513.P18094564298065667138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A398865 (2 * n + 1) : ℝ))

end

end A172513.P18094564298065667138

/-! ## A172513.P15446889603944941892

`comp[A167389(n+1)-1]+1`
-/

namespace A172513.P15446889603944941892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A172513.P15446889603944941892

/-! ## A172513.P3906993194028854550

`∑[A172515(A028310(n))]-2`
-/

namespace A172513.P3906993194028854550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172515 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A172513.P3906993194028854550

/-! ## A172513.P2521731295660283622

`∑[A172515(A233583(n+1))]-2`
-/

namespace A172513.P2521731295660283622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172515 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A172513.P2521731295660283622

/-! ## A172513.P10292317138295496157

`A182774(n+1)+A182774(n+5)-8`
-/

namespace A172513.P10292317138295496157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182774 (n + 1) + (A182774 (n + 5) - 8)

end

end A172513.P10292317138295496157

/-! ## A172513.P18160904216597544582

`∑[A172515(n+1)]+1-A172515(n+1)`
-/

namespace A172513.P18160904216597544582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A172515 (n + 1))

end

end A172513.P18160904216597544582

/-!
# A172515: First differences of A172513.

The programs for A172515, the canonical program `A172515.P12895407565169366813` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172515 has offset 1).

The definition of A172515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172515.P1522866951833525449

`Δ[ceil((1-(log(3)+n))/(log(2)-1))]`
-/

namespace A172515.P1522866951833525449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - (Real.log (3 : ℝ) + (n : ℝ))) / (Real.log (2 : ℝ) - 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172515.P1522866951833525449

namespace A172515

/-- `Δ[ceil((1-(log(3)+n))/(log(2)-1))]` -/
def P1522866951833525449.Spec : Prop :=
  ∀ n, P1522866951833525449.a n = A172515 (n + 1)

end A172515

/-! ## A172515.P12895407565169366813

`A134868(Δ[A059563(3*n+4)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A172515

/-- `A134868(Δ[A059563(3*n+4)])` -/
def P12895407565169366813.Spec : Prop :=
  ∀ n, P12895407565169366813.a n = A172515 (n + 1)

theorem P12895407565169366813.correct : P12895407565169366813.Spec := by
  intro n
  simp only [A172515, Nat.add_sub_cancel]

end A172515

/-! ## A172515.P11849662754853560596

`A281976(Δ[A059563(3*n+4)])`
-/

namespace A172515.P11849662754853560596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059563 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281976 (f1 (n + 1) - f1 n).toNat

end

end A172515.P11849662754853560596

namespace A172515

/-- `A281976(Δ[A059563(3*n+4)])` -/
def P11849662754853560596.Spec : Prop :=
  ∀ n, P11849662754853560596.a n = A172515 (n + 1)

end A172515

/-! ## A172515.P1531762618445583326

`A004197(Δ[A059563(3*n+4)]²)`
-/

namespace A172515.P1531762618445583326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059563 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A172515.P1531762618445583326

namespace A172515

/-- `A004197(Δ[A059563(3*n+4)]²)` -/
def P1531762618445583326.Spec : Prop :=
  ∀ n, P1531762618445583326.a n = A172515 (n + 1)

end A172515

/-! ## A172515.P11106181284378123505

`abs(Δ[A172513(n+1)])`
-/

namespace A172515.P11106181284378123505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A172515.P11106181284378123505

namespace A172515

/-- `abs(Δ[A172513(n+1)])` -/
def P11106181284378123505.Spec : Prop :=
  ∀ n, P11106181284378123505.a n = A172515 (n + 1)

end A172515

/-! ## A172515.P17371830386656415756

`A000027(Δ[A172513(n+1)])`
-/

namespace A172515.P17371830386656415756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A172515.P17371830386656415756

namespace A172515

/-- `A000027(Δ[A172513(n+1)])` -/
def P17371830386656415756.Spec : Prop :=
  ∀ n, P17371830386656415756.a n = A172515 (n + 1)

end A172515

/-! ## A172515.P11370448447476246248

`A000793(Δ[A172513(n+1)])`
-/

namespace A172515.P11370448447476246248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (f1 (n + 1) - f1 n).toNat

end

end A172515.P11370448447476246248

namespace A172515

/-- `A000793(Δ[A172513(n+1)])` -/
def P11370448447476246248.Spec : Prop :=
  ∀ n, P11370448447476246248.a n = A172515 (n + 1)

end A172515

/-! ## A172515.P3521215018162370570

`A007953(Δ[A172513(n+1)])`
-/

namespace A172515.P3521215018162370570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (n + 1) - f1 n).toNat

end

end A172515.P3521215018162370570

namespace A172515

/-- `A007953(Δ[A172513(n+1)])` -/
def P3521215018162370570.Spec : Prop :=
  ∀ n, P3521215018162370570.a n = A172515 (n + 1)

end A172515

/-! ## A172515.P16220418999739976885

`A047363(Δ[A172513(n+1)])`
-/

namespace A172515.P16220418999739976885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (f1 (n + 1) - f1 n).toNat

end

end A172515.P16220418999739976885

namespace A172515

/-- `A047363(Δ[A172513(n+1)])` -/
def P16220418999739976885.Spec : Prop :=
  ∀ n, P16220418999739976885.a n = A172515 (n + 1)

end A172515

/-! ## A172515.P6585686788439787797

`A051038(Δ[A172513(n+1)])`
-/

namespace A172515.P6585686788439787797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (f1 (n + 1) - f1 n).toNat

end

end A172515.P6585686788439787797

namespace A172515

/-- `A051038(Δ[A172513(n+1)])` -/
def P6585686788439787797.Spec : Prop :=
  ∀ n, P6585686788439787797.a n = A172515 (n + 1)

end A172515

/-!
# A172516: Least number k such that sigma(k) >= 2^n.

The programs for A172516, there is no canonical definition to state claims against.
-/

/-! ## A172516.P10214250845659512232

`A070172(2^(n+1))`
-/

namespace A172516.P10214250845659512232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (2 ^ (n + 1))

end

end A172516.P10214250845659512232

/-! ## A172516.P10346864050051068401

`A064764(n+1)+A000005(A070733(n+2))`
-/

namespace A172516.P10346864050051068401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064764 (n + 1) + A000005 (A070733 (n + 2)).toNat

end

end A172516.P10346864050051068401

/-! ## A172516.P16844525185561759066

`A000005(A000142(n)*A354755(3*n+2))`
-/

namespace A172516.P16844525185561759066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000142 n * A354755 (3 * n + 2)).toNat

end

end A172516.P16844525185561759066

/-!
# A172517: Number of ways to place 2 nonattacking queens on an n X n toroidal board.

The programs for A172517, the canonical program `A172517.P8780340073913971199` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172517 has offset 1).

The definition of A172517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172517.P8780340073913971199

`ogf((32x^3+36x^4+24x^5+4x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A172517

/-- `ogf((32x^3+36x^4+24x^5+4x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P8780340073913971199.Spec : Prop :=
  ∀ n, P8780340073913971199.a n = A172517 (n + 1)

theorem P8780340073913971199.correct : P8780340073913971199.Spec := by
  intro n
  simp only [A172517, Nat.add_sub_cancel]

end A172517

/-! ## A172517.P11330414360736766081

`(n+1)²*floor((1-n)²/2)`
-/

namespace A172517.P11330414360736766081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

end

end A172517.P11330414360736766081

namespace A172517

/-- `(n+1)²*floor((1-n)²/2)` -/
def P11330414360736766081.Spec : Prop :=
  ∀ n, P11330414360736766081.a n = A172517 (n + 1)

end A172517

/-! ## A172517.P473692566727278761

`A210379(n)-A035006(n+1)`
-/

namespace A172517.P473692566727278761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210379 n - A035006 (n + 1)

end

end A172517.P473692566727278761

namespace A172517

/-- `A210379(n)-A035006(n+1)` -/
def P473692566727278761.Spec : Prop :=
  ∀ n, P473692566727278761.a n = A172517 (n + 1)

end A172517

/-! ## A172517.P9340876306223434237

`A128091(n+1)-A210378(n)`
-/

namespace A172517.P9340876306223434237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128091 (n + 1) - A210378 n

end

end A172517.P9340876306223434237

namespace A172517

/-- `A128091(n+1)-A210378(n)` -/
def P9340876306223434237.Spec : Prop :=
  ∀ n, P9340876306223434237.a n = A172517 (n + 1)

end A172517

/-! ## A172517.P15642088749372503795

`A100177(n+1)-A130656(n+1)`
-/

namespace A172517.P15642088749372503795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100177 (n + 1) - A130656 (n + 1)

end

end A172517.P15642088749372503795

namespace A172517

/-- `A100177(n+1)-A130656(n+1)` -/
def P15642088749372503795.Spec : Prop :=
  ∀ n, P15642088749372503795.a n = A172517 (n + 1)

end A172517

/-! ## A172517.P16335486392342348544

`A036464(n+1)+A177755(n+1)-A172123(n+1)`
-/

namespace A172517.P16335486392342348544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1) + (A177755 (n + 1) - A172123 (n + 1))

end

end A172517.P16335486392342348544

namespace A172517

/-- `A036464(n+1)+A177755(n+1)-A172123(n+1)` -/
def P16335486392342348544.Spec : Prop :=
  ∀ n, P16335486392342348544.a n = A172517 (n + 1)

end A172517

/-!
# A172518: Number of ways to place 3 nonattacking queens on an n X n toroidal board.

The programs for A172518, there is no canonical definition to state claims against.
-/

/-! ## A172518.P13095305327625137632

`A005843(∑{e}[n+1, #]*A235942(n+1))`
-/

namespace A172518.P13095305327625137632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A235942 (n + 1)).toNat

end

end A172518.P13095305327625137632

/-! ## A172518.P6201539137625617418

`A042948(∑{e}[n+1, #]*A235942(n+1))`
-/

namespace A172518.P6201539137625617418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A235942 (n + 1)).toNat

end

end A172518.P6201539137625617418

/-! ## A172518.P10411376332601686300

`A042948(2^val(n+1, 2)*A235942(n+1))`
-/

namespace A172518.P10411376332601686300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 ((2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A235942 (n + 1)).toNat

end

end A172518.P10411376332601686300

/-!
# A172519: Number of ways to place 4 nonattacking queens on an n X n toroidal board.

The programs for A172519, there is no canonical definition to state claims against.
-/

/-! ## A172519.P11262397798472390669

`A004526(A326588(2*(n+1))²)`
-/

namespace A172519.P11262397798472390669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A326588 (2 * (n + 1)) ^ 2).toNat

end

end A172519.P11262397798472390669

/-! ## A172519.P13005999441694123427

`A025480(A326523(2*(n+1))²)`
-/

namespace A172519.P13005999441694123427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A326523 (2 * (n + 1)) ^ 2).toNat

end

end A172519.P13005999441694123427

/-! ## A172519.P4923913570778392325

`A025480(A326588(2*(n+1))²)`
-/

namespace A172519.P4923913570778392325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A326588 (2 * (n + 1)) ^ 2).toNat

end

end A172519.P4923913570778392325

/-!
# A172520: Triangle in which row n gives the number of divisors of numbers in the range n to n+k for k=0..n-1.

The programs for A172520, there is no canonical definition to state claims against.
-/

/-! ## A172520.P12590023289092118111

`A001222(A055260(n)/A043284(n+1))`
-/

namespace A172520.P12590023289092118111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A055260 n : ℚ) / (A043284 (n + 1) : ℚ))).toNat

end

end A172520.P12590023289092118111

/-! ## A172520.P8540063517094679811

`A001222(A055260(n))-char[A055260(2*n+1)]`
-/

namespace A172520.P8540063517094679811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055260 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055260 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A172520.P8540063517094679811

/-! ## A172520.P16279003722220238772

`A046660(A204985(n+1)²)`
-/

namespace A172520.P16279003722220238772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A204985 (n + 1) ^ 2).toNat

end

end A172520.P16279003722220238772

/-! ## A172520.P8646904924233485306

`A046660(A204985(n+1)^2)`
-/

namespace A172520.P8646904924233485306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A204985 (n + 1) ^ 2).toNat

end

end A172520.P8646904924233485306

/-! ## A172520.P4628089552435579159

`A001222(2*A055260(n))-A043284(n+1)`
-/

namespace A172520.P4628089552435579159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A055260 n).toNat - A043284 (n + 1)

end

end A172520.P4628089552435579159

/-!
# A172521: Partial sums of A078902.

The programs for A172521, there is no canonical definition to state claims against.
-/

/-! ## A172521.P332592063579266567

`∑[A078902(n+1)]`
-/

namespace A172521.P332592063579266567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172521.P332592063579266567

/-! ## A172521.P17653606016266933625

`∑[record[A078902(A133310(n))]]`
-/

namespace A172521.P17653606016266933625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172521.P17653606016266933625

/-! ## A172521.P9379337234731228121

`∑[record[A078902(A106466(n))]]`
-/

namespace A172521.P9379337234731228121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172521.P9379337234731228121

/-! ## A172521.P496640875397805081

`∑[record[A078902(A141256(n))]]`
-/

namespace A172521.P496640875397805081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172521.P496640875397805081

/-! ## A172521.P1368465950538284273

`∑[record[A078902(A102885(n))]]`
-/

namespace A172521.P1368465950538284273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172521.P1368465950538284273

/-!
# A172522: Partial sums of A049094.

The programs for A172522, the canonical program `A172522.P7824207335733574885` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172522 has offset 1).

The definition of A172522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172522.P7824207335733574885

`∑[A049094(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A172522

/-- `∑[A049094(n+1)]` -/
def P7824207335733574885.Spec : Prop :=
  ∀ n, P7824207335733574885.a n = A172522 (n + 1)

theorem P7824207335733574885.correct : P7824207335733574885.Spec := by
  intro n
  simp only [A172522, Nat.add_sub_cancel]

end A172522

/-! ## A172522.P13634908311156796315

`∑[record[A049094(A038568(n))]]`
-/

namespace A172522.P13634908311156796315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P13634908311156796315

namespace A172522

/-- `∑[record[A049094(A038568(n))]]` -/
def P13634908311156796315.Spec : Prop :=
  ∀ n, P13634908311156796315.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P13339461651117093590

`∑[record[A049094(A126759(n))]]`
-/

namespace A172522.P13339461651117093590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P13339461651117093590

namespace A172522

/-- `∑[record[A049094(A126759(n))]]` -/
def P13339461651117093590.Spec : Prop :=
  ∀ n, P13339461651117093590.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P16881310417830422772

`∑[record[A049094(A133310(n))]]`
-/

namespace A172522.P16881310417830422772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P16881310417830422772

namespace A172522

/-- `∑[record[A049094(A133310(n))]]` -/
def P16881310417830422772.Spec : Prop :=
  ∀ n, P16881310417830422772.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P5946678837500777285

`∑[record[A049094(A141256(n))]]`
-/

namespace A172522.P5946678837500777285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P5946678837500777285

namespace A172522

/-- `∑[record[A049094(A141256(n))]]` -/
def P5946678837500777285.Spec : Prop :=
  ∀ n, P5946678837500777285.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P7428857953403158665

`∑[record[A049094(A236858(n))]]`
-/

namespace A172522.P7428857953403158665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P7428857953403158665

namespace A172522

/-- `∑[record[A049094(A236858(n))]]` -/
def P7428857953403158665.Spec : Prop :=
  ∀ n, P7428857953403158665.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P3834295313333537149

`∑[record[A049094(A286478(n))]]`
-/

namespace A172522.P3834295313333537149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A286478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P3834295313333537149

namespace A172522

/-- `∑[record[A049094(A286478(n))]]` -/
def P3834295313333537149.Spec : Prop :=
  ∀ n, P3834295313333537149.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P17891990665011281128

`∑[record[A049094(A286544(n))]]`
-/

namespace A172522.P17891990665011281128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P17891990665011281128

namespace A172522

/-- `∑[record[A049094(A286544(n))]]` -/
def P17891990665011281128.Spec : Prop :=
  ∀ n, P17891990665011281128.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P2040516087415018089

`∑[record[A049094(A292266(n))]]`
-/

namespace A172522.P2040516087415018089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P2040516087415018089

namespace A172522

/-- `∑[record[A049094(A292266(n))]]` -/
def P2040516087415018089.Spec : Prop :=
  ∀ n, P2040516087415018089.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P5349728934958449237

`∑[record[A049094(A324347(n))]]`
-/

namespace A172522.P5349728934958449237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P5349728934958449237

namespace A172522

/-- `∑[record[A049094(A324347(n))]]` -/
def P5349728934958449237.Spec : Prop :=
  ∀ n, P5349728934958449237.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P13887465883348917891

`∑[record[A049094(A324380(n))]]`
-/

namespace A172522.P13887465883348917891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A324380 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P13887465883348917891

namespace A172522

/-- `∑[record[A049094(A324380(n))]]` -/
def P13887465883348917891.Spec : Prop :=
  ∀ n, P13887465883348917891.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P6707346138372693219

`∑[record[A049094(A328576(n))]]`
-/

namespace A172522.P6707346138372693219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A328576 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P6707346138372693219

namespace A172522

/-- `∑[record[A049094(A328576(n))]]` -/
def P6707346138372693219.Spec : Prop :=
  ∀ n, P6707346138372693219.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P15642664845812612530

`A000027(∑[A049094(-xor(n, -1))])`
-/

namespace A172522.P15642664845812612530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172522.P15642664845812612530

namespace A172522

/-- `A000027(∑[A049094(-xor(n, -1))])` -/
def P15642664845812612530.Spec : Prop :=
  ∀ n, P15642664845812612530.a n = A172522 (n + 1)

end A172522

/-! ## A172522.P9996487996979544985

`∑[record[A049094(A193592(n))]]`
-/

namespace A172522.P9996487996979544985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172522.P9996487996979544985

namespace A172522

/-- `∑[record[A049094(A193592(n))]]` -/
def P9996487996979544985.Spec : Prop :=
  ∀ n, P9996487996979544985.a n = A172522 (n + 1)

end A172522

/-!
# A172523: Partial sums of primes in which no digit is a prime A061372.

The programs for A172523, there is no canonical definition to state claims against.
-/

/-! ## A172523.P9980021738959797814

`∑[A061372(n+1)]`
-/

namespace A172523.P9980021738959797814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172523.P9980021738959797814

/-! ## A172523.P9734990150710449171

`∑[record[A061372(A324344(n))]]`
-/

namespace A172523.P9734990150710449171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172523.P9734990150710449171

/-! ## A172523.P8387462716086014725

`∑[record[A061372(A152271(n))]]`
-/

namespace A172523.P8387462716086014725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172523.P8387462716086014725

/-! ## A172523.P1926271997569253512

`∑[record[A061372(A203814(n))]]`
-/

namespace A172523.P1926271997569253512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172523.P1926271997569253512

/-! ## A172523.P5739536942807327226

`∑[record[A061372(A022446(n))]]`
-/

namespace A172523.P5739536942807327226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172523.P5739536942807327226

/-! ## A172523.P9592997197070562971

`∑[p?[A001744(n+1)]]`
-/

namespace A172523.P9592997197070562971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172523.P9592997197070562971

/-! ## A172523.P17708204650645492957

`∑[record[A061372(A028920(n))]]`
-/

namespace A172523.P17708204650645492957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172523.P17708204650645492957

/-!
# A172524: Partial sums of Iccanobif numbers A001129.

The programs for A172524, there is no canonical definition to state claims against.
-/

/-! ## A172524.P15949144752917510867

`∑[A001129(n)]`
-/

namespace A172524.P15949144752917510867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172524.P15949144752917510867

/-! ## A172524.P3783267815166129227

`A001129(char[1]+n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A172524.P3783267815166129227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001129 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A172524.P3783267815166129227

/-! ## A172524.P4116636036993359380

`∑{d}[A000079(n), A001129(log2(#))]`
-/

namespace A172524.P4116636036993359380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001129 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A172524.P4116636036993359380

/-! ## A172524.P8178930344446190799

`∑[A004086(A014258(n))]`
-/

namespace A172524.P8178930344446190799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A014258 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172524.P8178930344446190799

/-! ## A172524.P17103594635426447619

`∑[A004093(5*A014258(n))]`
-/

namespace A172524.P17103594635426447619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A014258 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172524.P17103594635426447619

/-!
# A172525: a(n) = 111111111 * n.

The programs for A172525, there is no canonical definition to state claims against.
-/

/-! ## A172525.P12620872522199932714

`(n+1)*A180513((n+1)%A006530(n+1)+1)`
-/

namespace A172525.P12620872522199932714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A180513 (Int.tmod (n + 1 : ℤ) (A006530 (n + 1)) + 1).toNat

end

end A172525.P12620872522199932714

/-!
# A172526: a(n)=floor(3*n^2*(2+sqrt(3))).

The programs for A172526, the canonical program `A172526.P1234366122773288449` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172526 has offset 1).

The definition of A172526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*(n+1)²*(2+sqrt(3)))` (program `A172526.P1234366122773288449`, by `A172526.P1234366122773288449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172526.P1234366122773288449

`floor(3*(n+1)²*(2+sqrt(3)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A172526

/-- `floor(3*(n+1)²*(2+sqrt(3)))` -/
def P1234366122773288449.Spec : Prop :=
  ∀ n, P1234366122773288449.a n = A172526 (n + 1)

theorem P1234366122773288449.correct : P1234366122773288449.Spec := by
  intro n
  simp only [A172526, Nat.add_sub_cancel]

end A172526

/-! ## A172526.P12860727864337097321

`A003512(3*(n+1)²)`
-/

namespace A172526.P12860727864337097321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (3 * (n + 1) ^ 2)

end

end A172526.P12860727864337097321

namespace A172526

/-- `A003512(3*(n+1)²)` -/
def P12860727864337097321.Spec : Prop :=
  ∀ n, P12860727864337097321.a n = A172526 (n + 1)

end A172526

/-! ## A172526.P3384055552196701778

`A180123(3*(n+1)²)+1`
-/

namespace A172526.P3384055552196701778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (3 * (n + 1) ^ 2) + 1

end

end A172526.P3384055552196701778

namespace A172526

/-- `A180123(3*(n+1)²)+1` -/
def P3384055552196701778.Spec : Prop :=
  ∀ n, P3384055552196701778.a n = A172526 (n + 1)

end A172526

/-! ## A172526.P5447382782857578322

`A188069(∑[4*(n+1)]+n²)-1`
-/

namespace A172526.P5447382782857578322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2) - 1

end

end A172526.P5447382782857578322

namespace A172526

/-- `A188069(∑[4*(n+1)]+n²)-1` -/
def P5447382782857578322.Spec : Prop :=
  ∀ n, P5447382782857578322.a n = A172526 (n + 1)

end A172526

/-! ## A172526.P3318415001883494390

`A000027(A003512(∑[6*n+3]))`
-/

namespace A172526.P3318415001883494390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003512 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A172526.P3318415001883494390

namespace A172526

/-- `A000027(A003512(∑[6*n+3]))` -/
def P3318415001883494390.Spec : Prop :=
  ∀ n, P3318415001883494390.a n = A172526 (n + 1)

end A172526

/-! ## A172526.P15074386379047585598

`or(char[3], A003512(A008486((n+1)²)))`
-/

namespace A172526.P15074386379047585598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A003512 (A008486 ((n + 1) ^ 2)).toNat)

end

end A172526.P15074386379047585598

namespace A172526

/-- `or(char[3], A003512(A008486((n+1)²)))` -/
def P15074386379047585598.Spec : Prop :=
  ∀ n, P15074386379047585598.a n = A172526 (n + 1)

end A172526

/-! ## A172526.P13224097538662295648

`A033581(n+1)+A022838(A033428(n+1))`
-/

namespace A172526.P13224097538662295648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 1) + A022838 (A033428 (n + 1)).toNat

end

end A172526.P13224097538662295648

namespace A172526

/-- `A033581(n+1)+A022838(A033428(n+1))` -/
def P13224097538662295648.Spec : Prop :=
  ∀ n, P13224097538662295648.a n = A172526 (n + 1)

end A172526

/-! ## A172526.P10611819515718519243

`A003512(A008486((n+1)²))/A007318(∑[n])`
-/

namespace A172526.P10611819515718519243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003512 (A008486 ((n + 1) ^ 2)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A172526.P10611819515718519243

namespace A172526

/-- `A003512(A008486((n+1)²))/A007318(∑[n])` -/
def P10611819515718519243.Spec : Prop :=
  ∀ n, P10611819515718519243.a n = (A172526 (n + 1) : ℚ)

end A172526

/-! ## A172526.P17794209852810107875

`A003512(A008486((n+1)²))/A000040(n+3)%2`
-/

namespace A172526.P17794209852810107875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003512 (A008486 ((n + 1) ^ 2)).toNat : ℚ) / (Int.tmod (A000040 (n + 3)) 2 : ℚ)

end

end A172526.P17794209852810107875

namespace A172526

/-- `A003512(A008486((n+1)²))/A000040(n+3)%2` -/
def P17794209852810107875.Spec : Prop :=
  ∀ n, P17794209852810107875.a n = (A172526 (n + 1) : ℚ)

end A172526

/-!
# A172527: a(n) = the smallest prime > (1/EulerGamma)^n.

The programs for A172527, there is no canonical definition to state claims against.
-/

/-! ## A172527.P5352802452052595878

`A151800(A390318(n+1))`
-/

namespace A172527.P5352802452052595878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A390318 (n + 1)).toNat

end

end A172527.P5352802452052595878

/-! ## A172527.P6726777376896141734

`A151800(A202304(3^n))`
-/

namespace A172527.P6726777376896141734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A202304 (3 ^ n)).toNat

end

end A172527.P6726777376896141734

/-! ## A172527.P10223343806595036840

`p?[A325623(∑[A089408(n)])]`
-/

namespace A172527.P10223343806595036840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172527.P10223343806595036840

/-! ## A172527.P16366335224801384303

`A151800(∑[A010101(n+1)])`
-/

namespace A172527.P16366335224801384303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172527.P16366335224801384303

/-! ## A172527.P8123525836733964923

`A034444(n+1)+A001650(A293738(n+1))`
-/

namespace A172527.P8123525836733964923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + A001650 (A293738 (n + 1)).toNat

end

end A172527.P8123525836733964923

/-!
# A172529: Number of ways to place 2 nonattacking knights on an n X n toroidal board.

The programs for A172529, there is no canonical definition to state claims against.
-/

/-! ## A172529.P694701718901279437

`A100885(A026095(n+1))`
-/

namespace A172529.P694701718901279437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100885 (A026095 (n + 1)).toNat

end

end A172529.P694701718901279437

/-!
# A172530: Number of ways to place 3 nonattacking knights on an n X n toroidal board.

The programs for A172530, there is no canonical definition to state claims against.
-/

/-! ## A172530.P3498978413361459677

`A000629(n)*A122179(A003580(n))`
-/

namespace A172530.P3498978413361459677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n * A122179 (A003580 n).toNat

end

end A172530.P3498978413361459677

/-!
# A172531: Number of ways to place 4 nonattacking knights on an n X n toroidal board.

The programs for A172531, there is no canonical definition to state claims against.
-/

/-! ## A172531.P7781933559790356773

`filter[A366646(n), A079979(#)]`
-/

namespace A172531.P7781933559790356773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A172531.P7781933559790356773

/-!
# A172532: Number of ways to place 5 nonattacking knights on an n X n toroidal board.

The programs for A172532, there is no canonical definition to state claims against.
-/

/-! ## A172532.P6824955231100096396

`A048728(∑[∑[n^(n+1)]])`
-/

namespace A172532.P6824955231100096396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172532.P6824955231100096396

/-!
# A172534: Number of n X n 0..1 arrays with row sums 12 and column sums 12.

The programs for A172534, there is no canonical definition to state claims against.
-/

/-! ## A172534.P7571537784898967569

`A052605(C(n, 11))`
-/

namespace A172534.P7571537784898967569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052605 (Nat.choose n 11)

end

end A172534.P7571537784898967569

/-! ## A172534.P11191774688686720474

`A087137(C(n+1, 12))`
-/

namespace A172534.P11191774688686720474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087137 (Nat.choose (n + 1) 12)

end

end A172534.P11191774688686720474

/-! ## A172534.P11798111536008975744

`A104150(C(n+2, 13))`
-/

namespace A172534.P11798111536008975744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (Nat.choose (n + 2) 13)

end

end A172534.P11798111536008975744

/-! ## A172534.P9988537467725839269

`∑[A212390(n)!-1]`
-/

namespace A172534.P9988537467725839269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A212390 n).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172534.P9988537467725839269

/-! ## A172534.P4985452707273121529

`A185815(C(abs(2*n-9), 13))`
-/

namespace A172534.P4985452707273121529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185815 (Nat.choose |(2 * n : ℤ) - 9|.toNat 13)

end

end A172534.P4985452707273121529

/-!
# A172535: Number of n X n 0..1 arrays with row sums 11 and column sums 11.

The programs for A172535, there is no canonical definition to state claims against.
-/

/-! ## A172535.P6369664279286887881

`A181857(C(n+1, 11))`
-/

namespace A172535.P6369664279286887881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 (Nat.choose (n + 1) 11)

end

end A172535.P6369664279286887881

/-! ## A172535.P5909990270969378326

`A098557(C(n+2, 12))`
-/

namespace A172535.P5909990270969378326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098557 (Nat.choose (n + 2) 12)

end

end A172535.P5909990270969378326

/-! ## A172535.P16701732637613394348

`A104150(C(n+2, 12))`
-/

namespace A172535.P16701732637613394348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (Nat.choose (n + 2) 12)

end

end A172535.P16701732637613394348

/-! ## A172535.P5541199353182369651

`∑[A309864(n)!-1]`
-/

namespace A172535.P5541199353182369651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A309864 n).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172535.P5541199353182369651

/-! ## A172535.P9286215601256990311

`A006973(C(n+1, 11)+1)`
-/

namespace A172535.P9286215601256990311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006973 (Nat.choose (n + 1) 11 + 1)

end

end A172535.P9286215601256990311

/-!
# A172536: Number of n X n 0..1 arrays with row sums 8 and column sums 8.

The programs for A172536, there is no canonical definition to state claims against.
-/

/-! ## A172536.P8787357520456947158

`(a(n-1)+n)!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=1`
-/

namespace A172536.P8787357520456947158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  Nat.factorial (a (n - 1) + n)

end

end A172536.P8787357520456947158

/-! ## A172536.P44339016208228067

`xor(n, a(n-1))!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=1`
-/

namespace A172536.P44339016208228067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  Nat.factorial (Nat.xor n (a (n - 1)))

end

end A172536.P44339016208228067

/-! ## A172536.P8571701280855173078

`∑[A309861(n)!-1]`
-/

namespace A172536.P8571701280855173078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A309861 n).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172536.P8571701280855173078

/-! ## A172536.P12472163620854572678

`A276089(C(comp[xor(n, 2*n)], 14))`
-/

namespace A172536.P12472163620854572678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 14)

end

end A172536.P12472163620854572678

/-! ## A172536.P3097500638008500759

`and(((n+1)/2^val(n+1, 2))!, A184993(n))`
-/

namespace A172536.P3097500638008500759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℤ) (A184993 n)

end

end A172536.P3097500638008500759

/-!
# A172537: Number of n X n 0..1 arrays with row sums 14 and column sums 14.

The programs for A172537, there is no canonical definition to state claims against.
-/

/-! ## A172537.P11691410794110444771

`A087137(C(n+1, 14))`
-/

namespace A172537.P11691410794110444771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087137 (Nat.choose (n + 1) 14)

end

end A172537.P11691410794110444771

/-! ## A172537.P4984445403929467376

`A181857(C(n+1, 14))`
-/

namespace A172537.P4984445403929467376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 (Nat.choose (n + 1) 14)

end

end A172537.P4984445403929467376

/-! ## A172537.P897782300088589619

`A104150(C(n+2, 15))`
-/

namespace A172537.P897782300088589619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (Nat.choose (n + 2) 15)

end

end A172537.P897782300088589619

/-! ## A172537.P15628765236988331868

`A104150(A093391(n)^4)`
-/

namespace A172537.P15628765236988331868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A093391 n ^ 4).toNat

end

end A172537.P15628765236988331868

/-! ## A172537.P18067314992177571436

`A104150(A093391(n)²²)`
-/

namespace A172537.P18067314992177571436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 ((A093391 n ^ 2) ^ 2).toNat

end

end A172537.P18067314992177571436

/-!
# A172538: Number of n X n 0..1 arrays with row sums 13 and column sums 13.

The programs for A172538, there is no canonical definition to state claims against.
-/

/-! ## A172538.P11311896899760903612

`C(n, 12)!*∑[C(n, 12)]`
-/

namespace A172538.P11311896899760903612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose n 12) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172538.P11311896899760903612

/-! ## A172538.P14198611932408622793

`A181857(C(∏{p}[n+1, #], 13))`
-/

namespace A172538.P14198611932408622793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) 13)

end

end A172538.P14198611932408622793

/-! ## A172538.P10704556419413930251

`A181857(C(comp[9*n-1], 13))`
-/

namespace A172538.P10704556419413930251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 13)

end

end A172538.P10704556419413930251

/-! ## A172538.P14236948889264920941

`A181857(∑[A185213(n)])`
-/

namespace A172538.P14236948889264920941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172538.P14236948889264920941

/-! ## A172538.P17226990031285961330

`A181857(∑{d}[A185213(n), #])`
-/

namespace A172538.P17226990031285961330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A172538.P17226990031285961330

/-!
# A172539: Number of n X n 0..1 arrays with row sums 10 and column sums 10.

The programs for A172539, there is no canonical definition to state claims against.
-/

/-! ## A172539.P14583904764237584960

`(a(n-1)+n)!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=1`
-/

namespace A172539.P14583904764237584960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  Nat.factorial (a (n - 1) + n)

end

end A172539.P14583904764237584960

/-! ## A172539.P1504209506364073478

`A104150(C(n+2, 11))`
-/

namespace A172539.P1504209506364073478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (Nat.choose (n + 2) 11)

end

end A172539.P1504209506364073478

/-! ## A172539.P18437347131092932285

`∑[A309863(n)!-1]`
-/

namespace A172539.P18437347131092932285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A309863 n).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172539.P18437347131092932285

/-! ## A172539.P7063890246479019930

`A005212(C(lt[0, ∏{digits}[n, (2-#)²]], 10))`
-/

namespace A172539.P7063890246479019930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (2 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005212 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 10)

end

end A172539.P7063890246479019930

/-! ## A172539.P7836971418925836288

`A269742(n+1)!*∑[val(C(2, n)+n, 9)]`
-/

namespace A172539.P7836971418925836288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A269742 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172539.P7836971418925836288

/-!
# A172540: Number of n X n 0..1 arrays with row sums 9 and column sums 9.

The programs for A172540, there is no canonical definition to state claims against.
-/

/-! ## A172540.P18236967032968166938

`C((n+1)!, ∏{digits}[n+2, #^5])`
-/

namespace A172540.P18236967032968166938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 1)) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 5).prod

end

end A172540.P18236967032968166938

/-! ## A172540.P7866134274607196008

`(a(n-1)+n)!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=1`
-/

namespace A172540.P7866134274607196008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  Nat.factorial (a (n - 1) + n)

end

end A172540.P7866134274607196008

/-! ## A172540.P16114749390079588585

`∑[A309862(n)!-1]`
-/

namespace A172540.P16114749390079588585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A309862 n).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172540.P16114749390079588585

/-! ## A172540.P12892792617858710796

`ceil(Δ[∑[A309863(n)!-1]/11])`
-/

namespace A172540.P12892792617858710796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A309863 n).toNat : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A172540.P12892792617858710796

/-! ## A172540.P14568794314694528686

`A171816(n)!*∑{digits}[n, and(8, #)/8]`
-/

namespace A172540.P14568794314694528686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A171816 n).toNat : ℚ) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

end

end A172540.P14568794314694528686

/-!
# A172541: Number of n X n 0..1 arrays with row sums 7 and column sums 7.

The programs for A172541, there is no canonical definition to state claims against.
-/

/-! ## A172541.P17592725329085642731

`(a(n-1)+n)!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1`
-/

namespace A172541.P17592725329085642731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 1] fun n a =>
  Nat.factorial (a (n - 1) + n)

end

end A172541.P17592725329085642731

/-! ## A172541.P6080703759392862440

`C(8*a(n-1), n)!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A172541.P6080703759392862440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0] fun n a =>
  Nat.factorial (Nat.choose (8 * a (n - 1)) n)

end

end A172541.P6080703759392862440

/-! ## A172541.P5251289059205731498

`(8*a(n-1)-3*a(n-2))!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A172541.P5251289059205731498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0] fun n a =>
  Nat.factorial ((8 * a (n - 1) : ℤ) - (3 * a (n - 2) : ℤ)).toNat

end

end A172541.P5251289059205731498

/-! ## A172541.P9117104983834162189

`A325201(A393539(n))`
-/

namespace A172541.P9117104983834162189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (A393539 n).toNat

end

end A172541.P9117104983834162189

/-!
# A172542: Number of n X n 0..1 arrays with row sums 16 and column sums 16.

The programs for A172542, there is no canonical definition to state claims against.
-/

/-! ## A172542.P9058541056105554509

`A104150(C(A305713(n+1), n))`
-/

namespace A172542.P9058541056105554509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (Nat.choose (A305713 (n + 1)).toNat n)

end

end A172542.P9058541056105554509

/-!
# A172543: Number of n X n 0..1 arrays with row sums 15 and column sums 15.

The programs for A172543, there is no canonical definition to state claims against.
-/

/-! ## A172543.P12772633997955196523

`A104150(C(n+2, 16))`
-/

namespace A172543.P12772633997955196523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (Nat.choose (n + 2) 16)

end

end A172543.P12772633997955196523

/-! ## A172543.P13994619344041936589

`A181857(A332640(n)^4)`
-/

namespace A172543.P13994619344041936589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 (A332640 n ^ 4).toNat

end

end A172543.P13994619344041936589

/-! ## A172543.P12497889307916365231

`A181857(C(A007095(n), 15))`
-/

namespace A172543.P12497889307916365231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 (Nat.choose (A007095 n).toNat 15)

end

end A172543.P12497889307916365231

/-! ## A172543.P7427249673597870279

`A181857(A332640(n)²²)`
-/

namespace A172543.P7427249673597870279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181857 ((A332640 n ^ 2) ^ 2).toNat

end

end A172543.P7427249673597870279

/-! ## A172543.P17267806870482824335

`A181332(n)!*A185274(n)`
-/

namespace A172543.P17267806870482824335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A181332 n).toNat : ℤ) * A185274 n

end

end A172543.P17267806870482824335

/-!
# A172544: Number of n X n 0..1 arrays with row sums 6 and column sums 6.

The programs for A172544, there is no canonical definition to state claims against.
-/

/-! ## A172544.P11057860804086802870

`(7*a(n-1))!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A172544.P11057860804086802870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n a =>
  Nat.factorial (7 * a (n - 1))

end

end A172544.P11057860804086802870

/-! ## A172544.P16494254502369624999

`(a(n-1)+6)!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A172544.P16494254502369624999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1] fun n a =>
  Nat.factorial (a (n - 1) + 6)

end

end A172544.P16494254502369624999

/-! ## A172544.P13292505598695937016

`xor(n, a(n-1))!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A172544.P13292505598695937016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1] fun n a =>
  Nat.factorial (Nat.xor n (a (n - 1)))

end

end A172544.P13292505598695937016

/-!
# A172545: Squares added to A172412 that produce a square smaller than any subsequent term of A172412.

The programs for A172545, there is no canonical definition to state claims against.
-/

/-! ## A172545.P8905119958423020417

`A173863(n)²`
-/

namespace A172545.P8905119958423020417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173863 n ^ 2

end

end A172545.P8905119958423020417

/-! ## A172545.P16172372932824977649

`filter[A348596(n), A010052(#)]`
-/

namespace A172545.P16172372932824977649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A172545.P16172372932824977649

/-! ## A172545.P10565690301377004603

`A056737(A259227(n+1))²`
-/

namespace A172545.P10565690301377004603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A259227 (n + 1)).toNat ^ 2

end

end A172545.P10565690301377004603

/-! ## A172545.P8572557622180293900

`A068527(record[A098352(n+1)])`
-/

namespace A172545.P8572557622180293900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172545.P8572557622180293900

/-! ## A172545.P17772964167802425640

`A068527(record[A098353(n+1)])`
-/

namespace A172545.P17772964167802425640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172545.P17772964167802425640

/-! ## A172545.P5663234282517917708

`A173863(n)^lcm(2, A000034(n))`
-/

namespace A172545.P5663234282517917708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173863 n ^ Int.lcm 2 (A000034 n)

end

end A172545.P5663234282517917708

/-! ## A172545.P5893034018042348583

`filter[A350962(n+1), A010052(#)]`
-/

namespace A172545.P5893034018042348583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A172545.P5893034018042348583

/-! ## A172545.P9199740822525480018

`A056737(record[A003991(n+1)])²`
-/

namespace A172545.P9199740822525480018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A172545.P9199740822525480018

/-! ## A172545.P1702888880735619792

`A306257(record[A098352(n+1)])²`
-/

namespace A172545.P1702888880735619792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A172545.P1702888880735619792

/-! ## A172545.P3684923654686762399

`A306257(record[A098353(n+1)])²`
-/

namespace A172545.P3684923654686762399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A172545.P3684923654686762399

/-!
# A172547: Number of 2*n X n 0..1 arrays with row sums 5 and column sums 10.

The programs for A172547, there is no canonical definition to state claims against.
-/

/-! ## A172547.P2800357870458087472

`A000680(6*a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A172547.P2800357870458087472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  A000680 (6 * a (n - 1)).toNat

end

end A172547.P2800357870458087472

/-! ## A172547.P3660331422236567151

`A178008(2*(n+1)*a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A172547.P3660331422236567151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  A178008 ((2 * (n + 1) : ℤ) * a (n - 1) + 1).toNat

end

end A172547.P3660331422236567151

/-!
# A172548: Number of 2*n X n 0..1 arrays with row sums 7 and column sums 14.

The programs for A172548, there is no canonical definition to state claims against.
-/

/-! ## A172548.P7728262562883769811

`A000680(A249390(n))-A247889(n+4)`
-/

namespace A172548.P7728262562883769811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (A249390 n).toNat - A247889 (n + 4)

end

end A172548.P7728262562883769811

/-! ## A172548.P2739458581910047510

`A079194(A226748(n)²)*A287384(2*n)`
-/

namespace A172548.P2739458581910047510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079194 (A226748 n ^ 2).toNat * A287384 (2 * n)

end

end A172548.P2739458581910047510

/-! ## A172548.P11113306447001874682

`A287384(2*n)-A260397(A006012(n+1))`
-/

namespace A172548.P11113306447001874682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 (2 * n) - A260397 (A006012 (n + 1)).toNat

end

end A172548.P11113306447001874682

/-! ## A172548.P7501848369087675108

`lcm(A000680(A205577(n+2)), A205577(n+2))`
-/

namespace A172548.P7501848369087675108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000680 (A205577 (n + 2)).toNat) (A205577 (n + 2))

end

end A172548.P7501848369087675108

/-!
# A172549: Number of 2*n X n 0..1 arrays with row sums 4 and column sums 8.

The programs for A172549, there is no canonical definition to state claims against.
-/

/-! ## A172549.P12562140103376046479

`A059117(5^round(n²/5))`
-/

namespace A172549.P12562140103376046479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059117 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 5) : ℤ))).toNat

end

end A172549.P12562140103376046479

/-!
# A172550: Number of 2*n X n 0..1 arrays with row sums 9 and column sums 18.

The programs for A172550, there is no canonical definition to state claims against.
-/

/-! ## A172550.P7866019708076427448

`A009775(A034504(3*(n+1)))`
-/

namespace A172550.P7866019708076427448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009775 (A034504 (3 * (n + 1))).toNat

end

end A172550.P7866019708076427448

/-! ## A172550.P2144781277980978832

`lcm(A132467(A284553(n)), A259194(n))`
-/

namespace A172550.P2144781277980978832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132467 (A284553 n).toNat) (A259194 n)

end

end A172550.P2144781277980978832

/-! ## A172550.P4735824788353077289

`A009775(floor(A005773(3*n)/A339886(3*(n+1))^3))`
-/

namespace A172550.P4735824788353077289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009775 ⌊(A005773 (3 * n) : ℚ) / (A339886 (3 * (n + 1)) ^ 3 : ℚ)⌋.toNat

end

end A172550.P4735824788353077289

/-!
# A172551: Number of 2*n X n 0..1 arrays with row sums 8 and column sums 16.

The programs for A172551, there is no canonical definition to state claims against.
-/

/-! ## A172551.P9325448831351175053

`lcm(A000680(A035039(n)), A035039(n))`
-/

namespace A172551.P9325448831351175053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000680 (A035039 n).toNat) (A035039 n)

end

end A172551.P9325448831351175053

/-!
# A172552: Number of 2*n X n 0..1 arrays with row sums 6 and column sums 12.

The programs for A172552, there is no canonical definition to state claims against.
-/

/-! ## A172552.P15029714147672296747

`A009775(C(A013947(n+1), 13))`
-/

namespace A172552.P15029714147672296747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009775 (Nat.choose (A013947 (n + 1)).toNat 13)

end

end A172552.P15029714147672296747

/-! ## A172552.P14234939302509302592

`A007415(C(A007370(n+2), 13))`
-/

namespace A172552.P14234939302509302592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007415 (Nat.choose (A007370 (n + 2)).toNat 13)

end

end A172552.P14234939302509302592

/-! ## A172552.P8096010057568439713

`A007415(C(A007092(n+4), 13))`
-/

namespace A172552.P8096010057568439713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007415 (Nat.choose (A007092 (n + 4)).toNat 13)

end

end A172552.P8096010057568439713

/-!
# A172555: Number of 2*n X 8 binary arrays with row sums 4 and column sums n.

The programs for A172555, there is no canonical definition to state claims against.
-/

/-! ## A172555.P814262594931866343

`A376935(eq[4, A025581(n)])`
-/

namespace A172555.P814262594931866343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172555.P814262594931866343

/-! ## A172555.P14297448595240357791

`A376935(A000217(n+4)+4)`
-/

namespace A172555.P14297448595240357791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376935 (A000217 (n + 4) + 4).toNat

end

end A172555.P14297448595240357791

/-!
# A172556: Number of 2*n X 6 binary arrays with row sums 3 and column sums n.

The programs for A172556, there is no canonical definition to state claims against.
-/

/-! ## A172556.P5338922868243438376

`A376935(A167614(n+2))`
-/

namespace A172556.P5338922868243438376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376935 (A167614 (n + 2)).toNat

end

end A172556.P5338922868243438376

/-! ## A172556.P16699891526787273941

`A376935(eq[3, A025581(n)])`
-/

namespace A172556.P16699891526787273941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172556.P16699891526787273941

/-! ## A172556.P17312138797179788961

`A376935(A000217(n+3)+3)`
-/

namespace A172556.P17312138797179788961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376935 (A000217 (n + 3) + 3).toNat

end

end A172556.P17312138797179788961

/-!
# A172557: Number of 2*n X 10 binary arrays with row sums 5 and column sums n.

The programs for A172557, there is no canonical definition to state claims against.
-/

/-! ## A172557.P3469088227177527869

`A376935(A167499(n+4))`
-/

namespace A172557.P3469088227177527869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376935 (A167499 (n + 4)).toNat

end

end A172557.P3469088227177527869

/-!
# A172561: Number of 3*n X n 0..1 arrays with row sums 5 and column sums 15.

The programs for A172561, there is no canonical definition to state claims against.
-/

/-! ## A172561.P257430958437204082

`A177635(a(n-2)-2*xor(1, -a(n-1))+2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A172561.P257430958437204082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  A177635 (a (n - 2) - 2 * Int.xor 1 (-a (n - 1)) + 2).toNat

end

end A172561.P257430958437204082

/-! ## A172561.P17727529054370459726

`A278073(A151954(n))`
-/

namespace A172561.P17727529054370459726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (A151954 n).toNat

end

end A172561.P17727529054370459726

/-!
# A172566: Number of 3*n X n 0..1 arrays with row sums 6 and column sums 18.

The programs for A172566, there is no canonical definition to state claims against.
-/

/-! ## A172566.P15147748936207704701

`A278073(A325136(n))`
-/

namespace A172566.P15147748936207704701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (A325136 n).toNat

end

end A172566.P15147748936207704701

/-! ## A172566.P3819907330709423291

`A278073(A133709(n+1))`
-/

namespace A172566.P3819907330709423291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (A133709 (n + 1)).toNat

end

end A172566.P3819907330709423291

/-! ## A172566.P16785554365553402087

`A278073(A143963(n+1))`
-/

namespace A172566.P16785554365553402087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (A143963 (n + 1)).toNat

end

end A172566.P16785554365553402087

/-!
# A172567: Number of 3*n X n 0..1 arrays with row sums 4 and column sums 12.

The programs for A172567, there is no canonical definition to state claims against.
-/

/-! ## A172567.P2575419191187569028

`A278073(2^n+n)`
-/

namespace A172567.P2575419191187569028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (2 ^ n + n)

end

end A172567.P2575419191187569028

/-!
# A172576: Number of 4*n X n 0..1 arrays with row sums 5 and column sums 20.

The programs for A172576, there is no canonical definition to state claims against.
-/

/-! ## A172576.P17832620276796695612

`A278074(∑[A165628(n)²])`
-/

namespace A172576.P17832620276796695612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165628 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172576.P17832620276796695612

/-! ## A172576.P17120874818030757800

`∑[A248772(A248777(2^n))-1]`
-/

namespace A172576.P17120874818030757800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248772 (A248777 (2 ^ n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172576.P17120874818030757800

/-!
# A172578: Number of 4*n X n 0..1 arrays with row sums 4 and column sums 16.

The programs for A172578, there is no canonical definition to state claims against.
-/

/-! ## A172578.P10235146912002957358

`A014608(2*a(n-1)+2*a(n-2)+3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A172578.P10235146912002957358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A014608 (2 * a (n - 1) + 2 * a (n - 2) + 3).toNat

end

end A172578.P10235146912002957358

/-!
# A172585: Number of 5*n X n 0..1 arrays with row sums 4 and column sums 20.

The programs for A172585, there is no canonical definition to state claims against.
-/

/-! ## A172585.P3438185589628183119

`A008978(5*A248103(a(n-1)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A172585.P3438185589628183119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A008978 (5 * A248103 (a (n - 1)).toNat).toNat

end

end A172585.P3438185589628183119

