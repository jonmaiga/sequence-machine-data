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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
# A215000: a(n) = floor(exp(1 + 1/2 + 1/3 + ... + 1/n)).

The programs for A215000, the canonical program `A215000.P7439510561353719127` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215000 has offset 1).

The definition of A215000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215000.P7439510561353719127

`floor(∏[root(e, n+1)])`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215000

/-- `floor(∏[root(e, n+1)])` -/
def P7439510561353719127.Spec : Prop :=
  ∀ n, P7439510561353719127.a n = A215000 (n + 1)

theorem P7439510561353719127.correct : P7439510561353719127.Spec := by
  intro n
  simp only [A215000, Nat.add_sub_cancel]

end A215000

/-! ## A215000.P1175807165739215035

`A215001(n+1)-1`
-/

namespace A215000.P1175807165739215035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215001 (n + 1) - 1

end

end A215000.P1175807165739215035

namespace A215000

/-- `A215001(n+1)-1` -/
def P1175807165739215035.Spec : Prop :=
  ∀ n, P1175807165739215035.a n = A215000 (n + 1)

theorem P1175807165739215035.correct : P1175807165739215035.Spec := by
  intro n
  simp only [A215000, Nat.add_sub_cancel, A215000.P1175807165739215035.a, A215000.P7439510561353719127.f1, A215000.P7439510561353719127.a, A215001, A215001.P14554116704608614748.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215000

/-! ## A215000.P389223042743135048

`A023443(A215001(n+1))`
-/

namespace A215000.P389223042743135048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A215001 (n + 1)).toNat

end

end A215000.P389223042743135048

namespace A215000

/-- `A023443(A215001(n+1))` -/
def P389223042743135048.Spec : Prop :=
  ∀ n, P389223042743135048.a n = A215000 (n + 1)

end A215000

/-! ## A215000.P7562276780035942567

`A059169(2*2*A215001(n+1))`
-/

namespace A215000.P7562276780035942567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (2 * (2 * A215001 (n + 1))).toNat

end

end A215000.P7562276780035942567

namespace A215000

/-- `A059169(2*2*A215001(n+1))` -/
def P7562276780035942567.Spec : Prop :=
  ∀ n, P7562276780035942567.a n = A215000 (n + 1)

end A215000

/-! ## A215000.P7980047609186991837

`A226894(n+1)-(n+1)`
-/

namespace A215000.P7980047609186991837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226894 (n + 1) - (n + 1 : ℤ)

end

end A215000.P7980047609186991837

namespace A215000

/-- `A226894(n+1)-(n+1)` -/
def P7980047609186991837.Spec : Prop :=
  ∀ n, P7980047609186991837.a n = A215000 (n + 1)

end A215000

/-! ## A215000.P11648572747749045964

`A023443(A226894(n+1)-n)`
-/

namespace A215000.P11648572747749045964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226894 (n + 1) - (n : ℤ)).toNat

end

end A215000.P11648572747749045964

namespace A215000

/-- `A023443(A226894(n+1)-n)` -/
def P11648572747749045964.Spec : Prop :=
  ∀ n, P11648572747749045964.a n = A215000 (n + 1)

end A215000

/-! ## A215000.P14450022294086583080

`∑[A226895(A138153(n+1))-1]`
-/

namespace A215000.P14450022294086583080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A138153 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215000.P14450022294086583080

namespace A215000

/-- `∑[A226895(A138153(n+1))-1]` -/
def P14450022294086583080.Spec : Prop :=
  ∀ n, P14450022294086583080.a n = A215000 (n + 1)

end A215000

/-!
# A215001: a(n) = 1 + floor(e^(1 + 1/2 + 1/3 + ... + 1/n)).

The programs for A215001, the canonical program `A215001.P14554116704608614748` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215001 has offset 1).

The definition of A215001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215000, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A215001.P14554116704608614748

`A215000(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215001

/-- `A215000(n+1)+1` -/
def P14554116704608614748.Spec : Prop :=
  ∀ n, P14554116704608614748.a n = A215001 (n + 1)

theorem P14554116704608614748.correct : P14554116704608614748.Spec := by
  intro n
  simp only [A215001, Nat.add_sub_cancel]

end A215001

/-! ## A215001.P6434879859689483108

`ceil(∏[root(e, n+1)])`
-/

namespace A215001.P6434879859689483108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (1 / (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A215001.P6434879859689483108

namespace A215001

/-- `ceil(∏[root(e, n+1)])` -/
def P6434879859689483108.Spec : Prop :=
  ∀ n, P6434879859689483108.a n = A215001 (n + 1)

end A215001

/-! ## A215001.P12931026426948221316

`A020725(A215000(n+1))`
-/

namespace A215001.P12931026426948221316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A215000 (n + 1)).toNat

end

end A215001.P12931026426948221316

namespace A215001

/-- `A020725(A215000(n+1))` -/
def P12931026426948221316.Spec : Prop :=
  ∀ n, P12931026426948221316.a n = A215001 (n + 1)

end A215001

/-! ## A215001.P2461977617961910248

`A008619(A059565(2*(n+1)+1))`
-/

namespace A215001.P2461977617961910248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059565 (2 * (n + 1) + 1)).toNat

end

end A215001.P2461977617961910248

namespace A215001

/-- `A008619(A059565(2*(n+1)+1))` -/
def P2461977617961910248.Spec : Prop :=
  ∀ n, P2461977617961910248.a n = A215001 (n + 1)

end A215001

/-! ## A215001.P6069787917242472487

`A226894(n+1)-n`
-/

namespace A215001.P6069787917242472487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226894 (n + 1) - (n : ℤ)

end

end A215001.P6069787917242472487

namespace A215001

/-- `A226894(n+1)-n` -/
def P6069787917242472487.Spec : Prop :=
  ∀ n, P6069787917242472487.a n = A215001 (n + 1)

end A215001

/-! ## A215001.P16740811660003609186

`A001478(n+1)+A226894(n+1)+1`
-/

namespace A215001.P16740811660003609186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A226894 (n + 1) + 1)

end

end A215001.P16740811660003609186

namespace A215001

/-- `A001478(n+1)+A226894(n+1)+1` -/
def P16740811660003609186.Spec : Prop :=
  ∀ n, P16740811660003609186.a n = A215001 (n + 1)

end A215001

/-! ## A215001.P18097183697128869578

`∑[A226895(A138153(n+1))]-n`
-/

namespace A215001.P18097183697128869578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A138153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A215001.P18097183697128869578

namespace A215001

/-- `∑[A226895(A138153(n+1))]-n` -/
def P18097183697128869578.Spec : Prop :=
  ∀ n, P18097183697128869578.a n = A215001 (n + 1)

end A215001

/-!
# A215002: Number of all solid standard Young tableaux of shape [[n,k],[n-k]] for 0<=k<=n.

The programs for A215002, there is no canonical definition to state claims against.
-/

/-! ## A215002.P9331365279532573995

`A398472(∑[4*n])`
-/

namespace A215002.P9331365279532573995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398472 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215002.P9331365279532573995

/-!
# A215003: E.g.f. satisfies: A(x) = x + A(x)^2*exp(A(x))/2.

The programs for A215003, there is no canonical definition to state claims against.
-/

/-! ## A215003.P10746014791033688570

`A214688(n+1)/A000079(n)`
-/

namespace A215003.P10746014791033688570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214688 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A215003.P10746014791033688570

/-! ## A215003.P15761910520135705056

`A214688(n+1)/Δ[A000051(n)]`
-/

namespace A215003.P15761910520135705056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214688 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A215003.P15761910520135705056

/-! ## A215003.P10252303224703599056

`A214688(n+1)/Δ[A000225(n)]`
-/

namespace A215003.P10252303224703599056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214688 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A215003.P10252303224703599056

/-! ## A215003.P13029065041892153753

`A214688(n+1)/Δ[A153972(n)]`
-/

namespace A215003.P13029065041892153753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214688 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A215003.P13029065041892153753

/-! ## A215003.P15585872608833621574

`A214688(n+1)/record[A279354(n+1)]`
-/

namespace A215003.P15585872608833621574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214688 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A215003.P15585872608833621574

/-!
# A215004: a(0) = a(1) = 1; for n>1, a(n) = a(n-1) + a(n-2) + floor(n/2).

The programs for A215004, the canonical program `A215004.P8924712478563705880` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215004 has offset 0).

The definition of A215004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+floor(n/2)` (program `A215004.P8924712478563705880`, by `A215004.P8924712478563705880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215004.P8924712478563705880

`a(n-1)+a(n-2)+floor(n/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215004

/-- `a(n-1)+a(n-2)+floor(n/2)` -/
def P8924712478563705880.Spec : Prop :=
  ∀ n, P8924712478563705880.a n = A215004 n

theorem P8924712478563705880.correct : P8924712478563705880.Spec := by
  intro n
  simp only [A215004]

end A215004

/-! ## A215004.P16999070954330311810

`A000045(n+3)-floor((n+3)/2)`
-/

namespace A215004.P16999070954330311810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - ⌊(n + 3 : ℚ) / 2⌋

end

end A215004.P16999070954330311810

namespace A215004

/-- `A000045(n+3)-floor((n+3)/2)` -/
def P16999070954330311810.Spec : Prop :=
  ∀ n, P16999070954330311810.a n = A215004 n

end A215004

/-! ## A215004.P7133564946347263988

`2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=10`
-/

namespace A215004.P7133564946347263988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5, 10] fun n a =>
  2 * a (n - 1) + a (n - 2) - 3 * a (n - 3) + a (n - 5)

end

end A215004.P7133564946347263988

namespace A215004

/-- `2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` -/
def P7133564946347263988.Spec : Prop :=
  ∀ n, P7133564946347263988.a n = A215004 n

end A215004

/-! ## A215004.P8920331522282136703

`∑[∑[ogf((-2+x+2x^2)/(-1+2x^2+x^3))]]-(n+1)`
-/

namespace A215004.P8920331522282136703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, 0, -2, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A215004.P8920331522282136703

namespace A215004

/-- `∑[∑[ogf((-2+x+2x^2)/(-1+2x^2+x^3))]]-(n+1)` -/
def P8920331522282136703.Spec : Prop :=
  ∀ n, P8920331522282136703.a n = A215004 n

end A215004

/-! ## A215004.P6040693982431282684

`∑[∑[ogf((-2+x+2x^2)/(-1+2x^2+x^3))]]-1-n`
-/

namespace A215004.P6040693982431282684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, 0, -2, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A215004.P6040693982431282684

namespace A215004

/-- `∑[∑[ogf((-2+x+2x^2)/(-1+2x^2+x^3))]]-1-n` -/
def P6040693982431282684.Spec : Prop :=
  ∀ n, P6040693982431282684.a n = A215004 n

end A215004

/-! ## A215004.P8779654846141516559

`n-1+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A215004.P8779654846141516559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  (n : ℤ) - 1 + 2 * a (n - 2) + a (n - 3)

end

end A215004.P8779654846141516559

namespace A215004

/-- `n-1+2*a(n-2)+a(n-3)` -/
def P8779654846141516559.Spec : Prop :=
  ∀ n, P8779654846141516559.a n = A215004 n

end A215004

/-! ## A215004.P5917961496769481544

`∑[(n+1)%2+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A215004.P5917961496769481544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n + 1) % 2 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215004.P5917961496769481544

namespace A215004

/-- `∑[(n+1)%2+a(n-1)+a(n-2)]` -/
def P5917961496769481544.Spec : Prop :=
  ∀ n, (P5917961496769481544.a n : ℤ) = A215004 n

end A215004

/-! ## A215004.P11146321881525680348

`∑[A052959(n)-1]`
-/

namespace A215004.P11146321881525680348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215004.P11146321881525680348

namespace A215004

/-- `∑[A052959(n)-1]` -/
def P11146321881525680348.Spec : Prop :=
  ∀ n, P11146321881525680348.a n = A215004 n

end A215004

/-! ## A215004.P12721794301473592123

`round(∑[A001595(n)/2])`
-/

namespace A215004.P12721794301473592123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001595 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215004.P12721794301473592123

namespace A215004

/-- `round(∑[A001595(n)/2])` -/
def P12721794301473592123.Spec : Prop :=
  ∀ n, P12721794301473592123.a n = A215004 n

end A215004

/-! ## A215004.P18342777517037848744

`∑[A109522(n+1)-1]`
-/

namespace A215004.P18342777517037848744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215004.P18342777517037848744

namespace A215004

/-- `∑[A109522(n+1)-1]` -/
def P18342777517037848744.Spec : Prop :=
  ∀ n, P18342777517037848744.a n = A215004 n

end A215004

/-! ## A215004.P17370039838763836263

`round(∑[∑[A006355(n)/2]])`
-/

namespace A215004.P17370039838763836263
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006355 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215004.P17370039838763836263

namespace A215004

/-- `round(∑[∑[A006355(n)/2]])` -/
def P17370039838763836263.Spec : Prop :=
  ∀ n, P17370039838763836263.a n = A215004 n

end A215004

/-! ## A215004.P6682717960537080654

`∑[A000045(n+1)-n%2]`
-/

namespace A215004.P6682717960537080654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215004.P6682717960537080654

namespace A215004

/-- `∑[A000045(n+1)-n%2]` -/
def P6682717960537080654.Spec : Prop :=
  ∀ n, P6682717960537080654.a n = A215004 n

end A215004

/-! ## A215004.P5737213020113373207

`∑[A000045(n)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A215004.P5737213020113373207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000045 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215004.P5737213020113373207

namespace A215004

/-- `∑[A000045(n)+a(n-2)]` -/
def P5737213020113373207.Spec : Prop :=
  ∀ n, P5737213020113373207.a n = A215004 n

end A215004

/-! ## A215004.P13714906015278151577

`∑[A000045(2*n+1-n)-and(1, n)]`
-/

namespace A215004.P13714906015278151577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1 - n) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215004.P13714906015278151577

namespace A215004

/-- `∑[A000045(2*n+1-n)-and(1, n)]` -/
def P13714906015278151577.Spec : Prop :=
  ∀ n, P13714906015278151577.a n = A215004 n

end A215004

/-! ## A215004.P2411943473253475952

`∑[A000032(n-1)+a(n-4)]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A215004.P2411943473253475952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  A000032 (n - 1) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215004.P2411943473253475952

namespace A215004

/-- `∑[A000032(n-1)+a(n-4)]` -/
def P2411943473253475952.Spec : Prop :=
  ∀ n, P2411943473253475952.a n = A215004 n

end A215004

/-! ## A215004.P1542727474563006872

`A020695(n)-A080513(n)`
-/

namespace A215004.P1542727474563006872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A080513 n

end

end A215004.P1542727474563006872

namespace A215004

/-- `A020695(n)-A080513(n)` -/
def P1542727474563006872.Spec : Prop :=
  ∀ n, P1542727474563006872.a n = A215004 n

end A215004

/-! ## A215004.P8484840644775086721

`A054451(n)-A142150(n)`
-/

namespace A215004.P8484840644775086721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 n - A142150 n

end

end A215004.P8484840644775086721

namespace A215004

/-- `A054451(n)-A142150(n)` -/
def P8484840644775086721.Spec : Prop :=
  ∀ n, P8484840644775086721.a n = A215004 n

end A215004

/-! ## A215004.P6783892233550717239

`∑[A052952(n)-A000045(n)]`
-/

namespace A215004.P6783892233550717239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215004.P6783892233550717239

namespace A215004

/-- `∑[A052952(n)-A000045(n)]` -/
def P6783892233550717239.Spec : Prop :=
  ∀ n, P6783892233550717239.a n = A215004 n

end A215004

/-! ## A215004.P3590929183718264054

`A020695(n)-A008619(n+1)`
-/

namespace A215004.P3590929183718264054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A008619 (n + 1)

end

end A215004.P3590929183718264054

namespace A215004

/-- `A020695(n)-A008619(n+1)` -/
def P3590929183718264054.Spec : Prop :=
  ∀ n, P3590929183718264054.a n = A215004 n

end A215004

/-!
# A215005: a(n) = a(n-2) + a(n-1) + floor(n/2) + 1 for n > 1 and a(0)=0, a(1)=1.

The programs for A215005, the canonical program `A215005.P11797102765363220369` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215005 has offset 0).

The definition of A215005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-1)+floor(n/2)+1` (program `A215005.P11797102765363220369`, by `A215005.P11797102765363220369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215005.P11797102765363220369

`a(n-2)+a(n-1)+floor(n/2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215005

/-- `a(n-2)+a(n-1)+floor(n/2)+1` -/
def P11797102765363220369.Spec : Prop :=
  ∀ n, P11797102765363220369.a n = A215005 n

theorem P11797102765363220369.correct : P11797102765363220369.Spec := by
  intro n
  simp only [A215005]

end A215005

/-! ## A215005.P10502885020409187486

`2*A000045(n+2)-(2*n+9-(-1)^n)/4`
-/

namespace A215005.P10502885020409187486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 2) : ℚ) - ((2 * n + 9 : ℤ) - (-1) ^ n : ℚ) / 4

end

end A215005.P10502885020409187486

namespace A215005

/-- `2*A000045(n+2)-(2*n+9-(-1)^n)/4` -/
def P10502885020409187486.Spec : Prop :=
  ∀ n, P10502885020409187486.a n = (A215005 n : ℚ)

end A215005

/-! ## A215005.P17107812019727881312

`2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=12`
-/

namespace A215005.P17107812019727881312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 12] fun n a =>
  2 * a (n - 1) + a (n - 2) - 3 * a (n - 3) + a (n - 5)

end

end A215005.P17107812019727881312

namespace A215005

/-- `2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` -/
def P17107812019727881312.Spec : Prop :=
  ∀ n, P17107812019727881312.a n = A215005 n

end A215005

/-! ## A215005.P12962054640308472550

`∑[ogf((x+x^2-x^3)/(1-x-2x^2+x^3+x^4))]`
-/

namespace A215005.P12962054640308472550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, -1, -2, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215005.P12962054640308472550

namespace A215005

/-- `∑[ogf((x+x^2-x^3)/(1-x-2x^2+x^3+x^4))]` -/
def P12962054640308472550.Spec : Prop :=
  ∀ n, P12962054640308472550.a n = A215005 n

end A215005

/-! ## A215005.P11919600306869786083

`∑[a(n-1)+or(1, a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A215005.P11919600306869786083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + Nat.lor 1 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215005.P11919600306869786083

namespace A215005

/-- `∑[a(n-1)+or(1, a(n-2))]` -/
def P11919600306869786083.Spec : Prop :=
  ∀ n, (P11919600306869786083.a n : ℤ) = A215005 n

end A215005

/-! ## A215005.P15149680266041801237

`2*a(n-2)+a(n-3)+n+1` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A215005.P15149680266041801237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  2 * a (n - 2) + (a (n - 3) + (n + 1))

end

end A215005.P15149680266041801237

namespace A215005

/-- `2*a(n-2)+a(n-3)+n+1` -/
def P15149680266041801237.Spec : Prop :=
  ∀ n, (P15149680266041801237.a n : ℤ) = A215005 n

end A215005

/-! ## A215005.P2354554970639607639

`∑[(n+1)%2+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A215005.P2354554970639607639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 1) % 2 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215005.P2354554970639607639

namespace A215005

/-- `∑[(n+1)%2+a(n-1)+a(n-2)]` -/
def P2354554970639607639.Spec : Prop :=
  ∀ n, (P2354554970639607639.a n : ℤ) = A215005 n

end A215005

/-! ## A215005.P3371317325839897918

`n+1+a(n-2)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A215005.P3371317325839897918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  n + 1 + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A215005.P3371317325839897918

namespace A215005

/-- `n+1+a(n-2)+a(n-2)+a(n-3)` -/
def P3371317325839897918.Spec : Prop :=
  ∀ n, (P3371317325839897918.a n : ℤ) = A215005 n

end A215005

/-! ## A215005.P7850007653604967527

`∑[A062114(n)]`
-/

namespace A215005.P7850007653604967527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215005.P7850007653604967527

namespace A215005

/-- `∑[A062114(n)]` -/
def P7850007653604967527.Spec : Prop :=
  ∀ n, P7850007653604967527.a n = A215005 n

end A215005

/-! ## A215005.P8894197875570937822

`A281362(n)-1`
-/

namespace A215005.P8894197875570937822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281362 n - 1

end

end A215005.P8894197875570937822

namespace A215005

/-- `A281362(n)-1` -/
def P8894197875570937822.Spec : Prop :=
  ∀ n, P8894197875570937822.a n = A215005 n

end A215005

/-! ## A215005.P9147802239187207436

`∑[A166012(n)-1]`
-/

namespace A215005.P9147802239187207436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215005.P9147802239187207436

namespace A215005

/-- `∑[A166012(n)-1]` -/
def P9147802239187207436.Spec : Prop :=
  ∀ n, P9147802239187207436.a n = A215005 n

end A215005

/-! ## A215005.P9333716380380484729

`floor(A104161(n)+n/2)`
-/

namespace A215005.P9333716380380484729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104161 n : ℚ) + (n : ℚ) / 2⌋

end

end A215005.P9333716380380484729

namespace A215005

/-- `floor(A104161(n)+n/2)` -/
def P9333716380380484729.Spec : Prop :=
  ∀ n, P9333716380380484729.a n = A215005 n

end A215005

/-! ## A215005.P3845325749334032197

`A066629(n)-∑[log2(gcd(2, n))]`
-/

namespace A215005.P3845325749334032197
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066629 n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215005.P3845325749334032197

namespace A215005

/-- `A066629(n)-∑[log2(gcd(2, n))]` -/
def P3845325749334032197.Spec : Prop :=
  ∀ n, P3845325749334032197.a n = (A215005 n : ℝ)

end A215005

/-! ## A215005.P2806787119793695585

`∑[2*A000045(n)-n%2]`
-/

namespace A215005.P2806787119793695585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215005.P2806787119793695585

namespace A215005

/-- `∑[2*A000045(n)-n%2]` -/
def P2806787119793695585.Spec : Prop :=
  ∀ n, P2806787119793695585.a n = A215005 n

end A215005

/-! ## A215005.P6226037902042416365

`∑[a(n-2)+2*A000045(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A215005.P6226037902042416365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 2 * A000045 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215005.P6226037902042416365

namespace A215005

/-- `∑[a(n-2)+2*A000045(n-1)]` -/
def P6226037902042416365.Spec : Prop :=
  ∀ n, P6226037902042416365.a n = A215005 n

end A215005

/-! ## A215005.P8223652622592642543

`floor(2*A000045(n+2)-(n+2)/2)-1`
-/

namespace A215005.P8223652622592642543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A000045 (n + 2) : ℚ) - (n + 2 : ℚ) / 2⌋ - 1

end

end A215005.P8223652622592642543

namespace A215005

/-- `floor(2*A000045(n+2)-(n+2)/2)-1` -/
def P8223652622592642543.Spec : Prop :=
  ∀ n, P8223652622592642543.a n = A215005 n

end A215005

/-! ## A215005.P16661729346386567770

`A104161(n)+A004526(n)`
-/

namespace A215005.P16661729346386567770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 n + A004526 n

end

end A215005.P16661729346386567770

namespace A215005

/-- `A104161(n)+A004526(n)` -/
def P16661729346386567770.Spec : Prop :=
  ∀ n, P16661729346386567770.a n = A215005 n

end A215005

/-! ## A215005.P14018789203453014579

`A066629(n)-A008619(n)`
-/

namespace A215005.P14018789203453014579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 n - A008619 n

end

end A215005.P14018789203453014579

namespace A215005

/-- `A066629(n)-A008619(n)` -/
def P14018789203453014579.Spec : Prop :=
  ∀ n, P14018789203453014579.a n = A215005 n

end A215005

/-! ## A215005.P16183422433614108308

`A066629(n)-(A004526(n)+1)`
-/

namespace A215005.P16183422433614108308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 n - (A004526 n + 1)

end

end A215005.P16183422433614108308

namespace A215005

/-- `A066629(n)-(A004526(n)+1)` -/
def P16183422433614108308.Spec : Prop :=
  ∀ n, P16183422433614108308.a n = A215005 n

end A215005

/-! ## A215005.P7992167916094961098

`A008619(n)+A104161(n)-1`
-/

namespace A215005.P7992167916094961098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A104161 n - 1)

end

end A215005.P7992167916094961098

namespace A215005

/-- `A008619(n)+A104161(n)-1` -/
def P7992167916094961098.Spec : Prop :=
  ∀ n, P7992167916094961098.a n = A215005 n

end A215005

/-!
# A215006: a(0)=0, a(n+1) is the least k>a(n) such that k+a(n)+n+1 is a Fibonacci number.

The programs for A215006, the canonical program `A215006.P4313230232104311789` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215006 has offset 0).

The definition of A215006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215006.P4313230232104311789

`a(n-1)+a(n-2)+floor(n/2)-1` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215006

/-- `a(n-1)+a(n-2)+floor(n/2)-1` -/
def P4313230232104311789.Spec : Prop :=
  ∀ n, P4313230232104311789.a n = A215006 n

theorem P4313230232104311789.correct : P4313230232104311789.Spec := by
  intro n
  simp only [A215006]

end A215006

/-! ## A215006.P7517790447717351428

`∑[A000045(n)-char[2*n+3]]`
-/

namespace A215006.P7517790447717351428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215006.P7517790447717351428

namespace A215006

/-- `∑[A000045(n)-char[2*n+3]]` -/
def P7517790447717351428.Spec : Prop :=
  ∀ n, P7517790447717351428.a n = A215006 n

end A215006

/-! ## A215006.P14313033592783554293

`A000045(n+2)-floor(cosh(log(n+1)))`
-/

namespace A215006.P14313033592783554293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - ⌊Real.cosh (Real.log (n + 1 : ℝ))⌋

end

end A215006.P14313033592783554293

namespace A215006

/-- `A000045(n+2)-floor(cosh(log(n+1)))` -/
def P14313033592783554293.Spec : Prop :=
  ∀ n, P14313033592783554293.a n = A215006 n

end A215006

/-! ## A215006.P3235624400938053324

`record[A000045(ceil(n/2))-floor(n/4)]`
-/

namespace A215006.P3235624400938053324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n : ℚ) / 2⌉.toNat - ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215006.P3235624400938053324

namespace A215006

/-- `record[A000045(ceil(n/2))-floor(n/4)]` -/
def P3235624400938053324.Spec : Prop :=
  ∀ n, P3235624400938053324.a n = A215006 n

end A215006

/-! ## A215006.P2716205450577617674

`A000045(n+1)+a(n-2)-1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A215006.P2716205450577617674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A000045 (n + 1) + (a (n - 2) - 1)

end

end A215006.P2716205450577617674

namespace A215006

/-- `A000045(n+1)+a(n-2)-1` -/
def P2716205450577617674.Spec : Prop :=
  ∀ n, P2716205450577617674.a n = A215006 n

end A215006

/-! ## A215006.P16711952699933034970

`A052952(n)-A123108(n)`
-/

namespace A215006.P16711952699933034970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n - A123108 n

end

end A215006.P16711952699933034970

namespace A215006

/-- `A052952(n)-A123108(n)` -/
def P16711952699933034970.Spec : Prop :=
  ∀ n, P16711952699933034970.a n = A215006 n

end A215006

/-! ## A215006.P2482983592591518027

`A167270(n)-A028310(n)`
-/

namespace A215006.P2482983592591518027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167270 n - A028310 n

end

end A215006.P2482983592591518027

namespace A215006

/-- `A167270(n)-A028310(n)` -/
def P2482983592591518027.Spec : Prop :=
  ∀ n, P2482983592591518027.a n = A215006 n

end A215006

/-! ## A215006.P13846619119252423214

`A000045(n+2)-A065033(n)`
-/

namespace A215006.P13846619119252423214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A065033 n

end

end A215006.P13846619119252423214

namespace A215006

/-- `A000045(n+2)-A065033(n)` -/
def P13846619119252423214.Spec : Prop :=
  ∀ n, P13846619119252423214.a n = A215006 n

end A215006

/-! ## A215006.P13504313940688627335

`A096748(2*n)-A065033(n)`
-/

namespace A215006.P13504313940688627335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * n) - A065033 n

