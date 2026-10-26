import SequenceMachineLib.Basic
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C004
import Seq.B001.C006
import Seq.B002.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C012

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A011117: Triangle of numbers S(x,y) = number of lattice paths from (0,0) to (x,y) that use step set { (0,1), (1,0), (2,0), (3,0), ....} and never pass below y = x.

The programs for A011117, the canonical program `A011117.P17481865900931100884` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011117 has offset 0).

The definition of A011117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011117.P17481865900931100884

`2*T(n,k-1)+T(n-1,k)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011117

/-- `2*T(n,k-1)+T(n-1,k)-T(n-1,k-1)` -/
def P17481865900931100884.Spec : Prop :=
  ∀ n, P17481865900931100884.a n = A011117 n

theorem P17481865900931100884.correct : P17481865900931100884.Spec := by
  intro n
  simp only [A011117]

end A011117

/-! ## A011117.P14271081491758160494

`A104219(∑[char[∑[n]]]²-(n+1))`
-/

namespace A011117.P14271081491758160494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A011117.P14271081491758160494

namespace A011117

/-- `A104219(∑[char[∑[n]]]²-(n+1))` -/
def P14271081491758160494.Spec : Prop :=
  ∀ n, P14271081491758160494.a n = A011117 n

end A011117

/-! ## A011117.P1380574657766946718

`xor(1, xor(1, A104219(A061579(n))))`
-/

namespace A011117.P1380574657766946718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A104219 (A061579 n).toNat))

end

end A011117.P1380574657766946718

namespace A011117

/-- `xor(1, xor(1, A104219(A061579(n))))` -/
def P1380574657766946718.Spec : Prop :=
  ∀ n, P1380574657766946718.a n = A011117 n

end A011117

/-! ## A011117.P7763974313123757303

`or(A000007(n), A104219(A061579(n)))`
-/

namespace A011117.P7763974313123757303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A104219 (A061579 n).toNat)

end

end A011117.P7763974313123757303

namespace A011117

/-- `or(A000007(n), A104219(A061579(n)))` -/
def P7763974313123757303.Spec : Prop :=
  ∀ n, P7763974313123757303.a n = A011117 n

end A011117

/-! ## A011117.P10561840931579961650

`A104219(A061579(n))+A000007(n+1)`
-/

namespace A011117.P10561840931579961650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A061579 n).toNat + A000007 (n + 1)

end

end A011117.P10561840931579961650

namespace A011117

/-- `A104219(A061579(n))+A000007(n+1)` -/
def P10561840931579961650.Spec : Prop :=
  ∀ n, P10561840931579961650.a n = A011117 n

end A011117

/-! ## A011117.P15016310661126930635

`A104219(A061579(n))+A001222(gcd(n, n+1))`
-/

namespace A011117.P15016310661126930635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A061579 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A011117.P15016310661126930635

namespace A011117

/-- `A104219(A061579(n))+A001222(gcd(n, n+1))` -/
def P15016310661126930635.Spec : Prop :=
  ∀ n, P15016310661126930635.a n = A011117 n

end A011117

/-! ## A011117.P6359581379582880735

`A008966(p?[2*n+1])*A104219(A061579(n))`
-/

namespace A011117.P6359581379582880735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) * A104219 (A061579 n).toNat

end

end A011117.P6359581379582880735

namespace A011117

/-- `A008966(p?[2*n+1])*A104219(A061579(n))` -/
def P6359581379582880735.Spec : Prop :=
  ∀ n, P6359581379582880735.a n = A011117 n

end A011117

/-! ## A011117.P11527023340906312105

`A104219(A061579(n))+A005872(A005872(n))`
-/

namespace A011117.P11527023340906312105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A061579 n).toNat + A005872 (A005872 n).toNat

end

end A011117.P11527023340906312105

namespace A011117

/-- `A104219(A061579(n))+A005872(A005872(n))` -/
def P11527023340906312105.Spec : Prop :=
  ∀ n, P11527023340906312105.a n = A011117 n

end A011117

/-! ## A011117.P9013331933519888869

`A104219(A061579(n))%A000051(n)`
-/

namespace A011117.P9013331933519888869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104219 (A061579 n).toNat) (A000051 n)

end

end A011117.P9013331933519888869

namespace A011117

/-- `A104219(A061579(n))%A000051(n)` -/
def P9013331933519888869.Spec : Prop :=
  ∀ n, P9013331933519888869.a n = A011117 n

end A011117

/-!
# A011185: A B_2 sequence: a(n) = least value such that sequence increases and pairwise sums of distinct elements are all distinct.

The programs for A011185, there is no canonical definition to state claims against.
-/

/-! ## A011185.P206575548360560039

`A010672(n)+1`
-/

namespace A011185.P206575548360560039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010672 n + 1

end

end A011185.P206575548360560039

/-! ## A011185.P11715240559772419096

`n-(A023443(n)-A010672(n))`
-/

namespace A011185.P11715240559772419096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A010672 n)

end

end A011185.P11715240559772419096

/-! ## A011185.P7352269180219369183

`A005408(n)-(2*n-A010672(n))`
-/

namespace A011185.P7352269180219369183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A010672 n)

end

end A011185.P7352269180219369183

/-! ## A011185.P8053612362426321202

`abs(A008683(A007918(n))-A010672(n))`
-/

namespace A011185.P8053612362426321202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A007918 n).toNat - A010672 n|

end

end A011185.P8053612362426321202

/-! ## A011185.P5120901449800422089

`A010697(n)-(A010687(n)-A010672(n))`
-/

namespace A011185.P5120901449800422089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010697 n - (A010687 n - A010672 n)

end

end A011185.P5120901449800422089

/-! ## A011185.P6888245885051700434

`A209387(n)-(A209386(n)-A010672(n))`
-/

namespace A011185.P6888245885051700434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209387 n - (A209386 n - A010672 n)

end

end A011185.P6888245885051700434

/-! ## A011185.P7194291324464526801

`A005282(n+1)-A133097(n+1)`
-/

namespace A011185.P7194291324464526801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) - A133097 (n + 1)

end

end A011185.P7194291324464526801

/-! ## A011185.P5779934525586099217

`A025582(n+1)+1-A133097(n+1)`
-/

namespace A011185.P5779934525586099217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) + (1 - A133097 (n + 1))

end

end A011185.P5779934525586099217

/-! ## A011185.P14877262735115540308

`A080432(n+1)/2`
-/

namespace A011185.P14877262735115540308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080432 (n + 1) : ℚ) / 2

end

end A011185.P14877262735115540308

/-! ## A011185.P6505284666716296146

`ceil(A080430(n+1)/2)`
-/

namespace A011185.P6505284666716296146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080430 (n + 1) : ℚ) / 2⌉

end

end A011185.P6505284666716296146

/-! ## A011185.P2536720828857881854

`∑[A101274(A028310(n))]-A133097(n+1)`
-/

namespace A011185.P2536720828857881854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133097 (n + 1)

end

end A011185.P2536720828857881854

/-!
# A011195: a(n) = n*(n+1)*(2*n+1)*(3*n+1)/6.

The programs for A011195, the canonical program `A011195.P7777600683628308277` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011195 has offset 0).

The definition of A011195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(2*n+1)*(3*n+1)/6` (program `A011195.P15706556099333109268`, by `A011195.P15706556099333109268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011195.P15706556099333109268

`n*(n+1)*(2*n+1)*(3*n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A011195.P15706556099333109268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n + 1) * (3 * n + 1) : ℚ) / 6

