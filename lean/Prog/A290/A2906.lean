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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A290600: Irregular triangle T(n, k) read by rows: positive numbers non-coprime to A002808(n) and smaller than A002808(n), sorted increasingly.

The programs for A290600, there is no canonical definition to state claims against.
-/

/-! ## A290600.P5172742152786391018

`A366192(Δ[n²])`
-/

namespace A290600.P5172742152786391018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290600.P5172742152786391018

/-! ## A290600.P3778479478155035544

`A366192(2*n+1)%(n+3)`
-/

namespace A290600.P3778479478155035544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366192 (2 * n + 1)) (n + 3 : ℤ)

end

end A290600.P3778479478155035544

/-! ## A290600.P17271735996709155312

`A002260(A076537(n+1))`
-/

namespace A290600.P17271735996709155312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A076537 (n + 1)).toNat

end

end A290600.P17271735996709155312

/-! ## A290600.P8318961223523894311

`A002260(lt[1, A050870(n)])`
-/

namespace A290600.P8318961223523894311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290600.P8318961223523894311

/-! ## A290600.P29639358230863310

`A002262(lt[1, A050870(n)])`
-/

namespace A290600.P29639358230863310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290600.P29639358230863310

/-! ## A290600.P1132881654222786058

`A048151(lt[1, A050870(n)])`
-/

namespace A290600.P1132881654222786058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290600.P1132881654222786058

/-! ## A290600.P14961941431332096745

`A131818(lt[1, A050870(n)])`
-/

namespace A290600.P14961941431332096745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290600.P14961941431332096745

/-! ## A290600.P4879691094854282008

`A173541(lt[1, A050870(n)])`
-/

namespace A290600.P4879691094854282008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290600.P4879691094854282008

/-! ## A290600.P1902407980682753785

`A128227(eq[0, A054425(n+1)])`
-/

namespace A290600.P1902407980682753785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290600.P1902407980682753785

/-! ## A290600.P7947064710653284306

`A128227(eq[0, A102057(n+1)])`
-/

namespace A290600.P7947064710653284306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290600.P7947064710653284306

/-!
# A290601: Irregular triangle read by rows: T(n, k) gives the least positive integer imin such that the sequence {A290600(n, k)^i}_{i >= imin} (mod A002808(n)) is periodic.

The programs for A290601, there is no canonical definition to state claims against.
-/

/-! ## A290601.P4579137503486283568

`gcd(record[A184161(n+1)+1], A000471(n))`
-/

namespace A290601.P4579137503486283568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000471 n)

end

end A290601.P4579137503486283568

/-! ## A290601.P1877020627071719072

`A336041(A216626(n+1)+A166300(n))`
-/

namespace A290601.P1877020627071719072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (A216626 (n + 1) + A166300 n).toNat

end

end A290601.P1877020627071719072

/-! ## A290601.P16378648394972376016

`A000688(A000688(n+4)+A000005(A259527(2*n+5)))`
-/

namespace A290601.P16378648394972376016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000688 (n + 4) + A000005 (A259527 (2 * n + 5)).toNat).toNat

end

end A290601.P16378648394972376016

/-!
# A290602: Irregular triangle read by rows. T(n, k) gives the period length of the periodic sequence {A290600(n, k)^i}_{i >= A290601(n, k)} (mod A002808(n)), for n >= 1 and k = 1..A290599(n).

The programs for A290602, there is no canonical definition to state claims against.
-/

/-! ## A290602.P15920087534011015013

`A057594(A076537(n+1))`
-/

namespace A290602.P15920087534011015013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057594 (A076537 (n + 1)).toNat

end

end A290602.P15920087534011015013

/-! ## A290602.P13188177544783370171

`A057593(A076537(n+1)+1)`
-/

namespace A290602.P13188177544783370171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057593 (A076537 (n + 1) + 1).toNat

end

end A290602.P13188177544783370171

/-! ## A290602.P618291909619529674

`A057594(eq[0, A300294(n+1)])`
-/

namespace A290602.P618291909619529674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290602.P618291909619529674

/-! ## A290602.P4976365213986557093

`A057594(lt[A300294(n+1), 1])`
-/

namespace A290602.P4976365213986557093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057594 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A290602.P4976365213986557093

/-!
# A290603: Numerators in the expansion of the exponential generating function (1/2)*((1 + 3*x)/x)*(1 - (1 + 3*x)^(-4/3)).

The programs for A290603, there is no canonical definition to state claims against.
-/

/-! ## A290603.P14614820074867547040

`A348678(A103425(n))-A306066(n+1)`
-/

namespace A290603.P14614820074867547040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348678 (A103425 n).toNat - A306066 (n + 1)

end

end A290603.P14614820074867547040

/-!
# A290604: a(0) = 2, a(1) = 2; for n > 1, a(n) = a(n-1) + 2*a(n-2) + 3.

The programs for A290604, the canonical program `A290604.P6094117073178759081` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290604 has offset 0).

The definition of A290604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+3` (program `A290604.P6094117073178759081`, by `A290604.P6094117073178759081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290604.P6094117073178759081

`a(n-1)+2*a(n-2)+3` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290604

/-- `a(n-1)+2*a(n-2)+3` -/
def P6094117073178759081.Spec : Prop :=
  ∀ n, (P6094117073178759081.a n : ℤ) = A290604 n

theorem P6094117073178759081.correct : P6094117073178759081.Spec := by
  intro n
  simp only [A290604]

end A290604

/-! ## A290604.P11039820805264586825

`(2^(n+2)+2*(-1)^n)/3+2^n-(3-(-1)^n)/2`
-/

namespace A290604.P11039820805264586825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) + 2 * (-1) ^ n : ℚ) / 3 + (2 ^ n : ℚ) - (3 - (-1) ^ n : ℚ) / 2

end

end A290604.P11039820805264586825

namespace A290604

/-- `(2^(n+2)+2*(-1)^n)/3+2^n-(3-(-1)^n)/2` -/
def P11039820805264586825.Spec : Prop :=
  ∀ n, P11039820805264586825.a n = (A290604 n : ℚ)

theorem P11039820805264586825.correct : P11039820805264586825.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A290604, Nat.add_sub_cancel, A290604.P11039820805264586825.a, A290604.P6094117073178759081.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A290604, Nat.add_sub_cancel, A290604.P11039820805264586825.a, A290604.P6094117073178759081.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A290604

/-! ## A290604.P7466085763135581937

`ogf((2-2x+3x^2)/(1-2x-x^2+2x^3))`
-/

namespace A290604.P7466085763135581937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 3] [1, -2, -1, 2] n

end

end A290604.P7466085763135581937

namespace A290604

/-- `ogf((2-2x+3x^2)/(1-2x-x^2+2x^3))` -/
def P7466085763135581937.Spec : Prop :=
  ∀ n, P7466085763135581937.a n = A290604 n

end A290604

/-! ## A290604.P1537890622767776996

`floor(a(n-1)+a(n-2)+a(n-2)+3)` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A290604.P1537890622767776996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + a (n - 2) + (a (n - 2) + 3)

end

end A290604.P1537890622767776996

namespace A290604

/-- `floor(a(n-1)+a(n-2)+a(n-2)+3)` -/
def P1537890622767776996.Spec : Prop :=
  ∀ n, (P1537890622767776996.a n : ℤ) = A290604 n

theorem P1537890622767776996.correct : P1537890622767776996.Spec := by
  intro n
  simp only [A290604, Nat.add_sub_cancel, A290604.P1537890622767776996.a, A290604.P6094117073178759081.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A290604

/-! ## A290604.P8809248515869434945

`abs(A171182(3*(n+1))-A171160(n))`
-/

namespace A290604.P8809248515869434945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171182 (3 * (n + 1)) - A171160 n|

end

end A290604.P8809248515869434945

namespace A290604

/-- `abs(A171182(3*(n+1))-A171160(n))` -/
def P8809248515869434945.Spec : Prop :=
  ∀ n, P8809248515869434945.a n = A290604 n

end A290604

/-!
# A290605: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of 2/(1 + sqrt(1 - 4*k*x)).

The programs for A290605, the canonical program `A290605.P11328133936199522296` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290605 has offset 0).

The definition of A290605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2758 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290605.P11328133936199522296

`A000108(A002262(n))*A003992(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290605

/-- `A000108(A002262(n))*A003992(n)` -/
def P11328133936199522296.Spec : Prop :=
  ∀ n, P11328133936199522296.a n = A290605 n

theorem P11328133936199522296.correct : P11328133936199522296.Spec := by
  intro n
  simp only [A290605]

end A290605

/-! ## A290605.P4647919517948611338

`A000108(A191532(n))*A003992(n)`
-/

namespace A290605.P4647919517948611338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A191532 n).toNat * A003992 n

end

end A290605.P4647919517948611338

namespace A290605

/-- `A000108(A191532(n))*A003992(n)` -/
def P4647919517948611338.Spec : Prop :=
  ∀ n, P4647919517948611338.a n = A290605 n

end A290605

/-! ## A290605.P8415496898945636694

`A003992(n)*A120588(A002260(n+1))`
-/

namespace A290605.P8415496898945636694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A120588 (A002260 (n + 1)).toNat

end

end A290605.P8415496898945636694

namespace A290605

/-- `A003992(n)*A120588(A002260(n+1))` -/
def P8415496898945636694.Spec : Prop :=
  ∀ n, P8415496898945636694.a n = A290605 n

end A290605

/-! ## A290605.P4100127832754712938

`A000108(A144328(n+1))*A003992(n)`
-/

namespace A290605.P4100127832754712938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A144328 (n + 1)).toNat * A003992 n

end

end A290605.P4100127832754712938

namespace A290605

/-- `A000108(A144328(n+1))*A003992(n)` -/
def P4100127832754712938.Spec : Prop :=
  ∀ n, P4100127832754712938.a n = A290605 n

end A290605

/-! ## A290605.P17219766270934358824

`A003992(n)*A089408(A158405(n+1))`
-/

namespace A290605.P17219766270934358824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A089408 (A158405 (n + 1)).toNat

end

end A290605.P17219766270934358824

namespace A290605

/-- `A003992(n)*A089408(A158405(n+1))` -/
def P17219766270934358824.Spec : Prop :=
  ∀ n, P17219766270934358824.a n = A290605 n

end A290605

/-! ## A290605.P17341768312881944019

`A003992(n)*A080934(A245300(n))`
-/

namespace A290605.P17341768312881944019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A080934 (A245300 n).toNat

end

end A290605.P17341768312881944019

namespace A290605

/-- `A003992(n)*A080934(A245300(n))` -/
def P17341768312881944019.Spec : Prop :=
  ∀ n, P17341768312881944019.a n = A290605 n

end A290605

/-! ## A290605.P8785390985271495805

`A003992(n)*A155586(A061579(n))`
-/

namespace A290605.P8785390985271495805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A155586 (A061579 n).toNat

end

end A290605.P8785390985271495805

namespace A290605

/-- `A003992(n)*A155586(A061579(n))` -/
def P8785390985271495805.Spec : Prop :=
  ∀ n, P8785390985271495805.a n = A290605 n

end A290605

/-!
# A290606: Number of maximal independent vertex sets (and minimal vertex covers) in the n-halved cube graph.

The programs for A290606, there is no canonical definition to state claims against.
-/

/-! ## A290606.P166028520286546022

`∑[A007954(A100622(n))]`
-/

namespace A290606.P166028520286546022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A100622 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290606.P166028520286546022

/-! ## A290606.P9275283627698910731

`A102470(A284896(n)+A016777(n))`
-/

namespace A290606.P9275283627698910731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102470 (A284896 n + A016777 n).toNat

end

end A290606.P9275283627698910731

/-!
# A290608: Number of maximal independent vertex sets (and minimal vertex covers) in the n-Moebius ladder graph.

The programs for A290608, the canonical program `A290608.P5004236923665343382` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290608 has offset 3).

The definition of A290608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290608.P5004236923665343382

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=8, a(2)=12, a(3)=16`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290608

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P5004236923665343382.Spec : Prop :=
  ∀ n, (P5004236923665343382.a n : ℤ) = A290608 (n + 3)

theorem P5004236923665343382.correct : P5004236923665343382.Spec := by
  intro n
  simp only [A290608, Nat.add_sub_cancel]

end A290608

/-! ## A290608.P869980842572679788

`2*A366043(n+3)`
-/

namespace A290608.P869980842572679788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366043 (n + 3)

end

end A290608.P869980842572679788

namespace A290608

/-- `2*A366043(n+3)` -/
def P869980842572679788.Spec : Prop :=
  ∀ n, P869980842572679788.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P17740665484589038991

`∑[A000032(n+1)]+4^(n²%3)`
-/

namespace A290608.P17740665484589038991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 ^ (n ^ 2 % 3) : ℤ)

end

end A290608.P17740665484589038991

namespace A290608

/-- `∑[A000032(n+1)]+4^(n²%3)` -/
def P17740665484589038991.Spec : Prop :=
  ∀ n, P17740665484589038991.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P3684168889081065141

`A061347(n+3)+A000204(n+3)`
-/

namespace A290608.P3684168889081065141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 3) + A000204 (n + 3)

end

end A290608.P3684168889081065141

namespace A290608

/-- `A061347(n+3)+A000204(n+3)` -/
def P3684168889081065141.Spec : Prop :=
  ∀ n, P3684168889081065141.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P10596034994729144248

`A007040(n+2)+2*A100886(n)`
-/

namespace A290608.P10596034994729144248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007040 (n + 2) + 2 * A100886 n

end

end A290608.P10596034994729144248

namespace A290608

/-- `A007040(n+2)+2*A100886(n)` -/
def P10596034994729144248.Spec : Prop :=
  ∀ n, P10596034994729144248.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P13358150934470388601

`A000204(n+3)-A099837(n+3)`
-/

namespace A290608.P13358150934470388601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 3) - A099837 (n + 3)

end

end A290608.P13358150934470388601

namespace A290608

/-- `A000204(n+3)-A099837(n+3)` -/
def P13358150934470388601.Spec : Prop :=
  ∀ n, P13358150934470388601.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P11507655205228173458

`A000204(n+3)-A087204(2*n)`
-/

namespace A290608.P11507655205228173458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 3) - A087204 (2 * n)

end

end A290608.P11507655205228173458

namespace A290608

/-- `A000204(n+3)-A087204(2*n)` -/
def P11507655205228173458.Spec : Prop :=
  ∀ n, P11507655205228173458.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P11991234395809347471

`A100051(2*n+3)+A000204(n+3)`
-/

namespace A290608.P11991234395809347471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (2 * n + 3) + A000204 (n + 3)

end

end A290608.P11991234395809347471

namespace A290608

/-- `A100051(2*n+3)+A000204(n+3)` -/
def P11991234395809347471.Spec : Prop :=
  ∀ n, P11991234395809347471.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P10644109815657202626

`A027961(n+1)+gcd(2, A027961(n+1))²`
-/

namespace A290608.P10644109815657202626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) + (Int.gcd 2 (A027961 (n + 1)) ^ 2 : ℤ)

end

end A290608.P10644109815657202626

namespace A290608

/-- `A027961(n+1)+gcd(2, A027961(n+1))²` -/
def P10644109815657202626.Spec : Prop :=
  ∀ n, P10644109815657202626.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P1353058873977066278

`A000032(n+3)+2-A000032(gcd(n, n+3))`
-/

namespace A290608.P1353058873977066278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 3) + (2 - A000032 (Nat.gcd n (n + 3)))

end

end A290608.P1353058873977066278

namespace A290608

/-- `A000032(n+3)+2-A000032(gcd(n, n+3))` -/
def P1353058873977066278.Spec : Prop :=
  ∀ n, P1353058873977066278.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P4915152446689349036

`A000032(n+1)+A007040(n+2)-A061347(n+1)`
-/

namespace A290608.P4915152446689349036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A007040 (n + 2) - A061347 (n + 1))

end

end A290608.P4915152446689349036

namespace A290608

/-- `A000032(n+1)+A007040(n+2)-A061347(n+1)` -/
def P4915152446689349036.Spec : Prop :=
  ∀ n, P4915152446689349036.a n = A290608 (n + 3)

end A290608

/-! ## A290608.P5504278807036001241

`Δ[Δ[or(1, A000032(n+5))]]`
-/

namespace A290608.P5504278807036001241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000032 (n + 5))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290608.P5504278807036001241

namespace A290608

/-- `Δ[Δ[or(1, A000032(n+5))]]` -/
def P5504278807036001241.Spec : Prop :=
  ∀ n, P5504278807036001241.a n = A290608 (n + 3)

end A290608

/-!
# A290609: Number of maximal independent vertex sets (and minimal vertex covers) in the n-Mycielski graph.

The programs for A290609, there is no canonical definition to state claims against.
-/

/-! ## A290609.P13313209845624290606

`∑[A005652(A067735(n))]`
-/