end

end A215006.P13504313940688627335

namespace A215006

/-- `A096748(2*n)-A065033(n)` -/
def P13504313940688627335.Spec : Prop :=
  ∀ n, P13504313940688627335.a n = A215006 n

end A215006

/-! ## A215006.P6801987856103353669

`A232896(n+1)-A294732(n+2)`
-/

namespace A215006.P6801987856103353669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 1) - A294732 (n + 2)

end

end A215006.P6801987856103353669

namespace A215006

/-- `A232896(n+1)-A294732(n+2)` -/
def P6801987856103353669.Spec : Prop :=
  ∀ n, P6801987856103353669.a n = A215006 n

end A215006

/-! ## A215006.P4469383211377647258

`A115339(2*n+1)-A065033(n)`
-/

namespace A215006.P4469383211377647258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * n + 1) - A065033 n

end

end A215006.P4469383211377647258

namespace A215006

/-- `A115339(2*n+1)-A065033(n)` -/
def P4469383211377647258.Spec : Prop :=
  ∀ n, P4469383211377647258.a n = A215006 n

end A215006

/-! ## A215006.P10528677184840658130

`∑[A000045(n)]-n%∑[A059841(n)]`
-/

namespace A215006.P10528677184840658130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (n : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A215006.P10528677184840658130

namespace A215006

/-- `∑[A000045(n)]-n%∑[A059841(n)]` -/
def P10528677184840658130.Spec : Prop :=
  ∀ n, P10528677184840658130.a n = A215006 n

end A215006

/-! ## A215006.P10800317970565915968

`A065033(n+1)+A000071(n+2)-A065033(2*n)`
-/

namespace A215006.P10800317970565915968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + (A000071 (n + 2) - A065033 (2 * n))

end

end A215006.P10800317970565915968

namespace A215006

/-- `A065033(n+1)+A000071(n+2)-A065033(2*n)` -/
def P10800317970565915968.Spec : Prop :=
  ∀ n, P10800317970565915968.a n = A215006 n

end A215006

/-! ## A215006.P6550134563352379820

`Δ[A001911(n)]-A065033(n)`
-/

namespace A215006.P6550134563352379820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A065033 n

end

end A215006.P6550134563352379820

namespace A215006

/-- `Δ[A001911(n)]-A065033(n)` -/
def P6550134563352379820.Spec : Prop :=
  ∀ n, P6550134563352379820.a n = A215006 n

end A215006

/-! ## A215006.P16401770455427478133

`A020956(n+1)-A154327(n)`
-/

namespace A215006.P16401770455427478133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020956 (n + 1) - A154327 n

end

end A215006.P16401770455427478133

namespace A215006

/-- `A020956(n+1)-A154327(n)` -/
def P16401770455427478133.Spec : Prop :=
  ∀ n, P16401770455427478133.a n = A215006 n

end A215006

/-!
# A215007: a(n) = 7*a(n-1) - 14*a(n-2) + 7*a(n-3), a(0)=1, a(1)=3, a(2)=9.

The programs for A215007, the canonical program `A215007.P11283037352574402620` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215007 has offset 0).

The definition of A215007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-14*a(n-2)+7*a(n-3)` (program `A215007.P11283037352574402620`, by `A215007.P11283037352574402620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215007.P9863929409260866774

`7*(a(n-1)-2*a(n-2)+a(n-3))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A215007.P9863929409260866774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  7 * (a (n - 1) - 2 * a (n - 2) + a (n - 3))

end

end A215007.P9863929409260866774

namespace A215007

/-- `7*(a(n-1)-2*a(n-2)+a(n-3))` -/
def P9863929409260866774.Spec : Prop :=
  ∀ n, P9863929409260866774.a n = A215007 n

theorem P9863929409260866774.correct : P9863929409260866774.Spec := by
  intro n
  simp only [A215007, Nat.add_sub_cancel, A215007.P9863929409260866774.a, A215007.P11283037352574402620.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215007

/-! ## A215007.P11283037352574402620

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215007

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P11283037352574402620.Spec : Prop :=
  ∀ n, P11283037352574402620.a n = A215007 n

theorem P11283037352574402620.correct : P11283037352574402620.Spec := by
  intro n
  simp only [A215007]

end A215007

/-! ## A215007.P241664085211631999

`a(n-1)+A122068(n)+a(n-1)` with `a(0)=1`
-/

namespace A215007.P241664085211631999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A122068 n + a (n - 1))

end

end A215007.P241664085211631999

namespace A215007

/-- `a(n-1)+A122068(n)+a(n-1)` -/
def P241664085211631999.Spec : Prop :=
  ∀ n, P241664085211631999.a n = A215007 n

end A215007

/-! ## A215007.P4263082341517381113

`Δ[A215008(n)]-A217274(n)`
-/

namespace A215007.P4263082341517381113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A217274 n

end

end A215007.P4263082341517381113

namespace A215007

/-- `Δ[A215008(n)]-A217274(n)` -/
def P4263082341517381113.Spec : Prop :=
  ∀ n, P4263082341517381113.a n = A215007 n

end A215007

/-! ## A215007.P12257897246897745988

`A215493(n+1)-A215008(n)`
-/

namespace A215007.P12257897246897745988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 (n + 1) - A215008 n

end

end A215007.P12257897246897745988

namespace A215007

/-- `A215493(n+1)-A215008(n)` -/
def P12257897246897745988.Spec : Prop :=
  ∀ n, P12257897246897745988.a n = A215007 n

end A215007

/-! ## A215007.P13604071334600071789

`∑[A122068(n+1)]-A215008(n)`
-/

namespace A215007.P13604071334600071789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A215008 n

end

end A215007.P13604071334600071789

namespace A215007

/-- `∑[A122068(n+1)]-A215008(n)` -/
def P13604071334600071789.Spec : Prop :=
  ∀ n, P13604071334600071789.a n = A215007 n

end A215007

/-! ## A215007.P5052394939900198520

`2*A122068(n+1)-A319512(n)`
-/

namespace A215007.P5052394939900198520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122068 (n + 1) - A319512 n

end

end A215007.P5052394939900198520

namespace A215007

/-- `2*A122068(n+1)-A319512(n)` -/
def P5052394939900198520.Spec : Prop :=
  ∀ n, P5052394939900198520.a n = A215007 n

end A215007

/-! ## A215007.P1666655561392312551

`A215008(n)+A319512(n)-A217274(n)`
-/

namespace A215007.P1666655561392312551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n + (A319512 n - A217274 n)

end

end A215007.P1666655561392312551

namespace A215007

/-- `A215008(n)+A319512(n)-A217274(n)` -/
def P1666655561392312551.Spec : Prop :=
  ∀ n, P1666655561392312551.a n = A215007 n

end A215007

/-! ## A215007.P7429082403540596019

`A215008(n+1)-(A217274(n)+A215008(n))`
-/

namespace A215007.P7429082403540596019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (n + 1) - (A217274 n + A215008 n)

end

end A215007.P7429082403540596019

namespace A215007

/-- `A215008(n+1)-(A217274(n)+A215008(n))` -/
def P7429082403540596019.Spec : Prop :=
  ∀ n, P7429082403540596019.a n = A215007 n

end A215007

/-! ## A215007.P949241255360626524

`Δ[Δ[A215493(n)]-A215008(n)]`
-/

namespace A215007.P949241255360626524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A215008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215007.P949241255360626524

namespace A215007

/-- `Δ[Δ[A215493(n)]-A215008(n)]` -/
def P949241255360626524.Spec : Prop :=
  ∀ n, P949241255360626524.a n = A215007 n

end A215007

/-! ## A215007.P11027588592740319654

`A319512(n+1)-(A215143(n+1)+A215008(n))`
-/

namespace A215007.P11027588592740319654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319512 (n + 1) - (A215143 (n + 1) + A215008 n)

end

end A215007.P11027588592740319654

namespace A215007

/-- `A319512(n+1)-(A215143(n+1)+A215008(n))` -/
def P11027588592740319654.Spec : Prop :=
  ∀ n, P11027588592740319654.a n = A215007 n

end A215007

/-!
# A215008: a(n) = 7*a(n-1) - 14*a(n-2) + 7*a(n-3), a(0)=0, a(1)=1, a(2)=5.

The programs for A215008, the canonical program `A215008.P15413971604075836098` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215008 has offset 0).

The definition of A215008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-14*a(n-2)+7*a(n-3)` (program `A215008.P15413971604075836098`, by `A215008.P15413971604075836098.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215008.P15290100704708410584

`7*(a(n-1)-2*a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A215008.P15290100704708410584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  7 * (a (n - 1) - 2 * a (n - 2) + a (n - 3))

end

end A215008.P15290100704708410584

namespace A215008

/-- `7*(a(n-1)-2*a(n-2)+a(n-3))` -/
def P15290100704708410584.Spec : Prop :=
  ∀ n, P15290100704708410584.a n = A215008 n

theorem P15290100704708410584.correct : P15290100704708410584.Spec := by
  intro n
  simp only [A215008, Nat.add_sub_cancel, A215008.P15290100704708410584.a, A215008.P15413971604075836098.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215008

/-! ## A215008.P15413971604075836098

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215008

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P15413971604075836098.Spec : Prop :=
  ∀ n, P15413971604075836098.a n = A215008 n

theorem P15413971604075836098.correct : P15413971604075836098.Spec := by
  intro n
  simp only [A215008]

end A215008

/-! ## A215008.P13818912032906047686

`A217274(log2(A011782(n)))+A215493(n)`
-/

namespace A215008.P13818912032906047686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217274 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A215493 n

end

end A215008.P13818912032906047686

namespace A215008

/-- `A217274(log2(A011782(n)))+A215493(n)` -/
def P13818912032906047686.Spec : Prop :=
  ∀ n, P13818912032906047686.a n = A215008 n

end A215008

/-! ## A215008.P16617660898220630341

`Δ[A215143(log2(A011782(n)))]`
-/

namespace A215008.P16617660898220630341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215008.P16617660898220630341

namespace A215008

/-- `Δ[A215143(log2(A011782(n)))]` -/
def P16617660898220630341.Spec : Prop :=
  ∀ n, P16617660898220630341.a n = A215008 n

end A215008

/-! ## A215008.P2104333366052856931

`Δ[A215143(val(A011782(n), 2))]`
-/

namespace A215008.P2104333366052856931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215008.P2104333366052856931

namespace A215008

/-- `Δ[A215143(val(A011782(n), 2))]` -/
def P2104333366052856931.Spec : Prop :=
  ∀ n, P2104333366052856931.a n = A215008 n

end A215008

/-! ## A215008.P7683970789166239196

`Δ[A215143(A004273(n)-n)]`
-/

namespace A215008.P7683970789166239196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215008.P7683970789166239196

namespace A215008

/-- `Δ[A215143(A004273(n)-n)]` -/
def P7683970789166239196.Spec : Prop :=
  ∀ n, P7683970789166239196.a n = A215008 n

end A215008

/-! ## A215008.P13032857419568536848

`A215493(n+1)-A215007(n)`
-/

namespace A215008.P13032857419568536848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 (n + 1) - A215007 n

end

end A215008.P13032857419568536848

namespace A215008

/-- `A215493(n+1)-A215007(n)` -/
def P13032857419568536848.Spec : Prop :=
  ∀ n, P13032857419568536848.a n = A215008 n

end A215008

/-! ## A215008.P1217663493921442464

`Δ[A215143(A004526(A004273(n)))]`
-/

namespace A215008.P1217663493921442464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215008.P1217663493921442464

namespace A215008

/-- `Δ[A215143(A004526(A004273(n)))]` -/
def P1217663493921442464.Spec : Prop :=
  ∀ n, P1217663493921442464.a n = A215008 n

end A215008

/-! ## A215008.P10023518031266944858

`Δ[A215143(A318995(A008578(n+1)))]`
-/

namespace A215008.P10023518031266944858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (A318995 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215008.P10023518031266944858

namespace A215008

/-- `Δ[A215143(A318995(A008578(n+1)))]` -/
def P10023518031266944858.Spec : Prop :=
  ∀ n, P10023518031266944858.a n = A215008 n

end A215008

/-! ## A215008.P17201193666946741390

`A215143(n)-A215143(log2(A011782(n)))`
-/

namespace A215008.P17201193666946741390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 n - A215143 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A215008.P17201193666946741390

namespace A215008

/-- `A215143(n)-A215143(log2(A011782(n)))` -/
def P17201193666946741390.Spec : Prop :=
  ∀ n, P17201193666946741390.a n = A215008 n

end A215008

/-! ## A215008.P7332148914987097078

`A215143(n)-A215143(A028310(n)-1)`
-/

namespace A215008.P7332148914987097078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 n - A215143 (A028310 n - 1).toNat

end

end A215008.P7332148914987097078

namespace A215008

/-- `A215143(n)-A215143(A028310(n)-1)` -/
def P7332148914987097078.Spec : Prop :=
  ∀ n, P7332148914987097078.a n = A215008 n

end A215008

/-! ## A215008.P8684667854053178576

`A215143(n)-A215143(val(A011782(n), 2))`
-/

namespace A215008.P8684667854053178576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 n - A215143 (SequenceMachineLib.valuation (A011782 n).toNat 2)

end

end A215008.P8684667854053178576

namespace A215008

/-- `A215143(n)-A215143(val(A011782(n), 2))` -/
def P8684667854053178576.Spec : Prop :=
  ∀ n, P8684667854053178576.a n = A215008 n

end A215008

/-! ## A215008.P9933862585047076909

`A215007(n)+A217274(n)-A319512(n)`
-/

namespace A215008.P9933862585047076909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 n + (A217274 n - A319512 n)

end

end A215008.P9933862585047076909

namespace A215008

/-- `A215007(n)+A217274(n)-A319512(n)` -/
def P9933862585047076909.Spec : Prop :=
  ∀ n, P9933862585047076909.a n = A215008 n

end A215008

/-! ## A215008.P17081102802353571365

`A215143(n)-A215143(A004273(n)-n)`
-/

namespace A215008.P17081102802353571365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 n - A215143 (A004273 n - (n : ℤ)).toNat

end

end A215008.P17081102802353571365

namespace A215008

/-- `A215143(n)-A215143(A004273(n)-n)` -/
def P17081102802353571365.Spec : Prop :=
  ∀ n, P17081102802353571365.a n = A215008 n

end A215008

/-! ## A215008.P11154535328916953819

`A215510(n)/7`
-/

namespace A215008.P11154535328916953819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215510 n : ℚ) / 7

end

end A215008.P11154535328916953819

namespace A215008

/-- `A215510(n)/7` -/
def P11154535328916953819.Spec : Prop :=
  ∀ n, P11154535328916953819.a n = (A215008 n : ℚ)

end A215008

/-! ## A215008.P6216311899927114593

`(Δ[A215143(n)]-A319512(n))/2`
-/

namespace A215008.P6216311899927114593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A319512 n : ℚ) / 2

end

end A215008.P6216311899927114593

namespace A215008

/-- `(Δ[A215143(n)]-A319512(n))/2` -/
def P6216311899927114593.Spec : Prop :=
  ∀ n, P6216311899927114593.a n = (A215008 n : ℚ)

end A215008

/-! ## A215008.P3600086174924337475

`A122068(n+2)%A122068(n+1)`
-/

namespace A215008.P3600086174924337475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122068 (n + 2)) (A122068 (n + 1))

end

end A215008.P3600086174924337475

namespace A215008

/-- `A122068(n+2)%A122068(n+1)` -/
def P3600086174924337475.Spec : Prop :=
  ∀ n, P3600086174924337475.a n = A215008 n

end A215008

/-! ## A215008.P16665162623592760992

`Δ[A215493(n+1)-3*A215493(n)]`
-/

namespace A215008.P16665162623592760992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 (n + 1) - 3 * A215493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215008.P16665162623592760992

namespace A215008

/-- `Δ[A215493(n+1)-3*A215493(n)]` -/
def P16665162623592760992.Spec : Prop :=
  ∀ n, P16665162623592760992.a n = A215008 n

end A215008

/-! ## A215008.P17846336767933967606

`A319512(n+1)-(A215143(n+1)+A215007(n))`
-/

namespace A215008.P17846336767933967606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319512 (n + 1) - (A215143 (n + 1) + A215007 n)

end

end A215008.P17846336767933967606

namespace A215008

/-- `A319512(n+1)-(A215143(n+1)+A215007(n))` -/
def P17846336767933967606.Spec : Prop :=
  ∀ n, P17846336767933967606.a n = A215008 n

end A215008

/-!
# A215009: Numbers which are "easy" to key on a computer numpad.

The programs for A215009, there is no canonical definition to state claims against.
-/

/-! ## A215009.P11933840543666979649

`A118759(A281943(n+1))`
-/

namespace A215009.P11933840543666979649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A281943 (n + 1)).toNat

end

end A215009.P11933840543666979649

/-! ## A215009.P9245991654884973072

`A000196(A281943(n+1)²)`
-/

namespace A215009.P9245991654884973072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A281943 (n + 1) ^ 2).toNat

end

end A215009.P9245991654884973072

/-! ## A215009.P1994751484866522375

`A000196(A281943(n+1)^2)`
-/

namespace A215009.P1994751484866522375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A281943 (n + 1) ^ 2).toNat

end

end A215009.P1994751484866522375

/-! ## A215009.P11340006656140194570

`and(A281943(n+1), A359082(n+1))`
-/

namespace A215009.P11340006656140194570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281943 (n + 1)) (A359082 (n + 1))

end

end A215009.P11340006656140194570

/-!
# A215011: a(n) = least k>0 such that triangular(n) divides Fibonacci(k).

The programs for A215011, there is no canonical definition to state claims against.
-/

/-! ## A215011.P1783444388353045855

`A001177(∑[n+1])`
-/

namespace A215011.P1783444388353045855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215011.P1783444388353045855

/-! ## A215011.P16221776863419292009

`1/A001177(C(n+2, 2))^(-1)`
-/

namespace A215011.P16221776863419292009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A001177 (Nat.choose (n + 2) 2) : ℚ) ^ (-1 : ℤ)

end

end A215011.P16221776863419292009

/-! ## A215011.P7109752512381907879

`A000027(A001177(C(n+2, 2)))`
-/

namespace A215011.P7109752512381907879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001177 (Nat.choose (n + 2) 2)).toNat

end

end A215011.P7109752512381907879

/-! ## A215011.P15542880259809224280

`or(char[3], A001177(A000217(n+1)))`
-/

namespace A215011.P15542880259809224280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001177 (A000217 (n + 1)).toNat)

end

end A215011.P15542880259809224280

/-! ## A215011.P18360967191156378265

`A000027(A001177(∑[Δ[n²]-n]))`
-/

namespace A215011.P18360967191156378265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A215011.P18360967191156378265

/-! ## A215011.P3041524878947487312

`A001177(Δ[A000292(n)])%A000217(n+7)`
-/

namespace A215011.P3041524878947487312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001177 (f1 (n + 1) - f1 n).toNat) (A000217 (n + 7))

end

end A215011.P3041524878947487312

/-! ## A215011.P16160694444763652477

`A007318(C(2, n))*A001177(A000217(n+1))`
-/

namespace A215011.P16160694444763652477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A001177 (A000217 (n + 1)).toNat

end

end A215011.P16160694444763652477

/-! ## A215011.P1856557424826400375

`A014963(20*(n+1))*A001177(A000217(n+1))`
-/

namespace A215011.P1856557424826400375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A001177 (A000217 (n + 1)).toNat

end

end A215011.P1856557424826400375

/-!
# A215012: Composite numbers n such that sigma(n)/n leaves a remainder which divides n.

The programs for A215012, there is no canonical definition to state claims against.
-/

/-! ## A215012.P13608601283128098536

`eq[A005171(n+1), A272008(n+1)]+1`
-/

namespace A215012.P13608601283128098536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215012.P13608601283128098536

/-! ## A215012.P1337125497386732598

`eq[A010051(n+1)+1, A272008(n+1)]+1`
-/

namespace A215012.P1337125497386732598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215012.P1337125497386732598

/-! ## A215012.P4079640206984499543

`eq[A014963(n+1), A272008(n+1)]+1`
-/

namespace A215012.P4079640206984499543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215012.P4079640206984499543

/-! ## A215012.P9963946372441864217

`eq[A063302(n+2)%2, A272008(n+1)]+1`
-/

namespace A215012.P9963946372441864217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063302 (n + 2)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215012.P9963946372441864217

/-! ## A215012.P3285722054595440911

`A020725(eq[A005171(n+1), A272008(n+1)])`
-/

namespace A215012.P3285722054595440911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215012.P3285722054595440911

/-!
# A215013: Primes p such that theta(p)/p < theta(q)/q for all primes q > p, where theta(x) = log(x#) is Chebyshev's theta function and x# is the product of primes <= x, A034386(x).

The programs for A215013, there is no canonical definition to state claims against.
-/

/-! ## A215013.P9772795367000099360

`p?[A000961(record[A246795(n+2)])]`
-/

namespace A215013.P9772795367000099360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246795 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215013.P9772795367000099360

/-! ## A215013.P13777380281013908842

`∩[A163101(n+1), A356627(n+1)]`
-/

namespace A215013.P13777380281013908842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215013.P13777380281013908842

/-! ## A215013.P1589231934252321478

`A094802(A073534(n+2))`
-/

namespace A215013.P1589231934252321478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A073534 (n + 2)).toNat

end

end A215013.P1589231934252321478

/-! ## A215013.P16600653671491294908

`eq[A319954(n), A357618(n)]`
-/

namespace A215013.P16600653671491294908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215013.P16600653671491294908

/-!
# A215014: Numbers where any two consecutive decimal digits differ by 1 after arranging the digits in decreasing order.

The programs for A215014, there is no canonical definition to state claims against.
-/

/-! ## A215014.P8646574245525264917

`∪[A199168(n+1), A288528(n+1)]`
-/

namespace A215014.P8646574245525264917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215014.P8646574245525264917

/-! ## A215014.P8310654759474771656

`∩[A134336(n+1), A376300(n+1)]`
-/

namespace A215014.P8310654759474771656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215014.P8310654759474771656

/-! ## A215014.P15819973106336761840

`∩[A010784(n+1), A134336(n+1)]`
-/

namespace A215014.P15819973106336761840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215014.P15819973106336761840

/-! ## A215014.P9114654970324662633

`∪[A288528(n+1), A297062(n+1)]`
-/

namespace A215014.P9114654970324662633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215014.P9114654970324662633

/-! ## A215014.P9378674964950003542

`filter[A134336(n+1), A178788(#)]`
-/

namespace A215014.P9378674964950003542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A215014.P9378674964950003542

/-!
# A215015: Number of sphenic twins up to 10^n.

The programs for A215015, there is no canonical definition to state claims against.
-/

/-! ## A215015.P6732580480454404568

`A041070(n)%A107079(A019783(n))`
-/

namespace A215015.P6732580480454404568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041070 n) (A107079 (A019783 n).toNat)

end

end A215015.P6732580480454404568

/-!
# A215017: Number of genus 3 unsensed hypermaps with n darts.

The programs for A215017, there is no canonical definition to state claims against.
-/

/-! ## A215017.P8387724724384376259

`A358470(A049181(n+2))`
-/

namespace A215017.P8387724724384376259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358470 (A049181 (n + 2)).toNat

end

end A215017.P8387724724384376259

/-! ## A215017.P6125987277049181463

`A361646(A058836(n)/2)`
-/

namespace A215017.P6125987277049181463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361646 (SequenceMachineLib.roundAway ((A058836 n : ℚ) / 2)).toNat

end

end A215017.P6125987277049181463

/-! ## A215017.P7075169035629708151

`A000401(5^A309547(n))`
-/

namespace A215017.P7075169035629708151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A309547 n : ℤ))).toNat

end

end A215017.P7075169035629708151

/-! ## A215017.P605171725297570248

`A025444(xor(8, A124627(n+1)))`
-/

namespace A215017.P605171725297570248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (Int.xor 8 (A124627 (n + 1))).toNat

end

end A215017.P605171725297570248

/-!
# A215018: Number of unsensed hypermaps with n darts and any genus.

The programs for A215018, there is no canonical definition to state claims against.
-/

/-! ## A215018.P8837877574010901057

`A333217(A333492(n+1)+A003266(n+1))`
-/

namespace A215018.P8837877574010901057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (A333492 (n + 1) + A003266 (n + 1)).toNat

end

end A215018.P8837877574010901057

/-!
# A215019: Number of unrooted maps with n edges of (orientable) genus 4.

The programs for A215019, there is no canonical definition to state claims against.
-/

/-! ## A215019.P14222682269854757091

`A379438(eq[4, A055087(n)])`
-/

namespace A215019.P14222682269854757091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215019.P14222682269854757091

/-! ## A215019.P5812818774775930711

`A379438(eq[5, A122197(n+1)])`
-/

namespace A215019.P5812818774775930711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215019.P5812818774775930711

/-!
# A215020: a(n) = log_2( A182105(n) ).

The programs for A215020, the canonical program `A215020.P5100721215331730801` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215020 has offset 1).

The definition of A215020 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A215020.P4121702366331573051

`log2(A182105(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215020.P4121702366331573051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A182105 (n + 1) : ℝ)

end

end A215020.P4121702366331573051

namespace A215020

/-- `log2(A182105(n+1))` -/
def P4121702366331573051.Spec : Prop :=
  ∀ n, P4121702366331573051.a n = (A215020 (n + 1) : ℝ)

end A215020

/-! ## A215020.P5100721215331730801

`A082850(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215020

/-- `A082850(n+1)-1` -/
def P5100721215331730801.Spec : Prop :=
  ∀ n, P5100721215331730801.a n = A215020 (n + 1)

theorem P5100721215331730801.correct : P5100721215331730801.Spec := by
  intro n
  simp only [A215020, Nat.add_sub_cancel]

end A215020

/-! ## A215020.P15249076260255839117

`log2(abs(Δ[A339451(n)]))`
-/

namespace A215020.P15249076260255839117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|f1 (n + 1) - f1 n| : ℝ)

end

end A215020.P15249076260255839117

namespace A215020

/-- `log2(abs(Δ[A339451(n)]))` -/
def P15249076260255839117.Spec : Prop :=
  ∀ n, P15249076260255839117.a n = (A215020 (n + 1) : ℝ)

end A215020

/-! ## A215020.P18080747130881609736

`val(A354047(n+1), 3)`
-/

namespace A215020.P18080747130881609736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A354047 (n + 1)).toNat 3

end

end A215020.P18080747130881609736

namespace A215020