end

end A011195.P15706556099333109268

namespace A011195

/-- `n*(n+1)*(2*n+1)*(3*n+1)/6` -/
def P15706556099333109268.Spec : Prop :=
  ∀ n, P15706556099333109268.a n = (A011195 n : ℚ)

theorem P15706556099333109268.correct : P15706556099333109268.Spec := by
  intro n
  simp only [A011195, Nat.add_sub_cancel, A011195.P15706556099333109268.a, A011195.P7777600683628308277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011195

/-! ## A011195.P16143690031134860026

`∑[2*n]²-∑[C(n, 2)]`
-/

namespace A011195.P16143690031134860026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A011195.P16143690031134860026

namespace A011195

/-- `∑[2*n]²-∑[C(n, 2)]` -/
def P16143690031134860026.Spec : Prop :=
  ∀ n, P16143690031134860026.a n = A011195 n

end A011195

/-! ## A011195.P7777600683628308277

`(n²+n)²-C(n+1, 3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011195

/-- `(n²+n)²-C(n+1, 3)` -/
def P7777600683628308277.Spec : Prop :=
  ∀ n, P7777600683628308277.a n = A011195 n

theorem P7777600683628308277.correct : P7777600683628308277.Spec := by
  intro n
  simp only [A011195]

end A011195

/-! ## A011195.P450758407772031283

`A215646(n)+n²²`
-/

namespace A011195.P450758407772031283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215646 n + ((n ^ 2) ^ 2 : ℤ)

end

end A011195.P450758407772031283

namespace A011195

/-- `A215646(n)+n²²` -/
def P450758407772031283.Spec : Prop :=
  ∀ n, P450758407772031283.a n = A011195 n

theorem P450758407772031283.correct : P450758407772031283.Spec := by
  intro n
  simp only [A011195, Nat.add_sub_cancel, A011195.P450758407772031283.a, A011195.P7777600683628308277.a, A215646, A215646.P9053808352572474404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011195

/-! ## A011195.P18260913054798964588

`∑[n²]*A016777(n)`
-/

namespace A011195.P18260913054798964588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A016777 n

end

end A011195.P18260913054798964588

namespace A011195

/-- `∑[n²]*A016777(n)` -/
def P18260913054798964588.Spec : Prop :=
  ∀ n, P18260913054798964588.a n = A011195 n

end A011195

/-! ## A011195.P9549433771365500346

`A219086(n)-∑[∑[n]]`
-/

namespace A011195.P9549433771365500346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A011195.P9549433771365500346

namespace A011195

/-- `A219086(n)-∑[∑[n]]` -/
def P9549433771365500346.Spec : Prop :=
  ∀ n, P9549433771365500346.a n = A011195 n

end A011195

/-! ## A011195.P10314163672274771313

`∑[A317297(n+1)-∑[n]]`
-/

namespace A011195.P10314163672274771313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317297 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011195.P10314163672274771313

namespace A011195

/-- `∑[A317297(n+1)-∑[n]]` -/
def P10314163672274771313.Spec : Prop :=
  ∀ n, P10314163672274771313.a n = A011195 n

end A011195

/-! ## A011195.P7519456303216010127

`(n+1)²²-A100183(n+1)`
-/

namespace A011195.P7519456303216010127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A100183 (n + 1)

end

end A011195.P7519456303216010127

namespace A011195

/-- `(n+1)²²-A100183(n+1)` -/
def P7519456303216010127.Spec : Prop :=
  ∀ n, P7519456303216010127.a n = A011195 n

end A011195

/-! ## A011195.P3778580061931144615

`A100019(n)+A004068(n)`
-/

namespace A011195.P3778580061931144615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n + A004068 n

end

end A011195.P3778580061931144615

namespace A011195

/-- `A100019(n)+A004068(n)` -/
def P3778580061931144615.Spec : Prop :=
  ∀ n, P3778580061931144615.a n = A011195 n

end A011195

/-! ## A011195.P15324547833826246072

`A072025(n)-A143058(n)`
-/

namespace A011195.P15324547833826246072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072025 n - A143058 n

end

end A011195.P15324547833826246072

namespace A011195

/-- `A072025(n)-A143058(n)` -/
def P15324547833826246072.Spec : Prop :=
  ∀ n, P15324547833826246072.a n = A011195 n

theorem P15324547833826246072.correct : P15324547833826246072.Spec := by
  intro n
  simp only [A011195, Nat.add_sub_cancel, A011195.P15324547833826246072.a, A011195.P7777600683628308277.a, A072025, A072025.P5013716484922619372.a, A143058, A143058.P7543764193946913404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011195

/-! ## A011195.P15243569632988419503

`A085540(n)-A304993(n)`
-/

namespace A011195.P15243569632988419503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n - A304993 n

end

end A011195.P15243569632988419503

namespace A011195

/-- `A085540(n)-A304993(n)` -/
def P15243569632988419503.Spec : Prop :=
  ∀ n, P15243569632988419503.a n = A011195 n

end A011195

/-! ## A011195.P11988745513045908912

`A257602(n)-A145126(n)`
-/

namespace A011195.P11988745513045908912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257602 n - A145126 n

end

end A011195.P11988745513045908912

namespace A011195

/-- `A257602(n)-A145126(n)` -/
def P11988745513045908912.Spec : Prop :=
  ∀ n, P11988745513045908912.a n = A011195 n

end A011195

/-! ## A011195.P7151075664743511406

`A304993(n)+A035291(n+1)`
-/

namespace A011195.P7151075664743511406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + A035291 (n + 1)

end

end A011195.P7151075664743511406

namespace A011195

/-- `A304993(n)+A035291(n+1)` -/
def P7151075664743511406.Spec : Prop :=
  ∀ n, P7151075664743511406.a n = A011195 n

end A011195

/-! ## A011195.P5587435912074126741

`A213827(n)+A153978(n+1)`
-/

namespace A011195.P5587435912074126741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213827 n + A153978 (n + 1)

end

end A011195.P5587435912074126741

namespace A011195

/-- `A213827(n)+A153978(n+1)` -/
def P5587435912074126741.Spec : Prop :=
  ∀ n, P5587435912074126741.a n = A011195 n

end A011195

/-! ## A011195.P1305805863072898691

`A035288(n+1)-A162148(n)`
-/

namespace A011195.P1305805863072898691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035288 (n + 1) - A162148 n

end

end A011195.P1305805863072898691

namespace A011195

/-- `A035288(n+1)-A162148(n)` -/
def P1305805863072898691.Spec : Prop :=
  ∀ n, P1305805863072898691.a n = A011195 n

end A011195

/-! ## A011195.P5466773047195407820

`A292057(n+1)-A006002(n)`
-/

namespace A011195.P5466773047195407820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292057 (n + 1) - A006002 n

end

end A011195.P5466773047195407820

namespace A011195

/-- `A292057(n+1)-A006002(n)` -/
def P5466773047195407820.Spec : Prop :=
  ∀ n, P5466773047195407820.a n = A011195 n

end A011195

/-! ## A011195.P12168146221151874028

`A165563(n)-A180415(n+1)`
-/

namespace A011195.P12168146221151874028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165563 n - A180415 (n + 1)

end

end A011195.P12168146221151874028

namespace A011195

/-- `A165563(n)-A180415(n+1)` -/
def P12168146221151874028.Spec : Prop :=
  ∀ n, P12168146221151874028.a n = A011195 n

theorem P12168146221151874028.correct : P12168146221151874028.Spec := by
  intro n
  simp only [A011195, Nat.add_sub_cancel, A011195.P12168146221151874028.a, A011195.P7777600683628308277.a, A165563, A165563.P4429587067576573213.a, A180415, A180415.P16486081952933200476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011195

/-! ## A011195.P4289687778870730936

`A000330(n)+n*A059270(n)`
-/

namespace A011195.P4289687778870730936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (n : ℤ) * A059270 n

end

end A011195.P4289687778870730936

namespace A011195

/-- `A000330(n)+n*A059270(n)` -/
def P4289687778870730936.Spec : Prop :=
  ∀ n, P4289687778870730936.a n = A011195 n

end A011195

/-! ## A011195.P18172281826420948640

`A092364(n+1)+A036464(n+1)`
-/

namespace A011195.P18172281826420948640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092364 (n + 1) + A036464 (n + 1)

end

end A011195.P18172281826420948640

namespace A011195

/-- `A092364(n+1)+A036464(n+1)` -/
def P18172281826420948640.Spec : Prop :=
  ∀ n, P18172281826420948640.a n = A011195 n

theorem P18172281826420948640.correct : P18172281826420948640.Spec := by
  intro n
  simp only [A011195, Nat.add_sub_cancel, A011195.P18172281826420948640.a, A011195.P7777600683628308277.a, A036464, A036464.P6645508525514235542.a, A092364, A092364.P13609031644531025109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011195

/-! ## A011195.P5002371359363200640

`A000330(n)+A000330(n)*A008585(n)`
-/

namespace A011195.P5002371359363200640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + A000330 n * A008585 n

end

end A011195.P5002371359363200640

namespace A011195

/-- `A000330(n)+A000330(n)*A008585(n)` -/
def P5002371359363200640.Spec : Prop :=
  ∀ n, P5002371359363200640.a n = A011195 n

end A011195

/-!
# A011197: a(n) = n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6.

The programs for A011197, the canonical program `A011197.P11900470464003721154` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011197 has offset 0).

The definition of A011197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6` (program `A011197.P18107115798433356274`, by `A011197.P18107115798433356274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011197.P18107115798433356274

`n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A011197.P18107115798433356274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n + 1) * (3 * n + 1) * (4 * n + 1) : ℚ) / 6