namespace A290609.P13313209845624290606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (A067735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290609.P13313209845624290606

/-! ## A290609.P11911276363687267350

`∑[A005652(A000009(2^n))]`
-/

namespace A290609.P11911276363687267350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (A000009 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290609.P11911276363687267350

/-!
# A290612: Number of maximal independent vertex sets (and minimal vertex covers) in the n-wheel graph.

The programs for A290612, the canonical program `A290612.P15556737993705798272` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290612 has offset 4).

The definition of A290612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290612.P15556737993705798272

`a(n-1)+a(n-2)-a(n-4)` with `a(0)=4, a(1)=3, a(2)=6, a(3)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290612

/-- `a(n-1)+a(n-2)-a(n-4)` -/
def P15556737993705798272.Spec : Prop :=
  ∀ n, P15556737993705798272.a n = A290612 (n + 4)

theorem P15556737993705798272.correct : P15556737993705798272.Spec := by
  intro n
  simp only [A290612, Nat.add_sub_cancel]

end A290612

/-! ## A290612.P4439058539708222172

`ogf((-4+x+x^2+3x^3)/(-1+x+x^2-x^4))`
-/

namespace A290612.P4439058539708222172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, -1, -3] [1, -1, -1, 0, 1] n

end

end A290612.P4439058539708222172

namespace A290612

/-- `ogf((-4+x+x^2+3x^3)/(-1+x+x^2-x^4))` -/
def P4439058539708222172.Spec : Prop :=
  ∀ n, P4439058539708222172.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P7582751169054604646

`a(n-2)+a(n-3)-1` with `a(0)=4, a(1)=3, a(2)=6`
-/

namespace A290612.P7582751169054604646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 6] fun n a =>
  a (n - 2) + (a (n - 3) - 1)

end

end A290612.P7582751169054604646

namespace A290612

/-- `a(n-2)+a(n-3)-1` -/
def P7582751169054604646.Spec : Prop :=
  ∀ n, P7582751169054604646.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P12364424700703044171

`a(n-2)-(1-a(n-3))` with `a(0)=4, a(1)=3, a(2)=6`
-/

namespace A290612.P12364424700703044171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 6] fun n a =>
  a (n - 2) - (1 - a (n - 3))

end

end A290612.P12364424700703044171

namespace A290612

/-- `a(n-2)-(1-a(n-3))` -/
def P12364424700703044171.Spec : Prop :=
  ∀ n, P12364424700703044171.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P2154379335588674291

`A001608(n+3)+1`
-/

namespace A290612.P2154379335588674291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 3) + 1

end

end A290612.P2154379335588674291

namespace A290612

/-- `A001608(n+3)+1` -/
def P2154379335588674291.Spec : Prop :=
  ∀ n, P2154379335588674291.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P2816543684531748687

`A078027(n)+A052954(n+6)`
-/

namespace A290612.P2816543684531748687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n + A052954 (n + 6)

end

end A290612.P2816543684531748687

namespace A290612

/-- `A078027(n)+A052954(n+6)` -/
def P2816543684531748687.Spec : Prop :=
  ∀ n, P2816543684531748687.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P12483889603172640799

`A276477(n+1)+A052954(n+2)`
-/

namespace A290612.P12483889603172640799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 (n + 1) + A052954 (n + 2)

end

end A290612.P12483889603172640799

namespace A290612

/-- `A276477(n+1)+A052954(n+2)` -/
def P12483889603172640799.Spec : Prop :=
  ∀ n, P12483889603172640799.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P4665524679805144320

`A007307(n+1)+A276275(n+2)+1`
-/

namespace A290612.P4665524679805144320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) + (A276275 (n + 2) + 1)

end

end A290612.P4665524679805144320

namespace A290612

/-- `A007307(n+1)+A276275(n+2)+1` -/
def P4665524679805144320.Spec : Prop :=
  ∀ n, P4665524679805144320.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P7446820444977824741

`A134816(n+2)+A134816(n+2)+A052954(n)`
-/

namespace A290612.P7446820444977824741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) + (A134816 (n + 2) + A052954 n)

end

end A290612.P7446820444977824741

namespace A290612

/-- `A134816(n+2)+A134816(n+2)+A052954(n)` -/
def P7446820444977824741.Spec : Prop :=
  ∀ n, P7446820444977824741.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P5460842695403910519

`Δ[A193744(n+2)]+1`
-/

namespace A290612.P5460842695403910519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A290612.P5460842695403910519

namespace A290612

/-- `Δ[A193744(n+2)]+1` -/
def P5460842695403910519.Spec : Prop :=
  ∀ n, P5460842695403910519.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P12363271215403813535

`ceil(sqrt(A303226(n+3)))`
-/

namespace A290612.P12363271215403813535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A303226 (n + 3) : ℝ)⌉

end

end A290612.P12363271215403813535

namespace A290612

/-- `ceil(sqrt(A303226(n+3)))` -/
def P12363271215403813535.Spec : Prop :=
  ∀ n, P12363271215403813535.a n = A290612 (n + 4)

end A290612

/-! ## A290612.P6478661065037641879

`sqrt(A192932(n+3))+1`
-/

namespace A290612.P6478661065037641879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A192932 (n + 3) : ℝ) + 1

end

end A290612.P6478661065037641879

namespace A290612

/-- `sqrt(A192932(n+3))+1` -/
def P6478661065037641879.Spec : Prop :=
  ∀ n, P6478661065037641879.a n = (A290612 (n + 4) : ℝ)

end A290612

/-!
# A290613: Number of maximal independent vertex sets (and minimal vertex covers) in the n X n white bishop graph.

The programs for A290613, there is no canonical definition to state claims against.
-/

/-! ## A290613.P6805482991057095157

`A146304(n+2)/A290594(n+2)`
-/

namespace A290613.P6805482991057095157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146304 (n + 2) : ℚ) / (A290594 (n + 2) : ℚ)

end

end A290613.P6805482991057095157

/-! ## A290613.P6661636251502129998

`A350356(A178525(n)+3)`
-/

namespace A290613.P6661636251502129998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (A178525 n + 3).toNat

end

end A290613.P6661636251502129998

/-!
# A290614: Number of maximal independent vertex sets (and minimal vertex covers) in the n-triangular honeycomb acute knight graph.

The programs for A290614, there is no canonical definition to state claims against.
-/

/-! ## A290614.P4529472882666809421

`A264389(A023149(n+1))`
-/

namespace A290614.P4529472882666809421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264389 (A023149 (n + 1)).toNat

end

end A290614.P4529472882666809421

/-! ## A290614.P8050658496077294995

`A347123(A347995(n+1))`
-/

namespace A290614.P8050658496077294995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347123 (A347995 (n + 1)).toNat

end

end A290614.P8050658496077294995

/-!
# A290615: Number of maximal independent vertex sets (and minimal vertex covers) in the n-triangular honeycomb bishop graph.

The programs for A290615, there is no canonical definition to state claims against.
-/

/-! ## A290615.P9611769060318204792

`record[A004183(A119429(n))]`
-/

namespace A290615.P9611769060318204792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A119429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290615.P9611769060318204792

/-! ## A290615.P12331162041537842614

`A119429(A037336(n+2))`
-/

namespace A290615.P12331162041537842614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119429 (A037336 (n + 2)).toNat

end

end A290615.P12331162041537842614

/-! ## A290615.P7242539317672475527

`A119429(A037443(n+2))`
-/

namespace A290615.P7242539317672475527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119429 (A037443 (n + 2)).toNat

end

end A290615.P7242539317672475527

/-!
# A290616: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = 1 - 2 S - S^2.

The programs for A290616, the canonical program `A290616.P13526915506091966374` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290616 has offset 0).

The definition of A290616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290616.P13526915506091966374

`2*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=31, a(4)=80, a(5)=205`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290616

/-- `2*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` -/
def P13526915506091966374.Spec : Prop :=
  ∀ n, P13526915506091966374.a n = A290616 n

theorem P13526915506091966374.correct : P13526915506091966374.Spec := by
  intro n
  simp only [A290616]

end A290616

/-! ## A290616.P9494353779888671794

`A003153(a(n-1))+a(n-3)` with `a(0)=2, a(1)=5, a(2)=12`
-/

namespace A290616.P9494353779888671794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12] fun n a =>
  A003153 (a (n - 1)).toNat + a (n - 3)

end

end A290616.P9494353779888671794

namespace A290616

/-- `A003153(a(n-1))+a(n-3)` -/
def P9494353779888671794.Spec : Prop :=
  ∀ n, P9494353779888671794.a n = A290616 n

end A290616

/-! ## A290616.P14112353964598010642

`A080652(a(n-1))+a(n-3)` with `a(0)=2, a(1)=5, a(2)=12`
-/

namespace A290616.P14112353964598010642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12] fun n a =>
  A080652 (a (n - 1)).toNat + a (n - 3)

end

end A290616.P14112353964598010642

namespace A290616

/-- `A080652(a(n-1))+a(n-3)` -/
def P14112353964598010642.Spec : Prop :=
  ∀ n, P14112353964598010642.a n = A290616 n

end A290616

/-! ## A290616.P1094428404720863562

`A003153(∏{p}[A181600(2*n)², #])`
-/

namespace A290616.P1094428404720863562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181600 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A290616.P1094428404720863562

namespace A290616

/-- `A003153(∏{p}[A181600(2*n)², #])` -/
def P1094428404720863562.Spec : Prop :=
  ∀ n, P1094428404720863562.a n = A290616 n

end A290616

/-!
# A290617: Number of maximal independent vertex sets (and minimal vertex covers) in the n-triangular honeycomb obtuse knight graph.

The programs for A290617, there is no canonical definition to state claims against.
-/

/-! ## A290617.P18420381349458221421

`A376782(A017922(n))`
-/

namespace A290617.P18420381349458221421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376782 (A017922 n).toNat

end

end A290617.P18420381349458221421

/-! ## A290617.P6048777303121256986

`A256502(lcm(2, A346271(n)))`
-/

namespace A290617.P6048777303121256986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (Int.lcm 2 (A346271 n))

end

end A290617.P6048777303121256986

/-!
# A290618: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A290618, there is no canonical definition to state claims against.
-/

/-! ## A290618.P11138860791785705527

`A007088(A290620(n))`
-/

namespace A290618.P11138860791785705527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290620 n).toNat

end

end A290618.P11138860791785705527

/-! ## A290618.P16622372013449772889

`A185544(2*A290620(n))`
-/

namespace A290618.P16622372013449772889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290620 n).toNat

end

end A290618.P16622372013449772889

/-! ## A290618.P14787370508821433129

`A185544(A290620(n)+A290620(n))`
-/

namespace A290618.P14787370508821433129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290620 n + A290620 n).toNat

end

end A290618.P14787370508821433129

/-! ## A290618.P2521790250674263573

`A290626(n^(∑{digits}[n, 10^#]%9))`
-/

namespace A290618.P2521790250674263573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290626 (n ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A290618.P2521790250674263573

/-! ## A290618.P6949662972257344813

`A290626(A046469(n))`
-/

namespace A290618.P6949662972257344813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290626 (A046469 n).toNat

end

end A290618.P6949662972257344813

/-!
# A290619: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A290619, there is no canonical definition to state claims against.
-/

/-! ## A290619.P6479666613434198681

`A007088(A290621(n))`
-/

namespace A290619.P6479666613434198681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290621 n).toNat

end

end A290619.P6479666613434198681

/-! ## A290619.P3009573777781567709

`A038585(A290620(n))`
-/

namespace A290619.P3009573777781567709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (A290620 n).toNat

end

end A290619.P3009573777781567709

/-! ## A290619.P848131579813059001

`A256077(A290621(n)+1)`
-/

namespace A290619.P848131579813059001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (A290621 n + 1).toNat

end

end A290619.P848131579813059001

/-! ## A290619.P1114864740225235216

`A038585(2*A290621(n))`
-/

namespace A290619.P1114864740225235216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (2 * A290621 n).toNat

end

end A290619.P1114864740225235216

/-! ## A290619.P14634470563806200713

`A185544(2*A290621(n))`
-/

namespace A290619.P14634470563806200713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290621 n).toNat

end

end A290619.P14634470563806200713

/-!
# A290620: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A290620, there is no canonical definition to state claims against.
-/

/-! ## A290620.P7165353920292024167

`A290628(A046469(n))`
-/

namespace A290620.P7165353920292024167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290628 (A046469 n).toNat

end

end A290620.P7165353920292024167

/-! ## A290620.P1095596071375254908

`A290628(A087036(n))`
-/

namespace A290620.P1095596071375254908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290628 (A087036 n).toNat

end

end A290620.P1095596071375254908

/-! ## A290620.P16504100267513717329

`A290628(A087051(n))`
-/

namespace A290620.P16504100267513717329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290628 (A087051 n).toNat

end

end A290620.P16504100267513717329

/-! ## A290620.P2104784563834180281

`A290628(A004893(n+1))`
-/

namespace A290620.P2104784563834180281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290628 (A004893 (n + 1)).toNat

end

end A290620.P2104784563834180281

/-!
# A290621: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A290621, there is no canonical definition to state claims against.
-/

/-! ## A290621.P13542661936859590005

`A000265(A290620(n))`
-/

namespace A290621.P13542661936859590005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A290620 n).toNat

end

end A290621.P13542661936859590005

/-! ## A290621.P682525573478631031

`A278222(A290620(n))-A007318(∑[n])`
-/

namespace A290621.P682525573478631031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A290620 n).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290621.P682525573478631031

/-! ## A290621.P4354913984933227732

`A278222(A290620(n))-A057427(n+1)`
-/

namespace A290621.P4354913984933227732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A290620 n).toNat - A057427 (n + 1)

end

end A290621.P4354913984933227732

/-! ## A290621.P15157544927188845723

`A278222(A290620(n))-A158388(n+3)`
-/

namespace A290621.P15157544927188845723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A290620 n).toNat - A158388 (n + 3)

end

end A290621.P15157544927188845723

/-! ## A290621.P10823479372045154945

`A278222(A290620(n))-A000041(C(n, n²))`
-/

namespace A290621.P10823479372045154945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A290620 n).toNat - A000041 (Nat.choose n (n ^ 2))

end

end A290621.P10823479372045154945

/-!
# A290622: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A290622, there is no canonical definition to state claims against.
-/

/-! ## A290622.P13823501735843372254

`A007088(A290624(n))`
-/

namespace A290622.P13823501735843372254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290624 n).toNat

end

end A290622.P13823501735843372254

/-! ## A290622.P5568346850983579800

`A004086(A286831(n))`
-/

namespace A290622.P5568346850983579800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A286831 n).toNat

end

end A290622.P5568346850983579800

/-! ## A290622.P15946631490223878329

`A004086(A290236(n))`
-/

namespace A290622.P15946631490223878329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A290236 n).toNat

end

end A290622.P15946631490223878329

/-! ## A290622.P6049951840067728167

`A290830(lt[A103438(3*n+4), A373406(3*n+4)])`
-/

namespace A290622.P6049951840067728167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373406 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290830 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A290622.P6049951840067728167

/-!
# A290623: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A290623, there is no canonical definition to state claims against.
-/

/-! ## A290623.P6213633070697314943

`A286832(n)/A290622(n)*A000026(A290236(n))`
-/

namespace A290623.P6213633070697314943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286832 n : ℚ) / (A290622 n : ℚ) * (A000026 (A290236 n).toNat : ℚ)

end

end A290623.P6213633070697314943

/-! ## A290623.P3383376519542152741

`A007088(A290625(n))`
-/

namespace A290623.P3383376519542152741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290625 n).toNat

end

end A290623.P3383376519542152741

/-! ## A290623.P7946684823008796090

`A290831(A187829(n+1))-Δ[A290545(n)]`
-/

namespace A290623.P7946684823008796090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290831 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A290623.P7946684823008796090

/-!
# A290625: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A290625, there is no canonical definition to state claims against.
-/

/-! ## A290625.P16813396938381600862

`A332213(A286834(n))`
-/

namespace A290625.P16813396938381600862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A286834 n).toNat

end

end A290625.P16813396938381600862

/-! ## A290625.P9365446380379102803

`A108548(A290239(n))`
-/

namespace A290625.P9365446380379102803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A290239 n).toNat

end

end A290625.P9365446380379102803

/-! ## A290625.P7935426805502605237

`A108548(or(A000079(n), A286834(n)))`
-/

namespace A290625.P7935426805502605237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (Int.lor (A000079 n) (A286834 n)).toNat

end

end A290625.P7935426805502605237

/-!
# A290626: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A290626, there is no canonical definition to state claims against.
-/

/-! ## A290626.P14719062915310305389

`A007088(A290628(n))`
-/

namespace A290626.P14719062915310305389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290628 n).toNat

end

end A290626.P14719062915310305389

/-! ## A290626.P7497876082966028530

`A185544(2*A290628(n))`
-/

namespace A290626.P7497876082966028530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290628 n).toNat

end

end A290626.P7497876082966028530

/-! ## A290626.P14867732945435004715

`A185544(A290628(n)+A290628(n))`
-/

namespace A290626.P14867732945435004715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290628 n + A290628 n).toNat

end

end A290626.P14867732945435004715

/-!
# A290627: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A290627, there is no canonical definition to state claims against.
-/

/-! ## A290627.P6405073682088064294

`A007088(A290629(n))`
-/

namespace A290627.P6405073682088064294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290629 n).toNat

end

end A290627.P6405073682088064294

/-! ## A290627.P14584433013776155856

`A038585(A290628(n))`
-/

namespace A290627.P14584433013776155856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (A290628 n).toNat

end

end A290627.P14584433013776155856

/-! ## A290627.P7265720317006224896

`A087712(A290629(n)+1)`
-/

namespace A290627.P7265720317006224896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A290629 n + 1).toNat

end

end A290627.P7265720317006224896

/-! ## A290627.P7628447451315285858

`A256077(A290629(n)+1)`
-/

namespace A290627.P7628447451315285858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (A290629 n + 1).toNat

end

end A290627.P7628447451315285858

/-! ## A290627.P10101602598890826377

`A038585(2*A290629(n))`
-/

namespace A290627.P10101602598890826377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (2 * A290629 n).toNat

end

end A290627.P10101602598890826377

/-!
# A290628: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A290628, there is no canonical definition to state claims against.
-/

/-! ## A290628.P544205631932719361

`or(A122301(2^(∑[n+1]%(n+2))-1), A290620(n))`
-/

namespace A290628.P544205631932719361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122301 (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)) - 1)) (A290620 n)

end

end A290628.P544205631932719361

/-! ## A290628.P10853009768648515516