/-- `val(A354047(n+1), 3)` -/
def P18080747130881609736.Spec : Prop :=
  ∀ n, (P18080747130881609736.a n : ℤ) = A215020 (n + 1)

end A215020

/-! ## A215020.P11465417741334282962

`val(A169683(n+1), 5)`
-/

namespace A215020.P11465417741334282962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169683 (n + 1)).toNat 5

end

end A215020.P11465417741334282962

namespace A215020

/-- `val(A169683(n+1), 5)` -/
def P11465417741334282962.Spec : Prop :=
  ∀ n, (P11465417741334282962.a n : ℤ) = A215020 (n + 1)

end A215020

/-! ## A215020.P14624485540702059075

`A001222(abs(Δ[A339451(n)]))`
-/

namespace A215020.P14624485540702059075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |f1 (n + 1) - f1 n|.toNat

end

end A215020.P14624485540702059075

namespace A215020

/-- `A001222(abs(Δ[A339451(n)]))` -/
def P14624485540702059075.Spec : Prop :=
  ∀ n, P14624485540702059075.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P10654410443136247958

`A000120(A182105(n+1)-1)`
-/

namespace A215020.P10654410443136247958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A182105 (n + 1) - 1).toNat

end

end A215020.P10654410443136247958

namespace A215020

/-- `A000120(A182105(n+1)-1)` -/
def P10654410443136247958.Spec : Prop :=
  ∀ n, P10654410443136247958.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P2095888532630692056

`A182093(A182105(n+1)-1)`
-/

namespace A215020.P2095888532630692056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (A182105 (n + 1) - 1).toNat

end

end A215020.P2095888532630692056

namespace A215020

/-- `A182093(A182105(n+1)-1)` -/
def P2095888532630692056.Spec : Prop :=
  ∀ n, P2095888532630692056.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P7648321849894744552

`A256478(A182105(n+1)-1)`
-/

namespace A215020.P7648321849894744552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A182105 (n + 1) - 1).toNat

end

end A215020.P7648321849894744552

namespace A215020

/-- `A256478(A182105(n+1)-1)` -/
def P7648321849894744552.Spec : Prop :=
  ∀ n, P7648321849894744552.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P6713164412363846079

`A000005(abs(Δ[A339451(n)]))-1`
-/

namespace A215020.P6713164412363846079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |f1 (n + 1) - f1 n|.toNat - 1

end

end A215020.P6713164412363846079

namespace A215020

/-- `A000005(abs(Δ[A339451(n)]))-1` -/
def P6713164412363846079.Spec : Prop :=
  ∀ n, P6713164412363846079.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P13646557556518955329

`∑{d}[A182105(n+1), A001221(#)]`
-/

namespace A215020.P13646557556518955329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A215020.P13646557556518955329

namespace A215020

/-- `∑{d}[A182105(n+1), A001221(#)]` -/
def P13646557556518955329.Spec : Prop :=
  ∀ n, P13646557556518955329.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P18443184841727598007

`∑{e}[A182105(A000027(n+1)), #]`
-/

namespace A215020.P18443184841727598007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A215020.P18443184841727598007

namespace A215020

/-- `∑{e}[A182105(A000027(n+1)), #]` -/
def P18443184841727598007.Spec : Prop :=
  ∀ n, (P18443184841727598007.a n : ℤ) = A215020 (n + 1)

end A215020

/-! ## A215020.P16520270958494617925

`∑{e}[A182105(n+1), A028310(#)]`
-/

namespace A215020.P16520270958494617925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A028310 (Nat.factorization (f1 n).natAbs p)

end

end A215020.P16520270958494617925

namespace A215020

/-- `∑{e}[A182105(n+1), A028310(#)]` -/
def P16520270958494617925.Spec : Prop :=
  ∀ n, P16520270958494617925.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P13189742930544085432

`n-A005187(n-A234016(n))`
-/

namespace A215020.P13189742930544085432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 ((n : ℤ) - A234016 n).toNat

end

end A215020.P13189742930544085432

namespace A215020

/-- `n-A005187(n-A234016(n))` -/
def P13189742930544085432.Spec : Prop :=
  ∀ n, P13189742930544085432.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P9147927137437367039

`A001222(2*A182105(n+1))-1`
-/

namespace A215020.P9147927137437367039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A182105 (n + 1)).toNat - 1

end

end A215020.P9147927137437367039

namespace A215020

/-- `A001222(2*A182105(n+1))-1` -/
def P9147927137437367039.Spec : Prop :=
  ∀ n, P9147927137437367039.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P4791875965779261615

`A000005(2*A182105(n+1))-2`
-/

namespace A215020.P4791875965779261615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A182105 (n + 1)).toNat - 2

end

end A215020.P4791875965779261615

namespace A215020

/-- `A000005(2*A182105(n+1))-2` -/
def P4791875965779261615.Spec : Prop :=
  ∀ n, P4791875965779261615.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P9751855714209485036

`A007814(A182105(2*n+1-n))`
-/

namespace A215020.P9751855714209485036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A182105 (2 * n + 1 - n)).toNat

end

end A215020.P9751855714209485036

namespace A215020

/-- `A007814(A182105(2*n+1-n))` -/
def P9751855714209485036.Spec : Prop :=
  ∀ n, P9751855714209485036.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P10975150737540693255

`A001222(A182105(n+1)%(n+2))`
-/

namespace A215020.P10975150737540693255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A182105 (n + 1)) (n + 2 : ℤ)).toNat

end

end A215020.P10975150737540693255

namespace A215020

/-- `A001222(A182105(n+1)%(n+2))` -/
def P10975150737540693255.Spec : Prop :=
  ∀ n, P10975150737540693255.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P284014227863317904

`∑{d}[A182105(n+1), A020639(#)-1]`
-/

namespace A215020.P284014227863317904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A020639 d - 1)

end

end A215020.P284014227863317904

namespace A215020

/-- `∑{d}[A182105(n+1), A020639(#)-1]` -/
def P284014227863317904.Spec : Prop :=
  ∀ n, P284014227863317904.a n = A215020 (n + 1)

end A215020

/-! ## A215020.P13960991583480671394

`A001222(A182105(n+1))%A071044(n)`
-/

namespace A215020.P13960991583480671394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A182105 (n + 1)).toNat) (A071044 n)

end

end A215020.P13960991583480671394

namespace A215020

/-- `A001222(A182105(n+1))%A071044(n)` -/
def P13960991583480671394.Spec : Prop :=
  ∀ n, P13960991583480671394.a n = A215020 (n + 1)

end A215020

/-!
# A215021: a(n) = A118478(n)*(A118478(n)+1) divided by the product of the first n primes.

The programs for A215021, there is no canonical definition to state claims against.
-/

/-! ## A215021.P18194996493762573572

`A354411(n+1)/A002110(n+1)`
-/

namespace A215021.P18194996493762573572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354411 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)

end

end A215021.P18194996493762573572

/-! ## A215021.P1828203449210710595

`A354411(n+1)/∏[A000040(n+1)]`
-/

namespace A215021.P1828203449210710595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354411 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A215021.P1828203449210710595

/-! ## A215021.P15750809709547080592

`A215085(n+1)%(A085633(n+1)+1)`
-/

namespace A215021.P15750809709547080592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215085 (n + 1)) (A085633 (n + 1) + 1)

end

end A215021.P15750809709547080592

/-! ## A215021.P17042002918177702132

`A032742(A268218(n)+A122367(n))`
-/

namespace A215021.P17042002918177702132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A268218 n + A122367 n).toNat

end

end A215021.P17042002918177702132

/-!
# A215022: NegaFibonacci representation code for n.

The programs for A215022, there is no canonical definition to state claims against.
-/

/-! ## A215022.P11220830631687158766

`A215023(A066096(n))/10`
-/

namespace A215022.P11220830631687158766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215023 (A066096 n).toNat : ℚ) / 10

end

end A215022.P11220830631687158766

/-! ## A215022.P12592470812422465236

`A007088(A215024(n))`
-/

namespace A215022.P12592470812422465236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A215024 n).toNat

end

end A215022.P12592470812422465236

/-! ## A215022.P17899980525601225530

`A185544(2*A215024(n))`
-/

namespace A215022.P17899980525601225530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A215024 n).toNat

end

end A215022.P17899980525601225530

/-! ## A215022.P1850948115018510990

`A185544(2*A345292(floor(ϕ*n)))`
-/

namespace A215022.P1850948115018510990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A345292 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat).toNat

end

end A215022.P1850948115018510990

/-! ## A215022.P18003297269014453867

`A185544(A215024(n)+A215024(n))`
-/

namespace A215022.P18003297269014453867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A215024 n + A215024 n).toNat

end

end A215022.P18003297269014453867

/-! ## A215022.P5344508635176072695

`A341722(A214971(n+1))/10`
-/

namespace A215022.P5344508635176072695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341722 (A214971 (n + 1)).toNat : ℚ) / 10

end

end A215022.P5344508635176072695

/-!
# A215023: NegaFibonacci representation for -n.

The programs for A215023, there is no canonical definition to state claims against.
-/

/-! ## A215023.P13228989170728411136

`A007088(A215025(n))`
-/

namespace A215023.P13228989170728411136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A215025 n).toNat

end

end A215023.P13228989170728411136

/-! ## A215023.P11519943110965650317

`A341722(A198082(n))`
-/

namespace A215023.P11519943110965650317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 (A198082 n).toNat

end

end A215023.P11519943110965650317

/-! ## A215023.P16017932003799903564

`A341722(A050140(n+1))`
-/

namespace A215023.P16017932003799903564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 (A050140 (n + 1)).toNat

end

end A215023.P16017932003799903564

/-! ## A215023.P17196757743148659509

`A341722(A184586(n+1))`
-/

namespace A215023.P17196757743148659509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 (A184586 (n + 1)).toNat

end

end A215023.P17196757743148659509

/-! ## A215023.P9448944375257681988

`A341722(A190511(n+1))`
-/

namespace A215023.P9448944375257681988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 (A190511 (n + 1)).toNat

end

end A215023.P9448944375257681988

/-! ## A215023.P15620477142203727073

`A341722(A022839(n+1)-1)`
-/

namespace A215023.P15620477142203727073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 (A022839 (n + 1) - 1).toNat

end

end A215023.P15620477142203727073

/-! ## A215023.P17079113619919802582

`A341722(A284625(n+1)-2)`
-/

namespace A215023.P17079113619919802582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 (A284625 (n + 1) - 2).toNat

end

end A215023.P17079113619919802582

/-! ## A215023.P11314754966948496016

`A341722(A000201(n+1)+A000201(n+1)-(n+1))`
-/

namespace A215023.P11314754966948496016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 (A000201 (n + 1) + (A000201 (n + 1) - (n + 1 : ℤ))).toNat

end

end A215023.P11314754966948496016

/-!
# A215024: Decimal equivalent of binary number in A215022.

The programs for A215024, there is no canonical definition to state claims against.
-/

/-! ## A215024.P16969181298219298895

`A345292(floor(ϕ*n))`
-/

namespace A215024.P16969181298219298895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345292 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat

end

end A215024.P16969181298219298895

/-! ## A215024.P7221902545245184308

`filter[A345292(n), A085357(#)]`
-/

namespace A215024.P7221902545245184308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A215024.P7221902545245184308

/-! ## A215024.P16778070804594050280

`A005351(eq[0, A184616(A005351(n))])`
-/

namespace A215024.P16778070804594050280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 (A005351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215024.P16778070804594050280

/-! ## A215024.P5355387744444324034

`A005351(eq[1, A246660(A005351(n))])`
-/

namespace A215024.P5355387744444324034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 (A005351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215024.P5355387744444324034

/-! ## A215024.P3722424146403060671

`A005351(eq[A005351(n), A184617(n)])`
-/

namespace A215024.P3722424146403060671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215024.P3722424146403060671

/-!
# A215025: Decimal equivalent of binary number in A215023.

The programs for A215025, there is no canonical definition to state claims against.
-/

/-! ## A215025.P10488860327106237105

`A345291(A004956(n))`
-/

namespace A215025.P10488860327106237105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A004956 n).toNat

end

end A215025.P10488860327106237105

/-! ## A215025.P4687271802593565843

`A345291(A004957(n)-n)`
-/

namespace A215025.P4687271802593565843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A004957 n - (n : ℤ)).toNat

end

end A215025.P4687271802593565843

/-! ## A215025.P14270077825829537721

`A345291(record[(n+1)*and(1, A345291(n))])`
-/

namespace A215025.P14270077825829537721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A345291 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215025.P14270077825829537721

/-! ## A215025.P7396606276679393429

`A345291(A026351(n)-A000007(n))`
-/

namespace A215025.P7396606276679393429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A026351 n - A000007 n).toNat

end

end A215025.P7396606276679393429

/-! ## A215025.P17200075151731906615

`A345291(A026351(n)*A057427(n))`
-/

namespace A215025.P17200075151731906615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A026351 n * A057427 n).toNat

end

end A215025.P17200075151731906615

/-! ## A215025.P2580543259173507160

`A345291(A057428(n)²*A026351(n))`
-/

namespace A215025.P2580543259173507160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A057428 n ^ 2 * A026351 n).toNat

end

end A215025.P2580543259173507160

/-! ## A215025.P15921748656575831858

`A345291(A026351(n)+A057427(n)-1)`
-/

namespace A215025.P15921748656575831858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A026351 n + (A057427 n - 1)).toNat

end

end A215025.P15921748656575831858

/-! ## A215025.P6706428689332227176

`A345291(A026351(n)-(A057428(n)+1))`
-/

namespace A215025.P6706428689332227176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A026351 n - (A057428 n + 1)).toNat

end

end A215025.P6706428689332227176

/-! ## A215025.P266891346616860206

`A345291(A026351(n)-(1-A057427(n)))`
-/

namespace A215025.P266891346616860206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A026351 n - (1 - A057427 n)).toNat

end

end A215025.P266891346616860206

/-! ## A215025.P2280494172575720551

`A345291(A026351(n)-1-A057428(n))`
-/

namespace A215025.P2280494172575720551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A026351 n - 1 - A057428 n).toNat

end

end A215025.P2280494172575720551

/-! ## A215025.P6399996255968414698

`A345291(A026351(n)%A069129(n+1))`
-/

namespace A215025.P6399996255968414698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (Int.tmod (A026351 n) (A069129 (n + 1))).toNat

end

end A215025.P6399996255968414698

/-! ## A215025.P14019767542895115303

`A345291(A026351(n)*A057428(n)*A057428(n))`
-/

namespace A215025.P14019767542895115303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 (A026351 n * A057428 n * A057428 n).toNat

end

end A215025.P14019767542895115303

/-! ## A215025.P1595459584142072710

`filter[A345291(n), A085357(#)]`
-/

namespace A215025.P1595459584142072710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A215025.P1595459584142072710

/-! ## A215025.P18069390741780397258

`A184617(eq[A005351(2*n), A184617(2*n)])`
-/

namespace A215025.P18069390741780397258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215025.P18069390741780397258

/-!
# A215026: Reluctant Fibonacci sequence.

The programs for A215026, there is no canonical definition to state claims against.
-/

/-! ## A215026.P8825197351243760678

`A246028(eq[1, Δ[A227349(n)]])`
-/

namespace A215026.P8825197351243760678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215026.P8825197351243760678

/-! ## A215026.P7512242718502275933

`A277822(∑[A297328(A106547(n+1))])`
-/

namespace A215026.P7512242718502275933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A106547 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215026.P7512242718502275933

/-! ## A215026.P9112926212042440676

`A207624(gcd(A120100(n+1), A230874(n+1)))`
-/

namespace A215026.P9112926212042440676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207624 (Int.gcd (A120100 (n + 1)) (A230874 (n + 1)))

end

end A215026.P9112926212042440676

/-! ## A215026.P16389478286591584375

`A000120(p?[A078343(A162190(n))])`
-/

namespace A215026.P16389478286591584375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (A162190 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215026.P16389478286591584375

/-! ## A215026.P9003763824016485423

`gcd(A151570(n), A345914(A314547(n)))`
-/

namespace A215026.P9003763824016485423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151570 n) (A345914 (A314547 n).toNat)

end

end A215026.P9003763824016485423

/-!
# A215027: a(n+1) = (concatenation of n and n+1) - a(n), a(0) = 0.

The programs for A215027, the canonical program `A215027.P10198509170446300710` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215027 has offset 0).

The definition of A215027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215027.P10198509170446300710

`A127421(n)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215027

/-- `A127421(n)-a(n-1)` -/
def P10198509170446300710.Spec : Prop :=
  ∀ n, P10198509170446300710.a n = A215027 n

theorem P10198509170446300710.correct : P10198509170446300710.Spec := by
  intro n
  simp only [A215027]

end A215027

/-!
# A215028: a(1) = 1; for n >= 1, a(n+1) = (concatenation of n+1 and n) - a(n).

The programs for A215028, the canonical program `A215028.P4106407671865329416` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215028 has offset 1).

The definition of A215028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215028.P6018546018820746466

`A127423(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A215028.P6018546018820746466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127423 (n + 1) - a (n - 1)

end

end A215028.P6018546018820746466

namespace A215028

/-- `A127423(n+1)-a(n-1)` -/
def P6018546018820746466.Spec : Prop :=
  ∀ n, P6018546018820746466.a n = A215028 (n + 1)

end A215028

/-! ## A215028.P17370123911257954708

`abs(∑[A033999(n)*A127423(n+1)])`
-/

namespace A215028.P17370123911257954708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A127423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A215028.P17370123911257954708

namespace A215028

/-- `abs(∑[A033999(n)*A127423(n+1)])` -/
def P17370123911257954708.Spec : Prop :=
  ∀ n, P17370123911257954708.a n = A215028 (n + 1)

end A215028

/-! ## A215028.P4106407671865329416

`2-(a(n-1)-(A111708(n)+A004273(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215028

/-- `2-(a(n-1)-(A111708(n)+A004273(n)))` -/
def P4106407671865329416.Spec : Prop :=
  ∀ n, P4106407671865329416.a n = A215028 (n + 1)

theorem P4106407671865329416.correct : P4106407671865329416.Spec := by
  intro n
  simp only [A215028, Nat.add_sub_cancel]

end A215028

/-! ## A215028.P17914659599805300568

`A248378(A005408(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A215028.P17914659599805300568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248378 (A005408 (n - 1)).toNat - a (n - 1)

end

end A215028.P17914659599805300568

namespace A215028

/-- `A248378(A005408(n-1))-a(n-1)` -/
def P17914659599805300568.Spec : Prop :=
  ∀ n, P17914659599805300568.a n = A215028 (n + 1)

end A215028

/-! ## A215028.P3476385827538381980

`A084854(∑[n]+n)-a(n-1)` with `a(0)=1`
-/

namespace A215028.P3476385827538381980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084854 (∑ j ∈ Finset.range (n + 1), f1 j + n) - a (n - 1)

end

end A215028.P3476385827538381980

namespace A215028

/-- `A084854(∑[n]+n)-a(n-1)` -/
def P3476385827538381980.Spec : Prop :=
  ∀ n, P3476385827538381980.a n = A215028 (n + 1)

end A215028

/-!
# A215029: To get a(n), start with m=n, let p = largest prime < m, set m = m-p if m>0, or m=m+p if m <= 0; repeat until p=2 has been processed; set a(n) = m.

The programs for A215029, there is no canonical definition to state claims against.
-/

/-! ## A215029.P940910961677178476

`A010060(n+2)-A097807(A001539(2*n))`
-/

namespace A215029.P940910961677178476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 2) - A097807 (A001539 (2 * n)).toNat

end

end A215029.P940910961677178476

/-! ## A215029.P2795726243266235610

`A281460(n)-A008683(A046631(n))`
-/

namespace A215029.P2795726243266235610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281460 n - A008683 (A046631 n).toNat

end

end A215029.P2795726243266235610

/-! ## A215029.P11292251803524565464

`A118953(A327320(n+1))+A070747(n)`
-/

namespace A215029.P11292251803524565464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118953 (A327320 (n + 1)).toNat + A070747 n

end

end A215029.P11292251803524565464

/-! ## A215029.P3854608256124480878

`A281460(n)+A008683(2*A046631(n))`
-/

namespace A215029.P3854608256124480878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281460 n + A008683 (2 * A046631 n).toNat

end

end A215029.P3854608256124480878

/-! ## A215029.P7070849221106027338

`A033999(A296245(n))+A113090(n)²%3`
-/

namespace A215029.P7070849221106027338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A296245 n).toNat + Int.tmod (A113090 n ^ 2) 3

end

end A215029.P7070849221106027338

/-!
# A215030: a(n) = A215029(A000040(n)), where A000040(n) is the n-th prime.

The programs for A215030, the canonical program `A215030.P16388215424714916452` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215030 has offset 1).

The definition of A215030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215030.P9808220413397742006

`A215029(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215030.P9808220413397742006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A000040 (n + 1)).toNat

end

end A215030.P9808220413397742006

namespace A215030

/-- `A215029(A000040(n+1))` -/
def P9808220413397742006.Spec : Prop :=
  ∀ n, P9808220413397742006.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P8473676718485381159

`and(char[2*n]+1, ∑[A008864(n+1)])`
-/

namespace A215030.P8473676718485381159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A215030.P8473676718485381159

namespace A215030

/-- `and(char[2*n]+1, ∑[A008864(n+1)])` -/
def P8473676718485381159.Spec : Prop :=
  ∀ n, P8473676718485381159.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P5607775974432101354

`A340867(A141310(n))`
-/

namespace A215030.P5607775974432101354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340867 (A141310 n).toNat

end

end A215030.P5607775974432101354

namespace A215030

/-- `A340867(A141310(n))` -/
def P5607775974432101354.Spec : Prop :=
  ∀ n, P5607775974432101354.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P2171930578359407369

`A023662(n+1)%A105397(n)`
-/

namespace A215030.P2171930578359407369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023662 (n + 1)) (A105397 n)

end

end A215030.P2171930578359407369

namespace A215030

/-- `A023662(n+1)%A105397(n)` -/
def P2171930578359407369.Spec : Prop :=
  ∀ n, P2171930578359407369.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P10461103416456238602

`A316322(n+1)%A105397(n)`
-/

namespace A215030.P10461103416456238602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316322 (n + 1)) (A105397 n)

end

end A215030.P10461103416456238602

namespace A215030

/-- `A316322(n+1)%A105397(n)` -/
def P10461103416456238602.Spec : Prop :=
  ∀ n, P10461103416456238602.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P5545792361507725261

`and(A023662(n+1), A176040(n))`
-/

namespace A215030.P5545792361507725261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023662 (n + 1)) (A176040 n)

end

end A215030.P5545792361507725261

namespace A215030

/-- `and(A023662(n+1), A176040(n))` -/
def P5545792361507725261.Spec : Prop :=
  ∀ n, P5545792361507725261.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P16388215424714916452

`and(A066033(n+1), A176040(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A215030

/-- `and(A066033(n+1), A176040(n))` -/
def P16388215424714916452.Spec : Prop :=
  ∀ n, P16388215424714916452.a n = A215030 (n + 1)

theorem P16388215424714916452.correct : P16388215424714916452.Spec := by
  intro n
  simp only [A215030, Nat.add_sub_cancel]

end A215030

/-! ## A215030.P7438912135868295055

`and(A176040(n), A316322(n+1))`
-/

namespace A215030.P7438912135868295055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176040 n) (A316322 (n + 1))

end

end A215030.P7438912135868295055

namespace A215030

/-- `and(A176040(n), A316322(n+1))` -/
def P7438912135868295055.Spec : Prop :=
  ∀ n, P7438912135868295055.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P1044441750801143379

`and(∑[A008864(n+1)], A177704(2*n+3))`
-/

namespace A215030.P1044441750801143379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A177704 (2 * n + 3))

end

end A215030.P1044441750801143379

namespace A215030

/-- `and(∑[A008864(n+1)], A177704(2*n+3))` -/
def P1044441750801143379.Spec : Prop :=
  ∀ n, P1044441750801143379.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P6951191818083599793

`A215029(A008578(n+2))`
-/

namespace A215030.P6951191818083599793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A008578 (n + 2)).toNat

end

end A215030.P6951191818083599793

namespace A215030

/-- `A215029(A008578(n+2))` -/
def P6951191818083599793.Spec : Prop :=
  ∀ n, P6951191818083599793.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P1429148643492878134

`A215029(A182986(n+2))`
-/

namespace A215030.P1429148643492878134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A182986 (n + 2)).toNat

end

end A215030.P1429148643492878134

namespace A215030

/-- `A215029(A182986(n+2))` -/
def P1429148643492878134.Spec : Prop :=
  ∀ n, P1429148643492878134.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P6258252626572918953

`A215029(record[A006530(n+2)])`
-/

namespace A215030.P6258252626572918953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215030.P6258252626572918953

namespace A215030

/-- `A215029(record[A006530(n+2)])` -/
def P6258252626572918953.Spec : Prop :=
  ∀ n, P6258252626572918953.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P12644548556749904229

`A215029(record[A020639(n+2)])`
-/

namespace A215030.P12644548556749904229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215030.P12644548556749904229

namespace A215030

/-- `A215029(record[A020639(n+2)])` -/
def P12644548556749904229.Spec : Prop :=
  ∀ n, P12644548556749904229.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P7357035752188367381

`A215029(A006093(n+1)+1)`
-/

namespace A215030.P7357035752188367381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A006093 (n + 1) + 1).toNat

end

end A215030.P7357035752188367381

namespace A215030

/-- `A215029(A006093(n+1)+1)` -/
def P7357035752188367381.Spec : Prop :=
  ∀ n, P7357035752188367381.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P2726262568130118520

`A215029(eq[2, A000005(n+1)]+1)`
-/

namespace A215030.P2726262568130118520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A215030.P2726262568130118520

namespace A215030

/-- `A215029(eq[2, A000005(n+1)]+1)` -/
def P2726262568130118520.Spec : Prop :=
  ∀ n, P2726262568130118520.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P3510512995733348329

`A215029(eq[n, A000010(n+1)]+1)`
-/

namespace A215030.P3510512995733348329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A215030.P3510512995733348329

namespace A215030

/-- `A215029(eq[n, A000010(n+1)]+1)` -/
def P3510512995733348329.Spec : Prop :=
  ∀ n, P3510512995733348329.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P13511198440116116812

`A215029(A007504(n+1)-A007504(n))`
-/

namespace A215030.P13511198440116116812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A007504 (n + 1) - A007504 n).toNat

end

end A215030.P13511198440116116812

namespace A215030

/-- `A215029(A007504(n+1)-A007504(n))` -/
def P13511198440116116812.Spec : Prop :=
  ∀ n, P13511198440116116812.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P11329523076072059816

`A007877(A008347(n+1))`
-/

namespace A215030.P11329523076072059816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A008347 (n + 1)).toNat

end

end A215030.P11329523076072059816

namespace A215030

/-- `A007877(A008347(n+1))` -/
def P11329523076072059816.Spec : Prop :=
  ∀ n, P11329523076072059816.a n = A215030 (n + 1)

end A215030

/-! ## A215030.P18265889185623612100

`A007877(A126084(n+1))`
-/

namespace A215030.P18265889185623612100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A126084 (n + 1)).toNat

end

end A215030.P18265889185623612100

namespace A215030

/-- `A007877(A126084(n+1))` -/
def P18265889185623612100.Spec : Prop :=
  ∀ n, P18265889185623612100.a n = A215030 (n + 1)

