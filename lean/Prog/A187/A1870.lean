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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C004
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A187000: G.f. satisfies: A(x) = Sum_{n>=0} x^n*[Sum_{k=0..n} C(n,k)^3 *x^k* A(x)^(2k)].

The programs for A187000, there is no canonical definition to state claims against.
-/

/-! ## A187000.P4766049697928951192

`A342790(A055503(n))`
-/

namespace A187000.P4766049697928951192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342790 (A055503 n).toNat

end

end A187000.P4766049697928951192

/-! ## A187000.P2241749433485304402

`A358506(A353390(3*n+1))`
-/

namespace A187000.P2241749433485304402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (A353390 (3 * n + 1)).toNat

end

end A187000.P2241749433485304402

/-!
# A187001: G.f. satisfies: A(x) = Sum_{n>=0} x^n*[Sum_{k=0..n} C(n,k)^3 *x^k* A(x)^(3k)].

The programs for A187001, there is no canonical definition to state claims against.
-/

/-! ## A187001.P9159085787984672833

`A023187(A148375(n))`
-/

namespace A187001.P9159085787984672833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023187 (A148375 n).toNat

end

end A187001.P9159085787984672833

/-! ## A187001.P11187048148048164082

`A173911(n)+A054899(A086347(n))`
-/

namespace A187001.P11187048148048164082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173911 n + A054899 (A086347 n).toNat

end

end A187001.P11187048148048164082

/-!
# A187003: Expansion of 1/(1-x-2*x^2-3*x^3-3*x^4-2*x^5-x^6).

The programs for A187003, the canonical program `A187003.P8172270654414504618` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187003 has offset 0).

The definition of A187003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2-3x^3-3x^4-2x^5-x^6))` (program `A187003.P8172270654414504618`, by `A187003.P8172270654414504618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187003.P8172270654414504618

`ogf(1/(1-x-2x^2-3x^3-3x^4-2x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187003

/-- `ogf(1/(1-x-2x^2-3x^3-3x^4-2x^5-x^6))` -/
def P8172270654414504618.Spec : Prop :=
  ∀ n, P8172270654414504618.a n = A187003 n

theorem P8172270654414504618.correct : P8172270654414504618.Spec := by
  intro n
  simp only [A187003]

end A187003

/-! ## A187003.P3896507748110087672

`ceil(A159139(n+6)/A374681(3*n+4))`
-/

namespace A187003.P3896507748110087672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A159139 (n + 6) : ℚ) / (A374681 (3 * n + 4) : ℚ)⌉

end

end A187003.P3896507748110087672

namespace A187003

/-- `ceil(A159139(n+6)/A374681(3*n+4))` -/
def P3896507748110087672.Spec : Prop :=
  ∀ n, P3896507748110087672.a n = A187003 n

end A187003

/-! ## A187003.P10981906147406946580

`A120254(A054451(n))+A052960(n)`
-/

namespace A187003.P10981906147406946580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120254 (A054451 n).toNat + A052960 n

end

end A187003.P10981906147406946580

namespace A187003

/-- `A120254(A054451(n))+A052960(n)` -/
def P10981906147406946580.Spec : Prop :=
  ∀ n, P10981906147406946580.a n = A187003 n

end A187003

/-! ## A187003.P5466626009600976722

`A000006(A024427(n+1)*A080889(n))`
-/

namespace A187003.P5466626009600976722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A024427 (n + 1) * A080889 n).toNat

end

end A187003.P5466626009600976722

namespace A187003

/-- `A000006(A024427(n+1)*A080889(n))` -/
def P5466626009600976722.Spec : Prop :=
  ∀ n, P5466626009600976722.a n = A187003 n

end A187003

/-!
# A187004: Expansion of A(x) = (1 + 2*x^2 + 6*x^3 + 9*x^4 + 8*x^5 + 5*x^6) / (1 - x - 2*x^2 - 3*x^3 - 3*x^4 - 2*x^5 - x^6).

The programs for A187004, there is no canonical definition to state claims against.
-/

/-! ## A187004.P17672197167715077752

`A046108((∑{digits}[n, #]+1+n)*A038508(n))`
-/

namespace A187004.P17672197167715077752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n : ℕ) : ℤ) * A038508 n).toNat

end

end A187004.P17672197167715077752

/-! ## A187004.P14866444211970648536

`A146326(A143636(n))+A054486(n)`
-/

namespace A187004.P14866444211970648536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A143636 n).toNat + A054486 n

end

end A187004.P14866444211970648536

/-!
# A187006: A diagonal of triangle A187005.

The programs for A187006, there is no canonical definition to state claims against.
-/

/-! ## A187006.P2521097014404292463

`A187005(∑[n+2])`
-/

namespace A187006.P2521097014404292463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187006.P2521097014404292463

/-! ## A187006.P10978033033922659013

`record[A187005(A061579(n+1))]`
-/

namespace A187006.P10978033033922659013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187005 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187006.P10978033033922659013

/-! ## A187006.P6313751903790082876

`record[A187005(A198455(n+1))]`
-/

namespace A187006.P6313751903790082876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187005 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187006.P6313751903790082876

/-! ## A187006.P18270117295622983325

`record[A187005(A347633(n+1)+1)]`
-/

namespace A187006.P18270117295622983325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187005 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187006.P18270117295622983325

/-! ## A187006.P4017478467997709318

`record[A097807(n)*A187005(n+2)]`
-/

namespace A187006.P4017478467997709318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A187005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187006.P4017478467997709318

/-!
# A187007: A diagonal of triangle A187005.

The programs for A187007, there is no canonical definition to state claims against.
-/

/-! ## A187007.P15229521987499414092

`A187005(∑[n+3]+1)`
-/

namespace A187007.P15229521987499414092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187005 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187007.P15229521987499414092

/-! ## A187007.P6055178047332732847

`record[A187005(A347633(n+1))]`
-/

namespace A187007.P6055178047332732847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187005 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187007.P6055178047332732847

/-! ## A187007.P9815529457755510169

`record[A187005(A198455(n+1)-1)]`
-/

namespace A187007.P9815529457755510169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187005 (A198455 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187007.P9815529457755510169

/-! ## A187007.P3082031268465705925

`record[char[A055998(n)]*A187005(n+1)]`
-/

namespace A187007.P3082031268465705925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A187005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187007.P3082031268465705925

/-!
# A187008: Row sums of triangle A187005.

The programs for A187008, there is no canonical definition to state claims against.
-/

/-! ## A187008.P1891197112219324901

`∑[A269371(∑[n^n])]`
-/

namespace A187008.P1891197112219324901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187008.P1891197112219324901

/-! ## A187008.P6424340663318110479

`A247784((n+1)*A363003(n))`
-/

namespace A187008.P6424340663318110479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 ((n + 1 : ℤ) * A363003 n).toNat

end

end A187008.P6424340663318110479

/-!
# A187010: G.f. satisfies: A(x) = Sum_{n>=0} x^n*g_n(x)^n where g_n(x) = A(x) - x^n*g_n(x)^n for n>=0.

The programs for A187010, there is no canonical definition to state claims against.
-/

/-! ## A187010.P14098037117250206310

`round(A131157(A131203(n))/(n+1))`
-/

namespace A187010.P14098037117250206310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131157 (A131203 n).toNat : ℚ) / (n + 1 : ℚ))

end

end A187010.P14098037117250206310

/-! ## A187010.P9225424153997380294

`A255934(A255879(n+1)+A255813(n))`
-/

namespace A187010.P9225424153997380294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255934 (A255879 (n + 1) + A255813 n).toNat

end

end A187010.P9225424153997380294

/-! ## A187010.P5828067830803902480

`A173021(A074427(n+1)-A056556(n))`
-/

namespace A187010.P5828067830803902480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173021 (A074427 (n + 1) - A056556 n).toNat

end

end A187010.P5828067830803902480

/-! ## A187010.P1266587119155087840

`A286281(A286318(n+1))+A286270(3*(n+1))`
-/

namespace A187010.P1266587119155087840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286281 (A286318 (n + 1)).toNat + A286270 (3 * (n + 1))

end

end A187010.P1266587119155087840

/-!
# A187012: Antidiagonal sums of A103516.

The programs for A187012, the canonical program `A187012.P8956050191247851859` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187012 has offset 2).

The definition of A187012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187012.P8956050191247851859

`n²%(or(1, n)+n)+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187012

/-- `n²%(or(1, n)+n)+1` -/
def P8956050191247851859.Spec : Prop :=
  ∀ n, (P8956050191247851859.a n : ℤ) = A187012 (n + 2)

theorem P8956050191247851859.correct : P8956050191247851859.Spec := by
  intro n
  simp only [A187012, Nat.add_sub_cancel]

end A187012

/-! ## A187012.P196951875589343775

`ceil(3/a(n-1)*∑[n])` with `a(0)=1, a(1)=2`
-/

namespace A187012.P196951875589343775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈3 / (a (n - 1) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A187012.P196951875589343775

namespace A187012

/-- `ceil(3/a(n-1)*∑[n])` -/
def P196951875589343775.Spec : Prop :=
  ∀ n, P196951875589343775.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P13755314268767619162

`∑[or(1, n)]%(n+1)+n+1`
-/

namespace A187012.P13755314268767619162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + (n + 1)

end

end A187012.P13755314268767619162

namespace A187012

/-- `∑[or(1, n)]%(n+1)+n+1` -/
def P13755314268767619162.Spec : Prop :=
  ∀ n, (P13755314268767619162.a n : ℤ) = A187012 (n + 2)

end A187012

/-! ## A187012.P16150982732288827676

`gcd(2, n)+a(n-2)+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A187012.P16150982732288827676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Nat.gcd 2 n + (a (n - 2) + 1)

end

end A187012.P16150982732288827676

namespace A187012

/-- `gcd(2, n)+a(n-2)+1` -/
def P16150982732288827676.Spec : Prop :=
  ∀ n, (P16150982732288827676.a n : ℤ) = A187012 (n + 2)

end A187012

/-! ## A187012.P15454217998078583097

`a(n-2)+3-n%2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A187012.P15454217998078583097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) + (3 - ((n % 2 : ℕ) : ℤ))

end

end A187012.P15454217998078583097

namespace A187012

/-- `a(n-2)+3-n%2` -/
def P15454217998078583097.Spec : Prop :=
  ∀ n, P15454217998078583097.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P9621736818250365111

`∑[a(n-2)+(-1)^n]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=-1`
-/

namespace A187012.P9621736818250365111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, -1] fun n f1 =>
  f1 (n - 2) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187012.P9621736818250365111

namespace A187012

/-- `∑[a(n-2)+(-1)^n]` -/
def P9621736818250365111.Spec : Prop :=
  ∀ n, P9621736818250365111.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P4121721403887049213

`ceil((char[2*(n+1)]+2)*(n+1)/2)`
-/

namespace A187012.P4121721403887049213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((if ∃ j, f1 j = n then 1 else 0) + 2) * (n + 1) : ℕ) : ℚ) / 2⌉

end

end A187012.P4121721403887049213

namespace A187012

/-- `ceil((char[2*(n+1)]+2)*(n+1)/2)` -/
def P4121721403887049213.Spec : Prop :=
  ∀ n, P4121721403887049213.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P7159911828197625759

`∑[5-a(n-1)]+1-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A187012.P7159911828197625759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - a (n - 1))

end

end A187012.P7159911828197625759

namespace A187012

/-- `∑[5-a(n-1)]+1-a(n-1)` -/
def P7159911828197625759.Spec : Prop :=
  ∀ n, P7159911828197625759.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P12034523688378511426

`1-(a(n-1)-∑[5-a(n-1)])` with `a(0)=1, a(1)=2`
-/

namespace A187012.P12034523688378511426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187012.P12034523688378511426

namespace A187012

/-- `1-(a(n-1)-∑[5-a(n-1)])` -/
def P12034523688378511426.Spec : Prop :=
  ∀ n, P12034523688378511426.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P2873322400747050741

`∑[(n+1)%2+n]%(n+1)+n+1`
-/

namespace A187012.P2873322400747050741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + (n + 1)

end

end A187012.P2873322400747050741

namespace A187012

/-- `∑[(n+1)%2+n]%(n+1)+n+1` -/
def P2873322400747050741.Spec : Prop :=
  ∀ n, (P2873322400747050741.a n : ℤ) = A187012 (n + 2)

end A187012

/-! ## A187012.P15523421110921374450

`floor(a(n-2)+3*(n+1)/a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A187012.P15523421110921374450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + 3 * ((n + 1 : ℚ) / (a (n - 1) : ℚ))⌋

end

end A187012.P15523421110921374450

namespace A187012

/-- `floor(a(n-2)+3*(n+1)/a(n-1))` -/
def P15523421110921374450.Spec : Prop :=
  ∀ n, P15523421110921374450.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P6931909235107941557

`5*n-(2*a(n-1)+a(n-2)-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A187012.P6931909235107941557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  (5 * n : ℤ) - (2 * a (n - 1) + (a (n - 2) - 1))

end

end A187012.P6931909235107941557

namespace A187012

/-- `5*n-(2*a(n-1)+a(n-2)-1)` -/
def P6931909235107941557.Spec : Prop :=
  ∀ n, P6931909235107941557.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P11136651610155441787

`A047211(n+1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A187012.P11136651610155441787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A047211 (n + 1) - a (n - 1)

end

end A187012.P11136651610155441787

namespace A187012

/-- `A047211(n+1)-a(n-1)` -/
def P11136651610155441787.Spec : Prop :=
  ∀ n, P11136651610155441787.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P10122676832655853586

`char[2*n]+A000982(n)%(n+1)+n`
-/

namespace A187012.P10122676832655853586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (Int.tmod (A000982 n) (n + 1 : ℤ) + (n : ℤ))

end

end A187012.P10122676832655853586

namespace A187012

/-- `char[2*n]+A000982(n)%(n+1)+n` -/
def P10122676832655853586.Spec : Prop :=
  ∀ n, P10122676832655853586.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P10897981018021482921

`A179820(A028310(n))+n`
-/

namespace A187012.P10897981018021482921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 (A028310 n).toNat + (n : ℤ)

end

end A187012.P10897981018021482921

namespace A187012

/-- `A179820(A028310(n))+n` -/
def P10897981018021482921.Spec : Prop :=
  ∀ n, P10897981018021482921.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P7611220905084323546

`A257143(n)+A134451(n)`
-/

namespace A187012.P7611220905084323546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n + A134451 n

end

end A187012.P7611220905084323546

namespace A187012

/-- `A257143(n)+A134451(n)` -/
def P7611220905084323546.Spec : Prop :=
  ∀ n, P7611220905084323546.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P8069914544937938906

`A071054(n)-A062157(n)`
-/

namespace A187012.P8069914544937938906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 n - A062157 n

end

end A187012.P8069914544937938906

namespace A187012

/-- `A071054(n)-A062157(n)` -/
def P8069914544937938906.Spec : Prop :=
  ∀ n, P8069914544937938906.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P8131955796870572196

`A087156(n+1)+A027656(n)`
-/

namespace A187012.P8131955796870572196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A027656 n

end

end A187012.P8131955796870572196

namespace A187012

/-- `A087156(n+1)+A027656(n)` -/
def P8131955796870572196.Spec : Prop :=
  ∀ n, P8131955796870572196.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P2006832895916340861

`A158416(n)+A063196(n+1)`
-/

namespace A187012.P2006832895916340861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + A063196 (n + 1)

end

end A187012.P2006832895916340861

namespace A187012

/-- `A158416(n)+A063196(n+1)` -/
def P2006832895916340861.Spec : Prop :=
  ∀ n, P2006832895916340861.a n = A187012 (n + 2)

end A187012

/-! ## A187012.P11074590997050584900

`A266977(n)+A065423(n+1)`
-/

namespace A187012.P11074590997050584900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A065423 (n + 1)

end

end A187012.P11074590997050584900

namespace A187012

/-- `A266977(n)+A065423(n+1)` -/
def P11074590997050584900.Spec : Prop :=
  ∀ n, P11074590997050584900.a n = A187012 (n + 2)

end A187012

/-!
# A187017: Array where the n-th row is the expansion of (1+2*x+...+n*x^(n-1)) * (n+(n-1)*x+...+x^(n-1)).

The programs for A187017, there is no canonical definition to state claims against.
-/

/-! ## A187017.P3210536721042103572

`A115262(A064788(n+1)-1)`
-/

namespace A187017.P3210536721042103572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 (A064788 (n + 1) - 1).toNat

end

end A187017.P3210536721042103572

/-! ## A187017.P13253950853648908234

`A115262(A064790(n+1)-1)`
-/

namespace A187017.P13253950853648908234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 (A064790 (n + 1) - 1).toNat

end

end A187017.P13253950853648908234

/-! ## A187017.P15925681667680713720

`A115262(A194280(n+1)-1)`
-/

namespace A187017.P15925681667680713720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 (A194280 (n + 1) - 1).toNat

end

end A187017.P15925681667680713720

/-! ## A187017.P2565244632565632647

`∑{d}[A319513(n), A050320(#)]`
-/

namespace A187017.P2565244632565632647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050320 d

end

end A187017.P2565244632565632647

/-! ## A187017.P1281544735154449614

`∑{d}[A319513(n), A096825(#)]`
-/

namespace A187017.P1281544735154449614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A096825 d

end

end A187017.P1281544735154449614

/-!
# A187018: Coefficient of x^n in (1 + x + n*x^2)^n.

The programs for A187018, there is no canonical definition to state claims against.
-/

/-! ## A187018.P17326490619509747180

`A307855(∑[4*n])`
-/

namespace A187018.P17326490619509747180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187018.P17326490619509747180

/-! ## A187018.P2202148939027871421

`or(1, A307855(A046092(n)))`
-/

namespace A187018.P2202148939027871421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A307855 (A046092 n).toNat)

end

end A187018.P2202148939027871421

/-! ## A187018.P14930415345172650386

`A307855(C(2, n))*A307855(A046092(n))`
-/

namespace A187018.P14930415345172650386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (Nat.choose 2 n) * A307855 (A046092 n).toNat

end

end A187018.P14930415345172650386

/-! ## A187018.P4040132829426399668

`A307855(A046092(n))^A077840(C(2, n))`
-/

namespace A187018.P4040132829426399668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307855 (A046092 n).toNat : ℚ) ^ (A077840 (Nat.choose 2 n) : ℤ)

end

end A187018.P4040132829426399668

/-! ## A187018.P8777696876248258075

`A007318(A000096(n))*A307855(A046092(n))`
-/

namespace A187018.P8777696876248258075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A307855 (A046092 n).toNat

end

end A187018.P8777696876248258075

/-! ## A187018.P11004801174036474661

`A014963(A000217(n+6))*A307855(A046092(n))`
-/

namespace A187018.P11004801174036474661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A307855 (A046092 n).toNat

end

end A187018.P11004801174036474661

/-! ## A187018.P6736688892485878629

`A110180(∑[4*n])`
-/

namespace A187018.P6736688892485878629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187018.P6736688892485878629

/-!
# A187019: Coefficient of x^n in expansion of (1+n*x+(n+1)*x^2)^n.

The programs for A187019, there is no canonical definition to state claims against.
-/

/-! ## A187019.P11254014991254707619

`A246262((n+1)^(n+1)-(n+2)!/2+1)`
-/

namespace A187019.P11254014991254707619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (SequenceMachineLib.roundAway (((n + 1) ^ (n + 1) : ℚ) - (Nat.factorial (n + 2) : ℚ) / 2 + 1)).toNat

end

end A187019.P11254014991254707619

/-!
# A187021: Coefficient of x^n in (1 + (n+1)*x + n*x^2)^n.

The programs for A187021, there is no canonical definition to state claims against.
-/

/-! ## A187021.P5341600321306658579

`A307883(∑[4*n])`
-/

namespace A187021.P5341600321306658579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187021.P5341600321306658579

/-! ## A187021.P17895460065785279251

`record[A307883(gcd(n, A114327(n)))]`
-/

namespace A187021.P17895460065785279251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187021.P17895460065785279251

/-! ## A187021.P16733676473175238097

`record[A307883(A105638(n+3)-n)]`
-/

namespace A187021.P16733676473175238097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (A105638 (n + 3) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187021.P16733676473175238097

/-! ## A187021.P6899023271714789723

`lcm(A155040(n), A307883(A046092(n)))`
-/

namespace A187021.P6899023271714789723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155040 n) (A307883 (A046092 n).toNat)

end

end A187021.P6899023271714789723

/-! ## A187021.P13474397250898718325

`or(A059841(n), A307883(A046092(n)))`
-/

namespace A187021.P13474397250898718325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A307883 (A046092 n).toNat)