`or(A048720(A284415(n)), A290620(n))`
-/

namespace A290628.P10853009768648515516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048720 (A284415 n).toNat) (A290620 n)

end

end A290628.P10853009768648515516

/-! ## A290628.P14906123376439893157

`or(A290620(n), A355664(A025591(n)))`
-/

namespace A290628.P14906123376439893157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290620 n) (A355664 (A025591 n).toNat)

end

end A290628.P14906123376439893157

/-! ## A290628.P9234717660331237057

`A152166(2*(n+1))-A333768(A000009(2*n+1))`
-/

namespace A290628.P9234717660331237057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (2 * (n + 1)) - A333768 (A000009 (2 * n + 1)).toNat

end

end A290628.P9234717660331237057

/-!
# A290629: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A290629, there is no canonical definition to state claims against.
-/

/-! ## A290629.P776075896198861641

`A325401(lcm(2, A290628(n))/2)`
-/

namespace A290629.P776075896198861641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((Int.lcm 2 (A290628 n) : ℚ) / 2)).toNat

end

end A290629.P776075896198861641

/-! ## A290629.P700030301873542281

`A325401(A000265(A290628(n)))`
-/

namespace A290629.P700030301873542281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A000265 (A290628 n).toNat).toNat

end

end A290629.P700030301873542281

/-! ## A290629.P9951495676130221557

`A115873(A290628(n))`
-/

namespace A290629.P9951495676130221557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A290628 n).toNat

end

end A290629.P9951495676130221557

/-! ## A290629.P14249584112233517243

`A000265(4*A290628(n))`
-/

namespace A290629.P14249584112233517243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (4 * A290628 n).toNat

end

end A290629.P14249584112233517243

/-! ## A290629.P11961170634031707843

`A325401(A290628(A000007(n)+n))`
-/

namespace A290629.P11961170634031707843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290628 (A000007 n + (n : ℤ)).toNat).toNat

end

end A290629.P11961170634031707843

/-!
# A290631: a(n) = (n^2 + 1) * (2*n - 1).

The programs for A290631, the canonical program `A290631.P11423547765437551985` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290631 has offset 1).

The definition of A290631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)²+1)*(2*(n+1)-1)` (program `A290631.P11423547765437551985`, by `A290631.P11423547765437551985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290631.P11423547765437551985

`((n+1)²+1)*(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290631

/-- `((n+1)²+1)*(2*(n+1)-1)` -/
def P11423547765437551985.Spec : Prop :=
  ∀ n, P11423547765437551985.a n = A290631 (n + 1)

theorem P11423547765437551985.correct : P11423547765437551985.Spec := by
  intro n
  simp only [A290631, Nat.add_sub_cancel]

end A290631

/-! ## A290631.P14043595743454095844

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=15, a(2)=50, a(3)=119`
-/

namespace A290631.P14043595743454095844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 15, 50, 119] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A290631.P14043595743454095844

namespace A290631

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14043595743454095844.Spec : Prop :=
  ∀ n, P14043595743454095844.a n = A290631 (n + 1)

theorem P14043595743454095844.correct : P14043595743454095844.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A290631, Nat.add_sub_cancel, A290631.P14043595743454095844.a, A290631.P11423547765437551985.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A290631, Nat.add_sub_cancel, A290631.P14043595743454095844.a, A290631.P11423547765437551985.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A290631

/-! ## A290631.P14964801681110939854

`or(2, n*(∑[record[xor(3, n)]]+3))`
-/

namespace A290631.P14964801681110939854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n * (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A290631.P14964801681110939854

namespace A290631

/-- `or(2, n*(∑[record[xor(3, n)]]+3))` -/
def P14964801681110939854.Spec : Prop :=
  ∀ n, (P14964801681110939854.a n : ℤ) = A290631 (n + 1)

end A290631

/-! ## A290631.P7875048685161805484

`(2*n+1)/cos(atan(n+1))²`
-/

namespace A290631.P7875048685161805484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) / Real.cos (Real.arctan (n + 1 : ℝ)) ^ 2

end

end A290631.P7875048685161805484

namespace A290631

/-- `(2*n+1)/cos(atan(n+1))²` -/
def P7875048685161805484.Spec : Prop :=
  ∀ n, P7875048685161805484.a n = (A290631 (n + 1) : ℝ)

end A290631

/-! ## A290631.P2395688442515059375

`(2*n+1)/sin(acot(n+1))²`
-/

namespace A290631.P2395688442515059375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n + 1 : ℝ)) ^ 2

end

end A290631.P2395688442515059375

namespace A290631

/-- `(2*n+1)/sin(acot(n+1))²` -/
def P2395688442515059375.Spec : Prop :=
  ∀ n, P2395688442515059375.a n = (A290631 (n + 1) : ℝ)

end A290631

/-!
# A290632: Array read by antidiagonals: T(m,n) = number of minimal dominating sets in the rook graph K_m X K_n.

The programs for A290632, there is no canonical definition to state claims against.
-/

/-! ## A290632.P13979067713017207686

`A056926(A291543(n+1)²)`
-/

namespace A290632.P13979067713017207686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A291543 (n + 1) ^ 2).toNat

end

end A290632.P13979067713017207686

/-! ## A290632.P6786517916834089325

`A262689(A291543(n+1)²)`
-/

namespace A290632.P6786517916834089325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A291543 (n + 1) ^ 2).toNat

end

end A290632.P6786517916834089325

/-! ## A290632.P17465414801149017696

`A056926(A291543(n+1)^2)`
-/

namespace A290632.P17465414801149017696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A291543 (n + 1) ^ 2).toNat

end

end A290632.P17465414801149017696

/-! ## A290632.P4671046227749683848

`A262689(A291543(n+1)^2)`
-/

namespace A290632.P4671046227749683848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A291543 (n + 1) ^ 2).toNat

end

end A290632.P4671046227749683848

/-! ## A290632.P12541017611800905547

`A291543(n+1)%A065325(n)`
-/

namespace A290632.P12541017611800905547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291543 (n + 1)) (A065325 n)

end

end A290632.P12541017611800905547

/-!
# A290634: Positive integers which are never the quotient of phi(n)/tau(n).

The programs for A290634, there is no canonical definition to state claims against.
-/

/-! ## A290634.P5816954717530593301

`lt[A112954(n+1), 1]+1`
-/

namespace A290634.P5816954717530593301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112954 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A290634.P5816954717530593301

/-! ## A290634.P12835425755756976843

`eq[0, A112954(A028310(n))]`
-/

namespace A290634.P12835425755756976843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112954 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290634.P12835425755756976843

/-! ## A290634.P2736131629578047815

`A020725(eq[0, A112954(n+1)])`
-/

namespace A290634.P2736131629578047815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290634.P2736131629578047815

/-! ## A290634.P1992820227867193686

`A020725(eq[0, A112955(n+1)])`
-/

namespace A290634.P1992820227867193686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290634.P1992820227867193686

/-! ## A290634.P15133796559569230057

`A020725(eq[0, A175667(n+1)])`
-/

namespace A290634.P15133796559569230057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290634.P15133796559569230057

/-! ## A290634.P9987438456950019786

`eq[0, A112954(A233583(n+1))]`
-/

namespace A290634.P9987438456950019786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112954 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290634.P9987438456950019786

/-! ## A290634.P6518484934788309289

`eq[1, A000005(A112954(n+1)+1)]+1`
-/

namespace A290634.P6518484934788309289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A112954 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A290634.P6518484934788309289

/-! ## A290634.P4991995670632221580

`eq[1, A000005(A175667(n+1)+1)]+1`
-/

namespace A290634.P4991995670632221580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175667 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A290634.P4991995670632221580

/-! ## A290634.P13821070393230732973

`eq[A112954(n+1), A112955(n+1)]+1`
-/

namespace A290634.P13821070393230732973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A290634.P13821070393230732973

/-! ## A290634.P7284510980161448854

`eq[A112955(n+1), A175667(n+1)]+1`
-/

namespace A290634.P7284510980161448854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A290634.P7284510980161448854

/-!
# A290635: Greatest of 4 consecutive primes with consecutive gaps 6, 4, 2.

The programs for A290635, there is no canonical definition to state claims against.
-/

/-! ## A290635.P1916873661590451671

`A078855(n+1)+12`
-/

namespace A290635.P1916873661590451671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078855 (n + 1) + 12

end

end A290635.P1916873661590451671

/-! ## A290635.P11694962326006849872

`p?[A078562(n+1)+12]`
-/

namespace A290635.P11694962326006849872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290635.P11694962326006849872

/-! ## A290635.P11726673021327931487

`p?[p?[A098029(n+2)+4]+2]`
-/

namespace A290635.P11726673021327931487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 2) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290635.P11726673021327931487

/-! ## A290635.P803401644895772804

`p?[A054804(n+1)+6]+6`
-/

namespace A290635.P803401644895772804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 6

end

end A290635.P803401644895772804

/-! ## A290635.P8855594783374931127

`record[A020639(A078562(n+1)+12)]`
-/

namespace A290635.P8855594783374931127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078562 (n + 1) + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290635.P8855594783374931127

/-!
# A290636: The arithmetic function v_3(n,4).

The programs for A290636, there is no canonical definition to state claims against.
-/

/-! ## A290636.P14109922069305526109

`A289440(n+2)+A122840(A006498(n))`
-/

namespace A290636.P14109922069305526109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (n + 2) + A122840 (A006498 n).toNat

end

end A290636.P14109922069305526109

/-! ## A290636.P2587973760134231904

`or(A289440(n+2), A293814(A131976(n)))`
-/

namespace A290636.P2587973760134231904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289440 (n + 2)) (A293814 (A131976 n).toNat)

end

end A290636.P2587973760134231904

/-! ## A290636.P5363232054322150392

`A289440(n+2)+A122840(A074677(n+1))`
-/

namespace A290636.P5363232054322150392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (n + 2) + A122840 (A074677 (n + 1)).toNat

end

end A290636.P5363232054322150392

/-! ## A290636.P7799681732653177118

`or(A287372(A000566(3*n+1)), A289440(n+2))`
-/

namespace A290636.P7799681732653177118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287372 (A000566 (3 * n + 1)).toNat) (A289440 (n + 2))

end

end A290636.P7799681732653177118

/-! ## A290636.P1775645405886221682

`A289440(n+2)+A122840(A295688(n)-A056594(n))`
-/

namespace A290636.P1775645405886221682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (n + 2) + A122840 (A295688 n - A056594 n).toNat

end

end A290636.P1775645405886221682

/-!
# A290637: Numerators of the sequence 1, 1/2, (1/2)/(3/4), ((1/2)/(3/4))/((5/6)/(7/8)), ... .

The programs for A290637, there is no canonical definition to state claims against.
-/

/-! ## A290637.P1023120161293516085

`A094541(ceil(2^(n-1))-1)`
-/

namespace A290637.P1023120161293516085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094541 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1).toNat

end

end A290637.P1023120161293516085

/-! ## A290637.P10683751211455130882

`A094541(A344743(n))%A386559(3*n+5)`
-/

namespace A290637.P10683751211455130882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094541 (A344743 n).toNat) (A386559 (3 * n + 5))

end

end A290637.P10683751211455130882

/-!
# A290638: Denominators of the sequence 1, 1/2, (1/2)/(3/4), ((1/2)/(3/4))/((5/6)/(7/8)), ... .

The programs for A290638, there is no canonical definition to state claims against.
-/

/-! ## A290638.P12989173153472669183

`A083762(a(n-1)²)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A290638.P12989173153472669183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A083762 (a (n - 1) ^ 2).toNat

end

end A290638.P12989173153472669183

/-!
# A290641: Multiplicative with a(p^e) = prime(p-1)^e.

The programs for A290641, the canonical program `A290641.P10114705301015138954` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290641 has offset 1).

The definition of A290641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064988, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290641.P10114705301015138954

`A064989(A064988(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A290641

/-- `A064989(A064988(n+1))` -/
def P10114705301015138954.Spec : Prop :=
  ∀ n, P10114705301015138954.a n = A290641 (n + 1)

theorem P10114705301015138954.correct : P10114705301015138954.Spec := by
  intro n
  simp only [A290641, Nat.add_sub_cancel]

end A290641

/-! ## A290641.P13824394655971321259

`∏{d}[n+1, A008578(A014963(#))]`
-/

namespace A290641.P13824394655971321259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008578 (A014963 d).toNat

end

end A290641.P13824394655971321259

namespace A290641

/-- `∏{d}[n+1, A008578(A014963(#))]` -/
def P13824394655971321259.Spec : Prop :=
  ∀ n, P13824394655971321259.a n = A290641 (n + 1)

end A290641

/-! ## A290641.P8189029416028492041

`A318885(2*(n+1))/2`
-/

namespace A290641.P8189029416028492041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318885 (2 * (n + 1)) : ℚ) / 2

end

end A290641.P8189029416028492041

namespace A290641

/-- `A318885(2*(n+1))/2` -/
def P8189029416028492041.Spec : Prop :=
  ∀ n, P8189029416028492041.a n = (A290641 (n + 1) : ℚ)

end A290641

/-! ## A290641.P5878138300829553912

`A004526(A318885(2*(n+1)))`
-/

namespace A290641.P5878138300829553912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A318885 (2 * (n + 1))).toNat

end

end A290641.P5878138300829553912

namespace A290641

/-- `A004526(A318885(2*(n+1)))` -/
def P5878138300829553912.Spec : Prop :=
  ∀ n, P5878138300829553912.a n = A290641 (n + 1)

end A290641

/-! ## A290641.P7570157277407605728

`A283463(A064988(n+1)+1)`
-/

namespace A290641.P7570157277407605728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A064988 (n + 1) + 1).toNat

end

end A290641.P7570157277407605728

namespace A290641

/-- `A283463(A064988(n+1)+1)` -/
def P7570157277407605728.Spec : Prop :=
  ∀ n, P7570157277407605728.a n = A290641 (n + 1)

end A290641

/-! ## A290641.P3710430850195756543

`A348717(A064988(2*(n+1)))/2`
-/

namespace A290641.P3710430850195756543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348717 (A064988 (2 * (n + 1))).toNat : ℚ) / 2

end

end A290641.P3710430850195756543

namespace A290641

/-- `A348717(A064988(2*(n+1)))/2` -/
def P3710430850195756543.Spec : Prop :=
  ∀ n, P3710430850195756543.a n = (A290641 (n + 1) : ℚ)

end A290641

/-! ## A290641.P3523965463598217304

`A250479(A064988(2*n+2))/2`
-/

namespace A290641.P3523965463598217304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250479 (A064988 (2 * n + 2)).toNat : ℚ) / 2

end

end A290641.P3523965463598217304

namespace A290641

/-- `A250479(A064988(2*n+2))/2` -/
def P3523965463598217304.Spec : Prop :=
  ∀ n, P3523965463598217304.a n = (A290641 (n + 1) : ℚ)

end A290641

/-!
# A290645: a(n) = denominator(Bernoulli(n, x) - Bernoulli(n, 1/2)).

The programs for A290645, there is no canonical definition to state claims against.
-/

/-! ## A290645.P7288039601975901504

`A287705(n)/A059222(floor(acot(n)+n))`
-/

namespace A290645.P7288039601975901504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287705 n : ℚ) / (A059222 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ)

end

end A290645.P7288039601975901504

/-! ## A290645.P18079193275653150536

`A287705(n)/A059222(round(acot(n)+n))`
-/

namespace A290645.P18079193275653150536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287705 n : ℚ) / (A059222 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ)

end

end A290645.P18079193275653150536

/-! ## A290645.P15897180710308362774

`A287705(n)/A059222(A028310(n))`
-/

namespace A290645.P15897180710308362774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287705 n : ℚ) / (A059222 (A028310 n).toNat : ℚ)

end

end A290645.P15897180710308362774

/-! ## A290645.P15897446110431476524

`A287705(n)/A059222(A093178(n))`
-/

namespace A290645.P15897446110431476524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287705 n : ℚ) / (A059222 (A093178 n).toNat : ℚ)

end

end A290645.P15897446110431476524

/-! ## A290645.P2386277818193911280

`gcd(A144845(n)*A224783(n), A287705(n))`
-/

namespace A290645.P2386277818193911280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n * A224783 n) (A287705 n)

end

end A290645.P2386277818193911280

/-!
# A290646: Number of dissections of an n-gon into 3- and 4-gons counted up to rotations and reflections.

The programs for A290646, there is no canonical definition to state claims against.
-/

/-! ## A290646.P14815506888635003321

`A316470(A143363(n))+gcd(n, ∑[n])`
-/

namespace A290646.P14815506888635003321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A143363 n).toNat + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A290646.P14815506888635003321

/-! ## A290646.P9987810132586246046

`xor(n+1, A117929(A001048(n+1)))`
-/

namespace A290646.P9987810132586246046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A117929 (A001048 (n + 1)).toNat)

end

end A290646.P9987810132586246046

/-! ## A290646.P9686064326833254695

`A319150(A001006(n))+A296619(n)`
-/

namespace A290646.P9686064326833254695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319150 (A001006 n).toNat + A296619 n

end

end A290646.P9686064326833254695

/-!
# A290647: a(n) is the position of first occurrence of n^2 in the concatenation of the positive integers in decimal representation.

The programs for A290647, there is no canonical definition to state claims against.
-/

/-! ## A290647.P7757033059646460174

`A031297((n+1)²)`
-/

namespace A290647.P7757033059646460174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 ((n + 1) ^ 2)

end

end A290647.P7757033059646460174

/-! ## A290647.P17897805419073657057

`A086044((n+1)²)-1`
-/

namespace A290647.P17897805419073657057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 ((n + 1) ^ 2) - 1

end

end A290647.P17897805419073657057