end A215030

/-!
# A215031: Primes p such that A215029(p) = 2.

The programs for A215031, there is no canonical definition to state claims against.
-/

/-! ## A215031.P6228109660994727536

`p?[lt[1, A215029(n)]]`
-/

namespace A215031.P6228109660994727536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215031.P6228109660994727536

/-! ## A215031.P18295400372520105845

`p?[A057811(4*n+1)+1]`
-/

namespace A215031.P18295400372520105845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (4 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215031.P18295400372520105845

/-! ## A215031.P7336157612063267044

`A000040(eq[2, A340867(n)])`
-/

namespace A215031.P7336157612063267044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215031.P7336157612063267044

/-! ## A215031.P3542378259861564053

`eq[A005127(n), A215029(n)]`
-/

namespace A215031.P3542378259861564053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215031.P3542378259861564053

/-! ## A215031.P8629172097755756071

`eq[A005128(n), A215029(n)]`
-/

namespace A215031.P8629172097755756071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215031.P8629172097755756071

/-! ## A215031.P15890476112422302549

`eq[A007012(n), A215029(n)]`
-/

namespace A215031.P15890476112422302549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215031.P15890476112422302549

/-! ## A215031.P12127173236040787632

`eq[A062830(n), A215029(n)]`
-/

namespace A215031.P12127173236040787632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215031.P12127173236040787632

/-! ## A215031.P10563855050574131035

`eq[A215029(n), A322366(n)]`
-/

namespace A215031.P10563855050574131035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215031.P10563855050574131035

/-! ## A215031.P18359088298256796479

`A000040(eq[2, A008347(n)%4])`
-/

namespace A215031.P18359088298256796479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215031.P18359088298256796479

/-! ## A215031.P15442070496889400680

`A000040(eq[2, A126084(n)%4])`
-/

namespace A215031.P15442070496889400680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126084 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215031.P15442070496889400680

/-!
# A215032: Numbers k such that A215029(k) = -1.

The programs for A215032, there is no canonical definition to state claims against.
-/

/-! ## A215032.P4650413654944858815

`lt[A215029(n), 0]`
-/

namespace A215032.P4650413654944858815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215032.P4650413654944858815

/-! ## A215032.P8889634333261795454

`A057811(record[xor(3, n)])`
-/

namespace A215032.P8889634333261795454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A215032.P8889634333261795454

/-! ## A215032.P8300937633390088622

`A057811(4*n+3)`
-/

namespace A215032.P8300937633390088622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (4 * n + 3)

end

end A215032.P8300937633390088622

/-! ## A215032.P2524986176800789954

`record[and(n+4, A215029(n+4))]`
-/

namespace A215032.P2524986176800789954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 4 : ℤ) (A215029 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215032.P2524986176800789954

/-! ## A215032.P611177110234955030

`A057811(A016825(n))+1`
-/

namespace A215032.P611177110234955030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (A016825 n).toNat + 1

end

end A215032.P611177110234955030

/-! ## A215032.P6903498722890215758

`lcm(2, A057811(A004767(n)))`
-/

namespace A215032.P6903498722890215758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A057811 (A004767 n).toNat)

end

end A215032.P6903498722890215758

/-! ## A215032.P1944061271722160576

`eq[A215029(n), A260196(n)]`
-/

namespace A215032.P1944061271722160576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215032.P1944061271722160576

/-! ## A215032.P12834045126804543670

`A057811(A008586(n)+2)+1`
-/

namespace A215032.P12834045126804543670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (A008586 n + 2).toNat + 1

end

end A215032.P12834045126804543670

/-! ## A215032.P8018114994931164630

`A000027(eq[0, A215029(n)+1])`
-/

namespace A215032.P8018114994931164630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215032.P8018114994931164630

/-! ## A215032.P14409042646086659593

`eq[A135347(n+1), A215029(n)]`
-/

namespace A215032.P14409042646086659593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215032.P14409042646086659593

/-!
# A215033: Numbers k such that A215029(k) = 0.

The programs for A215033, there is no canonical definition to state claims against.
-/

/-! ## A215033.P14395736406304790065

`eq[0, A215029(n)]`
-/

namespace A215033.P14395736406304790065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215033.P14395736406304790065

/-! ## A215033.P2407880218875373481

`lt[abs(A215029(2*n-n)), 1]`
-/

namespace A215033.P2407880218875373481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215029 (2 * n - n)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215033.P2407880218875373481

/-! ## A215033.P865451671730660898

`lt[abs(A215029(abs(1-n))), 1]-1`
-/

namespace A215033.P865451671730660898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A215029 |1 - (n : ℤ)|.toNat)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A215033.P865451671730660898

/-! ## A215033.P6692414934335858664

`record[(n+1)*(1-A215029(n+1)²)]`
-/

namespace A215033.P6692414934335858664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A215029 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215033.P6692414934335858664

/-! ## A215033.P18264776548242623263

`lt[A215029(n)², A054977(n)]`
-/

namespace A215033.P18264776548242623263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215033.P18264776548242623263

/-! ## A215033.P12382313413396323972

`A023443(lt[abs(A215029(n)), 1]+1)`
-/

namespace A215033.P12382313413396323972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215029 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A215033.P12382313413396323972

/-! ## A215033.P11241438917943546481

`lt[A215029(A023443(n+1))², 1]`
-/

namespace A215033.P11241438917943546481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A023443 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215033.P11241438917943546481

/-! ## A215033.P13329381154862689049

`lt[(A000040(n+1)*A215029(n))², 1]`
-/

namespace A215033.P13329381154862689049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A215029 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215033.P13329381154862689049

/-! ## A215033.P8240166813700314502

`lt[abs(A215029(n))*A000040(n+2), 2]`
-/

namespace A215033.P8240166813700314502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215029 n| * A000040 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215033.P8240166813700314502

/-! ## A215033.P4474704437949981527

`lt[(A001222(n+1)*A215029(n))², 1]`
-/

namespace A215033.P4474704437949981527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) * A215029 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215033.P4474704437949981527

/-!
# A215034: Numbers k such that A215029(k) = 1.

The programs for A215034, there is no canonical definition to state claims against.
-/

/-! ## A215034.P17981059331124378218

`eq[1, A215029(n)]`
-/

namespace A215034.P17981059331124378218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215034.P17981059331124378218

/-! ## A215034.P9670715811490859656

`lt[0, A215029(n+1)%2]+1`
-/

namespace A215034.P9670715811490859656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215029 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A215034.P9670715811490859656

/-! ## A215034.P291677967039705750

`lt[0, A215029(gcd(n, 2*n))%2]`
-/

namespace A215034.P291677967039705750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215029 (Nat.gcd n (2 * n))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A215034.P291677967039705750

/-! ## A215034.P5229351470115105268

`lt[0, A215029(or(n, and(1, n)))%2]`
-/

namespace A215034.P5229351470115105268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215029 (Nat.lor n (Nat.land 1 n))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A215034.P5229351470115105268

/-! ## A215034.P2216132820095233898

`record[xor(A141310(n), A215029(n))]`
-/

namespace A215034.P2216132820095233898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141310 n) (A215029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215034.P2216132820095233898

/-! ## A215034.P2716701236280788984

`lt[(A054977(n)-A215029(n))², 1]`
-/

namespace A215034.P2716701236280788984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 n - A215029 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215034.P2716701236280788984

/-! ## A215034.P10069028946029314102

`record[xor(A000265(n+1), A215029(n))]`
-/

namespace A215034.P10069028946029314102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000265 (n + 1)) (A215029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215034.P10069028946029314102

/-! ## A215034.P12866112729409233100

`record[xor(A060819(n+1), A215029(n))]`
-/

namespace A215034.P12866112729409233100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060819 (n + 1)) (A215029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215034.P12866112729409233100

/-! ## A215034.P17925882030091721933

`A056239(p?[A000040(n+1)*A215029(n+1)])`
-/

namespace A215034.P17925882030091721933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A215029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215034.P17925882030091721933

/-!
# A215035: Numbers k such that A215029(k) = 2.

The programs for A215035, there is no canonical definition to state claims against.
-/

/-! ## A215035.P10782116031919773920

`lt[1, A215029(n)]`
-/

namespace A215035.P10782116031919773920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A215035.P10782116031919773920

/-! ## A215035.P17135271288580474420

`A057811(4*n+1)+1`
-/

namespace A215035.P17135271288580474420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (4 * n + 1) + 1

end

end A215035.P17135271288580474420

/-! ## A215035.P4094591678564624265

`eq[2, A215029(n+1)]+1`
-/

namespace A215035.P4094591678564624265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A215035.P4094591678564624265

/-! ## A215035.P4054695665247961148

`A000027(eq[2, A215029(n)])`
-/

namespace A215035.P4054695665247961148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215035.P4054695665247961148

/-! ## A215035.P12945483599179316240

`eq[2, A215029(A028310(n))]`
-/

namespace A215035.P12945483599179316240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215035.P12945483599179316240

/-! ## A215035.P9318049649306991940

`A254667(eq[2, A215029(n)])`
-/

namespace A215035.P9318049649306991940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215035.P9318049649306991940

/-! ## A215035.P10929091377799020706

`eq[A010141(n), A215029(n)]`
-/

namespace A215035.P10929091377799020706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215035.P10929091377799020706

/-! ## A215035.P1265540477663734658

`eq[A040166(n), A215029(n)]`
-/

namespace A215035.P1265540477663734658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215035.P1265540477663734658

/-! ## A215035.P388593188673076233

`eq[A040357(n), A215029(n)]`
-/

namespace A215035.P388593188673076233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215035.P388593188673076233

/-!
# A215036: 2 followed by "1,0" repeated.

The programs for A215036, the canonical program `A215036.P14806354982836550511` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215036 has offset 1).

The definition of A215036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215036.P14806354982836550511

`a(n-2)` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215036

/-- `a(n-2)` -/
def P14806354982836550511.Spec : Prop :=
  ∀ n, (P14806354982836550511.a n : ℤ) = A215036 (n + 1)

theorem P14806354982836550511.correct : P14806354982836550511.Spec := by
  intro n
  simp only [A215036, Nat.add_sub_cancel]

end A215036

/-!
# A215037: a(n) = Sum_{k=0..n} fibonomial(k+3,3), n >= 0.

The programs for A215037, the canonical program `A215037.P8350600378347623900` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215037 has offset 0).

The definition of A215037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215037.P8350600378347623900

`4*a(n-1)+3*a(n-2)-9*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=19, a(3)=79, a(4)=339`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215037

/-- `4*a(n-1)+3*a(n-2)-9*a(n-3)+2*a(n-4)+a(n-5)` -/
def P8350600378347623900.Spec : Prop :=
  ∀ n, P8350600378347623900.a n = A215037 n

theorem P8350600378347623900.correct : P8350600378347623900.Spec := by
  intro n
  simp only [A215037]

end A215037

/-! ## A215037.P3258652783267853679

`(A000045(n+3)²*A000045(n+2)+(-1)^n*A008346(n+1))/4`
-/

namespace A215037.P3258652783267853679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) ^ 2 * A000045 (n + 2) + (-1) ^ n * A008346 (n + 1) : ℚ) / 4

end

end A215037.P3258652783267853679

namespace A215037

/-- `(A000045(n+3)²*A000045(n+2)+(-1)^n*A008346(n+1))/4` -/
def P3258652783267853679.Spec : Prop :=
  ∀ n, P3258652783267853679.a n = (A215037 n : ℚ)

end A215037

/-! ## A215037.P13544678843964835699

`(A000045(n+3)²*A000045(n+2)+(-1)^n*A000045(n+1)-1)/4`
-/

namespace A215037.P13544678843964835699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) ^ 2 * A000045 (n + 2) + (-1) ^ n * A000045 (n + 1) - 1 : ℚ) / 4

end

end A215037.P13544678843964835699

namespace A215037

/-- `(A000045(n+3)²*A000045(n+2)+(-1)^n*A000045(n+1)-1)/4` -/
def P13544678843964835699.Spec : Prop :=
  ∀ n, P13544678843964835699.a n = (A215037 n : ℚ)

end A215037

/-! ## A215037.P5794550070879494321

`(A000045(3*n+8)+4*(-1)^n*A000045(n+1)-5)/20`
-/

namespace A215037.P5794550070879494321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n + 8) + 4 * (-1) ^ n * A000045 (n + 1) - 5 : ℚ) / 20

end

end A215037.P5794550070879494321

namespace A215037

/-- `(A000045(3*n+8)+4*(-1)^n*A000045(n+1)-5)/20` -/
def P5794550070879494321.Spec : Prop :=
  ∀ n, P5794550070879494321.a n = (A215037 n : ℚ)

end A215037

/-! ## A215037.P12474292837210089337

`∑[ogf(1/(1-3x-6x^2+3x^3+x^4))]`
-/

namespace A215037.P12474292837210089337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -6, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215037.P12474292837210089337

namespace A215037

/-- `∑[ogf(1/(1-3x-6x^2+3x^3+x^4))]` -/
def P12474292837210089337.Spec : Prop :=
  ∀ n, P12474292837210089337.a n = A215037 n

end A215037

/-! ## A215037.P4542069586694507198

`ogf(-1/(-1+4x+3x^2-9x^3+2x^4+x^5))`
-/

namespace A215037.P4542069586694507198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -3, 9, -2, -1] n

end

end A215037.P4542069586694507198

namespace A215037

/-- `ogf(-1/(-1+4x+3x^2-9x^3+2x^4+x^5))` -/
def P4542069586694507198.Spec : Prop :=
  ∀ n, P4542069586694507198.a n = A215037 n

end A215037

/-! ## A215037.P11589629717029162620

`∑[A001655(n)]`
-/

namespace A215037.P11589629717029162620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215037.P11589629717029162620

namespace A215037

/-- `∑[A001655(n)]` -/
def P11589629717029162620.Spec : Prop :=
  ∀ n, P11589629717029162620.a n = A215037 n

end A215037

/-! ## A215037.P7543402658261282797

`∑[∑[A066258(n+1)]]`
-/

namespace A215037.P7543402658261282797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215037.P7543402658261282797

namespace A215037

/-- `∑[∑[A066258(n+1)]]` -/
def P7543402658261282797.Spec : Prop :=
  ∀ n, P7543402658261282797.a n = A215037 n

end A215037

/-! ## A215037.P1202258391031296971

`∑[A065563(n+1)/2]`
-/

namespace A215037.P1202258391031296971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065563 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215037.P1202258391031296971

namespace A215037

/-- `∑[A065563(n+1)/2]` -/
def P1202258391031296971.Spec : Prop :=
  ∀ n, P1202258391031296971.a n = (A215037 n : ℚ)

end A215037

/-! ## A215037.P5261330241014088158

`A215038(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A215037.P5261330241014088158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215038 (n + 1) - a (n - 1)

end

end A215037.P5261330241014088158

namespace A215037

/-- `A215038(n+1)-a(n-1)` -/
def P5261330241014088158.Spec : Prop :=
  ∀ n, P5261330241014088158.a n = A215037 n

end A215037

/-! ## A215037.P9604845779006968622

`∑[∑[A000045(n+1)*A001654(n+1)]]`
-/

namespace A215037.P9604845779006968622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001654 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215037.P9604845779006968622

namespace A215037

/-- `∑[∑[A000045(n+1)*A001654(n+1)]]` -/
def P9604845779006968622.Spec : Prop :=
  ∀ n, P9604845779006968622.a n = A215037 n

end A215037

/-! ## A215037.P12072202383938290779

`∑[∑[A001654(n+1)*A212804(n+2)]]`
-/

namespace A215037.P12072202383938290779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) * A212804 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215037.P12072202383938290779

namespace A215037

/-- `∑[∑[A001654(n+1)*A212804(n+2)]]` -/
def P12072202383938290779.Spec : Prop :=
  ∀ n, P12072202383938290779.a n = A215037 n

end A215037

/-! ## A215037.P7414126878200700353

`∑[∑[A000045(n+1)²*A000045(n+2)]]`
-/

namespace A215037.P7414126878200700353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 * A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215037.P7414126878200700353

namespace A215037

/-- `∑[∑[A000045(n+1)²*A000045(n+2)]]` -/
def P7414126878200700353.Spec : Prop :=
  ∀ n, P7414126878200700353.a n = A215037 n

end A215037

/-! ## A215037.P2030537736047088574

`∑[∑[A000045(n+1)*A006498(2*n+1)]]`
-/

namespace A215037.P2030537736047088574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A006498 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215037.P2030537736047088574

namespace A215037

/-- `∑[∑[A000045(n+1)*A006498(2*n+1)]]` -/
def P2030537736047088574.Spec : Prop :=
  ∀ n, P2030537736047088574.a n = A215037 n

end A215037

/-!
# A215038: Partial sums of A066259: a(n) = Sum_{k=0..n} F(k+1)^2*F(k), n>=0, with the Fibonacci numbers F=A000045.

The programs for A215038, the canonical program `A215038.P12308997747420169802` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215038 has offset 0).

The definition of A215038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215038.P12308997747420169802

`(A066258(n+1)-(-1)^n*A008346(n))/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A215038

/-- `(A066258(n+1)-(-1)^n*A008346(n))/2` -/
def P12308997747420169802.Spec : Prop :=
  ∀ n, P12308997747420169802.a n = (A215038 n : ℚ)

end A215038

/-! ## A215038.P2389559561979347108

`(A000045(n+2)*A000045(n+1)²-(-1)^n*A000045(n)-1)/2`
-/

namespace A215038.P2389559561979347108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) * A000045 (n + 1) ^ 2 - (-1) ^ n * A000045 n - 1 : ℚ) / 2

end

end A215038.P2389559561979347108

namespace A215038

/-- `(A000045(n+2)*A000045(n+1)²-(-1)^n*A000045(n)-1)/2` -/
def P2389559561979347108.Spec : Prop :=
  ∀ n, P2389559561979347108.a n = (A215038 n : ℚ)

end A215038

/-! ## A215038.P11032444301134217519

`∑[A066259(round(sqrt(n²+1)))]-1`
-/

namespace A215038.P11032444301134217519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A215038.P11032444301134217519

namespace A215038

/-- `∑[A066259(round(sqrt(n²+1)))]-1` -/
def P11032444301134217519.Spec : Prop :=
  ∀ n, P11032444301134217519.a n = A215038 n

end A215038

/-! ## A215038.P12631361175395959809

`∑[∑[A212804(n)]*A001654(n)]`
-/

namespace A215038.P12631361175395959809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P12631361175395959809

namespace A215038

/-- `∑[∑[A212804(n)]*A001654(n)]` -/
def P12631361175395959809.Spec : Prop :=
  ∀ n, P12631361175395959809.a n = A215038 n

end A215038

/-! ## A215038.P14289176245171492526

`∑[A000045(n)*Δ[A001654(n)]]`
-/

namespace A215038.P14289176245171492526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P14289176245171492526

namespace A215038

/-- `∑[A000045(n)*Δ[A001654(n)]]` -/
def P14289176245171492526.Spec : Prop :=
  ∀ n, P14289176245171492526.a n = A215038 n

end A215038

/-! ## A215038.P1502505164785549471

`∑[A000045(n+1)*A001654(n)]`
-/

namespace A215038.P1502505164785549471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P1502505164785549471

namespace A215038

/-- `∑[A000045(n+1)*A001654(n)]` -/
def P1502505164785549471.Spec : Prop :=
  ∀ n, P1502505164785549471.a n = A215038 n

end A215038

/-! ## A215038.P10808411895120227410

`∑[A000045(n)*A007598(n+1)]`
-/

namespace A215038.P10808411895120227410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A007598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P10808411895120227410

namespace A215038

/-- `∑[A000045(n)*A007598(n+1)]` -/
def P10808411895120227410.Spec : Prop :=
  ∀ n, P10808411895120227410.a n = A215038 n

end A215038

/-! ## A215038.P14438286453710315072

`∑[A000045(n)*A006498(2*n)]`
-/

namespace A215038.P14438286453710315072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A006498 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P14438286453710315072

namespace A215038

/-- `∑[A000045(n)*A006498(2*n)]` -/
def P14438286453710315072.Spec : Prop :=
  ∀ n, P14438286453710315072.a n = A215038 n

end A215038

/-! ## A215038.P7688504688062901963

`∑[∑[A212804(n)]²*A000045(n)]`
-/

namespace A215038.P7688504688062901963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P7688504688062901963

namespace A215038

/-- `∑[∑[A212804(n)]²*A000045(n)]` -/
def P7688504688062901963.Spec : Prop :=
  ∀ n, P7688504688062901963.a n = A215038 n

end A215038

/-! ## A215038.P9043669973070711462

`∑[A000045(n+1)²*A000045(n)]`
-/

namespace A215038.P9043669973070711462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P9043669973070711462

namespace A215038

/-- `∑[A000045(n+1)²*A000045(n)]` -/
def P9043669973070711462.Spec : Prop :=
  ∀ n, P9043669973070711462.a n = A215038 n

end A215038

/-! ## A215038.P5007907593791057344

`∑[(A000071(n+1)+1)*A001654(n)]`
-/

namespace A215038.P5007907593791057344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P5007907593791057344

namespace A215038

/-- `∑[(A000071(n+1)+1)*A001654(n)]` -/
def P5007907593791057344.Spec : Prop :=
  ∀ n, P5007907593791057344.a n = A215038 n

end A215038

/-! ## A215038.P18351307029428307198

`∑[A007598(n+1)*A212804(n+1)]`
-/

namespace A215038.P18351307029428307198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P18351307029428307198

namespace A215038

/-- `∑[A007598(n+1)*A212804(n+1)]` -/
def P18351307029428307198.Spec : Prop :=
  ∀ n, P18351307029428307198.a n = A215038 n

end A215038

/-! ## A215038.P13621976365703076803

`∑[A001654(n)*A103609(2*(n+1))]`
-/

namespace A215038.P13621976365703076803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A103609 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P13621976365703076803

namespace A215038

/-- `∑[A001654(n)*A103609(2*(n+1))]` -/
def P13621976365703076803.Spec : Prop :=
  ∀ n, P13621976365703076803.a n = A215038 n

end A215038

/-! ## A215038.P2734988235917369788

`∑[A000045(n)*A152192(2*(n+1))]`
-/

namespace A215038.P2734988235917369788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A152192 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P2734988235917369788

namespace A215038

/-- `∑[A000045(n)*A152192(2*(n+1))]` -/
def P2734988235917369788.Spec : Prop :=
  ∀ n, P2734988235917369788.a n = A215038 n

end A215038

/-! ## A215038.P12489237618251967850

`∑[A175395(n+1)/2*A000045(n)]`
-/

namespace A215038.P12489237618251967850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175395 (n + 1) : ℚ) / 2 * (A000045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P12489237618251967850

namespace A215038

/-- `∑[A175395(n+1)/2*A000045(n)]` -/
def P12489237618251967850.Spec : Prop :=
  ∀ n, P12489237618251967850.a n = (A215038 n : ℚ)

end A215038

/-! ## A215038.P12361965256198935303

`∑[lcm(A001654(n), A152192(2*(n+1)))]`
-/

namespace A215038.P12361965256198935303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001654 n) (A152192 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P12361965256198935303

namespace A215038

/-- `∑[lcm(A001654(n), A152192(2*(n+1)))]` -/
def P12361965256198935303.Spec : Prop :=
  ∀ n, (P12361965256198935303.a n : ℤ) = A215038 n

end A215038

/-! ## A215038.P15132763709112703246

`∑[A079977(2*n)²*A103609(2*n)]`
-/

namespace A215038.P15132763709112703246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) ^ 2 * A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P15132763709112703246

namespace A215038

/-- `∑[A079977(2*n)²*A103609(2*n)]` -/
def P15132763709112703246.Spec : Prop :=
  ∀ n, P15132763709112703246.a n = A215038 n

end A215038

/-! ## A215038.P13932645611247380347

`∑[A152192(2*(n+1))*A212804(n+1)]`
-/

namespace A215038.P13932645611247380347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (2 * (n + 1)) * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P13932645611247380347

namespace A215038

/-- `∑[A152192(2*(n+1))*A212804(n+1)]` -/
def P13932645611247380347.Spec : Prop :=
  ∀ n, P13932645611247380347.a n = A215038 n

end A215038

/-! ## A215038.P1741647527801662528

`∑[A074677(2*n+1)*A103609(2*n)]`
-/

namespace A215038.P1741647527801662528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n + 1) * A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P1741647527801662528

namespace A215038

/-- `∑[A074677(2*n+1)*A103609(2*n)]` -/
def P1741647527801662528.Spec : Prop :=
  ∀ n, P1741647527801662528.a n = A215038 n

end A215038

/-!
# A215039: a(n) = Fibonacci(2*n)^3, n>=0.

The programs for A215039, the canonical program `A215039.P9365521143906781496` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215039 has offset 0).

The definition of A215039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n)^3` (program `A215039.P9365521143906781496`, by `A215039.P9365521143906781496.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215039.P9365521143906781496