end

end A187021.P13474397250898718325

/-!
# A187022: a(n) is the smallest prime factor of n^n+1 having the form k*n+1.

The programs for A187022, there is no canonical definition to state claims against.
-/

/-! ## A187022.P14559268679817412869

`(n+2)*A187024(n+2)+1`
-/

namespace A187022.P14559268679817412869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A187024 (n + 2) + 1

end

end A187022.P14559268679817412869

/-! ## A187022.P10030390380635300138

`A141310((n+2)*A187024(n+2))`
-/

namespace A187022.P10030390380635300138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n + 2 : ℤ) * A187024 (n + 2)).toNat

end

end A187022.P10030390380635300138

/-! ## A187022.P5208639460419936870

`A151800((n+2)*A187024(n+2))`
-/

namespace A187022.P5208639460419936870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 2 : ℤ) * A187024 (n + 2)).toNat

end

end A187022.P5208639460419936870

/-! ## A187022.P9931839477073140610

`A074399((n+2)*A187024(n+2))`
-/

namespace A187022.P9931839477073140610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 ((n + 2 : ℤ) * A187024 (n + 2)).toNat

end

end A187022.P9931839477073140610

/-! ## A187022.P14853048753607568553

`A216487((n+2)*A187024(n+2))`
-/

namespace A187022.P14853048753607568553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216487 ((n + 2 : ℤ) * A187024 (n + 2)).toNat

end

end A187022.P14853048753607568553

/-!
# A187023: a(n) is the smallest prime factor of n^n-1 having the form k*n+1.

The programs for A187023, there is no canonical definition to state claims against.
-/

/-! ## A187023.P3169070065217291944

`(n+2)*A187025(n+2)+1`
-/

namespace A187023.P3169070065217291944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A187025 (n + 2) + 1

end

end A187023.P3169070065217291944

/-! ## A187023.P7937346397302639938

`A141310((n+2)*A187025(n+2))`
-/

namespace A187023.P7937346397302639938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n + 2 : ℤ) * A187025 (n + 2)).toNat

end

end A187023.P7937346397302639938

/-! ## A187023.P9872743974251422999

`A151800((n+2)*A187025(n+2))`
-/

namespace A187023.P9872743974251422999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 2 : ℤ) * A187025 (n + 2)).toNat

end

end A187023.P9872743974251422999

/-!
# A187024: a(n) is the least number k such that k*n+1 is a prime dividing n^n+1.

The programs for A187024, there is no canonical definition to state claims against.
-/

/-! ## A187024.P13503775281270488275

`floor(A187022(n+2)/(n+2))`
-/

namespace A187024.P13503775281270488275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187022 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A187024.P13503775281270488275

/-! ## A187024.P11928544924540994441

`(A187022(n+2)-1)/A020725(n+1)`
-/

namespace A187024.P11928544924540994441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187022 (n + 2) - 1 : ℚ) / (A020725 (n + 1) : ℚ)

end

end A187024.P11928544924540994441

/-! ## A187024.P9089383169385655861

`Δ[A060946(n+1)]%A187022(n+2)`
-/

namespace A187024.P9089383169385655861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A187022 (n + 2))

end

end A187024.P9089383169385655861

/-! ## A187024.P16709803152890372534

`A000010(A187022(n+2))/A020725(n+1)`
-/

namespace A187024.P16709803152890372534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A187022 (n + 2)).toNat : ℚ) / (A020725 (n + 1) : ℚ)

end

end A187024.P16709803152890372534

/-! ## A187024.P13530521089059634819

`A003958(A187022(n+2))/A000027(n+2)`
-/

namespace A187024.P13530521089059634819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A187022 (n + 2)).toNat : ℚ) / (A000027 (n + 2) : ℚ)

end

end A187024.P13530521089059634819

/-!
# A187025: a(n) is the least number k such that k*n+1 is a prime dividing n^n-1.

The programs for A187025, there is no canonical definition to state claims against.
-/

/-! ## A187025.P9360539486604347523

`floor(A187023(n+2)/(n+2))`
-/

namespace A187025.P9360539486604347523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187023 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A187025.P9360539486604347523

/-! ## A187025.P18183753799620724660

`(A187023(n+2)-1)/A020725(n+1)`
-/

namespace A187025.P18183753799620724660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187023 (n + 2) - 1 : ℚ) / (A020725 (n + 1) : ℚ)

end

end A187025.P18183753799620724660

/-! ## A187025.P1252562505214679578

`(A187023(n+2)-1)/(A000027(n+1)+1)`
-/

namespace A187025.P1252562505214679578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187023 (n + 2) - 1 : ℚ) / (A000027 (n + 1) + 1 : ℚ)

end

end A187025.P1252562505214679578

/-! ## A187025.P2335088814391217768

`(A187023(n+2)-1)/A289441(2*(n+2))`
-/

namespace A187025.P2335088814391217768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187023 (n + 2) - 1 : ℚ) / (A289441 (2 * (n + 2)) : ℚ)

end

end A187025.P2335088814391217768

/-! ## A187025.P1425855111381667435

`A000026((A187023(n+2)-1)/(n+2))`
-/

namespace A187025.P1425855111381667435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((A187023 (n + 2) - 1 : ℚ) / (n + 2 : ℚ))).toNat

end

end A187025.P1425855111381667435

/-!
# A187026: Least m such that prime(n) divides (prime(m) + prime(m+1))/2.

The programs for A187026, there is no canonical definition to state claims against.
-/

/-! ## A187026.P4615591430120550156

`A000720(A254862(A100484(n+1)))`
-/

namespace A187026.P4615591430120550156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A254862 (A100484 (n + 1)).toNat).toNat

end

end A187026.P4615591430120550156

/-! ## A187026.P8682522177937711429

`A202063(n+1)+A010816(A152948(n+1))`
-/

namespace A187026.P8682522177937711429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202063 (n + 1) + A010816 (A152948 (n + 1)).toNat

end

end A187026.P8682522177937711429

/-! ## A187026.P10499021216819538298

`A130296(A103230(n+1))*A202063(n+1)`
-/

namespace A187026.P10499021216819538298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (A103230 (n + 1)).toNat * A202063 (n + 1)

end

end A187026.P10499021216819538298

/-! ## A187026.P9311782528961551080

`A061395(A112926(n+3)*A188815(n+1))`
-/

namespace A187026.P9311782528961551080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A112926 (n + 3) * A188815 (n + 1)).toNat

end

end A187026.P9311782528961551080

/-!
# A187028: Number of 3-step one or two collinear space at a time queen's tours on an n X n board summed over all starting positions.

The programs for A187028, there is no canonical definition to state claims against.
-/

/-! ## A187028.P5203192280118137979

`A187027(∑[n+2]+4)`
-/

namespace A187028.P5203192280118137979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187028.P5203192280118137979

/-! ## A187028.P4488972172804701674

`lcm(2, A187027(A167614(n+1)))`
-/

namespace A187028.P4488972172804701674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187027 (A167614 (n + 1)).toNat)

end

end A187028.P4488972172804701674

/-! ## A187028.P14943173777470129698

`A187027(A167614(n+1))+A011734(n)`
-/

namespace A187028.P14943173777470129698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A167614 (n + 1)).toNat + A011734 n

end

end A187028.P14943173777470129698

/-! ## A187028.P5983575531185978119

`A308924(n)+A187027(A167614(n+1))`
-/

namespace A187028.P5983575531185978119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308924 n + A187027 (A167614 (n + 1)).toNat

end

end A187028.P5983575531185978119

/-! ## A187028.P13599132214976173599

`A054977(n)*A187027(A167614(n+1))`
-/

namespace A187028.P13599132214976173599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A187027 (A167614 (n + 1)).toNat

end

end A187028.P13599132214976173599

/-!
# A187029: Number of 4-step one or two collinear space at a time queen's tours on an n X n board summed over all starting positions.

The programs for A187029, there is no canonical definition to state claims against.
-/

/-! ## A187029.P14996566068952385462

`A187027(∑[n+3]+7)`
-/

namespace A187029.P14996566068952385462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187029.P14996566068952385462

/-!
# A187030: Number of 5-step one or two collinear space at a time queen's tours on an n X n board summed over all starting positions.

The programs for A187030, there is no canonical definition to state claims against.
-/

/-! ## A187030.P14516713021597102454

`A187027(A155212(n)+13)`
-/

namespace A187030.P14516713021597102454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A155212 n + 13).toNat

end

end A187030.P14516713021597102454

/-! ## A187030.P6212921903131699004

`A187027(A056000(n)+15)`
-/

namespace A187030.P6212921903131699004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A056000 n + 15).toNat

end

end A187030.P6212921903131699004

/-! ## A187030.P13222547933666305323

`A187027(eq[7, A066657(n)])`
-/

namespace A187030.P13222547933666305323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187030.P13222547933666305323

/-! ## A187030.P11395828682285803238

`A187027(A167614(n+3)+2)`
-/

namespace A187030.P11395828682285803238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A167614 (n + 3) + 2).toNat

end

end A187030.P11395828682285803238

/-! ## A187030.P16338316773714984252

`A187027(A000217(n+4)+5)`
-/

namespace A187030.P16338316773714984252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A000217 (n + 4) + 5).toNat

end

end A187030.P16338316773714984252

/-!
# A187031: Number of 6-step one or two collinear space at a time queen's tours on an n X n board summed over all starting positions.

The programs for A187031, there is no canonical definition to state claims against.
-/

/-! ## A187031.P17787090843629627500

`A187027(A166136(n+4))`
-/

namespace A187031.P17787090843629627500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A166136 (n + 4)).toNat

end

end A187031.P17787090843629627500

/-! ## A187031.P14769944246552145611

`A187027(A167499(n+4)+1)`
-/

namespace A187031.P14769944246552145611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A167499 (n + 4) + 1).toNat

end

end A187031.P14769944246552145611

/-! ## A187031.P16002192842503267567

`A187027(A034856(n+4)+8)`
-/

namespace A187031.P16002192842503267567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A034856 (n + 4) + 8).toNat

end

end A187031.P16002192842503267567

/-! ## A187031.P3996455225216116980

`A187027(A056000(n+1)+16)`
-/

namespace A187031.P3996455225216116980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A056000 (n + 1) + 16).toNat

end

end A187031.P3996455225216116980

/-! ## A187031.P11722010786846001566

`A187027(eq[7, A131818(n+1)])`
-/

namespace A187031.P11722010786846001566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187031.P11722010786846001566

/-!
# A187032: Number of 7-step one or two collinear space at a time queen's tours on an n X n board summed over all starting positions.

The programs for A187032, there is no canonical definition to state claims against.
-/

/-! ## A187032.P1311897800288114079

`A187027(eq[11, A066657(n)])`
-/

namespace A187032.P1311897800288114079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187032.P1311897800288114079

/-! ## A187032.P15071218115265056335

`A187027(A167614(n+5)+4)`
-/

namespace A187032.P15071218115265056335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A167614 (n + 5) + 4).toNat

end

end A187032.P15071218115265056335

/-! ## A187032.P6585595059849005477

`A187027(A000217(n+6)+7)`
-/

namespace A187032.P6585595059849005477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A000217 (n + 6) + 7).toNat

end

end A187032.P6585595059849005477

/-! ## A187032.P2472617179946524971

`A187027(A027379(n+4)+10)`
-/

namespace A187032.P2472617179946524971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187027 (A027379 (n + 4) + 10).toNat

end

end A187032.P2472617179946524971

/-!
# A187034: Number triangle T(n,k) = (-1)^(n-k) if binomial(k, n-k) > 0, 0 otherwise, with 0 <= k <= n.

The programs for A187034, the canonical program `A187034.P12620824179047078274` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187034 has offset 0).

The definition of A187034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187034.P12620824179047078274

`A101688(n)*(-1)^(A003056(n)+A002260(n+1)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A187034

/-- `A101688(n)*(-1)^(A003056(n)+A002260(n+1)+1)` -/
def P12620824179047078274.Spec : Prop :=
  ∀ n, P12620824179047078274.a n = (A187034 n : ℚ)

end A187034

/-! ## A187034.P16926155635430423102

`(-(ceil(sqrt(8*(n+1)))%2))^comp[C(2*n, 2)]`
-/

namespace A187034.P16926155635430423102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187034.P16926155635430423102

namespace A187034

/-- `(-(ceil(sqrt(8*(n+1)))%2))^comp[C(2*n, 2)]` -/
def P16926155635430423102.Spec : Prop :=
  ∀ n, P16926155635430423102.a n = A187034 n

end A187034

/-! ## A187034.P4530581354524321557

`round((1-C(∑[char[∑[n]]], 2)+n)*(and(2, comp[∑[n]]+n)-1)/(comp[∑[n]]-n))`
-/

namespace A187034.P4530581354524321557
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n : ℤ) - (n : ℤ) : ℚ))

end

end A187034.P4530581354524321557

namespace A187034

/-- `round((1-C(∑[char[∑[n]]], 2)+n)*(and(2, comp[∑[n]]+n)-1)/(comp[∑[n]]-n))` -/
def P4530581354524321557.Spec : Prop :=
  ∀ n, P4530581354524321557.a n = A187034 n

end A187034

/-! ## A187034.P15001937943985484066

`round(sin(atan(A099096(n))))`
-/

namespace A187034.P15001937943985484066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A099096 n : ℝ)))

end

end A187034.P15001937943985484066

namespace A187034

/-- `round(sin(atan(A099096(n))))` -/
def P15001937943985484066.Spec : Prop :=
  ∀ n, P15001937943985484066.a n = A187034 n

end A187034

/-! ## A187034.P4297849036397350452

`round(sin(atan(A110509(n))))`
-/

namespace A187034.P4297849036397350452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A110509 n : ℝ)))

end

end A187034.P4297849036397350452

namespace A187034

/-- `round(sin(atan(A110509(n))))` -/
def P4297849036397350452.Spec : Prop :=
  ∀ n, P4297849036397350452.a n = A187034 n

end A187034

/-! ## A187034.P14271585701640313335

`round(sin(atan(A110517(n))))`
-/

namespace A187034.P14271585701640313335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A110517 n : ℝ)))

end

end A187034.P14271585701640313335

namespace A187034

/-- `round(sin(atan(A110517(n))))` -/
def P14271585701640313335.Spec : Prop :=
  ∀ n, P14271585701640313335.a n = A187034 n

end A187034

/-! ## A187034.P7241625612436847181

`round(A140756(n+1)/(comp[∑[n]]-n))`
-/

namespace A187034.P7241625612436847181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140756 (n + 1) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ))

end

end A187034.P7241625612436847181

namespace A187034

/-- `round(A140756(n+1)/(comp[∑[n]]-n))` -/
def P7241625612436847181.Spec : Prop :=
  ∀ n, P7241625612436847181.a n = A187034 n

end A187034

/-! ## A187034.P14574401575301314268

`(and(2, comp[∑[n]]+n)-1)*A101688(n)`
-/

namespace A187034.P14574401575301314268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A101688 n

end

end A187034.P14574401575301314268

namespace A187034

/-- `(and(2, comp[∑[n]]+n)-1)*A101688(n)` -/
def P14574401575301314268.Spec : Prop :=
  ∀ n, P14574401575301314268.a n = A187034 n

end A187034

/-! ## A187034.P17683486172279720091

`A097807(n)*A101688(n)`
-/

namespace A187034.P17683486172279720091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A101688 n

end

end A187034.P17683486172279720091

namespace A187034

/-- `A097807(n)*A101688(n)` -/
def P17683486172279720091.Spec : Prop :=
  ∀ n, P17683486172279720091.a n = A187034 n

end A187034

/-! ## A187034.P15972948955705640185

`A101688(n)*A128257(n)`
-/

namespace A187034.P15972948955705640185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A128257 n

end

end A187034.P15972948955705640185

namespace A187034

/-- `A101688(n)*A128257(n)` -/
def P15972948955705640185.Spec : Prop :=
  ∀ n, P15972948955705640185.a n = A187034 n

end A187034

/-! ## A187034.P10609715559139365465

`A109466(n)/A059674(n)`
-/

namespace A187034.P10609715559139365465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109466 n : ℚ) / (A059674 n : ℚ)

end

end A187034.P10609715559139365465

namespace A187034

/-- `A109466(n)/A059674(n)` -/
def P10609715559139365465.Spec : Prop :=
  ∀ n, P10609715559139365465.a n = (A187034 n : ℚ)

end A187034

/-! ## A187034.P17294307972999478018

`A111505(n)/A130595(n)`
-/

namespace A187034.P17294307972999478018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111505 n : ℚ) / (A130595 n : ℚ)

end

end A187034.P17294307972999478018

namespace A187034

/-- `A111505(n)/A130595(n)` -/
def P17294307972999478018.Spec : Prop :=
  ∀ n, P17294307972999478018.a n = (A187034 n : ℚ)

end A187034

/-! ## A187034.P14621382002816264078

`A187881(n+1)/A140756(n+1)`
-/

namespace A187034.P14621382002816264078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187881 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A187034.P14621382002816264078

namespace A187034

/-- `A187881(n+1)/A140756(n+1)` -/
def P14621382002816264078.Spec : Prop :=
  ∀ n, P14621382002816264078.a n = (A187034 n : ℚ)

end A187034

/-! ## A187034.P7678554108140333977

`A101455(A210535(n+1))`
-/

namespace A187034.P7678554108140333977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A210535 (n + 1)).toNat

end

end A187034.P7678554108140333977

namespace A187034

/-- `A101455(A210535(n+1))` -/
def P7678554108140333977.Spec : Prop :=
  ∀ n, P7678554108140333977.a n = A187034 n

end A187034

/-! ## A187034.P10748380036709514628

`round(sin(atan(A115179(n))))`
-/

namespace A187034.P10748380036709514628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A115179 n : ℝ)))

end

end A187034.P10748380036709514628

namespace A187034

/-- `round(sin(atan(A115179(n))))` -/
def P10748380036709514628.Spec : Prop :=
  ∀ n, P10748380036709514628.a n = A187034 n

end A187034

/-! ## A187034.P16752740218405820677

`A117569(A210535(n+1)²*A210535(n+1))`
-/

namespace A187034.P16752740218405820677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A210535 (n + 1) ^ 2 * A210535 (n + 1)).toNat

end

end A187034.P16752740218405820677

namespace A187034

/-- `A117569(A210535(n+1)²*A210535(n+1))` -/
def P16752740218405820677.Spec : Prop :=
  ∀ n, P16752740218405820677.a n = A187034 n

end A187034

/-! ## A187034.P7478909238696551384

`A101688(n)*A114116(n)`
-/

namespace A187034.P7478909238696551384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A114116 n

end

end A187034.P7478909238696551384

namespace A187034

/-- `A101688(n)*A114116(n)` -/
def P7478909238696551384.Spec : Prop :=
  ∀ n, P7478909238696551384.a n = A187034 n

end A187034

/-! ## A187034.P11627093165910291232

`round(tanh(A109466(n)))`
-/

namespace A187034.P11627093165910291232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A109466 n : ℝ))

end

end A187034.P11627093165910291232

namespace A187034

/-- `round(tanh(A109466(n)))` -/
def P11627093165910291232.Spec : Prop :=
  ∀ n, P11627093165910291232.a n = A187034 n

end A187034

/-!
# A187035: Diagonal sums of number triangle A187034.

The programs for A187035, the canonical program `A187035.P18314762719994044676` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187035 has offset 0).

The definition of A187035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187035.P18314762719994044676

`round(Δ[lcm(2, n+2)]/6)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187035