/-! ## A290647.P6599616576288828234

`or(char[2], A031297(∑[2*n+1]))`
-/

namespace A290647.P6599616576288828234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A031297 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A290647.P6599616576288828234

/-! ## A290647.P7893910287867088944

`A000027(A031297(∑[2*n+1]))`
-/

namespace A290647.P7893910287867088944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031297 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A290647.P7893910287867088944

/-! ## A290647.P415367524328855811

`abs(A031297(∑[2*n+1])-A000038(n))`
-/

namespace A290647.P415367524328855811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A031297 (∑ j ∈ Finset.range (n + 1), f1 j) - A000038 n|

end

end A290647.P415367524328855811

/-! ## A290647.P8601980928118277294

`A031297(∑[2*n+1])+A000007(n+1)`
-/

namespace A290647.P8601980928118277294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A290647.P8601980928118277294

/-! ## A290647.P15528589235662681787

`A031297(∑[2*n+1])%A000041(n+7)`
-/

namespace A290647.P15528589235662681787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031297 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000041 (n + 7))

end

end A290647.P15528589235662681787

/-! ## A290647.P17429214581220193782

`A014963(9*n+6)*A031297(∑[2*n+1])`
-/

namespace A290647.P17429214581220193782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A031297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290647.P17429214581220193782

/-! ## A290647.P2475963557389202672

`A000041(C(2, n+2))*A031297(∑[2*n+1])`
-/

namespace A290647.P2475963557389202672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A031297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290647.P2475963557389202672

/-! ## A290647.P8859580265823854142

`ceil(1/A001222(n+2))*A031297(∑[2*n+1])`
-/

namespace A290647.P8859580265823854142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A001222 (n + 2) : ℚ)⌉ * A031297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290647.P8859580265823854142

/-! ## A290647.P9241415475262273460

`A030190(A030304(n+1))*A031297((n+1)*(n+1))`
-/

namespace A290647.P9241415475262273460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A030304 (n + 1)).toNat * A031297 ((n + 1) * (n + 1))

end

end A290647.P9241415475262273460

/-!
# A290649: The largest number z less than or equal to 3n+1 such that binomial(z,n) is odd.

The programs for A290649, there is no canonical definition to state claims against.
-/

/-! ## A290649.P12969867282244344660

`or(n, A078750(n+1)-1)`
-/

namespace A290649.P12969867282244344660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A078750 (n + 1) - 1)

end

end A290649.P12969867282244344660

/-! ## A290649.P4159071590703101132

`or(or(n, 2*n), A035327(and(n, 2*n)))`
-/

namespace A290649.P4159071590703101132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.lor n (2 * n) : ℤ) (A035327 (Nat.land n (2 * n)))

end

end A290649.P4159071590703101132

/-! ## A290649.P17298962976335781781

`or(or(n, 2*n), A359194(and(n, 2*n)))`
-/

namespace A290649.P17298962976335781781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.lor n (2 * n) : ℤ) (A359194 (Nat.land n (2 * n)))

end

end A290649.P17298962976335781781

/-! ## A290649.P16268736014140715304

`A081611(2*(∑[and(n, -n)^log2(3)]+n)+1)-1`
-/

namespace A290649.P16268736014140715304
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (SequenceMachineLib.roundAway (2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) + 1)).toNat - 1

end

end A290649.P16268736014140715304

/-! ## A290649.P9542766272020128741

`A104406(A191108(n+1))`
-/

namespace A290649.P9542766272020128741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104406 (A191108 (n + 1)).toNat

end

end A290649.P9542766272020128741

/-! ## A290649.P3777815798791709401

`A269170(A078750(n+1)-1)`
-/

namespace A290649.P3777815798791709401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A078750 (n + 1) - 1).toNat

end

end A290649.P3777815798791709401

/-! ## A290649.P13268539665872690458

`or(n, A249738(A078750(2*(n+1))))`
-/

namespace A290649.P13268539665872690458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A249738 (A078750 (2 * (n + 1))).toNat)

end

end A290649.P13268539665872690458

/-! ## A290649.P10458833551698699170

`or(A035327(A048728(n)), A163617(n))`
-/

namespace A290649.P10458833551698699170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 (A048728 n).toNat) (A163617 n)

end

end A290649.P10458833551698699170

/-! ## A290649.P7317222773562104661

`or(A035327(A048735(n)), A163617(n))`
-/

namespace A290649.P7317222773562104661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 (A048735 n).toNat) (A163617 n)

end

end A290649.P7317222773562104661

/-! ## A290649.P13352544707221881805

`A340500(A340494(n)+A340497(n)+1)`
-/

namespace A290649.P13352544707221881805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (A340494 n + (A340497 n + 1)).toNat

end

end A290649.P13352544707221881805

/-!
# A290650: a(1) = 1. For n > 1, a(n) = a(n-1)/2 if a(n-1) is even, a(n) = a(n-1)*n otherwise.

The programs for A290650, the canonical program `A290650.P10119979132462207588` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290650 has offset 1).

The definition of A290650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290650.P10119979132462207588

`(2*(n+1))^(a(n-1)%2)/2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290650

/-- `(2*(n+1))^(a(n-1)%2)/2*a(n-1)` -/
def P10119979132462207588.Spec : Prop :=
  ∀ n, P10119979132462207588.a n = (A290650 (n + 1) : ℚ)

end A290650

/-! ## A290650.P16269867050148232854

`gcd(a(n-1)/gcd(2, a(n-1))-a(n-1), (n+1)*a(n-1))` with `a(0)=1`
-/

namespace A290650.P16269867050148232854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (Nat.gcd 2 (a (n - 1)) : ℚ) - (a (n - 1) : ℚ))) ((n + 1) * a (n - 1) : ℤ)

end

end A290650.P16269867050148232854

namespace A290650

/-- `gcd(a(n-1)/gcd(2, a(n-1))-a(n-1), (n+1)*a(n-1))` -/
def P16269867050148232854.Spec : Prop :=
  ∀ n, (P16269867050148232854.a n : ℤ) = A290650 (n + 1)

end A290650

/-!
# A290651: a(n) = 5 - 2^(n - 1) + 3^(n - 1) + n - 2.

The programs for A290651, the canonical program `A290651.P5994110753776254989` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290651 has offset 1).

The definition of A290651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5-2^n+3^n+n+1-2` (program `A290651.P5994110753776254989`, by `A290651.P5994110753776254989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290651.P5994110753776254989

`5-2^n+3^n+n+1-2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290651

/-- `5-2^n+3^n+n+1-2` -/
def P5994110753776254989.Spec : Prop :=
  ∀ n, P5994110753776254989.a n = A290651 (n + 1)

theorem P5994110753776254989.correct : P5994110753776254989.Spec := by
  intro n
  simp only [A290651, Nat.add_sub_cancel]

end A290651

/-! ## A290651.P1542992126854145575

`Δ[A134063(n)+∑[n+3]]`
-/

namespace A290651.P1542992126854145575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290651.P1542992126854145575

namespace A290651

/-- `Δ[A134063(n)+∑[n+3]]` -/
def P1542992126854145575.Spec : Prop :=
  ∀ n, P1542992126854145575.a n = A290651 (n + 1)

end A290651

/-! ## A290651.P13649937073357622416

`Δ[A000392(n+1)+∑[n+3]]`
-/

namespace A290651.P13649937073357622416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290651.P13649937073357622416

namespace A290651

/-- `Δ[A000392(n+1)+∑[n+3]]` -/
def P13649937073357622416.Spec : Prop :=
  ∀ n, P13649937073357622416.a n = A290651 (n + 1)

end A290651

/-! ## A290651.P11244981749203000321

`round(A001047(n)+acos(0)+n+2)`
-/

namespace A290651.P11244981749203000321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001047 n : ℝ) + (Real.arccos (0 : ℝ) + (n + 2 : ℝ)))

end

end A290651.P11244981749203000321

namespace A290651

/-- `round(A001047(n)+acos(0)+n+2)` -/
def P11244981749203000321.Spec : Prop :=
  ∀ n, P11244981749203000321.a n = A290651 (n + 1)

end A290651

/-! ## A290651.P11339165456546925163

`Δ[A052905(n)+A000392(n+1)]`
-/

namespace A290651.P11339165456546925163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290651.P11339165456546925163

namespace A290651

/-- `Δ[A052905(n)+A000392(n+1)]` -/
def P11339165456546925163.Spec : Prop :=
  ∀ n, P11339165456546925163.a n = A290651 (n + 1)

end A290651

/-! ## A290651.P2611364042489421999

`Δ[A167614(n+2)+A134063(n)]`
-/

namespace A290651.P2611364042489421999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 2) + A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290651.P2611364042489421999

namespace A290651

/-- `Δ[A167614(n+2)+A134063(n)]` -/
def P2611364042489421999.Spec : Prop :=
  ∀ n, P2611364042489421999.a n = A290651 (n + 1)

end A290651

/-! ## A290651.P3743552668559711831

`Δ[A056509(2*n+1)+A052905(n)]`
-/

namespace A290651.P3743552668559711831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056509 (2 * n + 1) + A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290651.P3743552668559711831

namespace A290651

/-- `Δ[A056509(2*n+1)+A052905(n)]` -/
def P3743552668559711831.Spec : Prop :=
  ∀ n, P3743552668559711831.a n = A290651 (n + 1)

end A290651

/-!
# A290652: a(n) = PrimePi(A246033(n)) (where PrimePi = A000720).

The programs for A290652, there is no canonical definition to state claims against.
-/

/-! ## A290652.P13679638745046712937

`A000720(A246033(n+1))`
-/

namespace A290652.P13679638745046712937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A246033 (n + 1)).toNat

end

end A290652.P13679638745046712937

/-! ## A290652.P9304480186037022616

`A061395(p?[A246033(n+1)])`
-/

namespace A290652.P9304480186037022616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A290652.P9304480186037022616

/-! ## A290652.P176359297072929355

`∑{d}[A246033(n+1), A061395(#)]`
-/

namespace A290652.P176359297072929355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A290652.P176359297072929355

/-! ## A290652.P166190773192956524

`A061395(∏{d}[A246033(n+1), #])`
-/

namespace A290652.P166190773192956524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A290652.P166190773192956524

/-! ## A290652.P3564517278964387889

`A061395(∑{p}[A246033(n+1), #])`
-/

namespace A290652.P3564517278964387889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A290652.P3564517278964387889

/-!
# A290653: Number of perfect dissections of equilateral triangles into n equilateral triangles with integer sides.

The programs for A290653, there is no canonical definition to state claims against.
-/

/-! ## A290653.P18356356352487055630

`ogf((-2+2x+x^3-2x^4)/(-1+2x+x^2+5x^3))`
-/

namespace A290653.P18356356352487055630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 0, -1, 2] [1, -2, -1, -5] n

end

end A290653.P18356356352487055630

/-!
# A290654: Theta series of the 12-dimensional lattice of hyper-roots A_2(SU(3)).

The programs for A290654, there is no canonical definition to state claims against.
-/

/-! ## A290654.P529116005866710755

`A263112(∑[floor(10^n/5)]+3)`
-/

namespace A290654.P529116005866710755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263112 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A290654.P529116005866710755

/-!
# A290655: Theta series of the 20-dimensional lattice of hyper-roots A_3(SU(3)).

The programs for A290655, there is no canonical definition to state claims against.
-/

/-! ## A290655.P9481174634748722166

`A019557(n)*A360220(A005728(n))`
-/

namespace A290655.P9481174634748722166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n * A360220 (A005728 n).toNat

end

end A290655.P9481174634748722166

/-!
# A290656: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 878", based on the 5-celled von Neumann neighborhood.

The programs for A290656, there is no canonical definition to state claims against.
-/

/-! ## A290656.P463875193977779973

`A007088(A290658(n))`
-/

namespace A290656.P463875193977779973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290658 n).toNat

end

end A290656.P463875193977779973

/-! ## A290656.P18415620128949758768

`A185544(2*A290658(n))`
-/

namespace A290656.P18415620128949758768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290658 n).toNat

end

end A290656.P18415620128949758768

/-! ## A290656.P14176351881170111903

`A185544(lcm(2, A290658(n)))`
-/

namespace A290656.P14176351881170111903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290658 n))

end

end A290656.P14176351881170111903

/-! ## A290656.P12482419095539779097

`A305989(∏{p}[A290659(n), #])`
-/

namespace A290656.P12482419095539779097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A290656.P12482419095539779097

/-! ## A290656.P12920574123814657702

`A305989(A290659(n)/A001316(n))`
-/

namespace A290656.P12920574123814657702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290659 n : ℚ) / (A001316 n : ℚ))).toNat

end

end A290656.P12920574123814657702

/-!
# A290657: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 878", based on the 5-celled von Neumann neighborhood.

The programs for A290657, there is no canonical definition to state claims against.
-/

/-! ## A290657.P8425634354642143163

`A007088(A290659(n))`
-/

namespace A290657.P8425634354642143163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290659 n).toNat

end

end A290657.P8425634354642143163

/-! ## A290657.P4173736680269051069

`A185544(2*A290659(n))`
-/

namespace A290657.P4173736680269051069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290659 n).toNat

end

end A290657.P4173736680269051069

/-! ## A290657.P10655947228012752317

`A185544(A290659(n)+A290659(n))`
-/

namespace A290657.P10655947228012752317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290659 n + A290659 n).toNat

end

end A290657.P10655947228012752317

/-! ## A290657.P5995306375515978737

`A290857(A228912(n)+n)`
-/

namespace A290657.P5995306375515978737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290857 (A228912 n + (n : ℤ)).toNat

end

end A290657.P5995306375515978737

/-! ## A290657.P3757724065254180829

`A290857(n)%A079015(3*n+5)`
-/

namespace A290657.P3757724065254180829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290857 n) (A079015 (3 * n + 5))

end

end A290657.P3757724065254180829

/-!
# A290659: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 878", based on the 5-celled von Neumann neighborhood.

The programs for A290659, there is no canonical definition to state claims against.
-/

/-! ## A290659.P1073416399060345604

`val(4*∏{e}[5^n+5, #!], 2)*a(n-1)` with `a(0)=1`
-/

namespace A290659.P1073416399060345604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + 5

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (4 * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))) 2 * a (n - 1)

end

end A290659.P1073416399060345604

/-! ## A290659.P14753022415635127429

`A241916(∑[char[n²]]^n)`
-/

namespace A290659.P14753022415635127429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A290659.P14753022415635127429

/-! ## A290659.P14753416910976864514

`A325351(∑[char[n²]]^n)`
-/

namespace A290659.P14753416910976864514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A290659.P14753416910976864514

/-! ## A290659.P8060940750723915288

`A320009(record[Δ[∑{digits}[n, #²]]])`
-/

namespace A290659.P8060940750723915288
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320009 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290659.P8060940750723915288

/-! ## A290659.P6825504641941740740

`∏[A020639(∑[C(n+10, 10)])]`
-/

namespace A290659.P6825504641941740740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 10) 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290659.P6825504641941740740

/-!
# A290660: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

The programs for A290660, the canonical program `A290660.P15163917206572821738` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290660 has offset 0).

The definition of A290660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290660.P2245180672777758029

`or(1, A283352(n))`
-/

namespace A290660.P2245180672777758029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283352 n)

end

end A290660.P2245180672777758029

namespace A290660

/-- `or(1, A283352(n))` -/
def P2245180672777758029.Spec : Prop :=
  ∀ n, P2245180672777758029.a n = A290660 n

end A290660

/-! ## A290660.P17151142569450281172

`or(1, A290813(n))`
-/

namespace A290660.P17151142569450281172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290813 n)

end

end A290660.P17151142569450281172

namespace A290660

/-- `or(1, A290813(n))` -/
def P17151142569450281172.Spec : Prop :=
  ∀ n, P17151142569450281172.a n = A290660 n

end A290660

/-! ## A290660.P15163917206572821738