`A000045(2*n)^3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215039

/-- `A000045(2*n)^3` -/
def P9365521143906781496.Spec : Prop :=
  ∀ n, P9365521143906781496.a n = A215039 n

theorem P9365521143906781496.correct : P9365521143906781496.Spec := by
  intro n
  simp only [A215039]

end A215039

/-! ## A215039.P1001356874686156798

`(A000045(6*n)-3*A000045(2*n))/5`
-/

namespace A215039.P1001356874686156798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n) - 3 * A000045 (2 * n) : ℚ) / 5

end

end A215039.P1001356874686156798

namespace A215039

/-- `(A000045(6*n)-3*A000045(2*n))/5` -/
def P1001356874686156798.Spec : Prop :=
  ∀ n, P1001356874686156798.a n = (A215039 n : ℚ)

end A215039

/-! ## A215039.P6164434044308810820

`A056570(2*n)`
-/

namespace A215039.P6164434044308810820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (2 * n)

end

end A215039.P6164434044308810820

namespace A215039

/-- `A056570(2*n)` -/
def P6164434044308810820.Spec : Prop :=
  ∀ n, P6164434044308810820.a n = A215039 n

end A215039

/-! ## A215039.P13622759106673525673

`A001906(n)^3`
-/

namespace A215039.P13622759106673525673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 3

end

end A215039.P13622759106673525673

namespace A215039

/-- `A001906(n)^3` -/
def P13622759106673525673.Spec : Prop :=
  ∀ n, P13622759106673525673.a n = A215039 n

end A215039

/-! ## A215039.P15658241366026947717

`Δ[A001519(n)]^3`
-/

namespace A215039.P15658241366026947717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A215039.P15658241366026947717

namespace A215039

/-- `Δ[A001519(n)]^3` -/
def P15658241366026947717.Spec : Prop :=
  ∀ n, P15658241366026947717.a n = A215039 n

end A215039

/-! ## A215039.P15757107073037326415

`Δ[A032908(n)]^3`
-/

namespace A215039.P15757107073037326415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A215039.P15757107073037326415

namespace A215039

/-- `Δ[A032908(n)]^3` -/
def P15757107073037326415.Spec : Prop :=
  ∀ n, P15757107073037326415.a n = A215039 n

end A215039

/-! ## A215039.P14934308621694171643

`(A055588(n)-1)^3`
-/

namespace A215039.P14934308621694171643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055588 n - 1) ^ 3

end

end A215039.P14934308621694171643

namespace A215039

/-- `(A055588(n)-1)^3` -/
def P14934308621694171643.Spec : Prop :=
  ∀ n, P14934308621694171643.a n = A215039 n

end A215039

/-! ## A215039.P1027848285102110809

`(A249450(n)+2)^3`
-/

namespace A215039.P1027848285102110809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A249450 n + 2) ^ 3

end

end A215039.P1027848285102110809

namespace A215039

/-- `(A249450(n)+2)^3` -/
def P1027848285102110809.Spec : Prop :=
  ∀ n, P1027848285102110809.a n = A215039 n

theorem P1027848285102110809.correct : P1027848285102110809.Spec := by
  intro n
  simp only [A215039, Nat.add_sub_cancel, A215039.P1027848285102110809.a, A215039.P9365521143906781496.a, A000045, A000045.P11838749114346432762.a, A249450, A249450.P8410916202522237215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215039

/-! ## A215039.P2799222890313866044

`A005013(2*n)^3`
-/

namespace A215039.P2799222890313866044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (2 * n) ^ 3

end

end A215039.P2799222890313866044

namespace A215039

/-- `A005013(2*n)^3` -/
def P2799222890313866044.Spec : Prop :=
  ∀ n, P2799222890313866044.a n = A215039 n

end A215039

/-! ## A215039.P17089564712820162459

`A094966(2*n)^3`
-/

namespace A215039.P17089564712820162459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n) ^ 3

end

end A215039.P17089564712820162459

namespace A215039

/-- `A094966(2*n)^3` -/
def P17089564712820162459.Spec : Prop :=
  ∀ n, P17089564712820162459.a n = A215039 n

end A215039

/-!
# A215040: a(n) = F(2*n+1)^3, n>=0, with F = A000045 (Fibonacci).

The programs for A215040, the canonical program `A215040.P6057063280582955262` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215040 has offset 0).

The definition of A215040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n+1)^3` (program `A215040.P6057063280582955262`, by `A215040.P6057063280582955262.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215040.P6057063280582955262

`A000045(2*n+1)^3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215040

/-- `A000045(2*n+1)^3` -/
def P6057063280582955262.Spec : Prop :=
  ∀ n, P6057063280582955262.a n = A215040 n

theorem P6057063280582955262.correct : P6057063280582955262.Spec := by
  intro n
  simp only [A215040]

end A215040

/-! ## A215040.P5749392169717129979

`(12*A000045(2*n+1)+A000045(6*(n+1))-A000045(6*n))/20`
-/

namespace A215040.P5749392169717129979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * A000045 (2 * n + 1) + A000045 (6 * (n + 1)) - A000045 (6 * n) : ℚ) / 20

end

end A215040.P5749392169717129979

namespace A215040

/-- `(12*A000045(2*n+1)+A000045(6*(n+1))-A000045(6*n))/20` -/
def P5749392169717129979.Spec : Prop :=
  ∀ n, P5749392169717129979.a n = (A215040 n : ℚ)

end A215040

/-! ## A215040.P14338136388466063878

`abs(floor(∑[(-ϕ²)^n])^3)`
-/

namespace A215040.P14338136388466063878
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-(Real.goldenRatio ^ 2)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 3|

end

end A215040.P14338136388466063878

namespace A215040

/-- `abs(floor(∑[(-ϕ²)^n])^3)` -/
def P14338136388466063878.Spec : Prop :=
  ∀ n, P14338136388466063878.a n = A215040 n

end A215040

/-! ## A215040.P8573864207321622828

`Δ[A163200(n)]`
-/

namespace A215040.P8573864207321622828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215040.P8573864207321622828

namespace A215040

/-- `Δ[A163200(n)]` -/
def P8573864207321622828.Spec : Prop :=
  ∀ n, P8573864207321622828.a n = A215040 n

end A215040

/-! ## A215040.P18052682554278472128

`A122367(n)^3`
-/

namespace A215040.P18052682554278472128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n ^ 3

end

end A215040.P18052682554278472128

namespace A215040

/-- `A122367(n)^3` -/
def P18052682554278472128.Spec : Prop :=
  ∀ n, P18052682554278472128.a n = A215040 n

end A215040

/-! ## A215040.P7771213608271996826

`A056570(Δ[n²])`
-/

namespace A215040.P7771213608271996826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A215040.P7771213608271996826

namespace A215040

/-- `A056570(Δ[n²])` -/
def P7771213608271996826.Spec : Prop :=
  ∀ n, P7771213608271996826.a n = A215040 n

end A215040

/-! ## A215040.P8667694541149809325

`A060920(∑[n])^3`
-/

namespace A215040.P8667694541149809325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060920 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A215040.P8667694541149809325

namespace A215040

/-- `A060920(∑[n])^3` -/
def P8667694541149809325.Spec : Prop :=
  ∀ n, P8667694541149809325.a n = A215040 n

end A215040

/-! ## A215040.P18316669261914641611

`∑[A088305(n)]^3`
-/

namespace A215040.P18316669261914641611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A215040.P18316669261914641611

namespace A215040

/-- `∑[A088305(n)]^3` -/
def P18316669261914641611.Spec : Prop :=
  ∀ n, P18316669261914641611.a n = A215040 n

end A215040

/-! ## A215040.P17343625190379196008

`A123971(∑[n])^3`
-/

namespace A215040.P17343625190379196008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123971 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A215040.P17343625190379196008

namespace A215040

/-- `A123971(∑[n])^3` -/
def P17343625190379196008.Spec : Prop :=
  ∀ n, P17343625190379196008.a n = A215040 n

end A215040

/-! ## A215040.P15630206848183383940

`A125171(∑[n])^3`
-/

namespace A215040.P15630206848183383940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A215040.P15630206848183383940

namespace A215040

/-- `A125171(∑[n])^3` -/
def P15630206848183383940.Spec : Prop :=
  ∀ n, P15630206848183383940.a n = A215040 n

end A215040

/-!
# A215041: a(n) = n^degree(C(n,x))/discriminant(C(n,x)) for the minimal polynomials C(n,x) of 2*cos(Pi/n), given in A187360.

The programs for A215041, there is no canonical definition to state claims against.
-/

/-! ## A215041.P16072018489033743241

`(n+1)^A055034(n+1)/A193681(n+1)`
-/

namespace A215041.P16072018489033743241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A055034 (n + 1) : ℤ) / (A193681 (n + 1) : ℚ)

end

end A215041.P16072018489033743241

/-! ## A215041.P15472707734951418054

`lcm(A085392(n+1), A327076(A064446(n+1)))`
-/

namespace A215041.P15472707734951418054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085392 (n + 1)) (A327076 (A064446 (n + 1)).toNat)

end

end A215041.P15472707734951418054

/-! ## A215041.P3447716247529574947

`A109395(n+1)*A323087(A082587(n))`
-/

namespace A215041.P3447716247529574947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1) * A323087 (A082587 n).toNat

end

end A215041.P3447716247529574947

/-! ## A215041.P4563705070222261261

`A085392(A345933(n+1)!)*A109395(n+1)`
-/

namespace A215041.P4563705070222261261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (Nat.factorial (A345933 (n + 1)).toNat) * A109395 (n + 1)

end

end A215041.P4563705070222261261

/-! ## A215041.P1487616415767514033

`A109395(n+1)*A167967(A033676(n+1)²²)`
-/

namespace A215041.P1487616415767514033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1) * A167967 ((A033676 (n + 1) ^ 2) ^ 2).toNat

end

end A215041.P1487616415767514033

/-!
# A215042: a(n) = F(8*n)/L(2*n) with n >= 0, F = A000045 (Fibonacci numbers) and L = A000032 (Lucas numbers).

The programs for A215042, the canonical program `A215042.P5320106661007810435` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215042 has offset 0).

The definition of A215042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215042.P5320106661007810435

`A000045(6*n)-A000045(2*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215042

/-- `A000045(6*n)-A000045(2*n)` -/
def P5320106661007810435.Spec : Prop :=
  ∀ n, P5320106661007810435.a n = A215042 n

theorem P5320106661007810435.correct : P5320106661007810435.Spec := by
  intro n
  simp only [A215042]

end A215042

/-! ## A215042.P6484299243321788824

`A000045(8*n)/A000032(2*n)`
-/

namespace A215042.P6484299243321788824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n) : ℚ) / (A000032 (2 * n) : ℚ)

end

end A215042.P6484299243321788824

namespace A215042

/-- `A000045(8*n)/A000032(2*n)` -/
def P6484299243321788824.Spec : Prop :=
  ∀ n, P6484299243321788824.a n = (A215042 n : ℚ)

end A215042

/-! ## A215042.P11132874426623037158

`A134492(n)-A001906(n)`
-/

namespace A215042.P11132874426623037158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134492 n - A001906 n

end

end A215042.P11132874426623037158

namespace A215042

/-- `A134492(n)-A001906(n)` -/
def P11132874426623037158.Spec : Prop :=
  ∀ n, P11132874426623037158.a n = A215042 n

end A215042

/-! ## A215042.P8149599697717524090

`A001906(n)*A056854(n)`
-/

namespace A215042.P8149599697717524090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A056854 n

end

end A215042.P8149599697717524090

namespace A215042

/-- `A001906(n)*A056854(n)` -/
def P8149599697717524090.Spec : Prop :=
  ∀ n, P8149599697717524090.a n = A215042 n

end A215042

/-! ## A215042.P15635297969355186487

`A014445(2*n)-A001906(n)`
-/

namespace A215042.P15635297969355186487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (2 * n) - A001906 n

end

end A215042.P15635297969355186487

namespace A215042

/-- `A014445(2*n)-A001906(n)` -/
def P15635297969355186487.Spec : Prop :=
  ∀ n, P15635297969355186487.a n = A215042 n

end A215042

/-! ## A215042.P15830073320648308113

`A134492(n)-A000045(2*n)`
-/

namespace A215042.P15830073320648308113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134492 n - A000045 (2 * n)

end

end A215042.P15830073320648308113

namespace A215042

/-- `A134492(n)-A000045(2*n)` -/
def P15830073320648308113.Spec : Prop :=
  ∀ n, P15830073320648308113.a n = A215042 n

end A215042

/-! ## A215042.P18075164767598220163

`A140413(2*n)-A055588(n)`
-/

namespace A215042.P18075164767598220163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140413 (2 * n) - A055588 n

end

end A215042.P18075164767598220163

namespace A215042

/-- `A140413(2*n)-A055588(n)` -/
def P18075164767598220163.Spec : Prop :=
  ∀ n, P18075164767598220163.a n = A215042 n

end A215042

/-! ## A215042.P18208521951771670438

`A001906(3*n)-A001906(n)`
-/

namespace A215042.P18208521951771670438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (3 * n) - A001906 n

end

end A215042.P18208521951771670438

namespace A215042

/-- `A001906(3*n)-A001906(n)` -/
def P18208521951771670438.Spec : Prop :=
  ∀ n, P18208521951771670438.a n = A215042 n

end A215042

/-! ## A215042.P16579092205164859899

`A001906(n)*A005248(2*n)`
-/

namespace A215042.P16579092205164859899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A005248 (2 * n)

end

end A215042.P16579092205164859899

namespace A215042

/-- `A001906(n)*A005248(2*n)` -/
def P16579092205164859899.Spec : Prop :=
  ∀ n, P16579092205164859899.a n = A215042 n

end A215042

/-! ## A215042.P11090196656177798727

`A000045(2*n)*A056854(n)`
-/

namespace A215042.P11090196656177798727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A056854 n

end

end A215042.P11090196656177798727

namespace A215042

/-- `A000045(2*n)*A056854(n)` -/
def P11090196656177798727.Spec : Prop :=
  ∀ n, P11090196656177798727.a n = A215042 n

end A215042

/-!
# A215043: a(n) = F(12*n)/(24*L(2*n)), n >= 0, with F = A000045 (Fibonacci) and L = A000032 (Lucas).

The programs for A215043, the canonical program `A215043.P3323987240371170615` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215043 has offset 0).

The definition of A215043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215043.P3323987240371170615

`A000045(12*n)/(24*A000032(2*n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215043

/-- `A000045(12*n)/(24*A000032(2*n))` -/
def P3323987240371170615.Spec : Prop :=
  ∀ n, P3323987240371170615.a n = (A215043 n : ℚ)

end A215043

/-!
# A215044: a(n) = F(2*n)^5 with F=A000045 (Fibonacci numbers).

The programs for A215044, the canonical program `A215044.P7970854404760274376` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215044 has offset 0).

The definition of A215044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n)^5` (program `A215044.P7970854404760274376`, by `A215044.P7970854404760274376.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215044.P7970854404760274376

`A000045(2*n)^5`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215044

/-- `A000045(2*n)^5` -/
def P7970854404760274376.Spec : Prop :=
  ∀ n, P7970854404760274376.a n = A215044 n

theorem P7970854404760274376.correct : P7970854404760274376.Spec := by
  intro n
  simp only [A215044]

end A215044

/-! ## A215044.P10583073248932144667

`A056572(2*n)`
-/

namespace A215044.P10583073248932144667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 (2 * n)

end

end A215044.P10583073248932144667

namespace A215044

/-- `A056572(2*n)` -/
def P10583073248932144667.Spec : Prop :=
  ∀ n, P10583073248932144667.a n = A215044 n

end A215044

/-! ## A215044.P13752029489291307148

`A001906(n)^5`
-/

namespace A215044.P13752029489291307148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 5

end

end A215044.P13752029489291307148

namespace A215044

/-- `A001906(n)^5` -/
def P13752029489291307148.Spec : Prop :=
  ∀ n, P13752029489291307148.a n = A215044 n

end A215044

/-! ## A215044.P15989539532509062180

`Δ[A001519(n)]^5`
-/

namespace A215044.P15989539532509062180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 5

end

end A215044.P15989539532509062180

namespace A215044

/-- `Δ[A001519(n)]^5` -/
def P15989539532509062180.Spec : Prop :=
  ∀ n, P15989539532509062180.a n = A215044 n

end A215044

/-! ## A215044.P10937137986636128018

`Δ[A032908(n)]^5`
-/

namespace A215044.P10937137986636128018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 5

end

end A215044.P10937137986636128018

namespace A215044

/-- `Δ[A032908(n)]^5` -/
def P10937137986636128018.Spec : Prop :=
  ∀ n, P10937137986636128018.a n = A215044 n

end A215044

/-!
# A215045: a(n) = F(2*n+1)^5 with n >= 0, F=A000045 (Fibonacci numbers).

The programs for A215045, the canonical program `A215045.P5457703299137825045` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215045 has offset 0).

The definition of A215045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n+1)^5` (program `A215045.P5457703299137825045`, by `A215045.P5457703299137825045.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215045.P5457703299137825045

`A000045(2*n+1)^5`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215045

/-- `A000045(2*n+1)^5` -/
def P5457703299137825045.Spec : Prop :=
  ∀ n, P5457703299137825045.a n = A215045 n

theorem P5457703299137825045.correct : P5457703299137825045.Spec := by
  intro n
  simp only [A215045]

end A215045

/-! ## A215045.P5956468516195535680

`A122367(n)^5`
-/

namespace A215045.P5956468516195535680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n ^ 5

end

end A215045.P5956468516195535680

namespace A215045

/-- `A122367(n)^5` -/
def P5956468516195535680.Spec : Prop :=
  ∀ n, P5956468516195535680.a n = A215045 n

end A215045

/-! ## A215045.P15103466160444476361

`A056572(Δ[n²])`
-/

namespace A215045.P15103466160444476361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A215045.P15103466160444476361

namespace A215045

/-- `A056572(Δ[n²])` -/
def P15103466160444476361.Spec : Prop :=
  ∀ n, P15103466160444476361.a n = A215045 n

end A215045

/-! ## A215045.P12182073671634148915

`A060920(∑[n])^5`
-/

namespace A215045.P12182073671634148915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060920 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A215045.P12182073671634148915

namespace A215045

/-- `A060920(∑[n])^5` -/
def P12182073671634148915.Spec : Prop :=
  ∀ n, P12182073671634148915.a n = A215045 n

end A215045

/-! ## A215045.P18094635874208750624

`∑[A088305(n)]^5`
-/

namespace A215045.P18094635874208750624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A215045.P18094635874208750624

namespace A215045

/-- `∑[A088305(n)]^5` -/
def P18094635874208750624.Spec : Prop :=
  ∀ n, P18094635874208750624.a n = A215045 n

end A215045

/-!
# A215046: Increasingly ordered list of those values m for which the degree of the minimal polynomial of 2*cos(Pi/m) (see A187360) is prime.

The programs for A215046, there is no canonical definition to state claims against.
-/

/-! ## A215046.P3813441560758913766

`eq[2, A193386(2*(n+1))]+1`
-/

namespace A215046.P3813441560758913766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A215046.P3813441560758913766

/-! ## A215046.P15722365530298793703

`eq[2, A193386(A004277(n))]`
-/

namespace A215046.P15722365530298793703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215046.P15722365530298793703

/-! ## A215046.P12224722212302629433

`record[A025480(A065966(n+3))]`
-/

namespace A215046.P12224722212302629433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A065966 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215046.P12224722212302629433

/-! ## A215046.P17743253440994801726

`eq[2, A193386(A028310(2*n))]`
-/

namespace A215046.P17743253440994801726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215046.P17743253440994801726

/-! ## A215046.P547692602894685521

`A020725(eq[2, A193386(2*(n+1))])`
-/

namespace A215046.P547692602894685521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215046.P547692602894685521

/-!
# A215047: Number of primes of the form 1 + b^2 for 1 < b < 10^n.

The programs for A215047, there is no canonical definition to state claims against.
-/

/-! ## A215047.P125537615613570952

`A083844(2*(n+1))-1`
-/

namespace A215047.P125537615613570952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083844 (2 * (n + 1)) - 1

end

end A215047.P125537615613570952

/-! ## A215047.P12117967040090636912

`floor(A206709(n+1)-acot(n))`
-/

namespace A215047.P12117967040090636912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206709 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋

end

end A215047.P12117967040090636912

/-! ## A215047.P16826920988029783639

`xor(-A083844(2*n+2), -1)`
-/

namespace A215047.P16826920988029783639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A083844 (2 * n + 2)) (-1)

end

end A215047.P16826920988029783639

/-! ## A215047.P4152841777961557750

`A206709(n+1)-A054977(n)`
-/

namespace A215047.P4152841777961557750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206709 (n + 1) - A054977 n

end

end A215047.P4152841777961557750

/-! ## A215047.P6742331494601718365

`A206709(n+1)-A000038(n)!`
-/

namespace A215047.P6742331494601718365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206709 (n + 1) - (Nat.factorial (A000038 n).toNat : ℤ)

end

end A215047.P6742331494601718365

/-!
# A215048: Number of primes of the form 1 + b^4 for 1 < b < 10^n.

The programs for A215048, there is no canonical definition to state claims against.
-/

/-! ## A215048.P5684304135335045202

`A214452(4*(n+1))-1`
-/

namespace A215048.P5684304135335045202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214452 (4 * (n + 1)) - 1

end

end A215048.P5684304135335045202

/-!
# A215049: Number of primes of the form 1 + b^8 for 1 < b < 10^n.

The programs for A215049, there is no canonical definition to state claims against.
-/

/-! ## A215049.P7134231566237943017

`A214454(8*(n+1))-1`
-/

namespace A215049.P7134231566237943017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214454 (8 * (n + 1)) - 1

end

end A215049.P7134231566237943017

/-!
# A215051: Number of primes of the form 1 + b^32 for 1 < b < 10^n.

The programs for A215051, there is no canonical definition to state claims against.
-/

/-! ## A215051.P1929993101799547730

`A214956(32*(n+1))-1`
-/

namespace A215051.P1929993101799547730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214956 (32 * (n + 1)) - 1

end

end A215051.P1929993101799547730

/-!
# A215052: a(n) = (binomial(n,5) - floor(n/5)) / 5.

The programs for A215052, the canonical program `A215052.P3202841179819519077` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215052 has offset 6).

The definition of A215052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215052.P3202841179819519077

`(C(n+6, 5)-floor((n+6)/5))/5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215052

/-- `(C(n+6, 5)-floor((n+6)/5))/5` -/
def P3202841179819519077.Spec : Prop :=
  ∀ n, P3202841179819519077.a n = (A215052 (n + 6) : ℚ)

end A215052

/-! ## A215052.P3305808952931734773

`∑[floor(C(n+5, 4)/5)]`
-/

namespace A215052.P3305808952931734773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 5) 4 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215052.P3305808952931734773

namespace A215052

/-- `∑[floor(C(n+5, 4)/5)]` -/
def P3305808952931734773.Spec : Prop :=
  ∀ n, P3305808952931734773.a n = A215052 (n + 6)

end A215052

/-! ## A215052.P299621774119906585

`∑[round(C(n+5, 4)/5)]`
-/

namespace A215052.P299621774119906585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 5) 4 : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215052.P299621774119906585

namespace A215052

/-- `∑[round(C(n+5, 4)/5)]` -/
def P299621774119906585.Spec : Prop :=
  ∀ n, P299621774119906585.a n = A215052 (n + 6)

end A215052

/-! ## A215052.P10761839555236721972

`∑[ceil(∑[C(n+4, 3)]/5)]`
-/

namespace A215052.P10761839555236721972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215052.P10761839555236721972

namespace A215052

/-- `∑[ceil(∑[C(n+4, 3)]/5)]` -/
def P10761839555236721972.Spec : Prop :=
  ∀ n, P10761839555236721972.a n = A215052 (n + 6)

end A215052

/-! ## A215052.P8668976809674756374

`∑[∑[∑[ceil(∑[(n+2)/5])]]]`
-/

namespace A215052.P8668976809674756374
noncomputable section

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f4 j⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215052.P8668976809674756374

namespace A215052

/-- `∑[∑[∑[ceil(∑[(n+2)/5])]]]` -/
def P8668976809674756374.Spec : Prop :=
  ∀ n, P8668976809674756374.a n = A215052 (n + 6)

end A215052

/-! ## A215052.P17839339014447414356

`round((5/(n+1)+1)*a(n-1))` with `a(0)=1`
-/

namespace A215052.P17839339014447414356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((5 / (n + 1 : ℚ) + 1) * (a (n - 1) : ℚ))

end

end A215052.P17839339014447414356

namespace A215052

/-- `round((5/(n+1)+1)*a(n-1))` -/
def P17839339014447414356.Spec : Prop :=
  ∀ n, P17839339014447414356.a n = A215052 (n + 6)

end A215052

/-! ## A215052.P15765804575333709622

`A036837(n+7)-A051170(n+7)`
-/

namespace A215052.P15765804575333709622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036837 (n + 7) - A051170 (n + 7)

end

end A215052.P15765804575333709622

namespace A215052

/-- `A036837(n+7)-A051170(n+7)` -/
def P15765804575333709622.Spec : Prop :=
  ∀ n, P15765804575333709622.a n = A215052 (n + 6)

end A215052

/-! ## A215052.P2814683115384881368

`A036838(A055999(n+2))`
-/

namespace A215052.P2814683115384881368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A055999 (n + 2)).toNat

end

end A215052.P2814683115384881368

namespace A215052

/-- `A036838(A055999(n+2))` -/
def P2814683115384881368.Spec : Prop :=
  ∀ n, P2814683115384881368.a n = A215052 (n + 6)

end A215052

/-!
# A215053: a(n) = 1/7*( binomial(n,7) - floor(n/7) ).

The programs for A215053, the canonical program `A215053.P15036460710085566925` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215053 has offset 8).

The definition of A215053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215053.P15036460710085566925

`(C(n+8, 7)-floor((n+8)/7))/7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215053

/-- `(C(n+8, 7)-floor((n+8)/7))/7` -/
def P15036460710085566925.Spec : Prop :=
  ∀ n, P15036460710085566925.a n = (A215053 (n + 8) : ℚ)

end A215053

/-! ## A215053.P4087191185966899347

`1/7*(C(n+8, 7)-floor((n+8)/7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215053.P4087191185966899347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 7 * ((Nat.choose (n + 8) 7 : ℤ) - ⌊(n + 8 : ℚ) / 7⌋ : ℚ)

end

end A215053.P4087191185966899347

namespace A215053

/-- `1/7*(C(n+8, 7)-floor((n+8)/7))` -/
def P4087191185966899347.Spec : Prop :=
  ∀ n, P4087191185966899347.a n = (A215053 (n + 8) : ℚ)

end A215053

/-! ## A215053.P3521334984363761969

`∑[floor(C(n+7, 7)/(n+1))]`
-/

namespace A215053.P3521334984363761969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 7) 7 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P3521334984363761969

namespace A215053

/-- `∑[floor(C(n+7, 7)/(n+1))]` -/
def P3521334984363761969.Spec : Prop :=
  ∀ n, P3521334984363761969.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P9028172238545256636

`∑[round(C(n+7, 7)/(n+1))]`
-/

namespace A215053.P9028172238545256636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 7) 7 : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P9028172238545256636

namespace A215053

/-- `∑[round(C(n+7, 7)/(n+1))]` -/
def P9028172238545256636.Spec : Prop :=
  ∀ n, P9028172238545256636.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P3479812943125536993

`∑[round(A166810(n+1)/7)]`
-/

namespace A215053.P3479812943125536993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166810 (n + 1) : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P3479812943125536993

namespace A215053

/-- `∑[round(A166810(n+1)/7)]` -/
def P3479812943125536993.Spec : Prop :=
  ∀ n, P3479812943125536993.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P6707278317629319576

`∑[floor(A000580(n+7)/(n+1))]`
-/

namespace A215053.P6707278317629319576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000580 (n + 7) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P6707278317629319576

namespace A215053

/-- `∑[floor(A000580(n+7)/(n+1))]` -/
def P6707278317629319576.Spec : Prop :=
  ∀ n, P6707278317629319576.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P7136723143401432945

`∑[A051172(n+8)]`
-/

namespace A215053.P7136723143401432945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051172 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P7136723143401432945

namespace A215053

/-- `∑[A051172(n+8)]` -/
def P7136723143401432945.Spec : Prop :=
  ∀ n, P7136723143401432945.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P16580298282782522866

`∑[floor(∑[A000579(n+6)]/(n+1))]`
-/

namespace A215053.P16580298282782522866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P16580298282782522866

namespace A215053

/-- `∑[floor(∑[A000579(n+6)]/(n+1))]` -/
def P16580298282782522866.Spec : Prop :=
  ∀ n, P16580298282782522866.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P3372183260228212703

`∑[A011797(n+7)]`
-/

namespace A215053.P3372183260228212703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011797 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P3372183260228212703

namespace A215053

/-- `∑[A011797(n+7)]` -/
def P3372183260228212703.Spec : Prop :=
  ∀ n, P3372183260228212703.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P7475920617707809793

`∑[A011847(A167487(n+5))]`
-/

namespace A215053.P7475920617707809793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011847 (A167487 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P7475920617707809793

namespace A215053

/-- `∑[A011847(A167487(n+5))]` -/
def P7475920617707809793.Spec : Prop :=
  ∀ n, P7475920617707809793.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P14867319132965556436

`∑[round(A007318(A155212(n+4))/(n+1))]`
-/

namespace A215053.P14867319132965556436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007318 (A155212 (n + 4)).toNat : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P14867319132965556436

namespace A215053

/-- `∑[round(A007318(A155212(n+4))/(n+1))]` -/
def P14867319132965556436.Spec : Prop :=
  ∀ n, P14867319132965556436.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P6397011203969371654

`A036838(Δ[A023551(n+2)]-2)`
-/

namespace A215053.P6397011203969371654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (f1 (n + 1) - f1 n - 2).toNat

end

end A215053.P6397011203969371654

namespace A215053

/-- `A036838(Δ[A023551(n+2)]-2)` -/
def P6397011203969371654.Spec : Prop :=
  ∀ n, P6397011203969371654.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P7228720086313824519

`A036838(Δ[A026054(n+4)]-2)`
-/

namespace A215053.P7228720086313824519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (f1 (n + 1) - f1 n - 2).toNat

end

end A215053.P7228720086313824519

namespace A215053

/-- `A036838(Δ[A026054(n+4)]-2)` -/
def P7228720086313824519.Spec : Prop :=
  ∀ n, P7228720086313824519.a n = A215053 (n + 8)

end A215053

/-! ## A215053.P2748670995975496348

`∑[record[A051168(A155212(n))]]`
-/

namespace A215053.P2748670995975496348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A155212 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215053.P2748670995975496348

namespace A215053

/-- `∑[record[A051168(A155212(n))]]` -/
def P2748670995975496348.Spec : Prop :=
  ∀ n, P2748670995975496348.a n = A215053 (n + 8)

end A215053

/-!
# A215054: a(n) = 1/11*(binomial(n,11) - floor(n/11)).

The programs for A215054, the canonical program `A215054.P479482354624134734` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215054 has offset 12).

The definition of A215054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215054.P479482354624134734

`(C(n+12, 11)-floor((n+12)/11))/11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215054