end

end A011197.P18107115798433356274

namespace A011197

/-- `n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6` -/
def P18107115798433356274.Spec : Prop :=
  ∀ n, P18107115798433356274.a n = (A011197 n : ℚ)

theorem P18107115798433356274.correct : P18107115798433356274.Spec := by
  intro n
  simp only [A011197, Nat.add_sub_cancel, A011197.P18107115798433356274.a, A011197.P11900470464003721154.a, A011195, A011195.P7777600683628308277.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011197

/-! ## A011197.P11272926387594305318

`5*A094323(n)`
-/

namespace A011197.P11272926387594305318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A094323 n

end

end A011197.P11272926387594305318

namespace A011197

/-- `5*A094323(n)` -/
def P11272926387594305318.Spec : Prop :=
  ∀ n, P11272926387594305318.a n = A011197 n

end A011197

/-! ## A011197.P3487572016524500828

`∑[n²]*A033577(n)`
-/

namespace A011197.P3487572016524500828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A033577 n

end

end A011197.P3487572016524500828

namespace A011197

/-- `∑[n²]*A033577(n)` -/
def P3487572016524500828.Spec : Prop :=
  ∀ n, P3487572016524500828.a n = A011197 n

end A011197

/-! ## A011197.P11900470464003721154

`A011195(n)*A016813(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011197

/-- `A011195(n)*A016813(n)` -/
def P11900470464003721154.Spec : Prop :=
  ∀ n, P11900470464003721154.a n = A011197 n

theorem P11900470464003721154.correct : P11900470464003721154.Spec := by
  intro n
  simp only [A011197]

end A011197

/-! ## A011197.P11363780134165517572

`A011195(n)+A008574(n)*A011195(n)`
-/

namespace A011197.P11363780134165517572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011195 n + A008574 n * A011195 n

end

end A011197.P11363780134165517572

namespace A011197

/-- `A011195(n)+A008574(n)*A011195(n)` -/
def P11363780134165517572.Spec : Prop :=
  ∀ n, P11363780134165517572.a n = A011197 n

end A011197

/-! ## A011197.P8103420270474526587

`A000330(n)*A164576(2*n+1)`
-/

namespace A011197.P8103420270474526587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n * A164576 (2 * n + 1)

end

end A011197.P8103420270474526587

namespace A011197

/-- `A000330(n)*A164576(2*n+1)` -/
def P8103420270474526587.Spec : Prop :=
  ∀ n, P8103420270474526587.a n = A011197 n

end A011197

/-!
# A011199: a(n) = (n+1)*(2*n+1)*(3*n+1).

The programs for A011199, the canonical program `A011199.P5039899721906082050` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011199 has offset 0).

The definition of A011199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2*n+1)*(3*n+1)` (program `A011199.P5039899721906082050`, by `A011199.P5039899721906082050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011199.P5039899721906082050

`(n+1)*(2*n+1)*(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011199

/-- `(n+1)*(2*n+1)*(3*n+1)` -/
def P5039899721906082050.Spec : Prop :=
  ∀ n, (P5039899721906082050.a n : ℤ) = A011199 n

theorem P5039899721906082050.correct : P5039899721906082050.Spec := by
  intro n
  simp only [A011199]

end A011199

/-! ## A011199.P14652254988349249557

`lcm(∑[6*n+1], Δ[n²])`
-/

namespace A011199.P14652254988349249557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A011199.P14652254988349249557

namespace A011199

/-- `lcm(∑[6*n+1], Δ[n²])` -/
def P14652254988349249557.Spec : Prop :=
  ∀ n, (P14652254988349249557.a n : ℤ) = A011199 n

end A011199

/-! ## A011199.P14097504807144907941

`-((∑[12*n-1]+2)*xor(n, -1))`
-/

namespace A011199.P14097504807144907941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j + 2) * Int.xor (n : ℤ) (-1))

end

end A011199.P14097504807144907941

namespace A011199

/-- `-((∑[12*n-1]+2)*xor(n, -1))` -/
def P14097504807144907941.Spec : Prop :=
  ∀ n, P14097504807144907941.a n = A011199 n

end A011199

/-! ## A011199.P10466556134002062764

`A062938(n)-n²²`
-/

namespace A011199.P10466556134002062764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062938 n - ((n ^ 2) ^ 2 : ℤ)

end

end A011199.P10466556134002062764

namespace A011199

/-- `A062938(n)-n²²` -/
def P10466556134002062764.Spec : Prop :=
  ∀ n, P10466556134002062764.a n = A011199 n

theorem P10466556134002062764.correct : P10466556134002062764.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P10466556134002062764.a, A011199.P5039899721906082050.a, A062938, A062938.P5210963884579662397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

/-! ## A011199.P12247605598084768762

`∑[2*A147296(n)+1]`
-/

namespace A011199.P12247605598084768762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147296 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011199.P12247605598084768762

namespace A011199

/-- `∑[2*A147296(n)+1]` -/
def P12247605598084768762.Spec : Prop :=
  ∀ n, P12247605598084768762.a n = A011199 n

end A011199

/-! ## A011199.P5825902438997305066

`∑[A144314(n)+1+n]`
-/

namespace A011199.P5825902438997305066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011199.P5825902438997305066

namespace A011199

/-- `∑[A144314(n)+1+n]` -/
def P5825902438997305066.Spec : Prop :=
  ∀ n, P5825902438997305066.a n = A011199 n

end A011199

/-! ## A011199.P16499463402030178337

`A214092(n+1)+∑[n]`
-/

namespace A011199.P16499463402030178337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214092 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A011199.P16499463402030178337

namespace A011199

/-- `A214092(n+1)+∑[n]` -/
def P16499463402030178337.Spec : Prop :=
  ∀ n, P16499463402030178337.a n = A011199 n

end A011199

/-! ## A011199.P17653592153883351650

`∑[A081272(n)-2*n]`
-/

namespace A011199.P17653592153883351650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011199.P17653592153883351650

namespace A011199

/-- `∑[A081272(n)-2*n]` -/
def P17653592153883351650.Spec : Prop :=
  ∀ n, P17653592153883351650.a n = A011199 n

end A011199

/-! ## A011199.P9701202222921402498

`A213829(n+1)-(n+1)²`
-/

namespace A011199.P9701202222921402498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213829 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A011199.P9701202222921402498

namespace A011199

/-- `A213829(n+1)-(n+1)²` -/
def P9701202222921402498.Spec : Prop :=
  ∀ n, P9701202222921402498.a n = A011199 n

end A011199

/-! ## A011199.P4001140368248103975

`(A128822(n+1)+n²)/2`
-/

namespace A011199.P4001140368248103975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128822 (n + 1) + (n ^ 2 : ℤ) : ℚ) / 2