/-- `round(Δ[lcm(2, n+2)]/6)` -/
def P18314762719994044676.Spec : Prop :=
  ∀ n, P18314762719994044676.a n = A187035 n

theorem P18314762719994044676.correct : P18314762719994044676.Spec := by
  intro n
  simp only [A187035]

end A187035

/-! ## A187035.P14118302191281362514

`∑[ogf(1/(1+x+x^3+x^4))]`
-/

namespace A187035.P14118302191281362514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 0, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187035.P14118302191281362514

namespace A187035

/-- `∑[ogf(1/(1+x+x^3+x^4))]` -/
def P14118302191281362514.Spec : Prop :=
  ∀ n, P14118302191281362514.a n = A187035 n

end A187035

/-! ## A187035.P8255629216057371471

`ogf(1/(1-x^2+x^3-x^5))`
-/

namespace A187035.P8255629216057371471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, 1, 0, -1] n

end

end A187035.P8255629216057371471

namespace A187035

/-- `ogf(1/(1-x^2+x^3-x^5))` -/
def P8255629216057371471.Spec : Prop :=
  ∀ n, P8255629216057371471.a n = A187035 n

end A187035

/-! ## A187035.P9548424917386066188

`(-1)^n*ceil(xor(1, n)/6)`
-/

namespace A187035.P9548424917386066188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌈(Nat.xor 1 n : ℚ) / 6⌉

end

end A187035.P9548424917386066188

namespace A187035

/-- `(-1)^n*ceil(xor(1, n)/6)` -/
def P9548424917386066188.Spec : Prop :=
  ∀ n, P9548424917386066188.a n = A187035 n

end A187035

/-! ## A187035.P8550797046551759806

`ceil(xor(1, n)/6)/(-1)^n`
-/

namespace A187035.P8550797046551759806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.xor 1 n : ℚ) / 6⌉ : ℚ) / ((-1) ^ n : ℚ)

end

end A187035.P8550797046551759806

namespace A187035

/-- `ceil(xor(1, n)/6)/(-1)^n` -/
def P8550797046551759806.Spec : Prop :=
  ∀ n, P8550797046551759806.a n = (A187035 n : ℚ)

end A187035

/-! ## A187035.P11860498227674147509

`round(Δ[(n+1)/gcd(2, n)]/3)`
-/

namespace A187035.P11860498227674147509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) / 3)

end

end A187035.P11860498227674147509

namespace A187035

/-- `round(Δ[(n+1)/gcd(2, n)]/3)` -/
def P11860498227674147509.Spec : Prop :=
  ∀ n, P11860498227674147509.a n = A187035 n

end A187035

/-! ## A187035.P17307805993783270293

`a(and(1, n))-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A187035.P17307805993783270293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (Nat.land 1 n) - a (n - 3)

end

end A187035.P17307805993783270293

namespace A187035

/-- `a(and(1, n))-a(n-3)` -/
def P17307805993783270293.Spec : Prop :=
  ∀ n, P17307805993783270293.a n = A187035 n

end A187035

/-! ## A187035.P9426183155333991917

`∑[(-1)^n]-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A187035.P9426183155333991917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 3)

end

end A187035.P9426183155333991917

namespace A187035

/-- `∑[(-1)^n]-a(n-3)` -/
def P9426183155333991917.Spec : Prop :=
  ∀ n, P9426183155333991917.a n = A187035 n

end A187035

/-! ## A187035.P14946362554759067767

`floor(Δ[(n+2)*a(n-2)/n])` with `a(0)=1, a(1)=2`
-/

namespace A187035.P14946362554759067767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 2 : ℚ) * (f1 (n - 2) / (n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A187035.P14946362554759067767

namespace A187035

/-- `floor(Δ[(n+2)*a(n-2)/n])` -/
def P14946362554759067767.Spec : Prop :=
  ∀ n, P14946362554759067767.a n = A187035 n

end A187035

/-! ## A187035.P10713241840323137507

`a(n-2)+a(n-5)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-1, a(4)=1`
-/

namespace A187035.P10713241840323137507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, -1, 1] fun n a =>
  a (n - 2) + (a (n - 5) - a (n - 3))

end

end A187035.P10713241840323137507

namespace A187035

/-- `a(n-2)+a(n-5)-a(n-3)` -/
def P10713241840323137507.Spec : Prop :=
  ∀ n, P10713241840323137507.a n = A187035 n

end A187035

/-! ## A187035.P17741978506446666241

`∑[A104581(n)]`
-/

namespace A187035.P17741978506446666241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187035.P17741978506446666241

namespace A187035

/-- `∑[A104581(n)]` -/
def P17741978506446666241.Spec : Prop :=
  ∀ n, P17741978506446666241.a n = A187035 n

end A187035

/-! ## A187035.P10616064644585845721

`a(n-2)-A131531(n)` with `a(0)=1, a(1)=0`
-/

namespace A187035.P10616064644585845721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - A131531 n

end

end A187035.P10616064644585845721

namespace A187035

/-- `a(n-2)-A131531(n)` -/
def P10616064644585845721.Spec : Prop :=
  ∀ n, P10616064644585845721.a n = A187035 n

end A187035

/-! ## A187035.P4602670975961323332

`A001057(A008611(n))`
-/

namespace A187035.P4602670975961323332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008611 n).toNat

end

end A187035.P4602670975961323332

namespace A187035

/-- `A001057(A008611(n))` -/
def P4602670975961323332.Spec : Prop :=
  ∀ n, P4602670975961323332.a n = A187035 n

end A187035

/-! ## A187035.P16672578815560849533

`A168052(n)+A001057(n)`
-/

namespace A187035.P16672578815560849533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168052 n + A001057 n

end

end A187035.P16672578815560849533

namespace A187035

/-- `A168052(n)+A001057(n)` -/
def P16672578815560849533.Spec : Prop :=
  ∀ n, P16672578815560849533.a n = A187035 n

end A187035

/-! ## A187035.P6022854642123244680

`A087504(n)-A124072(n)`
-/

namespace A187035.P6022854642123244680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 n - A124072 n

end

end A187035.P6022854642123244680

namespace A187035

/-- `A087504(n)-A124072(n)` -/
def P6022854642123244680.Spec : Prop :=
  ∀ n, P6022854642123244680.a n = A187035 n

end A187035

/-! ## A187035.P8689440641143847984

`A168052(n)-A130472(n)`
-/

namespace A187035.P8689440641143847984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168052 n - A130472 n

end

end A187035.P8689440641143847984

namespace A187035

/-- `A168052(n)-A130472(n)` -/
def P8689440641143847984.Spec : Prop :=
  ∀ n, P8689440641143847984.a n = A187035 n

end A187035

/-! ## A187035.P7011033551109127818

`A033999(n)*A103221(n)`
-/

namespace A187035.P7011033551109127818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A103221 n

end

end A187035.P7011033551109127818

namespace A187035

/-- `A033999(n)*A103221(n)` -/
def P7011033551109127818.Spec : Prop :=
  ∀ n, P7011033551109127818.a n = A187035 n

end A187035

/-! ## A187035.P8984768802445940738

`∑[A008620(n)*A033999(n)]`
-/

namespace A187035.P8984768802445940738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187035.P8984768802445940738

namespace A187035

/-- `∑[A008620(n)*A033999(n)]` -/
def P8984768802445940738.Spec : Prop :=
  ∀ n, P8984768802445940738.a n = A187035 n

end A187035

/-! ## A187035.P916190062192027878

`A062157(n+1)*A103221(n)`
-/

namespace A187035.P916190062192027878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A103221 n

end

end A187035.P916190062192027878

namespace A187035

/-- `A062157(n+1)*A103221(n)` -/
def P916190062192027878.Spec : Prop :=
  ∀ n, P916190062192027878.a n = A187035 n

end A187035

/-! ## A187035.P16293010455265394923

`(A004442(n)-n)*A103221(n)`
-/

namespace A187035.P16293010455265394923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A103221 n

end

end A187035.P16293010455265394923

namespace A187035

/-- `(A004442(n)-n)*A103221(n)` -/
def P16293010455265394923.Spec : Prop :=
  ∀ n, P16293010455265394923.a n = A187035 n

end A187035

/-!
# A187036: An eigensequence of A187034.

The programs for A187036, the canonical program `A187036.P6676794968930008292` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187036 has offset 0).

The definition of A187036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187036.P11238656590539749334

`Δ[A059893(n+1)]%2`
-/

namespace A187036.P11238656590539749334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A187036.P11238656590539749334

namespace A187036

/-- `Δ[A059893(n+1)]%2` -/
def P11238656590539749334.Spec : Prop :=
  ∀ n, P11238656590539749334.a n = A187036 n

end A187036

/-! ## A187036.P3500309358565785808

`Δ[A080541(n+1)]%2`
-/

namespace A187036.P3500309358565785808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A187036.P3500309358565785808

namespace A187036

/-- `Δ[A080541(n+1)]%2` -/
def P3500309358565785808.Spec : Prop :=
  ∀ n, P3500309358565785808.a n = A187036 n

end A187036

/-! ## A187036.P17906443289541133984

`Δ[A139708(n+1)]%2`
-/

namespace A187036.P17906443289541133984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A187036.P17906443289541133984

namespace A187036

/-- `Δ[A139708(n+1)]%2` -/
def P17906443289541133984.Spec : Prop :=
  ∀ n, P17906443289541133984.a n = A187036 n

end A187036

/-! ## A187036.P4925391761223589963

`Δ[A139709(n+1)]%2`
-/

namespace A187036.P4925391761223589963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A187036.P4925391761223589963

namespace A187036

/-- `Δ[A139709(n+1)]%2` -/
def P4925391761223589963.Spec : Prop :=
  ∀ n, P4925391761223589963.a n = A187036 n

end A187036

/-! ## A187036.P1345452432659131033

`round(1/A336878(2*n+1))`
-/

namespace A187036.P1345452432659131033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A336878 (2 * n + 1) : ℚ))

end

end A187036.P1345452432659131033

namespace A187036

/-- `round(1/A336878(2*n+1))` -/
def P1345452432659131033.Spec : Prop :=
  ∀ n, P1345452432659131033.a n = A187036 n

end A187036

/-! ## A187036.P16495514602084855465

`Δ[A030109(2*n+3)]%2`
-/

namespace A187036.P16495514602084855465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A187036.P16495514602084855465

namespace A187036

/-- `Δ[A030109(2*n+3)]%2` -/
def P16495514602084855465.Spec : Prop :=
  ∀ n, P16495514602084855465.a n = A187036 n

end A187036

/-! ## A187036.P10583156957647125693

`Δ[Δ[abs(2-A294456(n+1))]]`
-/

namespace A187036.P10583156957647125693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A294456 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187036.P10583156957647125693

namespace A187036

/-- `Δ[Δ[abs(2-A294456(n+1))]]` -/
def P10583156957647125693.Spec : Prop :=
  ∀ n, P10583156957647125693.a n = A187036 n

end A187036

/-! ## A187036.P13805687605918678952

`Δ[A057889(2*n+3)/2]%2`
-/

namespace A187036.P13805687605918678952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057889 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) 2

end

end A187036.P13805687605918678952

namespace A187036

/-- `Δ[A057889(2*n+3)/2]%2` -/
def P13805687605918678952.Spec : Prop :=
  ∀ n, P13805687605918678952.a n = A187036 n

end A187036

/-! ## A187036.P7874923304014503504

`Δ[A096269(2*n+3)]^(n+1)`
-/

namespace A187036.P7874923304014503504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096269 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A187036.P7874923304014503504

namespace A187036

/-- `Δ[A096269(2*n+3)]^(n+1)` -/
def P7874923304014503504.Spec : Prop :=
  ∀ n, P7874923304014503504.a n = A187036 n

end A187036

/-! ## A187036.P8678373272200059247

`((2-A245180(n+2))%2)^(n+1)`
-/

namespace A187036.P8678373272200059247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A245180 (n + 2)) 2 ^ (n + 1)

end

end A187036.P8678373272200059247

namespace A187036

/-- `((2-A245180(n+2))%2)^(n+1)` -/
def P8678373272200059247.Spec : Prop :=
  ∀ n, P8678373272200059247.a n = A187036 n

end A187036

/-! ## A187036.P15683344276433505115

`Δ[(A333776(n+1)-1)%2]^(n-1)`
-/

namespace A187036.P15683344276433505115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333776 (n + 1) - 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A187036.P15683344276433505115

namespace A187036

/-- `Δ[(A333776(n+1)-1)%2]^(n-1)` -/
def P15683344276433505115.Spec : Prop :=
  ∀ n, P15683344276433505115.a n = (A187036 n : ℚ)

end A187036

/-! ## A187036.P3651561867292881843

`A133573(A086099(n+1))`
-/

namespace A187036.P3651561867292881843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 (A086099 (n + 1)).toNat

end

end A187036.P3651561867292881843

namespace A187036

/-- `A133573(A086099(n+1))` -/
def P3651561867292881843.Spec : Prop :=
  ∀ n, P3651561867292881843.a n = A187036 n

end A187036

/-! ## A187036.P16030189359808315406

`Δ[A065033(A163807(2*(n+1)))]%2`
-/

namespace A187036.P16030189359808315406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A163807 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A187036.P16030189359808315406

namespace A187036

/-- `Δ[A065033(A163807(2*(n+1)))]%2` -/
def P16030189359808315406.Spec : Prop :=
  ∀ n, P16030189359808315406.a n = A187036 n

end A187036

/-! ## A187036.P1798917107917427428

`(A059893(n+2)-A059893(n+1))%2`
-/

namespace A187036.P1798917107917427428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059893 (n + 2) - A059893 (n + 1)) 2

end

end A187036.P1798917107917427428

namespace A187036

/-- `(A059893(n+2)-A059893(n+1))%2` -/
def P1798917107917427428.Spec : Prop :=
  ∀ n, P1798917107917427428.a n = A187036 n

end A187036

/-! ## A187036.P16772384906383823480

`Δ[A096269(n+2)+A096269(n+1)]^(n+1)`
-/

namespace A187036.P16772384906383823480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096269 (n + 2) + A096269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A187036.P16772384906383823480

namespace A187036

/-- `Δ[A096269(n+2)+A096269(n+1)]^(n+1)` -/
def P16772384906383823480.Spec : Prop :=
  ∀ n, P16772384906383823480.a n = A187036 n

end A187036

/-! ## A187036.P6676794968930008292