`A002275(n+1)-a(gcd(2, n)-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290660

/-- `A002275(n+1)-a(gcd(2, n)-1)+1` -/
def P15163917206572821738.Spec : Prop :=
  ∀ n, P15163917206572821738.a n = A290660 n

theorem P15163917206572821738.correct : P15163917206572821738.Spec := by
  intro n
  simp only [A290660]

end A290660

/-! ## A290660.P12773183185069034056

`A283352(n)+A057427(n)`
-/

namespace A290660.P12773183185069034056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + A057427 n

end

end A290660.P12773183185069034056

namespace A290660

/-- `A283352(n)+A057427(n)` -/
def P12773183185069034056.Spec : Prop :=
  ∀ n, P12773183185069034056.a n = A290660 n

end A290660

/-! ## A290660.P14534124909281055110

`A283352(n)+char[A007318(n)]`
-/

namespace A290660.P14534124909281055110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290660.P14534124909281055110

namespace A290660

/-- `A283352(n)+char[A007318(n)]` -/
def P14534124909281055110.Spec : Prop :=
  ∀ n, P14534124909281055110.a n = A290660 n

end A290660

/-! ## A290660.P2535788310292891214

`A283352(n)+char[A029579(n)]`
-/

namespace A290660.P2535788310292891214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290660.P2535788310292891214

namespace A290660

/-- `A283352(n)+char[A029579(n)]` -/
def P2535788310292891214.Spec : Prop :=
  ∀ n, P2535788310292891214.a n = A290660 n

end A290660

/-! ## A290660.P1188932969556547561

`A283352(n)+n/A028310(n)`
-/

namespace A290660.P1188932969556547561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283352 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A290660.P1188932969556547561

namespace A290660

/-- `A283352(n)+n/A028310(n)` -/
def P1188932969556547561.Spec : Prop :=
  ∀ n, P1188932969556547561.a n = (A290660 n : ℚ)

end A290660

/-! ## A290660.P680313886231794350

`A283352(n)+A266719(2*n+1)`
-/

namespace A290660.P680313886231794350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + A266719 (2 * n + 1)

end

end A290660.P680313886231794350

namespace A290660

/-- `A283352(n)+A266719(2*n+1)` -/
def P680313886231794350.Spec : Prop :=
  ∀ n, P680313886231794350.a n = A290660 n

end A290660

/-! ## A290660.P15174567677922199361

`A283352(n)+A005131(A008486(n))`
-/

namespace A290660.P15174567677922199361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + A005131 (A008486 n).toNat

end

end A290660.P15174567677922199361

namespace A290660

/-- `A283352(n)+A005131(A008486(n))` -/
def P15174567677922199361.Spec : Prop :=
  ∀ n, P15174567677922199361.a n = A290660 n

end A290660

/-! ## A290660.P2304747783848277425

`A283352(n)+A086810(A000124(n))`
-/

namespace A290660.P2304747783848277425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + A086810 (A000124 n).toNat

end

end A290660.P2304747783848277425

namespace A290660

/-- `A283352(n)+A086810(A000124(n))` -/
def P2304747783848277425.Spec : Prop :=
  ∀ n, P2304747783848277425.a n = A290660 n

end A290660

/-! ## A290660.P9197477359081355184

`A283352(n)+A001222(A008578(n+1))`
-/

namespace A290660.P9197477359081355184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + A001222 (A008578 (n + 1)).toNat

end

end A290660.P9197477359081355184

namespace A290660

/-- `A283352(n)+A001222(A008578(n+1))` -/
def P9197477359081355184.Spec : Prop :=
  ∀ n, P9197477359081355184.a n = A290660 n

end A290660

/-!
# A290661: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

The programs for A290661, there is no canonical definition to state claims against.
-/

/-! ## A290661.P4061058407805392309

`A283505(xor(1, n+1))`
-/

namespace A290661.P4061058407805392309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 (Nat.xor 1 (n + 1))

end

end A290661.P4061058407805392309

/-! ## A290661.P979109740040856664

`A290072(xor(1, n+1))`
-/

namespace A290661.P979109740040856664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290072 (Nat.xor 1 (n + 1))

end

end A290661.P979109740040856664

/-! ## A290661.P1961149492889824433

`A283505(A004442(n+1))`
-/

namespace A290661.P1961149492889824433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 (A004442 (n + 1)).toNat

end

end A290661.P1961149492889824433

/-! ## A290661.P17952371929702423727

`A290072(A014681(n)+1)`
-/

namespace A290661.P17952371929702423727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290072 (A014681 n + 1).toNat

end

end A290661.P17952371929702423727

/-! ## A290661.P6922821982572172458

`record[A283505(A007599(A004442(n)))]`
-/

namespace A290661.P6922821982572172458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 (A007599 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290661.P6922821982572172458

/-! ## A290661.P2875237044723628327

`A283505(record[A004442(n)]-A004442(n))`
-/

namespace A290661.P2875237044723628327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004442 n).toNat

end

end A290661.P2875237044723628327

/-! ## A290661.P12763337031169134321

`A283505(A004442(2*n)-A004442(n))`
-/

namespace A290661.P12763337031169134321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 (A004442 (2 * n) - A004442 n).toNat

end

end A290661.P12763337031169134321

/-!
# A290662: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

The programs for A290662, the canonical program `A290662.P16801478169900102275` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290662 has offset 0).

The definition of A290662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290662.P16801478169900102275

`∑[ogf((1+2x-2x^2+2x^3)/(1-4x^2))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290662

/-- `∑[ogf((1+2x-2x^2+2x^3)/(1-4x^2))]` -/
def P16801478169900102275.Spec : Prop :=
  ∀ n, P16801478169900102275.a n = A290662 n

theorem P16801478169900102275.correct : P16801478169900102275.Spec := by
  intro n
  simp only [A290662]

end A290662

/-! ## A290662.P18226179874150796560

`ogf((1+2x-2x^2+2x^3)/(1-x-4x^2+4x^3))`
-/

namespace A290662.P18226179874150796560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, 2] [1, -1, -4, 4] n

end

end A290662.P18226179874150796560

namespace A290662

/-- `ogf((1+2x-2x^2+2x^3)/(1-x-4x^2+4x^3))` -/
def P18226179874150796560.Spec : Prop :=
  ∀ n, P18226179874150796560.a n = A290662 n

end A290662

/-! ## A290662.P8416811420893311588

`4*a(n-2)+3` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290662.P8416811420893311588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  4 * a (n - 2) + 3

end

end A290662.P8416811420893311588

namespace A290662

/-- `4*a(n-2)+3` -/
def P8416811420893311588.Spec : Prop :=
  ∀ n, (P8416811420893311588.a n : ℤ) = A290662 n

end A290662

/-! ## A290662.P2384926870222312456

`lcm(4, a(n-2))+3` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290662.P2384926870222312456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.lcm 4 (a (n - 2)) + 3

end

end A290662.P2384926870222312456

namespace A290662

/-- `lcm(4, a(n-2))+3` -/
def P2384926870222312456.Spec : Prop :=
  ∀ n, (P2384926870222312456.a n : ℤ) = A290662 n

end A290662

/-! ## A290662.P4950863354361355030

`or(3, 4*a(n-2))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290662.P4950863354361355030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.lor 3 (4 * a (n - 2))

end

end A290662.P4950863354361355030

namespace A290662

/-- `or(3, 4*a(n-2))` -/
def P4950863354361355030.Spec : Prop :=
  ∀ n, (P4950863354361355030.a n : ℤ) = A290662 n

end A290662

/-! ## A290662.P15117869563752172570

`xor(3, 4*a(n-2))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290662.P15117869563752172570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.xor 3 (4 * a (n - 2))

end

end A290662.P15117869563752172570

namespace A290662

/-- `xor(3, 4*a(n-2))` -/
def P15117869563752172570.Spec : Prop :=
  ∀ n, (P15117869563752172570.a n : ℤ) = A290662 n

end A290662

/-! ## A290662.P1050955023834881345

`∑[4*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=10`
-/

namespace A290662.P1050955023834881345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 10] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290662.P1050955023834881345

namespace A290662

/-- `∑[4*a(n-2)]` -/
def P1050955023834881345.Spec : Prop :=
  ∀ n, (P1050955023834881345.a n : ℤ) = A290662 n

end A290662

/-! ## A290662.P5218380595021229768

`2*A134683(n)-1`
-/

namespace A290662.P5218380595021229768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134683 n - 1

end

end A290662.P5218380595021229768

namespace A290662

/-- `2*A134683(n)-1` -/
def P5218380595021229768.Spec : Prop :=
  ∀ n, P5218380595021229768.a n = A290662 n

end A290662

/-! ## A290662.P8667318950619462582

`A140252(n)+2^n`
-/

namespace A290662.P8667318950619462582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140252 n + (2 ^ n : ℤ)

end

end A290662.P8667318950619462582

namespace A290662

/-- `A140252(n)+2^n` -/
def P8667318950619462582.Spec : Prop :=
  ∀ n, P8667318950619462582.a n = A290662 n

end A290662

/-! ## A290662.P8479638762474324091

`or(a(n-1)+1, A266550(n+2))` with `a(0)=1, a(1)=3`
-/

namespace A290662.P8479638762474324091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor (a (n - 1) + 1) (A266550 (n + 2))

end

end A290662.P8479638762474324091

namespace A290662

/-- `or(a(n-1)+1, A266550(n+2))` -/
def P8479638762474324091.Spec : Prop :=
  ∀ n, P8479638762474324091.a n = A290662 n

end A290662

/-! ## A290662.P758136047908374584

`A084183(n)+A026644(n)`
-/

namespace A290662.P758136047908374584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 n + A026644 n

end

end A290662.P758136047908374584

namespace A290662

/-- `A084183(n)+A026644(n)` -/
def P758136047908374584.Spec : Prop :=
  ∀ n, P758136047908374584.a n = A290662 n

end A290662

/-! ## A290662.P9243498919590987609

`A158302(n)+A000225(n)`
-/

namespace A290662.P9243498919590987609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 n + A000225 n

end

end A290662.P9243498919590987609

namespace A290662

/-- `A158302(n)+A000225(n)` -/
def P9243498919590987609.Spec : Prop :=
  ∀ n, P9243498919590987609.a n = A290662 n

end A290662

/-! ## A290662.P2084712218371266857

`xor(A000225(n), A122756(n))`
-/

namespace A290662.P2084712218371266857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A122756 n)

end

end A290662.P2084712218371266857

namespace A290662

/-- `xor(A000225(n), A122756(n))` -/
def P2084712218371266857.Spec : Prop :=
  ∀ n, P2084712218371266857.a n = A290662 n

end A290662

/-! ## A290662.P1279990251040678632

`xor(A000079(n), A140252(n))`
-/

namespace A290662.P1279990251040678632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A140252 n)

end

end A290662.P1279990251040678632

namespace A290662

/-- `xor(A000079(n), A140252(n))` -/
def P1279990251040678632.Spec : Prop :=
  ∀ n, P1279990251040678632.a n = A290662 n

end A290662

/-! ## A290662.P14455409080473267063

`xor(A131577(n), A284354(n))`
-/

namespace A290662.P14455409080473267063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131577 n) (A284354 n)

end

end A290662.P14455409080473267063

namespace A290662

/-- `xor(A131577(n), A284354(n))` -/
def P14455409080473267063.Spec : Prop :=
  ∀ n, P14455409080473267063.a n = A290662 n

end A290662

/-! ## A290662.P17739303775303880048

`xor(A166920(n), A282005(n))`
-/

namespace A290662.P17739303775303880048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166920 n) (A282005 n)

end

end A290662.P17739303775303880048

namespace A290662

/-- `xor(A166920(n), A282005(n))` -/
def P17739303775303880048.Spec : Prop :=
  ∀ n, P17739303775303880048.a n = A290662 n

end A290662

/-! ## A290662.P13894092979029617815

`2*A029744(A053438(n))-1`
-/

namespace A290662.P13894092979029617815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029744 (A053438 n).toNat - 1

end

end A290662.P13894092979029617815

namespace A290662

/-- `2*A029744(A053438(n))-1` -/
def P13894092979029617815.Spec : Prop :=
  ∀ n, P13894092979029617815.a n = A290662 n

end A290662

/-! ## A290662.P7436685168267668340

`A000225(n)+A140252(n)+1`
-/

namespace A290662.P7436685168267668340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A140252 n + 1)

end

end A290662.P7436685168267668340

namespace A290662

/-- `A000225(n)+A140252(n)+1` -/
def P7436685168267668340.Spec : Prop :=
  ∀ n, P7436685168267668340.a n = A290662 n

end A290662

/-! ## A290662.P581054392521559987

`A133572(n+1)+A057428(n)`
-/

namespace A290662.P581054392521559987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133572 (n + 1) + A057428 n

end

end A290662.P581054392521559987

namespace A290662

/-- `A133572(n+1)+A057428(n)` -/
def P581054392521559987.Spec : Prop :=
  ∀ n, P581054392521559987.a n = A290662 n

end A290662

/-!
# A290663: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A290663, there is no canonical definition to state claims against.
-/

/-! ## A290663.P3863416157855793376

`A007088(A290665(n))`
-/

namespace A290663.P3863416157855793376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290665 n).toNat

end

end A290663.P3863416157855793376

/-!
# A290664: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A290664, there is no canonical definition to state claims against.
-/

/-! ## A290664.P18116362913515023354

`A007088(A290666(n))`
-/

namespace A290664.P18116362913515023354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290666 n).toNat

end

end A290664.P18116362913515023354

/-!
# A290667: Number of asymmetric equicolorable (unrooted) trees with 2*n vertices.

The programs for A290667, there is no canonical definition to state claims against.
-/

/-! ## A290667.P2320793194611613205

`A194698(A150566(n))`
-/

namespace A290667.P2320793194611613205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A150566 n).toNat

end

end A290667.P2320793194611613205

/-! ## A290667.P18238153953401888604

`A194698(A150567(n))`
-/

namespace A290667.P18238153953401888604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A150567 n).toNat

end

end A290667.P18238153953401888604

/-! ## A290667.P2267659876142449301

`A064458(A341378(n+1))`
-/

namespace A290667.P2267659876142449301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A341378 (n + 1)).toNat

end

end A290667.P2267659876142449301

/-! ## A290667.P423620894200538619

`A008615(A121073(n))/2`
-/

namespace A290667.P423620894200538619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008615 (A121073 n).toNat : ℚ) / 2

end

end A290667.P423620894200538619

/-!
# A290668: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A290668, there is no canonical definition to state claims against.
-/

/-! ## A290668.P12903672382479197995

`A007088(A290670(n))`
-/

namespace A290668.P12903672382479197995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290670 n).toNat

end

end A290668.P12903672382479197995

/-! ## A290668.P1289331433180350405

`A178569(A290670(n)+A000007(n+3))`
-/

namespace A290668.P1289331433180350405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (A290670 n + A000007 (n + 3)).toNat

end

end A290668.P1289331433180350405

/-! ## A290668.P16999083226063637167

`A178569(A194285(n+1)*A290670(n))`
-/

namespace A290668.P16999083226063637167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (A194285 (n + 1) * A290670 n).toNat

end

end A290668.P16999083226063637167

/-! ## A290668.P1670722594140274860

`A178569(A290670(n))/A194285(n+3)`
-/

namespace A290668.P1670722594140274860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178569 (A290670 n).toNat : ℚ) / (A194285 (n + 3) : ℚ)

end

end A290668.P1670722594140274860

/-! ## A290668.P14030936079760488483

`A178569(A290670(n)^A194285(n+1))`
-/

namespace A290668.P14030936079760488483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (SequenceMachineLib.roundAway ((A290670 n : ℚ) ^ (A194285 (n + 1) : ℤ))).toNat

end

end A290668.P14030936079760488483

/-!
# A290669: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A290669, there is no canonical definition to state claims against.
-/

/-! ## A290669.P14184308078112259600

`A000265(A290670(n)/A237271(2*(n+1)))`
-/

namespace A290669.P14184308078112259600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A290670 n : ℚ) / (A237271 (2 * (n + 1)) : ℚ))).toNat

end

end A290669.P14184308078112259600

/-! ## A290669.P5706235052630123177

`A083312(A290670(n))`
-/

namespace A290669.P5706235052630123177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A290670 n).toNat

end

end A290669.P5706235052630123177

/-! ## A290669.P10440624412959140688

`A000265(4*A290670(n))`
-/

namespace A290669.P10440624412959140688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (4 * A290670 n).toNat

end

end A290669.P10440624412959140688

/-! ## A290669.P670843845763953155

`gcd(∏[A001469(n+1)], A290670(n))`
-/

namespace A290669.P670843845763953155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A290670 n)

end

end A290669.P670843845763953155

/-! ## A290669.P15771971421066941885

`or(A290850(n), A348679(A348678(n)))`
-/

namespace A290669.P15771971421066941885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290850 n) (A348679 (A348678 n).toNat)

end

end A290669.P15771971421066941885

/-!
# A290670: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A290670, there is no canonical definition to state claims against.
-/

/-! ## A290670.P17194508122524456041

`A250247(A290851(n))`
-/

namespace A290670.P17194508122524456041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250247 (A290851 n).toNat

end

end A290670.P17194508122524456041

/-! ## A290670.P9000893763641396459

`A290851(A004895(n+1))`
-/

namespace A290670.P9000893763641396459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290851 (A004895 (n + 1)).toNat

end

end A290670.P9000893763641396459

/-! ## A290670.P14906639304581231700

`A290851(A004906(n+1))`
-/

namespace A290670.P14906639304581231700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290851 (A004906 (n + 1)).toNat

end

end A290670.P14906639304581231700

/-! ## A290670.P11490932871581538135

`A290851(A004917(n+1))`
-/

namespace A290670.P11490932871581538135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290851 (A004917 (n + 1)).toNat

end

end A290670.P11490932871581538135

/-! ## A290670.P18407545771277990766

`A004526(2*A290851(n))`
-/

namespace A290670.P18407545771277990766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A290851 n).toNat

end

end A290670.P18407545771277990766

/-!
# A290671: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A290671, there is no canonical definition to state claims against.
-/

/-! ## A290671.P8392668161876908263

`A007088(A290673(n))`
-/

namespace A290671.P8392668161876908263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290673 n).toNat

end

end A290671.P8392668161876908263

/-! ## A290671.P3407520317957931832

`A305989(A290674(n)/A016116(n+1))`
-/

namespace A290671.P3407520317957931832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290674 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A290671.P3407520317957931832

/-! ## A290671.P5440770323286273781

`A185544(2*A290673(n))`
-/

namespace A290671.P5440770323286273781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290673 n).toNat

end

end A290671.P5440770323286273781

/-! ## A290671.P8668002306310247133

`A185544(lcm(2, A290673(n)))`
-/

namespace A290671.P8668002306310247133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290673 n))

end

end A290671.P8668002306310247133

/-! ## A290671.P13861585779599864900

`A185544(A290673(n)+A290673(n))`
-/

namespace A290671.P13861585779599864900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290673 n + A290673 n).toNat

end

end A290671.P13861585779599864900

/-!
# A290672: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A290672, there is no canonical definition to state claims against.
-/

/-! ## A290672.P3275598814010911494

`A286508(n)*A305989(A290673(n))`
-/

namespace A290672.P3275598814010911494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A290673 n).toNat

end

end A290672.P3275598814010911494

/-! ## A290672.P10016860525282398713

`A007088(A290674(n))`
-/

namespace A290672.P10016860525282398713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290674 n).toNat

end