end

end A011199.P4001140368248103975

namespace A011199

/-- `(A128822(n+1)+n²)/2` -/
def P4001140368248103975.Spec : Prop :=
  ∀ n, P4001140368248103975.a n = (A011199 n : ℚ)

theorem P4001140368248103975.correct : P4001140368248103975.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P4001140368248103975.a, A011199.P5039899721906082050.a, A128822, A128822.P15181935527699638025.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

/-! ## A011199.P14690330945589226582

`∑[A298037(2*n)-2*n]`
-/

namespace A011199.P14690330945589226582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011199.P14690330945589226582

namespace A011199

/-- `∑[A298037(2*n)-2*n]` -/
def P14690330945589226582.Spec : Prop :=
  ∀ n, P14690330945589226582.a n = A011199 n

end A011199

/-! ## A011199.P2416717350184122155

`A139757(n)+A055112(n)`
-/

namespace A011199.P2416717350184122155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + A055112 n

end

end A011199.P2416717350184122155

namespace A011199

/-- `A139757(n)+A055112(n)` -/
def P2416717350184122155.Spec : Prop :=
  ∀ n, P2416717350184122155.a n = A011199 n

theorem P2416717350184122155.correct : P2416717350184122155.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P2416717350184122155.a, A011199.P5039899721906082050.a, A055112, A055112.P15553195109781773626.a, A139757, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