`(A036987(n+1)-A036987(A042968(n+2)))^(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A187036

/-- `(A036987(n+1)-A036987(A042968(n+2)))^(n+1)` -/
def P6676794968930008292.Spec : Prop :=
  ∀ n, P6676794968930008292.a n = A187036 n

theorem P6676794968930008292.correct : P6676794968930008292.Spec := by
  intro n
  simp only [A187036]

end A187036

/-! ## A187036.P2243684888603465270

`A304438(A129202(n+1))`
-/

namespace A187036.P2243684888603465270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A129202 (n + 1)).toNat

end

end A187036.P2243684888603465270

namespace A187036

/-- `A304438(A129202(n+1))` -/
def P2243684888603465270.Spec : Prop :=
  ∀ n, P2243684888603465270.a n = A187036 n

end A187036

/-! ## A187036.P13153287926640782781

`A115452(∑[n+1])/2`
-/

namespace A187036.P13153287926640782781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115452 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A187036.P13153287926640782781

namespace A187036

/-- `A115452(∑[n+1])/2` -/
def P13153287926640782781.Spec : Prop :=
  ∀ n, P13153287926640782781.a n = (A187036 n : ℚ)

end A187036

/-! ## A187036.P10787202255775710042

`A111967(A089781(n+2))`
-/

namespace A187036.P10787202255775710042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 (A089781 (n + 2)).toNat

end

end A187036.P10787202255775710042

namespace A187036

/-- `A111967(A089781(n+2))` -/
def P10787202255775710042.Spec : Prop :=
  ∀ n, P10787202255775710042.a n = A187036 n

end A187036

/-!
# A187037: Eigentriangle of A187034, read by rows.

The programs for A187037, there is no canonical definition to state claims against.
-/

/-! ## A187037.P957217725168181264

`A097807(n)*A111967(comp[∑[n]])`
-/

namespace A187037.P957217725168181264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A111967 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187037.P957217725168181264

/-! ## A187037.P3425611900114065211

`A087003(A155092(n+1))^A032559(n+1)`
-/

namespace A187037.P3425611900114065211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087003 (A155092 (n + 1)).toNat : ℚ) ^ (A032559 (n + 1) : ℤ)

end

end A187037.P3425611900114065211

/-!
# A187038: Row sums of number triangle A187037.

The programs for A187038, the canonical program `A187038.P18235214902734965343` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187038 has offset 0).

The definition of A187038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187038.P18235214902734965343

`abs(Δ[A274575(n)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A187038

/-- `abs(Δ[A274575(n)])` -/
def P18235214902734965343.Spec : Prop :=
  ∀ n, P18235214902734965343.a n = A187038 n

theorem P18235214902734965343.correct : P18235214902734965343.Spec := by
  intro n
  simp only [A187038]

end A187038

/-! ## A187038.P9568277896366917615

`abs(A269735(n+2))`
-/

namespace A187038.P9568277896366917615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269735 (n + 2)|

end

end A187038.P9568277896366917615

namespace A187038

/-- `abs(A269735(n+2))` -/
def P9568277896366917615.Spec : Prop :=
  ∀ n, P9568277896366917615.a n = A187038 n

end A187038

/-! ## A187038.P12777158818033448188

`abs(Δ[Δ[A268289(n)]])`
-/

namespace A187038.P12777158818033448188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P12777158818033448188

namespace A187038

/-- `abs(Δ[Δ[A268289(n)]])` -/
def P12777158818033448188.Spec : Prop :=
  ∀ n, P12777158818033448188.a n = A187038 n

end A187038

/-! ## A187038.P5811874070096806074

`abs(Δ[Δ[A296062(n)]])`
-/

namespace A187038.P5811874070096806074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P5811874070096806074

namespace A187038

/-- `abs(Δ[Δ[A296062(n)]])` -/
def P5811874070096806074.Spec : Prop :=
  ∀ n, P5811874070096806074.a n = A187038 n

end A187038

/-! ## A187038.P16524292143955169135

`abs(Δ[Δ[A301336(n)]])`
-/

namespace A187038.P16524292143955169135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P16524292143955169135

namespace A187038

/-- `abs(Δ[Δ[A301336(n)]])` -/
def P16524292143955169135.Spec : Prop :=
  ∀ n, P16524292143955169135.a n = A187038 n

end A187038

/-! ## A187038.P3268696766132465515

`abs(Δ[A037861(n+1)])`
-/

namespace A187038.P3268696766132465515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P3268696766132465515

namespace A187038

/-- `abs(Δ[A037861(n+1)])` -/
def P3268696766132465515.Spec : Prop :=
  ∀ n, P3268696766132465515.a n = A187038 n

end A187038

/-! ## A187038.P14675117742791835505

`abs(Δ[A145037(n+1)])`
-/

namespace A187038.P14675117742791835505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P14675117742791835505

namespace A187038

/-- `abs(Δ[A145037(n+1)])` -/
def P14675117742791835505.Spec : Prop :=
  ∀ n, P14675117742791835505.a n = A187038 n

end A187038

/-! ## A187038.P12059508234005742912

`abs(A274575(n+1)-A274575(n))`
-/

namespace A187038.P12059508234005742912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274575 (n + 1) - A274575 n|

end

end A187038.P12059508234005742912

namespace A187038

/-- `abs(A274575(n+1)-A274575(n))` -/
def P12059508234005742912.Spec : Prop :=
  ∀ n, P12059508234005742912.a n = A187038 n

theorem P12059508234005742912.correct : P12059508234005742912.Spec := by
  intro n
  simp only [A187038, Nat.add_sub_cancel, A187038.P12059508234005742912.a, A187038.P18235214902734965343.f1, A187038.P18235214902734965343.a, SequenceMachineLib.memo_apply]

end A187038

/-! ## A187038.P13075703857175802214

`abs(A037861(n+1)-A037861(n+2))`
-/

namespace A187038.P13075703857175802214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 (n + 1) - A037861 (n + 2)|

end

end A187038.P13075703857175802214

namespace A187038

/-- `abs(A037861(n+1)-A037861(n+2))` -/
def P13075703857175802214.Spec : Prop :=
  ∀ n, P13075703857175802214.a n = A187038 n

end A187038

/-! ## A187038.P2020230179195012912

`abs(Δ[A000120(n+1)-A080791(n+1)])`
-/

namespace A187038.P2020230179195012912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A080791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P2020230179195012912

namespace A187038

/-- `abs(Δ[A000120(n+1)-A080791(n+1)])` -/
def P2020230179195012912.Spec : Prop :=
  ∀ n, P2020230179195012912.a n = A187038 n

end A187038

/-! ## A187038.P6693034585317378649

`abs(A114115(∑[n+1]))`
-/

namespace A187038.P6693034585317378649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114115 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A187038.P6693034585317378649

namespace A187038

/-- `abs(A114115(∑[n+1]))` -/
def P6693034585317378649.Spec : Prop :=
  ∀ n, P6693034585317378649.a n = A187038 n

end A187038

/-!
# A187039: Numbers that have equal counts of even and odd exponents of primes in their factorization.

The programs for A187039, the canonical program `A187039.P14886503455944151269` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187039 has offset 1).

The definition of A187039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1068 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187039.P2787068776936078614

`eq[0, A316523(n+1)]+1`
-/

namespace A187039.P2787068776936078614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187039.P2787068776936078614

namespace A187039

/-- `eq[0, A316523(n+1)]+1` -/
def P2787068776936078614.Spec : Prop :=
  ∀ n, (P2787068776936078614.a n : ℤ) = A187039 (n + 1)

end A187039

/-! ## A187039.P14886503455944151269

`eq[A055076(n+1), A056624(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A187039

/-- `eq[A055076(n+1), A056624(n+1)]+1` -/
def P14886503455944151269.Spec : Prop :=
  ∀ n, (P14886503455944151269.a n : ℤ) = A187039 (n + 1)

theorem P14886503455944151269.correct : P14886503455944151269.Spec := by
  intro n
  simp only [A187039, Nat.add_sub_cancel]

end A187039

/-! ## A187039.P8784309469453502874

`eq[A162641(n+1), A162642(n+1)]+1`
-/

namespace A187039.P8784309469453502874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A187039.P8784309469453502874

namespace A187039

/-- `eq[A162641(n+1), A162642(n+1)]+1` -/
def P8784309469453502874.Spec : Prop :=
  ∀ n, (P8784309469453502874.a n : ℤ) = A187039 (n + 1)

end A187039

/-! ## A187039.P1739557811282002585

`∪[A000156(n), A360554(n+1)]`
-/

namespace A187039.P1739557811282002585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187039.P1739557811282002585

namespace A187039

/-- `∪[A000156(n), A360554(n+1)]` -/
def P1739557811282002585.Spec : Prop :=
  ∀ n, (P1739557811282002585.a n : ℤ) = A187039 (n + 1)

end A187039

/-! ## A187039.P658322218755296643

`∪[A006360(n), A360554(n+1)]`
-/

namespace A187039.P658322218755296643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006360 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187039.P658322218755296643

namespace A187039

/-- `∪[A006360(n), A360554(n+1)]` -/
def P658322218755296643.Spec : Prop :=
  ∀ n, (P658322218755296643.a n : ℤ) = A187039 (n + 1)

end A187039

/-! ## A187039.P15294509160575668949

`∪[A007247(n), A360554(n+1)]`
-/

namespace A187039.P15294509160575668949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187039.P15294509160575668949

namespace A187039

/-- `∪[A007247(n), A360554(n+1)]` -/
def P15294509160575668949.Spec : Prop :=
  ∀ n, (P15294509160575668949.a n : ℤ) = A187039 (n + 1)

end A187039

/-! ## A187039.P14912113130792877345

`∪[A008361(n), A360554(n+1)]`
-/

namespace A187039.P14912113130792877345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187039.P14912113130792877345

namespace A187039

/-- `∪[A008361(n), A360554(n+1)]` -/
def P14912113130792877345.Spec : Prop :=
  ∀ n, (P14912113130792877345.a n : ℤ) = A187039 (n + 1)

end A187039

/-! ## A187039.P18278138588194812827

`∪[A008391(n), A360554(n+1)]`
-/

namespace A187039.P18278138588194812827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187039.P18278138588194812827

namespace A187039

/-- `∪[A008391(n), A360554(n+1)]` -/
def P18278138588194812827.Spec : Prop :=
  ∀ n, (P18278138588194812827.a n : ℤ) = A187039 (n + 1)

end A187039

/-! ## A187039.P11729426103383522468

`∪[A008399(n), A360554(n+1)]`
-/

namespace A187039.P11729426103383522468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187039.P11729426103383522468

namespace A187039

/-- `∪[A008399(n), A360554(n+1)]` -/
def P11729426103383522468.Spec : Prop :=
  ∀ n, (P11729426103383522468.a n : ℤ) = A187039 (n + 1)

end A187039

/-! ## A187039.P7195282027869201602

`∪[A008414(n), A360554(n+1)]`
-/

namespace A187039.P7195282027869201602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187039.P7195282027869201602

namespace A187039

/-- `∪[A008414(n), A360554(n+1)]` -/
def P7195282027869201602.Spec : Prop :=
  ∀ n, (P7195282027869201602.a n : ℤ) = A187039 (n + 1)

end A187039

/-!
# A187040: Numbers for which Midy's theorem holds.

The programs for A187040, there is no canonical definition to state claims against.
-/

/-! ## A187040.P16653979035972377445

`eq[2, A077196(n+1)]+1`
-/

namespace A187040.P16653979035972377445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187040.P16653979035972377445

/-! ## A187040.P15862930976499988888

`eq[2, A077196(n^ceil(atan(n)))]`
-/

namespace A187040.P15862930976499988888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187040.P15862930976499988888

/-! ## A187040.P10903210817865110974

`eq[2, A077196(A004277(n))]`
-/

namespace A187040.P10903210817865110974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187040.P10903210817865110974

/-! ## A187040.P17268678859187233832

`eq[2, A077196(A008574(n))]`
-/

namespace A187040.P17268678859187233832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187040.P17268678859187233832

/-! ## A187040.P3389512343031897232

`eq[2, A077196(A008706(n))]`
-/

namespace A187040.P3389512343031897232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187040.P3389512343031897232

/-! ## A187040.P13678133163971962054

`eq[2, A077196(A022144(n))]`
-/

namespace A187040.P13678133163971962054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187040.P13678133163971962054

/-! ## A187040.P3073368959558044241

`eq[2, A077196(A028310(n))]`
-/

namespace A187040.P3073368959558044241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187040.P3073368959558044241

/-! ## A187040.P2262429781345426508

`eq[2, A077196(A184418(n))]`
-/

namespace A187040.P2262429781345426508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A184418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187040.P2262429781345426508

/-! ## A187040.P13164063541445752268

`A004482(eq[2, A077196(n+1)])`
-/

namespace A187040.P13164063541445752268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187040.P13164063541445752268

/-! ## A187040.P1654703915161536677

`eq[2, A077196(A060000(n+1))]`
-/

namespace A187040.P1654703915161536677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187040.P1654703915161536677

/-!
# A187041: Numbers for which Midy's theorem does not hold.

The programs for A187041, there is no canonical definition to state claims against.
-/

/-! ## A187041.P14196745022226825417

`comp[A187040(n+1)-1]+1`
-/

namespace A187041.P14196745022226825417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187041.P14196745022226825417

/-! ## A187041.P2147848815282474513

`comp[eq[2, A077196(n+1)]]+1`
-/

namespace A187041.P2147848815282474513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A187041.P2147848815282474513

/-! ## A187041.P9616691373342726453

`eq[char[A187040(n+1)], A151933(n)]`
-/

namespace A187041.P9616691373342726453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187041.P9616691373342726453

/-! ## A187041.P17750236957518084597

`record[A008684(A014866(n+1))]`
-/

namespace A187041.P17750236957518084597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A014866 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187041.P17750236957518084597

/-! ## A187041.P17514735695489001375

`record[gcd(A036234(n+1), A050520(n+1))]`
-/

namespace A187041.P17514735695489001375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036234 (n + 1)) (A050520 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187041.P17514735695489001375

/-!
# A187042: Numbers the expansion of which over distinct terms of A050376 contains the same number of primes and perfect squares.

The programs for A187042, there is no canonical definition to state claims against.
-/

/-! ## A187042.P5694081233246238253

`eq[A008683(n+1), A068346(A046644(n+1)+1)]+1`
-/

namespace A187042.P5694081233246238253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A046644 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A187042.P5694081233246238253

/-! ## A187042.P2038467334581074557

`∩[A065985(n+1), A359470(n+1)]`
-/

namespace A187042.P2038467334581074557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187042.P2038467334581074557

/-! ## A187042.P2715960488726486862

`∩[A065985(n+1), A350137(n+1)]`
-/

namespace A187042.P2715960488726486862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187042.P2715960488726486862

/-! ## A187042.P11061434875535604496

`∩[A350137(n+1), A378494(n+1)]`
-/

namespace A187042.P11061434875535604496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187042.P11061434875535604496

/-! ## A187042.P17174793550547671222

`filter[A347453(n+1), A359464(#)]`
-/

namespace A187042.P17174793550547671222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A187042.P17174793550547671222

/-!
# A187043: Number of factors in expansion of infinitary perfect numbers (A007357) over distinct terms of A050376.

The programs for A187043, there is no canonical definition to state claims against.
-/

/-! ## A187043.P2152664624258179834

`A091092(A000043(n+10))-4`
-/

namespace A187043.P2152664624258179834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091092 (A000043 (n + 10)).toNat - 4

end

end A187043.P2152664624258179834

/-! ## A187043.P11850847510164456460

`A008619(n+1)+A001221(A339512(2*n+1))`
-/

namespace A187043.P11850847510164456460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A001221 (A339512 (2 * n + 1)).toNat

end

end A187043.P11850847510164456460

/-!
# A187044: Row sums of number triangle A070895.

The programs for A187044, the canonical program `A187044.P16714071663709978981` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187044 has offset 0).

The definition of A187044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187044.P16714071663709978981

`A193361(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A187044

/-- `A193361(n+2)` -/
def P16714071663709978981.Spec : Prop :=
  ∀ n, P16714071663709978981.a n = A187044 n

theorem P16714071663709978981.correct : P16714071663709978981.Spec := by
  intro n
  simp only [A187044]

end A187044

/-! ## A187044.P10257101133531298905

`(n-1)*a(n-2)+a(n-1)+1` with `a(0)=1, a(1)=2`
-/

namespace A187044.P10257101133531298905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n : ℤ) - 1) * a (n - 2) + (a (n - 1) + 1)

end

end A187044.P10257101133531298905

namespace A187044

/-- `(n-1)*a(n-2)+a(n-1)+1` -/
def P10257101133531298905.Spec : Prop :=
  ∀ n, P10257101133531298905.a n = A187044 n

end A187044

/-! ## A187044.P7106198439098229120

`1-((1-n)*a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A187044.P7106198439098229120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - ((1 - (n : ℤ)) * a (n - 2) - a (n - 1))

end

end A187044.P7106198439098229120

namespace A187044

/-- `1-((1-n)*a(n-2)-a(n-1))` -/
def P7106198439098229120.Spec : Prop :=
  ∀ n, P7106198439098229120.a n = A187044 n

end A187044

/-! ## A187044.P76979550937906770

`A186738(n)+A122031(n)`
-/

namespace A187044.P76979550937906770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186738 n + A122031 n

end

end A187044.P76979550937906770

namespace A187044

/-- `A186738(n)+A122031(n)` -/
def P76979550937906770.Spec : Prop :=
  ∀ n, P76979550937906770.a n = A187044 n

end A187044

/-! ## A187044.P15119942909447070171

`A186739(n+1)+A000085(n)`
-/

namespace A187044.P15119942909447070171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (n + 1) + A000085 n

end

end A187044.P15119942909447070171

namespace A187044

/-- `A186739(n+1)+A000085(n)` -/
def P15119942909447070171.Spec : Prop :=
  ∀ n, P15119942909447070171.a n = A187044 n

end A187044

/-! ## A187044.P7506744059175679179

`(A263529(n+1)-1)/(n+1)`
-/

namespace A187044.P7506744059175679179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263529 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A187044.P7506744059175679179

namespace A187044

/-- `(A263529(n+1)-1)/(n+1)` -/
def P7506744059175679179.Spec : Prop :=
  ∀ n, P7506744059175679179.a n = (A187044 n : ℚ)

end A187044

/-!
# A187046: T(n,k)=Number of n-step one or two space at a time bishop's tours on a kXk board summed over all starting positions.

The programs for A187046, there is no canonical definition to state claims against.
-/

/-! ## A187046.P17465091573498123288

`A188777(n+1)-A185215(A035042(n))`
-/

namespace A187046.P17465091573498123288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (n + 1) - A185215 (A035042 n).toNat

end

end A187046.P17465091573498123288

/-! ## A187046.P9641655644826113636

`A188777(n+1)-A299302(A299321(n+1))`
-/

namespace A187046.P9641655644826113636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (n + 1) - A299302 (A299321 (n + 1)).toNat

end

end A187046.P9641655644826113636

/-!
# A187047: Number of 3-step one or two space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187047, there is no canonical definition to state claims against.
-/

/-! ## A187047.P4209247997785916885

`A187046(∑[n+2]+4)`
-/

namespace A187047.P4209247997785916885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187047.P4209247997785916885

/-! ## A187047.P16680441585380714128

`lcm(2, A187046(A167614(n+1)))`
-/

namespace A187047.P16680441585380714128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187046 (A167614 (n + 1)).toNat)

end

end A187047.P16680441585380714128

/-! ## A187047.P9018659215823476330

`lcm(4, A187046(A046691(n)+7))`
-/

namespace A187047.P9018659215823476330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A187046 (A046691 n + 7).toNat)

end

end A187047.P9018659215823476330

/-! ## A187047.P1874777409377222549

`A187046(A167614(n+1))+A011739(n)`
-/

namespace A187047.P1874777409377222549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A167614 (n + 1)).toNat + A011739 n

end

end A187047.P1874777409377222549

/-! ## A187047.P14723056588086783975

`A187046(A167614(n+1))+A025438(n)`
-/

namespace A187047.P14723056588086783975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A167614 (n + 1)).toNat + A025438 n

end

end A187047.P14723056588086783975

/-!
# A187048: Number of 4-step one or two space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187048, there is no canonical definition to state claims against.
-/

/-! ## A187048.P11740284672105850961

`A187046(A141214(n)+7)`
-/

namespace A187048.P11740284672105850961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A141214 n + 7).toNat

end

end A187048.P11740284672105850961

/-! ## A187048.P5904461427217392760

`A187046(A052905(n)+9)`
-/

namespace A187048.P5904461427217392760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A052905 n + 9).toNat

end

end A187048.P5904461427217392760

/-! ## A187048.P5255615114786362826

`A187046(A055999(n)+10)`
-/

namespace A187048.P5255615114786362826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A055999 n + 10).toNat

end

end A187048.P5255615114786362826

/-! ## A187048.P15178245822004848018

`A187046(eq[5, A066657(n)])`
-/

namespace A187048.P15178245822004848018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187048.P15178245822004848018

/-! ## A187048.P15249001148571180646

`A187046(A167614(n+2)+1)`
-/

namespace A187048.P15249001148571180646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A167614 (n + 2) + 1).toNat

end

end A187048.P15249001148571180646

/-!
# A187049: Number of 5-step one or two space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187049, there is no canonical definition to state claims against.
-/

/-! ## A187049.P191163086299479343

`A187046(A167499(n+3))`
-/

namespace A187049.P191163086299479343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A167499 (n + 3)).toNat

end

end A187049.P191163086299479343

/-! ## A187049.P12930707078310981431

`A187046(A155212(n)+13)`
-/

namespace A187049.P12930707078310981431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A155212 n + 13).toNat

end

end A187049.P12930707078310981431

/-! ## A187049.P13586987941012776426

`A187046(A056000(n)+15)`
-/

namespace A187049.P13586987941012776426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A056000 n + 15).toNat

end

end A187049.P13586987941012776426

/-! ## A187049.P8409256950121657780

`A187046(eq[7, A066657(n)])`
-/

namespace A187049.P8409256950121657780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187049.P8409256950121657780

/-! ## A187049.P10532328468920904621

`A187046(A167614(n+3)+2)`
-/

namespace A187049.P10532328468920904621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A167614 (n + 3) + 2).toNat

end

end A187049.P10532328468920904621

/-!
# A187050: Number of 6-step one or two space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187050, there is no canonical definition to state claims against.
-/

/-! ## A187050.P15818056339220041916

`A187046(A166136(n+4))`
-/

namespace A187050.P15818056339220041916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A166136 (n + 4)).toNat

end

end A187050.P15818056339220041916

/-! ## A187050.P17922657853179239901

`A187046(A056115(n)+21)`
-/

namespace A187050.P17922657853179239901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A056115 n + 21).toNat

end

end A187050.P17922657853179239901

/-! ## A187050.P7392342520084284362

`A187046(Δ[A264443(n)]+10)`
-/

namespace A187050.P7392342520084284362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (f1 (n + 1) - f1 n + 10).toNat

end

end A187050.P7392342520084284362

/-! ## A187050.P7620040538686903018

`A187046(A167499(n+4)+1)`
-/

namespace A187050.P7620040538686903018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A167499 (n + 4) + 1).toNat

end

end A187050.P7620040538686903018

/-! ## A187050.P1572312960613520836

`A187046(A000096(n+4)+7)`
-/

namespace A187050.P1572312960613520836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A000096 (n + 4) + 7).toNat

end

end A187050.P1572312960613520836

/-!
# A187051: Number of 7-step one or two space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187051, there is no canonical definition to state claims against.
-/

/-! ## A187051.P9006754223312337190

`A187046(eq[11, A066657(n)])`
-/

namespace A187051.P9006754223312337190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187051.P9006754223312337190

/-! ## A187051.P5279729208236993154

`A187046(A166136(n+5)+1)`
-/

namespace A187051.P5279729208236993154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A166136 (n + 5) + 1).toNat

end

end A187051.P5279729208236993154

/-! ## A187051.P16446856037048513774

`A187046(A167614(n+5)+4)`
-/

namespace A187051.P16446856037048513774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A167614 (n + 5) + 4).toNat

end

end A187051.P16446856037048513774

/-! ## A187051.P15485301680114711026

`A187046(eq[6, A002262(n)]+1)`
-/

namespace A187051.P15485301680114711026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A187051.P15485301680114711026

/-! ## A187051.P16889476788300309253

`A187046(eq[8, A131818(n+1)])`
-/

namespace A187051.P16889476788300309253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187051.P16889476788300309253

/-!
# A187052: Number of 8-step one or two space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187052, there is no canonical definition to state claims against.
-/

/-! ## A187052.P6289478193261028892

`A187046(eq[13, A066657(n)])`
-/

namespace A187052.P6289478193261028892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187052.P6289478193261028892

/-! ## A187052.P4351930996817971885

`A187046(A167614(n+6)+5)`
-/

namespace A187052.P4351930996817971885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A167614 (n + 6) + 5).toNat

end

end A187052.P4351930996817971885

/-! ## A187052.P6364392726859801956