/-- `(C(n+12, 11)-floor((n+12)/11))/11` -/
def P479482354624134734.Spec : Prop :=
  ∀ n, P479482354624134734.a n = (A215054 (n + 12) : ℚ)

end A215054

/-! ## A215054.P13685394837214200155

`1/11*(C(n+12, 11)-floor((n+12)/11))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215054.P13685394837214200155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 11 * ((Nat.choose (n + 12) 11 : ℤ) - ⌊(n + 12 : ℚ) / 11⌋ : ℚ)

end

end A215054.P13685394837214200155

namespace A215054

/-- `1/11*(C(n+12, 11)-floor((n+12)/11))` -/
def P13685394837214200155.Spec : Prop :=
  ∀ n, P13685394837214200155.a n = (A215054 (n + 12) : ℚ)

end A215054

/-! ## A215054.P865991088954064399

`∑[floor(C(n+11, 10)/11)]`
-/

namespace A215054.P865991088954064399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 11) 10 : ℚ) / 11⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215054.P865991088954064399

namespace A215054

/-- `∑[floor(C(n+11, 10)/11)]` -/
def P865991088954064399.Spec : Prop :=
  ∀ n, P865991088954064399.a n = A215054 (n + 12)

end A215054

/-! ## A215054.P9996313955288310166

`∑[round(C(n+11, 10)/11)]`
-/

namespace A215054.P9996313955288310166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 11) 10 : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215054.P9996313955288310166

namespace A215054

/-- `∑[round(C(n+11, 10)/11)]` -/
def P9996313955288310166.Spec : Prop :=
  ∀ n, P9996313955288310166.a n = A215054 (n + 12)

end A215054

/-! ## A215054.P7173489699485525864

`round(a(n-1)+C(n+11, 10)/11)` with `a(0)=1`
-/

namespace A215054.P7173489699485525864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (Nat.choose (n + 11) 10 : ℚ) / 11)

end

end A215054.P7173489699485525864

namespace A215054

/-- `round(a(n-1)+C(n+11, 10)/11)` -/
def P7173489699485525864.Spec : Prop :=
  ∀ n, P7173489699485525864.a n = A215054 (n + 12)

end A215054

/-! ## A215054.P4434594004844873672

`∑[A032169(n)]`
-/

namespace A215054.P4434594004844873672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032169 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215054.P4434594004844873672

namespace A215054

/-- `∑[A032169(n)]` -/
def P4434594004844873672.Spec : Prop :=
  ∀ n, P4434594004844873672.a n = A215054 (n + 12)

end A215054

/-!
# A215057: Number of primes of the form 1 + b^64 for 1 < b < 10^n.

The programs for A215057, there is no canonical definition to state claims against.
-/

/-! ## A215057.P1242943932786618219

`2*A323410(A090358(n))`
-/

namespace A215057.P1242943932786618219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323410 (A090358 n).toNat

end

end A215057.P1242943932786618219

/-!
# A215058: Number of primes of the form 1 + b^128 for 1 < b < 10^n.

The programs for A215058, there is no canonical definition to state claims against.
-/

/-! ## A215058.P17818645301996634984

`(A000005(13^n)!+1)*floor(n/2)`
-/

namespace A215058.P17818645301996634984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000005 (13 ^ n)).toNat + 1 : ℤ) * ⌊(n : ℚ) / 2⌋

end

end A215058.P17818645301996634984

/-!
# A215059: Numbers n such that (sum of factorial of decimal digits of n) + (product of factorial of decimal digits of n) is prime.

The programs for A215059, there is no canonical definition to state claims against.
-/

/-! ## A215059.P14187444354695132053

`lt[A106427(A051801(n)), A017329(n)]`
-/

namespace A215059.P14187444354695132053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106427 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215059.P14187444354695132053

/-! ## A215059.P18141055043227119562

`lt[A339655(A051801(n)), A038573(n)]`
-/

namespace A215059.P18141055043227119562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339655 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215059.P18141055043227119562

/-! ## A215059.P155245981097925479

`lt[A120031(A051801(n)), A080677(n+1)]`
-/

namespace A215059.P155245981097925479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120031 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215059.P155245981097925479

/-!
# A215060: Triangle read by rows, e.g.f. exp(x*(z+1/2))/((exp(3*x/2) + 2*cos(sqrt(3)*x/2))/3).

The programs for A215060, there is no canonical definition to state claims against.
-/

/-! ## A215060.P8551741272430471066

`A294034(n+1)/∑[char[∑[n]]]*A024692(A004736(n+1))`
-/

namespace A215060.P8551741272430471066
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294034 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (A024692 (A004736 (n + 1)).toNat : ℚ)

end

end A215060.P8551741272430471066

/-! ## A215060.P14703732623741023331

`A294034(n+1)/∑[char[∑[n]]]*A000035(A104582(n+1))`
-/

namespace A215060.P14703732623741023331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294034 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (A000035 (A104582 (n + 1)).toNat : ℚ)

end

end A215060.P14703732623741023331

/-! ## A215060.P12574900373549388350

`A024692(A004736(n+1))/A002024(n+1)*A294034(n+1)`
-/

namespace A215060.P12574900373549388350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024692 (A004736 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ) * (A294034 (n + 1) : ℚ)

end

end A215060.P12574900373549388350

/-! ## A215060.P3551708506233716985

`A000035(A104582(n+1))/A002024(n+1)*A294034(n+1)`
-/

namespace A215060.P3551708506233716985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (A104582 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ) * (A294034 (n + 1) : ℚ)

end

end A215060.P3551708506233716985

/-! ## A215060.P2192116923847403677

`floor(A294034(n+1)/A349520(2*(n+1)))*A024692(A004736(n+1))`
-/

namespace A215060.P2192116923847403677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294034 (n + 1) : ℚ) / (A349520 (2 * (n + 1)) : ℚ)⌋ * A024692 (A004736 (n + 1)).toNat

end

end A215060.P2192116923847403677

/-! ## A215060.P8279704175144814577

`floor(A294034(n+1)/A349520(2*(n+1)))*A000035(A104582(n+1))`
-/

namespace A215060.P8279704175144814577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294034 (n + 1) : ℚ) / (A349520 (2 * (n + 1)) : ℚ)⌋ * A000035 (A104582 (n + 1)).toNat

end

end A215060.P8279704175144814577

/-! ## A215060.P15759234991112945790

`A116948(n)%2*A215064(n)`
-/

namespace A215060.P15759234991112945790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116948 n) 2 * A215064 n

end

end A215060.P15759234991112945790

/-! ## A215060.P13611858742799110687

`A079978(A025581(n))*A215064(n)`
-/

namespace A215060.P13611858742799110687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A025581 n).toNat * A215064 n

end

end A215060.P13611858742799110687

/-! ## A215060.P15802949010570952620

`A024692(A099375(n))*A215064(n)`
-/

namespace A215060.P15802949010570952620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024692 (A099375 n).toNat * A215064 n

end

end A215060.P15802949010570952620

/-! ## A215060.P17759561226610950697

`A010057(A130321(n))*A215064(n)`
-/

namespace A215060.P17759561226610950697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A130321 n).toNat * A215064 n

end

end A215060.P17759561226610950697

/-!
# A215061: Triangle read by rows, e.g.f. exp(x*(z-1/2))*((exp(3*x/2)+2*cos(sqrt(3)*x/2))/3).

The programs for A215061, there is no canonical definition to state claims against.
-/

/-! ## A215061.P1536773494168711393

`A116948(n)%2*A007318(n)`
-/

namespace A215061.P1536773494168711393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116948 n) 2 * A007318 n

end

end A215061.P1536773494168711393

/-! ## A215061.P11310055650361047552

`char[A163329(3*n)]*A007318(n)`
-/

namespace A215061.P11310055650361047552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007318 n

end

end A215061.P11310055650361047552

/-! ## A215061.P18370150646368164290

`(A004736(n+1)%3)%2*A007318(n)`
-/

namespace A215061.P18370150646368164290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004736 (n + 1)) 3) 2 * A007318 n

end

end A215061.P18370150646368164290

/-! ## A215061.P9727158488557748618

`sqrt(A008459(n))*val(((A025581(n)+1)%3)²+1, 2)`
-/

namespace A215061.P9727158488557748618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (SequenceMachineLib.valuation (Int.tmod (A025581 n + 1) 3 ^ 2 + 1).toNat 2 : ℝ)

end

end A215061.P9727158488557748618

/-! ## A215061.P6445650903656807898

`A007318(n)*A079978(A025581(n))`
-/

namespace A215061.P6445650903656807898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A079978 (A025581 n).toNat

end

end A215061.P6445650903656807898

/-! ## A215061.P9115788755967822426

`A007318(n)*A010057(A130321(n))`
-/

namespace A215061.P9115788755967822426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A010057 (A130321 n).toNat

end

end A215061.P9115788755967822426

/-! ## A215061.P8461206620646379689

`A007318(n)*A057427(A111373(n))`
-/

namespace A215061.P8461206620646379689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057427 (A111373 n).toNat

end

end A215061.P8461206620646379689

/-! ## A215061.P5723781208938616050

`A007318(n)*A070563(A099375(n))`
-/

namespace A215061.P5723781208938616050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A070563 (A099375 n).toNat

end

end A215061.P5723781208938616050

/-! ## A215061.P10195681275331856436

`A007318(n)*A024692(A025581(n)+1)`
-/

namespace A215061.P10195681275331856436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A024692 (A025581 n + 1).toNat

end

end A215061.P10195681275331856436

/-! ## A215061.P5685101177351745771

`A000035(A104582(n+1))*A007318(n)`
-/

namespace A215061.P5685101177351745771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A104582 (n + 1)).toNat * A007318 n

end

end A215061.P5685101177351745771

/-!
# A215062: Triangle read by rows, e.g.f. exp(x*(z+3/2))/((exp(3*x/2)+2*cos(sqrt(3)*x/2))/3).

The programs for A215062, there is no canonical definition to state claims against.
-/

/-! ## A215062.P3054095895352775153

`A215064(n)-A215060(n)%A109449(n)`
-/

namespace A215062.P3054095895352775153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215064 n - Int.tmod (A215060 n) (A109449 n)

end

end A215062.P3054095895352775153

/-! ## A215062.P875766141142267431

`A215064(n)*A233427(A152151(n))`
-/

namespace A215062.P875766141142267431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215064 n * A233427 (A152151 n).toNat

end

end A215062.P875766141142267431

/-! ## A215062.P11403258682340654096

`A215064(n)*A323512(A134151(n+1))`
-/

namespace A215062.P11403258682340654096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215064 n * A323512 (A134151 (n + 1)).toNat

end

end A215062.P11403258682340654096

/-! ## A215062.P374798574908399951

`A121548(n+1)-A210715(A108074(n))`
-/

namespace A215062.P374798574908399951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (n + 1) - A210715 (A108074 n).toNat

end

end A215062.P374798574908399951

/-!
# A215063: Triangle read by rows, e.g.f. exp(x*(z-3/2))*(exp(3*x/2)+2*cos(sqrt(3)*x/2))/3.

The programs for A215063, there is no canonical definition to state claims against.
-/

/-! ## A215063.P7476068402487388375

`A057681(A025581(n))*A130595(n)`
-/

namespace A215063.P7476068402487388375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (A025581 n).toNat * A130595 n

end

end A215063.P7476068402487388375

/-! ## A215063.P10387098775284715468

`A057681(A025660(n+1))*A130595(n)`
-/

namespace A215063.P10387098775284715468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (A025660 (n + 1)).toNat * A130595 n

end

end A215063.P10387098775284715468

/-! ## A215063.P15316182499036936220

`A103312(A004736(n+1))*A130595(n)`
-/

namespace A215063.P15316182499036936220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (A004736 (n + 1)).toNat * A130595 n

end

end A215063.P15316182499036936220

/-! ## A215063.P16471175603620699907

`A215064(n)*A233427(A152151(n))*A097807(n)`
-/

namespace A215063.P16471175603620699907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215064 n * A233427 (A152151 n).toNat * A097807 n

end

end A215063.P16471175603620699907

/-! ## A215063.P9271143413968188220

`A215064(n)*A323512(A134151(n+1))*A097807(n)`
-/

namespace A215063.P9271143413968188220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215064 n * A323512 (A134151 (n + 1)).toNat * A097807 n

end

end A215063.P9271143413968188220

/-!
# A215064: Triangle read by rows, e.g.f. exp(x*z)*((exp(x/2)+exp(x*3/2))/((exp(3*x/2)+ 2*cos(sqrt(3)*x/2))/3)-1).

The programs for A215064, there is no canonical definition to state claims against.
-/

/-! ## A215064.P17620656051016890079

`A294034(n+1)/∑[char[∑[n]]]`
-/

namespace A215064.P17620656051016890079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294034 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A215064.P17620656051016890079

/-! ## A215064.P10922445475985106211

`or(A215060(n), A215062(n))`
-/

namespace A215064.P10922445475985106211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215060 n) (A215062 n)

end

end A215064.P10922445475985106211

/-! ## A215064.P11423061328347394381

`floor(A294034(n+1)/A002024(n+1))`
-/

namespace A215064.P11423061328347394381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294034 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A215064.P11423061328347394381

/-! ## A215064.P2069220079677314435

`floor(A294034(n+1)/A349520(2*(n+1)))`
-/

namespace A215064.P2069220079677314435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294034 (n + 1) : ℚ) / (A349520 (2 * (n + 1)) : ℚ)⌋

end

end A215064.P2069220079677314435

/-! ## A215064.P16791824328528640134

`ceil(A294034(n+1)/A349520(2*n+2))`
-/

namespace A215064.P16791824328528640134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A294034 (n + 1) : ℚ) / (A349520 (2 * n + 2) : ℚ)⌉

end

end A215064.P16791824328528640134

/-! ## A215064.P912976540262584038

`round(A294034(C(n+1, n))/A002024(n+1))`
-/

namespace A215064.P912976540262584038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A294034 (Nat.choose (n + 1) n) : ℚ) / (A002024 (n + 1) : ℚ))

end

end A215064.P912976540262584038

/-! ## A215064.P2049095741954683288

`A215062(n)+A215060(n)%A109449(n)`
-/

namespace A215064.P2049095741954683288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215062 n + Int.tmod (A215060 n) (A109449 n)

end

end A215064.P2049095741954683288

/-!
# A215066: Expansion of e.g.f.: Sum_{n>=0} Product_{k=1..n} (exp((2*k-1)*x) - 1).

The programs for A215066, there is no canonical definition to state claims against.
-/

/-! ## A215066.P17712374612031451724

`A225837(A002524(∑[n]))`
-/

namespace A215066.P17712374612031451724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (A002524 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A215066.P17712374612031451724

/-!
# A215067: Number of Motzkin n-paths avoiding odd-numbered steps that are up steps.

The programs for A215067, there is no canonical definition to state claims against.
-/

/-! ## A215067.P5779481681408978779

`A321484(n)+A210713(n)`
-/

namespace A215067.P5779481681408978779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321484 n + A210713 n

end

end A215067.P5779481681408978779

/-! ## A215067.P8631870700379280774

`A321484(n)+A093952(A008619(n))`
-/

namespace A215067.P8631870700379280774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321484 n + A093952 (A008619 n).toNat

end

end A215067.P8631870700379280774

/-! ## A215067.P11669393106215408973

`A085736(A178852(n))`
-/

namespace A215067.P11669393106215408973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A178852 n).toNat

end

end A215067.P11669393106215408973

/-! ## A215067.P14994552644141685026

`A323048(A178852(n)+1)`
-/

namespace A215067.P14994552644141685026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A178852 n + 1).toNat

end

end A215067.P14994552644141685026

/-! ## A215067.P2696723538541047248

`A178852(n)+A169671(A018030(n))`
-/

namespace A215067.P2696723538541047248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178852 n + A169671 (A018030 n).toNat

end

end A215067.P2696723538541047248

/-!
# A215068: Numbers n such that for all divisors d of n, d+1 is either a prime or a perfect power.

The programs for A215068, there is no canonical definition to state claims against.
-/

/-! ## A215068.P2605728223315233340

`eq[∏{e}[n+1, #+1], A141197(n+1)]+1`
-/

namespace A215068.P2605728223315233340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A215068.P2605728223315233340

/-! ## A215068.P14424587034930981265

`∩[A329855(n+1), A342339(n+1)]`
-/

namespace A215068.P14424587034930981265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215068.P14424587034930981265

/-! ## A215068.P15418077459567398425

`∩[A329855(n+1), A353744(n+1)]`
-/

namespace A215068.P15418077459567398425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215068.P15418077459567398425

/-! ## A215068.P1602439365895935217

`∩[A056651(n+1), A329855(n+1)]`
-/

namespace A215068.P1602439365895935217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215068.P1602439365895935217

/-! ## A215068.P653371068393421949

`∩[A329855(n+1), A334966(n+1)]`
-/

namespace A215068.P653371068393421949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215068.P653371068393421949

/-!
# A215069: Natural numbers that when squared can be expressed as sums of a positive square number and a positive triangular number.

The programs for A215069, there is no canonical definition to state claims against.
-/

/-! ## A215069.P3195508044955966331

`sqrt(A214937(n+1))`
-/

namespace A215069.P3195508044955966331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A214937 (n + 1) : ℝ)

end

end A215069.P3195508044955966331

/-! ## A215069.P1186397500839035472

`root(A214937(n+1), gcd(2, A033488(n)))`
-/

namespace A215069.P1186397500839035472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214937 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A033488 n) : ℝ))

end

end A215069.P1186397500839035472

/-! ## A215069.P14569410761156569930

`A003602(Δ[A214937(n+1)]+2)-2`
-/

namespace A215069.P14569410761156569930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (n + 1) - f1 n + 2).toNat - 2

end

end A215069.P14569410761156569930

/-! ## A215069.P14288379574007410487

`root(A214937(n+1), 2%A182427(n+1))`
-/

namespace A215069.P14288379574007410487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214937 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A182427 (n + 1)) : ℝ))

end

end A215069.P14288379574007410487

/-! ## A215069.P3150338981898063609

`root(A214937(n+1), A001316(A001316(n)))`
-/

namespace A215069.P3150338981898063609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214937 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A215069.P3150338981898063609

/-! ## A215069.P7120673542126027886

`A262689(A214937(n+1)+char[1])`
-/

namespace A215069.P7120673542126027886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A214937 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A215069.P7120673542126027886

/-! ## A215069.P8022230158234581213

`A056622(A214937(n+1))%A016885(n)`
-/

namespace A215069.P8022230158234581213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056622 (A214937 (n + 1)).toNat) (A016885 n)

end

end A215069.P8022230158234581213

/-! ## A215069.P2296631855995022717

`A056622(A214937(n+1)%A046312(n+1))`
-/

namespace A215069.P2296631855995022717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (Int.tmod (A214937 (n + 1)) (A046312 (n + 1))).toNat

end

end A215069.P2296631855995022717

/-! ## A215069.P12308729283823347877

`lt[1, A001221(8*n²+1)]`
-/

namespace A215069.P12308729283823347877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (8 * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A215069.P12308729283823347877

/-! ## A215069.P17712196545114221481

`lt[3, A000005(8*n²+1)]`
-/

namespace A215069.P17712196545114221481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A215069.P17712196545114221481

/-!
# A215070: Number of squarefree words of length n in an n-ary alphabet, with new values 0..n-1 introduced in increasing order.

The programs for A215070, there is no canonical definition to state claims against.
-/

/-! ## A215070.P7852693550792893188

`A215075(2*n²+1)`
-/

namespace A215070.P7852693550792893188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (2 * n ^ 2 + 1)

end

end A215070.P7852693550792893188

/-! ## A215070.P12861401574018022565

`A215075(A058331(n))%A075966(n)`
-/

namespace A215070.P12861401574018022565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215075 (A058331 n).toNat) (A075966 n)

end

end A215070.P12861401574018022565

/-! ## A215070.P14167446756857841467

`lcm(A057077(n), A215075(A058331(n)))`
-/

namespace A215070.P14167446756857841467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A215075 (A058331 n).toNat)

end

end A215070.P14167446756857841467

/-! ## A215070.P4708175225578564996

`or(A000007(n), A215075(A058331(n)))`
-/

namespace A215070.P4708175225578564996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A215075 (A058331 n).toNat)

end

end A215070.P4708175225578564996

/-! ## A215070.P10176992286579701072

`A215075(A058331(n))+A167688(n+1)`
-/

namespace A215070.P10176992286579701072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A058331 n).toNat + A167688 (n + 1)

end

end A215070.P10176992286579701072

/-!
# A215071: Number of squarefree words of length n in a 5-ary alphabet, with new values 0..4 introduced in increasing order.

The programs for A215071, there is no canonical definition to state claims against.
-/

/-! ## A215071.P809406021940882272

`A215075(∑[n+3]+n+4)`
-/

namespace A215071.P809406021940882272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A215071.P809406021940882272

/-! ## A215071.P16034933990286858016

`A215075(A155212(n)+5)*A295920(A152813(n))`
-/

namespace A215071.P16034933990286858016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A155212 n + 5).toNat * A295920 (A152813 n).toNat

end

end A215071.P16034933990286858016

/-! ## A215071.P15050568516300856694

`A215075(A167614(n+1)+A005408(n))%A038507(n)`
-/

namespace A215071.P15050568516300856694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215075 (A167614 (n + 1) + A005408 n).toNat) (A038507 n)

end

end A215071.P15050568516300856694

/-! ## A215071.P7633621203331884228

`A215075(A167614(n+1)+A005408(n))+A000007(n+1)`
-/

namespace A215071.P7633621203331884228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A167614 (n + 1) + A005408 n).toNat + A000007 (n + 1)

end

end A215071.P7633621203331884228

/-!
# A215072: Number of squarefree words of length n in a 6-ary alphabet, with new values 0..5 introduced in increasing order.

The programs for A215072, there is no canonical definition to state claims against.
-/

/-! ## A215072.P13399010786944169855

`A215075(Δ[A264443(n)])`
-/

namespace A215072.P13399010786944169855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (f1 (n + 1) - f1 n).toNat

end

end A215072.P13399010786944169855

/-! ## A215072.P14984306789769072138

`A215075(A046691(n+3))`
-/

namespace A215072.P14984306789769072138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A046691 (n + 3)).toNat

end

end A215072.P14984306789769072138

/-! ## A215072.P14388140715792480151

`A215075(A056115(n)+11)`
-/

namespace A215072.P14388140715792480151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A056115 n + 11).toNat

end

end A215072.P14388140715792480151

/-! ## A215072.P14040829769335181863

`A215075(eq[2, A092921(n)])`
-/

namespace A215072.P14040829769335181863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215072.P14040829769335181863

/-! ## A215072.P6654617673244900455

`A215075(eq[4, A193592(n)])`
-/

namespace A215072.P6654617673244900455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215072.P6654617673244900455

/-!
# A215073: Number of squarefree words of length n in a 7-ary alphabet, with new values 0..6 introduced in increasing order.

The programs for A215073, there is no canonical definition to state claims against.
-/

/-! ## A215073.P9993767454906070376

`A215075(A052905(n+3))`
-/

namespace A215073.P9993767454906070376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A052905 (n + 3)).toNat

end

end A215073.P9993767454906070376

/-! ## A215073.P12022837918465778070

`A215075(A056119(n)+16)`
-/

namespace A215073.P12022837918465778070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A056119 n + 16).toNat

end

end A215073.P12022837918465778070

/-! ## A215073.P5876759770834492772

`A215075(eq[5, A193592(n)])`
-/

namespace A215073.P5876759770834492772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215073.P5876759770834492772

/-! ## A215073.P13989772593864277862

`A215075(A055999(n+3)+1)`
-/

namespace A215073.P13989772593864277862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A055999 (n + 3) + 1).toNat

end

end A215073.P13989772593864277862

/-! ## A215073.P7704883133875817407

`A215075(A034856(n+5)-3)`
-/

namespace A215073.P7704883133875817407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A034856 (n + 5) - 3).toNat

end

end A215073.P7704883133875817407

/-!
# A215074: Number of squarefree words of length n in an 8-ary alphabet, with new values 0..7 introduced in increasing order.

The programs for A215074, there is no canonical definition to state claims against.
-/

/-! ## A215074.P13974973274922561626

`A215075(A055999(n+4))`
-/

namespace A215074.P13974973274922561626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A055999 (n + 4)).toNat

end

end A215074.P13974973274922561626

/-! ## A215074.P8121431692608830737

`A215075(A134227(n+5))`
-/

namespace A215074.P8121431692608830737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A134227 (n + 5)).toNat

end

end A215074.P8121431692608830737

/-! ## A215074.P353241854775450506

`A215075(eq[6, A193592(n)])`
-/

namespace A215074.P353241854775450506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215074.P353241854775450506

/-! ## A215074.P7481537326480492218

`A215075(Δ[A023551(n+2)])`
-/

namespace A215074.P7481537326480492218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (f1 (n + 1) - f1 n).toNat

end

end A215074.P7481537326480492218

/-! ## A215074.P961524086344280705

`A215075(A052905(n+4)-1)`
-/

namespace A215074.P961524086344280705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A052905 (n + 4) - 1).toNat

end

end A215074.P961524086344280705

/-!
# A215075: T(n,k) = Number of squarefree words of length n in a (k+1)-ary alphabet, with new values 0..k introduced in increasing order.

The programs for A215075, there is no canonical definition to state claims against.
-/

/-! ## A215075.P15194647232034006092

`A287847(n)+A010054(A097598(2*n+1))`
-/

namespace A215075.P15194647232034006092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 n + A010054 (A097598 (2 * n + 1)).toNat

end

end A215075.P15194647232034006092

/-! ## A215075.P4909314880181042056

`and(A238888(n), A330100(A003658(n+1)))`
-/