/-! ## A011199.P14962260603217980624

`A005904(n)-A084367(n)`
-/

namespace A011199.P14962260603217980624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - A084367 n

end

end A011199.P14962260603217980624

namespace A011199

/-- `A005904(n)-A084367(n)` -/
def P14962260603217980624.Spec : Prop :=
  ∀ n, P14962260603217980624.a n = A011199 n

theorem P14962260603217980624.correct : P14962260603217980624.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P14962260603217980624.a, A011199.P5039899721906082050.a, A005904, A005904.P6150330656000877991.a, A084367, A084367.P17760541641912809913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

/-! ## A011199.P5045318957473085017

`A016755(n)-A099721(n)`
-/

namespace A011199.P5045318957473085017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A099721 n

end

end A011199.P5045318957473085017

namespace A011199

/-- `A016755(n)-A099721(n)` -/
def P5045318957473085017.Spec : Prop :=
  ∀ n, P5045318957473085017.a n = A011199 n

theorem P5045318957473085017.correct : P5045318957473085017.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P5045318957473085017.a, A011199.P5039899721906082050.a, A016755, A016755.P5941101717872313811.a, A099721, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

/-! ## A011199.P6442448114742332177

`A079588(n)-A055112(n)`
-/

namespace A011199.P6442448114742332177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n - A055112 n