end A290672.P10016860525282398713

/-! ## A290672.P14662094503230892435

`A185544(2*A290674(n))`
-/

namespace A290672.P14662094503230892435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290674 n).toNat

end

end A290672.P14662094503230892435

/-! ## A290672.P14550350930061781092

`A000265(A290671(n))*A286508(n)`
-/

namespace A290672.P14550350930061781092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A290671 n).toNat * A286508 n

end

end A290672.P14550350930061781092

/-! ## A290672.P4802878130762672549

`A178523(n)%2+A004086(A290671(n))*A286508(n)`
-/

namespace A290672.P4802878130762672549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178523 n) 2 + A004086 (A290671 n).toNat * A286508 n

end

end A290672.P4802878130762672549

/-!
# A290673: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A290673, there is no canonical definition to state claims against.
-/

/-! ## A290673.P3931237047122136145

`A325401(A290674(n)/A016116(n))`
-/

namespace A290673.P3931237047122136145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A290674 n : ℚ) / (A016116 n : ℚ))).toNat

end

end A290673.P3931237047122136145

/-! ## A290673.P15243416917218862313

`A030101(A290674(n)/A016116(n+1))`
-/

namespace A290673.P15243416917218862313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290674 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A290673.P15243416917218862313

/-! ## A290673.P15093884898174227531

`A030101(2/A016116(n)*A290674(n))`
-/

namespace A290673.P15093884898174227531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (2 / (A016116 n : ℚ) * (A290674 n : ℚ))).toNat

end

end A290673.P15093884898174227531

/-! ## A290673.P2032655232034973740

`A030101(A290674(n)/A049116(n+1))`
-/

namespace A290673.P2032655232034973740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290674 n : ℚ) / (A049116 (n + 1) : ℚ))).toNat

end

end A290673.P2032655232034973740

/-! ## A290673.P8284291808352959238

`A325401(A290674(n)/A049116(n+1))`
-/

namespace A290673.P8284291808352959238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A290674 n : ℚ) / (A049116 (n + 1) : ℚ))).toNat

end

end A290673.P8284291808352959238

/-!
# A290674: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A290674, there is no canonical definition to state claims against.
-/

/-! ## A290674.P1177449275917451784

`A016116(n+1)*A030101(A290673(n))`
-/

namespace A290674.P1177449275917451784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A030101 (A290673 n).toNat

end

end A290674.P1177449275917451784

/-!
# A290675: For a given n, the nonzero digits of n are the prime indices for the factorization of n.

The programs for A290675, there is no canonical definition to state claims against.
-/

/-! ## A290675.P14408234420083436236

`A113735(comp[A112906(n)])`
-/

namespace A290675.P14408234420083436236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112906 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113735 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A290675.P14408234420083436236

/-! ## A290675.P13245176995266308835

`A113735(A243498(n+1)+A001221(n+1))`
-/

namespace A290675.P13245176995266308835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113735 (A243498 (n + 1) + A001221 (n + 1)).toNat

end

end A290675.P13245176995266308835

/-! ## A290675.P1695871921319216609

`A113735(A302680(n+1)+A049093(n+1))`
-/

namespace A290675.P1695871921319216609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113735 (A302680 (n + 1) + A049093 (n + 1)).toNat

end

end A290675.P1695871921319216609

/-!
# A290676: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A290676, there is no canonical definition to state claims against.
-/

/-! ## A290676.P11925591012288392610

`A007088(A290678(n))`
-/

namespace A290676.P11925591012288392610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290678 n).toNat

end

end A290676.P11925591012288392610

/-! ## A290676.P11494579436981254798

`A305989(A290679(n)/A016116(n))`
-/

namespace A290676.P11494579436981254798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290679 n : ℚ) / (A016116 n : ℚ))).toNat

end

end A290676.P11494579436981254798

/-! ## A290676.P6432506241626070706

`A305989(∪[A126646(n), A283047(n)])`
-/

namespace A290676.P6432506241626070706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283047 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A290676.P6432506241626070706

/-! ## A290676.P15000620576404522530

`A305989(∪[A290678(2*(n+1)), A283047(n)])`
-/

namespace A290676.P15000620576404522530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290678 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283047 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A290676.P15000620576404522530

/-! ## A290676.P18336998463617205172

`A185544(2*A290678(n))`
-/

namespace A290676.P18336998463617205172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290678 n).toNat

end

end A290676.P18336998463617205172

/-!
# A290677: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A290677, there is no canonical definition to state claims against.
-/

/-! ## A290677.P17032056484634873530

`A007088(A290679(n))`
-/

namespace A290677.P17032056484634873530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290679 n).toNat

end

end A290677.P17032056484634873530

/-! ## A290677.P16312028344991338474

`A185544(2*A290679(n))`
-/

namespace A290677.P16312028344991338474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290679 n).toNat

end

end A290677.P16312028344991338474

/-!
# A290678: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A290678, there is no canonical definition to state claims against.
-/

/-! ## A290678.P1917262305815909085

`A325401(A290679(n)/A016116(n+1))`
-/

namespace A290678.P1917262305815909085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A290679 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A290678.P1917262305815909085

/-! ## A290678.P6983704939728436380

`A325401(∪[A126646(n), A283047(n)])`
-/

namespace A290678.P6983704939728436380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283047 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A290678.P6983704939728436380

/-! ## A290678.P17917957772312683301

`A325401(1/A016116(n)*A290679(n))`
-/

namespace A290678.P17917957772312683301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway (1 / (A016116 n : ℚ) * (A290679 n : ℚ))).toNat

end

end A290678.P17917957772312683301

/-! ## A290678.P6430729005723967497

`A030101(A290679(n)/A016116(n))`
-/

namespace A290678.P6430729005723967497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290679 n : ℚ) / (A016116 n : ℚ))).toNat

end

end A290678.P6430729005723967497

/-! ## A290678.P13015964864376070921

`A030101(∪[A126646(n), A283047(n)])`
-/

namespace A290678.P13015964864376070921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283047 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A290678.P13015964864376070921

/-!
# A290679: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A290679, there is no canonical definition to state claims against.
-/

/-! ## A290679.P14319347816016067704

`record[A151694(A047393(n+1))]`
-/

namespace A290679.P14319347816016067704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151694 (A047393 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290679.P14319347816016067704

/-! ## A290679.P12085337593435381393

`and(A008619(A158345(n+1)), A122746(n))`
-/

namespace A290679.P12085337593435381393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008619 (A158345 (n + 1)).toNat) (A122746 n)

end

end A290679.P12085337593435381393

/-! ## A290679.P9886771696887965921

`A151694(A211422(n)-A146501(3*n+4))`
-/

namespace A290679.P9886771696887965921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151694 (A211422 n - A146501 (3 * n + 4)).toNat

end

end A290679.P9886771696887965921

/-!
# A290680: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

The programs for A290680, the canonical program `A290680.P12839473319531467674` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290680 has offset 0).

The definition of A290680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290680.P8804099759362322957

`∑[10^n]-(char[1]+char[3])`
-/

namespace A290680.P8804099759362322957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

end

end A290680.P8804099759362322957

namespace A290680

/-- `∑[10^n]-(char[1]+char[3])` -/
def P8804099759362322957.Spec : Prop :=
  ∀ n, P8804099759362322957.a n = A290680 n

end A290680

/-! ## A290680.P17015694934388219369

`xor(∑[10^n], char[A239273(n)])`
-/

namespace A290680.P17015694934388219369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A290680.P17015694934388219369

namespace A290680

/-- `xor(∑[10^n], char[A239273(n)])` -/
def P17015694934388219369.Spec : Prop :=
  ∀ n, (P17015694934388219369.a n : ℤ) = A290680 n

end A290680

/-! ## A290680.P8701874396112289756

`A094026(record[xor(n, A267927(n))])`
-/

namespace A290680.P8701874396112289756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A267927 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290680.P8701874396112289756

namespace A290680

/-- `A094026(record[xor(n, A267927(n))])` -/
def P8701874396112289756.Spec : Prop :=
  ∀ n, P8701874396112289756.a n = A290680 n

end A290680

/-! ## A290680.P12839473319531467674

`A094026(and(2*n+1, A290682(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290680

/-- `A094026(and(2*n+1, A290682(n)))` -/
def P12839473319531467674.Spec : Prop :=
  ∀ n, P12839473319531467674.a n = A290680 n

theorem P12839473319531467674.correct : P12839473319531467674.Spec := by
  intro n
  simp only [A290680]

end A290680

/-! ## A290680.P11959117868669594460

`xor(A000042(n+1), A171386(A269385(n)))`
-/

namespace A290680.P11959117868669594460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000042 (n + 1)) (A171386 (A269385 n).toNat)

end

end A290680.P11959117868669594460

namespace A290680

/-- `xor(A000042(n+1), A171386(A269385(n)))` -/
def P11959117868669594460.Spec : Prop :=
  ∀ n, P11959117868669594460.a n = A290680 n

end A290680

/-! ## A290680.P7206604182162022515

`xor(A000042(n+1), A010051(A067935(n+1)))`
-/

namespace A290680.P7206604182162022515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000042 (n + 1)) (A010051 (A067935 (n + 1)).toNat)

end

end A290680.P7206604182162022515

namespace A290680

/-- `xor(A000042(n+1), A010051(A067935(n+1)))` -/
def P7206604182162022515.Spec : Prop :=
  ∀ n, P7206604182162022515.a n = A290680 n

end A290680

/-! ## A290680.P11526472157781017343

`xor(A000042(n+1), A171386(A056699(n+1)))`
-/

namespace A290680.P11526472157781017343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000042 (n + 1)) (A171386 (A056699 (n + 1)).toNat)

end

end A290680.P11526472157781017343

namespace A290680

/-- `xor(A000042(n+1), A171386(A056699(n+1)))` -/
def P11526472157781017343.Spec : Prop :=
  ∀ n, P11526472157781017343.a n = A290680 n

end A290680

/-! ## A290680.P14702063006284965520

`xor(char[3], A279877(2*n))`
-/

namespace A290680.P14702063006284965520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A279877 (2 * n))

end

end A290680.P14702063006284965520

namespace A290680

/-- `xor(char[3], A279877(2*n))` -/
def P14702063006284965520.Spec : Prop :=
  ∀ n, P14702063006284965520.a n = A290680 n

end A290680

/-!
# A290681: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

The programs for A290681, the canonical program `A290681.P13024392901378473371` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290681 has offset 0).

The definition of A290681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290681.P13024392901378473371

`A131664(A060577(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A290681

/-- `A131664(A060577(n))` -/
def P13024392901378473371.Spec : Prop :=
  ∀ n, P13024392901378473371.a n = A290681 n

theorem P13024392901378473371.correct : P13024392901378473371.Spec := by
  intro n
  simp only [A290681]

end A290681

/-! ## A290681.P9984713486474961884

`A002275(A267870(n)+n)`
-/

namespace A290681.P9984713486474961884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A267870 n + (n : ℤ)).toNat

end

end A290681.P9984713486474961884

namespace A290681

/-- `A002275(A267870(n)+n)` -/
def P9984713486474961884.Spec : Prop :=
  ∀ n, P9984713486474961884.a n = A290681 n

end A290681

/-! ## A290681.P17617220272141694323

`A290680(and(n, A290682(n)))`
-/

namespace A290681.P17617220272141694323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290680 (Int.land (n : ℤ) (A290682 n)).toNat

end

end A290681.P17617220272141694323

namespace A290681

/-- `A290680(and(n, A290682(n)))` -/
def P17617220272141694323.Spec : Prop :=
  ∀ n, P17617220272141694323.a n = A290681 n

end A290681

/-! ## A290681.P4796036834182267414

`A290680(floor(log2(A290683(n))))`
-/

namespace A290681.P4796036834182267414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290680 (Nat.log 2 (A290683 n).toNat)

end

end A290681.P4796036834182267414

namespace A290681

/-- `A290680(floor(log2(A290683(n))))` -/
def P4796036834182267414.Spec : Prop :=
  ∀ n, P4796036834182267414.a n = A290681 n

end A290681

/-! ## A290681.P14252322603234802869

`A131664(A008616(n)+∑[n])`
-/

namespace A290681.P14252322603234802869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (A008616 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A290681.P14252322603234802869

namespace A290681

/-- `A131664(A008616(n)+∑[n])` -/
def P14252322603234802869.Spec : Prop :=
  ∀ n, P14252322603234802869.a n = A290681 n

end A290681

/-! ## A290681.P15609003085336738287

`A002275(A000035(A053667(n)+1)+n)`
-/

namespace A290681.P15609003085336738287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A000035 (A053667 n + 1).toNat + (n : ℤ)).toNat

end

end A290681.P15609003085336738287

namespace A290681

/-- `A002275(A000035(A053667(n)+1)+n)` -/
def P15609003085336738287.Spec : Prop :=
  ∀ n, P15609003085336738287.a n = A290681 n

end A290681

/-! ## A290681.P14081056888228643614

`A000042(A093521(A033950(n+1))+n)`
-/

namespace A290681.P14081056888228643614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A093521 (A033950 (n + 1)).toNat + (n : ℤ)).toNat

end

end A290681.P14081056888228643614

namespace A290681

/-- `A000042(A093521(A033950(n+1))+n)` -/
def P14081056888228643614.Spec : Prop :=
  ∀ n, P14081056888228643614.a n = A290681 n

end A290681

/-! ## A290681.P2438706509175308804

`A000042(A131209(A000007(n)+n))`
-/

namespace A290681.P2438706509175308804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A131209 (A000007 n + (n : ℤ)).toNat).toNat

end

end A290681.P2438706509175308804

namespace A290681

/-- `A000042(A131209(A000007(n)+n))` -/
def P2438706509175308804.Spec : Prop :=
  ∀ n, P2438706509175308804.a n = A290681 n

end A290681

/-!
# A290682: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

The programs for A290682, the canonical program `A290682.P8546294400339561298` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290682 has offset 0).

The definition of A290682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290682.P10702985919922976486

`ogf((1-x+3x^2-3x^3+3x^4-2x^5)/(1-3x+2x^2))`
-/

namespace A290682.P10702985919922976486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3, -3, 3, -2] [1, -3, 2] n

end

end A290682.P10702985919922976486

namespace A290682

/-- `ogf((1-x+3x^2-3x^3+3x^4-2x^5)/(1-3x+2x^2))` -/
def P10702985919922976486.Spec : Prop :=
  ∀ n, P10702985919922976486.a n = A290682 n

end A290682

/-! ## A290682.P5837705167286218399

`or(2, (3%n)%2+2*a(n-1))` with `a(0)=1`
-/

namespace A290682.P5837705167286218399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 2 (3 % n % 2 + 2 * a (n - 1))

end

end A290682.P5837705167286218399

namespace A290682

/-- `or(2, (3%n)%2+2*a(n-1))` -/
def P5837705167286218399.Spec : Prop :=
  ∀ n, (P5837705167286218399.a n : ℤ) = A290682 n

end A290682

/-! ## A290682.P178075790002931697

`or(n+1, A283523(n))`
-/

namespace A290682.P178075790002931697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A283523 n)

end

end A290682.P178075790002931697

namespace A290682

/-- `or(n+1, A283523(n))` -/
def P178075790002931697.Spec : Prop :=
  ∀ n, P178075790002931697.a n = A290682 n

end A290682

/-! ## A290682.P486745957251538713

`A126646(n)-(char[1]+char[3])`
-/

namespace A290682.P486745957251538713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A290682.P486745957251538713

namespace A290682

/-- `A126646(n)-(char[1]+char[3])` -/
def P486745957251538713.Spec : Prop :=
  ∀ n, P486745957251538713.a n = A290682 n

end A290682

/-! ## A290682.P9675407788070571894

`2^(n+1)-A007318(C(4, n))`
-/

namespace A290682.P9675407788070571894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A007318 (Nat.choose 4 n)

end

end A290682.P9675407788070571894

namespace A290682

/-- `2^(n+1)-A007318(C(4, n))` -/
def P9675407788070571894.Spec : Prop :=
  ∀ n, P9675407788070571894.a n = A290682 n

end A290682

/-! ## A290682.P3179453173653709774

`∑[2^n]-char[∑[A116471(n+1)!]]`
-/

namespace A290682.P3179453173653709774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A116471 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A290682.P3179453173653709774

namespace A290682

/-- `∑[2^n]-char[∑[A116471(n+1)!]]` -/
def P3179453173653709774.Spec : Prop :=
  ∀ n, P3179453173653709774.a n = A290682 n

end A290682

/-! ## A290682.P9814507268234977269

`A267870(n)+2*A000225(n)`
-/

namespace A290682.P9814507268234977269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n + 2 * A000225 n

end

end A290682.P9814507268234977269

namespace A290682

/-- `A267870(n)+2*A000225(n)` -/
def P9814507268234977269.Spec : Prop :=
  ∀ n, P9814507268234977269.a n = A290682 n

end A290682

/-! ## A290682.P8688268375156981484

`or(A283523(n), A316964(2*n))`
-/

namespace A290682.P8688268375156981484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283523 n) (A316964 (2 * n))

end

end A290682.P8688268375156981484

namespace A290682

/-- `or(A283523(n), A316964(2*n))` -/
def P8688268375156981484.Spec : Prop :=
  ∀ n, P8688268375156981484.a n = A290682 n

end A290682

/-! ## A290682.P7873246066659356732

`or(2*A000225(n), A129759(n+1))`
-/

namespace A290682.P7873246066659356732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A000225 n) (A129759 (n + 1))

end

end A290682.P7873246066659356732

namespace A290682

/-- `or(2*A000225(n), A129759(n+1))` -/
def P7873246066659356732.Spec : Prop :=
  ∀ n, P7873246066659356732.a n = A290682 n