namespace A215075.P4909314880181042056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238888 n) (A330100 (A003658 (n + 1)).toNat)

end

end A215075.P4909314880181042056

/-! ## A215075.P7275691638918165154

`A287417(n)-A240328(A283551(2*(n+1)))`
-/

namespace A215075.P7275691638918165154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 n - A240328 (A283551 (2 * (n + 1))).toNat

end

end A215075.P7275691638918165154

/-! ## A215075.P9031033793442027974

`A325404(A295259(n+1))%A212012(n+1)`
-/

namespace A215075.P9031033793442027974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325404 (A295259 (n + 1)).toNat) (A212012 (n + 1))

end

end A215075.P9031033793442027974

/-!
# A215076: a(n) = 3*a(n-1) + 4*a(n-2) + a(n-3) with a(0)=3, a(1)=3, a(2)=17.

The programs for A215076, the canonical program `A215076.P2879348542440875335` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215076 has offset 0).

The definition of A215076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)+a(n-3)` (program `A215076.P2879348542440875335`, by `A215076.P2879348542440875335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215076.P2879348542440875335

`3*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=3, a(1)=3, a(2)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215076

/-- `3*a(n-1)+4*a(n-2)+a(n-3)` -/
def P2879348542440875335.Spec : Prop :=
  ∀ n, (P2879348542440875335.a n : ℤ) = A215076 n

theorem P2879348542440875335.correct : P2879348542440875335.Spec := by
  intro n
  simp only [A215076]

end A215076

/-! ## A215076.P6618243911574873683

`ogf((-3+6x+4x^2)/(-1+3x+4x^2+x^3))`
-/

namespace A215076.P6618243911574873683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, -4] [1, -3, -4, -1] n

end

end A215076.P6618243911574873683

namespace A215076

/-- `ogf((-3+6x+4x^2)/(-1+3x+4x^2+x^3))` -/
def P6618243911574873683.Spec : Prop :=
  ∀ n, P6618243911574873683.a n = A215076 n

end A215076

/-! ## A215076.P13426029365062023629

`abs(Δ[A215100(abs(1-n))])`
-/

namespace A215076.P13426029365062023629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215100 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215076.P13426029365062023629

namespace A215076

/-- `abs(Δ[A215100(abs(1-n))])` -/
def P13426029365062023629.Spec : Prop :=
  ∀ n, P13426029365062023629.a n = A215076 n

end A215076

/-! ## A215076.P4368568348964840972

`Δ[A181879(n)-A321715(n)]`
-/

namespace A215076.P4368568348964840972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 n - A321715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215076.P4368568348964840972

namespace A215076

/-- `Δ[A181879(n)-A321715(n)]` -/
def P4368568348964840972.Spec : Prop :=
  ∀ n, P4368568348964840972.a n = A215076 n

end A215076

/-! ## A215076.P17016708990216498081

`A321703(n)-2*A321715(n+1)`
-/

namespace A215076.P17016708990216498081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321703 n - 2 * A321715 (n + 1)

end

end A215076.P17016708990216498081

namespace A215076

/-- `A321703(n)-2*A321715(n+1)` -/
def P17016708990216498081.Spec : Prop :=
  ∀ n, P17016708990216498081.a n = A215076 n

end A215076

/-! ## A215076.P10305485725341540789

`A215100(n)+A321715(n)-A181879(n)`
-/

namespace A215076.P10305485725341540789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215100 n + (A321715 n - A181879 n)

end

end A215076.P10305485725341540789

namespace A215076

/-- `A215100(n)+A321715(n)-A181879(n)` -/
def P10305485725341540789.Spec : Prop :=
  ∀ n, P10305485725341540789.a n = A215076 n

end A215076

/-!
# A215077: Binomial convolution of sum of consecutive powers.

The programs for A215077, there is no canonical definition to state claims against.
-/

/-! ## A215077.P1106122043555972753

`A004526(A052641(n))`
-/

namespace A215077.P1106122043555972753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A052641 n).toNat

end

end A215077.P1106122043555972753

/-!
# A215078: Triangle of sums of the first k n-th powers multiplied by binomial(n,k), read by rows.

The programs for A215078, there is no canonical definition to state claims against.
-/

/-! ## A215078.P2555985226831508980

`A007318(n)*A215083(n)`
-/

namespace A215078.P2555985226831508980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A215083 n

end

end A215078.P2555985226831508980

/-! ## A215078.P7785111549630549382

`A091918(n)*A215083(n)`
-/

namespace A215078.P7785111549630549382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A215083 n

end

end A215078.P7785111549630549382

/-! ## A215078.P15350087207329154131

`A132749(n)*A215083(n)`
-/

namespace A215078.P15350087207329154131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A215083 n

end

end A215078.P15350087207329154131

/-! ## A215078.P3247116998408052709

`A135227(n)*A215083(n)`
-/

namespace A215078.P3247116998408052709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A215083 n

end

end A215078.P3247116998408052709

/-! ## A215078.P15141321351389135054

`A183154(n)*A215083(n)`
-/

namespace A215078.P15141321351389135054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A215083 n

end

end A215078.P15141321351389135054

/-! ## A215078.P444530133455935887

`A206735(n)*A215083(n)`
-/

namespace A215078.P444530133455935887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A215083 n

end

end A215078.P444530133455935887

/-! ## A215078.P636368229254778057

`(A014473(n)+1)*A215083(n)`
-/

namespace A215078.P636368229254778057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A215083 n

end

end A215078.P636368229254778057

/-! ## A215078.P15783376799606689355

`A028326(n)/2*A215083(n)`
-/

namespace A215078.P15783376799606689355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A215083 n : ℚ)

end

end A215078.P15783376799606689355

/-! ## A215078.P13197404583798723033

`(A097805(n+1)+A097805(n))*A215083(n)`
-/

namespace A215078.P13197404583798723033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A097805 n) * A215083 n

end

end A215078.P13197404583798723033

/-! ## A215078.P317952902374120552

`A004525(A028326(n))*A215083(n)`
-/

namespace A215078.P317952902374120552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A215083 n

end

end A215078.P317952902374120552

/-!
# A215079: Triangle T(n,k) = k^n * sum(binomial(n,n-k-j),j=0..n-k).

The programs for A215079, the canonical program `A215079.P7857227990351126838` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215079 has offset 0).

The definition of A215079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1576 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215079.P7857227990351126838

`A002262(n)^A003056(n)*A055248(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215079

/-- `A002262(n)^A003056(n)*A055248(n)` -/
def P7857227990351126838.Spec : Prop :=
  ∀ n, P7857227990351126838.a n = (A215079 n : ℚ)

end A215079

/-! ## A215079.P424210381832739493

`A004248(A245300(n))*A055248(n)`
-/

namespace A215079.P424210381832739493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A245300 n).toNat * A055248 n

end

end A215079.P424210381832739493

namespace A215079

/-- `A004248(A245300(n))*A055248(n)` -/
def P424210381832739493.Spec : Prop :=
  ∀ n, P424210381832739493.a n = A215079 n

end A215079

/-! ## A215079.P15587432197410701813

`abs(A103316(n))*A004248(A245300(n))`
-/

namespace A215079.P15587432197410701813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103316 n| * A004248 (A245300 n).toNat

end

end A215079.P15587432197410701813

namespace A215079

/-- `abs(A103316(n))*A004248(A245300(n))` -/
def P15587432197410701813.Spec : Prop :=
  ∀ n, P15587432197410701813.a n = A215079 n

end A215079

/-! ## A215079.P12625031036992360674

`A322435(char[∑[n]]+∑[2*n])`
-/

namespace A215079.P12625031036992360674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322435 ((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A215079.P12625031036992360674

namespace A215079

/-- `A322435(char[∑[n]]+∑[2*n])` -/
def P12625031036992360674.Spec : Prop :=
  ∀ n, P12625031036992360674.a n = A215079 n

end A215079

/-! ## A215079.P2871749865474627915

`A090238(n)+A002262(A205801(n))`
-/

namespace A215079.P2871749865474627915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 n + A002262 (A205801 n).toNat

end

end A215079.P2871749865474627915

namespace A215079

/-- `A090238(n)+A002262(A205801(n))` -/
def P2871749865474627915.Spec : Prop :=
  ∀ n, P2871749865474627915.a n = A215079 n

end A215079

/-!
# A215081: Smallest number k such that the difference between the greatest prime divisor and the smallest prime divisor of k equals n, or 0 if there is no such k.

The programs for A215081, there is no canonical definition to state claims against.
-/

/-! ## A215081.P7788805076541708550

`A066169(n+1)*A087242(round(sqrt(n²+1)))`
-/

namespace A215081.P7788805076541708550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (n + 1) * A087242 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A215081.P7788805076541708550

/-!
# A215082: Related to Fibonacci numbers, see the Formula section.

The programs for A215082, there is no canonical definition to state claims against.
-/

/-! ## A215082.P8683752491858438113

`A122921(A181984(n)-A096852(n))`
-/

namespace A215082.P8683752491858438113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A181984 n - A096852 n).toNat

end

end A215082.P8683752491858438113

/-! ## A215082.P15487867378912549332

`A291811(A097333(n)-A081400(n+1))`
-/

namespace A215082.P15487867378912549332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A097333 n - A081400 (n + 1)).toNat

end

end A215082.P15487867378912549332

/-! ## A215082.P5289053488301595385

`A274112(n+2)-A010054(A041123(n))`
-/

namespace A215082.P5289053488301595385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (n + 2) - A010054 (A041123 n).toNat

end

end A215082.P5289053488301595385

/-! ## A215082.P17462530463809173591

`A274112(n+2)-A010054(A383001(n))`
-/

namespace A215082.P17462530463809173591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (n + 2) - A010054 (A383001 n).toNat

end

end A215082.P17462530463809173591

/-! ## A215082.P7852814456949983307

`A353086(or(A001461(n+1), A353748(n+1)))`
-/

namespace A215082.P7852814456949983307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (Int.lor (A001461 (n + 1)) (A353748 (n + 1))).toNat

end

end A215082.P7852814456949983307

/-!
# A215083: Triangle T(n,k) = sum of the k first n-th powers.

The programs for A215083, there is no canonical definition to state claims against.
-/

/-! ## A215083.P5190224008321952171

`A215078(n)/A007318(n)`
-/

namespace A215083.P5190224008321952171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215078 n : ℚ) / (A007318 n : ℚ)

end

end A215083.P5190224008321952171

/-! ## A215083.P17187467987616855201

`A215078(n)/A091918(n)`
-/

namespace A215083.P17187467987616855201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215078 n : ℚ) / (A091918 n : ℚ)

end

end A215083.P17187467987616855201

/-! ## A215083.P1639891227832102260

`A215078(n)/A132749(n)`
-/

namespace A215083.P1639891227832102260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215078 n : ℚ) / (A132749 n : ℚ)

end

end A215083.P1639891227832102260

/-! ## A215083.P9756766287660169784

`A215078(n)/A135227(n)`
-/

namespace A215083.P9756766287660169784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215078 n : ℚ) / (A135227 n : ℚ)

end

end A215083.P9756766287660169784

/-! ## A215083.P5046823343838963855

`A215078(n)/A183154(n)`
-/

namespace A215083.P5046823343838963855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215078 n : ℚ) / (A183154 n : ℚ)

end

end A215083.P5046823343838963855

/-! ## A215083.P12802127532900976684

`A215078(n)/(A014473(n)+1)`
-/

namespace A215083.P12802127532900976684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215078 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A215083.P12802127532900976684

/-! ## A215083.P17423253717863493090

`3/A134060(n)*A215078(n)`
-/

namespace A215083.P17423253717863493090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A134060 n : ℚ) * (A215078 n : ℚ)

end

end A215083.P17423253717863493090

/-! ## A215083.P11854283229404545397

`A103438(A245300(n))`
-/

namespace A215083.P11854283229404545397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (A245300 n).toNat

end

end A215083.P11854283229404545397

/-!
# A215084: a(n) = sum of the sums of the k first n-th powers.

The programs for A215084, there is no canonical definition to state claims against.
-/

/-! ## A215084.P17614948408691608795

`A341331(n+1)-(n+1)*A191686(n+1)`
-/

namespace A215084.P17614948408691608795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341331 (n + 1) - (n + 1 : ℤ) * A191686 (n + 1)

end

end A215084.P17614948408691608795

/-! ## A215084.P16902023313504543712

`(n+1)*A076015(n+1)-A031971(n+1)`
-/

namespace A215084.P16902023313504543712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076015 (n + 1) - A031971 (n + 1)

end

end A215084.P16902023313504543712

/-!
# A215085: a(n) = (A214089(n)^2 - 1) divided by four times the product of the first n primes.

The programs for A215085, there is no canonical definition to state claims against.
-/

/-! ## A215085.P8152758955604514211

`(A214089(n+1)²-1)/(4*A002110(n+1))`
-/

namespace A215085.P8152758955604514211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214089 (n + 1) ^ 2 - 1 : ℚ) / (4 * A002110 (n + 1) : ℚ)

end

end A215085.P8152758955604514211

/-! ## A215085.P10533663016019093329

`A186891(A208910(n+1)^A248100(n))`
-/

namespace A215085.P10533663016019093329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (SequenceMachineLib.roundAway ((A208910 (n + 1) : ℚ) ^ (A248100 n : ℤ))).toNat

end

end A215085.P10533663016019093329

/-!
# A215086: Number A(n,k) of solid standard Young tableaux of n cells and height <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A215086, there is no canonical definition to state claims against.
-/

/-! ## A215086.P10646223248187892006

`A325678(A294212(n))+A004523(A240608(n))`
-/

namespace A215086.P10646223248187892006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A294212 n).toNat + A004523 (A240608 n).toNat

end

end A215086.P10646223248187892006

/-! ## A215086.P10868631718824329595

`A325678(A294212(n))+A032741(A226873(n))`
-/

namespace A215086.P10868631718824329595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A294212 n).toNat + A032741 (A226873 n).toNat

end

end A215086.P10868631718824329595

/-! ## A215086.P15124276358699450717

`A325678(A294212(n))+A004523(A294220(n))`
-/

namespace A215086.P15124276358699450717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A294212 n).toNat + A004523 (A294220 n).toNat

end

end A215086.P15124276358699450717

/-! ## A215086.P7781036081874684806

`A325678(A294212(n))+A004523(A320955(n))`
-/

namespace A215086.P7781036081874684806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A294212 n).toNat + A004523 (A320955 n).toNat

end

end A215086.P7781036081874684806

/-! ## A215086.P14865741292805794573

`A071662(A320751(n+1))+A068063(A247504(n))`
-/

namespace A215086.P14865741292805794573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 (A320751 (n + 1)).toNat + A068063 (A247504 n).toNat

end

end A215086.P14865741292805794573

/-!
# A215087: Number of solid standard Young tableaux of n cells and height <= 2.

The programs for A215087, there is no canonical definition to state claims against.
-/

/-! ## A215087.P3194763776615407195

`A215086(∑[n+3])`
-/

namespace A215087.P3194763776615407195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215087.P3194763776615407195

/-! ## A215087.P17989360897478592530

`A215086(A141214(n))+A185245(n)`
-/

namespace A215087.P17989360897478592530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A141214 n).toNat + A185245 n

end

end A215087.P17989360897478592530

/-! ## A215087.P3891495480432544125

`A215086(A141214(n))^A178334(n)`
-/

namespace A215087.P3891495480432544125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215086 (A141214 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A215087.P3891495480432544125

/-! ## A215087.P9128109919991278482

`A215086(A141214(n))%A198691(n)`
-/

namespace A215087.P9128109919991278482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215086 (A141214 n).toNat) (A198691 n)

end

end A215087.P9128109919991278482

/-! ## A215087.P13304273291760492268

`A000041(C(2, n+2))*A215086(A141214(n))`
-/

namespace A215087.P13304273291760492268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A215086 (A141214 n).toNat

end

end A215087.P13304273291760492268

/-!
# A215088: a(n)=Sum{d(i)*2^i: i=0,1,...,m}, where Sum{d(i)*5^i: i=0,1,...,m} is the base 5 representation of n.

The programs for A215088, the canonical program `A215088.P13202333273910067831` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215088 has offset 0).

The definition of A215088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215088.P13202333273910067831