end

end A011199.P6442448114742332177

namespace A011199

/-- `A079588(n)-A055112(n)` -/
def P6442448114742332177.Spec : Prop :=
  ∀ n, P6442448114742332177.a n = A011199 n

end A011199

/-! ## A011199.P3507826562839877191

`A011245(n)/A016813(n)`
-/

namespace A011199.P3507826562839877191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011245 n : ℚ) / (A016813 n : ℚ)

end

end A011199.P3507826562839877191

namespace A011199

/-- `A011245(n)/A016813(n)` -/
def P3507826562839877191.Spec : Prop :=
  ∀ n, P3507826562839877191.a n = (A011199 n : ℚ)

end A011199

/-! ## A011199.P8736238236935903689

`A100176(n+1)+A027903(n)`
-/

namespace A011199.P8736238236935903689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100176 (n + 1) + A027903 n

end

end A011199.P8736238236935903689

namespace A011199

/-- `A100176(n+1)+A027903(n)` -/
def P8736238236935903689.Spec : Prop :=
  ∀ n, P8736238236935903689.a n = A011199 n

theorem P8736238236935903689.correct : P8736238236935903689.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P8736238236935903689.a, A011199.P5039899721906082050.a, A027903, A027903.P4209147286881915011.a, A100176, A100176.P16581623128881660207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