end A290682

/-! ## A290682.P11102574891764868774

`A000225(n+1)-and(1, A029747(n+2))`
-/

namespace A290682.P11102574891764868774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - Int.land 1 (A029747 (n + 2))

end

end A290682.P11102574891764868774

namespace A290682

/-- `A000225(n+1)-and(1, A029747(n+2))` -/
def P11102574891764868774.Spec : Prop :=
  ∀ n, P11102574891764868774.a n = A290682 n

end A290682

/-! ## A290682.P16337738287957763632

`∑[A000079(n)]-char[A296554(a(n-1))]` with `a(0)=3`
-/

namespace A290682.P16337738287957763632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A296554 (f2 (n - 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290682.P16337738287957763632

namespace A290682

/-- `∑[A000079(n)]-char[A296554(a(n-1))]` -/
def P16337738287957763632.Spec : Prop :=
  ∀ n, P16337738287957763632.a n = A290682 n

end A290682

/-! ## A290682.P1715106408468062069

`A000225(n+1)-char[A195639(2*n+1)]`
-/

namespace A290682.P1715106408468062069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195639 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290682.P1715106408468062069

namespace A290682

/-- `A000225(n+1)-char[A195639(2*n+1)]` -/
def P1715106408468062069.Spec : Prop :=
  ∀ n, P1715106408468062069.a n = A290682 n

end A290682

/-! ## A290682.P18113236644501486681

`A000225(n+1)-char[A000225(A014963(2*(n+1)))]`
-/

namespace A290682.P18113236644501486681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A014963 (2 * (n + 1))).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290682.P18113236644501486681

namespace A290682

/-- `A000225(n+1)-char[A000225(A014963(2*(n+1)))]` -/
def P18113236644501486681.Spec : Prop :=
  ∀ n, P18113236644501486681.a n = A290682 n

end A290682

/-! ## A290682.P12406752415667896182

`A000225(n+1)-char[A000225(A205310(2*n+1))]`
-/

namespace A290682.P12406752415667896182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A205310 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290682.P12406752415667896182

namespace A290682

/-- `A000225(n+1)-char[A000225(A205310(2*n+1))]` -/
def P12406752415667896182.Spec : Prop :=
  ∀ n, P12406752415667896182.a n = A290682 n

end A290682

/-! ## A290682.P8546294400339561298

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=14, a(4)=31, a(5)=63`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290682

/-- `3*a(n-1)-2*a(n-2)` -/
def P8546294400339561298.Spec : Prop :=
  ∀ n, P8546294400339561298.a n = A290682 n

theorem P8546294400339561298.correct : P8546294400339561298.Spec := by
  intro n
  simp only [A290682]

end A290682

/-! ## A290682.P12148755910863565356

`floor(A290836(n+1)/2)`
-/

namespace A290682.P12148755910863565356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290836 (n + 1) : ℚ) / 2⌋

end

end A290682.P12148755910863565356

namespace A290682

/-- `floor(A290836(n+1)/2)` -/
def P12148755910863565356.Spec : Prop :=
  ∀ n, P12148755910863565356.a n = A290682 n

end A290682

/-! ## A290682.P9350248241406601496

`A000225(n+1)-A036987(A318620(n+3))`
-/

namespace A290682.P9350248241406601496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A036987 (A318620 (n + 3)).toNat

end

end A290682.P9350248241406601496

namespace A290682

/-- `A000225(n+1)-A036987(A318620(n+3))` -/
def P9350248241406601496.Spec : Prop :=
  ∀ n, P9350248241406601496.a n = A290682 n

end A290682

/-! ## A290682.P9534670213263312259

`record[A130328(comp[A130278(n)])]`
-/

namespace A290682.P9534670213263312259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130278 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290682.P9534670213263312259

namespace A290682

/-- `record[A130328(comp[A130278(n)])]` -/
def P9534670213263312259.Spec : Prop :=
  ∀ n, P9534670213263312259.a n = A290682 n

end A290682

/-!
# A290683: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

The programs for A290683, the canonical program `A290683.P8655960650589229604` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290683 has offset 0).

The definition of A290683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290683.P16677538745684978999

`or(n, A284405(n))`
-/

namespace A290683.P16677538745684978999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A284405 n)

end

end A290683.P16677538745684978999

namespace A290683

/-- `or(n, A284405(n))` -/
def P16677538745684978999.Spec : Prop :=
  ∀ n, P16677538745684978999.a n = A290683 n

end A290683

/-! ## A290683.P13735004227559739028

`A000225(abs(char[gcd(2, n)+1-n]-n)+1)`
-/

namespace A290683.P13735004227559739028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + (1 - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (|((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

end

end A290683.P13735004227559739028

namespace A290683

/-- `A000225(abs(char[gcd(2, n)+1-n]-n)+1)` -/
def P13735004227559739028.Spec : Prop :=
  ∀ n, P13735004227559739028.a n = A290683 n

end A290683

/-! ## A290683.P17730142951746476022

`A000225(A267870(n)+n)`
-/

namespace A290683.P17730142951746476022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A267870 n + (n : ℤ)).toNat

end

end A290683.P17730142951746476022

namespace A290683

/-- `A000225(A267870(n)+n)` -/
def P17730142951746476022.Spec : Prop :=
  ∀ n, P17730142951746476022.a n = A290683 n

end A290683

/-! ## A290683.P8675247098654662019

`A126646(and(n, A290682(n)))`
-/

namespace A290683.P8675247098654662019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (Int.land (n : ℤ) (A290682 n)).toNat

end

end A290683.P8675247098654662019

namespace A290683

/-- `A126646(and(n, A290682(n)))` -/
def P8675247098654662019.Spec : Prop :=
  ∀ n, P8675247098654662019.a n = A290683 n

end A290683

/-! ## A290683.P12575331565392431747

`A290682(and(n, A290682(n)))`
-/

namespace A290683.P12575331565392431747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (Int.land (n : ℤ) (A290682 n)).toNat

end

end A290683.P12575331565392431747

namespace A290683

/-- `A290682(and(n, A290682(n)))` -/
def P12575331565392431747.Spec : Prop :=
  ∀ n, P12575331565392431747.a n = A290683 n

end A290683

/-! ## A290683.P1415491166640257427

`A255047(round(log2(A140359(n))))`
-/

namespace A290683.P1415491166640257427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (SequenceMachineLib.roundAway (Real.logb 2 (A140359 n : ℝ))).toNat

end

end A290683.P1415491166640257427

namespace A290683

/-- `A255047(round(log2(A140359(n))))` -/
def P1415491166640257427.Spec : Prop :=
  ∀ n, P1415491166640257427.a n = A290683 n

end A290683

/-! ## A290683.P9018748754633883192

`A290682(n-val(A290682(n), 2))`
-/

namespace A290683.P9018748754633883192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (n - SequenceMachineLib.valuation (A290682 n).toNat 2)

end

end A290683.P9018748754633883192

namespace A290683

/-- `A290682(n-val(A290682(n), 2))` -/
def P9018748754633883192.Spec : Prop :=
  ∀ n, P9018748754633883192.a n = A290683 n

end A290683

/-! ## A290683.P17265867609051038629

`A126646(n)-and(10, A000079(n))`
-/

namespace A290683.P17265867609051038629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.land 10 (A000079 n)

end

end A290683.P17265867609051038629

namespace A290683

/-- `A126646(n)-and(10, A000079(n))` -/
def P17265867609051038629.Spec : Prop :=
  ∀ n, P17265867609051038629.a n = A290683 n

end A290683

/-! ## A290683.P3443890649373182817

`A000225(abs(char[A195639(2*n+1)]-n)+1)`
-/

namespace A290683.P3443890649373182817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195639 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (|((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

end

end A290683.P3443890649373182817

namespace A290683

/-- `A000225(abs(char[A195639(2*n+1)]-n)+1)` -/
def P3443890649373182817.Spec : Prop :=
  ∀ n, P3443890649373182817.a n = A290683 n

end A290683

/-! ## A290683.P15378368994651452472

`A000225(abs(char[A014963(n+2)+1-n]-n)+1)`
-/

namespace A290683.P15378368994651452472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + (1 - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (|((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

end

end A290683.P15378368994651452472

namespace A290683

/-- `A000225(abs(char[A014963(n+2)+1-n]-n)+1)` -/
def P15378368994651452472.Spec : Prop :=
  ∀ n, P15378368994651452472.a n = A290683 n

end A290683

/-! ## A290683.P13668236098722484566

`A000225(A290682(n)-∑[A000225(n)])`
-/

namespace A290683.P13668236098722484566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A290682 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290683.P13668236098722484566

namespace A290683

/-- `A000225(A290682(n)-∑[A000225(n)])` -/
def P13668236098722484566.Spec : Prop :=
  ∀ n, P13668236098722484566.a n = A290683 n

end A290683

/-! ## A290683.P6017516657042083241

`A290682(n)/A290682(val(A290682(n), 2))`
-/

namespace A290683.P6017516657042083241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290682 n : ℚ) / (A290682 (SequenceMachineLib.valuation (A290682 n).toNat 2) : ℚ)

end

end A290683.P6017516657042083241

namespace A290683

/-- `A290682(n)/A290682(val(A290682(n), 2))` -/
def P6017516657042083241.Spec : Prop :=
  ∀ n, P6017516657042083241.a n = (A290683 n : ℚ)

end A290683

/-! ## A290683.P6112580649068511514

`A126646(A290682(n)+n-A126646(n))`
-/

namespace A290683.P6112580649068511514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A290682 n + ((n : ℤ) - A126646 n)).toNat

end

end A290683.P6112580649068511514

namespace A290683

/-- `A126646(A290682(n)+n-A126646(n))` -/
def P6112580649068511514.Spec : Prop :=
  ∀ n, P6112580649068511514.a n = A290683 n

end A290683

/-! ## A290683.P5230082823989737772

`A126646(n-(A126646(n)-A290682(n)))`
-/

namespace A290683.P5230082823989737772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 ((n : ℤ) - (A126646 n - A290682 n)).toNat

end

end A290683.P5230082823989737772

namespace A290683

/-- `A126646(n-(A126646(n)-A290682(n)))` -/
def P5230082823989737772.Spec : Prop :=
  ∀ n, P5230082823989737772.a n = A290683 n

end A290683

/-! ## A290683.P2172431201209561578

`or(A116362(n+1)-A109613(n+1), A140252(n+1))`
-/

namespace A290683.P2172431201209561578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116362 (n + 1) - A109613 (n + 1)) (A140252 (n + 1))

end

end A290683.P2172431201209561578

namespace A290683

/-- `or(A116362(n+1)-A109613(n+1), A140252(n+1))` -/
def P2172431201209561578.Spec : Prop :=
  ∀ n, P2172431201209561578.a n = A290683 n

end A290683

/-! ## A290683.P8655960650589229604

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=7, a(4)=31, a(5)=63`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290683

/-- `3*a(n-1)-2*a(n-2)` -/
def P8655960650589229604.Spec : Prop :=
  ∀ n, P8655960650589229604.a n = A290683 n

theorem P8655960650589229604.correct : P8655960650589229604.Spec := by
  intro n
  simp only [A290683]

end A290683

/-! ## A290683.P10753541688401708710

`gcd(A118414(n+1), A290682(n))`
-/

namespace A290683.P10753541688401708710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118414 (n + 1)) (A290682 n)

end

end A290683.P10753541688401708710

namespace A290683

/-- `gcd(A118414(n+1), A290682(n))` -/
def P10753541688401708710.Spec : Prop :=
  ∀ n, (P10753541688401708710.a n : ℤ) = A290683 n

end A290683

/-! ## A290683.P3490883513294841385

`∑[A000079(n)]%A086594(A004526(n))`
-/

namespace A290683.P3490883513294841385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A086594 (A004526 n).toNat)

end

end A290683.P3490883513294841385

namespace A290683

/-- `∑[A000079(n)]%A086594(A004526(n))` -/
def P3490883513294841385.Spec : Prop :=
  ∀ n, P3490883513294841385.a n = A290683 n

end A290683

/-! ## A290683.P9600546035287883871

`A000225(n+1-A036987(A318620(n+3)))`
-/

namespace A290683.P9600546035287883871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ((n + 1 : ℤ) - A036987 (A318620 (n + 3)).toNat).toNat

end

end A290683.P9600546035287883871

namespace A290683

/-- `A000225(n+1-A036987(A318620(n+3)))` -/
def P9600546035287883871.Spec : Prop :=
  ∀ n, P9600546035287883871.a n = A290683 n

end A290683

/-!
# A290684: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A290684, there is no canonical definition to state claims against.
-/

/-! ## A290684.P15936081737299873230

`A007088(A290686(n))`
-/

namespace A290684.P15936081737299873230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290686 n).toNat

end

end A290684.P15936081737299873230

/-! ## A290684.P10062838633310390943

`A185544(2*A290686(n))`
-/

namespace A290684.P10062838633310390943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290686 n).toNat

end

end A290684.P10062838633310390943

/-! ## A290684.P9489850681406461732

`A185544(lcm(2, A290686(n)))`
-/

namespace A290684.P9489850681406461732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290686 n))

end

end A290684.P9489850681406461732

/-!
# A290685: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A290685, there is no canonical definition to state claims against.
-/

/-! ## A290685.P11430705888186714604

`A007088(A290687(n))`
-/

namespace A290685.P11430705888186714604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290687 n).toNat

end

end A290685.P11430705888186714604

/-! ## A290685.P2833891430660392360

`A007088(and(A083329(n), A286866(n)))`
-/

namespace A290685.P2833891430660392360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A083329 n) (A286866 n)).toNat

end

end A290685.P2833891430660392360

/-! ## A290685.P5185922563064737281

`A007088(and(A286866(n), A290855(n)))`
-/

namespace A290685.P5185922563064737281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A286866 n) (A290855 n)).toNat

end

end A290685.P5185922563064737281

/-! ## A290685.P12438985580827437504

`A290853(A004873(n+1))`
-/

namespace A290685.P12438985580827437504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290853 (A004873 (n + 1)).toNat

end

end A290685.P12438985580827437504

/-! ## A290685.P9624870995972551754

`A185544(2*A290687(n))`
-/

namespace A290685.P9624870995972551754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290687 n).toNat

end

end A290685.P9624870995972551754

/-!
# A290686: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A290686, there is no canonical definition to state claims against.
-/

/-! ## A290686.P12705690334343543581

`∏[gcd(A138292(n), A138295(n))]`
-/

namespace A290686.P12705690334343543581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138292 n) (A138295 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290686.P12705690334343543581

/-! ## A290686.P4917261260953188385

`∏[gcd(A087710(3*n+2), A250120(n))]`
-/

namespace A290686.P4917261260953188385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087710 (3 * n + 2)) (A250120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290686.P4917261260953188385

/-!
# A290687: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A290687, there is no canonical definition to state claims against.
-/

/-! ## A290687.P10361618165820874940

`A000010(A286866(n)+2^n)`
-/

namespace A290687.P10361618165820874940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A286866 n + (2 ^ n : ℤ)).toNat

end

end A290687.P10361618165820874940

/-! ## A290687.P12717614391128042106

`A292596(A089889(n+1))+A290833(n)`
-/

namespace A290687.P12717614391128042106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292596 (A089889 (n + 1)).toNat + A290833 n

end

end A290687.P12717614391128042106

/-! ## A290687.P10276433001769736330

`A292596(A000196(n+1)*A089887(n+1))+A290833(n)`
-/

namespace A290687.P10276433001769736330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292596 (A000196 (n + 1) * A089887 (n + 1)).toNat + A290833 n

end

end A290687.P10276433001769736330

/-! ## A290687.P2603180077762895853

`and(A246918(ceil(2^(n-1)))+2^n, A286866(n))`
-/

namespace A290687.P2603180077762895853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A246918 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + (2 ^ n : ℤ)) (A286866 n)

end

end A290687.P2603180077762895853

/-!
# A290688: Number of linear chord diagrams having 2n chords and minimal chord length n.

The programs for A290688, there is no canonical definition to state claims against.
-/

/-! ## A290688.P16289813604208750097

`A293881(∑[4*n])`
-/

namespace A290688.P16289813604208750097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290688.P16289813604208750097

/-!
# A290689: Number of transitive rooted trees with n nodes.

The programs for A290689, there is no canonical definition to state claims against.
-/

/-! ## A290689.P751625810448155028

`A051889(A036615(n+1))`
-/

namespace A290689.P751625810448155028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A036615 (n + 1)).toNat

end

end A290689.P751625810448155028

/-! ## A290689.P17504979560320063471

`A172471(floor(sqrt(A303925(n))))`
-/

namespace A290689.P17504979560320063471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.sqrt (A303925 n)).toNat

end

end A290689.P17504979560320063471

/-! ## A290689.P3285407060599277436

`A274163(n)-A185284(3*n+1)`
-/

namespace A290689.P3285407060599277436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274163 n - A185284 (3 * n + 1)

end

end A290689.P3285407060599277436

/-! ## A290689.P12442297538502775869

`A324969(n+1)-A185284(3*n+1)`
-/

namespace A290689.P12442297538502775869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) - A185284 (3 * n + 1)

end

end A290689.P12442297538502775869

/-! ## A290689.P3081215975541416836

`round(1/acot(A000045(n)))-A185284(3*n+1)`
-/

namespace A290689.P3081215975541416836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A000045 n : ℝ)) - A185284 (3 * n + 1)

end

end A290689.P3081215975541416836

/-!
# A290690: E.g.f.: exp(Sum_{k>=1} (k-1)^3*x^k).

The programs for A290690, there is no canonical definition to state claims against.
-/

/-! ## A290690.P7693184222287397593

`A347100(∑[n-n%2]^n+1)`
-/