`A187046(eq[9, A131818(n+1)])`
-/

namespace A187052.P6364392726859801956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187052.P6364392726859801956

/-! ## A187052.P9766446729949679803

`A187046(A001478(2*n+1)+eq[8, A193592(n)])`
-/

namespace A187052.P9766446729949679803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (A001478 (2 * n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A187052.P9766446729949679803

/-!
# A187053: Expansion of (psi(x^2) / psi(x))^3 in powers of x where psi() is a Ramanujan theta function.

The programs for A187053, there is no canonical definition to state claims against.
-/

/-! ## A187053.P15298066086252957456

`(-1)^n*A001937(n)`
-/

namespace A187053.P15298066086252957456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001937 n

end

end A187053.P15298066086252957456

/-! ## A187053.P12619140755485991616

`A001937(n)*A033999(n)`
-/

namespace A187053.P12619140755485991616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001937 n * A033999 n

end

end A187053.P12619140755485991616

/-! ## A187053.P9392816344178213070

`A001937(n)/(1-2*A000035(n))`
-/

namespace A187053.P9392816344178213070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (1 - 2 * A000035 n : ℚ)

end

end A187053.P9392816344178213070

/-! ## A187053.P17305004529414479878

`A001937(n)/A029839(n)*A082304(n)`
-/

namespace A187053.P17305004529414479878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A029839 n : ℚ) * (A082304 n : ℚ)

end

end A187053.P17305004529414479878

/-! ## A187053.P1545903549497103829

`A001937(n)/A112128(n)*A208933(n)`
-/

namespace A187053.P1545903549497103829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A112128 n : ℚ) * (A208933 n : ℚ)

end

end A187053.P1545903549497103829

/-! ## A187053.P12809397133700871473

`A001937(n)/(A000035(n+1)-A000035(n))`
-/

namespace A187053.P12809397133700871473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A000035 (n + 1) - A000035 n : ℚ)

end

end A187053.P12809397133700871473

/-! ## A187053.P2287741918860516108

`A001937(n)/A001938(n)*A093160(n)`
-/

namespace A187053.P2287741918860516108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A001938 n : ℚ) * (A093160 n : ℚ)

end

end A187053.P2287741918860516108

/-! ## A187053.P1572469965195974872

`A001937(n)/A014969(n)*A139820(n)`
-/

namespace A187053.P1572469965195974872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A014969 n : ℚ) * (A139820 n : ℚ)

end

end A187053.P1572469965195974872

/-! ## A187053.P9533338931258924803

`A001937(n)/A001939(n)*A195861(n)`
-/

namespace A187053.P9533338931258924803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A001939 n : ℚ) * (A195861 n : ℚ)

end

end A187053.P9533338931258924803

/-! ## A187053.P16158534970061025176

`A001935(n)*A001937(n)/A083365(n)`
-/

namespace A187053.P16158534970061025176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n * A001937 n : ℚ) / (A083365 n : ℚ)

end

end A187053.P16158534970061025176

/-! ## A187053.P1558965641379278763

`A001936(n)*A001937(n)/A079006(n)`
-/

namespace A187053.P1558965641379278763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n * A001937 n : ℚ) / (A079006 n : ℚ)

end

end A187053.P1558965641379278763

/-! ## A187053.P12139448045764719625

`A001937(n)/A001940(n)*A320049(n)`
-/

namespace A187053.P12139448045764719625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A001940 n : ℚ) * (A320049 n : ℚ)

end

end A187053.P12139448045764719625

/-!
# A187054: Numbers that are not the sum of three powerful numbers (A001694).

The programs for A187054, there is no canonical definition to state claims against.
-/

/-! ## A187054.P1003766154997211461

`A135367(comp[13*n])`
-/

namespace A187054.P1003766154997211461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135367 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187054.P1003766154997211461

/-! ## A187054.P15012911197290439127

`A135367(n+1)+char[12]`
-/

namespace A187054.P15012911197290439127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135367 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187054.P15012911197290439127

/-! ## A187054.P15633212647990663822

`A135693(n+1)+char[12]`
-/

namespace A187054.P15633212647990663822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135693 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187054.P15633212647990663822

/-! ## A187054.P11159032080307229093

`A135693(comp[C((n+1)², 3)²])`
-/

namespace A187054.P11159032080307229093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 3 ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135693 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187054.P11159032080307229093

/-! ## A187054.P17089049698988910871

`A135693(A005496(n))`
-/

namespace A187054.P17089049698988910871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135693 (A005496 n).toNat

end

end A187054.P17089049698988910871

/-!
# A187056: G.f.: A(x,y,z) = Sum_{n>=0} ((2n)!/n!^2)*[Sum_{k=0..2n} T(n,k)*z^k]*x^(2n)*y^n/(1-x-xy)^(4n+1) where A(x,y,x+xy) = Sum_{n>=0, k=0..n} C(n,k)^4*x^n*y^k at z = x+xy; this is the triangle of coefficients T(n,k), read by rows.

The programs for A187056, there is no canonical definition to state claims against.
-/

/-! ## A187056.P12139103721302937661

`A248600(n)/A000984(floor(sqrt(n)))`
-/

namespace A187056.P12139103721302937661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248600 n : ℚ) / (A000984 (Nat.sqrt n) : ℚ)

end

end A187056.P12139103721302937661

/-! ## A187056.P13037210912350103449

`A248600(n)/A056616(A000196(n))`
-/

namespace A187056.P13037210912350103449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248600 n : ℚ) / (A056616 (A000196 n).toNat : ℚ)

end

end A187056.P13037210912350103449

/-!
# A187057: Primes p such that the polynomial x^2 + x + p generates only primes for x = 0, ..., 4.

The programs for A187057, there is no canonical definition to state claims against.
-/

/-! ## A187057.P3113155896729961780

`∪[A187058(n+1), A210363(n+1)]`
-/

namespace A187057.P3113155896729961780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187057.P3113155896729961780

/-! ## A187057.P10547099796768659402

`∩[A153419(n+1), A172454(n+1)]`
-/

namespace A187057.P10547099796768659402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187057.P10547099796768659402

/-! ## A187057.P15547343932916858630

`∩[A023241(n+1), A153418(n+1)-2]`
-/

namespace A187057.P15547343932916858630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187057.P15547343932916858630

/-! ## A187057.P14854916103839568171

`∩[A153418(n+1)-2, A172454(n+1)]`
-/

namespace A187057.P14854916103839568171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187057.P14854916103839568171

/-! ## A187057.P16578075986908857795

`A065091(lt[4, A208936(n+1)])`
-/

namespace A187057.P16578075986908857795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A187057.P16578075986908857795

/-!
# A187058: Primes p such that the polynomial x^2 + x + p generates only primes for x = 1..5.

The programs for A187058, there is no canonical definition to state claims against.
-/

/-! ## A187058.P1365747871471402573

`∪[A144051(n+1), A210364(n+1)]`
-/

namespace A187058.P1365747871471402573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187058.P1365747871471402573

/-! ## A187058.P7618289067885727299

`∩[A049481(n+1), A187057(n+1)]`
-/

namespace A187058.P7618289067885727299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187058.P7618289067885727299

/-!
# A187059: The exponent of highest power of 2 dividing the product of the elements of the n-th row of Pascal's triangle (A001142).

The programs for A187059, the canonical program `A187059.P4673971385048971106` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187059 has offset 0).

The definition of A187059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A187059.P6477762972361379116

`A249152(n)-A174605(n)`
-/

namespace A187059.P6477762972361379116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249152 n - A174605 n

end

end A187059.P6477762972361379116

namespace A187059

/-- `A249152(n)-A174605(n)` -/
def P6477762972361379116.Spec : Prop :=
  ∀ n, P6477762972361379116.a n = A187059 n

theorem P6477762972361379116.correct : P6477762972361379116.Spec := by
  intro n
  simp only [A187059, Nat.add_sub_cancel, A187059.P6477762972361379116.a, A187059.P4673971385048971106.a, A000788, A000788.P8338375810879423652.a, A174605, A174605.P3556819156427171389.a, A249152, A249152.P735864470480457739.a, A249154, A249154.P2345966816674260141.a, A000120, A000120.P2816527436160941581.a, A083741, A083741.P6552315304162526779.a, A136013, A136013.P12572160085575880269.a, A005187, A005187.P3874015513960485494.a, A245788, A245788.P10796889760857720878.f2, A245788.P10796889760857720878.f1, A245788.P10796889760857720878.a, A298011, A298011.P12682259250450599023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187059

/-! ## A187059.P4673971385048971106

`2*A000788(n)-A249154(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A187059

/-- `2*A000788(n)-A249154(n)` -/
def P4673971385048971106.Spec : Prop :=
  ∀ n, P4673971385048971106.a n = A187059 n

theorem P4673971385048971106.correct : P4673971385048971106.Spec := by
  intro n
  simp only [A187059]

end A187059

/-! ## A187059.P2096056999476633201

`A143157(n)-A122247(n)`
-/

namespace A187059.P2096056999476633201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 n - A122247 n

end

end A187059.P2096056999476633201

namespace A187059

/-- `A143157(n)-A122247(n)` -/
def P2096056999476633201.Spec : Prop :=
  ∀ n, P2096056999476633201.a n = A187059 n

end A187059

/-! ## A187059.P10033239508402900687

`A249152(n)-∑[A011371(n)]`
-/

namespace A187059.P10033239508402900687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249152 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187059.P10033239508402900687

namespace A187059

/-- `A249152(n)-∑[A011371(n)]` -/
def P10033239508402900687.Spec : Prop :=
  ∀ n, P10033239508402900687.a n = A187059 n

end A187059

/-! ## A187059.P1800728267061772070

`A003071(n+1)-A298011(n)`
-/

namespace A187059.P1800728267061772070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) - A298011 n

end

end A187059.P1800728267061772070

namespace A187059

/-- `A003071(n+1)-A298011(n)` -/
def P1800728267061772070.Spec : Prop :=
  ∀ n, P1800728267061772070.a n = A187059 n

end A187059

/-! ## A187059.P9358387014107321298

`A143157(n)-∑[A011371(n)+n]`
-/

namespace A187059.P9358387014107321298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187059.P9358387014107321298

namespace A187059

/-- `A143157(n)-∑[A011371(n)+n]` -/
def P9358387014107321298.Spec : Prop :=
  ∀ n, P9358387014107321298.a n = A187059 n

end A187059

/-! ## A187059.P14856260173149985160

`∑[A000120(n)-n*A088705(n)]`
-/

namespace A187059.P14856260173149985160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - (n : ℤ) * A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187059.P14856260173149985160

namespace A187059

/-- `∑[A000120(n)-n*A088705(n)]` -/
def P14856260173149985160.Spec : Prop :=
  ∀ n, P14856260173149985160.a n = A187059 n

end A187059

/-! ## A187059.P15680624442007685339

`A143157(n)-∑[A011371(2*n)]`
-/

namespace A187059.P15680624442007685339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187059.P15680624442007685339

namespace A187059

/-- `A143157(n)-∑[A011371(2*n)]` -/
def P15680624442007685339.Spec : Prop :=
  ∀ n, P15680624442007685339.a n = A187059 n

end A187059

/-! ## A187059.P12132666387032137056

`A000788(2*n)-n*(A000120(n)+1)`
-/

namespace A187059.P12132666387032137056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (2 * n) - (n : ℤ) * (A000120 n + 1)

end

end A187059.P12132666387032137056

namespace A187059

/-- `A000788(2*n)-n*(A000120(n)+1)` -/
def P12132666387032137056.Spec : Prop :=
  ∀ n, P12132666387032137056.a n = A187059 n

end A187059

/-! ## A187059.P3001275282605933499

`n*A011371(2*n)-A174605(2*n)`
-/

namespace A187059.P3001275282605933499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011371 (2 * n) - A174605 (2 * n)

end

end A187059.P3001275282605933499

namespace A187059

/-- `n*A011371(2*n)-A174605(2*n)` -/
def P3001275282605933499.Spec : Prop :=
  ∀ n, P3001275282605933499.a n = A187059 n

end A187059

/-! ## A187059.P7281018136157714876

`n*A005187(2*n+1)-A122247(2*n)`
-/

namespace A187059.P7281018136157714876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005187 (2 * n + 1) - A122247 (2 * n)

end

end A187059.P7281018136157714876

namespace A187059

/-- `n*A005187(2*n+1)-A122247(2*n)` -/
def P7281018136157714876.Spec : Prop :=
  ∀ n, P7281018136157714876.a n = A187059 n

end A187059

/-!
# A187060: Primes p such that the polynomial x^2 + x + p generates only primes for x = 1..7.

The programs for A187060, there is no canonical definition to state claims against.
-/

/-! ## A187060.P15579818532655843712

`∪[A190800(n+1), A211236(n+1)]`
-/

namespace A187060.P15579818532655843712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187060.P15579818532655843712

/-!
# A187061: Digits of the decimal expansion the constant whose continued fraction expansion is given by (a suffix of) A026465 (just start from the second term): [0;2,1,1,2,2,2,1,1,2,1,1,...]=0.3867499707....

The programs for A187061, there is no canonical definition to state claims against.
-/

/-! ## A187061.P15923715574142514408

`A363361(n+1)`
-/

namespace A187061.P15923715574142514408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363361 (n + 1 + 1)

end

end A187061.P15923715574142514408

/-!
# A187062: Expansion of 2*x^2 *(4 +7*x +5*x^2 -x^3 -4*x^4 +6*x^6 +4*x^7 -x^8 -2*x^9) / ((1+x)^2 *(1+x+x^2)^2 *(1-x)^4).

The programs for A187062, the canonical program `A187062.P5476453171632956500` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187062 has offset 1).

The definition of A187062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((8x^2+14x^3+10x^4-2x^5-8x^6+12x^8+8x^9-2x^10-4x^11)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))` (program `A187062.P5476453171632956500`, by `A187062.P5476453171632956500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187062.P5476453171632956500

`ogf((8x^2+14x^3+10x^4-2x^5-8x^6+12x^8+8x^9-2x^10-4x^11)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187062

/-- `ogf((8x^2+14x^3+10x^4-2x^5-8x^6+12x^8+8x^9-2x^10-4x^11)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))` -/
def P5476453171632956500.Spec : Prop :=
  ∀ n, P5476453171632956500.a n = A187062 (n + 1)

theorem P5476453171632956500.correct : P5476453171632956500.Spec := by
  intro n
  simp only [A187062, Nat.add_sub_cancel]

end A187062

/-!
# A187063: Numbers of the form (4^k - 1)/3 whose greatest prime divisor is of the form 2^q - 1 or 2^q + 1.

The programs for A187063, there is no canonical definition to state claims against.
-/

/-! ## A187063.P17755043513536541441

`A001157(2^A057128(n+1))`
-/

namespace A187063.P17755043513536541441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A057128 (n + 1) : ℤ))).toNat

end

end A187063.P17755043513536541441

/-! ## A187063.P11602262182191466277

`A002450(or(A183218(n+1), A258857(n)))`
-/

namespace A187063.P11602262182191466277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (Int.lor (A183218 (n + 1)) (A258857 n)).toNat

end

end A187063.P11602262182191466277

/-! ## A187063.P12693728413436029524

`A000975(lt[A069481(n+4), A010888(n)])`
-/

namespace A187063.P12693728413436029524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069481 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A187063.P12693728413436029524

/-!
# A187065: Let i be in {1,2,3} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3} = {-2,0,1}, n=2*r+p_i, and define a(-2)=1. Then, a(n)=a(2*r+p_i) gives the quantity of H_(7,1,0) tiles in a subdivided H_(7,i,r) tile after linear scaling by the factor x^r, where x=sqrt(2*cos(Pi/7)).

The programs for A187065, the canonical program `A187065.P16940486546584358981` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187065 has offset 0).

The definition of A187065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187065.P16940486546584358981

`a(n-2)+2*a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=0, a(5)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187065

/-- `a(n-2)+2*a(n-4)-a(n-6)` -/
def P16940486546584358981.Spec : Prop :=
  ∀ n, P16940486546584358981.a n = A187065 n

theorem P16940486546584358981.correct : P16940486546584358981.Spec := by
  intro n
  simp only [A187065]

end A187065

/-! ## A187065.P597734226016437629

`A265755(xor(1, n))`
-/

namespace A187065.P597734226016437629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (Nat.xor 1 n)

end

end A187065.P597734226016437629

namespace A187065

/-- `A265755(xor(1, n))` -/
def P597734226016437629.Spec : Prop :=
  ∀ n, P597734226016437629.a n = A187065 n

end A187065

/-! ## A187065.P16312555739068657873

`A187066(abs(2-n))`
-/

namespace A187065.P16312555739068657873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 |2 - (n : ℤ)|.toNat

end

end A187065.P16312555739068657873

namespace A187065

/-- `A187066(abs(2-n))` -/
def P16312555739068657873.Spec : Prop :=
  ∀ n, P16312555739068657873.a n = A187065 n

end A187065

/-! ## A187065.P8113426592657578554

`A265755(A004442(n))`
-/

namespace A187065.P8113426592657578554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A004442 n).toNat

end

end A187065.P8113426592657578554

namespace A187065

/-- `A265755(A004442(n))` -/
def P8113426592657578554.Spec : Prop :=
  ∀ n, P8113426592657578554.a n = A187065 n

end A187065

/-! ## A187065.P14711443927292230956

`A265755(A014681(n+1)-1)`
-/

namespace A187065.P14711443927292230956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A014681 (n + 1) - 1).toNat

end

end A187065.P14711443927292230956

namespace A187065

/-- `A265755(A014681(n+1)-1)` -/
def P14711443927292230956.Spec : Prop :=
  ∀ n, P14711443927292230956.a n = A187065 n

end A187065

/-! ## A187065.P179532566974602675

`A265755(A065190(n+2)-2)`
-/

namespace A187065.P179532566974602675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A065190 (n + 2) - 2).toNat

end

end A187065.P179532566974602675

namespace A187065

/-- `A265755(A065190(n+2)-2)` -/
def P179532566974602675.Spec : Prop :=
  ∀ n, P179532566974602675.a n = A187065 n

end A187065

/-! ## A187065.P5984612103036098427

`A265755(2*n-A014681(n))`
-/

namespace A187065.P5984612103036098427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 ((2 * n : ℤ) - A014681 n).toNat

end

end A187065.P5984612103036098427

namespace A187065

/-- `A265755(2*n-A014681(n))` -/
def P5984612103036098427.Spec : Prop :=
  ∀ n, P5984612103036098427.a n = A187065 n

end A187065

/-! ## A187065.P9423196313744691249

`A265755(n-(A014681(n)-n))`
-/

namespace A187065.P9423196313744691249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 ((n : ℤ) - (A014681 n - (n : ℤ))).toNat

end

end A187065.P9423196313744691249

namespace A187065

/-- `A265755(n-(A014681(n)-n))` -/
def P9423196313744691249.Spec : Prop :=
  ∀ n, P9423196313744691249.a n = A187065 n

end A187065

/-! ## A187065.P12792795459583220879

`A187066(n+2)-A187067(n)`
-/

namespace A187065.P12792795459583220879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (n + 2) - A187067 n

end

end A187065.P12792795459583220879

namespace A187065

/-- `A187066(n+2)-A187067(n)` -/
def P12792795459583220879.Spec : Prop :=
  ∀ n, P12792795459583220879.a n = A187065 n

end A187065

/-!
# A187066: Let i be in {1,2,3} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3} = {-2,0,1}, n=2*r+p_i, and define a(-2)=0. Then, a(n)=a(2*r+p_i) gives the quantity of H_(7,2,0) tiles in a subdivided H_(7,i,r) tile after linear scaling by the factor x^r, where x=sqrt(2*cos(Pi/7)).

The programs for A187066, the canonical program `A187066.P17952871139170899381` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187066 has offset 0).

The definition of A187066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187066.P17952871139170899381

`a(n-2)+2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187066