/-! ## A011199.P3194186840056824298

`A193218(n+1)+A014105(n)`
-/

namespace A011199.P3194186840056824298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193218 (n + 1) + A014105 n

end

end A011199.P3194186840056824298

namespace A011199

/-- `A193218(n+1)+A014105(n)` -/
def P3194186840056824298.Spec : Prop :=
  ∀ n, P3194186840056824298.a n = A011199 n

theorem P3194186840056824298.correct : P3194186840056824298.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P3194186840056824298.a, A011199.P5039899721906082050.a, A014105, A014105.P182524374866796289.a, A193218, A193218.P10662141217646071315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

/-! ## A011199.P10568417738173602425

`A163815(n)+A050492(n+1)`
-/

namespace A011199.P10568417738173602425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n + A050492 (n + 1)

end

end A011199.P10568417738173602425

namespace A011199

/-- `A163815(n)+A050492(n+1)` -/
def P10568417738173602425.Spec : Prop :=
  ∀ n, P10568417738173602425.a n = A011199 n

theorem P10568417738173602425.correct : P10568417738173602425.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P10568417738173602425.a, A011199.P5039899721906082050.a, A050492, A050492.P6544951122689102902.a, A163815, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

/-! ## A011199.P17674228844535027906

`A169711(n+1)+A046092(n)`
-/

namespace A011199.P17674228844535027906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1) + A046092 n

end

end A011199.P17674228844535027906

namespace A011199

/-- `A169711(n+1)+A046092(n)` -/
def P17674228844535027906.Spec : Prop :=
  ∀ n, P17674228844535027906.a n = A011199 n

theorem P17674228844535027906.correct : P17674228844535027906.Spec := by
  intro n
  simp only [A011199, Nat.add_sub_cancel, A011199.P17674228844535027906.a, A011199.P5039899721906082050.a, A046092, A046092.P16411658895297056450.a, A169711, A169711.P3852952923090487921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011199