`A010874(n)+2*a(A002266(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215088

/-- `A010874(n)+2*a(A002266(n))` -/
def P13202333273910067831.Spec : Prop :=
  ∀ n, P13202333273910067831.a n = A215088 n

theorem P13202333273910067831.correct : P13202333273910067831.Spec := by
  intro n
  simp only [A215088]

end A215088

/-! ## A215088.P14919085111805294614

`A215089(A037465(n))`
-/

namespace A215088.P14919085111805294614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215089 (A037465 n).toNat

end

end A215088.P14919085111805294614

namespace A215088

/-- `A215089(A037465(n))` -/
def P14919085111805294614.Spec : Prop :=
  ∀ n, P14919085111805294614.a n = A215088 n

end A215088

/-! ## A215088.P13165085593953265217

`A203580(A037466(n))`
-/

namespace A215088.P13165085593953265217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203580 (A037466 n).toNat

end

end A215088.P13165085593953265217

namespace A215088

/-- `A203580(A037466(n))` -/
def P13165085593953265217.Spec : Prop :=
  ∀ n, P13165085593953265217.a n = A215088 n

end A215088

/-! ## A215088.P12659221745035719153

`A028897(A007091(n))`
-/

namespace A215088.P12659221745035719153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A007091 n).toNat

end

end A215088.P12659221745035719153

namespace A215088

/-- `A028897(A007091(n))` -/
def P12659221745035719153.Spec : Prop :=
  ∀ n, P12659221745035719153.a n = A215088 n

end A215088

/-! ## A215088.P16067894595247331607

`A028897(A014263(n+1)/2)`
-/

namespace A215088.P16067894595247331607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A215088.P16067894595247331607

namespace A215088

/-- `A028897(A014263(n+1)/2)` -/
def P16067894595247331607.Spec : Prop :=
  ∀ n, P16067894595247331607.a n = A215088 n

end A215088

/-! ## A215088.P12949798578627455349

`A028897(A024657(2*n)/2)`
-/

namespace A215088.P12949798578627455349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (SequenceMachineLib.roundAway ((A024657 (2 * n) : ℚ) / 2)).toNat

end

end A215088.P12949798578627455349

namespace A215088

/-- `A028897(A024657(2*n)/2)` -/
def P12949798578627455349.Spec : Prop :=
  ∀ n, P12949798578627455349.a n = A215088 n

end A215088

/-! ## A215088.P14789017333859714156

`A028897(record[A106747(n)])`
-/

namespace A215088.P14789017333859714156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215088.P14789017333859714156

namespace A215088

/-- `A028897(record[A106747(n)])` -/
def P14789017333859714156.Spec : Prop :=
  ∀ n, P14789017333859714156.a n = A215088 n

end A215088

/-! ## A215088.P3758782883575985574

`A059975(A101943(n))`
-/

namespace A215088.P3758782883575985574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (A101943 n).toNat

end

end A215088.P3758782883575985574

namespace A215088

/-- `A059975(A101943(n))` -/
def P3758782883575985574.Spec : Prop :=
  ∀ n, P3758782883575985574.a n = A215088 n

end A215088

/-!
# A215089: a(n)=Sum{d(i)*6^i: i=0,1,...,m}, where Sum{d(i)*2^i: i=0,1,...,m} is the base 2 representation of n.

The programs for A215089, there is no canonical definition to state claims against.
-/

/-! ## A215089.P6556071185280726308

`A203580(A020657(n+1))`
-/

namespace A215089.P6556071185280726308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203580 (A020657 (n + 1)).toNat

end

end A215089.P6556071185280726308

/-! ## A215089.P2480045403788087712

`A028897(A007092(n))`
-/

namespace A215089.P2480045403788087712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A007092 n).toNat

end

end A215089.P2480045403788087712

/-! ## A215089.P14665502013980126636

`A028897(record[n-A106747(n)])`
-/

namespace A215089.P14665502013980126636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215089.P14665502013980126636

/-! ## A215089.P11348764103672814067

`A028897(eq[A007953(n), A280913(n)])`
-/

namespace A215089.P11348764103672814067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215089.P11348764103672814067

/-! ## A215089.P754744287307049503

`A028897(eq[n, A222253(A222250(n))])`
-/

namespace A215089.P754744287307049503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215089.P754744287307049503

/-!
# A215090: a(n) = Sum_{i=0..m} d(i)*3^i, where Sum_{i=0..m} d(i)*4^i is the base-4 representation of n.

The programs for A215090, there is no canonical definition to state claims against.
-/

/-! ## A215090.P17501371474794530064

`A028898(A007090(n))`
-/

namespace A215090.P17501371474794530064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A007090 n).toNat

end

end A215090.P17501371474794530064

/-! ## A215090.P16648551261175854994

`A028898(eq[0, A102673(n)])`
-/

namespace A215090.P16648551261175854994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215090.P16648551261175854994

/-! ## A215090.P9656971432638150474

`A028898(A222239(record[A222239(n)]))`
-/

namespace A215090.P9656971432638150474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A215090.P9656971432638150474

/-! ## A215090.P8588325680914281738

`A294317(A163331(record[A117966(n)]))`
-/

namespace A215090.P8588325680914281738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A163331 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A215090.P8588325680914281738

/-! ## A215090.P14167999735050539509

`∑{p}[A019565(n), A097246(A048675(#))]`
-/

namespace A215090.P14167999735050539509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A097246 (A048675 p).toNat

end

end A215090.P14167999735050539509

/-!
# A215091: Power floor-ceiling sequence of sqrt(5).

The programs for A215091, the canonical program `A215091.P16462578821319219702` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215091 has offset 0).

The definition of A215091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215091.P16462578821319219702

`ceil(sqrt(5)*a(n-1))-char[2*n]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215091

/-- `ceil(sqrt(5)*a(n-1))-char[2*n]` -/
def P16462578821319219702.Spec : Prop :=
  ∀ n, P16462578821319219702.a n = A215091 n

theorem P16462578821319219702.correct : P16462578821319219702.Spec := by
  intro n
  simp only [A215091]

end A215091

/-! ## A215091.P15177421994940679010

`A000035(n)+ceil(sqrt(5)*a(n-1))-1` with `a(0)=2`
-/

namespace A215091.P15177421994940679010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000035 n + (⌈Real.sqrt (5 : ℝ) * (a (n - 1) : ℝ)⌉ - 1)

end

end A215091.P15177421994940679010

namespace A215091

/-- `A000035(n)+ceil(sqrt(5)*a(n-1))-1` -/
def P15177421994940679010.Spec : Prop :=
  ∀ n, P15177421994940679010.a n = A215091 n

end A215091

/-! ## A215091.P115081525342775720

`or(1, A022839(a(n-1)))` with `a(0)=2`
-/

namespace A215091.P115081525342775720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor 1 (A022839 (a (n - 1)).toNat)

end

end A215091.P115081525342775720

namespace A215091

/-- `or(1, A022839(a(n-1)))` -/
def P115081525342775720.Spec : Prop :=
  ∀ n, P115081525342775720.a n = A215091 n

end A215091

/-! ## A215091.P187602267487380070

`2*A194151(a(n-1))+1` with `a(0)=2`
-/

namespace A215091.P187602267487380070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A194151 (a (n - 1)).toNat + 1

end

end A215091.P187602267487380070

namespace A215091

/-- `2*A194151(a(n-1))+1` -/
def P187602267487380070.Spec : Prop :=
  ∀ n, P187602267487380070.a n = A215091 n

end A215091

/-! ## A215091.P11116173787705996035

`or(1, A190511(a(n-1))+1)` with `a(0)=2`
-/

namespace A215091.P11116173787705996035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor 1 (A190511 (a (n - 1)).toNat + 1)

end

end A215091.P11116173787705996035

namespace A215091

/-- `or(1, A190511(a(n-1))+1)` -/
def P11116173787705996035.Spec : Prop :=
  ∀ n, P11116173787705996035.a n = A215091 n

end A215091

/-!
# A215092: a(n) = Sum_{i=0..m} d(i)*3^i, where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

The programs for A215092, the canonical program `A215092.P9241392620537580199` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215092 has offset 1).

The definition of A215092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215092.P9241392620537580199

`∑[2-A080278(A234959(n+1))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A215092

/-- `∑[2-A080278(A234959(n+1))]` -/
def P9241392620537580199.Spec : Prop :=
  ∀ n, P9241392620537580199.a n = A215092 (n + 1)

theorem P9241392620537580199.correct : P9241392620537580199.Spec := by
  intro n
  simp only [A215092, Nat.add_sub_cancel]

end A215092

/-! ## A215092.P9894363175341550482

`a(A023443(n))+2-A080278(A234959(n+1))` with `a(0)=1`
-/

namespace A215092.P9894363175341550482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat + (2 - A080278 (A234959 (n + 1)).toNat)

end

end A215092.P9894363175341550482

namespace A215092

/-- `a(A023443(n))+2-A080278(A234959(n+1))` -/
def P9894363175341550482.Spec : Prop :=
  ∀ n, P9894363175341550482.a n = A215092 (n + 1)

end A215092

/-! ## A215092.P7213805943491285118

`A028898(A007092(n+1))`
-/

namespace A215092.P7213805943491285118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A007092 (n + 1)).toNat

end

end A215092.P7213805943491285118

namespace A215092

/-- `A028898(A007092(n+1))` -/
def P7213805943491285118.Spec : Prop :=
  ∀ n, P7213805943491285118.a n = A215092 (n + 1)

end A215092

/-! ## A215092.P3301628683975457926

`A028898(record[A007092(abs(1-n))])`
-/

namespace A215092.P3301628683975457926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215092.P3301628683975457926

namespace A215092

/-- `A028898(record[A007092(abs(1-n))])` -/
def P3301628683975457926.Spec : Prop :=
  ∀ n, P3301628683975457926.a n = A215092 (n + 1)

end A215092

/-! ## A215092.P16119602214105851942

`∑[A112399(A283857(6^val(n+1, 6)))]`
-/

namespace A215092.P16119602214105851942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112399 (A283857 (6 ^ SequenceMachineLib.valuation (n + 1) 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215092.P16119602214105851942

namespace A215092

/-- `∑[A112399(A283857(6^val(n+1, 6)))]` -/
def P16119602214105851942.Spec : Prop :=
  ∀ n, P16119602214105851942.a n = A215092 (n + 1)

end A215092

/-!
# A215093: E.g.f. satisfies: A(x) = x + sinh( A(x) )^2 / 2.

The programs for A215093, there is no canonical definition to state claims against.
-/

/-! ## A215093.P10723612437495897144

`A008611(lcm(2, A298985(n)))`
-/

namespace A215093.P10723612437495897144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.lcm 2 (A298985 n))

end

end A215093.P10723612437495897144

/-! ## A215093.P5087691620952275906

`A055768(or(2, A337022(n+1)))`
-/

namespace A215093.P5087691620952275906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (Int.lor 2 (A337022 (n + 1))).toNat

end

end A215093.P5087691620952275906

/-!
# A215094: E.g.f. satisfies A(x) = sinh(x + A(x)^2/2).

The programs for A215094, there is no canonical definition to state claims against.
-/

/-! ## A215094.P3385524026620850506

`A020660(A087761(n)+A056943(n))`
-/

namespace A215094.P3385524026620850506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020660 (A087761 n + A056943 n).toNat

end

end A215094.P3385524026620850506

/-! ## A215094.P209495906751894945

`A047309(A207569(n))+A002266(n)`
-/

namespace A215094.P209495906751894945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (A207569 n).toNat + A002266 n

end

end A215094.P209495906751894945

/-!
# A215095: a(0)=0, a(1)=1, a(n) = least k>a(n-1) such that k+a(n-2) is a Jacobsthal number.

The programs for A215095, the canonical program `A215095.P11460191605647078502` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215095 has offset 0).

The definition of A215095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215095.P9845434843133336221

`ogf((-x-2x^2)/(-1+x+x^2+x^3+2x^4))`
-/

namespace A215095.P9845434843133336221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -1, -1, -1, -2] n

end

end A215095.P9845434843133336221

namespace A215095

/-- `ogf((-x-2x^2)/(-1+x+x^2+x^3+2x^4))` -/
def P9845434843133336221.Spec : Prop :=
  ∀ n, P9845434843133336221.a n = A215095 n

end A215095

/-! ## A215095.P18443482887289418385

`a(n-4)+2^(n-1)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A215095.P18443482887289418385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  a (n - 4) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A215095.P18443482887289418385

namespace A215095

/-- `a(n-4)+2^(n-1)` -/
def P18443482887289418385.Spec : Prop :=
  ∀ n, P18443482887289418385.a n = (A215095 n : ℚ)

end A215095

/-! ## A215095.P11460191605647078502

`xor(2*a(n-1), and(3, a(n-2)+1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215095

/-- `xor(2*a(n-1), and(3, a(n-2)+1))` -/
def P11460191605647078502.Spec : Prop :=
  ∀ n, (P11460191605647078502.a n : ℤ) = A215095 n

theorem P11460191605647078502.correct : P11460191605647078502.Spec := by
  intro n
  simp only [A215095]

end A215095

/-! ## A215095.P16337637309005085607

`A115451(n)-A056594(n)`
-/

namespace A215095.P16337637309005085607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 n - A056594 n

end

end A215095.P16337637309005085607

namespace A215095

/-- `A115451(n)-A056594(n)` -/
def P16337637309005085607.Spec : Prop :=
  ∀ n, P16337637309005085607.a n = A215095 n

end A215095

/-! ## A215095.P15825170620611249893

`xor(A059841(n), A115451(n))`
-/

namespace A215095.P15825170620611249893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A115451 n)

end

end A215095.P15825170620611249893

namespace A215095

/-- `xor(A059841(n), A115451(n))` -/
def P15825170620611249893.Spec : Prop :=
  ∀ n, P15825170620611249893.a n = A215095 n

end A215095

/-! ## A215095.P7779061300640634797

`A115451(n)+A181586(n)-A139800(n)`
-/

namespace A215095.P7779061300640634797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 n + (A181586 n - A139800 n)

end

end A215095.P7779061300640634797

namespace A215095

/-- `A115451(n)+A181586(n)-A139800(n)` -/
def P7779061300640634797.Spec : Prop :=
  ∀ n, P7779061300640634797.a n = A215095 n

end A215095

/-! ## A215095.P1367594768636087545

`abs(∑[(-2)^n])-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A215095.P1367594768636087545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |∑ j ∈ Finset.range (n + 1), f1 j| - a (n - 2)

end

end A215095.P1367594768636087545

namespace A215095

/-- `abs(∑[(-2)^n])-a(n-2)` -/
def P1367594768636087545.Spec : Prop :=
  ∀ n, P1367594768636087545.a n = A215095 n

end A215095

/-! ## A215095.P8094574907669305428

`record[Δ[A115851(n)]]`
-/

namespace A215095.P8094574907669305428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215095.P8094574907669305428

namespace A215095

/-- `record[Δ[A115851(n)]]` -/
def P8094574907669305428.Spec : Prop :=
  ∀ n, P8094574907669305428.a n = A215095 n

end A215095

/-! ## A215095.P14012123852307237932

`Δ[A115851(n+3)]`
-/

namespace A215095.P14012123852307237932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215095.P14012123852307237932

namespace A215095

/-- `Δ[A115851(n+3)]` -/
def P14012123852307237932.Spec : Prop :=
  ∀ n, P14012123852307237932.a n = A215095 n

end A215095

/-! ## A215095.P15925696611182904001

`and(A265381(n)-A262864(n), A265381(n))`
-/

namespace A215095.P15925696611182904001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265381 n - A262864 n) (A265381 n)

end

end A215095.P15925696611182904001

namespace A215095

/-- `and(A265381(n)-A262864(n), A265381(n))` -/
def P15925696611182904001.Spec : Prop :=
  ∀ n, P15925696611182904001.a n = A215095 n

end A215095

/-! ## A215095.P12929558226333186397

`A139806(n)-(A139800(n+1)+A115451(n+1))`
-/

namespace A215095.P12929558226333186397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139806 n - (A139800 (n + 1) + A115451 (n + 1))

end

end A215095.P12929558226333186397

namespace A215095

/-- `A139806(n)-(A139800(n+1)+A115451(n+1))` -/
def P12929558226333186397.Spec : Prop :=
  ∀ n, P12929558226333186397.a n = A215095 n

end A215095

/-! ## A215095.P12961453688679853715

`A139800(n+1)+A139814(n+1)-A115451(n+1)`
-/

namespace A215095.P12961453688679853715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (n + 1) + (A139814 (n + 1) - A115451 (n + 1))

end

end A215095.P12961453688679853715

namespace A215095

/-- `A139800(n+1)+A139814(n+1)-A115451(n+1)` -/
def P12961453688679853715.Spec : Prop :=
  ∀ n, P12961453688679853715.a n = A215095 n

end A215095

/-! ## A215095.P770935863461547127

`record[Δ[ceil((2^n-2)/15)]]`
-/

namespace A215095.P770935863461547127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n : ℤ) - 2 : ℚ) / 15⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215095.P770935863461547127

namespace A215095

/-- `record[Δ[ceil((2^n-2)/15)]]` -/
def P770935863461547127.Spec : Prop :=
  ∀ n, P770935863461547127.a n = A215095 n

end A215095

/-! ## A215095.P15139764509977603179

`and(A084241(n), A151754(n+1))`
-/

namespace A215095.P15139764509977603179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084241 n) (A151754 (n + 1))

end

end A215095.P15139764509977603179

namespace A215095

/-- `and(A084241(n), A151754(n+1))` -/
def P15139764509977603179.Spec : Prop :=
  ∀ n, P15139764509977603179.a n = A215095 n

end A215095

/-!
# A215096: a(0)=0, a(1)=1, a(n) = n! - a(n-2).

The programs for A215096, the canonical program `A215096.P6789436975139806031` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215096 has offset 0).

The definition of A215096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-a(n-2)` (program `A215096.P6789436975139806031`, by `A215096.P6789436975139806031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215096.P6789436975139806031

`n!-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215096

/-- `n!-a(n-2)` -/
def P6789436975139806031.Spec : Prop :=
  ∀ n, P6789436975139806031.a n = A215096 n

theorem P6789436975139806031.correct : P6789436975139806031.Spec := by
  intro n
  simp only [A215096]

end A215096

/-! ## A215096.P17607170498579686861

`∏[round(1/acot(n))]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A215096.P17607170498579686861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A215096.P17607170498579686861

namespace A215096

/-- `∏[round(1/acot(n))]-a(n-2)` -/
def P17607170498579686861.Spec : Prop :=
  ∀ n, P17607170498579686861.a n = A215096 n

end A215096

/-! ## A215096.P12227826229128808404

`∏[ceil(abs(γ-n))]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A215096.P12227826229128808404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A215096.P12227826229128808404

namespace A215096

/-- `∏[ceil(abs(γ-n))]-a(n-2)` -/
def P12227826229128808404.Spec : Prop :=
  ∀ n, P12227826229128808404.a n = A215096 n

end A215096

/-! ## A215096.P1632888353498111419

`n*a(n-1)-a(n-2)+n*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A215096.P1632888353498111419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (n : ℤ) * a (n - 1) - a (n - 2) + (n : ℤ) * a (n - 3)

end

end A215096.P1632888353498111419

namespace A215096

/-- `n*a(n-1)-a(n-2)+n*a(n-3)` -/
def P1632888353498111419.Spec : Prop :=
  ∀ n, P1632888353498111419.a n = A215096 n

end A215096

/-! ## A215096.P5028705154568953220

`floor(A000142(n)-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A215096.P5028705154568953220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000142 n - a (n - 2)

end

end A215096.P5028705154568953220

namespace A215096

/-- `floor(A000142(n)-a(n-2))` -/
def P5028705154568953220.Spec : Prop :=
  ∀ n, P5028705154568953220.a n = A215096 n

end A215096

/-! ## A215096.P15737574604822231830

`floor(A052560(n)/3-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A215096.P15737574604822231830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ⌊(A052560 n : ℚ) / 3 - (a (n - 2) : ℚ)⌋

end

end A215096.P15737574604822231830

namespace A215096

/-- `floor(A052560(n)/3-a(n-2))` -/
def P15737574604822231830.Spec : Prop :=
  ∀ n, P15737574604822231830.a n = A215096 n

end A215096

/-! ## A215096.P17793274363511100076

`abs(a(n-2)-A227550(A000217(n)))` with `a(0)=0, a(1)=1`
-/

namespace A215096.P17793274363511100076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 2) - A227550 (A000217 n).toNat|

end

end A215096.P17793274363511100076

namespace A215096

/-- `abs(a(n-2)-A227550(A000217(n)))` -/
def P17793274363511100076.Spec : Prop :=
  ∀ n, P17793274363511100076.a n = A215096 n

end A215096

/-!
# A215097: a(n) = n^3 - a(n-2) for n >= 2 and a(0)=0, a(1)=1.

The programs for A215097, the canonical program `A215097.P10952334182793434921` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215097 has offset 0).

The definition of A215097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-a(n-2)` (program `A215097.P10952334182793434921`, by `A215097.P10952334182793434921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215097.P10952334182793434921

`n^3-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215097

/-- `n^3-a(n-2)` -/
def P10952334182793434921.Spec : Prop :=
  ∀ n, P10952334182793434921.a n = A215097 n

theorem P10952334182793434921.correct : P10952334182793434921.Spec := by
  intro n
  simp only [A215097]

end A215097

/-! ## A215097.P3289739007704363745

`∑[xor(1, ∑[3*n])-1]`
-/

namespace A215097.P3289739007704363745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215097.P3289739007704363745

namespace A215097

/-- `∑[xor(1, ∑[3*n])-1]` -/
def P3289739007704363745.Spec : Prop :=
  ∀ n, P3289739007704363745.a n = A215097 n

end A215097

/-! ## A215097.P11018694547448390479

`∑[∑[∑[and(2, n)²]+n]]`
-/

namespace A215097.P11018694547448390479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215097.P11018694547448390479

namespace A215097

/-- `∑[∑[∑[and(2, n)²]+n]]` -/
def P11018694547448390479.Spec : Prop :=
  ∀ n, (P11018694547448390479.a n : ℤ) = A215097 n

end A215097

/-! ## A215097.P17251026739207129885

`∑[∑[∑[2*and(2, n)]+n]]`
-/

namespace A215097.P17251026739207129885
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215097.P17251026739207129885

namespace A215097

/-- `∑[∑[∑[2*and(2, n)]+n]]` -/
def P17251026739207129885.Spec : Prop :=
  ∀ n, (P17251026739207129885.a n : ℤ) = A215097 n

end A215097

/-! ## A215097.P13190388879249454046

`∑[∑[xor(2, a(n-1)+3)]]` with `a(0)=0`
-/

namespace A215097.P13190388879249454046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.xor 2 (f2 (n - 1) + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215097.P13190388879249454046

namespace A215097

/-- `∑[∑[xor(2, a(n-1)+3)]]` -/
def P13190388879249454046.Spec : Prop :=
  ∀ n, (P13190388879249454046.a n : ℤ) = A215097 n

end A215097

/-! ## A215097.P4942351275864947609

`∑[∑[∑[6-a(n-2)]]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A215097.P4942351275864947609
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f3 =>
  6 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215097.P4942351275864947609

namespace A215097

/-- `∑[∑[∑[6-a(n-2)]]]` -/
def P4942351275864947609.Spec : Prop :=
  ∀ n, P4942351275864947609.a n = A215097 n

end A215097

/-! ## A215097.P12186262418198729563

`Δ[C(n, 2)²-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A215097.P12186262418198729563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (Nat.choose n 2 ^ 2 : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215097.P12186262418198729563

namespace A215097

/-- `Δ[C(n, 2)²-a(n-2)]` -/
def P12186262418198729563.Spec : Prop :=
  ∀ n, P12186262418198729563.a n = A215097 n

end A215097

/-! ## A215097.P922329825546109922

`floor(n*n²-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A215097.P922329825546109922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n * n ^ 2 : ℤ) - a (n - 2)

end

end A215097.P922329825546109922

namespace A215097

/-- `floor(n*n²-a(n-2))` -/
def P922329825546109922.Spec : Prop :=
  ∀ n, P922329825546109922.a n = A215097 n

theorem P922329825546109922.correct : P922329825546109922.Spec := by
  intro n
  simp only [A215097, Nat.add_sub_cancel, A215097.P922329825546109922.a, A215097.P10952334182793434921.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215097

/-! ## A215097.P452074441271258280

`n*(n²-a(n-2)/n)` with `a(0)=0, a(1)=1`
-/

namespace A215097.P452074441271258280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) * ((n ^ 2 : ℚ) - a (n - 2) / (n : ℚ))

end

end A215097.P452074441271258280

namespace A215097

/-- `n*(n²-a(n-2)/n)` -/
def P452074441271258280.Spec : Prop :=
  ∀ n, P452074441271258280.a n = (A215097 n : ℚ)

end A215097

/-! ## A215097.P74516768099203402

`n*n*n-floor(a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A215097.P74516768099203402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n * (n * n) : ℤ) - a (n - 2)

end

end A215097.P74516768099203402

namespace A215097

/-- `n*n*n-floor(a(n-2))` -/
def P74516768099203402.Spec : Prop :=
  ∀ n, P74516768099203402.a n = A215097 n

theorem P74516768099203402.correct : P74516768099203402.Spec := by
  intro n
  simp only [A215097, Nat.add_sub_cancel, A215097.P74516768099203402.a, A215097.P10952334182793434921.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215097

/-! ## A215097.P6044914612867275781

`n*n²-a(n-2)%a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A215097.P6044914612867275781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n * n ^ 2 : ℤ) - Int.tmod (a (n - 2)) (a (n - 1))

end

end A215097.P6044914612867275781

namespace A215097

/-- `n*n²-a(n-2)%a(n-1)` -/
def P6044914612867275781.Spec : Prop :=
  ∀ n, P6044914612867275781.a n = A215097 n

end A215097

/-! ## A215097.P8405075567575212617

`n*A000096(n)-A007877(n)`
-/

namespace A215097.P8405075567575212617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000096 n - A007877 n

end

end A215097.P8405075567575212617

namespace A215097

/-- `n*A000096(n)-A007877(n)` -/
def P8405075567575212617.Spec : Prop :=
  ∀ n, P8405075567575212617.a n = A215097 n

end A215097

/-! ## A215097.P11101347039526083285

`A206481(n+2)+A194274(n)-A187093(n+1)`
-/

namespace A215097.P11101347039526083285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206481 (n + 2) + (A194274 n - A187093 (n + 1))

end

end A215097.P11101347039526083285

namespace A215097

/-- `A206481(n+2)+A194274(n)-A187093(n+1)` -/
def P11101347039526083285.Spec : Prop :=
  ∀ n, P11101347039526083285.a n = A215097 n

end A215097

/-! ## A215097.P15354967656486516741

`∑[A047225(∑[n]+1)]`
-/

namespace A215097.P15354967656486516741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215097.P15354967656486516741

namespace A215097

/-- `∑[A047225(∑[n]+1)]` -/
def P15354967656486516741.Spec : Prop :=
  ∀ n, P15354967656486516741.a n = A215097 n

end A215097

/-! ## A215097.P3243751815575945692

`∑[A032766(A042948(∑[n]))]`
-/

namespace A215097.P3243751815575945692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A042948 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215097.P3243751815575945692

namespace A215097

/-- `∑[A032766(A042948(∑[n]))]` -/
def P3243751815575945692.Spec : Prop :=
  ∀ n, P3243751815575945692.a n = A215097 n

end A215097

/-!
# A215098: a(0)=0, a(1)=1, a(n) = n*(n-1) - a(n-2).

The programs for A215098, the canonical program `A215098.P17501800398598346641` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215098 has offset 0).

The definition of A215098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)-a(n-2)` (program `A215098.P17501800398598346641`, by `A215098.P17501800398598346641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215098.P17501800398598346641

`n*(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215098

/-- `n*(n-1)-a(n-2)` -/
def P17501800398598346641.Spec : Prop :=
  ∀ n, P17501800398598346641.a n = A215098 n

theorem P17501800398598346641.correct : P17501800398598346641.Spec := by
  intro n
  simp only [A215098]

end A215098

/-! ## A215098.P12260955105840029776

`(n²+n-1+cos(π*n/2)+sin(π*n/2))/2`
-/

namespace A215098.P12260955105840029776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + n : ℤ) - 1 : ℝ) + Real.cos (Real.pi * (n : ℝ) / 2) + Real.sin (Real.pi * (n : ℝ) / 2)) / 2

end

end A215098.P12260955105840029776

namespace A215098

/-- `(n²+n-1+cos(π*n/2)+sin(π*n/2))/2` -/
def P12260955105840029776.Spec : Prop :=
  ∀ n, P12260955105840029776.a n = (A215098 n : ℝ)

end A215098

/-! ## A215098.P18218780863293509276

`∑[n]-char[or(2, n)]`
-/

namespace A215098.P18218780863293509276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A215098.P18218780863293509276

namespace A215098

/-- `∑[n]-char[or(2, n)]` -/
def P18218780863293509276.Spec : Prop :=
  ∀ n, P18218780863293509276.a n = A215098 n

end A215098

/-! ## A215098.P5861800060360899824

`and(C(n, 2), -2)+n`
-/

namespace A215098.P5861800060360899824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose n 2 : ℤ) (-2) + (n : ℤ)

end

end A215098.P5861800060360899824

namespace A215098

/-- `and(C(n, 2), -2)+n` -/
def P5861800060360899824.Spec : Prop :=
  ∀ n, P5861800060360899824.a n = A215098 n

end A215098

/-! ## A215098.P3836026217262981033

`∑[n]-and(2, n)/2`
-/

namespace A215098.P3836026217262981033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.land 2 n : ℚ) / 2

end

end A215098.P3836026217262981033

namespace A215098

/-- `∑[n]-and(2, n)/2` -/
def P3836026217262981033.Spec : Prop :=
  ∀ n, P3836026217262981033.a n = (A215098 n : ℚ)

end A215098

/-! ## A215098.P5620357512397080243

`∑[n]-C(n, 2)%2`
-/

namespace A215098.P5620357512397080243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.choose n 2 % 2 : ℕ) : ℤ)

end

end A215098.P5620357512397080243

namespace A215098

/-- `∑[n]-C(n, 2)%2` -/
def P5620357512397080243.Spec : Prop :=
  ∀ n, P5620357512397080243.a n = A215098 n

end A215098

/-! ## A215098.P8423373444954894240

`∑[n]-and(1, C(n, 2))`
-/

namespace A215098.P8423373444954894240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 1 (Nat.choose n 2) : ℤ)

end

end A215098.P8423373444954894240

namespace A215098

/-- `∑[n]-and(1, C(n, 2))` -/
def P8423373444954894240.Spec : Prop :=
  ∀ n, P8423373444954894240.a n = A215098 n

end A215098

/-! ## A215098.P13087912613555651914

`∑[n]-C(n, or(2, n))`
-/

namespace A215098.P13087912613555651914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n (Nat.lor 2 n) : ℤ)

end

end A215098.P13087912613555651914

namespace A215098

/-- `∑[n]-C(n, or(2, n))` -/
def P13087912613555651914.Spec : Prop :=
  ∀ n, P13087912613555651914.a n = A215098 n

end A215098

/-! ## A215098.P13819482900879876962

`or(1, C(n, 2))+n-1`
-/

namespace A215098.P13819482900879876962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.choose n 2) : ℤ) + ((n : ℤ) - 1)

end

end A215098.P13819482900879876962

namespace A215098

/-- `or(1, C(n, 2))+n-1` -/
def P13819482900879876962.Spec : Prop :=
  ∀ n, P13819482900879876962.a n = A215098 n

end A215098

/-! ## A215098.P7793158893147597952

`n-and(-2, ∑[1-n])`
-/

namespace A215098.P7793158893147597952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215098.P7793158893147597952

namespace A215098

/-- `n-and(-2, ∑[1-n])` -/
def P7793158893147597952.Spec : Prop :=
  ∀ n, P7793158893147597952.a n = A215098 n

end A215098

/-! ## A215098.P12895640767917683336

`(or(2, n)+n²)/2-1`
-/

namespace A215098.P12895640767917683336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n + n ^ 2 : ℚ) / 2 - 1

end

end A215098.P12895640767917683336

namespace A215098

/-- `(or(2, n)+n²)/2-1` -/
def P12895640767917683336.Spec : Prop :=
  ∀ n, P12895640767917683336.a n = (A215098 n : ℚ)

end A215098

/-! ## A215098.P9205487353013325387

`n+1-or(1, ∑[1-n])`
-/

namespace A215098.P9205487353013325387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215098.P9205487353013325387

namespace A215098

/-- `n+1-or(1, ∑[1-n])` -/
def P9205487353013325387.Spec : Prop :=
  ∀ n, P9205487353013325387.a n = A215098 n

end A215098

/-! ## A215098.P14455413011380403172

`(n²+n-and(2, n))/2`
-/

namespace A215098.P14455413011380403172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n : ℤ) - (Nat.land 2 n : ℤ) : ℚ) / 2

end

end A215098.P14455413011380403172

namespace A215098

/-- `(n²+n-and(2, n))/2` -/
def P14455413011380403172.Spec : Prop :=
  ∀ n, P14455413011380403172.a n = (A215098 n : ℚ)

end A215098

/-! ## A215098.P16765313476839703918

`∑[n]-log2(gcd(2, ∑[n+1]))`
-/

namespace A215098.P16765313476839703918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℝ)

end

end A215098.P16765313476839703918

namespace A215098

/-- `∑[n]-log2(gcd(2, ∑[n+1]))` -/
def P16765313476839703918.Spec : Prop :=
  ∀ n, P16765313476839703918.a n = (A215098 n : ℝ)

end A215098

/-! ## A215098.P12390661819940630984

`∑[∑[(-1)^∑[n]]+n]-1`
-/

namespace A215098.P12390661819940630984
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A215098.P12390661819940630984

namespace A215098

/-- `∑[∑[(-1)^∑[n]]+n]-1` -/
def P12390661819940630984.Spec : Prop :=
  ∀ n, P12390661819940630984.a n = A215098 n

end A215098

/-! ## A215098.P5071637904071324529

`(n+1)²%or(1, ∑[n+1])`
-/

namespace A215098.P5071637904071324529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215098.P5071637904071324529

namespace A215098

/-- `(n+1)²%or(1, ∑[n+1])` -/
def P5071637904071324529.Spec : Prop :=
  ∀ n, (P5071637904071324529.a n : ℤ) = A215098 n

end A215098

/-! ## A215098.P16207425680631972980

`∑[a(n-4)+4]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=5`
-/

namespace A215098.P16207425680631972980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3, 5] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215098.P16207425680631972980

namespace A215098

/-- `∑[a(n-4)+4]` -/
def P16207425680631972980.Spec : Prop :=
  ∀ n, (P16207425680631972980.a n : ℤ) = A215098 n

end A215098

/-! ## A215098.P13554075697043095155

`∑[∑[2-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A215098.P13554075697043095155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n f2 =>
  2 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215098.P13554075697043095155

namespace A215098

/-- `∑[∑[2-a(n-2)]]` -/
def P13554075697043095155.Spec : Prop :=
  ∀ n, P13554075697043095155.a n = A215098 n

end A215098

/-! ## A215098.P17306725559383703709

`floor(n²-n-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A215098.P17306725559383703709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n ^ 2 : ℤ) - (n : ℤ) - a (n - 2)

end

end A215098.P17306725559383703709

namespace A215098

/-- `floor(n²-n-a(n-2))` -/
def P17306725559383703709.Spec : Prop :=
  ∀ n, P17306725559383703709.a n = A215098 n

theorem P17306725559383703709.correct : P17306725559383703709.Spec := by
  intro n
  simp only [A215098, Nat.add_sub_cancel, A215098.P17306725559383703709.a, A215098.P17501800398598346641.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215098

/-! ## A215098.P7772489525087833586

`-(or(1, ∑[-(n+1)])+n+1)`
-/

namespace A215098.P7772489525087833586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ))

end

end A215098.P7772489525087833586

namespace A215098

/-- `-(or(1, ∑[-(n+1)])+n+1)` -/
def P7772489525087833586.Spec : Prop :=
  ∀ n, P7772489525087833586.a n = A215098 n

end A215098

/-!
# A215099: a(0)=0, a(1)=1, a(n) = least k>a(n-1) such that k+a(n-2) is prime.

The programs for A215099, the canonical program `A215099.P78987894132717335` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215099 has offset 0).

The definition of A215099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215099.P78987894132717335

`A151800(a(n-2)+a(n-1))-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215099

/-- `A151800(a(n-2)+a(n-1))-a(n-2)` -/
def P78987894132717335.Spec : Prop :=
  ∀ n, P78987894132717335.a n = A215099 n

theorem P78987894132717335.correct : P78987894132717335.Spec := by
  intro n
  simp only [A215099]

end A215099

/-! ## A215099.P5907172724263684952

`∑[A322813(∑[A147012(n+1)])]-1`
-/

namespace A215099.P5907172724263684952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147012 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A215099.P5907172724263684952

namespace A215099

/-- `∑[A322813(∑[A147012(n+1)])]-1` -/
def P5907172724263684952.Spec : Prop :=
  ∀ n, P5907172724263684952.a n = A215099 n

end A215099

/-! ## A215099.P11787194428764518077

`lt[A120031(n), A119976(A119979(n))]`
-/

namespace A215099.P11787194428764518077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119976 (A119979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215099.P11787194428764518077

namespace A215099

/-- `lt[A120031(n), A119976(A119979(n))]` -/
def P11787194428764518077.Spec : Prop :=
  ∀ n, (P11787194428764518077.a n : ℤ) = A215099 n

end A215099

/-! ## A215099.P15441405089419715477

`lt[A273929(n+4), A255233(A255233(n+1))]`
-/

namespace A215099.P15441405089419715477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273929 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255233 (A255233 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215099.P15441405089419715477

namespace A215099

/-- `lt[A273929(n+4), A255233(A255233(n+1))]` -/
def P15441405089419715477.Spec : Prop :=
  ∀ n, (P15441405089419715477.a n : ℤ) = A215099 n

end A215099

/-! ## A215099.P234904888605660564

`eq[A103956(n), A261585(n)]`
-/

namespace A215099.P234904888605660564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215099.P234904888605660564

namespace A215099

/-- `eq[A103956(n), A261585(n)]` -/
def P234904888605660564.Spec : Prop :=
  ∀ n, (P234904888605660564.a n : ℤ) = A215099 n

end A215099