/-- `a(n-2)+2*a(n-4)-a(n-6)` -/
def P17952871139170899381.Spec : Prop :=
  ∀ n, P17952871139170899381.a n = A187066 n

theorem P17952871139170899381.correct : P17952871139170899381.Spec := by
  intro n
  simp only [A187066]

end A187066

/-! ## A187066.P1783035240255925801

`A187065(n+2)`
-/

namespace A187066.P1783035240255925801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (n + 2)

end

end A187066.P1783035240255925801

namespace A187066

/-- `A187065(n+2)` -/
def P1783035240255925801.Spec : Prop :=
  ∀ n, P1783035240255925801.a n = A187066 n

end A187066

/-! ## A187066.P4937487737344577557

`A265755(xor(1, n+2))`
-/

namespace A187066.P4937487737344577557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (Nat.xor 1 (n + 2))

end

end A187066.P4937487737344577557

namespace A187066

/-- `A265755(xor(1, n+2))` -/
def P4937487737344577557.Spec : Prop :=
  ∀ n, P4937487737344577557.a n = A187066 n

end A187066

/-! ## A187066.P15807363998645106495

`A265755(∑[2-a(n-1)])` with `a(0)=3`
-/

namespace A187066.P15807363998645106495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187066.P15807363998645106495

namespace A187066

/-- `A265755(∑[2-a(n-1)])` -/
def P15807363998645106495.Spec : Prop :=
  ∀ n, P15807363998645106495.a n = A187066 n

end A187066

/-! ## A187066.P4172160900887634073

`A265755(A004442(n+2))`
-/

namespace A187066.P4172160900887634073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A004442 (n + 2)).toNat

end

end A187066.P4172160900887634073

namespace A187066

/-- `A265755(A004442(n+2))` -/
def P4172160900887634073.Spec : Prop :=
  ∀ n, P4172160900887634073.a n = A187066 n

end A187066

/-! ## A187066.P3254744398928330653

`A265755(A065190(n+2))`
-/

namespace A187066.P3254744398928330653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A065190 (n + 2)).toNat

end

end A187066.P3254744398928330653

namespace A187066

/-- `A265755(A065190(n+2))` -/
def P3254744398928330653.Spec : Prop :=
  ∀ n, P3254744398928330653.a n = A187066 n

end A187066

/-! ## A187066.P12125917822482811805

`A265755(A014681(n+1)+1)`
-/

namespace A187066.P12125917822482811805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A014681 (n + 1) + 1).toNat

end

end A187066.P12125917822482811805

namespace A187066

/-- `A265755(A014681(n+1)+1)` -/
def P12125917822482811805.Spec : Prop :=
  ∀ n, P12125917822482811805.a n = A187066 n

end A187066

/-! ## A187066.P17762640356794557577

`A187067(n+2)-A187067(n)`
-/

namespace A187066.P17762640356794557577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (n + 2) - A187067 n

end

end A187066.P17762640356794557577

namespace A187066

/-- `A187067(n+2)-A187067(n)` -/
def P17762640356794557577.Spec : Prop :=
  ∀ n, P17762640356794557577.a n = A187066 n

end A187066

/-! ## A187066.P2407276297256040129

`Δ[A187067(n+1)+A187067(n)]`
-/

namespace A187066.P2407276297256040129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (n + 1) + A187067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187066.P2407276297256040129

namespace A187066

/-- `Δ[A187067(n+1)+A187067(n)]` -/
def P2407276297256040129.Spec : Prop :=
  ∀ n, P2407276297256040129.a n = A187066 n

end A187066

/-!
# A187067: Let i be in {1,2,3} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3} = {-2,0,1}, n = 2*r + p_i and define a(-2)=0. Then, a(n) = a(2*r + p_i) gives the quantity of H_(7,3,0) tiles in a subdivided H_(7,i,r) tile after linear scaling by the factor x^r, where x = sqrt(2*cos(Pi/7)).

The programs for A187067, the canonical program `A187067.P10483011489162020215` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187067 has offset 0).

The definition of A187067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187067.P10483011489162020215

`a(n-2)+2*a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187067

/-- `a(n-2)+2*a(n-4)-a(n-6)` -/
def P10483011489162020215.Spec : Prop :=
  ∀ n, P10483011489162020215.a n = A187067 n

theorem P10483011489162020215.correct : P10483011489162020215.Spec := by
  intro n
  simp only [A187067]

end A187067

/-! ## A187067.P3069901431547120852

`A187065(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A187067.P3069901431547120852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A187065 n + a (n - 2)

end

end A187067.P3069901431547120852

namespace A187067

/-- `A187065(n)+a(n-2)` -/
def P3069901431547120852.Spec : Prop :=
  ∀ n, P3069901431547120852.a n = A187067 n

end A187067

/-! ## A187067.P2262098530126990975

`A265755(or(1, n+1))+A265755(n)`
-/

namespace A187067.P2262098530126990975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (Nat.lor 1 (n + 1)) + A265755 n

end

end A187067.P2262098530126990975

namespace A187067

/-- `A265755(or(1, n+1))+A265755(n)` -/
def P2262098530126990975.Spec : Prop :=
  ∀ n, P2262098530126990975.a n = A187067 n

end A187067

/-! ## A187067.P10080121325147236435

`A187065(n+1)+A187065(and(n, -2))`
-/

namespace A187067.P10080121325147236435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (n + 1) + A187065 (Int.land (n : ℤ) (-2)).toNat

end

end A187067.P10080121325147236435

namespace A187067

/-- `A187065(n+1)+A187065(and(n, -2))` -/
def P10080121325147236435.Spec : Prop :=
  ∀ n, P10080121325147236435.a n = A187067 n

end A187067

/-! ## A187067.P10326556729648394494

`A265755(gcd(2, n+1)+n)+A265755(n)`
-/

namespace A187067.P10326556729648394494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (Nat.gcd 2 (n + 1) + n) + A265755 n

end

end A187067.P10326556729648394494

namespace A187067

/-- `A265755(gcd(2, n+1)+n)+A265755(n)` -/
def P10326556729648394494.Spec : Prop :=
  ∀ n, P10326556729648394494.a n = A187067 n

end A187067

/-! ## A187067.P7900499789392766917

`A265755(and(1, n)+1+n)+A265755(n)`
-/

namespace A187067.P7900499789392766917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (Nat.land 1 n + 1 + n) + A265755 n

end

end A187067.P7900499789392766917

namespace A187067

/-- `A265755(and(1, n)+1+n)+A265755(n)` -/
def P7900499789392766917.Spec : Prop :=
  ∀ n, P7900499789392766917.a n = A187067 n

end A187067

/-! ## A187067.P7258702618821157905

`A187066(n+2)-A187065(n)`
-/

namespace A187067.P7258702618821157905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (n + 2) - A187065 n

end

end A187067.P7258702618821157905

namespace A187067

/-- `A187066(n+2)-A187065(n)` -/
def P7258702618821157905.Spec : Prop :=
  ∀ n, P7258702618821157905.a n = A187067 n

end A187067

/-! ## A187067.P2139602918046849290

`A187065(n+4)-A187065(n)`
-/

namespace A187067.P2139602918046849290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (n + 4) - A187065 n

end

end A187067.P2139602918046849290

namespace A187067

/-- `A187065(n+4)-A187065(n)` -/
def P2139602918046849290.Spec : Prop :=
  ∀ n, P2139602918046849290.a n = A187067 n

end A187067

/-!
# A187068: Let i be in {1,2,3}, let r >= 0 be an integer and n=2*r+i-1. Then a(n)=a(2*r+i-1) gives the quantity of H_(7,1,0) tiles in a subdivided H_(7,i,r) tile after linear scaling by the factor x^r, where x=sqrt((2*cos(Pi/7))^2-1).

The programs for A187068, the canonical program `A187068.P6219689814955623179` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187068 has offset 0).

The definition of A187068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187068.P6219689814955623179

`2*a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187068

/-- `2*a(n-2)+a(n-4)-a(n-6)` -/
def P6219689814955623179.Spec : Prop :=
  ∀ n, P6219689814955623179.a n = A187068 n

theorem P6219689814955623179.correct : P6219689814955623179.Spec := by
  intro n
  simp only [A187068]

end A187068

/-! ## A187068.P2797865274339973097

`a(xor(1, n-3))+a(n-1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A187068.P2797865274339973097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (Int.xor 1 ((n : ℤ) - 3)).toNat + a (n - 1)

end

end A187068.P2797865274339973097

namespace A187068

/-- `a(xor(1, n-3))+a(n-1)` -/
def P2797865274339973097.Spec : Prop :=
  ∀ n, (P2797865274339973097.a n : ℤ) = A187068 n

end A187068

/-! ## A187068.P11393507164165955306

`A187070(abs(2-n))`
-/

namespace A187068.P11393507164165955306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 |2 - (n : ℤ)|.toNat

end

end A187068.P11393507164165955306

namespace A187068

/-- `A187070(abs(2-n))` -/
def P11393507164165955306.Spec : Prop :=
  ∀ n, P11393507164165955306.a n = A187068 n

end A187068

/-! ## A187068.P2540285974034244259

`floor(A187070(A289207(n))+acot(n))`
-/

namespace A187068.P2540285974034244259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187070 (A289207 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A187068.P2540285974034244259

namespace A187068

/-- `floor(A187070(A289207(n))+acot(n))` -/
def P2540285974034244259.Spec : Prop :=
  ∀ n, P2540285974034244259.a n = A187068 n

end A187068

/-! ## A187068.P16056338083886567207

`A038196(n)-A187069(n+2)`
-/

namespace A187068.P16056338083886567207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 n - A187069 (n + 2)

end

end A187068.P16056338083886567207

namespace A187068

/-- `A038196(n)-A187069(n+2)` -/
def P16056338083886567207.Spec : Prop :=
  ∀ n, P16056338083886567207.a n = A187068 n

end A187068

/-! ## A187068.P15914180092427428149

`A187070(n+2)-A187069(n+2)`
-/

namespace A187068.P15914180092427428149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (n + 2) - A187069 (n + 2)

end

end A187068.P15914180092427428149

namespace A187068

/-- `A187070(n+2)-A187069(n+2)` -/
def P15914180092427428149.Spec : Prop :=
  ∀ n, P15914180092427428149.a n = A187068 n

end A187068

/-! ## A187068.P16296741154529700091

`A038196(n)-A187069(n)-A187070(n)`
-/

namespace A187068.P16296741154529700091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 n - A187069 n - A187070 n

end

end A187068.P16296741154529700091

namespace A187068

/-- `A038196(n)-A187069(n)-A187070(n)` -/
def P16296741154529700091.Spec : Prop :=
  ∀ n, P16296741154529700091.a n = A187068 n

end A187068

/-!
# A187069: Let i be in {1,2,3}, let r >= 0 be an integer and n=2*r+i-1. Then a(n)=a(2*r+i-1) gives the quantity of H_(7,2,0) tiles in a subdivided H_(7,i,r) tile after linear scaling by the factor x^r, where x=sqrt((2*cos(Pi/7))^2-1).

The programs for A187069, the canonical program `A187069.P13047079450201232051` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187069 has offset 0).

The definition of A187069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187069.P13047079450201232051

`2*a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187069

/-- `2*a(n-2)+a(n-4)-a(n-6)` -/
def P13047079450201232051.Spec : Prop :=
  ∀ n, P13047079450201232051.a n = A187069 n

theorem P13047079450201232051.correct : P13047079450201232051.Spec := by
  intro n
  simp only [A187069]

end A187069

/-! ## A187069.P12577050853332090375

`a(xor(1, n-3))+a(n-1)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A187069.P12577050853332090375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (Int.xor 1 ((n : ℤ) - 3)).toNat + a (n - 1)

end

end A187069.P12577050853332090375

namespace A187069

/-- `a(xor(1, n-3))+a(n-1)` -/
def P12577050853332090375.Spec : Prop :=
  ∀ n, (P12577050853332090375.a n : ℤ) = A187069 n

end A187069

/-! ## A187069.P8687340172324468075

`A187068(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A187069.P8687340172324468075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A187068 n + a (n - 2)

end

end A187069.P8687340172324468075

namespace A187069

/-- `A187068(n)+a(n-2)` -/
def P8687340172324468075.Spec : Prop :=
  ∀ n, P8687340172324468075.a n = A187069 n

end A187069

/-! ## A187069.P5877480385237126572

`A187068(n+1)+A187068(A124625(n))`
-/

namespace A187069.P5877480385237126572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (n + 1) + A187068 (A124625 n).toNat

end

end A187069.P5877480385237126572

namespace A187069

/-- `A187068(n+1)+A187068(A124625(n))` -/
def P5877480385237126572.Spec : Prop :=
  ∀ n, P5877480385237126572.a n = A187069 n

end A187069

/-! ## A187069.P18022771873866132287

`A187068(n+3)-A187068(A014681(n+1))`
-/

namespace A187069.P18022771873866132287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (n + 3) - A187068 (A014681 (n + 1)).toNat

end

end A187069.P18022771873866132287

namespace A187069

/-- `A187068(n+3)-A187068(A014681(n+1))` -/
def P18022771873866132287.Spec : Prop :=
  ∀ n, P18022771873866132287.a n = A187069 n

end A187069

/-! ## A187069.P16722668216684057138

`A038196(n)-(A187070(n)+A187068(n))`
-/

namespace A187069.P16722668216684057138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 n - (A187070 n + A187068 n)

end

end A187069.P16722668216684057138

namespace A187069

/-- `A038196(n)-(A187070(n)+A187068(n))` -/
def P16722668216684057138.Spec : Prop :=
  ∀ n, P16722668216684057138.a n = A187069 n

end A187069

/-! ## A187069.P4683172345107416300

`A187068(n+10)%(A187068(n+2)+A187068(n+8))`
-/

namespace A187069.P4683172345107416300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187068 (n + 10)) (A187068 (n + 2) + A187068 (n + 8))

end

end A187069.P4683172345107416300

namespace A187069

/-- `A187068(n+10)%(A187068(n+2)+A187068(n+8))` -/
def P4683172345107416300.Spec : Prop :=
  ∀ n, P4683172345107416300.a n = A187069 n

end A187069

/-!
# A187070: Let i be in {1,2,3}, let r >= 0 be an integer and n=2*r+i-1. Then a(n)=a(2*r+i-1) gives the quantity of H_(7,3,0) tiles in a subdivided H_(7,i,r) tile after linear scaling by the factor x^r, where x=sqrt((2*cos(Pi/7))^2-1).

The programs for A187070, the canonical program `A187070.P4477383099436312150` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187070 has offset 0).

The definition of A187070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187070.P4477383099436312150

`2*a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187070

/-- `2*a(n-2)+a(n-4)-a(n-6)` -/
def P4477383099436312150.Spec : Prop :=
  ∀ n, P4477383099436312150.a n = A187070 n

theorem P4477383099436312150.correct : P4477383099436312150.Spec := by
  intro n
  simp only [A187070]

end A187070

/-! ## A187070.P12725551115269963839

`A187068(n+2)`
-/

namespace A187070.P12725551115269963839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (n + 2)

end

end A187070.P12725551115269963839

namespace A187070

/-- `A187068(n+2)` -/
def P12725551115269963839.Spec : Prop :=
  ∀ n, P12725551115269963839.a n = A187070 n

end A187070

/-! ## A187070.P625721523907718211

`A120771(A166517(n))`
-/

namespace A187070.P625721523907718211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (A166517 n).toNat

end

end A187070.P625721523907718211

namespace A187070

/-- `A120771(A166517(n))` -/
def P625721523907718211.Spec : Prop :=
  ∀ n, P625721523907718211.a n = A187070 n

end A187070

/-! ## A187070.P17975925300934249959

`A006054(A008619(n))-A006054(A142150(n))`
-/

namespace A187070.P17975925300934249959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (A008619 n).toNat - A006054 (A142150 n).toNat

end

end A187070.P17975925300934249959

namespace A187070

/-- `A006054(A008619(n))-A006054(A142150(n))` -/
def P17975925300934249959.Spec : Prop :=
  ∀ n, P17975925300934249959.a n = A187070 n

end A187070

/-! ## A187070.P15883613564466940941

`A187069(n+2)-A187069(n)`
-/

namespace A187070.P15883613564466940941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (n + 2) - A187069 n

end

end A187070.P15883613564466940941

namespace A187070

/-- `A187069(n+2)-A187069(n)` -/
def P15883613564466940941.Spec : Prop :=
  ∀ n, P15883613564466940941.a n = A187070 n

end A187070

/-! ## A187070.P5322697516556619318

`Δ[A187069(n+1)]+Δ[A187069(n)]`
-/

namespace A187070.P5322697516556619318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A187070.P5322697516556619318

namespace A187070

/-- `Δ[A187069(n+1)]+Δ[A187069(n)]` -/
def P5322697516556619318.Spec : Prop :=
  ∀ n, P5322697516556619318.a n = A187070 n

end A187070

/-! ## A187070.P5244946662108515385

`A038196(n)-A187068(n)-A187069(n)`
-/

namespace A187070.P5244946662108515385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 n - A187068 n - A187069 n

end

end A187070.P5244946662108515385

namespace A187070

/-- `A038196(n)-A187068(n)-A187069(n)` -/
def P5244946662108515385.Spec : Prop :=
  ∀ n, P5244946662108515385.a n = A187070 n

end A187070

/-! ## A187070.P6236417267102270518

`Δ[A187069(n+1)+A187069(n)]`
-/

namespace A187070.P6236417267102270518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (n + 1) + A187069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187070.P6236417267102270518

namespace A187070

/-- `Δ[A187069(n+1)+A187069(n)]` -/
def P6236417267102270518.Spec : Prop :=
  ∀ n, P6236417267102270518.a n = A187070 n

end A187070

/-!
# A187071: Expansion of d/dx arctan(x*A001003(x)).

The programs for A187071, there is no canonical definition to state claims against.
-/

/-! ## A187071.P8119559570301180225

`A285901(A150648(n))`
-/

namespace A187071.P8119559570301180225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285901 (A150648 n).toNat

end

end A187071.P8119559570301180225

/-! ## A187071.P1226118509076487735

`A152467(A383118(n+1))+1`
-/

namespace A187071.P1226118509076487735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A383118 (n + 1)).toNat + 1

end

end A187071.P1226118509076487735

/-!
# A187072: Prime numbers chosen such that the even numbers that are the sum of two consecutive terms occur only once and occur as early as possible.

The programs for A187072, there is no canonical definition to state claims against.
-/

/-! ## A187072.P11030215618959549581

`A187085(n)-a(n-1)` with `a(0)=3`
-/

namespace A187072.P11030215618959549581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A187085 n - a (n - 1)

end

end A187072.P11030215618959549581

/-!
# A187073: Composite squarefree numbers whose average prime factor is a prime number.

The programs for A187073, there is no canonical definition to state claims against.
-/

/-! ## A187073.P10296518095726270000

`record[A007947(A070006(n+1))]`
-/

namespace A187073.P10296518095726270000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A070006 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187073.P10296518095726270000

/-! ## A187073.P3550082454761790449

`filter[A070006(n+1), A008966(#)]`
-/

namespace A187073.P3550082454761790449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A187073.P3550082454761790449

/-! ## A187073.P13976030397620969848

`filter[A134344(n+1), A008966(#)]`
-/

namespace A187073.P13976030397620969848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A187073.P13976030397620969848

/-! ## A187073.P17150474478374363035

`filter[A070006(n+1), A354819(#)]`
-/

namespace A187073.P17150474478374363035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A187073.P17150474478374363035

/-! ## A187073.P5285640431816186158

`filter[A070006(n+1), A359590(#)]`
-/

namespace A187073.P5285640431816186158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A187073.P5285640431816186158

/-! ## A187073.P6258190118680089354

`filter[A070006(n+1), A359592(#)]`
-/

namespace A187073.P6258190118680089354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A187073.P6258190118680089354

/-! ## A187073.P15988502401462812263