namespace A290690.P7693184222287397593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347100 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n + 1).toNat

end

end A290690.P7693184222287397593

/-!
# A290691: Triangle read by rows: infinite braid made of periodically-colored yarns in which the crossing of two adjacent yarns occurs when two color 0's are side by side (see comments).

The programs for A290691, there is no canonical definition to state claims against.
-/

/-! ## A290691.P13342689102550647885

`A326934(A239086(n+1)^A333844(n+1))`
-/

namespace A290691.P13342689102550647885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326934 (SequenceMachineLib.roundAway ((A239086 (n + 1) : ℚ) ^ (A333844 (n + 1) : ℤ))).toNat

end

end A290691.P13342689102550647885

/-! ## A290691.P15748834661411242670

`A326934(A239086(n+1)%A119054(n+1))`
-/

namespace A290691.P15748834661411242670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326934 (Int.tmod (A239086 (n + 1)) (A119054 (n + 1))).toNat

end

end A290691.P15748834661411242670

/-! ## A290691.P6087409591933546558

`A353418(A231515(3*(n+1)))+A051340(n)`
-/

namespace A290691.P6087409591933546558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (A231515 (3 * (n + 1))).toNat + A051340 n

end

end A290691.P6087409591933546558

/-! ## A290691.P16159644528387424366

`A304254(n+1)%A082909(A279248(n)+1)`
-/

namespace A290691.P16159644528387424366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304254 (n + 1)) (A082909 (A279248 n + 1).toNat)

end

end A290691.P16159644528387424366

/-! ## A290691.P15073865007328953375

`A086014(A114146(n))+A023531(n)`
-/

namespace A290691.P15073865007328953375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086014 (A114146 n).toNat + A023531 n

end

end A290691.P15073865007328953375

/-!
# A290692: Carmichael numbers of the form p - 2 where p is a prime number.

The programs for A290692, there is no canonical definition to state claims against.
-/

/-! ## A290692.P4069773032886801103

`∩[A097130(n+1), A194231(n+1)]`
-/

namespace A290692.P4069773032886801103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290692.P4069773032886801103

/-! ## A290692.P3021602824375071929

`∩[A110889(n+1), A194231(n+1)]`
-/

namespace A290692.P3021602824375071929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290692.P3021602824375071929

/-! ## A290692.P4106399169547014882

`∩[A194231(n+1), A205947(n+1)]`
-/

namespace A290692.P4106399169547014882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290692.P4106399169547014882

/-! ## A290692.P8797490935572033913

`∩[A135437(n+1)-2, A194231(n+1)]`
-/

namespace A290692.P8797490935572033913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135437 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290692.P8797490935572033913

/-! ## A290692.P8940417484921909038

`∩[A097130(n+1), A137198(n+1)]`
-/

namespace A290692.P8940417484921909038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290692.P8940417484921909038

/-! ## A290692.P18439630007905052241

`∩[A110889(n+1), A137198(n+1)]`
-/

namespace A290692.P18439630007905052241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290692.P18439630007905052241

/-! ## A290692.P1581043190878786124

`∩[A137198(n+1), A194231(n+1)]`
-/

namespace A290692.P1581043190878786124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290692.P1581043190878786124

/-! ## A290692.P15825239296633305457

`∩[A137198(n+1), A205947(n+1)]`
-/

namespace A290692.P15825239296633305457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290692.P15825239296633305457

/-!
# A290693: Triangle read by rows, coefficients of the polynomials P(n, x) = A135517(n) *(Euler(n, x) - Euler(n, 1)).

The programs for A290693, there is no canonical definition to state claims against.
-/

/-! ## A290693.P12185296110202067261

`A060096(n)*A334028(A221609(n+3))`
-/

namespace A290693.P12185296110202067261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 n * A334028 (A221609 (n + 3)).toNat

end

end A290693.P12185296110202067261

/-! ## A290693.P5623191188643334589

`A060096(n)-A204170(A298026(n))`
-/

namespace A290693.P5623191188643334589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 n - A204170 (A298026 n).toNat

end

end A290693.P5623191188643334589

/-! ## A290693.P18216225038077326027

`A060096(n)+A010815(A060921(3*n))`
-/

namespace A290693.P18216225038077326027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 n + A010815 (A060921 (3 * n)).toNat

end

end A290693.P18216225038077326027

/-! ## A290693.P16050382395168929127

`A060096(n)*A304118(A214253(n+1))`
-/

namespace A290693.P16050382395168929127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 n * A304118 (A214253 (n + 1)).toNat

end

end A290693.P16050382395168929127

/-! ## A290693.P8181448398454000186

`A321400(A009766(2*n+1))-A134309(n+1)`
-/

namespace A290693.P8181448398454000186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321400 (A009766 (2 * n + 1)).toNat - A134309 (n + 1)

end

end A290693.P8181448398454000186

/-!
# A290694: Triangle read by rows, numerators of coefficients (in rising powers) of rational polynomials P(n, x) such that Integral_{x=0..1} P'(n, x) = Bernoulli(n, 1).

The programs for A290694, there is no canonical definition to state claims against.
-/

/-! ## A290694.P2865170743035564027

`A144528(n+2)*A343785(A113378(n))`
-/

namespace A290694.P2865170743035564027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144528 (n + 2) * A343785 (A113378 n).toNat

end

end A290694.P2865170743035564027

/-! ## A290694.P9684345558422973207

`A335951(n+1)/A376306(A005843(3*(n+1)))`
-/

namespace A290694.P9684345558422973207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335951 (n + 1) : ℚ) / (A376306 (A005843 (3 * (n + 1))).toNat : ℚ)

end

end A290694.P9684345558422973207

/-! ## A290694.P5694818094412883621

`A334090(xor(A048760(n), A334099(n)))`
-/

namespace A290694.P5694818094412883621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (Int.xor (A048760 n) (A334099 n)).toNat

end

end A290694.P5694818094412883621

/-! ## A290694.P11099619009759304641

`A335951(n+1)/A140356(A000837(n))`
-/

namespace A290694.P11099619009759304641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335951 (n + 1) : ℚ) / (A140356 (A000837 n).toNat : ℚ)

end

end A290694.P11099619009759304641

/-! ## A290694.P12357161355772542995

`A335951(n+1)/A020639(A287022(n))`
-/

namespace A290694.P12357161355772542995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335951 (n + 1) : ℚ) / (A020639 (A287022 n).toNat : ℚ)

end

end A290694.P12357161355772542995

/-!
# A290695: Triangle read by rows, denominators of coefficients (in rising powers) of rational polynomials P(n, x) such that Integral_{x=0..1} P'(n, x) = Bernoulli(n, 1).

The programs for A290695, there is no canonical definition to state claims against.
-/

/-! ## A290695.P16934119133325616961

`A014963(gcd(A128175(n+1)², A076014(n+1))²)`
-/

namespace A290695.P16934119133325616961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.gcd (A128175 (n + 1) ^ 2) (A076014 (n + 1)) ^ 2)

end

end A290695.P16934119133325616961

/-! ## A290695.P14852701992940725687

`gcd(A002260(n+1), A024608(A118024(n)))`
-/

namespace A290695.P14852701992940725687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A024608 (A118024 n).toNat)

end

end A290695.P14852701992940725687

/-! ## A290695.P13296783605385054473

`gcd(A128227(n), A277127(A225193(n+1)))`
-/

namespace A290695.P13296783605385054473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128227 n) (A277127 (A225193 (n + 1)).toNat)

end

end A290695.P13296783605385054473

/-! ## A290695.P13112622464696612437

`gcd(A009998(n), A233583(A247026(n)))`
-/

namespace A290695.P13112622464696612437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009998 n) (A233583 (A247026 n).toNat)

end

end A290695.P13112622464696612437

/-! ## A290695.P4780224166464461882

`gcd(A014963(A076014(n+1)), A128175(n+1))`
-/

namespace A290695.P4780224166464461882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (A076014 (n + 1)).toNat) (A128175 (n + 1))

end

end A290695.P4780224166464461882

/-!
# A290697: Size of largest triangle occurring in any of the possible dissections of an equilateral triangle into n equilateral triangles with integer sides, assuming gcd(s_1,s_2,...,s_n)=1, s_k being the side lengths.

The programs for A290697, there is no canonical definition to state claims against.
-/

/-! ## A290697.P8570783025369002162

`floor(A276573(a(n-1))/2)` with `a(0)=2, a(1)=2`
-/

namespace A290697.P8570783025369002162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  ⌊(A276573 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A290697.P8570783025369002162

/-! ## A290697.P14301416763734372159

`A080682(a(n-3))+a(n-2)` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A290697.P14301416763734372159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  A080682 (a (n - 3)).toNat + a (n - 2)

end

end A290697.P14301416763734372159

/-! ## A290697.P17111251034726577941

`A179797(a(n-2)+a(n-3))` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A290697.P17111251034726577941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  A179797 (a (n - 2) + a (n - 3)).toNat

end

end A290697.P17111251034726577941

/-! ## A290697.P17031218408088863137

`A179797(Δ[A167385(n)])`
-/

namespace A290697.P17031218408088863137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179797 (f1 (n + 1) - f1 n).toNat

end

end A290697.P17031218408088863137

/-! ## A290697.P1726741251187040182

`A179797(A134816(n+4))`
-/

namespace A290697.P1726741251187040182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179797 (A134816 (n + 4)).toNat

end

end A290697.P1726741251187040182

/-!
# A290698: Number of minimal edge covers in the n-antiprism graph.

The programs for A290698, there is no canonical definition to state claims against.
-/

/-! ## A290698.P1597827001332715694

`A260581(A150600(n+1))`
-/

namespace A290698.P1597827001332715694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260581 (A150600 (n + 1)).toNat

end

end A290698.P1597827001332715694

/-!
# A290699: a(n) = 2^n - n + n^2.

The programs for A290699, the canonical program `A290699.P1205811742058359656` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290699 has offset 0).

The definition of A290699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290699.P1205811742058359656

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=14, a(4)=28`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290699

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P1205811742058359656.Spec : Prop :=
  ∀ n, P1205811742058359656.a n = A290699 n

theorem P1205811742058359656.correct : P1205811742058359656.Spec := by
  intro n
  simp only [A290699]

end A290699

/-! ## A290699.P9665974160265463614

`and(-2, 2^n)+n²-n`
-/

namespace A290699.P9665974160265463614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A290699.P9665974160265463614

namespace A290699

/-- `and(-2, 2^n)+n²-n` -/
def P9665974160265463614.Spec : Prop :=
  ∀ n, P9665974160265463614.a n = A290699 n

end A290699

/-! ## A290699.P11691633226391556902

`or(n²-n, and(-2, 2^n))`
-/

namespace A290699.P11691633226391556902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n ^ 2 : ℤ) - (n : ℤ)) (Int.land (-2) (2 ^ n : ℤ))

end

end A290699.P11691633226391556902

namespace A290699

/-- `or(n²-n, and(-2, 2^n))` -/
def P11691633226391556902.Spec : Prop :=
  ∀ n, P11691633226391556902.a n = A290699 n

end A290699

/-! ## A290699.P5286852809981277855

`or(n-1, 2^n)+(1-n)²`
-/

namespace A290699.P5286852809981277855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (2 ^ n : ℤ) + (1 - (n : ℤ)) ^ 2

end

end A290699.P5286852809981277855

namespace A290699

/-- `or(n-1, 2^n)+(1-n)²` -/
def P5286852809981277855.Spec : Prop :=
  ∀ n, P5286852809981277855.a n = A290699 n

end A290699

/-! ## A290699.P12959464117996938216

`∑[comp[2*n+3]+floor(2^(n-1))]`
-/

namespace A290699.P12959464117996938216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290699.P12959464117996938216

namespace A290699

/-- `∑[comp[2*n+3]+floor(2^(n-1))]` -/
def P12959464117996938216.Spec : Prop :=
  ∀ n, P12959464117996938216.a n = A290699 n

end A290699

/-! ## A290699.P3166001175980160199

`n²+A132045(n)-1`
-/

namespace A290699.P3166001175980160199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A132045 n - 1)

end

end A290699.P3166001175980160199

namespace A290699

/-- `n²+A132045(n)-1` -/
def P3166001175980160199.Spec : Prop :=
  ∀ n, P3166001175980160199.a n = A290699 n

end A290699

/-! ## A290699.P10387953875796237515

`n²-n+A155559(n)`
-/

namespace A290699.P10387953875796237515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + A155559 n

end

end A290699.P10387953875796237515

namespace A290699

/-- `n²-n+A155559(n)` -/
def P10387953875796237515.Spec : Prop :=
  ∀ n, P10387953875796237515.a n = A290699 n

end A290699

/-! ## A290699.P1692360513651541686

`2^n+∑[A004275(n)]-1`
-/

namespace A290699.P1692360513651541686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A290699.P1692360513651541686

namespace A290699

/-- `2^n+∑[A004275(n)]-1` -/
def P1692360513651541686.Spec : Prop :=
  ∀ n, P1692360513651541686.a n = A290699 n

end A290699

/-! ## A290699.P1567293906606733306

`2^n+n²-A028310(n)`
-/

namespace A290699.P1567293906606733306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((n ^ 2 : ℤ) - A028310 n)

end

end A290699.P1567293906606733306

namespace A290699

/-- `2^n+n²-A028310(n)` -/
def P1567293906606733306.Spec : Prop :=
  ∀ n, P1567293906606733306.a n = A290699 n

end A290699

/-! ## A290699.P12742298386290028937

`A133140(n)+(n+1)*(n-2)`
-/

namespace A290699.P12742298386290028937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 n + (n + 1 : ℤ) * ((n : ℤ) - 2)

end

end A290699.P12742298386290028937

namespace A290699

/-- `A133140(n)+(n+1)*(n-2)` -/
def P12742298386290028937.Spec : Prop :=
  ∀ n, P12742298386290028937.a n = A290699 n

end A290699

/-! ## A290699.P4572510077111212588

`A000225(n)+∑[comp[2*n+3]]`
-/

namespace A290699.P4572510077111212588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A290699.P4572510077111212588

namespace A290699

/-- `A000225(n)+∑[comp[2*n+3]]` -/
def P4572510077111212588.Spec : Prop :=
  ∀ n, P4572510077111212588.a n = A290699 n

end A290699

/-! ## A290699.P12863914413571886596

`2*(A131577(n)+∑[n-1]+1)`
-/

namespace A290699.P12863914413571886596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131577 n + ∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A290699.P12863914413571886596

namespace A290699

/-- `2*(A131577(n)+∑[n-1]+1)` -/
def P12863914413571886596.Spec : Prop :=
  ∀ n, P12863914413571886596.a n = A290699 n

end A290699

/-! ## A290699.P2086024414397938105

`A165900(n)+A083318(n)`
-/

namespace A290699.P2086024414397938105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n + A083318 n

end

end A290699.P2086024414397938105

namespace A290699

/-- `A165900(n)+A083318(n)` -/
def P2086024414397938105.Spec : Prop :=
  ∀ n, P2086024414397938105.a n = A290699 n

end A290699

/-! ## A290699.P18102376278667432792

`A386480(n)+A000918(n)`
-/

namespace A290699.P18102376278667432792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 n + A000918 n

end

end A290699.P18102376278667432792

namespace A290699

/-- `A386480(n)+A000918(n)` -/
def P18102376278667432792.Spec : Prop :=
  ∀ n, P18102376278667432792.a n = A290699 n

end A290699

/-! ## A290699.P13951893982816651121

`A001580(n)-A028310(n)`
-/

namespace A290699.P13951893982816651121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 n - A028310 n

end

end A290699.P13951893982816651121

namespace A290699

/-- `A001580(n)-A028310(n)` -/
def P13951893982816651121.Spec : Prop :=
  ∀ n, P13951893982816651121.a n = A290699 n

end A290699

/-! ## A290699.P12216949165289582121

`A020873(n)-A054977(n)`
-/

namespace A290699.P12216949165289582121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020873 n - A054977 n

end

end A290699.P12216949165289582121

namespace A290699

/-- `A020873(n)-A054977(n)` -/
def P12216949165289582121.Spec : Prop :=
  ∀ n, P12216949165289582121.a n = A290699 n

end A290699

/-! ## A290699.P11644071192748447048

`A131924(n)-A004277(n)`
-/

namespace A290699.P11644071192748447048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131924 n - A004277 n

end

end A290699.P11644071192748447048

namespace A290699

/-- `A131924(n)-A004277(n)` -/
def P11644071192748447048.Spec : Prop :=
  ∀ n, P11644071192748447048.a n = A290699 n

end A290699

/-! ## A290699.P3025216036003692354

`A131951(n)-A008574(n)`
-/

namespace A290699.P3025216036003692354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131951 n - A008574 n

end

end A290699.P3025216036003692354

namespace A290699

/-- `A131951(n)-A008574(n)` -/
def P3025216036003692354.Spec : Prop :=
  ∀ n, P3025216036003692354.a n = A290699 n

end A290699

/-! ## A290699.P13580089371735335624

`A220425(n)-A008486(n)`
-/

namespace A290699.P13580089371735335624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220425 n - A008486 n

end

end A290699.P13580089371735335624

namespace A290699

/-- `A220425(n)-A008486(n)` -/
def P13580089371735335624.Spec : Prop :=
  ∀ n, P13580089371735335624.a n = A290699 n

end A290699

/-! ## A290699.P12755042207993105739

`A132045(n)-A258837(n)`
-/

namespace A290699.P12755042207993105739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 n - A258837 n

end

end A290699.P12755042207993105739

namespace A290699

/-- `A132045(n)-A258837(n)` -/
def P12755042207993105739.Spec : Prop :=
  ∀ n, P12755042207993105739.a n = A290699 n

end A290699