`filter[A070006(n+1), A359834(#)]`
-/

namespace A187073.P15988502401462812263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A187073.P15988502401462812263

/-! ## A187073.P6921425790350177204

`filter[A070006(n+1), A380469(#)]`
-/

namespace A187073.P6921425790350177204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A187073.P6921425790350177204

/-! ## A187073.P18157663597244506298

`filter[A134344(n+1), A354819(#)]`
-/

namespace A187073.P18157663597244506298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A187073.P18157663597244506298

/-! ## A187073.P3833571228107239774

`filter[A134344(n+1), A380469(#)]`
-/

namespace A187073.P3833571228107239774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A187073.P3833571228107239774

/-! ## A187073.P6008668512728928939

`∩[A005117(n+1), A070006(n+1)]`
-/

namespace A187073.P6008668512728928939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187073.P6008668512728928939

/-! ## A187073.P10735594870139630948

`∩[A005117(n+1), A134344(n+1)]`
-/

namespace A187073.P10735594870139630948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187073.P10735594870139630948

/-! ## A187073.P17366821787069039587

`filter[A070006(n+1), A323154(#)]`
-/

namespace A187073.P17366821787069039587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A187073.P17366821787069039587

/-! ## A187073.P18103648190839840992

`filter[A070006(n+1), A323239(#)]`
-/

namespace A187073.P18103648190839840992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A187073.P18103648190839840992

/-! ## A187073.P14486525427844233745

`filter[A070006(n+1), A353559(#)]`
-/

namespace A187073.P14486525427844233745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A187073.P14486525427844233745

/-! ## A187073.P15011440637140522031

`filter[A070006(n+1), A353627(#)]`
-/

namespace A187073.P15011440637140522031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A187073.P15011440637140522031

/-! ## A187073.P6980718510832705184

`filter[A134344(n+1), A323239(#)]`
-/

namespace A187073.P6980718510832705184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A187073.P6980718510832705184

/-! ## A187073.P2198470157125975249

`∩[A070006(n+1), A380470(n+1)]`
-/

namespace A187073.P2198470157125975249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187073.P2198470157125975249

/-! ## A187073.P988427184101090586

`∩[A134344(n+1), A380470(n+1)]`
-/

namespace A187073.P988427184101090586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187073.P988427184101090586

/-! ## A187073.P18046163041632644745

`∩[A024556(n+1), A070006(n+1)]`
-/

namespace A187073.P18046163041632644745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187073.P18046163041632644745

/-!
# A187074: a(n) = 0 if and only if n is of the form 3*k or 4*k + 2, otherwise a(n) = 1.

The programs for A187074, the canonical program `A187074.P12495670548098968` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187074 has offset 1).

The definition of A187074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187074.P12495670548098968

`A011655(n+1)*A152822(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187074

/-- `A011655(n+1)*A152822(n+1)` -/
def P12495670548098968.Spec : Prop :=
  ∀ n, P12495670548098968.a n = A187074 (n + 1)

theorem P12495670548098968.correct : P12495670548098968.Spec := by
  intro n
  simp only [A187074, Nat.add_sub_cancel]

end A187074

/-!
# A187075: A Galton triangle: T(n,k) = 2*k*T(n-1,k) + (2*k-1)*T(n-1,k-1).

The programs for A187075, the canonical program `A187075.P481601312614244195` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187075 has offset 1).

The definition of A187075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(col(n)+1)*T(n-1,k)+(2*(col(n)+1)-1)*T(n-1,k-1)` (program `A187075.P481601312614244195`, by `A187075.P481601312614244195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187075.P481601312614244195

`2*(col(n)+1)*T(n-1,k)+(2*(col(n)+1)-1)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187075

/-- `2*(col(n)+1)*T(n-1,k)+(2*(col(n)+1)-1)*T(n-1,k-1)` -/
def P481601312614244195.Spec : Prop :=
  ∀ n, P481601312614244195.a n = A187075 (n + 1)

theorem P481601312614244195.correct : P481601312614244195.Spec := by
  intro n
  simp only [A187075, Nat.add_sub_cancel]

end A187075

/-! ## A187075.P2351534029264982275

`A211402(comp[∑[n]])`
-/

namespace A187075.P2351534029264982275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187075.P2351534029264982275

namespace A187075

/-- `A211402(comp[∑[n]])` -/
def P2351534029264982275.Spec : Prop :=
  ∀ n, P2351534029264982275.a n = A187075 (n + 1)

end A187075

/-! ## A187075.P13599526942431896863

`or(char[2], A211402(A014132(n+1)))`
-/

namespace A187075.P13599526942431896863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A211402 (A014132 (n + 1)).toNat)

end

end A187075.P13599526942431896863

namespace A187075

/-- `or(char[2], A211402(A014132(n+1)))` -/
def P13599526942431896863.Spec : Prop :=
  ∀ n, P13599526942431896863.a n = A187075 (n + 1)

end A187075

/-! ## A187075.P1846230352406275721

`A075497(n+1)*A130757(A112367(n))`
-/

namespace A187075.P1846230352406275721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (n + 1) * A130757 (A112367 n).toNat

end

end A187075.P1846230352406275721

namespace A187075

/-- `A075497(n+1)*A130757(A112367(n))` -/
def P1846230352406275721.Spec : Prop :=
  ∀ n, P1846230352406275721.a n = A187075 (n + 1)

end A187075

/-! ## A187075.P13967897968199010578

`A033999(n)²*A211402(A014132(n+1))`
-/

namespace A187075.P13967897968199010578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A211402 (A014132 (n + 1)).toNat

end

end A187075.P13967897968199010578

namespace A187075

/-- `A033999(n)²*A211402(A014132(n+1))` -/
def P13967897968199010578.Spec : Prop :=
  ∀ n, P13967897968199010578.a n = A187075 (n + 1)

end A187075

/-! ## A187075.P9872467074934363016

`A001147(A002260(n+1))*A075497(n+1)`
-/

namespace A187075.P9872467074934363016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A002260 (n + 1)).toNat * A075497 (n + 1)

end

end A187075.P9872467074934363016

namespace A187075

/-- `A001147(A002260(n+1))*A075497(n+1)` -/
def P9872467074934363016.Spec : Prop :=
  ∀ n, P9872467074934363016.a n = A187075 (n + 1)

end A187075

/-! ## A187075.P13224867744609482159

`A211402(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A187075.P13224867744609482159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A187075.P13224867744609482159

namespace A187075

/-- `A211402(A014132(n+1))+A008683(4*(n+1))` -/
def P13224867744609482159.Spec : Prop :=
  ∀ n, P13224867744609482159.a n = A187075 (n + 1)

end A187075

/-! ## A187075.P207108544812599915

`A211402(A014132(n+1))+A005872(A005872(n))`
-/

namespace A187075.P207108544812599915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 (A014132 (n + 1)).toNat + A005872 (A005872 n).toNat

end

end A187075.P207108544812599915

namespace A187075

/-- `A211402(A014132(n+1))+A005872(A005872(n))` -/
def P207108544812599915.Spec : Prop :=
  ∀ n, P207108544812599915.a n = A187075 (n + 1)

end A187075

/-! ## A187075.P10263865682881381098

`A211402(A014132(n+1))%A000032(2*n)`
-/

namespace A187075.P10263865682881381098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211402 (A014132 (n + 1)).toNat) (A000032 (2 * n))

end

end A187075.P10263865682881381098

namespace A187075

/-- `A211402(A014132(n+1))%A000032(2*n)` -/
def P10263865682881381098.Spec : Prop :=
  ∀ n, P10263865682881381098.a n = A187075 (n + 1)

end A187075

/-!
# A187076: Coefficients of L-series for elliptic curve "144a1": y^2 = x^3 - 1.

The programs for A187076, there is no canonical definition to state claims against.
-/

/-! ## A187076.P10934440888877523037

`(-1)^n*A000727(n)`
-/

namespace A187076.P10934440888877523037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000727 n

end

end A187076.P10934440888877523037

/-! ## A187076.P8576849006701739251

`A000727(n)*A033999(n)`
-/

namespace A187076.P8576849006701739251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000727 n * A033999 n

end

end A187076.P8576849006701739251

/-! ## A187076.P11672502479740846667

`A000727(n)*A000735(n)/A209676(n)`
-/

namespace A187076.P11672502479740846667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000727 n * A000735 n : ℚ) / (A209676 n : ℚ)

end

end A187076.P11672502479740846667

/-! ## A187076.P14784778117979410228

`A000727(n)*A280328(n)/A280384(n)`
-/

namespace A187076.P14784778117979410228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000727 n * A280328 n : ℚ) / (A280384 n : ℚ)

end

end A187076.P14784778117979410228

/-! ## A187076.P15743016181909762958

`A000727(n)*A195017(A000040(n+1))`
-/

namespace A187076.P15743016181909762958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000727 n * A195017 (A000040 (n + 1)).toNat

end

end A187076.P15743016181909762958

/-! ## A187076.P16403041668284530591

`A187149(2*n)`
-/

namespace A187076.P16403041668284530591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187149 (2 * n)

end

end A187076.P16403041668284530591

/-! ## A187076.P17470059956495141902

`A187149(n+n)/A052126(A014963(n+1))`
-/

namespace A187076.P17470059956495141902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187149 (n + n) : ℚ) / (A052126 (A014963 (n + 1)).toNat : ℚ)

end

end A187076.P17470059956495141902

/-! ## A187076.P17015159097755384507

`A106508(2*n)`
-/

namespace A187076.P17015159097755384507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106508 (2 * n)

end

end A187076.P17015159097755384507

/-! ## A187076.P15142012761477516850

`A187149(n+n)/A126988(∑[n+1])`
-/

namespace A187076.P15142012761477516850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187149 (n + n) : ℚ) / (A126988 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A187076.P15142012761477516850

/-!
# A187077: Number of row-convex polyplets with n cells.

The programs for A187077, the canonical program `A187077.P6741203224549139949` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187077 has offset 1).

The definition of A187077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187077.P6741203224549139949

`7*a(n-1)-13*a(n-2)+10*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=18, a(3)=83`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187077

/-- `7*a(n-1)-13*a(n-2)+10*a(n-3)-2*a(n-4)` -/
def P6741203224549139949.Spec : Prop :=
  ∀ n, P6741203224549139949.a n = A187077 (n + 1)

theorem P6741203224549139949.correct : P6741203224549139949.Spec := by
  intro n
  simp only [A187077, Nat.add_sub_cancel]

end A187077

/-!
# A187078: 38 followed by n ones.

The programs for A187078, the canonical program `A187078.P1476450295910118160` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187078 has offset 0).

The definition of A187078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187078.P1476450295910118160

`10*a(n-1)+1` with `a(0)=38`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187078

/-- `10*a(n-1)+1` -/
def P1476450295910118160.Spec : Prop :=
  ∀ n, (P1476450295910118160.a n : ℤ) = A187078 n

theorem P1476450295910118160.correct : P1476450295910118160.Spec := by
  intro n
  simp only [A187078]

end A187078

/-! ## A187078.P6862982661684324244

`(343*10^n-1)/9`
-/

namespace A187078.P6862982661684324244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((343 * 10 ^ n : ℤ) - 1 : ℚ) / 9

end

end A187078.P6862982661684324244

namespace A187078

/-- `(343*10^n-1)/9` -/
def P6862982661684324244.Spec : Prop :=
  ∀ n, P6862982661684324244.a n = (A187078 n : ℚ)

theorem P6862982661684324244.correct : P6862982661684324244.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A187078, Nat.add_sub_cancel, A187078.P6862982661684324244.a, A187078.P1476450295910118160.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A187078, Nat.add_sub_cancel, A187078.P6862982661684324244.a, A187078.P1476450295910118160.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A187078

/-! ## A187078.P18300089949134036552

`xor(10*a(n-1), 1)` with `a(0)=38`
-/

namespace A187078.P18300089949134036552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [38] fun n a =>
  Nat.xor (10 * a (n - 1)) 1

end

end A187078.P18300089949134036552

namespace A187078

/-- `xor(10*a(n-1), 1)` -/
def P18300089949134036552.Spec : Prop :=
  ∀ n, (P18300089949134036552.a n : ℤ) = A187078 n

theorem P18300089949134036552.correct : P18300089949134036552.Spec := by
  intro n
  simp only [A187078, Nat.add_sub_cancel, A187078.P18300089949134036552.a, A187078.P1476450295910118160.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A187078

/-! ## A187078.P10832673085257645572

`A198970(n+1)-A246059(n)`
-/

namespace A187078.P10832673085257645572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198970 (n + 1) - A246059 n

end

end A187078.P10832673085257645572

namespace A187078

/-- `A198970(n+1)-A246059(n)` -/
def P10832673085257645572.Spec : Prop :=
  ∀ n, P10832673085257645572.a n = A187078 n

end A187078

/-! ## A187078.P3860623244633798544

`A000042(n+2)+Δ[A004663(2*n+1)]`
-/

namespace A187078.P3860623244633798544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 2) + (f1 (n + 1) - f1 n)

end

end A187078.P3860623244633798544

namespace A187078

/-- `A000042(n+2)+Δ[A004663(2*n+1)]` -/
def P3860623244633798544.Spec : Prop :=
  ∀ n, P3860623244633798544.a n = A187078 n

end A187078

/-! ## A187078.P18412631312842439171

`A002275(n+2)+Δ[A004663(2*n+1)]`
-/

namespace A187078.P18412631312842439171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 2) + (f1 (n + 1) - f1 n)

end

end A187078.P18412631312842439171

namespace A187078

/-- `A002275(n+2)+Δ[A004663(2*n+1)]` -/
def P18412631312842439171.Spec : Prop :=
  ∀ n, P18412631312842439171.a n = A187078 n

end A187078

/-! ## A187078.P15711856336772130703

`A199684(n+1)+A002275(n)-A199682(n)`
-/

namespace A187078.P15711856336772130703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199684 (n + 1) + (A002275 n - A199682 n)

end

end A187078.P15711856336772130703

namespace A187078

/-- `A199684(n+1)+A002275(n)-A199682(n)` -/
def P15711856336772130703.Spec : Prop :=
  ∀ n, P15711856336772130703.a n = A187078 n

end A187078

/-! ## A187078.P4621851441450393379

`A002275(n+1)+A199684(n+1)-A199683(n)`
-/

namespace A187078.P4621851441450393379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A199684 (n + 1) - A199683 n)

end

end A187078.P4621851441450393379

namespace A187078

/-- `A002275(n+1)+A199684(n+1)-A199683(n)` -/
def P4621851441450393379.Spec : Prop :=
  ∀ n, P4621851441450393379.a n = A187078 n

end A187078

/-! ## A187078.P16210742055866389659

`A086574(n+1)+A000042(n+2)-A086574(n)`
-/

namespace A187078.P16210742055866389659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086574 (n + 1) + (A000042 (n + 2) - A086574 n)

end

end A187078.P16210742055866389659

namespace A187078

/-- `A086574(n+1)+A000042(n+2)-A086574(n)` -/
def P16210742055866389659.Spec : Prop :=
  ∀ n, P16210742055866389659.a n = A187078 n

end A187078

/-!
# A187080: Triangle T(n,k) read by rows: fountains of n coins and height k.

The programs for A187080, there is no canonical definition to state claims against.
-/

/-! ## A187080.P8620593020750394786

`A325188(n)-A130853(A325188(n)!)`
-/

namespace A187080.P8620593020750394786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325188 n - A130853 (Nat.factorial (A325188 n).toNat)

end

end A187080.P8620593020750394786

/-! ## A187080.P9734123198036201809

`A159797(A325188(n)%A233980(3*n+2))`
-/

namespace A187080.P9734123198036201809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (Int.tmod (A325188 n) (A233980 (3 * n + 2))).toNat

end

end A187080.P9734123198036201809

/-! ## A187080.P16572289657706341628

`A159797(A325188(n))%A220520(2*(n+1))`
-/

namespace A187080.P16572289657706341628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159797 (A325188 n).toNat) (A220520 (2 * (n + 1)))

end

end A187080.P16572289657706341628

/-! ## A187080.P4834817641602929941

`A347444(A325188(n))%A336568(2*n+5)`
-/

namespace A187080.P4834817641602929941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347444 (A325188 n).toNat) (A336568 (2 * n + 5))

end

end A187080.P4834817641602929941

/-! ## A187080.P13546374143085296220

`A072660(A388711(n)^(val((n+1)², 2)+1))`
-/

namespace A187080.P13546374143085296220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 (A388711 n ^ (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1)).toNat

end

end A187080.P13546374143085296220

/-!
# A187081: Triangle T(n,k) read by rows: sandpiles of n grains and height k.

The programs for A187081, there is no canonical definition to state claims against.
-/

/-! ## A187081.P3114038995795523384

`round(A269945(n)/A249027(n+1))`
-/

namespace A187081.P3114038995795523384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A269945 n : ℚ) / (A249027 (n + 1) : ℚ))

end

end A187081.P3114038995795523384

/-! ## A187081.P2911900764139254414

`A171913(A306550(n)+3)`
-/

namespace A187081.P2911900764139254414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171913 (A306550 n + 3).toNat

end

end A187081.P2911900764139254414

/-! ## A187081.P7925209936120033204

`A137579(A306550(n)+30)`
-/

namespace A187081.P7925209936120033204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A306550 n + 30).toNat

end

end A187081.P7925209936120033204

/-! ## A187081.P17143824631829943788

`A066448(n)^A326474(A324323(n))`
-/

namespace A187081.P17143824631829943788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066448 n : ℚ) ^ (A326474 (A324323 n).toNat : ℤ)

end

end A187081.P17143824631829943788

/-! ## A187081.P17716818045743886251

`A194445(and(A016975(n), A306550(n)))`
-/

namespace A187081.P17716818045743886251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194445 (Int.land (A016975 n) (A306550 n)).toNat

end

end A187081.P17716818045743886251

/-!
# A187082: Bell polynomial B(n,k){3,6,6,0,...,0}.

The programs for A187082, there is no canonical definition to state claims against.
-/

/-! ## A187082.P5064881100393471540

`3^A002260(n+1)*A049404(n+1)`
-/

namespace A187082.P5064881100393471540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002260 (n + 1) : ℤ) * (A049404 (n + 1) : ℚ)

end

end A187082.P5064881100393471540

/-! ## A187082.P3903612515749246598

`3^A349520(2*n+1)*A049404(n+1)`
-/

namespace A187082.P3903612515749246598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A349520 (2 * n + 1) : ℤ) * (A049404 (n + 1) : ℚ)

end

end A187082.P3903612515749246598

/-! ## A187082.P13129366408636938570

`A000244(A002260(n+1))*A049404(n+1)`
-/

namespace A187082.P13129366408636938570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002260 (n + 1)).toNat * A049404 (n + 1)

end

end A187082.P13129366408636938570

/-!
# A187083: a(n) = binomial(n^n, n).

The programs for A187083, there is no canonical definition to state claims against.
-/

/-! ## A187083.P17361669764326122601

`record[C(n^n, char[1]+n)]`
-/

namespace A187083.P17361669764326122601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ n) ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187083.P17361669764326122601

/-! ## A187083.P12616160547824568578

`C((n+1)^(n+1), n+1)`
-/

namespace A187083.P12616160547824568578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ (n + 1)) (n + 1)

end

end A187083.P12616160547824568578

/-!
# A187084: Exponential Riordan array (1,4*x+6*x^2+4*x^3+x^4).

The programs for A187084, there is no canonical definition to state claims against.
-/

/-! ## A187084.P9149498101016513409

`(2*A059268(n))²*A049410(n+1)`
-/

namespace A187084.P9149498101016513409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A059268 n) ^ 2 * A049410 (n + 1)

end

end A187084.P9149498101016513409

/-! ## A187084.P15137958465734221260

`A049410(n+1)*A059268(A185871(n+1))`
-/

namespace A187084.P15137958465734221260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049410 (n + 1) * A059268 (A185871 (n + 1)).toNat

end

end A187084.P15137958465734221260

/-!
# A187085: Even numbers > 4 as generated by A187072.

The programs for A187085, there is no canonical definition to state claims against.
-/

/-! ## A187085.P17742984297346834754

`2*A187098(n+3)`
-/

namespace A187085.P17742984297346834754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187098 (n + 3)

end

end A187085.P17742984297346834754

/-! ## A187085.P3630584973234232045

`A187098(n+3)+A187098(n+3)%A167499(n)`
-/

namespace A187085.P3630584973234232045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187098 (n + 3) + Int.tmod (A187098 (n + 3)) (A167499 n)

end

end A187085.P3630584973234232045

/-! ## A187085.P10312993851826563851

`A005843(A187098(n+3))`
-/

namespace A187085.P10312993851826563851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A187098 (n + 3)).toNat

end

end A187085.P10312993851826563851

/-! ## A187085.P7142788074569665908

`A004277(A187098(n+3)%A167499(n))`
-/

namespace A187085.P7142788074569665908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A187098 (n + 3)) (A167499 n)).toNat

end

end A187085.P7142788074569665908

/-! ## A187085.P5016074453682382883

`A187072(n+1)+A187072(n+2)`
-/

namespace A187085.P5016074453682382883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187072 (n + 1) + A187072 (n + 2)

end

end A187085.P5016074453682382883

/-!
# A187086: Numbers n with property that sum of divisors of n except 1 and n is a positive square.

The programs for A187086, there is no canonical definition to state claims against.
-/

/-! ## A187086.P7786202239789949548

`eq[2, A000122(A048050(n+1))]+1`
-/

namespace A187086.P7786202239789949548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A048050 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187086.P7786202239789949548

/-! ## A187086.P2484609903597988011

`eq[1, A003285(A001065(n+2))]+2`
-/

namespace A187086.P2484609903597988011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A001065 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A187086.P2484609903597988011

/-! ## A187086.P12745927292732492173

`eq[1, A003285(A048050(n+1)+1)]+1`
-/

namespace A187086.P12745927292732492173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A048050 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187086.P12745927292732492173

/-!
# A187087: Positive squares in the order of their appearance in A048050.

The programs for A187087, there is no canonical definition to state claims against.
-/

/-! ## A187087.P7702988852943726306

`A000203(A187086(n+1))-(A187086(n+1)+1)`
-/

namespace A187087.P7702988852943726306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A187086 (n + 1)).toNat - (A187086 (n + 1) + 1)

end

end A187087.P7702988852943726306

/-! ## A187087.P7065794805964928803

`A326146(A187086(n+1))+A057237(A187086(n+1))`
-/

namespace A187087.P7065794805964928803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (A187086 (n + 1)).toNat + A057237 (A187086 (n + 1)).toNat

end

end A187087.P7065794805964928803

/-! ## A187087.P1220288284186573901

`A048050(A187086(n+1))`
-/

namespace A187087.P1220288284186573901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A187086 (n + 1)).toNat

end

end A187087.P1220288284186573901

/-! ## A187087.P5950360075267839937

`A001065(A187086(n+1))-abs(A033999(n))`
-/

namespace A187087.P5950360075267839937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A187086 (n + 1)).toNat - |A033999 n|

end

end A187087.P5950360075267839937

/-! ## A187087.P5958898477597131292

`A057428(n+1)+A001065(A187086(n+1))`
-/

namespace A187087.P5958898477597131292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A001065 (A187086 (n + 1)).toNat

end

end A187087.P5958898477597131292

/-! ## A187087.P7723449368950398507

`A173455(A187086(n+1))-A000034(2*n)`
-/

namespace A187087.P7723449368950398507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (A187086 (n + 1)).toNat - A000034 (2 * n)

end

end A187087.P7723449368950398507

/-! ## A187087.P5358978655211382763

`A033999(2*n+1)+A001065(A187086(n+1))`
-/

namespace A187087.P5358978655211382763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001065 (A187086 (n + 1)).toNat

end

end A187087.P5358978655211382763

/-! ## A187087.P7652322973592120464

`A173455(A187086(n+1))-A000041(gcd(n, n+1))`
-/

namespace A187087.P7652322973592120464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (A187086 (n + 1)).toNat - A000041 (Nat.gcd n (n + 1))

end

end A187087.P7652322973592120464

/-! ## A187087.P6214975882821489729

`A001065(A187086(n+1))-A000010(-or(n, -2))`
-/

namespace A187087.P6214975882821489729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A187086 (n + 1)).toNat - A000010 (-Int.lor (n : ℤ) (-2)).toNat

end

end A187087.P6214975882821489729

/-! ## A187087.P5472973702381796750

`A001065(A187086(n+1))-A001222(A007918(n))`
-/

namespace A187087.P5472973702381796750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A187086 (n + 1)).toNat - A001222 (A007918 n).toNat

end

end A187087.P5472973702381796750

/-! ## A187087.P6871025155795117674

`A173455(A187086(n+1))-A007318(A051344(n))`
-/

namespace A187087.P6871025155795117674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (A187086 (n + 1)).toNat - A007318 (A051344 n).toNat

end

end A187087.P6871025155795117674

/-! ## A187087.P9842902632643457347

`A076479(A138837(n+1))+A001065(A187086(n+1))`
-/

namespace A187087.P9842902632643457347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A138837 (n + 1)).toNat + A001065 (A187086 (n + 1)).toNat

end

end A187087.P9842902632643457347

/-!
# A187088: Least odd k such that k*2^(2^n)+1 is prime.

The programs for A187088, there is no canonical definition to state claims against.
-/

/-! ## A187088.P2743402137901678821

`A057778(2^n)`
-/

namespace A187088.P2743402137901678821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (2 ^ n)

end

end A187088.P2743402137901678821

/-! ## A187088.P12313684216837491930

`or(1, A057778(A000079(n)))`
-/

namespace A187088.P12313684216837491930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057778 (A000079 n).toNat)

end

end A187088.P12313684216837491930

/-! ## A187088.P1008285547150126757

`and(A057778(A000079(n)), A060416(n))`
-/

namespace A187088.P1008285547150126757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057778 (A000079 n).toNat) (A060416 n)

end

end A187088.P1008285547150126757

/-! ## A187088.P8071261504987016510

`A057778(A000079(n))-A034497(n+1)`
-/

namespace A187088.P8071261504987016510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (A000079 n).toNat - A034497 (n + 1)

end

end A187088.P8071261504987016510

/-! ## A187088.P16386920521515135502

`A057778(A000079(n))-A019590(n+5)`
-/

namespace A187088.P16386920521515135502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (A000079 n).toNat - A019590 (n + 5)

end

end A187088.P16386920521515135502

/-!
# A187092: Number of nonempty subsets S of {1, 2, ..., n} with pairwise coprime elements that are maximal with respect to inclusion of elements < max(S).

The programs for A187092, the canonical program `A187092.P9150632400778143436` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187092 has offset 1).

The definition of A187092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187092.P9150632400778143436

`∑[A186994(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A187092

/-- `∑[A186994(n+1)]` -/
def P9150632400778143436.Spec : Prop :=
  ∀ n, P9150632400778143436.a n = A187092 (n + 1)

theorem P9150632400778143436.correct : P9150632400778143436.Spec := by
  intro n
  simp only [A187092, Nat.add_sub_cancel]

end A187092

/-! ## A187092.P2234602285915276000

`a(n-1)+A186994(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A187092.P2234602285915276000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A186994 (n + 1) + A000007 n)

end

end A187092.P2234602285915276000

namespace A187092

/-- `a(n-1)+A186994(n+1)+A000007(n)` -/
def P2234602285915276000.Spec : Prop :=
  ∀ n, P2234602285915276000.a n = A187092 (n + 1)

end A187092

/-! ## A187092.P17232792396692013673

`a(n-1)+A186994(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A187092.P17232792396692013673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A186994 (n + 1) + A000038 n)

end

end A187092.P17232792396692013673

namespace A187092

/-- `a(n-1)+A186994(n+1)+A000038(n)` -/
def P17232792396692013673.Spec : Prop :=
  ∀ n, P17232792396692013673.a n = A187092 (n + 1)

end A187092

/-! ## A187092.P16425124424785778140

`a(n-1)+A024996(C(2, n+2))*A186994(n+1)` with `a(0)=1`
-/

namespace A187092.P16425124424785778140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A024996 (Nat.choose 2 (n + 2)) * A186994 (n + 1)

end

end A187092.P16425124424785778140

namespace A187092

/-- `a(n-1)+A024996(C(2, n+2))*A186994(n+1)` -/
def P16425124424785778140.Spec : Prop :=
  ∀ n, P16425124424785778140.a n = A187092 (n + 1)

end A187092

/-! ## A187092.P2357638487836206173

`∑[A186972(∑[A186971(n+1)])]`
-/

namespace A187092.P2357638487836206173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186971 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187092.P2357638487836206173

namespace A187092

/-- `∑[A186972(∑[A186971(n+1)])]` -/
def P2357638487836206173.Spec : Prop :=
  ∀ n, P2357638487836206173.a n = A187092 (n + 1)

end A187092

/-!
# A187093: a(0)=0, a(1)=a(2)=1; thereafter, a(n+1) = n^2 - a(n-1).

The programs for A187093, the canonical program `A187093.P8635450470421443308` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187093 has offset 0).

The definition of A187093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187093.P8635450470421443308

`(n²-1+(-1)^floor(n/2)*A000034(n))/2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A187093

/-- `(n²-1+(-1)^floor(n/2)*A000034(n))/2` -/
def P8635450470421443308.Spec : Prop :=
  ∀ n, P8635450470421443308.a n = (A187093 n : ℚ)

end A187093

/-! ## A187093.P3805077596745480968

`(1-n)²-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A187093.P3805077596745480968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 - a (n - 2)

end

end A187093.P3805077596745480968

namespace A187093

/-- `(1-n)²-a(n-2)` -/
def P3805077596745480968.Spec : Prop :=
  ∀ n, P3805077596745480968.a n = A187093 n

end A187093

/-! ## A187093.P296146520656464524

`∑[a(n-4)+4]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2, a(4)=5`
-/

namespace A187093.P296146520656464524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 2, 5] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187093.P296146520656464524

namespace A187093

/-- `∑[a(n-4)+4]` -/
def P296146520656464524.Spec : Prop :=
  ∀ n, (P296146520656464524.a n : ℤ) = A187093 n

end A187093

/-! ## A187093.P6469172290463154805

`∑[∑[2-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=2`
-/

namespace A187093.P6469172290463154805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 2] fun n f2 =>
  2 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187093.P6469172290463154805

namespace A187093

/-- `∑[∑[2-a(n-2)]]` -/
def P6469172290463154805.Spec : Prop :=
  ∀ n, P6469172290463154805.a n = A187093 n

end A187093

/-! ## A187093.P12783116969983227698

`1-(a(n-2)+n*(2-n))` with `a(0)=0, a(1)=1`
-/

namespace A187093.P12783116969983227698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (a (n - 2) + (n : ℤ) * (2 - (n : ℤ)))

end

end A187093.P12783116969983227698

namespace A187093

/-- `1-(a(n-2)+n*(2-n))` -/
def P12783116969983227698.Spec : Prop :=
  ∀ n, P12783116969983227698.a n = A187093 n

end A187093

/-! ## A187093.P12287524408702568491

`1-a(n-2)-n*(2-n)` with `a(0)=0, a(1)=1`
-/

namespace A187093.P12287524408702568491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - a (n - 2) - (n : ℤ) * (2 - (n : ℤ))

end

end A187093.P12287524408702568491

namespace A187093

/-- `1-a(n-2)-n*(2-n)` -/
def P12287524408702568491.Spec : Prop :=
  ∀ n, P12287524408702568491.a n = A187093 n

end A187093

/-! ## A187093.P13927272591423937606

`A104563(n)-and(2, n)`
-/

namespace A187093.P13927272591423937606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n - (Nat.land 2 n : ℤ)

end

end A187093.P13927272591423937606

namespace A187093

/-- `A104563(n)-and(2, n)` -/
def P13927272591423937606.Spec : Prop :=
  ∀ n, P13927272591423937606.a n = A187093 n

end A187093

/-! ## A187093.P4137791718272775193

`A269403(n)-A083219(n)`
-/

namespace A187093.P4137791718272775193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269403 n - A083219 n

end

end A187093.P4137791718272775193

namespace A187093

/-- `A269403(n)-A083219(n)` -/
def P4137791718272775193.Spec : Prop :=
  ∀ n, P4137791718272775193.a n = A187093 n

end A187093

/-! ## A187093.P12926336499329325153

`A004525(n)+2*A011848(n)`
-/

namespace A187093.P12926336499329325153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + 2 * A011848 n

end

end A187093.P12926336499329325153

namespace A187093

/-- `A004525(n)+2*A011848(n)` -/
def P12926336499329325153.Spec : Prop :=
  ∀ n, P12926336499329325153.a n = A187093 n

end A187093

/-! ## A187093.P8344932514128676682

`A104563(n)-2*A021913(n)`
-/

namespace A187093.P8344932514128676682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n - 2 * A021913 n

end

end A187093.P8344932514128676682

namespace A187093

/-- `A104563(n)-2*A021913(n)` -/
def P8344932514128676682.Spec : Prop :=
  ∀ n, P8344932514128676682.a n = A187093 n

end A187093

/-! ## A187093.P1354775051012884979

`A004525(n)+∑[A290561(n)-1]`
-/

namespace A187093.P1354775051012884979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290561 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187093.P1354775051012884979

namespace A187093

/-- `A004525(n)+∑[A290561(n)-1]` -/
def P1354775051012884979.Spec : Prop :=
  ∀ n, P1354775051012884979.a n = A187093 n

end A187093

/-! ## A187093.P11749273996453438895

`A098180(n)+∑[A098180(n)-2]`
-/

namespace A187093.P11749273996453438895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187093.P11749273996453438895

namespace A187093

/-- `A098180(n)+∑[A098180(n)-2]` -/
def P11749273996453438895.Spec : Prop :=
  ∀ n, P11749273996453438895.a n = A187093 n

end A187093

/-! ## A187093.P3279730138646428334

`A004525(n)+∑[2*A004524(n)]`
-/

namespace A187093.P3279730138646428334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187093.P3279730138646428334

namespace A187093

/-- `A004525(n)+∑[2*A004524(n)]` -/
def P3279730138646428334.Spec : Prop :=
  ∀ n, P3279730138646428334.a n = A187093 n

end A187093

/-! ## A187093.P8251967373686157897

`∑[n]+A215098(n)-A194274(n)`
-/

namespace A187093.P8251967373686157897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A215098 n - A194274 n)

end

end A187093.P8251967373686157897

namespace A187093

/-- `∑[n]+A215098(n)-A194274(n)` -/
def P8251967373686157897.Spec : Prop :=
  ∀ n, P8251967373686157897.a n = A187093 n

end A187093

/-! ## A187093.P12385099825639235711

`A183575(n+1)-A047479(n+1)`
-/

namespace A187093.P12385099825639235711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183575 (n + 1) - A047479 (n + 1)

end

end A187093.P12385099825639235711

namespace A187093

/-- `A183575(n+1)-A047479(n+1)` -/
def P12385099825639235711.Spec : Prop :=
  ∀ n, P12385099825639235711.a n = A187093 n

end A187093

/-! ## A187093.P4444766846597699769

`A004525(n)+∑[A052928(A290561(n))]`
-/

namespace A187093.P4444766846597699769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A290561 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187093.P4444766846597699769

namespace A187093

/-- `A004525(n)+∑[A052928(A290561(n))]` -/
def P4444766846597699769.Spec : Prop :=
  ∀ n, P4444766846597699769.a n = A187093 n

end A187093

/-! ## A187093.P10552192323523187044

`∑[n+2]-A235700(n+2)`
-/

namespace A187093.P10552192323523187044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A235700 (n + 2)

end

end A187093.P10552192323523187044

namespace A187093

/-- `∑[n+2]-A235700(n+2)` -/
def P10552192323523187044.Spec : Prop :=
  ∀ n, P10552192323523187044.a n = A187093 n

end A187093

/-! ## A187093.P9071926652896134842

`A213484(n+1)-A186351(n+2)`
-/

namespace A187093.P9071926652896134842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 (n + 1) - A186351 (n + 2)

end

end A187093.P9071926652896134842

namespace A187093

/-- `A213484(n+1)-A186351(n+2)` -/
def P9071926652896134842.Spec : Prop :=
  ∀ n, P9071926652896134842.a n = A187093 n

end A187093

/-! ## A187093.P1252969848454848509

`(n+1)²-(A194274(n+1)+A056594(n+1))`
-/

namespace A187093.P1252969848454848509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A194274 (n + 1) + A056594 (n + 1))

end

end A187093.P1252969848454848509

namespace A187093

/-- `(n+1)²-(A194274(n+1)+A056594(n+1))` -/
def P1252969848454848509.Spec : Prop :=
  ∀ n, P1252969848454848509.a n = A187093 n

end A187093

/-! ## A187093.P655408883705996722

`A104563(n)-A007877(n)*A098178(n+1)`
-/

namespace A187093.P655408883705996722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n - A007877 n * A098178 (n + 1)

end

end A187093.P655408883705996722

namespace A187093

/-- `A104563(n)-A007877(n)*A098178(n+1)` -/
def P655408883705996722.Spec : Prop :=
  ∀ n, P655408883705996722.a n = A187093 n

end A187093

/-!
# A187094: Good primes (version 3): p such that p-1 has a prime factor between (log p)^2 and 2 (log p)^2.

The programs for A187094, there is no canonical definition to state claims against.
-/

/-! ## A187094.P18059617939133947867

`A050921(A045386(n+1))`
-/

namespace A187094.P18059617939133947867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (A045386 (n + 1)).toNat

end

end A187094.P18059617939133947867

/-! ## A187094.P4278515819275131838

`A154727(A291718(3*(n+1))-2-n)`
-/

namespace A187094.P4278515819275131838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154727 (A291718 (3 * (n + 1)) - 2 - (n : ℤ)).toNat

end

end A187094.P4278515819275131838

/-!
# A187097: Expansion of psi(x^4) * phi(x^38) - x^2 * psi(x) * psi(x^19) + x^9 * phi(x^2) * psi(x^76) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A187097, there is no canonical definition to state claims against.
-/

/-! ## A187097.P8885770070871939239

`A030203(A199337(3*n+2)*A231503(n))`
-/

namespace A187097.P8885770070871939239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (A199337 (3 * n + 2) * A231503 n).toNat

end

end A187097.P8885770070871939239

/-!
# A187098: A permutation of the natural numbers related to Goldbach conjecture.

The programs for A187098, there is no canonical definition to state claims against.
-/

/-! ## A187098.P11361939847938726983

`A140595(n)+A010060(A184955(n))`
-/

namespace A187098.P11361939847938726983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 n + A010060 (A184955 n).toNat

end

end A187098.P11361939847938726983

/-! ## A187098.P5003095194711559865

`A185284(A053602(n))+A140595(n)`
-/

namespace A187098.P5003095194711559865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A053602 n).toNat + A140595 n

end

end A187098.P5003095194711559865

/-! ## A187098.P17309862202689742423

`A185284(A102363(n))+A140595(n)`
-/

namespace A187098.P17309862202689742423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A102363 n).toNat + A140595 n

end

end A187098.P17309862202689742423

/-! ## A187098.P7363391557655473937

`or(A046660(A212389(n)), A140595(n))`
-/

namespace A187098.P7363391557655473937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046660 (A212389 n).toNat) (A140595 n)

end

end A187098.P7363391557655473937

/-!
# A187099: Inverse permutation to A187098.

The programs for A187099, there is no canonical definition to state claims against.
-/

/-! ## A187099.P3667940744602307000

`A058933(p?[A064429(A102530(n+1))])`
-/

namespace A187099.P3667940744602307000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A102530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A187099.P3667940744602307000

